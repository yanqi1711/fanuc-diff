/PROG  ED44_OP160_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "44_OP160_WELD";
PROG_SIZE	= 17642;
CREATE		= DATE 26-03-16  TIME 22:06:06;
MODIFIED	= DATE 26-09-13  TIME 15:44:34;
FILE_NAME	= ED44_54_;
VERSION		= 0;
LINE_COUNT	= 214;
MEMORY_SIZE	= 17958;
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
   3:  PAYLOAD[2] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:  CALL SEGMENT(5) ;
   8:J P[1] 100% CNT100    ;
   9:J P[7] 100% CNT100    ;
  10:J P[6] 100% CNT100    ;
  11:J P[5] 100% CNT80    ;
  12:J P[4] 100% CNT70    ;
  13:J P[8] 100% CNT50    ;
  14:J P[3] 100% CNT50    ;
  15:  !001 ;
  16:L P[2] 2000mm/sec CNT50
    :  SPOT[SD=2,P=4,t=1.9,S=1,ED=2]    ;
  17:J P[9] 100% CNT50    ;
  18:J P[11] 100% CNT50    ;
  19:J P[10] 100% CNT70    ;
  20:J P[12] 100% CNT100    ;
  21:J P[13] 100% CNT100    ;
  22:J P[14] 100% CNT100    ;
  23:J P[19] 100% CNT100    ;
  24:J P[18] 100% CNT70    ;
  25:J P[17] 100% CNT50    ;
  26:  !002 ;
  27:L P[16] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=2,ED=11]    ;
  28:J P[15] 100% CNT100    ;
  29:J P[22] 100% CNT100    ;
  30:J P[21] 100% CNT100    ;
  31:  !003 ;
  32:L P[20] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=3,ED=3]    ;
  33:J P[23] 100% CNT100    ;
  34:  !004 ;
  35:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=4,ED=11]    ;
  36:J P[25] 100% CNT100    ;
  37:J P[26] 100% CNT100    ;
  38:J P[27] 100% CNT100    ;
  39:J P[28] 100% CNT100    ;
  40:J P[29] 100% CNT80    ;
  41:J P[34] 100% CNT100    ;
  42:J P[33] 100% CNT100    ;
  43:J P[32] 100% CNT100    ;
  44:J P[31] 100% CNT50    ;
  45:  !005 ;
  46:L P[30] 2000mm/sec CNT50
    :  SPOT[SD=12,P=4,t=1.9,S=5,ED=12]    ;
  47:J P[35] 100% CNT100    ;
  48:J P[36] 100% CNT100    ;
  49:  !006 ;
  50:L P[37] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=6,ED=10]    ;
  51:J P[38] 100% CNT100    ;
  52:J P[39] 100% CNT100    ;
  53:  !007 ;
  54:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=7,ED=12]    ;
  55:J P[41] 100% CNT100    ;
  56:J P[42] 100% CNT100    ;
  57:  !008 ;
  58:L P[43] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=8,ED=10]    ;
  59:J P[44] 100% CNT100    ;
  60:  !009 ;
  61:L P[45] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=9,ED=10]    ;
  62:J P[46] 100% CNT100    ;
  63:J P[47] 100% CNT100    ;
  64:J P[48] 100% CNT100    ;
  65:J P[49] 100% CNT100    ;
  66:J P[50] 100% CNT100    ;
  67:J P[54] 100% CNT100    ;
  68:J P[53] 100% CNT100    ;
  69:J P[52] 100% CNT100    ;
  70:  !010 ;
  71:L P[51] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=10,ED=10]    ;
  72:J P[55] 100% CNT100    ;
  73:J P[56] 100% CNT100    ;
  74:  !011 ;
  75:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=11,ED=12]    ;
  76:J P[58] 100% CNT100    ;
  77:J P[59] 100% CNT100    ;
  78:  !012 ;
  79:L P[60] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=12,ED=10]    ;
  80:J P[61] 100% CNT100    ;
  81:J P[62] 100% CNT50    ;
  82:  !013 ;
  83:L P[63] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=13,ED=12]    ;
  84:J P[64] 100% CNT100    ;
  85:J P[65] 100% CNT70    ;
  86:  !014 ;
  87:L P[66] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.2,S=14,ED=12]    ;
  88:J P[67] 100% CNT100    ;
  89:J P[69] 100% CNT70    ;
  90:  !015 ;
  91:L P[68] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.2,S=15,ED=12]    ;
  92:J P[70] 100% CNT100    ;
  93:J P[72] 100% CNT70    ;
  94:  !016 ;
  95:L P[71] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=16,ED=12]    ;
  96:J P[73] 100% CNT100    ;
  97:J P[74] 100% CNT100    ;
  98:  !017 ;
  99:L P[75] 2000mm/sec CNT50
    :  SPOT[SD=12,P=4,t=1.9,S=17,ED=13]    ;
 100:  !018 ;
 101:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.2,S=18,ED=13]    ;
 102:  !019 ;
 103:L P[77] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.2,S=19,ED=13]    ;
 104:  !020 ;
 105:L P[78] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=20,ED=12]    ;
 106:J P[79] 100% CNT100    ;
 107:J P[81] 100% CNT80    ;
 108:  !21 ;
 109:L P[80] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=21,ED=12]    ;
 110:J P[82] 100% CNT100    ;
 111:J P[85] 100% CNT100    ;
 112:J P[83] 100% CNT80    ;
 113:  !022 ;
 114:L P[84] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=22,ED=12]    ;
 115:J P[86] 100% CNT100    ;
 116:J P[89] 100% CNT100    ;
 117:J P[88] 100% CNT80    ;
 118:  !023 ;
 119:L P[87] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=23,ED=13]    ;
 120:J P[90] 100% CNT100    ;
 121:J P[91] 100% CNT100    ;
 122:  !024 ;
 123:L P[92] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=24,ED=13]    ;
 124:  !025 ;
 125:L P[93] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=25,ED=12]    ;
 126:J P[94] 100% CNT100    ;
 127:J P[95] 100% CNT100    ;
 128:J P[96] 100% CNT100    ;
 129:  !026 ;
 130:L P[97] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=26,ED=13]    ;
 131:  !027 ;
 132:L P[98] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=27,ED=13]    ;
 133:  !028 ;
 134:L P[99] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=28,ED=13]    ;
 135:  !029 ;
 136:L P[100] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=29,ED=13]    ;
 137:  !030 ;
 138:L P[101] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=30,ED=13]    ;
 139:  !031 ;
 140:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=31,ED=13]    ;
 141:J P[103] 100% CNT100    ;
 142:J P[104] 100% CNT100    ;
 143:  !032 ;
 144:L P[105] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.4,S=32,ED=13]    ;
 145:J P[106] 100% CNT100    ;
 146:J P[107] 100% CNT100    ;
 147:  !033 ;
 148:L P[108] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.3,S=33,ED=13]    ;
 149:  !034 ;
 150:L P[109] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.4,S=34,ED=13]    ;
 151:  !035 ;
 152:L P[110] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.3,S=35,ED=13]    ;
 153:J P[111] 100% CNT100    ;
 154:J P[114] 100% CNT100    ;
 155:J P[113] 100% CNT100    ;
 156:  !036 ;
 157:L P[112] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.4,S=36,ED=13]    ;
 158:J P[115] 100% CNT100    ;
 159:J P[116] 100% CNT100    ;
 160:  !037 ;
 161:L P[117] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=37,ED=13]    ;
 162:  !038 ;
 163:L P[118] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=38,ED=13]    ;
 164:  !039 ;
 165:L P[119] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=39,ED=13]    ;
 166:  !040 ;
 167:L P[120] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=40,ED=13]    ;
 168:  !041 ;
 169:L P[121] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=41,ED=13]    ;
 170:  !042 ;
 171:L P[122] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=42,ED=13]    ;
 172:J P[123] 100% CNT100    ;
 173:J P[124] 100% CNT100    ;
 174:J P[128] 100% CNT100    ;
 175:J P[125] 100% CNT100    ;
 176:J P[126] 100% CNT100    ;
 177:  !043 ;
 178:L P[127] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=43,ED=13]    ;
 179:  !044 ;
 180:L P[129] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=44,ED=12]    ;
 181:J P[130] 100% CNT100    ;
 182:J P[131] 100% CNT60    ;
 183:  !045 ;
 184:L P[132] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.3,S=45,ED=13]    ;
 185:  !046 ;
 186:L P[133] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=46,ED=13]    ;
 187:  !047 ;
 188:L P[134] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=47,ED=12]    ;
 189:J P[135] 100% CNT100    ;
 190:J P[137] 100% CNT60    ;
 191:  !048 ;
 192:L P[136] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.1,S=48,ED=13]    ;
 193:  !049 ;
 194:L P[138] 2000mm/sec CNT50
    :  SPOT[SD=13,P=4,t=1.9,S=49,ED=13]    ;
 195:  !050 ;
 196:L P[139] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=50,ED=12]    ;
 197:J P[140] 100% CNT100    ;
 198:J P[141] 100% CNT100    ;
 199:J P[142] 100% CNT100    ;
 200:J P[143] 100% CNT100    ;
 201:J P[144] 100% CNT100    ;
 202:J P[145] 100% CNT100    ;
 203:J P[149] 100% CNT100    ;
 204:J P[147] 100% CNT100    ;
 205:  !051 ;
 206:L P[146] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.5,S=51,ED=12]    ;
 207:J P[148] 100% CNT100    ;
 208:J P[150] 100% CNT100    ;
 209:J P[151] 100% CNT100    ;
 210:J P[152] 100% CNT100    ;
 211:J P[153] 100% CNT100    ;
 212:J P[154] 100% CNT10    ;
 213:  CALL FINISHSEG(5) ;
 214:   ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =  1809.868  mm,	Y =  -842.315  mm,	Z =  2558.038  mm,
	W =   111.028 deg,	P =    20.294 deg,	R =   -82.405 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   199.017  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1093.860  mm,	Y =   455.567  mm,	Z =    64.231  mm,
	W =  -179.405 deg,	P =     -.315 deg,	R =   -72.920 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.000  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.403  mm,	Y =   451.820  mm,	Z =    80.812  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   112.929  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.513  mm,	Y =   440.875  mm,	Z =    94.984  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1377.839  mm,	Y =   218.469  mm,	Z =   112.068  mm,
	W =  -177.856 deg,	P =     5.834 deg,	R =   -77.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1377.840  mm,	Y =   218.469  mm,	Z =   753.347  mm,
	W =  -177.856 deg,	P =     5.834 deg,	R =   -77.123 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[7]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1208.267  mm,	Y =  -246.819  mm,	Z =  1310.771  mm,
	W =   165.027 deg,	P =     3.237 deg,	R =   -81.537 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.558  mm
};
P[8]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1123.814  mm,	Y =   449.803  mm,	Z =    99.914  mm,
	W =  -177.963 deg,	P =     1.277 deg,	R =   -72.881 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.404  mm,	Y =   451.820  mm,	Z =    80.813  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   112.929  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.513  mm,	Y =   440.875  mm,	Z =    94.984  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1123.814  mm,	Y =   449.803  mm,	Z =    99.914  mm,
	W =  -177.963 deg,	P =     1.277 deg,	R =   -72.881 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[12]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1437.957  mm,	Y =    85.364  mm,	Z =    94.984  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -87.406 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[13]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1603.966  mm,	Y =  -147.632  mm,	Z =    94.984  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =  -102.781 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[14]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1568.795  mm,	Y =  -247.033  mm,	Z =    94.984  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =  -115.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.929  mm
};
P[15]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1099.870  mm,	Y =  -287.894  mm,	Z =   158.206  mm,
	W =  -175.457 deg,	P =     3.044 deg,	R =  -115.569 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   150.000  mm
};
P[16]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1110.006  mm,	Y =  -287.874  mm,	Z =    28.491  mm,
	W =   178.884 deg,	P =      .325 deg,	R =  -115.736 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.379  mm
};
P[17]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1099.870  mm,	Y =  -287.894  mm,	Z =   158.206  mm,
	W =  -175.457 deg,	P =     3.044 deg,	R =  -115.569 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   210.000  mm
};
P[18]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1155.452  mm,	Y =  -287.893  mm,	Z =   165.407  mm,
	W =  -175.457 deg,	P =     3.044 deg,	R =  -115.569 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   210.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1232.848  mm,	Y =  -296.331  mm,	Z =   196.512  mm,
	W =  -175.457 deg,	P =     3.044 deg,	R =  -115.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   210.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.212  mm,	Y =  -171.562  mm,	Z =    87.401  mm,
	W =  -178.649 deg,	P =     1.512 deg,	R =  -115.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.497  mm
};
P[21]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.250  mm,	Y =  -171.580  mm,	Z =    91.691  mm,
	W =  -178.648 deg,	P =     1.512 deg,	R =  -115.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   138.995  mm
};
P[22]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1169.259  mm,	Y =  -220.826  mm,	Z =    89.099  mm,
	W =  -178.648 deg,	P =     1.512 deg,	R =  -115.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   138.995  mm
};
P[23]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.212  mm,	Y =  -171.562  mm,	Z =    91.841  mm,
	W =  -178.649 deg,	P =     1.512 deg,	R =  -115.696 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.700  mm
};
P[24]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1172.956  mm,	Y =   -92.299  mm,	Z =    86.943  mm,
	W =  -178.649 deg,	P =     1.512 deg,	R =  -112.375 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.700  mm
};
P[25]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1176.316  mm,	Y =   -92.300  mm,	Z =   145.138  mm,
	W =  -176.296 deg,	P =     2.478 deg,	R =  -112.293 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   111.533  mm
};
P[26]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1239.674  mm,	Y =  -106.699  mm,	Z =   156.658  mm,
	W =  -176.296 deg,	P =     2.478 deg,	R =  -112.293 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   171.533  mm
};
P[27]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1399.073  mm,	Y =  -106.724  mm,	Z =   156.618  mm,
	W =  -176.294 deg,	P =     2.478 deg,	R =  -112.293 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   171.531  mm
};
P[28]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1360.881  mm,	Y =  -446.700  mm,	Z =   198.915  mm,
	W =  -177.067 deg,	P =     3.357 deg,	R =  -135.650 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   171.531  mm
};
P[29]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1068.590  mm,	Y =  -846.488  mm,	Z =   198.914  mm,
	W =  -177.067 deg,	P =     3.357 deg,	R =  -163.120 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   171.531  mm
};
P[30]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   183.748  mm,	Y = -1005.013  mm,	Z =    99.437  mm,
	W =  -177.193 deg,	P =     1.547 deg,	R =  -177.690 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.591  mm
};
P[31]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   183.748  mm,	Y = -1005.013  mm,	Z =   117.294  mm,
	W =  -177.193 deg,	P =     1.547 deg,	R =  -177.690 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   115.091  mm
};
P[32]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   323.574  mm,	Y = -1006.785  mm,	Z =    15.786  mm,
	W =   177.023 deg,	P =     1.877 deg,	R =  -176.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   108.091  mm
};
P[33]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   529.773  mm,	Y = -1006.829  mm,	Z =    12.685  mm,
	W =   176.847 deg,	P =     1.887 deg,	R =  -176.823 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   135.591  mm
};
P[34]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   733.285  mm,	Y = -1008.628  mm,	Z =    61.528  mm,
	W =   178.057 deg,	P =     1.819 deg,	R =  -176.784 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   123.091  mm
};
P[35]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   183.748  mm,	Y = -1005.013  mm,	Z =   117.294  mm,
	W =  -177.193 deg,	P =     1.547 deg,	R =  -177.690 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   115.091  mm
};
P[36]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   396.435  mm,	Y = -1006.785  mm,	Z =    15.786  mm,
	W =   177.023 deg,	P =     1.877 deg,	R =  -176.817 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   120.591  mm
};
P[37]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   383.158  mm,	Y =  -990.342  mm,	Z =    63.594  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -176.721 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    35.425  mm
};
P[38]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   435.053  mm,	Y =  -955.078  mm,	Z =    73.595  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -173.907 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[39]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.214  mm,	Y =  -855.200  mm,	Z =    73.594  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -168.295 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.700  mm
};
P[40]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   539.238  mm,	Y =  -850.396  mm,	Z =    65.411  mm,
	W =  -179.719 deg,	P =      .969 deg,	R =  -166.819 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.950  mm
};
P[41]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   532.815  mm,	Y =  -822.864  mm,	Z =    89.353  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -166.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.450  mm
};
P[42]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   739.591  mm,	Y =  -842.447  mm,	Z =    89.353  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -166.866 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   127.450  mm
};
P[43]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   704.746  mm,	Y =  -824.303  mm,	Z =    66.891  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -166.865 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.450  mm
};
P[44]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   792.781  mm,	Y =  -725.794  mm,	Z =    77.430  mm,
	W =  -179.653 deg,	P =     1.113 deg,	R =  -160.591 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[45]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   841.623  mm,	Y =  -618.706  mm,	Z =    67.885  mm,
	W =  -179.641 deg,	P =     1.128 deg,	R =  -155.294 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.780  mm
};
P[46]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   847.384  mm,	Y =  -626.194  mm,	Z =    89.405  mm,
	W =  -179.641 deg,	P =     1.128 deg,	R =  -155.294 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    58.867  mm
};
P[47]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   995.410  mm,	Y =  -683.219  mm,	Z =    89.406  mm,
	W =  -179.641 deg,	P =     1.128 deg,	R =  -155.294 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    63.867  mm
};
P[48]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1135.789  mm,	Y =  -786.650  mm,	Z =    89.406  mm,
	W =  -179.641 deg,	P =     1.128 deg,	R =  -160.363 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    63.867  mm
};
P[49]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1099.030  mm,	Y =  -865.978  mm,	Z =    89.365  mm,
	W =  -179.639 deg,	P =     1.129 deg,	R =  -170.874 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    63.864  mm
};
P[50]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1060.272  mm,	Y =  -855.225  mm,	Z =    89.365  mm,
	W =  -179.639 deg,	P =     1.129 deg,	R =   176.192 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   195.530  mm
};
P[51]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -25.450  mm,	Y =  -909.375  mm,	Z =    75.316  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.028  mm
};
P[52]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -25.451  mm,	Y =  -909.374  mm,	Z =   106.996  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   162.028  mm
};
P[53]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   199.191  mm,	Y =  -909.374  mm,	Z =   106.996  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   162.028  mm
};
P[54]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   467.994  mm,	Y =  -909.374  mm,	Z =   106.996  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   162.028  mm
};
P[55]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -25.450  mm,	Y =  -909.375  mm,	Z =    85.316  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[56]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    26.098  mm,	Y =  -774.595  mm,	Z =    85.316  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    57.450  mm
};
P[57]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    27.824  mm,	Y =  -769.987  mm,	Z =    71.206  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.450  mm
};
P[58]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    27.824  mm,	Y =  -769.987  mm,	Z =   101.206  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[59]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -141.139  mm,	Y =  -697.026  mm,	Z =   101.206  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.672 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[60]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -98.230  mm,	Y =  -711.762  mm,	Z =    71.532  mm,
	W =  -178.090 deg,	P =      .316 deg,	R =   158.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.450  mm
};
P[61]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -98.230  mm,	Y =  -711.762  mm,	Z =    81.531  mm,
	W =  -178.090 deg,	P =      .316 deg,	R =   158.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    42.200  mm
};
P[62]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -48.864  mm,	Y =  -594.065  mm,	Z =    81.533  mm,
	W =  -178.090 deg,	P =      .316 deg,	R =   163.457 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    42.200  mm
};
P[63]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -39.936  mm,	Y =  -581.682  mm,	Z =    66.269  mm,
	W =  -178.090 deg,	P =      .316 deg,	R =   163.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.450  mm
};
P[64]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   -39.936  mm,	Y =  -581.681  mm,	Z =    96.269  mm,
	W =  -178.090 deg,	P =      .316 deg,	R =   163.456 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   188.867  mm
};
P[65]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -75.695  mm,	Y =  -465.620  mm,	Z =    64.750  mm,
	W =  -178.311 deg,	P =     1.683 deg,	R =   178.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[66]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -75.695  mm,	Y =  -465.620  mm,	Z =    34.750  mm,
	W =  -178.311 deg,	P =     1.683 deg,	R =   178.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.697  mm
};
P[67]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -75.695  mm,	Y =  -465.620  mm,	Z =    64.750  mm,
	W =  -178.311 deg,	P =     1.683 deg,	R =   178.475 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[68]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    48.881  mm,	Y =  -471.590  mm,	Z =    40.536  mm,
	W =  -178.300 deg,	P =     1.749 deg,	R =   177.818 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    56.367  mm
};
P[69]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    48.881  mm,	Y =  -471.590  mm,	Z =    70.536  mm,
	W =  -178.300 deg,	P =     1.749 deg,	R =   177.818 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[70]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    48.881  mm,	Y =  -471.590  mm,	Z =    70.536  mm,
	W =  -178.300 deg,	P =     1.749 deg,	R =   177.818 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[71]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.656  mm,	Y =  -484.426  mm,	Z =    44.829  mm,
	W =  -178.307 deg,	P =     1.725 deg,	R =   174.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    32.199  mm
};
P[72]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.656  mm,	Y =  -484.426  mm,	Z =    74.830  mm,
	W =  -178.307 deg,	P =     1.725 deg,	R =   174.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[73]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   140.656  mm,	Y =  -484.426  mm,	Z =    74.829  mm,
	W =  -178.307 deg,	P =     1.725 deg,	R =   174.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[74]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   103.241  mm,	Y =  -376.919  mm,	Z =    74.776  mm,
	W =  -178.307 deg,	P =     1.727 deg,	R =   174.663 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[75]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   100.386  mm,	Y =  -381.835  mm,	Z =    25.789  mm,
	W =   177.333 deg,	P =     1.317 deg,	R =   174.547 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.949  mm
};
P[76]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    62.901  mm,	Y =  -259.135  mm,	Z =    36.142  mm,
	W =   177.355 deg,	P =      .637 deg,	R =   178.237 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.032  mm
};
P[77]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    80.250  mm,	Y =  -191.620  mm,	Z =    39.321  mm,
	W =   177.334 deg,	P =     1.318 deg,	R =  -177.286 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.450  mm
};
P[78]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   194.870  mm,	Y =  -233.101  mm,	Z =    35.362  mm,
	W =   177.335 deg,	P =     1.319 deg,	R =  -177.286 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.951  mm
};
P[79]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   194.872  mm,	Y =  -379.404  mm,	Z =    34.178  mm,
	W =   174.447 deg,	P =     1.454 deg,	R =  -177.356 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[80]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   352.688  mm,	Y =  -516.491  mm,	Z =  -188.328  mm,
	W =   158.157 deg,	P =      .338 deg,	R =  -177.872 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.791  mm
};
P[81]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   348.039  mm,	Y =  -542.764  mm,	Z =  -158.657  mm,
	W =   158.150 deg,	P =      .313 deg,	R =  -177.870 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[82]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   348.039  mm,	Y =  -542.764  mm,	Z =  -158.657  mm,
	W =   158.150 deg,	P =      .313 deg,	R =  -177.870 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   159.500  mm
};
P[83]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.722  mm,	Y =  -452.614  mm,	Z =    39.816  mm,
	W =   177.325 deg,	P =      .734 deg,	R =  -177.932 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[84]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.722  mm,	Y =  -452.614  mm,	Z =     9.816  mm,
	W =   177.325 deg,	P =      .734 deg,	R =  -177.932 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    62.499  mm
};
P[85]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   360.362  mm,	Y =  -490.892  mm,	Z =   -27.479  mm,
	W =   168.168 deg,	P =     1.910 deg,	R =  -178.746 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   155.565  mm
};
P[86]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   352.731  mm,	Y =  -452.618  mm,	Z =    39.785  mm,
	W =   177.326 deg,	P =      .735 deg,	R =  -177.932 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.202  mm
};
P[87]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   344.926  mm,	Y =  -336.883  mm,	Z =   157.370  mm,
	W =  -163.441 deg,	P =     -.108 deg,	R =  -177.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.199  mm
};
P[88]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   337.821  mm,	Y =  -313.076  mm,	Z =   186.773  mm,
	W =  -163.441 deg,	P =     -.108 deg,	R =  -177.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[89]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   343.796  mm,	Y =  -352.113  mm,	Z =   158.445  mm,
	W =  -168.499 deg,	P =     1.055 deg,	R =  -178.164 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[90]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   337.870  mm,	Y =  -301.653  mm,	Z =   161.073  mm,
	W =  -168.014 deg,	P =      .069 deg,	R =  -177.803 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.031  mm
};
P[91]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   331.212  mm,	Y =  -216.659  mm,	Z =   116.934  mm,
	W =  -176.930 deg,	P =     1.220 deg,	R =  -177.968 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    89.031  mm
};
P[92]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   338.961  mm,	Y =  -215.203  mm,	Z =    37.683  mm,
	W =   175.992 deg,	P =     1.812 deg,	R =  -176.549 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.364  mm
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   344.239  mm,	Y =  -126.539  mm,	Z =    42.996  mm,
	W =   175.992 deg,	P =     1.812 deg,	R =  -173.658 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    28.950  mm
};
P[94]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   339.343  mm,	Y =  -126.540  mm,	Z =    72.997  mm,
	W =   175.992 deg,	P =     1.812 deg,	R =  -173.658 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[95]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   404.695  mm,	Y =  -565.410  mm,	Z =    72.944  mm,
	W =   175.993 deg,	P =     1.813 deg,	R =   175.740 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   179.698  mm
};
P[96]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   239.722  mm,	Y =  -891.924  mm,	Z =    72.945  mm,
	W =   175.993 deg,	P =     1.813 deg,	R =   160.621 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   179.698  mm
};
P[97]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   185.793  mm,	Y =  -897.653  mm,	Z =    44.797  mm,
	W =   178.361 deg,	P =     1.895 deg,	R =   160.637 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    33.028  mm
};
P[98]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   197.613  mm,	Y =  -872.311  mm,	Z =    42.714  mm,
	W =   178.220 deg,	P =     2.297 deg,	R =   160.706 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.195  mm
};
P[99]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   205.737  mm,	Y =  -843.517  mm,	Z =    39.909  mm,
	W =   178.243 deg,	P =     2.233 deg,	R =   160.706 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.200  mm
};
P[100]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   214.527  mm,	Y =  -820.478  mm,	Z =    40.406  mm,
	W =   178.179 deg,	P =     2.415 deg,	R =   160.703 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    12.450  mm
};
P[101]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   259.382  mm,	Y =  -776.618  mm,	Z =    47.949  mm,
	W =   178.204 deg,	P =     2.314 deg,	R =   163.058 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    21.700  mm
};
P[102]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   269.474  mm,	Y =  -739.775  mm,	Z =    43.175  mm,
	W =   178.209 deg,	P =     2.298 deg,	R =   163.058 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.197  mm
};
P[103]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   282.219  mm,	Y =  -722.867  mm,	Z =    24.948  mm,
	W =   175.201 deg,	P =     1.673 deg,	R =   162.946 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    54.700  mm
};
P[104]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   291.435  mm,	Y =  -671.233  mm,	Z =   -97.197  mm,
	W =   165.930 deg,	P =    -1.181 deg,	R =   162.906 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    54.700  mm
};
P[105]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   290.437  mm,	Y =  -655.774  mm,	Z =  -174.238  mm,
	W =   162.047 deg,	P =    -2.848 deg,	R =   163.051 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    31.948  mm
};
P[106]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   303.710  mm,	Y =  -655.476  mm,	Z =  -104.993  mm,
	W =   165.186 deg,	P =    -1.886 deg,	R =   162.921 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    82.699  mm
};
P[107]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   334.237  mm,	Y =  -629.159  mm,	Z =    -1.937  mm,
	W =   174.198 deg,	P =      .895 deg,	R =   162.843 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    70.199  mm
};
P[108]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   336.184  mm,	Y =  -647.172  mm,	Z =    21.281  mm,
	W =   177.826 deg,	P =     2.014 deg,	R =   162.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.951  mm
};
P[109]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   316.728  mm,	Y =  -589.689  mm,	Z =    25.849  mm,
	W =   177.827 deg,	P =     2.015 deg,	R =   162.933 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.448  mm
};
P[110]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   407.146  mm,	Y =  -524.606  mm,	Z =    24.946  mm,
	W =   177.827 deg,	P =     2.017 deg,	R =   167.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.031  mm
};
P[111]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   430.615  mm,	Y =  -452.852  mm,	Z =   119.760  mm,
	W =  -176.300 deg,	P =     3.339 deg,	R =   172.228 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.201  mm
};
P[112]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   435.831  mm,	Y =  -377.923  mm,	Z =   233.639  mm,
	W =  -156.442 deg,	P =     3.744 deg,	R =   173.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.365  mm
};
P[113]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   435.832  mm,	Y =  -377.923  mm,	Z =   253.639  mm,
	W =  -156.442 deg,	P =     3.744 deg,	R =   173.836 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    72.200  mm
};
P[114]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   438.443  mm,	Y =  -414.990  mm,	Z =   223.110  mm,
	W =  -164.938 deg,	P =     4.701 deg,	R =   172.895 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    75.136  mm
};
P[115]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   487.376  mm,	Y =  -335.206  mm,	Z =   188.292  mm,
	W =  -165.827 deg,	P =     2.686 deg,	R =   179.224 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.200  mm
};
P[116]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   520.931  mm,	Y =  -265.678  mm,	Z =   109.175  mm,
	W =  -178.665 deg,	P =     2.446 deg,	R =  -175.144 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    73.448  mm
};
P[117]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.633  mm,	Y =  -263.967  mm,	Z =    70.353  mm,
	W =  -178.685 deg,	P =     2.203 deg,	R =  -175.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.946  mm
};
P[118]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.706  mm,	Y =  -223.009  mm,	Z =    56.981  mm,
	W =  -179.346 deg,	P =      .240 deg,	R =  -175.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    37.958  mm
};
P[119]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   509.955  mm,	Y =  -186.163  mm,	Z =    47.544  mm,
	W =  -179.361 deg,	P =      .057 deg,	R =  -175.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    23.209  mm
};
P[120]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   510.044  mm,	Y =  -159.124  mm,	Z =    44.453  mm,
	W =  -179.366 deg,	P =     -.022 deg,	R =  -175.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.207  mm
};
P[121]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   507.952  mm,	Y =  -134.392  mm,	Z =    47.008  mm,
	W =  -179.379 deg,	P =     -.184 deg,	R =  -175.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.954  mm
};
P[122]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   506.499  mm,	Y =  -111.088  mm,	Z =    46.676  mm,
	W =  -179.721 deg,	P =     -.112 deg,	R =  -175.155 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.202  mm
};
P[123]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   588.401  mm,	Y =  -187.986  mm,	Z =    74.232  mm,
	W =  -179.308 deg,	P =      .634 deg,	R =   179.750 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.200  mm
};
P[124]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   694.152  mm,	Y =  -459.153  mm,	Z =    74.232  mm,
	W =  -179.308 deg,	P =      .634 deg,	R =   161.476 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.200  mm
};
P[125]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   769.850  mm,	Y =  -615.021  mm,	Z =    74.232  mm,
	W =  -179.308 deg,	P =      .634 deg,	R =   137.194 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.200  mm
};
P[126]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   769.898  mm,	Y =  -388.474  mm,	Z =    74.188  mm,
	W =  -179.309 deg,	P =      .635 deg,	R =   137.194 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.198  mm
};
P[127]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   451.064  mm,	Y =  -339.346  mm,	Z =    43.749  mm,
	W =   179.673 deg,	P =     -.307 deg,	R =   137.156 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.698  mm
};
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   798.803  mm,	Y =  -556.935  mm,	Z =    80.208  mm,
	W =  -179.327 deg,	P =      .616 deg,	R =   147.384 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.198  mm
};
P[129]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   407.016  mm,	Y =  -297.022  mm,	Z =    36.509  mm,
	W =  -179.514 deg,	P =    -1.182 deg,	R =   137.144 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    38.950  mm
};
P[130]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   403.284  mm,	Y =  -260.733  mm,	Z =    74.988  mm,
	W =   179.673 deg,	P =     -.306 deg,	R =   137.155 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.700  mm
};
P[131]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   249.880  mm,	Y =  -157.917  mm,	Z =    77.341  mm,
	W =   179.673 deg,	P =     -.306 deg,	R =   137.154 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[132]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   254.453  mm,	Y =  -157.918  mm,	Z =    44.341  mm,
	W =  -179.867 deg,	P =     -.802 deg,	R =   137.149 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    22.200  mm
};
P[133]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   269.079  mm,	Y =  -138.341  mm,	Z =    41.091  mm,
	W =  -179.658 deg,	P =    -1.026 deg,	R =   137.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    13.399  mm
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   298.319  mm,	Y =  -104.942  mm,	Z =    41.785  mm,
	W =  -179.748 deg,	P =     -.909 deg,	R =   137.146 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.134  mm
};
P[135]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   297.657  mm,	Y =  -104.942  mm,	Z =    76.262  mm,
	W =   179.666 deg,	P =     -.278 deg,	R =   137.152 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[136]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   149.242  mm,	Y =   -62.237  mm,	Z =    43.420  mm,
	W =  -178.948 deg,	P =    -1.543 deg,	R =   137.128 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    35.941  mm
};
P[137]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   146.947  mm,	Y =   -60.068  mm,	Z =    79.157  mm,
	W =   179.660 deg,	P =     -.251 deg,	R =   137.151 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[138]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   141.784  mm,	Y =    -4.779  mm,	Z =    42.597  mm,
	W =   179.660 deg,	P =     -.249 deg,	R =   137.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.701  mm
};
P[139]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    88.224  mm,	Y =    -4.794  mm,	Z =    47.160  mm,
	W =   179.660 deg,	P =     -.248 deg,	R =   137.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    29.699  mm
};
P[140]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =    88.224  mm,	Y =    -4.794  mm,	Z =    77.160  mm,
	W =   179.660 deg,	P =     -.248 deg,	R =   137.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[141]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   276.664  mm,	Y =   -53.178  mm,	Z =    77.160  mm,
	W =   179.660 deg,	P =     -.248 deg,	R =   137.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.200  mm
};
P[142]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   406.008  mm,	Y =  -173.527  mm,	Z =    77.160  mm,
	W =   179.660 deg,	P =     -.248 deg,	R =   120.926 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.200  mm
};
P[143]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   601.052  mm,	Y =  -103.115  mm,	Z =    77.161  mm,
	W =   179.660 deg,	P =     -.248 deg,	R =   111.649 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.200  mm
};
P[144]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   611.079  mm,	Y =   -43.865  mm,	Z =    77.161  mm,
	W =   179.660 deg,	P =     -.248 deg,	R =    96.377 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.200  mm
};
P[145]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   618.810  mm,	Y =    68.227  mm,	Z =    77.120  mm,
	W =   179.659 deg,	P =     -.247 deg,	R =    76.150 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   172.201  mm
};
P[146]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   275.056  mm,	Y =   301.457  mm,	Z =    49.660  mm,
	W =   179.657 deg,	P =     -.246 deg,	R =    67.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.449  mm
};
P[147]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   257.777  mm,	Y =   307.217  mm,	Z =   103.853  mm,
	W =   179.657 deg,	P =     -.246 deg,	R =    67.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[148]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   257.777  mm,	Y =   307.217  mm,	Z =   103.853  mm,
	W =   179.657 deg,	P =     -.246 deg,	R =    67.942 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   152.200  mm
};
P[149]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   417.080  mm,	Y =   202.026  mm,	Z =   120.813  mm,
	W =   179.659 deg,	P =     -.246 deg,	R =    71.680 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.312  mm
};
P[150]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   417.080  mm,	Y =   202.026  mm,	Z =   120.813  mm,
	W =   179.659 deg,	P =     -.246 deg,	R =    71.680 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.312  mm
};
P[151]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   561.081  mm,	Y =   202.026  mm,	Z =   120.812  mm,
	W =   179.659 deg,	P =     -.246 deg,	R =    71.680 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.312  mm
};
P[152]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   543.108  mm,	Y =     7.830  mm,	Z =   688.859  mm,
	W =  -178.747 deg,	P =     -.909 deg,	R =    84.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.312  mm
};
P[153]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   266.151  mm,	Y =  -595.217  mm,	Z =  1407.483  mm,
	W =  -173.124 deg,	P =   -22.672 deg,	R =   146.554 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.312  mm
};
P[154]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   707.652  mm,	Y =  -309.576  mm,	Z =  1672.821  mm,
	W =   135.736 deg,	P =   -25.123 deg,	R =  -135.834 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   161.312  mm
};
/END
