function out = algo(class, algorithm, signal, vector1, const1, const2, varargin)
if strcmp(class, 's')
	mu = const1;
	iterations = const2;
	Hs = vector1;
	A = varargin{1};
	if strcmp(algorithm, 'gd')
		out = GD(signal, Hs, A, mu, iterations);
	end
	if strcmp(algorithm, 'gdp')
		out = GDP(signal, Hs, A, mu, iterations);
	end
	if strcmp(algorithm, 'ssf')
		out = SSF(signal, Hs, A, mu, iterations, varargin{2});
    end
	if strcmp(algorithm, 'pcd')
		out = PCD(signal, Hs, A, mu, iterations, varargin{2}, varargin{3});
	end
	if strcmp(algorithm, 'tas')
		out = TAS(signal, Hs, A, mu, iterations, varargin{2}, varargin{3});
	end
end
if strcmp(class, 'g')
	thrash = const1;
	bunch = const2;
	H = vector1;
	if strcmp(algorithm, 'mp')
		out = MP(thrash, signal, bunch, H);
	end
	if strcmp(algorithm, 'omp')
		out = OMP(thrash, signal, bunch, H);
	end
	if strcmp(algorithm, 'wmp')
		out = WMP(thrash, signal, bunch, H, varargin{1});
	end
	if strcmp(algorithm, 'lsomp')
		out = LSOMP(thrash, signal, bunch, H);
	end
end
end

function out = GD(signal, Hs, A, mu, iterations)
    %% GRADIENTE DESCENDENTE
    x = signal;
    for i = 1:iterations
        B = Hs - (A * x);
        x = (x + mu * B);
    end
    x(find(x < 0)) = 0;
    out = x;
end

function out = GDP(signal, Hs, A, mu, iterations)
    %% GRADIENTE DESCENDENTE POSITIVO
    x = signal;
    for i = 1:iterations
        B = Hs - (A * x);
        x = (x + mu * B);
        x(find(x < 0)) = 0;
    end
    out = x;
end

function out = SSF(signal, Hs, A, mu, iterations, lambda)
    %% SEPARABLE SURROGATE FUNCTIONALS
    x = signal;
    for i = 1:iterations
        B = Hs - (A * x);
        x = (x + mu * B) - lambda;
        x(find(x < 0)) = 0;
    end
    out = x;
end


function out = PCD(signal, Hs, A, mu, iterations, lambda, IW)
    %% PARALLEL COORDINATE DESCENT
    x = signal;
    for i = 1:iterations
        B = Hs - (A * x);
        temp = (x + (IW .* B)) -(IW * lambda);
        temp(find(temp < 0)) = 0;
        d = temp - x;
        x = x + mu * d;
    end;
    x(isnan(x)) = 0;
    x(find(x<0)) = 0;
    out = x;
end

function out = TAS(signal, Hs, A, mu, iterations, lambda, t)
    %% TEIXEIRA ANDRADE SHRINKAGE
    x = signal;
    for i = 1:iterations
        B = Hs - (A * x);
        temp = ((x + B) * t) - (t * lambda);
        temp(find(temp < 0)) = 0;
        d = temp - x;
        x = x + mu * d;
    end;
    x(isnan(x)) = 0;
    x(find(x<0)) = 0;
    out = x;
end

function out = MP(thrash, signal, bunch, H)
    %% Matching-Pursuit
    b = signal';
    r = b;
    cont = 0;
    xMP=zeros(bunch, 1);
    while ((r'*r > thrash) && (cont < bunch))
        Z=H'*b;                  
        posZ=find(Z==max(Z),1);
        temp = H(:,posZ)'*r;
        xMP(posZ)=xMP(posZ)+temp;
        r=r-H(:,posZ)*temp;
        cont = cont+1;        
    end;
    xMP(isnan(xMP)) = 0;
    xMP(find(xMP<0)) = 0;
    out = xMP;
end

function out = OMP(thrash, signal, bunch, H)
    %% Orthogonal-Matching-Pursuit
    b = signal';
    r = b;
    SS=[];
    cont = 0;
    while (((r'*r) > thrash) && (cont < bunch))
        Z=H'*r;
        posZ=find(Z==max(Z),1);
        SS=sort([SS,posZ(1)]);
        r=b-H(:,SS)*pinv(H(:,SS))*b;
        cont = cont+1;
    end;
    xOMP=zeros(bunch,1);
    xOMP(SS)=pinv(H(:,SS))*b;
    xOMP(isnan(xOMP)) = 0;
    xOMP(find(xOMP<0)) = 0;
    out = xOMP;
end

function out = WMP(thrash, signal, bunch, H, t)
    %% Weak-Orthogonal-Matching-Pursuit
    b = signal';
    r = b;
    cont = 0;
    xWMP=zeros(bunch,1);
    while ((r'*r > thrash) && (cont < bunch))
        Z=H'*r;
        posZ=find(Z>=t*sqrt(r'*r),1);
        if (isempty(posZ))
            posZ=find(Z==min(Z),1);
        end;
        temp = H(:,posZ)'*r;
        xWMP(posZ)=xWMP(posZ)+temp;
        r=r-H(:,posZ)*temp;
        cont = cont+1;
    end;
    xWMP(isnan(xWMP)) = 0;
    xWMP(find(xWMP<0)) = 0;
    out = xWMP
end

function out = LSOMP(thrash, signal, bunch, H)
  %% Least-Squares Orthogonal-Matching-Pursuit
    b = signal';
    r = b;
    SS=[];
    cont = 0;
    while ((r'*r > thrash) && (cont < bunch))
        Z=zeros(bunch,1);
        for jj=1:1:bunch
            SStemp=[SS,jj];
            rtemp=b-H(:,SStemp)*pinv(H(:,SStemp))*b;
            Z(jj)=rtemp'*rtemp;
        end;
        posZ=find(Z==min(Z),1);
        SS=sort([SS,posZ(1)]);
        r=b-H(:,SS)*pinv(H(:,SS))*b;
        cont = cont+1;
    end;
    xLSMP=zeros(bunch,1);
    xLSMP(SS)=pinv(H(:,SS))*b;
    xLSMP(isnan(xLSMP)) = 0;
    xLSMP(find(xLSMP<0)) = 0;
    out = xLSMP;
end
