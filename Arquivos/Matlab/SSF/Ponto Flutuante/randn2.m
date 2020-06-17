function [output] = randn2(varargin)
	rng(0);
	output = rand(varargin{:});
	output = sqrt(2) * erfinv(2 * output - 1);
end