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
#array mainindice 4
#array maina 4
LOAD 3072
LES mainsoma0
PLD 0
LES mainsoma0
LINV
SLAND
PLD -3072
GRE mainsoma0
PLD 0
GRE mainsoma0
LINV
SLAND
SLOR
JZ L2else
LOAD 0
LES mainsoma0
JZ L3else
LOAD 0
PLD mainsoma0
MLT -1
NORM
SRF
SET mainindice
LOAD 0
PLD 1
SRF
SET maina
JMP L3end
@L3else LOAD 0
PLD mainsoma0
NORM
SRF
SET mainindice
LOAD 0
PLD 0
SRF
SET maina
@L3end JMP L2end
@L2else LOAD 0
PLD 64
SRF
SET mainindice
LOAD 0
LES mainsoma0
JZ L4else
LOAD 0
PLD 1
SRF
SET maina
JMP L4end
@L4else LOAD 0
PLD 0
SRF
SET maina
@L4end @L2end LOAD 3072
LES mainsoma1
PLD 0
LES mainsoma1
LINV
SLAND
PLD -3072
GRE mainsoma1
PLD 0
GRE mainsoma1
LINV
SLAND
SLOR
JZ L5else
LOAD 0
LES mainsoma1
JZ L6else
LOAD 1
PLD mainsoma1
MLT -1
NORM
SRF
SET mainindice
LOAD 1
PLD 1
SRF
SET maina
JMP L6end
@L6else LOAD 1
PLD mainsoma1
NORM
SRF
SET mainindice
LOAD 1
PLD 0
SRF
SET maina
@L6end JMP L5end
@L5else LOAD 1
PLD 64
SRF
SET mainindice
LOAD 0
LES mainsoma1
JZ L7else
LOAD 1
PLD 1
SRF
SET maina
JMP L7end
@L7else LOAD 1
PLD 0
SRF
SET maina
@L7end @L5end LOAD 3072
LES mainsoma2
PLD 0
LES mainsoma2
LINV
SLAND
PLD -3072
GRE mainsoma2
PLD 0
GRE mainsoma2
LINV
SLAND
SLOR
JZ L8else
LOAD 0
LES mainsoma2
JZ L9else
LOAD 2
PLD mainsoma2
MLT -1
NORM
SRF
SET mainindice
LOAD 2
PLD 1
SRF
SET maina
JMP L9end
@L9else LOAD 2
PLD mainsoma2
NORM
SRF
SET mainindice
LOAD 2
PLD 0
SRF
SET maina
@L9end JMP L8end
@L8else LOAD 2
PLD 64
SRF
SET mainindice
LOAD 0
LES mainsoma2
JZ L10else
LOAD 2
PLD 1
SRF
SET maina
JMP L10end
@L10else LOAD 2
PLD 0
SRF
SET maina
@L10end @L8end LOAD 1048576
LES mainsoma3
PLD 1
LES mainsoma3
LINV
SLAND
PLD -1048576
GRE mainsoma3
PLD 1
GRE mainsoma3
LINV
SLAND
SLOR
JZ L11else
LOAD 0
LES mainsoma3
JZ L12else
LOAD 3
PLD mainsoma3
MLT -1
NORM
SRF
SET mainindice
LOAD 3
PLD 1
SRF
SET maina
JMP L12end
@L12else LOAD 3
PLD mainsoma3
NORM
SRF
SET mainindice
LOAD 3
PLD 0
SRF
SET maina
@L12end JMP L11end
@L11else LOAD 3
PLD 32769
SRF
SET mainindice
LOAD 0
LES mainsoma3
JZ L13else
LOAD 3
PLD 1
SRF
SET maina
JMP L13end
@L13else LOAD 3
PLD 0
SRF
SET maina
@L13end @L11end LOAD 0
PUSH
SRF
LOAD mainindice
PLD 64
SLES
JZ L14else
LOAD 0
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L15else
LOAD 0
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_0
JMP L15end
@L15else LOAD 0
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab
SET mainlute_out_n_0
@L15end JMP L14end
@L14else LOAD 0
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L16else
LOAD -64
SET mainlute_out_n_0
JMP L16end
@L16else LOAD 64
SET mainlute_out_n_0
@L16end @L14end LOAD 1
PUSH
SRF
LOAD mainindice
PLD 64
SLES
JZ L17else
LOAD 1
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L18else
LOAD 1
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_1
JMP L18end
@L18else LOAD 1
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab
SET mainlute_out_n_1
@L18end JMP L17end
@L17else LOAD 1
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L19else
LOAD -64
SET mainlute_out_n_1
JMP L19end
@L19else LOAD 64
SET mainlute_out_n_1
@L19end @L17end LOAD 2
PUSH
SRF
LOAD mainindice
PLD 64
SLES
JZ L20else
LOAD 2
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L21else
LOAD 2
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab
MLT -1
SET mainlute_out_n_2
JMP L21end
@L21else LOAD 2
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab
SET mainlute_out_n_2
@L21end JMP L20end
@L20else LOAD 2
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L22else
LOAD -64
SET mainlute_out_n_2
JMP L22end
@L22else LOAD 64
SET mainlute_out_n_2
@L22end @L20end LOAD 3
PUSH
SRF
LOAD mainindice
PLD 32768
SLES
JZ L23else
LOAD 3
PUSH
SRF
LOAD maina
PLD 1
SEQU
JZ L24else
LOAD 3
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab4
MLT -1
SET mainlute_out_n_3
JMP L24end
@L24else LOAD 3
PUSH
SRF
LOAD mainindice
PUSH
SRF
LOAD maintab4
SET mainlute_out_n_3
@L24end JMP L23end
@L23else LOAD 3
PUSH
SRF
LOAD maina
PLD 1
SEQU
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
