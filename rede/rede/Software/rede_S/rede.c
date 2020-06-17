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
    int y0 = 0;
    int y1 = 0;
    int y2 = 0;
    int y3 = 0;
    int y4 = 0;
    int y5 = 0;
    int y6 = 0;
    int y7 = 0;
    int y8 = 0;
    int y9 = 0;
    
    while (1==1)
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
    int soma0 = 6*y0 + 34*y2 + 191*y4 + 188*y6 + 47*y8 - (1018 + 16*y1 +78*y3 + 321*y5 + 100*y7 + 15*y9);
    int soma1 = 25*y1 + 154*y3 + 159*y5 + 46*y7 + 7*y9 - (1086 + 8*y0 + 64*y2 + 255*y4 + 89*y6 + 22*y8 );
    int soma2 = 14*y0 + 143*y2 + 154*y4 + 43*y6 + 10*y8 - (1194 + 53*y1 + 255*y3 + 81*y5 + 22*y7 + 3*y9);
    int soma3 = 145617 +62*y0 + 489*y2 + 1937*y4 + 667*y6 + 164*y8 - (194*y1 + 1174*y3 + 1198*y5 + 351*y7 + 54*y9);

    
    //processo de truncamento
    int indice[4];
    int a[4];
    
    
    if ((soma0 < 3072 && soma0 >= 0)  || (soma0 > -3072 && soma0 <= 0)){
        
        if (soma0 < 0){
            indice[0] =  /> -soma0;         
            a[0] = 1;
        }
        else{
            indice[0] = /> soma0;           
            a[0] = 0;
        }
    }
    else{
        indice[0] = 64;
        if (soma0 < 0){          
            a[0] = 1;
        }
        else{        
            a[0] = 0;
        }
    }
    
    
    
    if (soma1 < 3072 && soma1 >= 0  || soma1 > -3072 && soma1 <= 0){
        
        if (soma1 < 0){
            indice[1] =  /> -soma1;         
            a[1] = 1;
        }
        else{
            indice[1] = /> soma1;          
            a[1] = 0;
        }
    }
    else{
        indice[1] = 64;
        if (soma1 < 0){         
            a[1] = 1;
        }
        else{           
            a[1] = 0;
        }
    }
    
    
    if (soma2 < 3072 && soma2 >= 0  || soma2 > -3072 && soma2 <= 0){
        
        if (soma2 < 0){
            indice[2]  = /> -soma2;
            a[2] = 1;
        }
        else{
            indice[2] = /> soma2;
            a[2] = 0;
        }
    }
    else{
        indice[2] = 64;
        if (soma2 < 0){        
            a[2] = 1;
        }
        else{          
            a[2] = 0;
        }
    }
    
    
    if (soma3 < 1048576 && soma3 >= 1  || soma3 > -1048576 && soma3 <= 1){
        
        if (soma3 < 0){
            indice[3] = /> -soma3;    
            a[3] = 1;
        }
        else{            
            indice[3] = /> soma3; 
            a[3] = 0;
        }
    }
    else{
        indice[3] = 32769;
        if (soma3 < 0){
            a[3] = 1;
        }
        else{       
            a[3] = 0;
        }
    }
    
    int lute_out_n_0;
    int lute_out_n_1;
    int lute_out_n_2;
    int lute_out_n_3;
    
    if (indice[0] < 64){
        if (a[0] == 1){
            lute_out_n_0 = -tab[indice[0]];
            
        }
        else{
            lute_out_n_0 = tab[indice[0]];
        }
    }
    else{
        if (a[0]==1){
            lute_out_n_0 = -64;
        }
        else{
            lute_out_n_0 = 64;
        }
    }
    

    if (indice  [1] < 64){
        if (a[1] == 1){
            lute_out_n_1 = -tab[indice[1]];
            
        }
        else{
            lute_out_n_1 = tab[indice[1]];
        }
    }
    else{
        if (a[1]==1){
            lute_out_n_1 = -64;
        }
        else{
            lute_out_n_1 = 64;
        }
    }
    
    
    if (indice  [2] < 64){
        if (a[2] == 1){
            lute_out_n_2 = -tab[indice[2]];        
        }
        else{
            lute_out_n_2 = tab[indice[2]];
        }
    }
    else{
        if (a[2]==1){
            lute_out_n_2 = -64;
        }
        else{
            lute_out_n_2 = 64;
        }
    }
    
    
    if (indice  [3] < 32768){
        if (a[3] == 1){
            lute_out_n_3 = -tab4[indice[3]];          
        }
        else{
            lute_out_n_3 = tab4[indice[3]];
        }
    }
    else{
        if (a[3]==1){
            lute_out_n_3 = -15795;
        }
        else{
            lute_out_n_3 = 15795;
        }
    }

    int saida_rede = lute_out_n_1*5120 + lute_out_n_3*2716 - (lute_out_n_0*2816 + lute_out_n_2*3840 + 6200193);
    
    out(0, saida_rede);
}
}