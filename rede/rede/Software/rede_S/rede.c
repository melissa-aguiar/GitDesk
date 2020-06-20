#PRNAME rede
#DIRNAM "C:\Users\melis\Desktop\GitDesk\rede\rede\Hardware\rede_H"
#DATYPE 0
#NUBITS 31
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4
#NUGAIN 64

void main() 
{   
    int tab[64]"LUT_tansig123.txt";
    int tab4[32768]"LUT_tansig4.txt";
  
    //inicializando as entradas com zero
    int y0;
    int y1;
    int y2;
    int y3;
    int y4;
    int y5;
    int y6;
    int y7;
    int y8;
    int y9;
    
while (1)
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
    int soma0 = 6*y0 + 34*y2 + 191*y4 + 188*y6 + 47*y8 - (1018 + 16*y1 +78*y3 + 321*y5 + 100*y7 + 15*y9);
    int soma1 = 25*y1 + 154*y3 + 159*y5 + 46*y7 + 7*y9 - (1086 + 8*y0 + 64*y2 + 255*y4 + 89*y6 + 22*y8 );
    int soma2 = 14*y0 + 143*y2 + 154*y4 + 43*y6 + 10*y8 - (1194 + 53*y1 + 255*y3 + 81*y5 + 22*y7 + 3*y9);
    int soma3 = 145617 +62*y0 + 489*y2 + 1937*y4 + 667*y6 + 164*y8 - (194*y1 + 1174*y3 + 1198*y5 + 351*y7 + 54*y9);

    
    //processo de truncamento
    int indice0;
    int indice1;
    int indice2;
    int indice3;
    int m = 4096;
    int n = 2097916;

    // neuronio 1
    if (soma0 < 3072 && -3072 < soma0)
        indice0 /> abs(soma0);
    else 
        indice0 /> abs(m);

    
    //neuronio 2
    if (soma1 < 3072 && -3072 < soma1)     
         indice1 /> abs(soma1);  
    else  
         indice1 /> abs(m);
    
    // neuronio 3
    if (soma2 < 3072 && -3072 < soma2 )
         indice2 /> abs(soma2); 
    else  
         indice2 /> abs(m);
    
    // neuronio 4
    if (soma3 < 1048576 && -1048576 < soma3)
        indice3 /> abs(soma3);
    else
        indice3 /> abs(n);
 
    int lute_out_n_0;
    int lute_out_n_1;
    int lute_out_n_2;
    int lute_out_n_3;
    
    // neuronio 1
    if (indice0 < 64){
        if (soma0 < 0){
            lute_out_n_0 = -64;
            lute_out_n_0 = -tab[indice0];
            
        }
       else{
            lute_out_n_0 = 64;
            lute_out_n_0 = 1*tab[indice0];
        }
    }
    else{
        if (soma0 < 0){
            lute_out_n_0 = -tab[indice0];
            lute_out_n_0 = -64;
        }
        else{
            lute_out_n_0 = 1*tab[indice0];
            lute_out_n_0 = 64;
        }
    }
    
    // neuronio 2
    if (indice1 < 64){
        if (soma1 < 0){
            lute_out_n_1 = -64;
            lute_out_n_1 = -tab[indice1];
            
        }
        else{
            lute_out_n_1 = 64;
            lute_out_n_1 = 1*tab[indice1];
        }
    }
    else{
        if (soma1 < 0){
            lute_out_n_1 = -tab[indice1];
            lute_out_n_1 = -64;
        }
        else{
            lute_out_n_1 = 1*tab[indice1];
            lute_out_n_1 = 64;
        }
    }
    
    // neuronio 3
    if (indice2 < 64){
        if (soma2 < 0){
            lute_out_n_2 = -64;
            lute_out_n_2 = -tab[indice2];
            
        }
        else{
            lute_out_n_2 = 64;
            lute_out_n_2 = 1*tab[indice2];
        }
    }
    else{
        if (soma2 < 0){
            lute_out_n_2 = -tab[indice2];
            lute_out_n_2 = -64;
        }
        else{
            lute_out_n_2 = 1*tab[indice2];
            lute_out_n_2 = 64;
        }
    }
    
    // neuronio 4
    if (indice3 < 32768){
        if (soma3 < 0){
            lute_out_n_3 = -15795;
            lute_out_n_3 = -tab4[indice3];
            
        }
         else{
            lute_out_n_3 = 15795;
            lute_out_n_3 = 1*tab4[indice3];
        }
    }
    else{
        if (soma3 < 0){
            lute_out_n_3 = -tab4[indice3];
            lute_out_n_3 = -15795;
        }
        else{
            lute_out_n_3 = 1*tab4[indice3];
            lute_out_n_3 = 15795;
        }
    }
    

    int saida_rede = lute_out_n_1*5120 + lute_out_n_3*2716 - (lute_out_n_0*2816 + lute_out_n_2*3840 + 6200193);
    
    out(0, saida_rede);
}
}