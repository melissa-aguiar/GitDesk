#PRNAME rede_taylor
#DIRNAM "C:\Users\melis\Desktop\GitDesk\rede_taylor\rede_taylor\Hardware\rede_taylor_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4

void main() 
    {
      float tab[65]"tab.txt";
    
    
      float y0;
      float y1;
      float y2;
      float y3;
      float y4;
      float y5;
      float y6;
      float y7;
      float y8;
      float y9;
        
      while (1==1)
      {
        
          //atualizando as entradas
        y0 = in(0);
        y1 = in(0);
        y2 = in(0);
        y3 = in(0);
        y4 = in(0);
        y5 = in(0);
        y6 = in(0);
        y7 = in(0);
        y8 = in(0);
        y9 = in(0);
       
        //neuronios fazendo produto de inteiros e seus respectivos pesos e somando aos seus respectvios bias
        
        float soma0 = 0.00593553638820624*y0          + 0.0334750141531402*y2   + 0.186583254594347*y4   + 0.183716308953715*y6   + 0.0465525617898154*y8          - (0.993900038892485               + 0.0154574735389829 *y1                 + 0.0758466999853315*y3            + 0.313157325614765*y5      + 0.0974585252517160*y7      + 0.0144144957389582*y9);
        float soma1 = 0.0245550330272507*y1           + 0.150404068607401*y3    + 0.156136821498537*y5   + 0.0458151854173858*y7  + 0.00725412172631758*y9         - (1.05974593148350                + 0.00757675614084130*y0                 + 0.0622116313519591*y2            + 0.248878233488042*y4      + 0.0864920012979946*y6      + 0.0213842027596014*y8);
        float soma2 = 0.0140687512463048*y0           + 0.140443688776052*y2    + 0.150595510707323*y4   + 0.0429679669922397*y6  + 0.00976663454653212*y8         - (1.16549844382548                + 0.0517227347222095*y1                  + 0.248590361907531*y3             + 0.0786540234103503*y5     + 0.0213914396081503*y7      + 0.00275867818180536*y9);
        float soma3 = 0.138871943729863                + 0.0000596501284629742*y0+ 0.000466794598079450*y2+ 0.00184788475713698*y4 + 0.000636724599570474*y6        + 0.000156419885325004*y8         - (0.000184901343478345*y1               + 0.00111872678008096*y3           + 0.00114171831243059*y5    + 0.000334335315612612*y7    + 0.0000506141878402122*y9);
        
        
        float k = soma3;
        
        //
        int indice0;
        int indice1;
        int indice2;
      
        
            
        if (soma0 < 3.0 && -3.0 < soma0)
            indice0 = (abs(soma0*16)) ;
           
         else      
            indice0 = 64.0;
        
        
        
        if (soma1 < 3.0 && -3.0 < soma1)
            indice1 = (abs(soma1*16)) ; 
        else
            indice1 = 64.0;
        
            
            
        if (soma2 < 3.0 && -3.0 < soma2)
            indice2 = (abs(soma2*16)); 
        else
             indice2 = 64.0;
             
        
             float taylor4;
             
        
        
        if (abs(soma3) >=1.4)     
            taylor4 = 1.0;
        else
        // taylor3 = 1.009801875198346*k - 0.098677921754532*k*k - 0.009338634459788;
            
             
             //float taylor6 = 0.855638786081178*k - 0.325099068836864*k*k + 0.260079255069491*k - 0.161691874859020*k*k*k + 0.194030249830824*k*k-0.077612099932330*k+0.169801016336741*k*k*k*k-0.271681626138786*k*k*k+0.163008975683271*k*k-0.043469060182206*k + 0.008395766918894*k*k*k*k*k-0.016791533837788*k*k*k*k+0.013433227070230*k*k*k-0.005373290828092*k*k+0.001074658165618*k+0.0002868101648045296;
          taylor4 = 1.000196263207123*k  -0.002621801842298*k*k  - 0.320187066374114*k*k*k  -0.000005226610959291507;
//    
       
       
         float lute_out_n_0;
         float lute_out_n_1;
         float lute_out_n_2;

         
         lute_out_n_0 = sign(soma0,tab[indice0]);
         lute_out_n_1 = sign(soma1,tab[indice1]);
         lute_out_n_2 = sign(soma2,tab[indice2]);
         
 
        
         //Continuando para camada de saída
         
         //float saidaflutuante = + lute_out_n_1*10.2534060751568 +  taylor6*1358.22773877427 -(lute_out_n_0*5.05703188427083 + lute_out_n_2*7.48328296625035 + 189.214868378811);
         float saidaflutuante = + lute_out_n_1*10.2534060751568 +  taylor4*1358.22773877427 -(lute_out_n_0*5.05703188427083 + lute_out_n_2*7.48328296625035 + 189.214868378811);
         
         if (saidaflutuante<0)
            saidaflutuante = 0;
         
         out(0,saidaflutuante);
        
    }
    }