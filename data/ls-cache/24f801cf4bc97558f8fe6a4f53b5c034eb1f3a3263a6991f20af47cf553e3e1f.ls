/PROG  ED44_OP180_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED44_SPOT";
PROG_SIZE	= 18634;
CREATE		= DATE 26-03-12  TIME 08:35:18;
MODIFIED	= DATE 26-09-04  TIME 15:17:18;
FILE_NAME	= ED44_OP1;
VERSION		= 0;
LINE_COUNT	= 230;
MEMORY_SIZE	= 19014;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=1 ;
   3:  PAYLOAD[1:GUN] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:  //WAIT DI[260:OFF:偏置气缸工作位为on]=ON AND DI[262:OFF]=OFF    ;
   8:  CALL SEGMENT(5) ;
   9:   ;
  10:J P[1] 100% CNT100    ;
  11:J P[6] 100% CNT100    ;
  12:J P[5] 100% CNT100    ;
  13:J P[4] 100% CNT100    ;
  14:J P[3] 100% CNT100    ;
  15:  !001 ;
  16:L P[2] 2000mm/sec CNT50
    :  SPOT[SD=2,P=4,t=1.9,S=1,ED=2]    ;
  17:J P[7] 100% CNT50    ;
  18:J P[9] 100% CNT50    ;
  19:  !002 ;
  20:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=2,P=5,t=2.5,S=2,ED=3]    ;
  21:J P[10] 100% CNT100    ;
  22:J P[12] 100% CNT100    ;
  23:  !006 ;
  24:L P[11] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.3,S=6,ED=3]    ;
  25:  !005 ;
  26:L P[13] 2000mm/sec CNT50
    :  SPOT[SD=3,P=4,t=1.9,S=5,ED=3]    ;
  27:  !004 ;
  28:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=4,ED=3]    ;
  29:J P[15] 100% CNT100    ;
  30:  !003 ;
  31:L P[16] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=3,ED=3]    ;
  32:J P[17] 100% CNT100    ;
  33:J P[18] 100% CNT100    ;
  34:J P[19] 100% CNT100    ;
  35:J P[20] 100% CNT100    ;
  36:J P[21] 100% CNT100    ;
  37:J P[24] 100% CNT100    ;
  38:   ;
  39:J P[28] 100% CNT100    ;
  40:J P[26] 100% CNT100    ;
  41:  !16 ;
  42:L P[25] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=16,ED=3]    ;
  43:J P[27] 100% CNT100    ;
  44:J P[29] 100% CNT100    ;
  45:  !15 ;
  46:L P[31] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.2,S=15,ED=3]    ;
  47:J P[32] 100% CNT100    ;
  48:J P[35] 100% CNT100    ;
  49:   ;
  50:J P[34] 100% CNT100    ;
  51:  !14 ;
  52:L P[33] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.2,S=14,ED=3]    ;
  53:  !13 ;
  54:L P[36] 2000mm/sec CNT50
    :  SPOT[SD=3,P=4,t=1.9,S=13,ED=3]    ;
  55:  !12 ;
  56:L P[38] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=12,ED=3]    ;
  57:J P[37] 100% CNT100    ;
  58:  !11 ;
  59:L P[39] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=7,ED=3]    ;
  60:  !10 ;
  61:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=10,ED=3]    ;
  62:  !9 ;
  63:L P[41] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=9,ED=3]    ;
  64:J P[22] 100% CNT100    ;
  65:J P[23] 100% CNT100    ;
  66:  !8 ;
  67:L P[30] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=8,ED=3]    ;
  68:  !7 ;
  69:L P[42] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=7,ED=3]    ;
  70:J P[43] 100% CNT100    ;
  71:J P[44] 100% CNT100    ;
  72:J P[45] 100% CNT100    ;
  73:J P[46] 100% CNT100    ;
  74:J P[47] 100% CNT100    ;
  75:J P[48] 100% CNT100    ;
  76:J P[49] 100% CNT100    ;
  77:J P[50] 100% CNT100    ;
  78:J P[51] 100% CNT100    ;
  79:J P[52] 100% CNT100    ;
  80:J P[53] 100% CNT100    ;
  81:J P[54] 100% CNT100    ;
  82:J P[56] 100% CNT100    ;
  83:  !21 ;
  84:L P[55] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=21,ED=3]    ;
  85:J P[57] 100% CNT100    ;
  86:  !20 ;
  87:L P[58] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.5,S=20,ED=3]    ;
  88:J P[59] 100% CNT100    ;
  89:  !19 ;
  90:L P[60] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.2,S=49,ED=3]    ;
  91:  !18 ;
  92:L P[61] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.2,S=18,ED=3]    ;
  93:J P[62] 100% CNT100    ;
  94:  !17 ;
  95:L P[63] 2000mm/sec CNT50
    :  SPOT[SD=3,P=4,t=1.9,S=17,ED=3]    ;
  96:J P[64] 100% CNT100    ;
  97:J P[65] 100% CNT100    ;
  98:J P[66] 100% CNT100    ;
  99:J P[67] 100% CNT100    ;
 100:J P[68] 100% CNT100    ;
 101:J P[69] 100% CNT100    ;
 102:J P[70] 100% CNT100    ;
 103:J P[71] 100% CNT100    ;
 104:J P[72] 100% CNT100    ;
 105:J P[73] 100% CNT100    ;
 106:  !31 ;
 107:L P[74] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=31,ED=3]    ;
 108:J P[75] 100% CNT100    ;
 109:  !30 ;
 110:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=30,ED=3]    ;
 111:J P[77] 100% CNT100    ;
 112:J P[78] 100% CNT100    ;
 113:J P[80] 100% CNT100    ;
 114:  !29 ;
 115:L P[79] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=29,ED=3]    ;
 116:  !28 ;
 117:L P[81] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=28,ED=3]    ;
 118:J P[82] 100% CNT100    ;
 119:  !27 ;
 120:L P[83] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=27,ED=3]    ;
 121:J P[84] 100% CNT100    ;
 122:  !26 ;
 123:L P[85] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=26,ED=3]    ;
 124:J P[86] 100% CNT100    ;
 125:  !25 ;
 126:L P[87] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=25,ED=3]    ;
 127:  !24 ;
 128:L P[88] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=24,ED=3]    ;
 129:J P[89] 100% CNT100    ;
 130:  !23 ;
 131:L P[90] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=23,ED=3]    ;
 132:J P[91] 100% CNT100    ;
 133:  !22 ;
 134:L P[92] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.3,S=22,ED=3]    ;
 135:J P[93] 100% CNT100    ;
 136:J P[94] 100% CNT100    ;
 137:  !32 ;
 138:L P[95] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=5.5,S=32,ED=3]    ;
 139:J P[96] 100% CNT100    ;
 140:  !33 ;
 141:L P[97] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=5.4,S=33,ED=3]    ;
 142:J P[98] 100% CNT100    ;
 143:  !34 ;
 144:L P[99] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=5.5,S=34,ED=3]    ;
 145:J P[100] 100% CNT100    ;
 146:J P[101] 100% CNT100    ;
 147:J P[102] 100% CNT100    ;
 148:J P[103] 100% CNT100    ;
 149:J P[104] 100% CNT100    ;
 150:J P[105] 100% CNT100    ;
 151:J P[106] 100% CNT100    ;
 152:J P[107] 100% CNT100    ;
 153:J P[108] 100% CNT100    ;
 154:J P[109] 100% CNT100    ;
 155:J P[110] 100% CNT100    ;
 156:J P[112] 100% CNT100    ;
 157:  !35 ;
 158:L P[111] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=5.4,S=35,ED=3]    ;
 159:J P[113] 100% CNT100    ;
 160:J P[114] 100% CNT100    ;
 161:  !36 ;
 162:L P[115] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=5.5,S=36,ED=3]    ;
 163:J P[116] 100% CNT100    ;
 164:J P[118] 100% CNT100    ;
 165:  !39 ;
 166:L P[117] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=39,ED=3]    ;
 167:J P[119] 100% CNT100    ;
 168:J P[120] 100% CNT100    ;
 169:J P[122] 100% CNT50    ;
 170:  !40 ;
 171:L P[121] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=40,ED=1]    ;
 172:J P[123] 100% CNT50    ;
 173:J P[124] 100% CNT50    ;
 174:  !38 ;
 175:L P[125] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=38,ED=3]    ;
 176:J P[126] 100% CNT100    ;
 177:  !37 ;
 178:L P[127] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=37,ED=3]    ;
 179:J P[128] 100% CNT100    ;
 180:J P[129] 100% CNT100    ;
 181:J P[130] 100% CNT100    ;
 182:J P[131] 100% CNT100    ;
 183:J P[132] 100% CNT100    ;
 184:J P[133] 100% CNT100    ;
 185:J P[134] 100% CNT100    ;
 186:J P[135] 100% CNT100    ;
 187:  !45 ;
 188:L P[136] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=45,ED=3]    ;
 189:  !46 ;
 190:L P[137] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=46,ED=3]    ;
 191:J P[138] 100% CNT100    ;
 192:J P[139] 100% CNT100    ;
 193:J P[140] 100% CNT100    ;
 194:J P[141] 100% CNT100    ;
 195:  !44 ;
 196:L P[142] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.3,S=44,ED=3]    ;
 197:  !43 ;
 198:L P[143] 2000mm/sec CNT50
    :  SPOT[SD=3,P=5,t=2.3,S=43,ED=3]    ;
 199:  !42 ;
 200:L P[144] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=42,ED=3]    ;
 201:J P[145] 100% CNT100    ;
 202:  !41 ;
 203:L P[146] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=41,ED=3]    ;
 204:J P[147] 100% CNT100    ;
 205:J P[148] 100% CNT100    ;
 206:J P[149] 100% CNT100    ;
 207:J P[151] 100% CNT100    ;
 208:  !47 ;
 209:L P[150] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=47,ED=3]    ;
 210:J P[153] 100% CNT100    ;
 211:J P[152] 100% CNT100    ;
 212:J P[154] 100% CNT100    ;
 213:J P[155] 100% CNT100    ;
 214:J P[157] 100% CNT100    ;
 215:  !49 ;
 216:L P[156] 2000mm/sec CNT50
    :  SPOT[SD=3,P=4,t=1.9,S=49,ED=3]    ;
 217:J P[159] 100% CNT100    ;
 218:J P[158] 100% CNT100    ;
 219:J P[160] 100% CNT100    ;
 220:J P[161] 100% CNT100    ;
 221:  !48 ;
 222:L P[162] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.5,S=41,ED=3]    ;
 223:J P[163] 100% CNT100    ;
 224:J P[164] 100% CNT100    ;
 225:J P[165] 100% CNT100    ;
 226:J P[166] 100% CNT100    ;
 227:J P[167] 100% CNT100    ;
 228:J P[168] 100% CNT100    ;
 229:J PR[1:HOME] 100% CNT100    ;
 230:  CALL FINISHSEG(5) ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   420.024  mm,	Y =  -289.207  mm,	Z =  1375.296  mm,
	W =  -145.502 deg,	P =     -.988 deg,	R =    93.516 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.870  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   405.079  mm,	Y =   261.098  mm,	Z =    33.642  mm,
	W =   178.611 deg,	P =     1.099 deg,	R =    40.592 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.116  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   406.795  mm,	Y =   265.443  mm,	Z =   154.966  mm,
	W =   178.904 deg,	P =     1.766 deg,	R =    40.604 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   219.647  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   567.930  mm,	Y =   187.803  mm,	Z =   155.885  mm,
	W =   178.904 deg,	P =     1.766 deg,	R =    40.604 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   219.647  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   756.868  mm,	Y =   112.341  mm,	Z =   156.426  mm,
	W =   179.044 deg,	P =     1.845 deg,	R =    45.033 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   219.647  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   570.328  mm,	Y =   -21.519  mm,	Z =   567.203  mm,
	W =  -168.388 deg,	P =     6.482 deg,	R =    64.099 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   194.586  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   405.438  mm,	Y =   261.085  mm,	Z =    58.980  mm,
	W =   178.903 deg,	P =     1.765 deg,	R =    40.603 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.198  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   152.003  mm,	Y =    82.127  mm,	Z =    37.464  mm,
	W =   178.235 deg,	P =      .813 deg,	R =    40.593 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.696  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   152.004  mm,	Y =    82.126  mm,	Z =    69.192  mm,
	W =   178.235 deg,	P =      .813 deg,	R =    40.593 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   152.006  mm,	Y =    19.917  mm,	Z =    59.192  mm,
	W =   178.235 deg,	P =      .813 deg,	R =    40.593 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    74.200  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   103.143  mm,	Y =   -27.471  mm,	Z =    48.519  mm,
	W =   177.005 deg,	P =      .762 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.144  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   103.141  mm,	Y =   -19.984  mm,	Z =    59.304  mm,
	W =   177.005 deg,	P =      .762 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    67.200  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    75.793  mm,	Y =     5.934  mm,	Z =    44.259  mm,
	W =   177.004 deg,	P =      .761 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.950  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    32.027  mm,	Y =    53.166  mm,	Z =    41.740  mm,
	W =   177.003 deg,	P =      .760 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.202  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -24.987  mm,	Y =   136.972  mm,	Z =    62.532  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.200  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -143.366  mm,	Y =   254.769  mm,	Z =    29.067  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.950  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -67.329  mm,	Y =   229.422  mm,	Z =    51.140  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    83.200  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    47.878  mm,	Y =   175.848  mm,	Z =    80.517  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   137.700  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   349.720  mm,	Y =   189.084  mm,	Z =   143.302  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    40.571 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   216.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   503.694  mm,	Y =   204.651  mm,	Z =   159.622  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    55.730 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   216.000  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   636.943  mm,	Y =    99.420  mm,	Z =   159.588  mm,
	W =   177.002 deg,	P =      .759 deg,	R =    98.125 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   216.001  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    54.542  mm,	Y =  -166.341  mm,	Z =    59.869  mm,
	W =   179.499 deg,	P =      .314 deg,	R =   124.657 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.864  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -24.504  mm,	Y =  -165.922  mm,	Z =    59.806  mm,
	W =   179.498 deg,	P =      .315 deg,	R =   123.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.862  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   678.708  mm,	Y =   -19.035  mm,	Z =   163.455  mm,
	W =   177.043 deg,	P =      .749 deg,	R =   106.605 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   216.001  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   211.690  mm,	Y =  -196.544  mm,	Z =    44.110  mm,
	W =   179.870 deg,	P =     -.093 deg,	R =   106.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   196.139  mm,	Y =  -196.544  mm,	Z =    84.718  mm,
	W =   179.870 deg,	P =     -.093 deg,	R =   106.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.003  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   196.139  mm,	Y =  -196.544  mm,	Z =    84.718  mm,
	W =   179.870 deg,	P =     -.093 deg,	R =   106.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.003  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   152.940  mm,	Y =  -184.450  mm,	Z =   138.287  mm,
	W =   179.870 deg,	P =     -.093 deg,	R =   106.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   187.503  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   105.129  mm,	Y =  -184.449  mm,	Z =   138.287  mm,
	W =   179.870 deg,	P =     -.093 deg,	R =   106.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   187.503  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -28.631  mm,	Y =  -168.673  mm,	Z =    43.900  mm,
	W =   179.497 deg,	P =      .316 deg,	R =   123.612 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   146.315  mm,	Y =  -254.532  mm,	Z =    42.802  mm,
	W =   179.868 deg,	P =     -.092 deg,	R =   106.624 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   105.129  mm,	Y =  -184.449  mm,	Z =   138.287  mm,
	W =   179.870 deg,	P =     -.093 deg,	R =   106.622 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   187.503  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   133.017  mm,	Y =   -19.177  mm,	Z =    48.131  mm,
	W =   179.504 deg,	P =      .308 deg,	R =   126.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   133.822  mm,	Y =   -17.906  mm,	Z =    97.790  mm,
	W =   179.504 deg,	P =      .308 deg,	R =   126.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   122.336  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   108.888  mm,	Y =  -128.458  mm,	Z =   124.557  mm,
	W =   179.715 deg,	P =      .002 deg,	R =   113.397 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   165.443  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   107.191  mm,	Y =   -35.192  mm,	Z =    45.505  mm,
	W =   179.502 deg,	P =      .310 deg,	R =   126.646 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    45.719  mm,	Y =   -83.780  mm,	Z =    65.859  mm,
	W =   179.503 deg,	P =      .310 deg,	R =   126.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    63.615  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    79.490  mm,	Y =   -54.978  mm,	Z =    45.166  mm,
	W =   179.503 deg,	P =      .309 deg,	R =   126.647 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    39.617  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    13.763  mm,	Y =  -106.181  mm,	Z =    44.539  mm,
	W =   179.502 deg,	P =      .311 deg,	R =   126.646 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.150  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    31.796  mm,	Y =  -129.463  mm,	Z =    44.712  mm,
	W =   179.500 deg,	P =      .313 deg,	R =   126.318 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    58.436  mm,	Y =  -165.001  mm,	Z =    45.231  mm,
	W =   179.500 deg,	P =      .313 deg,	R =   126.011 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -4.211  mm,	Y =  -208.783  mm,	Z =    44.419  mm,
	W =   179.497 deg,	P =      .316 deg,	R =   122.628 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.403  mm,	Y =  -208.628  mm,	Z =    62.158  mm,
	W =   179.495 deg,	P =      .318 deg,	R =   121.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    61.109  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   132.295  mm,	Y =  -110.707  mm,	Z =    97.294  mm,
	W =   179.495 deg,	P =      .318 deg,	R =   121.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.609  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   223.879  mm,	Y =   -66.930  mm,	Z =    97.294  mm,
	W =   179.495 deg,	P =      .318 deg,	R =   121.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.609  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   292.998  mm,	Y =   -19.122  mm,	Z =    97.295  mm,
	W =   179.495 deg,	P =      .318 deg,	R =   121.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.609  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   496.325  mm,	Y =    35.600  mm,	Z =    97.295  mm,
	W =   179.495 deg,	P =      .318 deg,	R =   121.193 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.609  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   739.568  mm,	Y =    -1.325  mm,	Z =    97.475  mm,
	W =   179.622 deg,	P =      .528 deg,	R =   132.400 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.609  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   752.938  mm,	Y =   -54.124  mm,	Z =    97.433  mm,
	W =   179.622 deg,	P =      .529 deg,	R =   139.835 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   110.608  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   875.287  mm,	Y =  -208.647  mm,	Z =    97.433  mm,
	W =   179.622 deg,	P =      .529 deg,	R =   151.741 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   190.108  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   854.544  mm,	Y =  -519.104  mm,	Z =    97.433  mm,
	W =   179.622 deg,	P =      .529 deg,	R =   151.741 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   190.108  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   477.943  mm,	Y =  -408.290  mm,	Z =    97.434  mm,
	W =   179.622 deg,	P =      .529 deg,	R =   157.707 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   190.108  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   303.418  mm,	Y =  -408.293  mm,	Z =   136.602  mm,
	W =   179.622 deg,	P =      .529 deg,	R =   157.707 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   169.108  mm
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -85.953  mm,	Y =  -442.859  mm,	Z =   136.602  mm,
	W =   179.622 deg,	P =      .529 deg,	R =   157.707 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   169.108  mm
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -69.185  mm,	Y =  -440.975  mm,	Z =    37.019  mm,
	W =   179.633 deg,	P =      .496 deg,	R =   157.278 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -69.521  mm,	Y =  -397.910  mm,	Z =    85.159  mm,
	W =   179.627 deg,	P =      .513 deg,	R =   157.473 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    86.588  mm
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -69.521  mm,	Y =  -397.910  mm,	Z =    85.159  mm,
	W =   179.627 deg,	P =      .513 deg,	R =   157.473 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    86.588  mm
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -68.312  mm,	Y =  -378.903  mm,	Z =    44.319  mm,
	W =   179.627 deg,	P =      .513 deg,	R =   157.473 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -38.134  mm,	Y =  -342.039  mm,	Z =    62.225  mm,
	W =   179.627 deg,	P =      .514 deg,	R =   158.662 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    35.590  mm
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -30.562  mm,	Y =  -319.084  mm,	Z =    44.009  mm,
	W =   179.627 deg,	P =      .516 deg,	R =   159.606 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[61:""]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -13.671  mm,	Y =  -289.587  mm,	Z =    44.632  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   160.665 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    48.126  mm,	Y =  -288.416  mm,	Z =    68.275  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   162.182 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    44.867  mm
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    69.281  mm,	Y =  -265.429  mm,	Z =    40.268  mm,
	W =   179.568 deg,	P =     -.139 deg,	R =   164.273 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.917  mm
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    48.125  mm,	Y =  -288.416  mm,	Z =    96.499  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   162.182 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    85.367  mm
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   233.036  mm,	Y =  -364.452  mm,	Z =   136.242  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   162.182 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   452.511  mm,	Y =  -460.362  mm,	Z =   120.691  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   162.182 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   808.089  mm,	Y =  -440.938  mm,	Z =   120.691  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   165.134 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   958.265  mm,	Y =  -416.228  mm,	Z =   120.692  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   167.459 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1051.609  mm,	Y =  -678.548  mm,	Z =   120.692  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   174.660 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1107.283  mm,	Y =  -777.549  mm,	Z =   120.692  mm,
	W =   179.627 deg,	P =      .519 deg,	R =   178.575 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   975.388  mm,	Y =  -693.146  mm,	Z =   120.691  mm,
	W =   179.627 deg,	P =      .519 deg,	R =  -175.644 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.617  mm
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   774.115  mm,	Y =  -685.188  mm,	Z =   132.739  mm,
	W =   179.628 deg,	P =      .521 deg,	R =  -171.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   141.616  mm
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   585.767  mm,	Y =  -751.815  mm,	Z =    84.945  mm,
	W =   179.628 deg,	P =      .521 deg,	R =  -171.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.115  mm
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   581.493  mm,	Y =  -750.083  mm,	Z =    46.782  mm,
	W =   179.628 deg,	P =      .523 deg,	R =  -171.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   581.491  mm,	Y =  -722.435  mm,	Z =    70.975  mm,
	W =   179.628 deg,	P =      .523 deg,	R =  -171.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    45.250  mm
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   572.023  mm,	Y =  -693.801  mm,	Z =    45.009  mm,
	W =   179.628 deg,	P =      .524 deg,	R =  -171.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   601.440  mm,	Y =  -656.658  mm,	Z =   110.341  mm,
	W =   179.629 deg,	P =      .526 deg,	R =  -171.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.996  mm
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   572.057  mm,	Y =  -577.169  mm,	Z =   110.341  mm,
	W =   179.629 deg,	P =      .526 deg,	R =  -171.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.996  mm
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   507.577  mm,	Y =  -585.274  mm,	Z =    39.744  mm,
	W =   179.630 deg,	P =      .527 deg,	R =  -171.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   507.577  mm,	Y =  -585.275  mm,	Z =   102.529  mm,
	W =   179.630 deg,	P =      .527 deg,	R =  -171.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   115.997  mm
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.446  mm,	Y =  -595.399  mm,	Z =    38.282  mm,
	W =   179.630 deg,	P =      .528 deg,	R =  -171.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     5.999  mm
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.687  mm,	Y =  -598.515  mm,	Z =    55.822  mm,
	W =   179.630 deg,	P =      .528 deg,	R =  -171.935 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.999  mm
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   411.104  mm,	Y =  -601.435  mm,	Z =    37.286  mm,
	W =   179.631 deg,	P =      .531 deg,	R =  -171.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.750  mm
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   391.225  mm,	Y =  -630.093  mm,	Z =    86.206  mm,
	W =   179.632 deg,	P =      .533 deg,	R =  -171.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.998  mm
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   376.123  mm,	Y =  -601.281  mm,	Z =    37.857  mm,
	W =   179.633 deg,	P =      .534 deg,	R =  -170.704 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    16.000  mm
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   320.500  mm,	Y =  -607.273  mm,	Z =    46.655  mm,
	W =   179.633 deg,	P =      .534 deg,	R =  -170.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.995  mm
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   291.736  mm,	Y =  -607.232  mm,	Z =    36.111  mm,
	W =   179.633 deg,	P =      .536 deg,	R =  -170.705 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   259.796  mm,	Y =  -611.654  mm,	Z =    37.156  mm,
	W =   179.634 deg,	P =      .537 deg,	R =  -170.704 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   230.061  mm,	Y =  -626.062  mm,	Z =    65.908  mm,
	W =   179.634 deg,	P =      .539 deg,	R =  -170.704 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    86.993  mm
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   203.061  mm,	Y =  -620.954  mm,	Z =    34.785  mm,
	W =   179.636 deg,	P =      .544 deg,	R =  -170.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   208.824  mm,	Y =  -665.593  mm,	Z =    51.488  mm,
	W =   179.636 deg,	P =      .544 deg,	R =  -170.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    48.750  mm
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   184.650  mm,	Y =  -678.554  mm,	Z =    41.344  mm,
	W =   179.637 deg,	P =      .545 deg,	R =  -170.704 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   263.403  mm,	Y =  -703.700  mm,	Z =    70.660  mm,
	W =   179.637 deg,	P =      .547 deg,	R =  -172.180 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    53.501  mm
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   399.334  mm,	Y =  -688.016  mm,	Z =    70.661  mm,
	W =   179.637 deg,	P =      .547 deg,	R =  -173.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    53.501  mm
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   449.140  mm,	Y =  -682.142  mm,	Z =    42.330  mm,
	W =   179.638 deg,	P =      .548 deg,	R =  -173.973 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   444.531  mm,	Y =  -705.760  mm,	Z =    56.731  mm,
	W =   179.638 deg,	P =      .548 deg,	R =  -173.973 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    53.499  mm
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   451.776  mm,	Y =  -715.579  mm,	Z =    46.021  mm,
	W =   179.638 deg,	P =      .550 deg,	R =  -173.972 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   441.545  mm,	Y =  -756.254  mm,	Z =    69.535  mm,
	W =   179.639 deg,	P =      .554 deg,	R =  -174.756 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    53.495  mm
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   424.390  mm,	Y =  -799.164  mm,	Z =    45.460  mm,
	W =   179.639 deg,	P =      .554 deg,	R =  -176.525 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   418.543  mm,	Y =  -780.553  mm,	Z =   172.509  mm,
	W =   179.639 deg,	P =      .555 deg,	R =  -173.860 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.494  mm
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   577.007  mm,	Y =  -728.898  mm,	Z =   172.509  mm,
	W =   179.639 deg,	P =      .555 deg,	R =  -168.393 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.494  mm
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   827.347  mm,	Y =  -776.166  mm,	Z =   143.709  mm,
	W =   179.639 deg,	P =      .555 deg,	R =  -160.029 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.494  mm
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1291.055  mm,	Y =  -615.193  mm,	Z =   114.910  mm,
	W =   179.639 deg,	P =      .555 deg,	R =  -149.697 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.494  mm
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1435.861  mm,	Y =  -641.901  mm,	Z =   114.910  mm,
	W =   179.639 deg,	P =      .555 deg,	R =  -140.540 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.494  mm
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1652.926  mm,	Y =  -474.883  mm,	Z =   114.910  mm,
	W =   179.639 deg,	P =      .555 deg,	R =  -128.240 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.494  mm
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.617  mm,	Y =  -306.733  mm,	Z =   114.830  mm,
	W =   179.642 deg,	P =      .556 deg,	R =  -117.832 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1636.254  mm,	Y =   -21.582  mm,	Z =   114.829  mm,
	W =   179.642 deg,	P =      .556 deg,	R =  -107.309 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1535.523  mm,	Y =   222.247  mm,	Z =   114.831  mm,
	W =   179.642 deg,	P =      .556 deg,	R =   -95.955 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1274.891  mm,	Y =   355.261  mm,	Z =   114.830  mm,
	W =   179.642 deg,	P =      .556 deg,	R =   -88.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.509  mm,	Y =   341.149  mm,	Z =   114.830  mm,
	W =   179.642 deg,	P =      .556 deg,	R =   -88.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.554  mm,	Y =   344.583  mm,	Z =    40.494  mm,
	W =   179.644 deg,	P =      .555 deg,	R =   -88.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.508  mm,	Y =   341.149  mm,	Z =    87.182  mm,
	W =   179.642 deg,	P =      .556 deg,	R =   -88.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    97.992  mm
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1142.508  mm,	Y =   364.189  mm,	Z =   114.830  mm,
	W =   179.642 deg,	P =      .556 deg,	R =   -88.799 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1115.856  mm,	Y =   195.282  mm,	Z =   114.790  mm,
	W =   179.644 deg,	P =      .555 deg,	R =   -92.215 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   183.493  mm
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1121.380  mm,	Y =   207.648  mm,	Z =    45.058  mm,
	W =   179.646 deg,	P =      .555 deg,	R =   -92.215 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1126.804  mm,	Y =    89.662  mm,	Z =    84.585  mm,
	W =   179.654 deg,	P =      .336 deg,	R =   -94.893 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    81.000  mm
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1058.729  mm,	Y =  -188.329  mm,	Z =    39.884  mm,
	W =   179.656 deg,	P =      .336 deg,	R =  -106.155 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     8.000  mm
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1093.133  mm,	Y =  -184.834  mm,	Z =    86.335  mm,
	W =   179.656 deg,	P =      .336 deg,	R =  -106.155 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    80.998  mm
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1075.114  mm,	Y =  -343.208  mm,	Z =    56.958  mm,
	W =   179.656 deg,	P =      .336 deg,	R =  -113.726 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    58.000  mm
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.286  mm,	Y =  -458.381  mm,	Z =    56.958  mm,
	W =   179.656 deg,	P =      .336 deg,	R =  -119.986 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    58.000  mm
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1011.290  mm,	Y =  -516.107  mm,	Z =    40.629  mm,
	W =   179.658 deg,	P =      .337 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    14.250  mm
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1009.736  mm,	Y =  -469.623  mm,	Z =    55.483  mm,
	W =   179.658 deg,	P =      .337 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.001  mm
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1009.736  mm,	Y =  -469.623  mm,	Z =    55.483  mm,
	W =   179.658 deg,	P =      .337 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.001  mm
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1117.259  mm,	Y =  -469.624  mm,	Z =    43.962  mm,
	W =   179.658 deg,	P =      .337 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.001  mm
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1119.329  mm,	Y =  -473.948  mm,	Z =    40.182  mm,
	W =   179.660 deg,	P =      .338 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1122.211  mm,	Y =  -443.228  mm,	Z =    68.981  mm,
	W =   179.660 deg,	P =      .338 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    47.086  mm
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1148.768  mm,	Y =  -421.351  mm,	Z =    39.853  mm,
	W =   179.661 deg,	P =      .338 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1093.412  mm,	Y =  -428.828  mm,	Z =    94.901  mm,
	W =   179.660 deg,	P =      .338 deg,	R =  -119.985 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1205.024  mm,	Y =  -340.391  mm,	Z =   107.173  mm,
	W =   179.665 deg,	P =      .333 deg,	R =  -116.248 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1486.544  mm,	Y =  -155.056  mm,	Z =    94.902  mm,
	W =   179.660 deg,	P =      .338 deg,	R =  -107.014 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1669.699  mm,	Y =   -78.767  mm,	Z =    94.902  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -97.427 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1697.261  mm,	Y =    67.633  mm,	Z =    94.901  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -84.559 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1486.311  mm,	Y =   140.784  mm,	Z =    94.901  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -80.049 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1195.621  mm,	Y =   208.592  mm,	Z =    80.501  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -74.719 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1041.699  mm,	Y =   239.138  mm,	Z =    80.501  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -72.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   134.586  mm
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1032.016  mm,	Y =   239.132  mm,	Z =    42.113  mm,
	W =   179.663 deg,	P =      .336 deg,	R =   -72.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1068.311  mm,	Y =   249.798  mm,	Z =    40.387  mm,
	W =   179.663 deg,	P =      .336 deg,	R =   -72.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1093.543  mm,	Y =   239.138  mm,	Z =   185.141  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -72.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   204.586  mm
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   980.263  mm,	Y =   210.339  mm,	Z =   185.141  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -72.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   204.586  mm
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   928.423  mm,	Y =   193.059  mm,	Z =   185.141  mm,
	W =   179.660 deg,	P =      .338 deg,	R =   -72.259 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   204.586  mm
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   928.467  mm,	Y =   193.051  mm,	Z =    61.258  mm,
	W =   179.661 deg,	P =      .337 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    57.085  mm
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   963.365  mm,	Y =   181.233  mm,	Z =    42.677  mm,
	W =   179.663 deg,	P =      .336 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   953.040  mm,	Y =   214.057  mm,	Z =    42.925  mm,
	W =   179.665 deg,	P =      .335 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   904.941  mm,	Y =   201.672  mm,	Z =    41.773  mm,
	W =   179.665 deg,	P =      .335 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   853.146  mm,	Y =   120.445  mm,	Z =    82.345  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.089  mm
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   819.500  mm,	Y =    57.652  mm,	Z =    39.682  mm,
	W =   179.668 deg,	P =      .333 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   853.146  mm,	Y =   120.444  mm,	Z =   108.265  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   163.256  mm
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   897.306  mm,	Y =    30.204  mm,	Z =   108.266  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   163.256  mm
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1008.670  mm,	Y =   -12.997  mm,	Z =   125.546  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1030.036  mm,	Y =   -27.400  mm,	Z =    40.302  mm,
	W =   179.668 deg,	P =      .333 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1014.865  mm,	Y =   -17.449  mm,	Z =    98.881  mm,
	W =   179.669 deg,	P =      .333 deg,	R =   -72.257 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.345  mm
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1008.670  mm,	Y =   -12.997  mm,	Z =   125.546  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1014.865  mm,	Y =   -17.449  mm,	Z =    98.881  mm,
	W =   179.669 deg,	P =      .333 deg,	R =   -72.257 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   145.345  mm
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1008.671  mm,	Y =   -62.917  mm,	Z =   125.546  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1048.991  mm,	Y =  -173.318  mm,	Z =   125.547  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1090.538  mm,	Y =  -221.127  mm,	Z =    38.392  mm,
	W =   179.669 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.951  mm,	Y =  -192.294  mm,	Z =    90.991  mm,
	W =   179.667 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   131.479  mm
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1014.431  mm,	Y =  -173.317  mm,	Z =   163.947  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[159]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1031.951  mm,	Y =  -192.294  mm,	Z =    90.991  mm,
	W =   179.667 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   131.479  mm
};
P[160]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1124.833  mm,	Y =  -173.318  mm,	Z =   163.947  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[161]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1255.395  mm,	Y =  -173.319  mm,	Z =   163.948  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[162]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1259.206  mm,	Y =  -126.394  mm,	Z =    36.272  mm,
	W =   179.669 deg,	P =      .333 deg,	R =   -72.257 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[163]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1255.395  mm,	Y =  -173.319  mm,	Z =   163.948  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[164]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.160  mm,	Y =  -173.320  mm,	Z =   100.589  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[165]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.160  mm,	Y =  -173.320  mm,	Z =   189.869  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -72.258 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[166]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1522.734  mm,	Y =  -128.099  mm,	Z =   371.308  mm,
	W =   179.666 deg,	P =      .334 deg,	R =   -84.652 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   207.500  mm
};
P[167]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1431.039  mm,	Y =  -397.719  mm,	Z =   530.060  mm,
	W =   175.763 deg,	P =      .441 deg,	R =   -96.401 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   208.262  mm
};
P[168]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1150.345  mm,	Y =   -91.878  mm,	Z =  1475.838  mm,
	W =   164.696 deg,	P =   -18.841 deg,	R =  -154.422 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   211.935  mm
};
/END
