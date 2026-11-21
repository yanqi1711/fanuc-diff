/PROG  ED46_55_56_OP160_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "46_55_56_SPOT";
PROG_SIZE	= 17704;
CREATE		= DATE 26-03-12  TIME 20:31:34;
MODIFIED	= DATE 26-03-18  TIME 21:32:20;
FILE_NAME	= ED44_54_;
VERSION		= 0;
LINE_COUNT	= 217;
MEMORY_SIZE	= 18008;
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
   8:   ;
   9:J P[1] 100% CNT100    ;
  10:J P[7] 100% CNT100    ;
  11:J P[6] 100% CNT100    ;
  12:   ;
  13:J P[158] 100% CNT80    ;
  14:J P[156] 100% CNT100    ;
  15:  !48 ;
  16:L P[155] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.2,S=48,ED=10]    ;
  17:J P[157] 100% CNT100    ;
  18:   ;
  19:  //J P[5] 100% CNT80    ;
  20:J P[4] 100% CNT70    ;
  21:J P[8] 100% CNT50    ;
  22:J P[3] 100% CNT50    ;
  23:  !001 ;
  24:L P[2] 2000mm/sec CNT50
    :  SPOT[SD=2,P=4,t=1.9,S=1,ED=2]    ;
  25:J P[9] 100% CNT50    ;
  26:J P[11] 100% CNT50    ;
  27:J P[10] 100% CNT70    ;
  28:J P[12] 100% CNT100    ;
  29:J P[13] 100% CNT100    ;
  30:J P[14] 100% CNT100    ;
  31:J P[19] 100% CNT100    ;
  32:J P[18] 100% CNT70    ;
  33:J P[17] 100% CNT50    ;
  34:  !002 ;
  35:L P[16] 2000mm/sec CNT50
    :  SPOT[SD=11,P=6,t=2.5,S=2,ED=11]    ;
  36:J P[15] 100% CNT100    ;
  37:J P[22] 100% CNT100    ;
  38:J P[21] 100% CNT100    ;
  39:  !003 ;
  40:L P[20] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=3,ED=3]    ;
  41:J P[23] 100% CNT100    ;
  42:  !004 ;
  43:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=3,P=8,t=4.3,S=4,ED=11]    ;
  44:J P[25] 100% CNT100    ;
  45:J P[26] 100% CNT100    ;
  46:J P[27] 100% CNT100    ;
  47:J P[28] 100% CNT100    ;
  48:J P[29] 100% CNT100    ;
  49:J P[34] 100% CNT100    ;
  50:J P[33] 100% CNT100    ;
  51:J P[32] 100% CNT100    ;
  52:J P[31] 100% CNT50    ;
  53:  !005 ;
  54:L P[30] 2000mm/sec CNT50
    :  SPOT[SD=12,P=4,t=1.9,S=5,ED=12]    ;
  55:J P[35] 100% CNT100    ;
  56:J P[36] 100% CNT100    ;
  57:  !006 ;
  58:L P[37] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=6,ED=10]    ;
  59:J P[38] 100% CNT100    ;
  60:J P[39] 100% CNT100    ;
  61:  !007 ;
  62:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=7,ED=12]    ;
  63:J P[41] 100% CNT100    ;
  64:J P[42] 100% CNT100    ;
  65:  !008 ;
  66:L P[43] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=8,ED=10]    ;
  67:J P[44] 100% CNT100    ;
  68:  !009 ;
  69:L P[45] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=9,ED=10]    ;
  70:J P[46] 100% CNT100    ;
  71:J P[47] 100% CNT100    ;
  72:J P[48] 100% CNT100    ;
  73:J P[49] 100% CNT100    ;
  74:J P[50] 100% CNT100    ;
  75:J P[54] 100% CNT100    ;
  76:J P[53] 100% CNT100    ;
  77:J P[52] 100% CNT100    ;
  78:  !010 ;
  79:L P[51] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=10,ED=10]    ;
  80:J P[55] 100% CNT100    ;
  81:J P[56] 100% CNT100    ;
  82:  !011 ;
  83:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=11,ED=12]    ;
  84:J P[58] 100% CNT100    ;
  85:J P[59] 100% CNT100    ;
  86:  !012 ;
  87:L P[60] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=12,ED=10]    ;
  88:J P[61] 100% CNT100    ;
  89:J P[62] 100% CNT50    ;
  90:  !013 ;
  91:L P[63] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=13,ED=12]    ;
  92:J P[64] 100% CNT100    ;
  93:J P[65] 100% CNT70    ;
  94:  !014 ;
  95:L P[66] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.2,S=14,ED=12]    ;
  96:J P[67] 100% CNT100    ;
  97:J P[69] 100% CNT70    ;
  98:  !015 ;
  99:L P[68] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.2,S=15,ED=12]    ;
 100:J P[70] 100% CNT100    ;
 101:J P[72] 100% CNT70    ;
 102:  !016 ;
 103:L P[71] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=16,ED=12]    ;
 104:J P[73] 100% CNT100    ;
 105:J P[74] 100% CNT100    ;
 106:  !017 ;
 107:L P[75] 2000mm/sec CNT50
    :  SPOT[SD=12,P=4,t=1.9,S=17,ED=13]    ;
 108:  !018 ;
 109:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.2,S=18,ED=13]    ;
 110:  !019 ;
 111:L P[77] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.2,S=19,ED=13]    ;
 112:  !020 ;
 113:L P[78] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=20,ED=12]    ;
 114:J P[79] 100% CNT100    ;
 115:J P[81] 100% CNT80    ;
 116:  !21 ;
 117:L P[80] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=21,ED=12]    ;
 118:J P[82] 100% CNT100    ;
 119:J P[85] 100% CNT100    ;
 120:J P[83] 100% CNT80    ;
 121:  !022 ;
 122:L P[84] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.3,S=22,ED=12]    ;
 123:J P[86] 100% CNT100    ;
 124:J P[89] 100% CNT100    ;
 125:J P[88] 100% CNT80    ;
 126:  !023 ;
 127:L P[87] 2000mm/sec CNT50
    :  SPOT[SD=5,P=7,t=9.5,S=23,ED=5]    ;
 128:J P[90] 100% CNT100    ;
 129:J P[91] 100% CNT100    ;
 130:  !024 ;
 131:L P[92] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=24,ED=13]    ;
 132:  !025 ;
 133:L P[93] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=25,ED=12]    ;
 134:J P[94] 100% CNT100    ;
 135:J P[95] 100% CNT100    ;
 136:J P[96] 100% CNT100    ;
 137:  !026 ;
 138:L P[97] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=26,ED=13]    ;
 139:  !027 ;
 140:L P[98] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=27,ED=13]    ;
 141:  !028 ;
 142:L P[99] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=28,ED=13]    ;
 143:  !029 ;
 144:L P[100] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=29,ED=13]    ;
 145:  !030 ;
 146:L P[101] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=30,ED=13]    ;
 147:  !031 ;
 148:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=31,ED=13]    ;
 149:J P[103] 100% CNT100    ;
 150:J P[104] 100% CNT100    ;
 151:  !032 ;
 152:L P[105] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.4,S=32,ED=13]    ;
 153:J P[106] 100% CNT100    ;
 154:J P[107] 100% CNT100    ;
 155:  !033 ;
 156:L P[108] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.3,S=33,ED=13]    ;
 157:  !034 ;
 158:L P[109] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.4,S=34,ED=13]    ;
 159:  !035 ;
 160:L P[110] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.3,S=35,ED=13]    ;
 161:J P[111] 100% CNT100    ;
 162:J P[114] 100% CNT100    ;
 163:J P[113] 100% CNT100    ;
 164:  !036 ;
 165:L P[112] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=5.4,S=36,ED=13]    ;
 166:J P[115] 100% CNT100    ;
 167:J P[116] 100% CNT100    ;
 168:  !037 ;
 169:L P[117] 2000mm/sec CNT50
    :  SPOT[SD=13,P=8,t=4.3,S=37,ED=13]    ;
 170:  !038 ;
 171:L P[118] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=38,ED=13]    ;
 172:  !039 ;
 173:L P[119] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=39,ED=13]    ;
 174:  !040 ;
 175:L P[120] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=40,ED=13]    ;
 176:  !041 ;
 177:L P[121] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=41,ED=13]    ;
 178:  !042 ;
 179:L P[122] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.5,S=42,ED=13]    ;
 180:J P[123] 100% CNT100    ;
 181:J P[124] 100% CNT100    ;
 182:J P[128] 100% CNT100    ;
 183:J P[125] 100% CNT100    ;
 184:J P[126] 100% CNT100    ;
 185:J P[130] 100% CNT100    ;
 186:J P[131] 100% CNT60    ;
 187:  !045 ;
 188:L P[132] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.3,S=45,ED=13]    ;
 189:  !046 ;
 190:L P[133] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=46,ED=13]    ;
 191:  !047 ;
 192:L P[134] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=47,ED=12]    ;
 193:J P[135] 100% CNT100    ;
 194:J P[137] 100% CNT60    ;
 195:  !048 ;
 196:L P[136] 2000mm/sec CNT50
    :  SPOT[SD=12,P=8,t=4.1,S=48,ED=13]    ;
 197:  !049 ;
 198:L P[138] 2000mm/sec CNT50
    :  SPOT[SD=13,P=4,t=1.9,S=49,ED=13]    ;
 199:  !050 ;
 200:  //L P[139] 2000mm/sec CNT50
    :  SPOT[SD=13,P=6,t=2.3,S=50,ED=12]    ;
 201:J P[140] 100% CNT100    ;
 202:J P[141] 100% CNT100    ;
 203:J P[142] 100% CNT100    ;
 204:J P[143] 100% CNT100    ;
 205:J P[144] 100% CNT100    ;
 206:J P[145] 100% CNT100    ;
 207:J P[149] 100% CNT100    ;
 208:J P[147] 100% CNT100    ;
 209:  !051 ;
 210:L P[146] 2000mm/sec CNT50
    :  SPOT[SD=12,P=6,t=2.5,S=51,ED=12]    ;
 211:J P[148] 100% CNT100    ;
 212:J P[150] 100% CNT100    ;
 213:J P[151] 100% CNT100    ;
 214:J P[152] 100% CNT100    ;
 215:J P[153] 100% CNT100    ;
 216:J P[154] 100% CNT10    ;
 217:  CALL FINISHSEG(5) ;
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
	X =  1092.134  mm,	Y =   451.248  mm,	Z =    66.231  mm,
	W =  -179.405 deg,	P =     -.315 deg,	R =   -72.920 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    17.650  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.403  mm,	Y =   451.820  mm,	Z =    88.875  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   112.929  mm
};
P[4]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1113.988  mm,	Y =   440.876  mm,	Z =   114.856  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   200.500  mm
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
	X =  1123.814  mm,	Y =   449.803  mm,	Z =   113.738  mm,
	W =  -177.963 deg,	P =     1.277 deg,	R =   -72.881 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   180.429  mm
};
P[9]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1094.404  mm,	Y =   451.820  mm,	Z =    85.996  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   112.929  mm
};
P[10]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1180.513  mm,	Y =   440.875  mm,	Z =   111.303  mm,
	W =  -178.836 deg,	P =     1.545 deg,	R =   -72.982 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   195.000  mm
};
P[11]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1123.814  mm,	Y =   449.803  mm,	Z =   121.514  mm,
	W =  -177.963 deg,	P =     1.277 deg,	R =   -72.881 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   201.250  mm
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
	X =  1155.452  mm,	Y =  -287.894  mm,	Z =   194.207  mm,
	W =  -175.457 deg,	P =     3.044 deg,	R =  -115.569 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   210.000  mm
};
P[19]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1232.848  mm,	Y =  -296.331  mm,	Z =   204.288  mm,
	W =  -175.457 deg,	P =     3.044 deg,	R =  -115.979 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   210.000  mm
};
P[20]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1186.212  mm,	Y =  -168.874  mm,	Z =    89.052  mm,
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
	X =  1172.956  mm,	Y =   -88.939  mm,	Z =    87.518  mm,
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
	X =   383.159  mm,	Y =  -971.815  mm,	Z =    62.346  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -176.721 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    31.925  mm
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
	X =   532.815  mm,	Y =  -822.864  mm,	Z =    66.106  mm,
	W =  -179.662 deg,	P =     1.105 deg,	R =  -166.865 deg
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
	X =   -22.284  mm,	Y =  -909.374  mm,	Z =    75.317  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.673 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    34.028  mm
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
	X =   -25.449  mm,	Y =  -909.375  mm,	Z =    85.316  mm,
	W =  -178.499 deg,	P =      .156 deg,	R =   158.674 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    39.700  mm
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
	X =    30.512  mm,	Y =  -769.987  mm,	Z =    70.918  mm,
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
	X =    63.164  mm,	Y =  -259.134  mm,	Z =    35.942  mm,
	W =   177.360 deg,	P =      .457 deg,	R =   178.237 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    24.949  mm
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
	X =   353.415  mm,	Y =  -518.283  mm,	Z =  -188.463  mm,
	W =   158.150 deg,	P =      .313 deg,	R =  -177.870 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    32.281  mm
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
	X =   344.636  mm,	Y =  -339.857  mm,	Z =   157.060  mm,
	W =  -163.441 deg,	P =     -.108 deg,	R =  -177.805 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    27.750  mm
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
	X =   339.920  mm,	Y =  -215.203  mm,	Z =    37.683  mm,
	W =   175.992 deg,	P =     1.812 deg,	R =  -176.549 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    20.531  mm
};
P[93]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   344.429  mm,	Y =  -126.539  mm,	Z =    42.997  mm,
	W =   175.992 deg,	P =     1.812 deg,	R =  -173.658 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    26.117  mm
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
	X =   190.113  mm,	Y =  -897.653  mm,	Z =    38.171  mm,
	W =   178.361 deg,	P =     1.895 deg,	R =   160.711 deg
   GP2:
	UF : 1, UT : 1,	
	J1=     5.445  mm
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
	X =   339.449  mm,	Y =  -647.844  mm,	Z =    21.281  mm,
	W =   177.826 deg,	P =     2.014 deg,	R =   162.934 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    18.701  mm
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
	X =   409.355  mm,	Y =  -526.719  mm,	Z =    24.947  mm,
	W =   177.827 deg,	P =     2.017 deg,	R =   167.170 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    19.698  mm
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
P[128]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   798.803  mm,	Y =  -556.935  mm,	Z =    80.208  mm,
	W =  -179.327 deg,	P =      .616 deg,	R =   147.384 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    52.198  mm
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
	X =   268.502  mm,	Y =  -140.741  mm,	Z =    41.091  mm,
	W =  -179.658 deg,	P =    -1.026 deg,	R =   137.145 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    25.399  mm
};
P[134]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   298.318  mm,	Y =  -104.942  mm,	Z =    42.361  mm,
	W =   179.967 deg,	P =     -.602 deg,	R =   137.149 deg
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
	X =   148.520  mm,	Y =   -59.966  mm,	Z =    44.317  mm,
	W =  -178.939 deg,	P =    -1.580 deg,	R =   137.128 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    30.142  mm
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
P[155]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1218.235  mm,	Y =    39.063  mm,	Z =    69.001  mm,
	W =  -178.494 deg,	P =     3.038 deg,	R =   -77.172 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    79.179  mm
};
P[156]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.997  mm,	Y =    39.063  mm,	Z =   109.588  mm,
	W =  -178.494 deg,	P =     3.038 deg,	R =   -77.172 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.429  mm
};
P[157]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1187.997  mm,	Y =    39.063  mm,	Z =   109.588  mm,
	W =  -178.494 deg,	P =     3.038 deg,	R =   -77.172 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   129.429  mm
};
P[158]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1488.358  mm,	Y =    83.731  mm,	Z =   141.124  mm,
	W =  -178.428 deg,	P =     3.545 deg,	R =   -77.056 deg
   GP2:
	UF : 1, UT : 1,	
	J1=   157.212  mm
};
/END
