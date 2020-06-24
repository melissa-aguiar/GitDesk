#PRNAME rede
#DIRNAM "C:\Users\melis\Desktop\GitDesk\rede\rede\Hardware\rede_H"
#DATYPE 0
#NUBITS 31
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4
#NUGAIN 64
@main #arrays maintab 64 "LUT_tansig123.txt"
#arrays maintab4 32768 "LUT_tansig4.txt"
@L1 LOAD 1
JZ L1end
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy0
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy1
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy2
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy3
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy4
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy5
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy6
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy7
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy8
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy9
LOAD mainy0
MLT 6
PLD mainy2
MLT 34
SADD
PLD mainy4
MLT 191
SADD
PLD mainy6
MLT 188
SADD
PLD mainy8
MLT 47
SADD
PLD mainy1
MLT 16
ADD 1018
PLD mainy3
MLT 78
SADD
PLD mainy5
MLT 321
SADD
PLD mainy7
MLT 100
SADD
PLD mainy9
MLT 15
SADD
MLT -1
SADD
SET mainsoma0
LOAD mainy1
MLT 25
PLD mainy3
MLT 154
SADD
PLD mainy5
MLT 159
SADD
PLD mainy7
MLT 46
SADD
PLD mainy9
MLT 7
SADD
PLD mainy0
MLT 8
ADD 1086
PLD mainy2
MLT 64
SADD
PLD mainy4
MLT 255
SADD
PLD mainy6
MLT 89
SADD
PLD mainy8
MLT 22
SADD
MLT -1
SADD
SET mainsoma1
LOAD mainy0
MLT 14
PLD mainy2
MLT 143
SADD
PLD mainy4
MLT 154
SADD
PLD mainy6
MLT 43
SADD
PLD mainy8
MLT 10
SADD
PLD mainy1
MLT 53
ADD 1194
PLD mainy3
MLT 255
SADD
PLD mainy5
MLT 81
SADD
PLD mainy7
MLT 22
SADD
PLD mainy9
MLT 3
SADD
MLT -1
SADD
SET mainsoma2
LOAD mainy0
MLT 62
ADD 145617
PLD mainy2
MLT 489
SADD
PLD mainy4
MLT 1937
SADD
PLD mainy6
MLT 667
SADD
PLD mainy8
MLT 164
SADD
PLD mainy1
MLT 194
PLD mainy3
MLT 1174
SADD
PLD mainy5
MLT 1198
SADD
PLD mainy7
MLT 351
SADD
PLD mainy9
MLT 54
SADD
MLT -1
SADD
SET mainsoma3
LOAD 4096
SET mainm
LOAD 2097916
SET mainn
LOAD 3072
LES mainsoma0
PLD -3072
PLD mainsoma0
SLES
SLAND
JZ L2else
LOAD mainsoma0
ABS
NORMS mainindice0
JMP L2end
@L2else LOAD mainm
ABS
NORMS mainindice0
JMP L2end
@L2end LOAD 3072
LES mainsoma1
PLD -3072
PLD mainsoma1
SLES
SLAND
JZ L3else
LOAD mainsoma1
ABS
NORMS mainindice1
JMP L3end
@L3else LOAD mainm
ABS
NORMS mainindice1
JMP L3end
@L3end LOAD 3072
LES mainsoma2
PLD -3072
PLD mainsoma2
SLES
SLAND
JZ L4else
LOAD mainsoma2
ABS
NORMS mainindice2
JMP L4end
@L4else LOAD mainm
ABS
NORMS mainindice2
JMP L4end
@L4end LOAD 1048576
LES mainsoma3
PLD -1048576
PLD mainsoma3
SLES
SLAND
JZ L5else
LOAD mainsoma3
ABS
NORMS mainindice3
JMP L5end
@L5else LOAD mainn
ABS
NORMS mainindice3
JMP L5end
@L5end LOAD 64
LES mainindice0
JZ L6else
LOAD 0
LES mainsoma0
JZ L7else
LOAD -64
SET mainlute_out_n_0
LOAD mainindice0
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_0
JMP L7end
@L7else LOAD 64
SET mainlute_out_n_0
LOAD mainindice0
PUSH
SRF
LOAD maintab
MLT 1
SET mainlute_out_n_0
JMP L7end
@L7end JMP L6end
@L6else LOAD 0
LES mainsoma0
JZ L8else
LOAD mainindice0
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_0
LOAD -64
SET mainlute_out_n_0
JMP L8end
@L8else LOAD mainindice0
PUSH
SRF
LOAD maintab
MLT 1
SET mainlute_out_n_0
LOAD 64
SET mainlute_out_n_0
JMP L8end
@L8end 
JMP L6end
@L6end LOAD 64
LES mainindice1
JZ L9else
LOAD 0
LES mainsoma1
JZ L10else
LOAD -64
SET mainlute_out_n_1
LOAD mainindice1
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_1
JMP L10end
@L10else LOAD 64
SET mainlute_out_n_1
LOAD mainindice1
PUSH
SRF
LOAD maintab
MLT 1
SET mainlute_out_n_1
JMP L10end
@L10end JMP L9end
@L9else LOAD 0
LES mainsoma1
JZ L11else
LOAD mainindice1
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_1
LOAD -64
SET mainlute_out_n_1
JMP L11end
@L11else LOAD mainindice1
PUSH
SRF
LOAD maintab
MLT 1
SET mainlute_out_n_1
LOAD 64
SET mainlute_out_n_1
JMP L11end
@L11end
JMP L9end
@L9end LOAD 64
LES mainindice2
JZ L12else
LOAD 0
LES mainsoma2
JZ L13else
LOAD -64
SET mainlute_out_n_2
LOAD mainindice2
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_2
JMP L13end
@L13else LOAD 64
SET mainlute_out_n_2
LOAD mainindice2
PUSH
SRF
LOAD maintab
MLT 1
SET mainlute_out_n_2
JMP L13end
@L13end JMP L12end
@L12else LOAD 0
LES mainsoma2
JZ L14else
LOAD mainindice2
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_2
LOAD -64
SET mainlute_out_n_2
JMP L14end
@L14else LOAD mainindice2
PUSH
SRF
LOAD maintab
MLT 1
SET mainlute_out_n_2
LOAD 64
SET mainlute_out_n_2
JMP L14end
@L14end
JMP L12end
@L12end LOAD 32768
LES mainindice3
JZ L15else
LOAD 0
LES mainsoma3
JZ L16else
LOAD -15795
SET mainlute_out_n_3
LOAD mainindice3
PUSH
SRF
LOAD maintab4
MLT -1
SET mainlute_out_n_3
JMP L16end
@L16else LOAD 15795
SET mainlute_out_n_3
LOAD mainindice3
PUSH
SRF
LOAD maintab4
MLT 1
SET mainlute_out_n_3
JMP L16end
@L16end JMP L15end
@L15else LOAD 0
LES mainsoma3
JZ L17else
LOAD mainindice3
PUSH
SRF
LOAD maintab4
MLT -1
SET mainlute_out_n_3
LOAD -15795
SET mainlute_out_n_3
JMP L17end
@L17else LOAD mainindice3
PUSH
SRF
LOAD maintab4
MLT 1
SET mainlute_out_n_3
LOAD 15795
SET mainlute_out_n_3
JMP L17end
@L17end
JMP L15end
@L15end LOAD 5120
MLT mainlute_out_n_1
PLD 2716
MLT mainlute_out_n_3
SADD
PLD 2816
MLT mainlute_out_n_0
PLD 3840
MLT mainlute_out_n_2
SADD
PLD 6200193
SADD
MLT -1
SADD
SET mainsaida_rede
LOAD 0
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
MLT -1
PLD mainsaida_rede
OUT
JMP L1
@L1end @fim JMP fim