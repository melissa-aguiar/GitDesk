#PRNAME rede_float
#DIRNAM "C:\Users\melis\Desktop\GitDesk\rede_float\rede_float\Hardware\rede_float_H"
#DATYPE 1
#NBMANT 19
#NBEXPO 8
#NDSTAC 4
#SDEPTH 4
#NUIOIN 4
#NUIOOU 4
@main #arrays maintab 65 "tab.txt"
#arrays maintab4 32769 "tab4.txt"
@L1 LOAD 1
EQU 1
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
MLT -1
MLT -1
MLT -1
PUSH
IN
SET mainy9
LOAD mainy0
MLT 0.00593553638820624
PLD mainy2
MLT 0.0334750141531402
SADD
PLD mainy4
MLT 0.186583254594347
SADD
PLD mainy6
MLT 0.183716308953715
SADD
PLD mainy8
MLT 0.0465525617898154
SADD
PLD mainy1
MLT 0.0154574735389829
ADD 0.993900038892485
PLD mainy3
MLT 0.0758466999853315
SADD
PLD mainy5
MLT 0.313157325614765
SADD
PLD mainy7
MLT 0.0974585252517160
SADD
PLD mainy9
MLT 0.0144144957389582
SADD
NEG
SADD
SET mainsoma0
LOAD mainy1
MLT 0.0245550330272507
PLD mainy3
MLT 0.150404068607401
SADD
PLD mainy5
MLT 0.156136821498537
SADD
PLD mainy7
MLT 0.0458151854173858
SADD
PLD mainy9
MLT 0.00725412172631758
SADD
PLD mainy0
MLT 0.00757675614084130
ADD 1.05974593148350
PLD mainy2
MLT 0.0622116313519591
SADD
PLD mainy4
MLT 0.248878233488042
SADD
PLD mainy6
MLT 0.0864920012979946
SADD
PLD mainy8
MLT 0.0213842027596014
SADD
NEG
SADD
SET mainsoma1
LOAD mainy0
MLT 0.0140687512463048
PLD mainy2
MLT 0.140443688776052
SADD
PLD mainy4
MLT 0.150595510707323
SADD
PLD mainy6
MLT 0.0429679669922397
SADD
PLD mainy8
MLT 0.00976663454653212
SADD
PLD mainy1
MLT 0.0517227347222095
ADD 1.16549844382548
PLD mainy3
MLT 0.248590361907531
SADD
PLD mainy5
MLT 0.0786540234103503
SADD
PLD mainy7
MLT 0.0213914396081503
SADD
PLD mainy9
MLT 0.00275867818180536
SADD
NEG
SADD
SET mainsoma2
LOAD mainy0
MLT 0.0000596501284629742
ADD 0.138871943729863
PLD mainy2
MLT 0.000466794598079450
SADD
PLD mainy4
MLT 0.00184788475713698
SADD
PLD mainy6
MLT 0.000636724599570474
SADD
PLD mainy8
MLT 0.000156419885325004
SADD
PLD mainy1
MLT 0.000184901343478345
PLD mainy3
MLT 0.00111872678008096
SADD
PLD mainy5
MLT 0.00114171831243059
SADD
PLD mainy7
MLT 0.000334335315612612
SADD
PLD mainy9
MLT 0.0000506141878402122
SADD
NEG
SADD
SET mainsoma3
LOAD 3.0
LES mainsoma0
PLD 3.0
NEG
PLD mainsoma0
SLES
SLAND
JZ L2else
LOAD 16
MLT mainsoma0
ABS
SET mainindice0
JMP L2end
@L2else LOAD 64.0
SET mainindice0
@L2end LOAD 3.0
LES mainsoma1
PLD 3.0
NEG
PLD mainsoma1
SLES
SLAND
JZ L3else
LOAD 16
MLT mainsoma1
ABS
SET mainindice1
JMP L3end
@L3else LOAD 64.0
SET mainindice1
@L3end LOAD 3.0
LES mainsoma2
PLD 3.0
NEG
PLD mainsoma2
SLES
SLAND
JZ L4else
LOAD 16
MLT mainsoma2
ABS
SET mainindice2
JMP L4end
@L4else LOAD 64.0
SET mainindice2
@L4end LOAD 1.0
LES mainsoma3
PLD 1.0
NEG
PLD mainsoma3
SLES
SLAND
JZ L5else
LOAD 16384
MLT mainsoma3
ABS
SET mainindice3
JMP L5end
@L5else LOAD 32768.0
SET mainindice3
@L5end LOAD mainindice0
PUSH
SRF
LOAD maintab
SET mainlute_out_n_0
LOAD 0
LES mainsoma0
JZ L6else
LOAD mainlute_out_n_0
NEG
SET mainlute_out_n_0
@L6else LOAD mainindice1
PUSH
SRF
LOAD maintab
SET mainlute_out_n_1
LOAD 0
LES mainsoma1
JZ L7else
LOAD mainlute_out_n_1
NEG
SET mainlute_out_n_1
@L7else LOAD mainindice2
PUSH
SRF
LOAD maintab
SET mainlute_out_n_2
LOAD 0
LES mainsoma2
JZ L8else
LOAD mainlute_out_n_2
NEG
SET mainlute_out_n_2
@L8else LOAD mainindice3
PUSH
SRF
LOAD maintab4
SET mainlute_out_n_3
LOAD 0
LES mainsoma3
JZ L9else
LOAD mainlute_out_n_3
NEG
SET mainlute_out_n_3
@L9else LOAD 10.2534060751568
MLT mainlute_out_n_1
PLD 1358.22773877427
MLT mainlute_out_n_3
SADD
PLD 5.05703188427083
MLT mainlute_out_n_0
PLD 7.48328296625035
MLT mainlute_out_n_2
SADD
PLD 189.214868378811
SADD
NEG
SADD
SET mainsaidaflutuante
LOAD 0
LES mainsaidaflutuante
JZ L10else
LOAD 0.0
SET mainsaidaflutuante
@L10else LOAD 0
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
MLT -1
PLD mainsaidaflutuante
OUT
JMP L1
@L1end @fim JMP fim
