/PROG  ED44_OP110_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED44_54_OP110";
PROG_SIZE	= 14915;
CREATE		= DATE 26-03-14  TIME 20:27:22;
MODIFIED	= DATE 26-03-20  TIME 20:16:46;
FILE_NAME	= ED44_46_;
VERSION		= 0;
LINE_COUNT	= 192;
MEMORY_SIZE	= 15319;
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
   5:  !--WITH R10 WELD ;
   6:  CALL ENTER_ZONE(1) ;
   7:  !R10_R9ÐÞÄ¥»»Ã±¸ÉÉæÇø ;
   8:  CALL ENTER_ZONE(3) ;
   9:   ;
  10:J PR[1:HOME] 100% FINE    ;
  11:J P[1] 100% CNT100    ;
  12:J P[2] 100% CNT100    ;
  13:J P[3] 100% CNT100    ;
  14:J P[4] 100% CNT100    ;
  15:J P[5] 100% CNT100    ;
  16:J P[7] 100% CNT100    ;
  17:J P[6] 100% CNT100    ;
  18:  !002 ;
  19:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=2,ED=1]    ;
  20:J P[9] 100% CNT100    ;
  21:J P[103] 100% CNT100    ;
  22:J P[10] 100% CNT100    ;
  23:J P[11] 100% CNT100    ;
  24:  !003 ;
  25:L P[157] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=3,ED=1]    ;
  26:J P[158] 100% CNT50    ;
  27:J P[159] 100% CNT50    ;
  28:  !004 ;
  29:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=4,ED=1]    ;
  30:J P[15] 100% CNT20    ;
  31:J P[20] 100% CNT20    ;
  32:J P[21] 100% CNT20    ;
  33:J P[22] 100% CNT50    ;
  34:  !005 ;
  35:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=5,ED=1]    ;
  36:J P[25] 100% CNT100    ;
  37:J P[26] 100% CNT100    ;
  38:  !006 ;
  39:L P[28] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=6,ED=1]    ;
  40:J P[12] 100% CNT100    ;
  41:J P[30] 100% CNT100    ;
  42:  !007 ;
  43:L P[33] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=7,ED=1]    ;
  44:J P[34] 100% CNT100    ;
  45:J P[17] 100% CNT100    ;
  46:  !001 ;
  47:L P[18] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=1,ED=1]    ;
  48:J P[19] 100% CNT100    ;
  49:J P[35] 100% CNT100    ;
  50:J P[36] 100% CNT100    ;
  51:J P[16] 100% CNT100    ;
  52:J P[23] 100% CNT100    ;
  53:J P[13] 100% CNT100    ;
  54:J P[27] 100% CNT100    ;
  55:J P[29] 100% CNT100    ;
  56:J P[31] 100% CNT100    ;
  57:J P[45] 100% CNT100    ;
  58:J P[47] 100% FINE    ;
  59:   ;
  60:  !--WITH R10 WELD ;
  61:  CALL EXIT_ZONE(1) ;
  62:  !R10_R9ÐÞÄ¥»»Ã±¸ÉÉæÇø ;
  63:  CALL EXIT_ZONE(3) ;
  64:   ;
  65:J P[48] 100% CNT100    ;
  66:J P[49] 100% CNT100    ;
  67:J P[50] 100% CNT100    ;
  68:  !008 ;
  69:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=8,ED=1]    ;
  70:J P[53] 100% CNT100    ;
  71:J P[56] 100% CNT100    ;
  72:  !009 ;
  73:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=9,ED=1]    ;
  74:J P[58] 100% CNT50    ;
  75:J P[59] 100% CNT50    ;
  76:  !011 ;
  77:L P[62] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=11,ED=1]    ;
  78:J P[63] 100% CNT100    ;
  79:  !010 ;
  80:L P[67] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=10,ED=1]    ;
  81:J P[68] 100% CNT100    ;
  82:J P[69] 100% CNT100    ;
  83:J P[70] 100% CNT100    ;
  84:J P[71] 100% CNT50    ;
  85:J P[99] 100% CNT50    ;
  86:J P[72] 100% CNT50    ;
  87:J P[73] 100% CNT100    ;
  88:J P[74] 100% CNT100    ;
  89:  !017 ;
  90:L P[77] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=17,ED=1]    ;
  91:J P[78] 100% CNT100    ;
  92:J P[32] 100% CNT100    ;
  93:  !016 ;
  94:L P[81] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=16,ED=1]    ;
  95:J P[82] 100% CNT100    ;
  96:J P[84] 100% CNT100    ;
  97:  !015 ;
  98:L P[86] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=15,ED=1]    ;
  99:J P[87] 100% CNT100    ;
 100:J P[89] 100% CNT100    ;
 101:  !014 ;
 102:L P[91] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=14,ED=1]    ;
 103:J P[92] 100% CNT100    ;
 104:  !013 ;
 105:L P[95] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=13,ED=1]    ;
 106:J P[37] 100% CNT100    ;
 107:J P[38] 100% CNT100    ;
 108:  !012 ;
 109:L P[39] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=12,ED=1]    ;
 110:J P[40] 100% CNT100    ;
 111:J P[41] 100% CNT100    ;
 112:J P[96] 100% CNT100    ;
 113:J P[97] 100% CNT100    ;
 114:  !018 ;
 115:L P[100] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=18,ED=1]    ;
 116:J P[101] 100% CNT100    ;
 117:  !019 ;
 118:L P[104] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=19,ED=1]    ;
 119:J P[105] 100% CNT100    ;
 120:J P[106] 100% CNT100    ;
 121:  !020 ;
 122:L P[110] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=20,ED=1]    ;
 123:J P[111] 100% CNT100    ;
 124:J P[113] 100% CNT100    ;
 125:  !021 ;
 126:L P[114] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=21,ED=1]    ;
 127:J P[115] 100% CNT100    ;
 128:J P[117] 100% CNT100    ;
 129:  !022 ;
 130:L P[118] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=22,ED=1]    ;
 131:J P[119] 100% CNT100    ;
 132:J P[120] 100% CNT100    ;
 133:J P[102] 100% CNT100    ;
 134:J P[121] 100% CNT100    ;
 135:J P[122] 100% CNT100    ;
 136:   ;
 137:J P[123] 100% CNT20    ;
 138:J P[124] 100% CNT100    ;
 139:J P[125] 100% CNT100    ;
 140:  !025 ;
 141:L P[127] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=25,ED=1]    ;
 142:J P[129] 100% CNT100    ;
 143:J P[130] 100% CNT100    ;
 144:  !024 ;
 145:L P[131] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=24,ED=1]    ;
 146:J P[132] 100% CNT100    ;
 147:J P[133] 100% CNT100    ;
 148:  !023 ;
 149:L P[134] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=23,ED=1]    ;
 150:J P[135] 100% CNT80    ;
 151:J P[136] 100% CNT100    ;
 152:  !026 ;
 153:L P[139] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=26,ED=1]    ;
 154:J P[140] 100% CNT100    ;
 155:  !027 ;
 156:L P[143] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=27,ED=1]    ;
 157:J P[144] 100% CNT100    ;
 158:J P[42] 100% CNT100    ;
 159:  !033 ;
 160:L P[43] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=1.5,S=33,ED=1]    ;
 161:J P[44] 100% CNT100    ;
 162:J P[145] 100% CNT100    ;
 163:  !032 ;
 164:L P[147] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=1.5,S=32,ED=1]    ;
 165:J P[148] 100% CNT100    ;
 166:J P[60] 100% CNT100    ;
 167:J P[65] 100% CNT50    ;
 168:J P[61] 100% CNT50    ;
 169:  !031 ;
 170:L P[46] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=31,ED=1]    ;
 171:J P[64] 100% CNT50    ;
 172:J P[55] 100% CNT100    ;
 173:J P[54] 100% CNT100    ;
 174:  !029 ;
 175:L P[51] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=29,ED=1]    ;
 176:J P[66] 100% CNT70    ;
 177:J P[75] 100% CNT70    ;
 178:  !028 ;
 179:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=28,ED=1]    ;
 180:J P[79] 100% CNT100    ;
 181:J P[80] 100% CNT100    ;
 182:  !030 ;
 183:L P[83] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.2,S=30,ED=1]    ;
 184:J P[85] 100% CNT100    ;
 185:J P[88] 100% CNT100    ;
 186:J P[90] 100% CNT50    ;
 187:   ;
 188:J P[93] 100% CNT50    ;
 189:J P[94] 100% CNT50    ;
 190:J P[98] 100% CNT100    ;
 191:J PR[1:HOME] 100% CNT100    ;
 192:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   878.897  mm,	Y =  1417.762  mm,	Z =   735.715  mm,
	W =     4.047 deg,	P =    -8.750 deg,	R =    22.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.492  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   839.365  mm,	Y =  1287.042  mm,	Z =    12.422  mm,
	W =      .617 deg,	P =     6.941 deg,	R =     1.291 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.492  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1295.704  mm,	Y =  1219.845  mm,	Z =   -98.180  mm,
	W =      .615 deg,	P =     6.942 deg,	R =     1.287 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.492  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1559.531  mm,	Y =  1226.408  mm,	Z =  -192.124  mm,
	W =      .615 deg,	P =     6.942 deg,	R =     1.287 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.998  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.032  mm,	Y =  1227.308  mm,	Z =  -171.820  mm,
	W =     4.510 deg,	P =     6.943 deg,	R =     1.287 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.996  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1815.621  mm,	Y =  1231.674  mm,	Z =  -178.867  mm,
	W =      .613 deg,	P =     6.943 deg,	R =     1.287 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.996  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.111  mm,	Y =  1231.573  mm,	Z =  -158.649  mm,
	W =     4.719 deg,	P =     6.835 deg,	R =     1.286 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.994  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1822.019  mm,	Y =  1243.992  mm,	Z =   -44.441  mm,
	W =      .573 deg,	P =     1.178 deg,	R =     1.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    30.445  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1815.622  mm,	Y =  1231.674  mm,	Z =  -178.867  mm,
	W =      .613 deg,	P =     6.943 deg,	R =     1.287 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.996  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1743.437  mm,	Y =  1231.826  mm,	Z =   -89.594  mm,
	W =    10.331 deg,	P =     5.204 deg,	R =     4.190 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.945  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1761.746  mm,	Y =  1210.432  mm,	Z =   -93.679  mm,
	W =    15.662 deg,	P =     4.259 deg,	R =     2.541 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    67.945  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1549.699  mm,	Y =  1231.672  mm,	Z =   -87.950  mm,
	W =    12.280 deg,	P =     4.106 deg,	R =    -1.334 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.959  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1916.984  mm,	Y =   715.347  mm,	Z =   685.139  mm,
	W =     5.703 deg,	P =    -1.380 deg,	R =    10.734 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.902  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1648.552  mm,	Y =  1206.907  mm,	Z =   -57.701  mm,
	W =    17.945 deg,	P =    -5.813 deg,	R =     5.488 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.832  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1654.556  mm,	Y =  1221.675  mm,	Z =   -70.142  mm,
	W =    13.882 deg,	P =    -2.736 deg,	R =     4.439 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    85.250  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1084.064  mm,	Y =  1313.870  mm,	Z =   474.585  mm,
	W =     3.903 deg,	P =     3.728 deg,	R =    14.081 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.906  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1561.478  mm,	Y =  1297.143  mm,	Z =   -60.090  mm,
	W =     2.396 deg,	P =     4.880 deg,	R =    -6.384 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    34.734  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1561.059  mm,	Y =  1298.097  mm,	Z =   -52.362  mm,
	W =     -.714 deg,	P =     2.324 deg,	R =    -5.827 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    26.901  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1560.132  mm,	Y =  1297.912  mm,	Z =   -74.609  mm,
	W =     -.714 deg,	P =     2.324 deg,	R =    -5.827 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    68.901  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1649.967  mm,	Y =  1235.229  mm,	Z =  -148.974  mm,
	W =     6.231 deg,	P =    -2.736 deg,	R =     4.439 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.250  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1573.362  mm,	Y =  1230.610  mm,	Z =  -164.799  mm,
	W =     6.231 deg,	P =    -2.736 deg,	R =     4.439 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   173.500  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.995  mm,	Y =  1230.901  mm,	Z =   -83.366  mm,
	W =    12.509 deg,	P =     4.706 deg,	R =    -1.486 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    70.908  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.144  mm,	Y =   980.869  mm,	Z =   482.769  mm,
	W =     3.192 deg,	P =     3.525 deg,	R =    21.166 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.902  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1588.668  mm,	Y =  1220.705  mm,	Z =   -53.607  mm,
	W =    22.950 deg,	P =     3.890 deg,	R =    -1.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.656  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1587.644  mm,	Y =  1228.536  mm,	Z =   -71.981  mm,
	W =    22.950 deg,	P =     3.890 deg,	R =    -1.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1547.253  mm,	Y =  1229.702  mm,	Z =   -69.234  mm,
	W =    22.950 deg,	P =     3.890 deg,	R =    -1.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1995.121  mm,	Y =   826.095  mm,	Z =   950.681  mm,
	W =   -10.075 deg,	P =   -14.565 deg,	R =    43.903 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.902  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1555.745  mm,	Y =  1216.729  mm,	Z =   -59.398  mm,
	W =    26.431 deg,	P =     1.806 deg,	R =    -2.692 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    29.000  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1599.038  mm,	Y =   902.674  mm,	Z =   967.381  mm,
	W =   -37.765 deg,	P =   -10.535 deg,	R =    80.867 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.902  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1541.921  mm,	Y =  1141.902  mm,	Z =  -111.387  mm,
	W =     1.728 deg,	P =     5.155 deg,	R =   -14.056 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    69.905  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1276.433  mm,	Y =   390.989  mm,	Z =   559.424  mm,
	W =   -10.960 deg,	P =    -1.839 deg,	R =    68.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.903  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2016.603  mm,	Y =   851.424  mm,	Z =   -89.701  mm,
	W =      .629 deg,	P =     1.040 deg,	R =    80.869 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1556.683  mm,	Y =  1134.075  mm,	Z =   -75.069  mm,
	W =     1.800 deg,	P =     5.130 deg,	R =   -13.245 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    23.655  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1559.712  mm,	Y =  1139.833  mm,	Z =  -100.363  mm,
	W =     1.839 deg,	P =     5.117 deg,	R =   -12.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   116.572  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1271.084  mm,	Y =  1251.325  mm,	Z =  -117.381  mm,
	W =     2.250 deg,	P =     4.925 deg,	R =    -6.785 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.906  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1030.944  mm,	Y =  1240.576  mm,	Z =   -93.091  mm,
	W =     2.254 deg,	P =     4.903 deg,	R =    -7.571 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.906  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1788.269  mm,	Y =   866.388  mm,	Z =  -110.677  mm,
	W =     -.249 deg,	P =      .565 deg,	R =   103.148 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   149.468  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1740.898  mm,	Y =  1161.531  mm,	Z =  -113.529  mm,
	W =     -.249 deg,	P =      .565 deg,	R =   103.148 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   203.468  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1751.289  mm,	Y =  1136.511  mm,	Z =   -70.590  mm,
	W =     -.144 deg,	P =      .543 deg,	R =   103.145 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    15.108  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1740.898  mm,	Y =  1161.531  mm,	Z =  -113.529  mm,
	W =     -.249 deg,	P =      .565 deg,	R =   103.148 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   203.468  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.570  mm,	Y =   999.563  mm,	Z =  -146.155  mm,
	W =      .244 deg,	P =      .437 deg,	R =   103.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   195.357  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2258.297  mm,	Y =   673.962  mm,	Z =   -86.232  mm,
	W =      .269 deg,	P =      .491 deg,	R =    78.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2277.422  mm,	Y =   678.349  mm,	Z =   -65.001  mm,
	W =      .269 deg,	P =      .491 deg,	R =    78.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    18.083  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.976  mm,	Y =   710.099  mm,	Z =  -149.168  mm,
	W =      .269 deg,	P =      .491 deg,	R =    78.009 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   127.333  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1409.927  mm,	Y =   302.741  mm,	Z =   140.272  mm,
	W =     3.166 deg,	P =      .882 deg,	R =    64.530 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.901  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2475.553  mm,	Y =   904.538  mm,	Z =   -65.582  mm,
	W =     -.226 deg,	P =     -.484 deg,	R =    66.838 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    18.414  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1409.382  mm,	Y =   344.961  mm,	Z =  -170.703  mm,
	W =      .532 deg,	P =     1.728 deg,	R =    74.061 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.000  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1506.320  mm,	Y =   543.115  mm,	Z =  -177.618  mm,
	W =      .952 deg,	P =     1.539 deg,	R =    88.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.002  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1578.635  mm,	Y =   764.067  mm,	Z =  -184.712  mm,
	W =      .952 deg,	P =     1.539 deg,	R =    88.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.002  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1581.568  mm,	Y =   880.737  mm,	Z =  -179.844  mm,
	W =      .952 deg,	P =     1.539 deg,	R =    88.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.002  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2476.153  mm,	Y =  1150.557  mm,	Z =   -67.347  mm,
	W =      .242 deg,	P =     -.888 deg,	R =    74.194 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.583  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1552.187  mm,	Y =   845.407  mm,	Z =   -71.915  mm,
	W =      .484 deg,	P =      .438 deg,	R =    93.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    16.251  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1573.075  mm,	Y =   848.203  mm,	Z =   -96.661  mm,
	W =      .828 deg,	P =     1.608 deg,	R =    84.156 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.418  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2475.502  mm,	Y =  1149.960  mm,	Z =  -177.607  mm,
	W =      .242 deg,	P =     3.650 deg,	R =    74.214 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.750  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2429.864  mm,	Y =   988.528  mm,	Z =  -166.905  mm,
	W =      .242 deg,	P =     3.650 deg,	R =    74.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.750  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.479  mm,	Y =   843.867  mm,	Z =   -88.478  mm,
	W =      .729 deg,	P =     1.656 deg,	R =    80.615 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.415  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.738  mm,	Y =   844.264  mm,	Z =   -73.519  mm,
	W =      .729 deg,	P =     1.656 deg,	R =    80.615 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.415  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1607.766  mm,	Y =   841.236  mm,	Z =  -188.061  mm,
	W =      .729 deg,	P =     1.656 deg,	R =    80.615 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   137.915  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1590.362  mm,	Y =   735.908  mm,	Z =  -184.974  mm,
	W =      .729 deg,	P =     1.656 deg,	R =    80.615 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   143.415  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.441  mm,	Y =   836.028  mm,	Z =  -156.617  mm,
	W =      .242 deg,	P =     3.650 deg,	R =    74.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.750  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2478.668  mm,	Y =   910.908  mm,	Z =  -158.269  mm,
	W =     -.226 deg,	P =     4.014 deg,	R =    66.820 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.250  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.983  mm,	Y =   763.872  mm,	Z =   -74.669  mm,
	W =      .157 deg,	P =     1.199 deg,	R =    75.214 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    21.912  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.122  mm,	Y =   760.824  mm,	Z =   -94.607  mm,
	W =      .157 deg,	P =     1.199 deg,	R =    75.214 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2477.979  mm,	Y =   909.011  mm,	Z =  -186.965  mm,
	W =     -.226 deg,	P =     4.014 deg,	R =    66.820 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.250  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2424.025  mm,	Y =   868.272  mm,	Z =  -166.172  mm,
	W =     -.226 deg,	P =     4.014 deg,	R =    66.820 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.250  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2476.166  mm,	Y =  1152.211  mm,	Z =  -170.334  mm,
	W =      .242 deg,	P =     -.888 deg,	R =    74.194 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.500  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1545.412  mm,	Y =   762.766  mm,	Z =   -77.080  mm,
	W =    -2.223 deg,	P =     1.650 deg,	R =    81.114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    18.762  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1544.083  mm,	Y =   756.504  mm,	Z =  -103.405  mm,
	W =      .746 deg,	P =     1.650 deg,	R =    81.114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.329  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1523.479  mm,	Y =   626.204  mm,	Z =  -117.111  mm,
	W =      .746 deg,	P =     1.650 deg,	R =    81.114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.912  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1496.936  mm,	Y =   422.671  mm,	Z =  -110.263  mm,
	W =      .618 deg,	P =     1.660 deg,	R =    77.137 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.912  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1419.199  mm,	Y =   485.071  mm,	Z =   447.177  mm,
	W =      .619 deg,	P =     1.660 deg,	R =    77.136 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.911  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1890.368  mm,	Y =   368.615  mm,	Z =  -116.719  mm,
	W =      .478 deg,	P =     1.747 deg,	R =    72.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.908  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1996.651  mm,	Y =   667.037  mm,	Z =  -182.154  mm,
	W =      .675 deg,	P =     1.682 deg,	R =    78.512 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   215.332  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2042.838  mm,	Y =   886.844  mm,	Z =  -173.158  mm,
	W =      .695 deg,	P =     1.674 deg,	R =    79.181 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   141.332  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2370.403  mm,	Y =  1158.104  mm,	Z =  -166.762  mm,
	W =      .391 deg,	P =     3.688 deg,	R =    82.257 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.493  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.893  mm,	Y =  1152.436  mm,	Z =   -69.771  mm,
	W =      .389 deg,	P =     -.264 deg,	R =    81.850 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.240  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.311  mm,	Y =   843.693  mm,	Z =   -70.076  mm,
	W =      .629 deg,	P =     1.040 deg,	R =    80.869 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.328  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.036  mm,	Y =   843.370  mm,	Z =   -90.071  mm,
	W =      .629 deg,	P =     1.040 deg,	R =    80.869 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2382.772  mm,	Y =  1152.546  mm,	Z =   -89.770  mm,
	W =      .389 deg,	P =     -.264 deg,	R =    81.850 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    79.500  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2359.164  mm,	Y =   987.729  mm,	Z =   -90.538  mm,
	W =      .389 deg,	P =     -.264 deg,	R =    81.850 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    49.500  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2011.872  mm,	Y =   844.688  mm,	Z =   -71.650  mm,
	W =     -.584 deg,	P =    -1.382 deg,	R =    78.592 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.909  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.168  mm,	Y =   845.121  mm,	Z =   -91.643  mm,
	W =     -.584 deg,	P =    -1.382 deg,	R =    78.592 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2379.117  mm,	Y =   984.775  mm,	Z =   -65.728  mm,
	W =      .389 deg,	P =    -1.785 deg,	R =    81.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.583  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1945.026  mm,	Y =   846.838  mm,	Z =   -88.154  mm,
	W =      .605 deg,	P =      .410 deg,	R =    88.609 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    41.470  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2381.864  mm,	Y =  1008.155  mm,	Z =  -153.102  mm,
	W =      .389 deg,	P =    -1.785 deg,	R =    81.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.667  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.083  mm,	Y =   845.524  mm,	Z =   -71.135  mm,
	W =     1.184 deg,	P =     2.335 deg,	R =    88.647 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.836  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1945.063  mm,	Y =   846.860  mm,	Z =   -84.755  mm,
	W =      .604 deg,	P =      .410 deg,	R =    88.609 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    32.386  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2323.297  mm,	Y =   809.150  mm,	Z =  -159.299  mm,
	W =      .389 deg,	P =    -1.785 deg,	R =    81.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.667  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1820.969  mm,	Y =   859.869  mm,	Z =  -102.047  mm,
	W =      .688 deg,	P =      .245 deg,	R =   103.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    52.886  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2243.361  mm,	Y =   625.296  mm,	Z =  -170.566  mm,
	W =      .389 deg,	P =    -1.785 deg,	R =    81.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.667  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1790.768  mm,	Y =   844.966  mm,	Z =   -73.778  mm,
	W =     -.469 deg,	P =      .246 deg,	R =   103.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    34.135  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1776.226  mm,	Y =   844.935  mm,	Z =   -93.813  mm,
	W =     -.467 deg,	P =      .245 deg,	R =   103.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2226.593  mm,	Y =   406.149  mm,	Z =  -175.624  mm,
	W =     -.954 deg,	P =     5.069 deg,	R =    81.823 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.667  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2226.594  mm,	Y =   401.815  mm,	Z =   237.709  mm,
	W =    -5.482 deg,	P =     8.970 deg,	R =    72.790 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.667  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1755.284  mm,	Y =   844.997  mm,	Z =   -73.486  mm,
	W =     -.251 deg,	P =      .566 deg,	R =   103.148 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     9.470  mm
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1762.394  mm,	Y =   843.090  mm,	Z =  -176.688  mm,
	W =      .690 deg,	P =      .245 deg,	R =   103.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   187.637  mm
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1789.807  mm,	Y =   725.749  mm,	Z =  -176.172  mm,
	W =      .690 deg,	P =      .245 deg,	R =   103.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   187.637  mm
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2077.725  mm,	Y =   692.275  mm,	Z =   930.745  mm,
	W =   -10.495 deg,	P =    -9.036 deg,	R =    54.098 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   188.993  mm
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1910.199  mm,	Y =   485.070  mm,	Z =   447.177  mm,
	W =      .619 deg,	P =     1.660 deg,	R =    77.136 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.911  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.843  mm,	Y =   764.326  mm,	Z =   -72.222  mm,
	W =      .676 deg,	P =      .282 deg,	R =   100.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.637  mm
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1781.609  mm,	Y =   765.389  mm,	Z =   -90.150  mm,
	W =      .652 deg,	P =      .334 deg,	R =    95.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1940.977  mm,	Y =   484.980  mm,	Z =   -85.509  mm,
	W =      .259 deg,	P =     1.769 deg,	R =    70.575 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.998  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1751.081  mm,	Y =  1230.352  mm,	Z =  -130.127  mm,
	W =     5.675 deg,	P =     6.234 deg,	R =     2.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   151.607  mm
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1796.285  mm,	Y =   765.070  mm,	Z =   -71.896  mm,
	W =      .651 deg,	P =      .340 deg,	R =    95.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.632  mm
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1824.866  mm,	Y =   766.432  mm,	Z =   -91.895  mm,
	W =      .651 deg,	P =      .340 deg,	R =    95.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1961.417  mm,	Y =   756.008  mm,	Z =   -93.300  mm,
	W =      .610 deg,	P =      .409 deg,	R =    88.707 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.850  mm,	Y =   764.920  mm,	Z =   -71.797  mm,
	W =      .610 deg,	P =      .409 deg,	R =    88.707 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.833  mm
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1964.529  mm,	Y =   764.714  mm,	Z =  -101.494  mm,
	W =      .603 deg,	P =      .419 deg,	R =    87.781 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2005.194  mm,	Y =   763.134  mm,	Z =  -101.923  mm,
	W =      .577 deg,	P =      .455 deg,	R =    84.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.281  mm,	Y =   762.854  mm,	Z =   -73.373  mm,
	W =      .577 deg,	P =      .455 deg,	R =    84.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.000  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2010.065  mm,	Y =   762.716  mm,	Z =   -93.372  mm,
	W =      .577 deg,	P =      .455 deg,	R =    84.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2053.260  mm,	Y =   753.685  mm,	Z =   -96.526  mm,
	W =      .258 deg,	P =     1.777 deg,	R =    79.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.041  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2055.163  mm,	Y =   763.310  mm,	Z =   -70.567  mm,
	W =      .258 deg,	P =     1.777 deg,	R =    79.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    16.041  mm
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2043.672  mm,	Y =   747.528  mm,	Z =   -89.992  mm,
	W =      .258 deg,	P =     1.777 deg,	R =    79.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    81.000  mm
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2016.948  mm,	Y =   603.706  mm,	Z =   -97.017  mm,
	W =      .260 deg,	P =     1.777 deg,	R =    79.504 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.998  mm
};
P[121]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.080  mm,	Y =   255.885  mm,	Z =   -93.041  mm,
	W =      .259 deg,	P =     1.770 deg,	R =    58.357 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.998  mm
};
P[122]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2276.079  mm,	Y =   280.885  mm,	Z =   -93.041  mm,
	W =      .259 deg,	P =     1.770 deg,	R =    61.446 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.998  mm
};
P[123]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2206.524  mm,	Y =   645.177  mm,	Z =  -164.894  mm,
	W =      .304 deg,	P =      .455 deg,	R =    84.778 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.748  mm
};
P[124]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2304.472  mm,	Y =   759.254  mm,	Z =  -181.632  mm,
	W =      .288 deg,	P =      .465 deg,	R =    82.901 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.748  mm
};
P[125]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2331.099  mm,	Y =   857.097  mm,	Z =  -180.468  mm,
	W =    -3.150 deg,	P =     1.833 deg,	R =    84.720 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.656  mm
};
P[127]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2324.249  mm,	Y =   849.696  mm,	Z =   -68.501  mm,
	W =    -3.149 deg,	P =     -.760 deg,	R =    84.863 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.823  mm
};
P[129]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2325.367  mm,	Y =   849.862  mm,	Z =   -88.469  mm,
	W =    -3.149 deg,	P =     -.760 deg,	R =    84.863 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[130]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2268.926  mm,	Y =   852.182  mm,	Z =   -89.245  mm,
	W =    -1.644 deg,	P =      .452 deg,	R =    84.777 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    33.845  mm
};
P[131]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.999  mm,	Y =   847.382  mm,	Z =   -72.213  mm,
	W =    -1.644 deg,	P =      .452 deg,	R =    84.777 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    19.095  mm
};
P[132]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2271.730  mm,	Y =   845.977  mm,	Z =  -206.237  mm,
	W =    -1.646 deg,	P =     2.748 deg,	R =    84.711 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   164.750  mm
};
P[133]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2195.538  mm,	Y =   844.336  mm,	Z =  -186.366  mm,
	W =    -2.349 deg,	P =     1.982 deg,	R =    87.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   156.501  mm
};
P[134]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2202.196  mm,	Y =   848.017  mm,	Z =   -71.406  mm,
	W =    -2.349 deg,	P =     1.982 deg,	R =    87.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    19.501  mm
};
P[135]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2195.538  mm,	Y =   844.336  mm,	Z =  -186.366  mm,
	W =    -2.349 deg,	P =     1.982 deg,	R =    87.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   156.501  mm
};
P[136]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.254  mm,	Y =   727.825  mm,	Z =  -182.330  mm,
	W =    -2.349 deg,	P =     1.982 deg,	R =    87.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   156.501  mm
};
P[139]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2165.319  mm,	Y =   764.675  mm,	Z =   -70.208  mm,
	W =     -.543 deg,	P =      .370 deg,	R =    96.421 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.941  mm
};
P[140]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2165.522  mm,	Y =   764.567  mm,	Z =   -90.207  mm,
	W =     -.543 deg,	P =      .370 deg,	R =    96.421 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[143]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2214.493  mm,	Y =   764.769  mm,	Z =   -66.624  mm,
	W =      .410 deg,	P =      .380 deg,	R =    96.424 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[144]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2215.802  mm,	Y =   751.868  mm,	Z =   -86.538  mm,
	W =      .410 deg,	P =      .380 deg,	R =    96.424 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    43.500  mm
};
P[145]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2352.119  mm,	Y =   731.703  mm,	Z =  -172.133  mm,
	W =      .237 deg,	P =      .508 deg,	R =    74.200 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   160.998  mm
};
P[147]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2347.511  mm,	Y =   713.798  mm,	Z =   -68.886  mm,
	W =      .238 deg,	P =     -.711 deg,	R =    74.193 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    30.496  mm
};
P[148]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2346.599  mm,	Y =   712.128  mm,	Z =  -164.593  mm,
	W =      .238 deg,	P =      .508 deg,	R =    74.200 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   187.994  mm
};
P[157]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1754.266  mm,	Y =  1207.902  mm,	Z =   -58.218  mm,
	W =    19.524 deg,	P =     -.895 deg,	R =     1.654 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.014  mm
};
P[158]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1754.367  mm,	Y =  1214.592  mm,	Z =   -77.065  mm,
	W =    14.931 deg,	P =     -.895 deg,	R =     1.654 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   189.167  mm
};
P[159]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1658.745  mm,	Y =  1226.057  mm,	Z =   -78.178  mm,
	W =    17.849 deg,	P =    -3.173 deg,	R =     6.343 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   194.333  mm
};
/END
