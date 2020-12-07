#PRNAME rede_float
#DIRNAM "C:\Users\melis\Desktop\GitDesk\rede_float\rede_float\Hardware\rede_float_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4


void main() 
{
  int i = 1;
    
  float tab[65]"tab.txt";
  float tab4[32769]"tab4.txt";

  float y0 = 0.0;
  float y1 = 0.0;
  float y2 = 0.0;
  float y3 = 0.0;
  float y4 = 0.0;
  float y5 = 0.0;
  float y6 = 0.0;
  float y7 = 0.0;
  float y8 = 0.0;
  float y9 = 0.0;
    
    while (i<=70000)
  {
    
      //atualizando as entradas
    y0 = y1;
    y1 = y2;
    y2 = y3;
    y3 = y4;
    y4 = y5;
    y5 = y6;
    y6 = y7;
    y7 = y8;
    y8 = y9;
    y9 = in(0);
   
    //neuronios fazendo produto de inteiros e seus respectivos pesos e somando aos seus respectvios bias
    
    float soma0 = 0.00593553638820624*y0          + 0.0334750141531402*y2   + 0.186583254594347*y4   + 0.183716308953715*y6   + 0.0465525617898154*y8          - (0.993900038892485               + 0.0154574735389829 *y1                 + 0.0758466999853315*y3            + 0.313157325614765*y5      + 0.0974585252517160*y7      + 0.0144144957389582*y9);
    float soma1 = 0.0245550330272507*y1           + 0.150404068607401*y3    + 0.156136821498537*y5   + 0.0458151854173858*y7  + 0.00725412172631758*y9         - (1.05974593148350                + 0.00757675614084130*y0                 + 0.0622116313519591*y2            + 0.248878233488042*y4      + 0.0864920012979946*y6      + 0.0213842027596014*y8);
    float soma2 = 0.0140687512463048*y0           + 0.140443688776052*y2    + 0.150595510707323*y4   + 0.0429679669922397*y6  + 0.00976663454653212*y8         - (1.16549844382548                + 0.0517227347222095*y1                  + 0.248590361907531*y3             + 0.0786540234103503*y5     + 0.0213914396081503*y7      + 0.00275867818180536*y9);
    float soma3 = 0.138871943729863                + 0.0000596501284629742*y0+ 0.000466794598079450*y2+ 0.00184788475713698*y4 + 0.000636724599570474*y6        + 0.000156419885325004*y8         - (0.000184901343478345*y1               + 0.00111872678008096*y3           + 0.00114171831243059*y5    + 0.000334335315612612*y7    + 0.0000506141878402122*y9);
    
  
    
    //
    int indice0;
    int indice1;
    int indice2;
    int indice3;
    
        
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

           

     if (soma3 < 1.0 && -1.0 < soma3)
          indice3 = (abs(soma3*16384));
     else
          indice3 = 32768.0;
    

    
   //Configurando o que sai da lut
   
     float lute_out_n_0;
     float lute_out_n_1;
     float lute_out_n_2;
     float lute_out_n_3;
     
     
     lute_out_n_0 = tab[indice0];
     if (soma0 < 0)
          lute_out_n_0 = -lute_out_n_0;
     
     
      
     lute_out_n_1 = tab[indice1];///////////////////////
     if (soma1 < 0)
         lute_out_n_1 = -lute_out_n_1;
      
     
     
     lute_out_n_2 = tab[indice2];
     if (soma2 < 0)
         lute_out_n_2 = -lute_out_n_2;        
     
     
     
     lute_out_n_3 = tab4[indice3];
     if (soma3 < 0)
         lute_out_n_3 = - lute_out_n_3; 
         

    
     //Continuando para camada de saída
     
     float saidaflutuante = + lute_out_n_1*10.2534060751568 +  lute_out_n_3*1358.22773877427 -(lute_out_n_0*5.05703188427083 + lute_out_n_2*7.48328296625035 + 189.214868378811);
     out(0,saidaflutuante*10000);
    
      i = i+1;
}
}