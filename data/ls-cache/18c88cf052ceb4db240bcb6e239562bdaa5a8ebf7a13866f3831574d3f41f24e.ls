/PROG  ED44_WELD_OP230
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED44_SPOT";
PROG_SIZE	= 18696;
CREATE		= DATE 26-03-13  TIME 04:03:44;
MODIFIED	= DATE 26-03-31  TIME 17:13:32;
FILE_NAME	= ED44_PIC;
VERSION		= 0;
LINE_COUNT	= 229;
MEMORY_SIZE	= 19080;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[2] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:  WAIT DI[260:OFF:偏置气缸工作位为on]=ON AND DI[262:OFF]=ON    ;
   8:  CALL SEGMENT(5) ;
   9:   ;
  10:J P[1] 100% CNT100    ;
  11:J P[9] 100% CNT100    ;
  12:J P[8] 100% CNT100    ;
  13:  //J P[7] 100% CNT100    ;
  14:  //J P[6] 100% CNT100    ;
  15:  //J P[5] 100% CNT100    ;
  16:  //J P[3] 100% CNT100    ;
  17:  //!001 ;
  18:  //L P[2] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=1,ED=10]    ;
  19:  //J P[4] 100% CNT100    ;
  20:  //J P[10] 100% CNT100    ;
  21:  //J P[11] 100% CNT100    ;
  22:  //J P[13] 100% CNT100    ;
  23:J P[12] 100% CNT100    ;
  24:J P[14] 100% CNT100    ;
  25:J P[15] 100% CNT100    ;
  26:  !046 ;
  27:L P[16] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=46,ED=10]    ;
  28:J P[17] 100% CNT100    ;
  29:J P[18] 100% CNT100    ;
  30:  !047 ;
  31:L P[19] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=47,ED=10]    ;
  32:J P[20] 100% CNT100    ;
  33:J P[21] 100% CNT100    ;
  34:J P[22] 100% CNT100    ;
  35:J P[23] 100% CNT100    ;
  36:J P[26] 100% CNT100    ;
  37:J P[25] 100% CNT100    ;
  38:  !045 ;
  39:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=45,ED=10]    ;
  40:J P[29] 100% CNT100    ;
  41:J P[28] 100% CNT100    ;
  42:J P[27] 100% CNT100    ;
  43:J P[30] 100% CNT100    ;
  44:J P[31] 100% CNT100    ;
  45:J P[35] 100% CNT100    ;
  46:J P[34] 100% CNT100    ;
  47:J P[33] 100% CNT100    ;
  48:  !042 ;
  49:L P[32] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.6,S=42,ED=10]    ;
  50:J P[37] 100% CNT100    ;
  51:J P[36] 100% CNT100    ;
  52:J P[38] 100% CNT100    ;
  53:J P[43] 100% CNT100    ;
  54:J P[42] 100% CNT100    ;
  55:J P[41] 100% CNT80    ;
  56:J P[40] 100% CNT80    ;
  57:  !043 ;
  58:L P[39] 2000mm/sec CNT50
    :  SPOT[SD=3,P=4,t=1.6,S=43,ED=3]    ;
  59:J P[44] 100% CNT50    ;
  60:J P[45] 100% CNT100    ;
  61:  !044 ;
  62:L P[46] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.6,S=44,ED=10]    ;
  63:J P[47] 100% CNT50    ;
  64:J P[48] 100% CNT100    ;
  65:J P[49] 100% CNT100    ;
  66:J P[50] 100% CNT100    ;
  67:J P[51] 100% CNT100    ;
  68:J P[52] 100% CNT100    ;
  69:J P[53] 100% CNT100    ;
  70:J P[57] 100% CNT100    ;
  71:J P[56] 100% CNT80    ;
  72:J P[55] 100% CNT50    ;
  73:  !006 ;
  74:L P[54] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.8,S=6,ED=10]    ;
  75:J P[58] 100% CNT100    ;
  76:  !007 ;
  77:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.8,S=7,ED=10]    ;
  78:J P[60] 100% CNT100    ;
  79:  !008 ;
  80:L P[61] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.8,S=8,ED=10]    ;
  81:J P[62] 100% CNT80    ;
  82:J P[63] 100% CNT100    ;
  83:J P[64] 100% CNT100    ;
  84:J P[65] 100% CNT100    ;
  85:J P[67] 100% CNT100    ;
  86:J P[66] 100% CNT100    ;
  87:J P[70] 100% CNT100    ;
  88:J P[71] 100% CNT100    ;
  89:J P[69] 100% CNT100    ;
  90:  !002 ;
  91:L P[68] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=2,ED=10]    ;
  92:J P[72] 100% CNT100    ;
  93:J P[73] 100% CNT100    ;
  94:J P[74] 100% CNT100    ;
  95:J P[75] 100% CNT100    ;
  96:  !003 ;
  97:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=3,ED=10]    ;
  98:J P[77] 100% CNT100    ;
  99:J P[78] 100% CNT100    ;
 100:  !004 ;
 101:L P[79] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=4,ED=10]    ;
 102:J P[80] 100% CNT100    ;
 103:J P[81] 100% CNT100    ;
 104:  !005 ;
 105:L P[82] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=4,ED=10]    ;
 106:J P[83] 100% CNT100    ;
 107:J P[84] 100% CNT100    ;
 108:J P[85] 100% CNT100    ;
 109:J P[86] 100% CNT100    ;
 110:J P[89] 100% CNT100    ;
 111:J P[88] 100% CNT100    ;
 112:  !15 ;
 113:L P[87] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=15,ED=10]    ;
 114:J P[90] 100% CNT100    ;
 115:J P[91] 100% CNT100    ;
 116:  !009 ;
 117:L P[92] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=9,ED=10]    ;
 118:J P[93] 100% CNT100    ;
 119:J P[94] 100% CNT100    ;
 120:  !014 ;
 121:L P[95] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=14,ED=10]    ;
 122:J P[96] 100% CNT100    ;
 123:J P[97] 100% CNT100    ;
 124:  !013 ;
 125:L P[98] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=13,ED=10]    ;
 126:J P[99] 100% CNT100    ;
 127:  !012 ;
 128:L P[100] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=12,ED=10]    ;
 129:J P[101] 100% CNT100    ;
 130:  !011 ;
 131:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=11,ED=10]    ;
 132:J P[103] 100% CNT100    ;
 133:  !010 ;
 134:L P[104] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=10,ED=10]    ;
 135:J P[105] 100% CNT100    ;
 136:J P[106] 100% CNT100    ;
 137:  !022 ;
 138:L P[107] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=22,ED=10]    ;
 139:J P[108] 100% CNT100    ;
 140:  !021 ;
 141:L P[109] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=21,ED=10]    ;
 142:J P[110] 100% CNT100    ;
 143:  !020 ;
 144:L P[111] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=20,ED=10]    ;
 145:J P[112] 100% CNT100    ;
 146:  !019 ;
 147:L P[113] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=19,ED=10]    ;
 148:J P[114] 100% CNT100    ;
 149:J P[115] 100% CNT100    ;
 150:  !017 ;
 151:L P[116] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=17,ED=10]    ;
 152:J P[117] 100% CNT100    ;
 153:  !016 ;
 154:L P[118] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=16,ED=10]    ;
 155:J P[119] 100% CNT100    ;
 156:J P[122] 100% CNT100    ;
 157:J P[120] 100% CNT100    ;
 158:  !018 ;
 159:L P[121] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=18,ED=10]    ;
 160:J P[123] 100% CNT100    ;
 161:J P[124] 100% CNT100    ;
 162:  !026 ;
 163:L P[125] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=26,ED=10]    ;
 164:J P[126] 100% CNT100    ;
 165:  !025 ;
 166:L P[127] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=25,ED=10]    ;
 167:J P[128] 100% CNT100    ;
 168:  !024 ;
 169:L P[129] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=24,ED=10]    ;
 170:J P[130] 100% CNT100    ;
 171:  !023 ;
 172:L P[131] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=23,ED=10]    ;
 173:J P[132] 100% CNT100    ;
 174:J P[133] 100% CNT100    ;
 175:  !041 ;
 176:L P[134] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.2,S=41,ED=10]    ;
 177:J P[135] 100% CNT100    ;
 178:  !040 ;
 179:L P[136] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.2,S=41,ED=10]    ;
 180:J P[137] 100% CNT100    ;
 181:  !039 ;
 182:L P[138] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.2,S=39,ED=10]    ;
 183:J P[139] 100% CNT100    ;
 184:J P[140] 100% CNT100    ;
 185:  !038 ;
 186:L P[141] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.2,S=38,ED=10]    ;
 187:J P[142] 100% CNT100    ;
 188:  !037 ;
 189:L P[143] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.8,S=37,ED=10]    ;
 190:J P[144] 100% CNT100    ;
 191:  !036 ;
 192:L P[145] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.8,S=36,ED=10]    ;
 193:J P[146] 100% CNT100    ;
 194:  !035 ;
 195:L P[147] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=35,ED=10]    ;
 196:J P[148] 100% CNT100    ;
 197:J P[149] 100% CNT100    ;
 198:  !034 ;
 199:L P[150] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=34,ED=10]    ;
 200:J P[151] 100% CNT100    ;
 201:  !033 ;
 202:L P[152] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=33,ED=10]    ;
 203:J P[153] 100% CNT100    ;
 204:  !032 ;
 205:L P[154] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=32,ED=10]    ;
 206:J P[155] 100% CNT100    ;
 207:  !031 ;
 208:L P[156] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=31,ED=10]    ;
 209:J P[157] 100% CNT100    ;
 210:  !030 ;
 211:L P[158] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=30,ED=10]    ;
 212:J P[159] 100% CNT100    ;
 213:J P[160] 100% CNT100    ;
 214:  !029 ;
 215:L P[161] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=29,ED=10]    ;
 216:J P[162] 100% CNT100    ;
 217:J P[163] 100% CNT100    ;
 218:  !028 ;
 219:L P[164] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=28,ED=10]    ;
 220:J P[165] 100% CNT100    ;
 221:J P[166] 100% CNT100    ;
 222:  !027 ;
 223:L P[167] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.5,S=27,ED=10]    ;
 224:J P[168] 100% CNT100    ;
 225:J P[169] 100% CNT100    ;
 226:J P[170] 100% CNT100    ;
 227:J P[172] 100% CNT100    ;
 228:J P[171] 100% FINE    ;
 229:  CALL FINISHSEG(5) ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -363.550  mm,	Y =   366.165  mm,	Z = -2149.436  mm,
	W =   -11.745 deg,	P =   -36.089 deg,	R =  -119.188 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.003  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   531.816  mm,	Y =  1076.026  mm,	Z =   -93.040  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.422  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   539.305  mm,	Y =  1066.811  mm,	Z =   -71.521  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    48.583  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   539.305  mm,	Y =  1066.811  mm,	Z =   -71.521  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    48.583  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   689.654  mm,	Y =  1056.459  mm,	Z =   -64.416  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    67.499  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   862.457  mm,	Y =  1056.461  mm,	Z =   -37.920  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.367  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   862.457  mm,	Y =  1056.461  mm,	Z =  -289.440  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    49.081  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   821.891  mm,	Y =   928.208  mm,	Z =  -841.694  mm,
	W =     -.374 deg,	P =   -10.073 deg,	R =  -132.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    49.081  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   286.991  mm,	Y =   804.324  mm,	Z = -1595.248  mm,
	W =    -5.805 deg,	P =   -21.720 deg,	R =  -126.305 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    49.501  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   689.654  mm,	Y =  1056.459  mm,	Z =   -64.416  mm,
	W =    -1.804 deg,	P =    -3.076 deg,	R =  -132.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    67.499  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   815.824  mm,	Y =  1061.734  mm,	Z =   -35.237  mm,
	W =    -1.998 deg,	P =    -2.954 deg,	R =  -128.894 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.367  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.186  mm,	Y =   762.002  mm,	Z =   -27.884  mm,
	W =    -2.468 deg,	P =    -2.575 deg,	R =  -116.920 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.367  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   916.834  mm,	Y =  1087.988  mm,	Z =  -135.933  mm,
	W =    -6.656 deg,	P =    -6.664 deg,	R =  -125.821 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.367  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   711.208  mm,	Y =   569.630  mm,	Z =   -29.047  mm,
	W =    -2.392 deg,	P =    -2.642 deg,	R =  -122.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.367  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   343.885  mm,	Y =   635.985  mm,	Z =   -35.222  mm,
	W =    -1.804 deg,	P =    -3.074 deg,	R =  -112.789 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    87.660  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   340.717  mm,	Y =   635.732  mm,	Z =   -52.907  mm,
	W =    -2.248 deg,	P =    -2.016 deg,	R =  -112.769 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    36.885  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   334.382  mm,	Y =   631.894  mm,	Z =   -25.739  mm,
	W =    -2.249 deg,	P =    -2.016 deg,	R =  -112.769 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.648  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   444.104  mm,	Y =   662.128  mm,	Z =   -25.739  mm,
	W =    -2.248 deg,	P =    -2.016 deg,	R =  -112.769 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    59.286  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   422.121  mm,	Y =   662.198  mm,	Z =   -39.475  mm,
	W =    -2.697 deg,	P =     -.946 deg,	R =  -112.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.169  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   422.121  mm,	Y =   662.197  mm,	Z =   -16.227  mm,
	W =    -2.697 deg,	P =     -.946 deg,	R =  -112.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    81.935  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   665.739  mm,	Y =   662.172  mm,	Z =   -16.155  mm,
	W =    -2.697 deg,	P =     -.944 deg,	R =  -112.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    81.933  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   768.759  mm,	Y =   528.079  mm,	Z =  -254.801  mm,
	W =   -14.035 deg,	P =    -7.537 deg,	R =  -100.596 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   106.397  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   797.178  mm,	Y =   341.962  mm,	Z =  -233.321  mm,
	W =   -15.094 deg,	P =    -7.576 deg,	R =   -93.684 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   337.007  mm,	Y =   353.333  mm,	Z =   -55.059  mm,
	W =     -.697 deg,	P =    -1.670 deg,	R =   -95.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.045  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   336.977  mm,	Y =   353.308  mm,	Z =   -19.282  mm,
	W =     -.696 deg,	P =    -1.669 deg,	R =   -95.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   165.110  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   417.102  mm,	Y =   319.900  mm,	Z =   -60.851  mm,
	W =    -6.353 deg,	P =    -2.206 deg,	R =   -95.324 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   165.110  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   797.178  mm,	Y =   341.962  mm,	Z =  -233.321  mm,
	W =   -15.094 deg,	P =    -7.576 deg,	R =   -93.684 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   417.102  mm,	Y =   319.900  mm,	Z =   -60.851  mm,
	W =    -6.353 deg,	P =    -2.206 deg,	R =   -95.324 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   165.110  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   336.977  mm,	Y =   353.308  mm,	Z =   -19.282  mm,
	W =     -.696 deg,	P =    -1.669 deg,	R =   -95.515 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   165.110  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   740.204  mm,	Y =   401.182  mm,	Z =  -306.453  mm,
	W =   -23.125 deg,	P =    -7.656 deg,	R =   -77.837 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   629.869  mm,	Y =   157.871  mm,	Z =  -293.940  mm,
	W =   -27.335 deg,	P =    -4.218 deg,	R =   -55.882 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   137.971  mm,	Y =  -412.779  mm,	Z =   -35.665  mm,
	W =    -1.917 deg,	P =     -.318 deg,	R =   -41.742 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   132.212  mm,	Y =  -407.020  mm,	Z =    27.696  mm,
	W =    -1.917 deg,	P =     -.318 deg,	R =   -41.742 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   324.751  mm,	Y =  -382.235  mm,	Z =     9.885  mm,
	W =    -4.051 deg,	P =     1.880 deg,	R =   -45.545 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.247  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   565.443  mm,	Y =    -7.457  mm,	Z =  -159.063  mm,
	W =   -19.530 deg,	P =    -1.861 deg,	R =   -52.960 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   324.751  mm,	Y =  -382.235  mm,	Z =     9.885  mm,
	W =    -4.051 deg,	P =     1.880 deg,	R =   -45.545 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.247  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   132.212  mm,	Y =  -407.020  mm,	Z =    27.696  mm,
	W =    -1.917 deg,	P =     -.318 deg,	R =   -41.742 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   361.821  mm,	Y =  -247.697  mm,	Z =  -107.696  mm,
	W =   -27.168 deg,	P =    22.490 deg,	R =   -50.545 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   124.246  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -48.414  mm,	Y =    75.083  mm,	Z =  -182.583  mm,
	W =   -90.627 deg,	P =    49.840 deg,	R =   -76.162 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.405  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -40.141  mm,	Y =    72.286  mm,	Z =  -176.774  mm,
	W =   -87.005 deg,	P =    48.289 deg,	R =   -73.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.533  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.081  mm,	Y =    71.718  mm,	Z =  -168.193  mm,
	W =   -87.386 deg,	P =    48.363 deg,	R =   -73.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.533  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   242.584  mm,	Y =    71.729  mm,	Z =  -158.450  mm,
	W =   -86.412 deg,	P =    48.170 deg,	R =   -73.003 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.534  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   236.324  mm,	Y =    21.521  mm,	Z =   -41.543  mm,
	W =   -52.370 deg,	P =    33.791 deg,	R =   -50.124 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.533  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -43.149  mm,	Y =    72.286  mm,	Z =  -178.955  mm,
	W =   -88.397 deg,	P =    48.554 deg,	R =   -74.487 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.238  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -67.996  mm,	Y =   110.292  mm,	Z =  -179.647  mm,
	W =   -89.148 deg,	P =    48.320 deg,	R =   -67.118 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.238  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -72.693  mm,	Y =   106.634  mm,	Z =  -185.865  mm,
	W =   -90.939 deg,	P =    48.965 deg,	R =   -68.460 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.238  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -64.530  mm,	Y =   106.146  mm,	Z =  -177.986  mm,
	W =   -87.238 deg,	P =    47.762 deg,	R =   -65.697 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.577  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   119.125  mm,	Y =   106.112  mm,	Z =  -162.990  mm,
	W =   -85.710 deg,	P =    47.285 deg,	R =   -64.570 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.577  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.691  mm,	Y =   106.114  mm,	Z =  -307.243  mm,
	W =   -92.812 deg,	P =    49.273 deg,	R =   -69.875 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.576  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   362.074  mm,	Y =    86.400  mm,	Z =  -711.461  mm,
	W =   -92.366 deg,	P =    39.239 deg,	R =   -69.239 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.578  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   174.543  mm,	Y =   648.428  mm,	Z = -1119.202  mm,
	W =   -91.865 deg,	P =   -10.752 deg,	R =   -67.395 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.578  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   384.404  mm,	Y =   280.432  mm,	Z = -1811.245  mm,
	W =   112.641 deg,	P =   -85.237 deg,	R =    77.088 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.578  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   413.221  mm,	Y =   -69.208  mm,	Z = -1864.136  mm,
	W =    92.638 deg,	P =   -46.007 deg,	R =    97.984 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.578  mm
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -5.011  mm,	Y =  -152.396  mm,	Z = -1207.845  mm,
	W =    86.405 deg,	P =   -47.607 deg,	R =    81.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.260  mm
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -5.011  mm,	Y =  -152.396  mm,	Z = -1191.428  mm,
	W =    86.405 deg,	P =   -47.607 deg,	R =    81.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.044  mm
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   160.007  mm,	Y =  -158.450  mm,	Z = -1191.428  mm,
	W =    86.405 deg,	P =   -47.607 deg,	R =    81.303 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.044  mm
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   428.605  mm,	Y =  -160.239  mm,	Z = -1321.029  mm,
	W =    86.405 deg,	P =   -47.607 deg,	R =    81.057 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.044  mm
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -4.997  mm,	Y =  -152.397  mm,	Z = -1197.797  mm,
	W =    86.403 deg,	P =   -47.608 deg,	R =    81.305 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -19.968  mm,	Y =  -187.780  mm,	Z = -1205.572  mm,
	W =    86.403 deg,	P =   -47.608 deg,	R =    79.009 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -26.405  mm,	Y =  -186.983  mm,	Z = -1195.572  mm,
	W =    86.403 deg,	P =   -47.608 deg,	R =    77.041 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -51.116  mm,	Y =  -227.589  mm,	Z = -1204.788  mm,
	W =    86.403 deg,	P =   -47.608 deg,	R =    73.419 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -46.797  mm,	Y =  -227.589  mm,	Z = -1191.043  mm,
	W =    86.403 deg,	P =   -47.608 deg,	R =    73.419 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   177.555  mm
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   104.708  mm,	Y =  -205.124  mm,	Z = -1191.007  mm,
	W =    86.401 deg,	P =   -47.609 deg,	R =    73.421 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   177.557  mm
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   605.764  mm,	Y =  -176.320  mm,	Z = -1088.685  mm,
	W =    59.383 deg,	P =   -49.637 deg,	R =    93.862 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   177.557  mm
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   999.351  mm,	Y =  -205.637  mm,	Z = -1080.146  mm,
	W =    34.698 deg,	P =   -44.454 deg,	R =   111.889 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   177.557  mm
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1217.014  mm,	Y =  -195.097  mm,	Z = -1049.764  mm,
	W =    20.613 deg,	P =   -31.483 deg,	R =   132.821 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   177.557  mm
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1130.216  mm,	Y =  -200.370  mm,	Z = -1064.396  mm,
	W =    24.210 deg,	P =   -38.262 deg,	R =   124.055 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   177.557  mm
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1235.865  mm,	Y =  -284.079  mm,	Z =  -186.113  mm,
	W =     2.390 deg,	P =    -1.806 deg,	R =   143.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.519  mm
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1235.865  mm,	Y =  -284.079  mm,	Z =  -160.768  mm,
	W =     2.390 deg,	P =    -1.806 deg,	R =   143.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   121.221  mm
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1524.196  mm,	Y =  -284.076  mm,	Z =  -499.472  mm,
	W =     9.942 deg,	P =   -11.677 deg,	R =   142.254 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   121.221  mm
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1288.468  mm,	Y =  -282.295  mm,	Z =  -200.440  mm,
	W =     3.657 deg,	P =    -3.483 deg,	R =   143.110 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   121.221  mm
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1245.051  mm,	Y =  -284.097  mm,	Z =  -169.135  mm,
	W =     2.389 deg,	P =    -1.805 deg,	R =   143.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   112.135  mm
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1460.873  mm,	Y =  -336.210  mm,	Z =  -169.136  mm,
	W =     2.389 deg,	P =    -1.805 deg,	R =   141.423 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.099  mm
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1436.060  mm,	Y =  -251.986  mm,	Z =  -169.137  mm,
	W =     2.389 deg,	P =    -1.805 deg,	R =   133.633 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.099  mm
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1154.039  mm,	Y =  -483.951  mm,	Z =  -169.138  mm,
	W =     2.389 deg,	P =    -1.805 deg,	R =   126.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.099  mm
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1136.582  mm,	Y =  -489.723  mm,	Z =  -187.823  mm,
	W =     2.290 deg,	P =    -1.811 deg,	R =   126.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.717  mm
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.280  mm,	Y =  -489.740  mm,	Z =  -172.242  mm,
	W =     2.287 deg,	P =    -1.812 deg,	R =   126.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.669  mm
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1160.712  mm,	Y =  -441.356  mm,	Z =  -172.242  mm,
	W =     2.287 deg,	P =    -1.812 deg,	R =   126.077 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.669  mm
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1151.474  mm,	Y =  -438.891  mm,	Z =  -181.176  mm,
	W =     2.875 deg,	P =    -1.002 deg,	R =   126.062 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.223  mm
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1158.350  mm,	Y =  -438.913  mm,	Z =  -161.312  mm,
	W =     2.873 deg,	P =    -1.002 deg,	R =   126.062 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.661  mm
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1171.021  mm,	Y =  -391.682  mm,	Z =  -161.311  mm,
	W =     2.873 deg,	P =    -1.002 deg,	R =   126.062 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    36.635  mm
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1162.284  mm,	Y =  -391.222  mm,	Z =  -183.248  mm,
	W =     2.866 deg,	P =    -1.002 deg,	R =   126.062 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.920  mm
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1171.502  mm,	Y =  -391.220  mm,	Z =  -168.640  mm,
	W =     2.866 deg,	P =    -1.002 deg,	R =   126.062 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.243  mm
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1314.465  mm,	Y =  -559.699  mm,	Z =  -148.002  mm,
	W =     2.866 deg,	P =    -1.002 deg,	R =   114.326 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.243  mm
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1459.748  mm,	Y =  -724.049  mm,	Z =  -148.002  mm,
	W =     2.866 deg,	P =    -1.002 deg,	R =    89.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.243  mm
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1183.863  mm,	Y =  -837.724  mm,	Z =  -115.498  mm,
	W =     2.866 deg,	P =    -1.002 deg,	R =    68.538 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.243  mm
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   785.013  mm,	Y =  -780.526  mm,	Z =   -92.653  mm,
	W =     3.067 deg,	P =      .441 deg,	R =    70.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.771  mm
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   785.014  mm,	Y =  -780.526  mm,	Z =   -67.308  mm,
	W =     3.067 deg,	P =      .441 deg,	R =    70.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    73.017  mm
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   930.179  mm,	Y =  -814.208  mm,	Z =   -67.308  mm,
	W =     3.067 deg,	P =      .441 deg,	R =    70.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    73.017  mm
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.009  mm,	Y =  -783.421  mm,	Z =   -66.477  mm,
	W =     3.066 deg,	P =      .440 deg,	R =    70.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.108  mm
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   782.674  mm,	Y =  -825.469  mm,	Z =   -66.478  mm,
	W =     3.066 deg,	P =      .440 deg,	R =    70.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.108  mm
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   780.658  mm,	Y =  -826.114  mm,	Z =   -61.728  mm,
	W =     1.357 deg,	P =     -.106 deg,	R =    70.802 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.107  mm
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   777.134  mm,	Y =  -826.065  mm,	Z =   -81.061  mm,
	W =     3.762 deg,	P =      .681 deg,	R =    70.813 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.120  mm
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   739.115  mm,	Y =  -803.029  mm,	Z =   -81.061  mm,
	W =     3.762 deg,	P =      .681 deg,	R =    70.813 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.120  mm
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   740.253  mm,	Y =  -797.850  mm,	Z =  -100.027  mm,
	W =     3.762 deg,	P =      .680 deg,	R =    70.813 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.940  mm
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   740.254  mm,	Y =  -797.850  mm,	Z =   -73.323  mm,
	W =     3.762 deg,	P =      .680 deg,	R =    70.813 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.068  mm
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   668.249  mm,	Y =  -832.417  mm,	Z =   -73.324  mm,
	W =     3.762 deg,	P =      .680 deg,	R =    70.813 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.068  mm
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   669.061  mm,	Y =  -823.219  mm,	Z =   -88.789  mm,
	W =     3.268 deg,	P =      .508 deg,	R =    70.807 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    11.996  mm
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   668.222  mm,	Y =  -823.219  mm,	Z =   -84.873  mm,
	W =     3.761 deg,	P =      .679 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   620.336  mm,	Y =  -840.523  mm,	Z =   -88.406  mm,
	W =     3.443 deg,	P =      .567 deg,	R =    70.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   619.806  mm,	Y =  -840.523  mm,	Z =   -82.237  mm,
	W =     3.760 deg,	P =      .678 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   580.610  mm,	Y =  -855.522  mm,	Z =   -86.161  mm,
	W =     3.404 deg,	P =      .552 deg,	R =    70.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   580.029  mm,	Y =  -855.522  mm,	Z =   -77.871  mm,
	W =     3.759 deg,	P =      .676 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   531.445  mm,	Y =  -876.309  mm,	Z =   -81.474  mm,
	W =     3.132 deg,	P =      .456 deg,	R =    70.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   530.420  mm,	Y =  -876.323  mm,	Z =   -45.608  mm,
	W =     3.757 deg,	P =      .673 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    63.518  mm
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   530.417  mm,	Y =  -791.656  mm,	Z =   -45.609  mm,
	W =     3.757 deg,	P =      .673 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    63.518  mm
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   525.897  mm,	Y =  -804.054  mm,	Z =   -83.666  mm,
	W =     3.498 deg,	P =      .582 deg,	R =    70.809 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.446  mm
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   525.489  mm,	Y =  -804.054  mm,	Z =   -76.174  mm,
	W =     3.756 deg,	P =      .671 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   579.044  mm,	Y =  -787.362  mm,	Z =   -77.255  mm,
	W =     2.681 deg,	P =      .296 deg,	R =    70.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.201  mm
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   577.011  mm,	Y =  -787.364  mm,	Z =   -76.422  mm,
	W =     3.755 deg,	P =      .670 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.201  mm
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   626.820  mm,	Y =  -770.118  mm,	Z =   -82.129  mm,
	W =     2.857 deg,	P =      .356 deg,	R =    70.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.345  mm,	Y =  -770.145  mm,	Z =   -81.222  mm,
	W =     3.753 deg,	P =      .667 deg,	R =    70.812 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   716.603  mm,	Y =  -710.212  mm,	Z =   -82.990  mm,
	W =     2.806 deg,	P =      .398 deg,	R =    74.229 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.726  mm
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   715.785  mm,	Y =  -683.992  mm,	Z =   -73.396  mm,
	W =     3.753 deg,	P =      .665 deg,	R =    76.288 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   114.957  mm
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   935.467  mm,	Y =  -473.457  mm,	Z =   -73.397  mm,
	W =     3.753 deg,	P =      .666 deg,	R =    86.948 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   114.957  mm
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   944.855  mm,	Y =  -439.739  mm,	Z =   -88.946  mm,
	W =     3.037 deg,	P =      .656 deg,	R =    89.340 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.828  mm
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   948.820  mm,	Y =  -435.702  mm,	Z =   -86.357  mm,
	W =     3.750 deg,	P =      .663 deg,	R =    89.349 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    35.642  mm
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   969.423  mm,	Y =  -414.983  mm,	Z =   -80.300  mm,
	W =     2.508 deg,	P =      .647 deg,	R =    89.335 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.939  mm
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   927.163  mm,	Y =  -500.398  mm,	Z =   -62.025  mm,
	W =     3.746 deg,	P =      .659 deg,	R =    84.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    93.553  mm
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    69.670  mm,	Y = -1010.672  mm,	Z =   -36.105  mm,
	W =     3.746 deg,	P =      .659 deg,	R =    24.509 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   125.910  mm
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    38.343  mm,	Y = -1001.427  mm,	Z =   -78.473  mm,
	W =     2.358 deg,	P =      .326 deg,	R =    24.488 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.377  mm
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   659.539  mm,	Y =  -755.226  mm,	Z =   -40.063  mm,
	W =     3.354 deg,	P =      .644 deg,	R =    64.083 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   100.852  mm
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    55.896  mm,	Y = -1001.427  mm,	Z =   -50.274  mm,
	W =     2.358 deg,	P =      .323 deg,	R =    24.490 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   126.738  mm
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   138.851  mm,	Y =  -875.826  mm,	Z =   -50.276  mm,
	W =     2.358 deg,	P =      .323 deg,	R =    39.796 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   126.738  mm
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   130.816  mm,	Y =  -873.280  mm,	Z =   -64.263  mm,
	W =     2.340 deg,	P =      .845 deg,	R =    39.801 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   130.326  mm,	Y =  -873.280  mm,	Z =   -55.244  mm,
	W =     2.615 deg,	P =     1.176 deg,	R =    39.806 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    94.996  mm,	Y =  -864.124  mm,	Z =   -63.205  mm,
	W =     2.375 deg,	P =      .884 deg,	R =    39.801 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.201  mm
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    94.554  mm,	Y =  -864.147  mm,	Z =   -54.296  mm,
	W =     2.615 deg,	P =     1.172 deg,	R =    39.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.966  mm
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    60.291  mm,	Y =  -858.100  mm,	Z =   -61.785  mm,
	W =     2.440 deg,	P =      .961 deg,	R =    39.801 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.966  mm
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    59.963  mm,	Y =  -858.127  mm,	Z =   -54.837  mm,
	W =     2.616 deg,	P =     1.170 deg,	R =    39.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.967  mm
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    58.895  mm,	Y =  -849.833  mm,	Z =   -60.885  mm,
	W =     2.616 deg,	P =     1.170 deg,	R =    42.305 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.967  mm
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    75.878  mm,	Y =  -848.520  mm,	Z =   -37.807  mm,
	W =     2.616 deg,	P =     1.168 deg,	R =    43.453 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    56.302  mm
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   318.895  mm,	Y =  -576.354  mm,	Z =   -37.807  mm,
	W =     2.616 deg,	P =     1.168 deg,	R =    64.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    56.302  mm
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   307.921  mm,	Y =  -570.623  mm,	Z =   -53.891  mm,
	W =     2.615 deg,	P =     1.167 deg,	R =    64.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   307.921  mm,	Y =  -570.623  mm,	Z =   -43.891  mm,
	W =     2.615 deg,	P =     1.167 deg,	R =    64.724 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   343.645  mm,	Y =  -562.612  mm,	Z =   -55.953  mm,
	W =     2.615 deg,	P =     1.166 deg,	R =    64.723 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.201  mm
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   343.634  mm,	Y =  -562.657  mm,	Z =   -46.111  mm,
	W =     2.614 deg,	P =     1.164 deg,	R =    64.722 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.201  mm
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   398.934  mm,	Y =  -549.404  mm,	Z =   -59.359  mm,
	W =     2.614 deg,	P =     1.164 deg,	R =    64.722 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.201  mm
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   407.560  mm,	Y =  -562.706  mm,	Z =   -37.987  mm,
	W =     2.613 deg,	P =     1.162 deg,	R =    64.721 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.646  mm
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.804  mm,	Y =  -562.125  mm,	Z =   -37.987  mm,
	W =     2.613 deg,	P =     1.162 deg,	R =    64.721 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.646  mm
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   470.923  mm,	Y =  -530.734  mm,	Z =   -61.604  mm,
	W =     2.613 deg,	P =     1.162 deg,	R =    64.721 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   470.887  mm,	Y =  -530.789  mm,	Z =   -51.530  mm,
	W =     2.612 deg,	P =     1.159 deg,	R =    64.721 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.202  mm
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.220  mm,	Y =  -519.083  mm,	Z =   -64.281  mm,
	W =     2.605 deg,	P =     1.131 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.201  mm
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   517.200  mm,	Y =  -519.104  mm,	Z =   -53.854  mm,
	W =     2.604 deg,	P =     1.130 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.160  mm
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   552.917  mm,	Y =  -511.034  mm,	Z =   -65.375  mm,
	W =     2.604 deg,	P =     1.130 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.707  mm
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   552.918  mm,	Y =  -511.034  mm,	Z =   -50.976  mm,
	W =     2.604 deg,	P =     1.130 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.374  mm
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   580.535  mm,	Y =  -502.969  mm,	Z =   -67.058  mm,
	W =     2.603 deg,	P =     1.128 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.916  mm
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   610.489  mm,	Y =  -502.966  mm,	Z =   -50.354  mm,
	W =     2.603 deg,	P =     1.128 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.317  mm
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   642.173  mm,	Y =  -536.370  mm,	Z =   -50.354  mm,
	W =     2.603 deg,	P =     1.128 deg,	R =    64.720 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.317  mm
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   616.609  mm,	Y =  -539.352  mm,	Z =   -48.897  mm,
	W =      .399 deg,	P =      .085 deg,	R =    64.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    11.973  mm
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   616.609  mm,	Y =  -539.352  mm,	Z =   -38.955  mm,
	W =      .399 deg,	P =      .085 deg,	R =    64.694 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.083  mm
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   633.900  mm,	Y =  -535.781  mm,	Z =   -49.251  mm,
	W =      .397 deg,	P =      .081 deg,	R =    64.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.947  mm
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   628.306  mm,	Y =  -554.560  mm,	Z =   -37.207  mm,
	W =      .397 deg,	P =      .081 deg,	R =    64.695 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    38.012  mm
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.501  mm,	Y =  -573.938  mm,	Z =   -45.767  mm,
	W =      .398 deg,	P =      .082 deg,	R =    64.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.124  mm
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.597  mm,	Y =  -580.852  mm,	Z =   -37.127  mm,
	W =      .398 deg,	P =      .082 deg,	R =    64.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    32.786  mm
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   633.559  mm,	Y =  -605.064  mm,	Z =   -50.418  mm,
	W =      .397 deg,	P =      .081 deg,	R =    64.693 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.851  mm
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   612.213  mm,	Y =  -627.215  mm,	Z =   -36.307  mm,
	W =      .397 deg,	P =      .081 deg,	R =    62.655 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    36.269  mm
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   624.563  mm,	Y =  -644.150  mm,	Z =   -48.153  mm,
	W =      .380 deg,	P =      .030 deg,	R =    60.665 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.104  mm
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   592.904  mm,	Y =  -673.402  mm,	Z =   -17.339  mm,
	W =      .380 deg,	P =      .030 deg,	R =    57.912 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    85.144  mm
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   583.957  mm,	Y =  -767.968  mm,	Z =   -17.339  mm,
	W =      .380 deg,	P =      .030 deg,	R =    53.988 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    90.122  mm
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   576.759  mm,	Y =  -762.155  mm,	Z =   -46.463  mm,
	W =      .373 deg,	P =      .001 deg,	R =    53.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.613  mm
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   545.427  mm,	Y =  -784.892  mm,	Z =   -33.747  mm,
	W =      .373 deg,	P =     -.000 deg,	R =    51.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    51.973  mm
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   487.728  mm,	Y =  -787.779  mm,	Z =   -33.747  mm,
	W =      .373 deg,	P =     -.000 deg,	R =    51.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    51.973  mm
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   483.410  mm,	Y =  -787.779  mm,	Z =   -49.298  mm,
	W =      .373 deg,	P =     -.000 deg,	R =    51.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.865  mm
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   458.579  mm,	Y =  -806.881  mm,	Z =   -28.275  mm,
	W =      .373 deg,	P =     -.000 deg,	R =    49.320 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    42.266  mm
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   446.083  mm,	Y =  -852.417  mm,	Z =   -28.276  mm,
	W =      .373 deg,	P =     -.000 deg,	R =    48.476 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    42.266  mm
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   439.664  mm,	Y =  -853.857  mm,	Z =   -46.665  mm,
	W =      .373 deg,	P =     -.001 deg,	R =    48.477 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.619  mm
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   439.665  mm,	Y =  -853.856  mm,	Z =   -28.025  mm,
	W =      .373 deg,	P =     -.001 deg,	R =    48.477 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.477  mm
};
P[169]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   657.386  mm,	Y =  -853.865  mm,	Z =   -28.025  mm,
	W =      .373 deg,	P =     -.001 deg,	R =    48.477 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.477  mm
};
P[170]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   885.333  mm,	Y =  -711.449  mm,	Z =  -250.708  mm,
	W =      .373 deg,	P =     -.002 deg,	R =    52.656 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.478  mm
};
P[171]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -683.536  mm,	Y =  -494.033  mm,	Z = -1408.127  mm,
	W =   -39.301 deg,	P =    24.647 deg,	R =   -22.718 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.002  mm
};
P[172]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   712.164  mm,	Y =  -475.135  mm,	Z =  -762.744  mm,
	W =     6.381 deg,	P =    19.374 deg,	R =    36.285 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    66.178  mm
};
/END
