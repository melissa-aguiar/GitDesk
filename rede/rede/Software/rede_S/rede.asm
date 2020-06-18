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
LOAD 0
SET mainy0
LOAD 0
SET mainy1
LOAD 0
SET mainy2
LOAD 0
SET mainy3
LOAD 0
SET mainy4
LOAD 0
SET mainy5
LOAD 0
SET mainy6
LOAD 0
SET mainy7
LOAD 0
SET mainy8
LOAD 0
SET mainy9
@L1 LOAD 1
EQU 1
JZ L1end
LOAD mainy1
SET mainy0
LOAD mainy2
SET mainy1
LOAD mainy3
SET mainy2
LOAD mainy4
SET mainy3
LOAD mainy5
SET mainy4
LOAD mainy6
SET mainy5
LOAD mainy7
SET mainy6
LOAD mainy8
SET mainy7
LOAD mainy9
SET mainy8
LOAD 0
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
LOAD 3072
LES mainsoma0
PLD -3072
GRE mainsoma0
SLAND
JZ L2else
LOAD 0
LES mainsoma0
JZ L3else
LOAD mainsoma0
MLT -1
NORMS mainindice0
LOAD 1
SET maina0
JMP L3end
@L3else LOAD mainsoma0
NORMS mainindice0
LOAD 0
SET maina0
@L3end JMP L2end
@L2else LOAD 64
SET mainindice0
LOAD 0
LES mainsoma0
JZ L4else
LOAD 1
SET maina0
JMP L4end
@L4else LOAD 0
SET maina0
@L4end @L2end LOAD 3072
LES mainsoma1
PLD -3072
GRE mainsoma1
SLAND
JZ L5else
LOAD 0
LES mainsoma1
JZ L6else
LOAD mainsoma1
MLT -1
NORMS mainindice1
LOAD 1
SET maina1
JMP L6end
@L6else LOAD mainsoma1
NORMS mainindice1
LOAD 0
SET maina1
@L6end JMP L5end
@L5else LOAD 64
SET mainindice1
LOAD 0
LES mainsoma1
JZ L7else
LOAD 1
SET maina1
JMP L7end
@L7else LOAD 0
SET maina1
@L7end @L5end LOAD 3072
LES mainsoma2
PLD -3072
GRE mainsoma2
SLAND
JZ L8else
LOAD 0
LES mainsoma2
JZ L9else
LOAD mainsoma2
MLT -1
NORMS mainindice2
LOAD 1
SET maina2
JMP L9end
@L9else LOAD mainsoma2
NORMS mainindice2
LOAD 0
SET maina2
@L9end JMP L8end
@L8else LOAD 64
SET mainindice2
LOAD 0
LES mainsoma2
JZ L10else
LOAD 1
SET maina2
JMP L10end
@L10else LOAD 0
SET maina2
@L10end @L8end LOAD 1048576
LES mainsoma3
PLD -1048576
GRE mainsoma3
SLAND
JZ L11else
LOAD 0
LES mainsoma3
JZ L12else
LOAD mainsoma3
MLT -1
NORMS mainindice3
LOAD 1
SET maina3
JMP L12end
@L12else LOAD mainsoma3
NORMS mainindice3
LOAD 0
SET maina3
@L12end JMP L11end
@L11else LOAD 32769
SET mainindice3
LOAD 0
LES mainsoma3
JZ L13else
LOAD 1
SET maina3
JMP L13end
@L13else LOAD 0
SET maina3
@L13end @L11end LOAD 64
LES mainindice0
JZ L14else
LOAD 1
EQU maina0
JZ L15else
LOAD mainindice0
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_0
JMP L15end
@L15else LOAD mainindice0
PUSH
SRF
LOAD maintab
SET mainlute_out_n_0
@L15end JMP L14end
@L14else LOAD 1
EQU maina0
JZ L16else
LOAD -64
SET mainlute_out_n_0
JMP L16end
@L16else LOAD 64
SET mainlute_out_n_0
@L16end @L14end LOAD 64
LES mainindice1
JZ L17else
LOAD 1
EQU maina1
JZ L18else
LOAD mainindice1
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_1
JMP L18end
@L18else LOAD mainindice1
PUSH
SRF
LOAD maintab
SET mainlute_out_n_1
@L18end JMP L17end
@L17else LOAD 1
EQU maina1
JZ L19else
LOAD -64
SET mainlute_out_n_1
JMP L19end
@L19else LOAD 64
SET mainlute_out_n_1
@L19end @L17end LOAD 64
LES mainindice2
JZ L20else
LOAD 1
EQU maina2
JZ L21else
LOAD mainindice2
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_2
JMP L21end
@L21else LOAD mainindice2
PUSH
SRF
LOAD maintab
SET mainlute_out_n_2
@L21end JMP L20end
@L20else LOAD 1
EQU maina2
JZ L22else
LOAD -64
SET mainlute_out_n_2
JMP L22end
@L22else LOAD 64
SET mainlute_out_n_2
@L22end @L20end LOAD 32768
LES mainindice3
JZ L23else
LOAD 1
EQU maina3
JZ L24else
LOAD mainindice3
PUSH
SRF
LOAD maintab4
MLT -1
SET mainlute_out_n_3
JMP L24end
@L24else LOAD mainindice3
PUSH
SRF
LOAD maintab4
SET mainlute_out_n_3
@L24end JMP L23end
@L23else LOAD 1
EQU maina3
JZ L25else
LOAD -15795
SET mainlute_out_n_3
JMP L25end
@L25else LOAD 15795
SET mainlute_out_n_3
@L25end @L23end LOAD 5120
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
PLD mainsaida_rede
OUT
JMP L1
@L1end @fim JMP fim
