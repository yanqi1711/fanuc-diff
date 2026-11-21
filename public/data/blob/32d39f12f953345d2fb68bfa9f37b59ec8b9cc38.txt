/PROG  ED46_55_56_OP200_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED46_55_56_OP200";
PROG_SIZE	= 13892;
CREATE		= DATE 26-03-12  TIME 18:48:38;
MODIFIED	= DATE 26-03-19  TIME 18:29:16;
FILE_NAME	= ED44_54_;
VERSION		= 0;
LINE_COUNT	= 175;
MEMORY_SIZE	= 14220;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,1,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1:GUN] ;
   4:  CALL SEGMENT(2) ;
   5:J PR[1:HOME] 100% CNT100    ;
   6:J P[8] 100% CNT100    ;
   7:J P[7] 100% CNT100    ;
   8:J P[6] 100% CNT100    ;
   9:J P[5] 100% CNT100    ;
  10:J P[4] 100% CNT100    ;
  11:J P[3] 100% CNT100    ;
  12:J P[2] 100% CNT100    ;
  13:  !26 ;
  14:L P[1] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.9,S=45,ED=1]    ;
  15:J P[10] 100% CNT100    ;
  16:  !25 ;
  17:L P[9] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.9,S=44,ED=1]    ;
  18:J P[11] 100% CNT100    ;
  19:  !24 ;
  20:L P[12] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=43,ED=1]    ;
  21:J P[13] 100% CNT100    ;
  22:J P[14] 100% CNT100    ;
  23:J P[15] 100% CNT100    ;
  24:J P[17] 100% CNT50    ;
  25:J P[16] 100% CNT50    ;
  26:J P[18] 100% CNT50    ;
  27:J P[19] 100% CNT50    ;
  28:  !22 ;
  29:L P[20] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.9,S=41,ED=1]    ;
  30:J P[21] 100% CNT100    ;
  31:  !21 ;
  32:L P[22] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=40,ED=1]    ;
  33:  !23 ;
  34:L P[23] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=42,ED=1]    ;
  35:J P[24] 100% CNT100    ;
  36:J P[25] 100% CNT100    ;
  37:J P[26] 100% CNT100    ;
  38:J P[31] 100% CNT100    ;
  39:J P[30] 100% CNT100    ;
  40:J P[28] 100% CNT100    ;
  41:  !21 ;
  42:L P[27] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=40,ED=1]    ;
  43:J P[29] 100% CNT100    ;
  44:J P[34] 100% CNT100    ;
  45:J P[33] 100% CNT100    ;
  46:J P[32] 100% CNT100    ;
  47:J P[35] 100% CNT100    ;
  48:J P[36] 100% CNT100    ;
  49:J P[37] 100% CNT100    ;
  50:J P[41] 100% CNT50    ;
  51:J P[40] 100% CNT50    ;
  52:J P[39] 100% CNT50    ;
  53:  !19 ;
  54:L P[38] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=38,ED=1]    ;
  55:J P[45] 100% CNT100    ;
  56:J P[44] 100% CNT100    ;
  57:J P[43] 100% CNT100    ;
  58:J P[42] 100% CNT100    ;
  59:J P[50] 100% CNT100    ;
  60:J P[49] 100% CNT100    ;
  61:J P[48] 100% CNT100    ;
  62:J P[47] 100% CNT100    ;
  63:  !17 ;
  64:L P[46] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.9,S=36,ED=1]    ;
  65:J P[51] 100% CNT30    ;
  66:  !18 ;
  67:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=37,ED=1]    ;
  68:J P[53] 100% CNT100    ;
  69:J P[57] 100% CNT100    ;
  70:J P[56] 100% CNT100    ;
  71:J P[55] 100% CNT100    ;
  72:J P[54] 100% CNT100    ;
  73:J P[62] 100% CNT80    ;
  74:J P[61] 100% CNT60    ;
  75:J P[60] 100% CNT50    ;
  76:J P[59] 100% CNT30    ;
  77:  !16 ;
  78:L P[58] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.9,S=35,ED=1]    ;
  79:J P[63] 100% CNT50    ;
  80:  !15 ;
  81:L P[64] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.9,S=34,ED=1]    ;
  82:J P[65] 100% CNT30    ;
  83:J P[69] 100% CNT30    ;
  84:J P[68] 100% CNT50    ;
  85:J P[67] 100% CNT60    ;
  86:J P[66] 100% CNT80    ;
  87:J P[70] 100% CNT100    ;
  88:J P[71] 100% CNT100    ;
  89:J P[72] 100% CNT100    ;
  90:J P[73] 100% CNT100    ;
  91:J P[74] 100% CNT100    ;
  92:J P[78] 100% CNT100    ;
  93:J P[77] 100% CNT100    ;
  94:J P[76] 100% CNT100    ;
  95:  !14 ;
  96:  //L P[75] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=33,ED=1]    ;
  97:J P[80] 100% CNT80    ;
  98:J P[81] 100% CNT80    ;
  99:  !13 ;
 100:  //L P[82] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=32,ED=1]    ;
 101:J P[83] 100% CNT80    ;
 102:J P[85] 100% CNT100    ;
 103:J P[79] 100% CNT100    ;
 104:J P[84] 100% CNT80    ;
 105:J P[86] 100% CNT80    ;
 106:J P[87] 100% CNT80    ;
 107:   ;
 108:   ;
 109:J P[90] 100% CNT100    ;
 110:J P[94] 100% CNT100    ;
 111:J P[93] 100% CNT80    ;
 112:J P[92] 100% CNT50    ;
 113:  !11 ;
 114:  //L P[91] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.7,S=30,ED=1]    ;
 115:J P[96] 100% CNT50    ;
 116:J P[95] 100% CNT80    ;
 117:J P[98] 100% CNT50    ;
 118:  !12 ;
 119:  //L P[97] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.7,S=31,ED=1]    ;
 120:J P[99] 100% CNT50    ;
 121:J P[100] 100% CNT80    ;
 122:J P[107] 100% CNT100    ;
 123:J P[106] 100% CNT100    ;
 124:J P[105] 100% CNT100    ;
 125:J P[104] 100% CNT100    ;
 126:J P[103] 100% CNT100    ;
 127:J P[102] 100% CNT100    ;
 128:J P[108] 100% CNT100    ;
 129:  !4 ;
 130:L P[101] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=23,ED=1]    ;
 131:  !5 ;
 132:L P[109] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=24,ED=1]    ;
 133:J P[110] 100% CNT100    ;
 134:  !6 ;
 135:L P[111] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=25,ED=1]    ;
 136:  !7 ;
 137:L P[112] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=26,ED=1]    ;
 138:  !8 ;
 139:L P[113] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=27,ED=1]    ;
 140:J P[122] 100% CNT100    ;
 141:  !9 ;
 142:L P[114] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.0,S=28,ED=3]    ;
 143:J P[115] 100% CNT50    ;
 144:J P[121] 100% CNT60    ;
 145:J P[120] 100% CNT80    ;
 146:J P[119] 100% CNT80    ;
 147:J P[118] 100% CNT60    ;
 148:J P[117] 100% CNT50    ;
 149:  !10 ;
 150:L P[116] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.0,S=29,ED=3]    ;
 151:J P[125] 100% CNT50    ;
 152:J P[124] 100% CNT60    ;
 153:J P[123] 100% CNT80    ;
 154:J P[126] 100% CNT80    ;
 155:J P[88] 100% CNT50    ;
 156:J P[89] 100% CNT50    ;
 157:   ;
 158:J P[132] 100% CNT100    ;
 159:J P[131] 100% CNT100    ;
 160:  !1 ;
 161:L P[130] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=20,ED=1]    ;
 162:J P[134] 100% CNT100    ;
 163:  !2 ;
 164:L P[135] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=21,ED=1]    ;
 165:J P[136] 100% CNT100    ;
 166:  !3 ;
 167:L P[137] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=22,ED=1]    ;
 168:J P[138] 100% CNT100    ;
 169:J P[139] 100% CNT100    ;
 170:J P[140] 100% CNT100    ;
 171:J P[141] 100% CNT100    ;
 172:J P[142] 100% CNT100    ;
 173:J PR[1:HOME] 100% CNT100    ;
 174:  CALL FINISHSEG(2) ;
 175:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.582  mm,	Y =  -795.061  mm,	Z =  -178.520  mm,
	W =   -92.286 deg,	P =    52.155 deg,	R =    -4.031 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.038  mm,	Y =  -809.047  mm,	Z =  -178.177  mm,
	W =   -92.286 deg,	P =    52.154 deg,	R =    -4.031 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.613  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1672.259  mm,	Y =  -807.600  mm,	Z =  -128.281  mm,
	W =   -92.286 deg,	P =    52.155 deg,	R =    -4.031 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.035  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.660  mm,	Y =  -806.212  mm,	Z =  -103.065  mm,
	W =   -92.285 deg,	P =    52.156 deg,	R =    -4.030 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.037  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1569.836  mm,	Y =  -821.412  mm,	Z =     3.268  mm,
	W =   -95.631 deg,	P =    51.976 deg,	R =    -8.271 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.037  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1477.136  mm,	Y =  -804.497  mm,	Z =   179.706  mm,
	W =   -95.631 deg,	P =    51.976 deg,	R =    -8.271 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.037  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1536.117  mm,	Y =  -662.056  mm,	Z =   142.966  mm,
	W =   -70.855 deg,	P =    47.798 deg,	R =    -8.153 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    57.389  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1507.349  mm,	Y =  -254.153  mm,	Z =    92.629  mm,
	W =   -44.282 deg,	P =    53.041 deg,	R =     -.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    86.075  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1693.110  mm,	Y =  -795.968  mm,	Z =  -147.392  mm,
	W =   -92.284 deg,	P =    52.157 deg,	R =    -4.030 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.307  mm,	Y =  -805.085  mm,	Z =  -168.941  mm,
	W =   -92.284 deg,	P =    52.157 deg,	R =    -4.030 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.376  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.808  mm,	Y =  -797.423  mm,	Z =  -134.323  mm,
	W =   -92.284 deg,	P =    52.157 deg,	R =    -4.030 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    41.427  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1688.560  mm,	Y =  -790.563  mm,	Z =  -107.931  mm,
	W =   -92.284 deg,	P =    52.158 deg,	R =    -4.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.556  mm,	Y =  -812.225  mm,	Z =  -148.311  mm,
	W =   -92.283 deg,	P =    52.159 deg,	R =    -4.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.320  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.519  mm,	Y =  -805.207  mm,	Z =  -135.197  mm,
	W =   -92.283 deg,	P =    52.159 deg,	R =    -4.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.320  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1584.269  mm,	Y =  -810.558  mm,	Z =   -59.733  mm,
	W =   -92.283 deg,	P =    52.159 deg,	R =    -4.029 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.320  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1720.538  mm,	Y =  -798.050  mm,	Z =    66.455  mm,
	W =   -92.119 deg,	P =    48.627 deg,	R =    -3.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.320  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1662.553  mm,	Y =  -804.568  mm,	Z =    55.579  mm,
	W =   -92.261 deg,	P =    50.271 deg,	R =    -3.977 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.318  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1752.226  mm,	Y =  -799.952  mm,	Z =    39.043  mm,
	W =   -92.002 deg,	P =    45.615 deg,	R =    -3.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.318  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1785.057  mm,	Y =  -801.714  mm,	Z =    19.169  mm,
	W =   -92.002 deg,	P =    45.615 deg,	R =    -3.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.318  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1785.543  mm,	Y =  -788.667  mm,	Z =    18.813  mm,
	W =   -92.003 deg,	P =    45.616 deg,	R =    -3.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1765.978  mm,	Y =  -805.547  mm,	Z =    34.274  mm,
	W =   -91.940 deg,	P =    43.761 deg,	R =    -3.567 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    54.868  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1769.138  mm,	Y =  -789.674  mm,	Z =    44.159  mm,
	W =   -91.939 deg,	P =    43.762 deg,	R =    -3.565 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1756.546  mm,	Y =  -786.749  mm,	Z =    29.025  mm,
	W =   -91.939 deg,	P =    43.763 deg,	R =    -3.565 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.975  mm,	Y =  -807.034  mm,	Z =    29.928  mm,
	W =   -91.873 deg,	P =    41.611 deg,	R =    -3.467 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1752.523  mm,	Y =  -805.896  mm,	Z =    37.652  mm,
	W =   -91.789 deg,	P =    38.494 deg,	R =    -3.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1653.042  mm,	Y =  -800.182  mm,	Z =   113.325  mm,
	W =   -91.717 deg,	P =    35.378 deg,	R =    -3.218 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1830.805  mm,	Y =  -787.919  mm,	Z =   150.654  mm,
	W =   -92.593 deg,	P =    25.105 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1838.443  mm,	Y =  -807.766  mm,	Z =   150.860  mm,
	W =   -94.286 deg,	P =    25.107 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.889  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1838.443  mm,	Y =  -807.766  mm,	Z =   150.860  mm,
	W =   -94.286 deg,	P =    25.107 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.889  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1822.394  mm,	Y =  -792.018  mm,	Z =   157.443  mm,
	W =   -94.286 deg,	P =    25.108 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.533  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1736.696  mm,	Y =  -812.815  mm,	Z =   203.133  mm,
	W =   -94.286 deg,	P =    25.108 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.533  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1653.042  mm,	Y =  -800.182  mm,	Z =   113.325  mm,
	W =   -91.717 deg,	P =    35.378 deg,	R =    -3.218 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1736.696  mm,	Y =  -812.815  mm,	Z =   203.133  mm,
	W =   -94.286 deg,	P =    25.108 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.533  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1822.394  mm,	Y =  -792.018  mm,	Z =   157.443  mm,
	W =   -94.286 deg,	P =    25.108 deg,	R =    -2.735 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.533  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1459.614  mm,	Y =  -789.306  mm,	Z =   250.887  mm,
	W =   -91.717 deg,	P =    35.378 deg,	R =    -3.218 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1544.240  mm,	Y =  -788.997  mm,	Z =   397.837  mm,
	W =   -91.717 deg,	P =    35.378 deg,	R =    -3.218 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1639.620  mm,	Y =  -789.419  mm,	Z =   531.984  mm,
	W =   -91.717 deg,	P =    35.378 deg,	R =    -3.218 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1882.221  mm,	Y =  -788.870  mm,	Z =   251.118  mm,
	W =   -90.143 deg,	P =    35.380 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1891.777  mm,	Y =  -807.934  mm,	Z =   231.865  mm,
	W =   -88.658 deg,	P =    35.380 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1872.728  mm,	Y =  -806.863  mm,	Z =   245.413  mm,
	W =   -88.658 deg,	P =    35.380 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.530  mm,	Y =  -829.784  mm,	Z =   295.578  mm,
	W =   -88.657 deg,	P =    35.381 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1639.620  mm,	Y =  -789.419  mm,	Z =   531.984  mm,
	W =   -91.717 deg,	P =    35.378 deg,	R =    -3.218 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.513  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1799.530  mm,	Y =  -829.784  mm,	Z =   295.578  mm,
	W =   -88.657 deg,	P =    35.381 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1872.728  mm,	Y =  -806.863  mm,	Z =   245.413  mm,
	W =   -88.658 deg,	P =    35.380 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1891.777  mm,	Y =  -807.934  mm,	Z =   231.865  mm,
	W =   -88.658 deg,	P =    35.380 deg,	R =    -3.217 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.164  mm,	Y =  -787.949  mm,	Z =   387.270  mm,
	W =   -91.558 deg,	P =    26.072 deg,	R =    -2.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.836  mm,	Y =  -796.431  mm,	Z =   375.230  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1973.478  mm,	Y =  -795.599  mm,	Z =   383.243  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.740  mm,	Y =  -819.764  mm,	Z =   430.776  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.146  mm,	Y =  -815.533  mm,	Z =   485.362  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1961.806  mm,	Y =  -802.107  mm,	Z =   384.142  mm,
	W =   -91.558 deg,	P =    26.072 deg,	R =    -2.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.401  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1958.013  mm,	Y =  -786.325  mm,	Z =   380.825  mm,
	W =   -91.557 deg,	P =    26.075 deg,	R =    -2.907 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1961.806  mm,	Y =  -802.107  mm,	Z =   384.142  mm,
	W =   -91.558 deg,	P =    26.072 deg,	R =    -2.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.399  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.146  mm,	Y =  -815.534  mm,	Z =   485.362  mm,
	W =   -91.604 deg,	P =    29.279 deg,	R =    -3.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.740  mm,	Y =  -819.764  mm,	Z =   430.776  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1973.478  mm,	Y =  -795.599  mm,	Z =   383.243  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.836  mm,	Y =  -796.431  mm,	Z =   375.230  mm,
	W =   -91.558 deg,	P =    26.073 deg,	R =    -2.909 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2019.514  mm,	Y =  -788.612  mm,	Z =   428.887  mm,
	W =   -91.735 deg,	P =    36.248 deg,	R =    -3.249 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2020.298  mm,	Y =  -809.282  mm,	Z =   431.556  mm,
	W =   -96.521 deg,	P =    36.152 deg,	R =    -4.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1993.145  mm,	Y =  -794.800  mm,	Z =   462.353  mm,
	W =   -95.873 deg,	P =    36.248 deg,	R =    -3.249 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1907.996  mm,	Y =  -795.328  mm,	Z =   532.822  mm,
	W =   -95.873 deg,	P =    36.249 deg,	R =    -3.249 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1856.430  mm,	Y =  -791.294  mm,	Z =   584.059  mm,
	W =   -95.873 deg,	P =    36.249 deg,	R =    -3.249 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2035.313  mm,	Y =  -805.702  mm,	Z =   444.226  mm,
	W =   -91.939 deg,	P =    33.684 deg,	R =    -3.620 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    76.603  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2033.387  mm,	Y =  -789.284  mm,	Z =   451.261  mm,
	W =   -92.534 deg,	P =    33.056 deg,	R =    -4.694 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.358  mm,	Y =  -797.863  mm,	Z =   442.965  mm,
	W =   -91.939 deg,	P =    33.684 deg,	R =    -3.620 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    92.533  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1856.429  mm,	Y =  -791.293  mm,	Z =   584.060  mm,
	W =  -100.457 deg,	P =    35.336 deg,	R =   -11.080 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1907.996  mm,	Y =  -795.328  mm,	Z =   532.823  mm,
	W =   -99.625 deg,	P =    35.543 deg,	R =    -9.644 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1992.943  mm,	Y =  -803.716  mm,	Z =   463.557  mm,
	W =   -99.506 deg,	P =    35.889 deg,	R =    -6.896 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2020.298  mm,	Y =  -809.282  mm,	Z =   431.556  mm,
	W =   -96.521 deg,	P =    36.152 deg,	R =    -4.347 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.511  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1765.310  mm,	Y =  -765.126  mm,	Z =   606.668  mm,
	W =  -110.557 deg,	P =    31.043 deg,	R =   -29.406 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1674.688  mm,	Y =  -540.447  mm,	Z =   671.715  mm,
	W =  -117.191 deg,	P =    25.593 deg,	R =   -43.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1682.127  mm,	Y =  -411.909  mm,	Z =   568.803  mm,
	W =  -122.312 deg,	P =    18.342 deg,	R =   -56.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1735.216  mm,	Y =  -477.268  mm,	Z =   555.731  mm,
	W =  -124.855 deg,	P =    12.153 deg,	R =   -66.562 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1944.466  mm,	Y =  -544.609  mm,	Z =   406.813  mm,
	W =  -126.499 deg,	P =     3.675 deg,	R =   -78.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.512  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.786  mm,	Y =  -722.618  mm,	Z =   299.611  mm,
	W =  -116.768 deg,	P =    -2.445 deg,	R =   -92.912 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1983.545  mm,	Y =  -711.381  mm,	Z =   314.228  mm,
	W =  -116.827 deg,	P =    -1.602 deg,	R =   -91.241 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   105.590  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.108  mm,	Y =  -685.397  mm,	Z =   313.501  mm,
	W =  -116.861 deg,	P =     -.756 deg,	R =   -89.571 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   105.590  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2001.829  mm,	Y =  -590.159  mm,	Z =   320.103  mm,
	W =  -118.435 deg,	P =      .911 deg,	R =   -85.923 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.382  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1977.729  mm,	Y =  -563.921  mm,	Z =   254.033  mm,
	W =  -116.977 deg,	P =    -7.237 deg,	R =   -90.475 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.058  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1994.822  mm,	Y =  -688.863  mm,	Z =   308.100  mm,
	W =  -116.769 deg,	P =    -2.444 deg,	R =   -92.913 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    91.208  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1955.636  mm,	Y =  -691.239  mm,	Z =   255.529  mm,
	W =  -116.758 deg,	P =     1.775 deg,	R =   -95.039 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.058  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1987.326  mm,	Y =  -722.194  mm,	Z =   237.363  mm,
	W =  -116.758 deg,	P =     1.775 deg,	R =   -95.039 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1955.636  mm,	Y =  -691.239  mm,	Z =   255.529  mm,
	W =  -116.758 deg,	P =     1.775 deg,	R =   -95.039 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.058  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2018.999  mm,	Y =  -390.109  mm,	Z =   310.784  mm,
	W =  -119.459 deg,	P =   -23.788 deg,	R =   -81.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.059  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1958.882  mm,	Y =  -655.257  mm,	Z =   256.531  mm,
	W =  -116.761 deg,	P =     1.774 deg,	R =   -95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.058  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.779  mm,	Y =  -280.476  mm,	Z =   187.754  mm,
	W =  -119.560 deg,	P =   -24.188 deg,	R =   -81.062 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.059  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1919.797  mm,	Y =  -291.678  mm,	Z =   100.333  mm,
	W =  -119.560 deg,	P =   -24.188 deg,	R =   -81.062 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.059  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1943.528  mm,	Y =  -298.806  mm,	Z =   241.185  mm,
	W =    61.501 deg,	P =   -16.801 deg,	R =   -73.843 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.389  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1985.316  mm,	Y =  -403.923  mm,	Z =   297.453  mm,
	W =    61.265 deg,	P =   -17.041 deg,	R =   -73.485 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.389  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1827.454  mm,	Y =  -374.797  mm,	Z =   -70.553  mm,
	W =  -117.093 deg,	P =    -8.825 deg,	R =   -89.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.058  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1860.049  mm,	Y =  -726.151  mm,	Z =    13.902  mm,
	W =  -117.096 deg,	P =    -8.824 deg,	R =   -89.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.664  mm,	Y =  -712.522  mm,	Z =    30.685  mm,
	W =  -117.096 deg,	P =    -8.824 deg,	R =   -89.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.133  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.457  mm,	Y =  -677.855  mm,	Z =    25.302  mm,
	W =  -117.096 deg,	P =    -8.824 deg,	R =   -89.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.133  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1823.573  mm,	Y =  -529.625  mm,	Z =     2.282  mm,
	W =  -117.097 deg,	P =    -8.824 deg,	R =   -89.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.132  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.457  mm,	Y =  -677.855  mm,	Z =    25.302  mm,
	W =  -117.096 deg,	P =    -8.824 deg,	R =   -89.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.133  mm
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.664  mm,	Y =  -712.522  mm,	Z =    30.685  mm,
	W =  -117.096 deg,	P =    -8.824 deg,	R =   -89.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    89.133  mm
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1878.428  mm,	Y =  -724.379  mm,	Z =    58.317  mm,
	W =  -117.097 deg,	P =    -8.823 deg,	R =   -89.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.152  mm,	Y =  -692.271  mm,	Z =    80.745  mm,
	W =  -117.098 deg,	P =    -8.823 deg,	R =   -89.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.320  mm
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.154  mm,	Y =  -692.273  mm,	Z =    80.721  mm,
	W =  -117.099 deg,	P =    -8.822 deg,	R =   -89.657 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.318  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.004  mm,	Y =  -517.878  mm,	Z =   -57.090  mm,
	W =  -103.456 deg,	P =    -7.667 deg,	R =   -89.937 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.318  mm
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1853.203  mm,	Y =  -729.505  mm,	Z =   140.535  mm,
	W =    62.706 deg,	P =    -9.008 deg,	R =   -81.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    16.429  mm
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1864.259  mm,	Y =  -673.800  mm,	Z =   109.998  mm,
	W =    62.706 deg,	P =    -9.008 deg,	R =   -81.314 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   115.987  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1843.653  mm,	Y =  -608.291  mm,	Z =    64.518  mm,
	W =    62.836 deg,	P =    -7.234 deg,	R =   -82.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.814  mm
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1826.775  mm,	Y =  -485.764  mm,	Z =    -3.190  mm,
	W =    62.865 deg,	P =    -6.771 deg,	R =   -82.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.814  mm
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1724.380  mm,	Y =  -315.667  mm,	Z =  -117.949  mm,
	W =    49.412 deg,	P =    -6.771 deg,	R =   -82.476 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.814  mm
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1718.386  mm,	Y =  -301.547  mm,	Z =  -173.641  mm,
	W =   -16.508 deg,	P =    -6.120 deg,	R =   -82.184 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    53.685  mm
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.889  mm,	Y =  -321.898  mm,	Z =  -172.958  mm,
	W =   -76.079 deg,	P =    -4.812 deg,	R =   -81.691 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    61.091  mm
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1860.642  mm,	Y =  -714.626  mm,	Z =   126.178  mm,
	W =    62.708 deg,	P =    -9.005 deg,	R =   -81.317 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.500  mm
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1834.331  mm,	Y =  -728.729  mm,	Z =   107.956  mm,
	W =    62.708 deg,	P =    -9.004 deg,	R =   -81.317 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1855.568  mm,	Y =  -709.039  mm,	Z =    74.460  mm,
	W =    62.773 deg,	P =    -8.173 deg,	R =   -81.750 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    61.419  mm
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1814.550  mm,	Y =  -728.538  mm,	Z =    72.778  mm,
	W =    62.774 deg,	P =    -8.172 deg,	R =   -81.750 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1793.545  mm,	Y =  -728.623  mm,	Z =    37.221  mm,
	W =    62.773 deg,	P =    -8.171 deg,	R =   -81.750 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1775.994  mm,	Y =  -729.827  mm,	Z =     4.656  mm,
	W =    62.774 deg,	P =    -8.170 deg,	R =   -81.749 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1753.787  mm,	Y =  -730.013  mm,	Z =   -32.668  mm,
	W =    62.769 deg,	P =    -8.169 deg,	R =   -81.740 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1769.374  mm,	Y =  -716.471  mm,	Z =   -14.744  mm,
	W =    62.770 deg,	P =    -8.169 deg,	R =   -81.740 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.401  mm
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1715.922  mm,	Y =  -728.982  mm,	Z =   -98.160  mm,
	W =    62.549 deg,	P =    -7.318 deg,	R =   -80.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     6.882  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1718.543  mm,	Y =  -728.534  mm,	Z =   -99.552  mm,
	W =    62.425 deg,	P =    -6.797 deg,	R =   -79.079 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.392  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1709.904  mm,	Y =  -664.297  mm,	Z =  -109.241  mm,
	W =    62.425 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.390  mm
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1720.470  mm,	Y =  -607.803  mm,	Z =   -82.803  mm,
	W =    62.425 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.390  mm
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1766.958  mm,	Y =  -609.265  mm,	Z =     5.900  mm,
	W =    62.425 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   127.844  mm
};
P[121]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1779.774  mm,	Y =  -675.693  mm,	Z =    13.961  mm,
	W =    62.425 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   127.844  mm
};
P[122]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1769.377  mm,	Y =  -716.482  mm,	Z =   -14.780  mm,
	W =    62.770 deg,	P =    -8.168 deg,	R =   -81.739 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    60.000  mm
};
P[123]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1720.470  mm,	Y =  -607.803  mm,	Z =   -82.803  mm,
	W =    62.425 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.390  mm
};
P[124]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1709.904  mm,	Y =  -664.297  mm,	Z =  -109.241  mm,
	W =    62.425 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.390  mm
};
P[125]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1718.543  mm,	Y =  -728.534  mm,	Z =   -99.552  mm,
	W =    62.425 deg,	P =    -6.797 deg,	R =   -79.079 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.392  mm
};
P[126]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1656.775  mm,	Y =  -277.672  mm,	Z =  -122.865  mm,
	W =    62.426 deg,	P =    -6.795 deg,	R =   -79.078 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   117.390  mm
};
P[130]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1982.677  mm,	Y =  -721.903  mm,	Z =   368.772  mm,
	W =    62.383 deg,	P =     6.960 deg,	R =   -85.221 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[131]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1997.594  mm,	Y =  -708.883  mm,	Z =   361.798  mm,
	W =    62.383 deg,	P =     6.960 deg,	R =   -85.221 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.180  mm
};
P[132]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2001.329  mm,	Y =  -657.860  mm,	Z =   363.764  mm,
	W =    62.383 deg,	P =     6.960 deg,	R =   -85.221 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.180  mm
};
P[134]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1977.682  mm,	Y =  -680.971  mm,	Z =   329.716  mm,
	W =    62.286 deg,	P =     8.328 deg,	R =   -85.944 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.832  mm
};
P[135:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1943.947  mm,	Y =  -725.024  mm,	Z =   301.476  mm,
	W =    62.286 deg,	P =     8.329 deg,	R =   -85.943 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[136]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1946.074  mm,	Y =  -693.139  mm,	Z =   258.134  mm,
	W =    61.898 deg,	P =    12.345 deg,	R =   -88.105 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.390  mm
};
P[137]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1911.490  mm,	Y =  -724.276  mm,	Z =   242.933  mm,
	W =    61.899 deg,	P =    12.346 deg,	R =   -88.104 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[138]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1946.074  mm,	Y =  -693.139  mm,	Z =   258.134  mm,
	W =    61.898 deg,	P =    12.345 deg,	R =   -88.105 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.390  mm
};
P[139]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1963.539  mm,	Y =  -666.663  mm,	Z =   287.201  mm,
	W =    62.578 deg,	P =    13.881 deg,	R =   -85.109 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.390  mm
};
P[140]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1987.474  mm,	Y =  -449.745  mm,	Z =   317.477  mm,
	W =    64.508 deg,	P =    17.319 deg,	R =   -77.946 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[141]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1934.206  mm,	Y =  -200.283  mm,	Z =   397.021  mm,
	W =    72.573 deg,	P =    25.421 deg,	R =   -56.101 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[142]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.385  mm,	Y =  -164.129  mm,	Z =   659.316  mm,
	W =    68.544 deg,	P =    41.654 deg,	R =   -34.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.018  mm
};
/END
