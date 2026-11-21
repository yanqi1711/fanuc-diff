/PROG  ED54_WELD_OP210
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED54_SPOT";
PROG_SIZE	= 18940;
CREATE		= DATE 26-03-13  TIME 14:44:26;
MODIFIED	= DATE 26-06-13  TIME 13:13:56;
FILE_NAME	= ED46_WEL;
VERSION		= 0;
LINE_COUNT	= 237;
MEMORY_SIZE	= 19308;
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
   3:  PAYLOAD[1:GUN] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:  CALL SEGMENT(5) ;
   8:  //CALL ENTER_ZONE(7) ;
   9:J PR[1:HOME] 100% FINE    ;
  10:  WAIT DI[260:OFF:偏置气缸工作位为on]=ON AND DI[262:OFF]=OFF    ;
  11:J P[1] 100% CNT100    ;
  12:J P[6] 100% CNT100    ;
  13:J P[5] 100% CNT100    ;
  14:J P[4] 100% CNT80    ;
  15:J P[3] 100% CNT50    ;
  16:  !033 ;
  17:L P[2] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.0,S=33,ED=1]    ;
  18:J P[7] 100% CNT100    ;
  19:  !032 ;
  20:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=5,P=8,t=4.0,S=32,ED=5]    ;
  21:J P[9] 100% CNT50    ;
  22:J P[10] 100% CNT50    ;
  23:  !034 ;
  24:L P[11] 2000mm/sec CNT50
    :  SPOT[SD=5,P=8,t=4.0,S=34,ED=5]    ;
  25:J P[12] 100% CNT100    ;
  26:J P[13] 100% CNT100    ;
  27:J P[14] 100% CNT100    ;
  28:J P[15] 100% CNT100    ;
  29:J P[16] 100% CNT100    ;
  30:  !035 ;
  31:L P[17] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.2,S=35,ED=10]    ;
  32:J P[18] 100% CNT100    ;
  33:J P[19] 100% CNT100    ;
  34:J P[20] 100% CNT100    ;
  35:  !036 ;
  36:L P[21] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.2,S=36,ED=10]    ;
  37:J P[22] 100% CNT100    ;
  38:J P[23] 100% CNT100    ;
  39:J P[24] 100% CNT100    ;
  40:J P[25] 100% CNT100    ;
  41:J P[26] 100% CNT100    ;
  42:J P[27] 100% CNT100    ;
  43:J P[31] 100% CNT100    ;
  44:J P[29] 100% CNT100    ;
  45:  !037 ;
  46:L P[28] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.3,S=37,ED=10]    ;
  47:J P[30] 100% CNT100    ;
  48:J P[32] 100% CNT100    ;
  49:J P[33] 100% CNT100    ;
  50:J P[37] 100% CNT100    ;
  51:J P[36] 100% CNT100    ;
  52:J P[35] 100% CNT100    ;
  53:  !038 ;
  54:L P[34] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=38,ED=10]    ;
  55:J P[38] 100% CNT100    ;
  56:J P[39] 100% CNT100    ;
  57:  !039 ;
  58:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=39,ED=10]    ;
  59:J P[41] 100% CNT100    ;
  60:  !040 ;
  61:L P[42] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=40,ED=10]    ;
  62:J P[43] 100% CNT70    ;
  63:J P[44] 100% CNT100    ;
  64:J P[45] 100% CNT100    ;
  65:J P[46] 100% CNT100    ;
  66:J P[47] 100% CNT100    ;
  67:J P[48] 100% CNT100    ;
  68:J P[49] 100% CNT100    ;
  69:  !001 ;
  70:L P[50] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=3.5,S=1,ED=10]    ;
  71:J P[51] 100% CNT100    ;
  72:  !002 ;
  73:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=3.5,S=2,ED=10]    ;
  74:J P[53] 100% CNT100    ;
  75:  !003 ;
  76:L P[54] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=3,ED=10]    ;
  77:J P[55] 100% CNT100    ;
  78:J P[56] 100% CNT100    ;
  79:  !004 ;
  80:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=4,ED=10]    ;
  81:J P[58] 100% CNT100    ;
  82:J P[59] 100% CNT100    ;
  83:  !005 ;
  84:L P[60] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=5,ED=10]    ;
  85:J P[61] 100% CNT100    ;
  86:J P[62] 100% CNT100    ;
  87:  !048 ;
  88:  //L P[63] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.5,S=48,ED=10]    ;
  89:J P[64] 100% CNT100    ;
  90:J P[65] 100% CNT100    ;
  91:  !047 ;
  92:  //L P[66] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.5,S=47,ED=10]    ;
  93:J P[67] 100% CNT100    ;
  94:J P[68] 100% CNT100    ;
  95:J P[69] 100% CNT100    ;
  96:  !006 ;
  97:L P[70] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.8,S=6,ED=10]    ;
  98:J P[71] 100% CNT100    ;
  99:  !007 ;
 100:L P[72] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.1,S=7,ED=10]    ;
 101:J P[73] 100% CNT100    ;
 102:  !008 ;
 103:L P[74] 2000mm/sec CNT50
    :  SPOT[SD=5,P=8,t=4.1,S=8,ED=5]    ;
 104:J P[75] 100% CNT50    ;
 105:J P[76] 100% CNT80    ;
 106:J P[77] 100% CNT100    ;
 107:  !009 ;
 108:L P[78] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=9,ED=11]    ;
 109:J P[79] 100% CNT100    ;
 110:  !010 ;
 111:L P[80] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=10,ED=11]    ;
 112:J P[81] 100% CNT100    ;
 113:  !011 ;
 114:L P[82] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=11,ED=11]    ;
 115:J P[83] 100% CNT100    ;
 116:  !012 ;
 117:L P[84] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=12,ED=11]    ;
 118:J P[85] 100% CNT100    ;
 119:  !013 ;
 120:L P[86] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=13,ED=11]    ;
 121:J P[87] 100% CNT100    ;
 122:  !014 ;
 123:L P[88] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=14,ED=11]    ;
 124:J P[89] 100% CNT100    ;
 125:  !015 ;
 126:L P[90] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=15,ED=11]    ;
 127:J P[91] 100% CNT100    ;
 128:  !016 ;
 129:L P[92] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=16,ED=11]    ;
 130:J P[93] 100% CNT100    ;
 131:  !017 ;
 132:L P[94] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=17,ED=11]    ;
 133:J P[95] 100% CNT100    ;
 134:J P[96] 100% CNT100    ;
 135:  !018 ;
 136:L P[97] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=18,ED=11]    ;
 137:J P[98] 100% CNT80    ;
 138:J P[159] 100% CNT100    ;
 139:  !018 ;
 140:  //L P[161] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=18,ED=11]    ;
 141:J P[160] 100% CNT100    ;
 142:   ;
 143:J P[99] 100% CNT100    ;
 144:  !049 ;
 145:L P[162] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=18,ED=11]    ;
 146:J P[163] 100% CNT100    ;
 147:J P[158] 100% CNT100    ;
 148:J P[100] 100% CNT100    ;
 149:J P[101] 100% CNT100    ;
 150:  !020 ;
 151:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.1,S=20,ED=11]    ;
 152:  !021 ;
 153:L P[103] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=21,ED=11]    ;
 154:  !022 ;
 155:L P[104] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=22,ED=11]    ;
 156:  !023 ;
 157:L P[105] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=23,ED=11]    ;
 158:J P[106] 100% CNT100    ;
 159:  !024 ;
 160:L P[107] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=24,ED=11]    ;
 161:  !025 ;
 162:L P[108] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=25,ED=11]    ;
 163:  !026 ;
 164:L P[109] 2000mm/sec CNT50
    :  SPOT[SD=11,P=8,t=4.0,S=26,ED=11]    ;
 165:  !027 ;
 166:L P[110] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.2,S=27,ED=11]    ;
 167:  !028 ;
 168:L P[111] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.2,S=28,ED=11]    ;
 169:J P[112] 100% CNT100    ;
 170:J P[113] 100% CNT100    ;
 171:J P[114] 100% CNT100    ;
 172:J P[115] 100% CNT100    ;
 173:J P[116] 100% CNT100    ;
 174:J P[117] 100% CNT100    ;
 175:J P[118] 100% CNT100    ;
 176:J P[119] 100% CNT100    ;
 177:  !029 ;
 178:L P[120] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=29,ED=11]    ;
 179:J P[121] 100% CNT100    ;
 180:J P[122] 100% CNT100    ;
 181:  !030 ;
 182:L P[123] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=30,ED=11]    ;
 183:J P[124] 100% CNT100    ;
 184:J P[125] 100% CNT100    ;
 185:  !031 ;
 186:L P[126] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.5,S=31,ED=11]    ;
 187:J P[127] 100% CNT100    ;
 188:J P[128] 100% CNT100    ;
 189:J P[147] 100% CNT100    ;
 190:J P[135] 100% CNT100    ;
 191:J P[134] 100% CNT100    ;
 192:J P[133] 100% CNT100    ;
 193:J P[132] 100% CNT100    ;
 194:J P[131] 100% CNT100    ;
 195:J P[130] 100% CNT100    ;
 196:  !041 ;
 197:L P[129] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.7,S=41,ED=11]    ;
 198:J P[152] 100% CNT100    ;
 199:J P[153] 100% CNT100    ;
 200:L P[167] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.7,S=41,ED=11]    ;
 201:   ;
 202:   ;
 203:L P[136] 2000mm/sec CNT100    ;
 204:L P[137] 2000mm/sec CNT100    ;
 205:L P[138] 2000mm/sec CNT100    ;
 206:L P[139] 2000mm/sec CNT100    ;
 207:  !042 ;
 208:L P[168] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.7,S=42,ED=11]    ;
 209:  !043 ;
 210:L P[141] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.7,S=43,ED=11]    ;
 211:J P[142] 100% CNT100    ;
 212:   ;
 213:J P[164] 100% CNT100    ;
 214:  !043 ;
 215:  //L P[165] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.7,S=46,ED=11]    ;
 216:J P[166] 100% CNT100    ;
 217:J P[143] 100% CNT100    ;
 218:  !044 ;
 219:L P[144] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.7,S=44,ED=11]    ;
 220:  !045 ;
 221:L P[145] 2000mm/sec CNT50
    :  SPOT[SD=11,P=7,t=3.7,S=45,ED=11]    ;
 222:J P[146] 100% CNT100    ;
 223:J P[140] 100% CNT100    ;
 224:J P[154] 100% CNT100    ;
 225:  !046 ;
 226:L P[155] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.7,S=46,ED=11]    ;
 227:J P[156] 100% CNT80    ;
 228:J P[157] 100% CNT50    ;
 229:J P[148] 100% CNT50    ;
 230:   ;
 231:J P[149] 100% CNT100    ;
 232:J P[150] 100% CNT100    ;
 233:J P[151] 100% CNT100    ;
 234:J PR[1:HOME] 100% FINE    ;
 235:  //CALL EXIT_ZONE(7) ;
 236:  CALL FINISHSEG(5) ;
 237:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1175.677  mm,	Y = -1190.858  mm,	Z =  1018.736  mm,
	W =   177.867 deg,	P =   -10.459 deg,	R =  -162.034 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   169.539  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1107.837  mm,	Y =  -927.262  mm,	Z =   150.886  mm,
	W =  -172.261 deg,	P =    -1.564 deg,	R =  -155.425 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    31.167  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1102.334  mm,	Y =  -926.311  mm,	Z =    78.104  mm,
	W =  -176.445 deg,	P =     -.030 deg,	R =  -155.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   215.667  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1100.606  mm,	Y =  -984.485  mm,	Z =    88.186  mm,
	W =  -176.445 deg,	P =     -.030 deg,	R =  -155.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   215.667  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1193.052  mm,	Y = -1155.838  mm,	Z =    84.729  mm,
	W =  -176.445 deg,	P =     -.030 deg,	R =  -155.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   215.667  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1193.052  mm,	Y = -1155.838  mm,	Z =   597.369  mm,
	W =  -176.445 deg,	P =     -.030 deg,	R =  -155.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   215.667  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1099.365  mm,	Y =  -917.656  mm,	Z =    75.599  mm,
	W =  -176.445 deg,	P =     -.030 deg,	R =  -155.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.000  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1099.365  mm,	Y =  -917.656  mm,	Z =    72.212  mm,
	W =  -176.445 deg,	P =     -.030 deg,	R =  -155.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    33.883  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1096.980  mm,	Y =  -918.693  mm,	Z =   104.700  mm,
	W =  -175.842 deg,	P =     1.285 deg,	R =  -155.370 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.200  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.564  mm,	Y =  -884.764  mm,	Z =   108.923  mm,
	W =  -175.842 deg,	P =     1.285 deg,	R =  -155.370 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.200  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1190.672  mm,	Y =  -888.710  mm,	Z =    60.268  mm,
	W =  -176.071 deg,	P =    -2.384 deg,	R =  -155.407 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.450  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1190.669  mm,	Y =  -883.362  mm,	Z =    47.765  mm,
	W =  -177.271 deg,	P =    -1.835 deg,	R =  -155.363 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   175.000  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1198.688  mm,	Y =  -946.318  mm,	Z =    47.767  mm,
	W =  -177.271 deg,	P =    -1.835 deg,	R =  -159.717 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   175.000  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1204.903  mm,	Y = -1021.469  mm,	Z =    89.237  mm,
	W =  -177.271 deg,	P =    -1.835 deg,	R =  -164.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   175.000  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1204.903  mm,	Y =  -908.578  mm,	Z =   140.790  mm,
	W =  -177.271 deg,	P =    -1.835 deg,	R =  -164.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   175.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1072.429  mm,	Y =  -927.393  mm,	Z =   131.959  mm,
	W =  -177.271 deg,	P =    -1.835 deg,	R =  -164.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    85.667  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1060.926  mm,	Y =  -937.791  mm,	Z =   -11.607  mm,
	W =   177.595 deg,	P =    -1.703 deg,	R =  -164.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    36.883  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.165  mm,	Y =  -937.791  mm,	Z =    -1.607  mm,
	W =   177.595 deg,	P =    -1.703 deg,	R =  -164.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1079.165  mm,	Y =  -893.057  mm,	Z =    -1.607  mm,
	W =   177.595 deg,	P =    -1.703 deg,	R =  -164.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1003.329  mm,	Y =  -893.057  mm,	Z =     2.234  mm,
	W =   177.595 deg,	P =    -1.703 deg,	R =  -164.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1015.764  mm,	Y =  -917.748  mm,	Z =    53.789  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =  -165.073 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.450  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1025.364  mm,	Y =  -902.197  mm,	Z =    62.925  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =  -165.073 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1096.155  mm,	Y =  -953.962  mm,	Z =    67.725  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =  -168.688 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.200  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1038.594  mm,	Y = -1241.602  mm,	Z =    67.725  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =   167.497 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.200  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   789.748  mm,	Y = -1117.904  mm,	Z =   193.485  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =   146.143 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.200  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   739.817  mm,	Y =  -888.654  mm,	Z =   193.484  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =   122.199 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.200  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   636.135  mm,	Y =  -591.055  mm,	Z =   109.772  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =   122.199 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.200  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   449.763  mm,	Y =  -504.853  mm,	Z =    23.446  mm,
	W =  -179.577 deg,	P =    -2.896 deg,	R =   122.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.615  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   420.197  mm,	Y =  -491.029  mm,	Z =   128.473  mm,
	W =  -179.577 deg,	P =    -2.896 deg,	R =   122.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   193.115  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   420.197  mm,	Y =  -491.029  mm,	Z =   128.473  mm,
	W =  -179.577 deg,	P =    -2.896 deg,	R =   122.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   193.115  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   610.462  mm,	Y =  -509.846  mm,	Z =   128.472  mm,
	W =  -179.577 deg,	P =    -2.896 deg,	R =   122.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   193.115  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   610.462  mm,	Y =  -509.846  mm,	Z =   128.473  mm,
	W =  -179.577 deg,	P =    -2.896 deg,	R =   122.281 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   193.116  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   720.768  mm,	Y =  -653.753  mm,	Z =   109.772  mm,
	W =  -178.177 deg,	P =    -3.778 deg,	R =   118.116 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   182.200  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   502.104  mm,	Y =  -466.392  mm,	Z =    -5.111  mm,
	W =   175.310 deg,	P =    -1.360 deg,	R =   101.256 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.884  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   490.840  mm,	Y =  -466.392  mm,	Z =    23.321  mm,
	W =   172.686 deg,	P =     -.836 deg,	R =   101.306 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.000  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   592.212  mm,	Y =  -495.576  mm,	Z =    25.625  mm,
	W =   172.686 deg,	P =     -.836 deg,	R =   101.306 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   185.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.035  mm,	Y =  -635.374  mm,	Z =    63.537  mm,
	W =   176.340 deg,	P =    -1.224 deg,	R =   107.669 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.955  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   490.840  mm,	Y =  -466.392  mm,	Z =    23.320  mm,
	W =   172.686 deg,	P =     -.836 deg,	R =   101.306 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.333  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   487.039  mm,	Y =  -379.995  mm,	Z =    40.370  mm,
	W =   170.722 deg,	P =     -.443 deg,	R =   101.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.333  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   490.543  mm,	Y =  -372.606  mm,	Z =    16.485  mm,
	W =   171.428 deg,	P =     -.584 deg,	R =   101.322 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.582  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   487.039  mm,	Y =  -379.995  mm,	Z =    40.370  mm,
	W =   170.722 deg,	P =     -.443 deg,	R =   101.328 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.333  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   469.324  mm,	Y =  -378.218  mm,	Z =      .666  mm,
	W =   174.478 deg,	P =    -1.188 deg,	R =   101.274 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    43.277  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   398.381  mm,	Y =  -427.487  mm,	Z =    22.198  mm,
	W =   172.088 deg,	P =     -.709 deg,	R =    91.503 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   205.000  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   494.888  mm,	Y =  -408.229  mm,	Z =    24.406  mm,
	W =   172.088 deg,	P =     -.709 deg,	R =    92.438 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   205.000  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   643.051  mm,	Y =  -437.635  mm,	Z =    24.406  mm,
	W =   172.088 deg,	P =     -.709 deg,	R =    76.090 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   205.000  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   721.937  mm,	Y =  -441.574  mm,	Z =    24.406  mm,
	W =   172.088 deg,	P =     -.709 deg,	R =    55.635 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   205.000  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   863.552  mm,	Y =  -239.280  mm,	Z =   111.767  mm,
	W =   172.088 deg,	P =     -.709 deg,	R =    31.217 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   205.000  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   942.684  mm,	Y =    27.416  mm,	Z =   134.983  mm,
	W =   178.494 deg,	P =    -1.798 deg,	R =    25.882 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   205.001  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   705.561  mm,	Y =   122.458  mm,	Z =   113.862  mm,
	W =   178.494 deg,	P =    -1.798 deg,	R =    25.882 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   105.001  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.760  mm,	Y =    60.618  mm,	Z =    66.705  mm,
	W =   179.572 deg,	P =    -2.322 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.220  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.760  mm,	Y =    60.618  mm,	Z =    76.704  mm,
	W =   179.572 deg,	P =    -2.322 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   682.273  mm,	Y =    74.052  mm,	Z =    67.828  mm,
	W =   179.571 deg,	P =    -2.323 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.950  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   682.273  mm,	Y =    74.052  mm,	Z =    77.829  mm,
	W =   179.571 deg,	P =    -2.323 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    35.533  mm
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   743.453  mm,	Y =   105.720  mm,	Z =    71.353  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.530  mm
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   743.453  mm,	Y =   105.721  mm,	Z =    81.353  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.533  mm
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   668.193  mm,	Y =   183.478  mm,	Z =    88.457  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    56.533  mm
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   674.914  mm,	Y =   178.199  mm,	Z =    70.410  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.033  mm
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   674.915  mm,	Y =   178.199  mm,	Z =    80.410  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.533  mm
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   628.835  mm,	Y =   147.479  mm,	Z =    80.410  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.533  mm
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.286  mm,	Y =   151.127  mm,	Z =    68.602  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.367  mm
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   625.287  mm,	Y =   151.127  mm,	Z =    78.601  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.533  mm
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   649.480  mm,	Y =   230.423  mm,	Z =    78.602  mm,
	W =   179.570 deg,	P =    -2.324 deg,	R =    25.844 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.533  mm
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   651.455  mm,	Y =   230.396  mm,	Z =    56.018  mm,
	W =  -179.651 deg,	P =     -.713 deg,	R =    25.824 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.531  mm
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   651.455  mm,	Y =   230.396  mm,	Z =    66.018  mm,
	W =  -179.651 deg,	P =     -.713 deg,	R =    25.824 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    44.700  mm
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   623.136  mm,	Y =   205.916  mm,	Z =    66.019  mm,
	W =  -179.651 deg,	P =     -.713 deg,	R =    25.824 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    44.700  mm
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   615.378  mm,	Y =   216.176  mm,	Z =    52.257  mm,
	W =  -179.651 deg,	P =     -.713 deg,	R =    25.825 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.118  mm
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   640.494  mm,	Y =   156.797  mm,	Z =    70.992  mm,
	W =  -179.651 deg,	P =     -.713 deg,	R =    22.340 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.533  mm
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   514.374  mm,	Y =    40.323  mm,	Z =   119.858  mm,
	W =  -179.651 deg,	P =     -.713 deg,	R =    16.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.283  mm
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   450.751  mm,	Y =    40.321  mm,	Z =   119.814  mm,
	W =  -179.652 deg,	P =     -.714 deg,	R =    16.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    95.284  mm
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   463.662  mm,	Y =    64.129  mm,	Z =    52.579  mm,
	W =  -179.652 deg,	P =     -.714 deg,	R =    16.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.118  mm
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   464.671  mm,	Y =    63.264  mm,	Z =    62.234  mm,
	W =  -179.652 deg,	P =     -.714 deg,	R =    16.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   430.513  mm,	Y =    56.535  mm,	Z =    50.666  mm,
	W =  -179.653 deg,	P =     -.715 deg,	R =    16.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   430.513  mm,	Y =    56.535  mm,	Z =    60.666  mm,
	W =  -179.653 deg,	P =     -.715 deg,	R =    16.037 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   378.654  mm,	Y =    40.799  mm,	Z =    50.780  mm,
	W =  -179.653 deg,	P =     -.715 deg,	R =    15.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     9.533  mm
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   399.294  mm,	Y =    42.096  mm,	Z =    72.431  mm,
	W =   176.797 deg,	P =      .289 deg,	R =    15.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.117  mm
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   399.295  mm,	Y =    42.096  mm,	Z =   157.100  mm,
	W =   176.797 deg,	P =      .289 deg,	R =    15.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   154.700  mm
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   268.455  mm,	Y =   133.005  mm,	Z =   157.102  mm,
	W =   176.797 deg,	P =      .289 deg,	R =    15.804 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   154.700  mm
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   250.710  mm,	Y =    90.148  mm,	Z =    53.637  mm,
	W =  -179.035 deg,	P =     -.892 deg,	R =    15.782 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.214  mm
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   250.708  mm,	Y =    90.149  mm,	Z =    72.854  mm,
	W =  -179.035 deg,	P =     -.892 deg,	R =    15.782 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    40.533  mm
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   304.852  mm,	Y =   103.589  mm,	Z =    55.094  mm,
	W =  -179.035 deg,	P =     -.892 deg,	R =    15.782 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.867  mm
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   304.853  mm,	Y =   103.589  mm,	Z =    71.126  mm,
	W =  -179.035 deg,	P =     -.892 deg,	R =    15.782 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    33.533  mm
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   344.998  mm,	Y =   116.636  mm,	Z =    54.912  mm,
	W =  -179.036 deg,	P =     -.893 deg,	R =    15.783 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.784  mm
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   344.997  mm,	Y =   116.636  mm,	Z =    69.912  mm,
	W =  -179.036 deg,	P =     -.893 deg,	R =    15.783 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.200  mm
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.681  mm,	Y =   133.721  mm,	Z =    60.366  mm,
	W =  -179.359 deg,	P =    -2.032 deg,	R =    15.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.200  mm
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   403.679  mm,	Y =   133.720  mm,	Z =    79.661  mm,
	W =  -179.358 deg,	P =    -2.032 deg,	R =    15.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    39.700  mm
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   460.138  mm,	Y =   149.077  mm,	Z =    63.670  mm,
	W =  -179.359 deg,	P =    -2.033 deg,	R =    15.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.198  mm
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   460.139  mm,	Y =   149.077  mm,	Z =    79.799  mm,
	W =  -179.359 deg,	P =    -2.033 deg,	R =    15.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    44.698  mm
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   520.691  mm,	Y =   170.124  mm,	Z =    58.756  mm,
	W =  -178.992 deg,	P =    -1.019 deg,	R =    15.782 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.198  mm
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   521.192  mm,	Y =   170.198  mm,	Z =    77.592  mm,
	W =  -179.359 deg,	P =    -2.033 deg,	R =    15.791 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.198  mm
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   544.156  mm,	Y =   202.156  mm,	Z =    70.396  mm,
	W =  -178.432 deg,	P =    -2.296 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.280  mm
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   544.156  mm,	Y =   202.156  mm,	Z =    85.396  mm,
	W =  -178.432 deg,	P =    -2.296 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.200  mm
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   572.014  mm,	Y =   202.150  mm,	Z =    71.131  mm,
	W =  -178.433 deg,	P =    -2.297 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.201  mm
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   572.014  mm,	Y =   202.150  mm,	Z =    82.076  mm,
	W =  -178.433 deg,	P =    -2.297 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.201  mm
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   620.493  mm,	Y =   223.174  mm,	Z =    73.340  mm,
	W =  -178.433 deg,	P =    -2.297 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.951  mm
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   629.743  mm,	Y =   223.178  mm,	Z =    88.313  mm,
	W =  -178.433 deg,	P =    -2.298 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    68.868  mm
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   642.799  mm,	Y =   292.680  mm,	Z =    88.314  mm,
	W =  -178.433 deg,	P =    -2.298 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    68.868  mm
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   641.759  mm,	Y =   297.845  mm,	Z =    73.392  mm,
	W =  -178.434 deg,	P =    -2.299 deg,	R =    15.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    12.283  mm
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   641.759  mm,	Y =   297.845  mm,	Z =    86.778  mm,
	W =  -178.434 deg,	P =    -2.299 deg,	R =    15.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    66.600  mm
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.913  mm,	Y =   310.509  mm,	Z =   111.109  mm,
	W =  -178.434 deg,	P =    -2.299 deg,	R =     1.381 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.286  mm
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   546.047  mm,	Y =   247.643  mm,	Z =   141.429  mm,
	W =  -178.465 deg,	P =    -2.242 deg,	R =     9.209 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   102.924  mm
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   564.331  mm,	Y =   132.911  mm,	Z =   136.628  mm,
	W =  -178.433 deg,	P =    -2.298 deg,	R =    -5.446 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   104.533  mm
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   581.632  mm,	Y =   132.897  mm,	Z =    69.958  mm,
	W =  -178.433 deg,	P =    -2.299 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.198  mm
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   537.856  mm,	Y =   135.586  mm,	Z =    68.806  mm,
	W =  -178.433 deg,	P =    -2.299 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.198  mm
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   482.370  mm,	Y =   139.810  mm,	Z =    65.542  mm,
	W =  -178.433 deg,	P =    -2.299 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.198  mm
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.731  mm,	Y =   144.995  mm,	Z =    62.854  mm,
	W =  -178.433 deg,	P =    -2.299 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.531  mm
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   401.731  mm,	Y =   144.995  mm,	Z =    76.390  mm,
	W =  -178.433 deg,	P =    -2.299 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    42.364  mm
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.836  mm,	Y =   150.179  mm,	Z =    61.511  mm,
	W =  -178.433 deg,	P =    -2.299 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.281  mm
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   311.623  mm,	Y =   152.484  mm,	Z =    59.299  mm,
	W =  -178.434 deg,	P =    -2.301 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.027  mm
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   286.857  mm,	Y =   156.996  mm,	Z =    58.435  mm,
	W =  -178.434 deg,	P =    -2.301 deg,	R =    -5.445 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.027  mm
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   287.677  mm,	Y =   216.955  mm,	Z =    60.163  mm,
	W =  -178.434 deg,	P =    -2.301 deg,	R =    -5.664 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     7.693  mm
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   279.671  mm,	Y =   284.232  mm,	Z =    62.421  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =    -2.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.192  mm
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   314.038  mm,	Y =   284.232  mm,	Z =    84.525  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =    -2.588 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.533  mm
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   596.659  mm,	Y =   205.444  mm,	Z =   150.191  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =    -6.176 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.033  mm
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   892.276  mm,	Y =   171.199  mm,	Z =   150.191  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =    -6.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.033  mm
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1304.885  mm,	Y =    68.514  mm,	Z =   150.191  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =   -13.351 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.033  mm
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1413.483  mm,	Y =    33.999  mm,	Z =   150.191  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =   -39.010 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.033  mm
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1521.637  mm,	Y =  -219.437  mm,	Z =   150.191  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =   -54.775 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.032  mm
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1536.410  mm,	Y =  -342.199  mm,	Z =   150.192  mm,
	W =  -178.434 deg,	P =    -2.302 deg,	R =   -74.045 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.032  mm
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1389.675  mm,	Y =   -76.062  mm,	Z =   150.162  mm,
	W =  -178.433 deg,	P =    -2.303 deg,	R =   -68.547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.032  mm
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1381.867  mm,	Y =   -57.922  mm,	Z =   117.296  mm,
	W =  -177.752 deg,	P =    -2.570 deg,	R =   -68.577 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    15.282  mm
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1383.247  mm,	Y =   -57.921  mm,	Z =   116.107  mm,
	W =  -178.433 deg,	P =    -2.303 deg,	R =   -68.547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.533  mm
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1411.470  mm,	Y =     8.316  mm,	Z =   116.107  mm,
	W =  -178.433 deg,	P =    -2.303 deg,	R =   -68.548 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.533  mm
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1411.622  mm,	Y =    21.289  mm,	Z =    94.857  mm,
	W =  -178.256 deg,	P =    -1.588 deg,	R =   -68.555 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.450  mm
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1412.793  mm,	Y =    21.289  mm,	Z =    99.146  mm,
	W =  -178.984 deg,	P =    -1.301 deg,	R =   -68.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    33.700  mm
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1458.872  mm,	Y =    33.960  mm,	Z =    99.146  mm,
	W =  -178.984 deg,	P =    -1.302 deg,	R =   -68.536 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    33.700  mm
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1456.460  mm,	Y =    41.462  mm,	Z =    57.413  mm,
	W =  -179.916 deg,	P =     -.382 deg,	R =   -68.528 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.700  mm
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1458.442  mm,	Y =     -.977  mm,	Z =   109.454  mm,
	W =  -179.302 deg,	P =    -1.048 deg,	R =   -68.531 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    96.842  mm
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1479.562  mm,	Y =  -242.418  mm,	Z =   109.455  mm,
	W =  -179.302 deg,	P =    -1.048 deg,	R =   -68.531 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    96.842  mm
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   288.455  mm,	Y =    18.802  mm,	Z =  1223.534  mm,
	W =   -91.249 deg,	P =     -.744 deg,	R =    56.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.740  mm
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   274.248  mm,	Y =    40.113  mm,	Z =  1352.370  mm,
	W =   -91.249 deg,	P =     -.744 deg,	R =    56.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   427.265  mm,	Y =    -2.128  mm,	Z =  1352.370  mm,
	W =   -91.249 deg,	P =     -.744 deg,	R =    56.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   517.783  mm,	Y =  -319.889  mm,	Z =  1421.175  mm,
	W =   -96.726 deg,	P =    -4.417 deg,	R =    56.283 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   920.189  mm,	Y =   268.284  mm,	Z =  1368.126  mm,
	W =  -117.123 deg,	P =    24.868 deg,	R =    16.207 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   154.536  mm
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1411.912  mm,	Y =   205.806  mm,	Z =   969.245  mm,
	W =  -155.469 deg,	P =    25.170 deg,	R =   -29.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   126.456  mm
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1484.252  mm,	Y =    62.973  mm,	Z =   438.377  mm,
	W =  -173.056 deg,	P =    11.526 deg,	R =   -52.587 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   109.155  mm
};
P[136:""]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   274.248  mm,	Y =    40.113  mm,	Z =  1352.370  mm,
	W =   -91.249 deg,	P =     -.744 deg,	R =    56.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   427.265  mm,	Y =    -2.128  mm,	Z =  1352.371  mm,
	W =   -91.249 deg,	P =     -.744 deg,	R =    56.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    93.038  mm,	Y =  -432.140  mm,	Z =  1336.388  mm,
	W =   -91.147 deg,	P =     -.809 deg,	R =    48.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -81.179  mm,	Y =  -358.092  mm,	Z =  1334.818  mm,
	W =   -91.147 deg,	P =     -.808 deg,	R =    48.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   186.740  mm
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -45.927  mm,	Y =  -488.228  mm,	Z =  1364.693  mm,
	W =   -90.250 deg,	P =     -.804 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =     -.371  mm,	Y =  -373.628  mm,	Z =  1204.740  mm,
	W =   -89.400 deg,	P =    -1.737 deg,	R =    48.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.367  mm
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    -6.994  mm,	Y =  -390.330  mm,	Z =  1232.893  mm,
	W =   -89.400 deg,	P =    -1.737 deg,	R =    48.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.533  mm
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -80.910  mm,	Y =  -430.073  mm,	Z =  1232.894  mm,
	W =   -89.400 deg,	P =    -1.737 deg,	R =    48.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.533  mm
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -54.519  mm,	Y =  -428.922  mm,	Z =  1207.364  mm,
	W =   -87.947 deg,	P =     -.379 deg,	R =    48.010 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    32.529  mm
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -81.664  mm,	Y =  -415.347  mm,	Z =  1212.033  mm,
	W =   -90.248 deg,	P =     -.805 deg,	R =    48.035 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.026  mm
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -76.475  mm,	Y =  -404.989  mm,	Z =  1343.665  mm,
	W =   -90.250 deg,	P =     -.806 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   210.000  mm
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1447.338  mm,	Y =   -88.450  mm,	Z =   260.105  mm,
	W =  -177.602 deg,	P =     5.232 deg,	R =   -60.845 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   102.841  mm
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    29.680  mm,	Y =  -478.655  mm,	Z =  1479.771  mm,
	W =   -91.719 deg,	P =    -2.240 deg,	R =    46.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   204.266  mm
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   231.900  mm,	Y =  -511.192  mm,	Z =  1728.894  mm,
	W =   -94.693 deg,	P =    -4.783 deg,	R =    48.253 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   128.500  mm
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   542.422  mm,	Y =  -588.583  mm,	Z =  1926.394  mm,
	W =  -106.958 deg,	P =   -34.091 deg,	R =    52.928 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   103.118  mm
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   622.639  mm,	Y =  -771.684  mm,	Z =  2241.902  mm,
	W =  -114.663 deg,	P =   -50.468 deg,	R =    74.689 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    86.104  mm
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   288.455  mm,	Y =    18.802  mm,	Z =  1236.066  mm,
	W =   -91.249 deg,	P =     -.744 deg,	R =    56.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.700  mm
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   325.949  mm,	Y =    38.810  mm,	Z =  1224.688  mm,
	W =   -88.825 deg,	P =      .888 deg,	R =    56.039 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.700  mm
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -154.408  mm,	Y =  -509.348  mm,	Z =  1245.655  mm,
	W =   -90.250 deg,	P =     -.805 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.667  mm
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -150.805  mm,	Y =  -493.626  mm,	Z =  1207.355  mm,
	W =   -90.250 deg,	P =     -.805 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.700  mm
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -154.408  mm,	Y =  -509.348  mm,	Z =  1245.655  mm,
	W =   -90.250 deg,	P =     -.805 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   212.667  mm
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -45.927  mm,	Y =  -488.228  mm,	Z =  1364.694  mm,
	W =   -90.250 deg,	P =     -.804 deg,	R =    48.036 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   618.678  mm,	Y =   286.094  mm,	Z =   145.490  mm,
	W =  -178.444 deg,	P =    -2.278 deg,	R =    13.902 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   104.062  mm
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   631.668  mm,	Y =   347.682  mm,	Z =   101.179  mm,
	W =  -178.433 deg,	P =    -2.298 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    51.035  mm
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   631.668  mm,	Y =   347.682  mm,	Z =   101.179  mm,
	W =  -178.433 deg,	P =    -2.298 deg,	R =    15.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    51.035  mm
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   631.682  mm,	Y =   347.670  mm,	Z =    76.370  mm,
	W =  -178.434 deg,	P =    -2.298 deg,	R =    15.757 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.866  mm
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   692.947  mm,	Y =   314.059  mm,	Z =    78.741  mm,
	W =  -178.434 deg,	P =    -2.299 deg,	R =     1.381 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     7.036  mm
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   688.913  mm,	Y =   310.509  mm,	Z =   111.109  mm,
	W =  -178.434 deg,	P =    -2.299 deg,	R =     1.381 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    55.286  mm
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -26.143  mm,	Y =  -416.785  mm,	Z =  1231.318  mm,
	W =   -89.405 deg,	P =    -1.738 deg,	R =    48.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.318  mm
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -26.144  mm,	Y =  -416.784  mm,	Z =  1205.205  mm,
	W =   -89.405 deg,	P =    -1.738 deg,	R =    48.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.069  mm
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -26.143  mm,	Y =  -416.785  mm,	Z =  1231.318  mm,
	W =   -89.405 deg,	P =    -1.738 deg,	R =    48.015 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.318  mm
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   384.274  mm,	Y =    30.082  mm,	Z =  1209.582  mm,
	W =   -85.915 deg,	P =     2.238 deg,	R =    56.132 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.333  mm
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -13.763  mm,	Y =  -372.076  mm,	Z =  1198.744  mm,
	W =   -88.234 deg,	P =    -2.035 deg,	R =    47.975 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.025  mm
};
/END
