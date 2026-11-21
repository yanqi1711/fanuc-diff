/PROG  ED54_55_56_OP150_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP150";
PROG_SIZE	= 15028;
CREATE		= DATE 26-03-12  TIME 19:46:22;
MODIFIED	= DATE 26-03-19  TIME 18:14:18;
FILE_NAME	= ED44_46_;
VERSION		= 0;
LINE_COUNT	= 189;
MEMORY_SIZE	= 15300;
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
   6:J P[1] 100% CNT100    ;
   7:J P[2] 100% CNT100    ;
   8:J P[3] 100% CNT100    ;
   9:J P[4] 100% CNT100    ;
  10:J P[5] 100% CNT100    ;
  11:J P[6] 100% CNT80    ;
  12:J P[7] 100% CNT80    ;
  13:J P[8] 100% CNT60    ;
  14:J P[9] 100% CNT30    ;
  15:J P[10] 100% CNT20    ;
  16:J P[11] 100% CNT20    ;
  17:J P[12] 100% CNT20    ;
  18:J P[13] 100% CNT20    ;
  19:J P[14] 100% CNT30    ;
  20:J P[15] 100% CNT30    ;
  21:J P[16] 100% CNT30    ;
  22:J P[17] 100% CNT30    ;
  23:J P[18] 100% CNT30    ;
  24:J P[19] 100% CNT30    ;
  25:  !R12_010 ;
  26:L P[20] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.3,S=49,ED=1]    ;
  27:J P[21] 100% CNT30    ;
  28:J P[22] 100% CNT30    ;
  29:J P[23] 100% CNT30    ;
  30:J P[24] 100% CNT30    ;
  31:J P[25] 100% CNT30    ;
  32:J P[26] 100% CNT50    ;
  33:J P[27] 100% CNT50    ;
  34:J P[28] 100% CNT80    ;
  35:J P[29] 100% CNT80    ;
  36:J P[30] 100% CNT100    ;
  37:J P[31] 100% CNT100    ;
  38:J P[32] 100% CNT100    ;
  39:J P[33] 100% CNT100    ;
  40:   ;
  41:J P[34] 100% CNT100    ;
  42:  !R12_019 ;
  43:L P[35] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=1.9,S=58,ED=1]    ;
  44:J P[36] 100% CNT100    ;
  45:  !R12_020 ;
  46:L P[37] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=1.9,S=59,ED=1]    ;
  47:J P[38] 100% CNT100    ;
  48:J P[39] 100% CNT100    ;
  49:  !R12_021 ;
  50:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=1.9,S=60,ED=1]    ;
  51:J P[41] 100% CNT100    ;
  52:J P[42] 100% CNT100    ;
  53:J P[43] 100% CNT100    ;
  54:  !R12_013 ;
  55:L P[44] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=5.5,S=52,ED=1]    ;
  56:J P[45] 100% CNT100    ;
  57:J P[46] 100% CNT100    ;
  58:  !R12_014 ;
  59:L P[47] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.3,S=53,ED=1]    ;
  60:J P[48] 100% CNT100    ;
  61:J P[49] 100% CNT100    ;
  62:J P[50] 100% CNT100    ;
  63:J P[51] 100% CNT100    ;
  64:  !R12_015 ;
  65:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=54,ED=1]    ;
  66:J P[53] 100% CNT100    ;
  67:J P[54] 100% CNT100    ;
  68:  !R12_016 ;
  69:L P[55] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.5,S=55,ED=1]    ;
  70:J P[56] 100% CNT100    ;
  71:J P[57] 100% CNT100    ;
  72:J P[58] 100% CNT100    ;
  73:J P[59] 100% CNT100    ;
  74:J P[60] 100% CNT100    ;
  75:  !R12_017 ;
  76:L P[61] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=56,ED=1]    ;
  77:J P[62] 100% CNT100    ;
  78:  !R12_018 ;
  79:L P[63] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=57,ED=1]    ;
  80:J P[64] 100% CNT100    ;
  81:J P[65] 100% CNT100    ;
  82:J P[66] 100% CNT100    ;
  83:J P[67] 100% CNT100    ;
  84:J P[68] 100% CNT100    ;
  85:J P[69] 100% CNT100    ;
  86:J P[70] 100% CNT100    ;
  87:J P[71] 100% CNT100    ;
  88:J P[72] 100% CNT100    ;
  89:J P[73] 100% CNT100    ;
  90:J P[74] 100% CNT100    ;
  91:J P[75] 100% CNT100    ;
  92:J P[76] 100% CNT100    ;
  93:J P[77] 100% CNT100    ;
  94:J P[78] 100% CNT80    ;
  95:  !R12_012 ;
  96:L P[79] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.3,S=51,ED=1]    ;
  97:J P[80] 100% CNT50    ;
  98:J P[81] 100% CNT50    ;
  99:J P[82] 100% CNT50    ;
 100:J P[83] 100% CNT50    ;
 101:J P[84] 100% CNT50    ;
 102:  !R12_016 ;
 103:L P[85] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=55,ED=1]    ;
 104:J P[86] 100% CNT30    ;
 105:J P[87] 100% CNT30    ;
 106:J P[88] 100% CNT50    ;
 107:J P[89] 100% CNT50    ;
 108:J P[90] 100% CNT50    ;
 109:J P[91] 100% CNT30    ;
 110:  !R12_9 ;
 111:L P[92] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=48,ED=1]    ;
 112:J P[93] 100% CNT80    ;
 113:J P[94] 100% CNT80    ;
 114:J P[95] 100% CNT80    ;
 115:J P[96] 100% CNT60    ;
 116:  !R12_008 ;
 117:L P[97] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.7,S=47,ED=1]    ;
 118:J P[98] 100% CNT60    ;
 119:J P[99] 100% CNT60    ;
 120:J P[100] 100% CNT50    ;
 121:J P[101] 100% CNT50    ;
 122:J P[102] 100% CNT30    ;
 123:  !R12_007 ;
 124:L P[103] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=1.9,S=46,ED=1]    ;
 125:J P[104] 100% CNT30    ;
 126:J P[105] 100% CNT50    ;
 127:J P[106] 100% CNT60    ;
 128:J P[107] 100% CNT80    ;
 129:J P[108] 100% CNT100    ;
 130:J P[109] 100% CNT100    ;
 131:  !R12_006 ;
 132:L P[110] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.1,S=45,ED=1]    ;
 133:J P[130] 100% CNT100    ;
 134:  !R12_005 ;
 135:L P[131] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=44,ED=1]    ;
 136:J P[132] 100% CNT100    ;
 137:  !R12_004 ;
 138:L P[133] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=43,ED=1]    ;
 139:J P[134] 100% CNT60    ;
 140:J P[135] 100% CNT60    ;
 141:J P[136] 100% CNT80    ;
 142:J P[137] 100% CNT80    ;
 143:J P[138] 100% CNT80    ;
 144:J P[139] 100% CNT80    ;
 145:J P[140] 100% CNT80    ;
 146:J P[141] 100% CNT100    ;
 147:J P[142] 100% CNT100    ;
 148:J P[143] 100% CNT100    ;
 149:  !R12_001 ;
 150:L P[144] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.4,S=40,ED=1]    ;
 151:J P[145] 100% CNT100    ;
 152:  !R12_002 ;
 153:L P[146] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.7,S=41,ED=1]    ;
 154:J P[147] 100% CNT100    ;
 155:  !R12_003 ;
 156:L P[148] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.3,S=42,ED=1]    ;
 157:J P[111] 100% CNT30    ;
 158:J P[112] 100% CNT50    ;
 159:J P[113] 100% CNT50    ;
 160:J P[114] 100% CNT50    ;
 161:J P[115] 100% CNT50    ;
 162:J P[116] 100% CNT50    ;
 163:J P[117] 100% CNT30    ;
 164:J P[118] 100% CNT30    ;
 165:J P[119] 100% CNT30    ;
 166:J P[120] 100% CNT30    ;
 167:J P[121] 100% CNT50    ;
 168:J P[122] 100% CNT50    ;
 169:J P[123] 100% CNT50    ;
 170:J P[124] 100% CNT50    ;
 171:J P[125] 100% CNT50    ;
 172:J P[126] 100% CNT60    ;
 173:J P[129] 100% CNT60    ;
 174:J P[154] 100% CNT100    ;
 175:J P[153] 100% CNT100    ;
 176:J P[152] 100% CNT100    ;
 177:J P[151] 100% CNT100    ;
 178:J P[150] 100% CNT50    ;
 179:  !001  ²»Í¬µ  ;
 180:L P[149] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.4,S=40,ED=1]    ;
 181:J P[158] 100% CNT50    ;
 182:J P[157] 100% CNT100    ;
 183:J P[156] 100% CNT100    ;
 184:J P[155] 100% CNT100    ;
 185:J P[128] 100% CNT100    ;
 186:   ;
 187:J P[127] 100% CNT100    ;
 188:J PR[1:HOME] 100% CNT100    ;
 189:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1844.759  mm,	Y =  -530.105  mm,	Z =   410.087  mm,
	W =   -16.959 deg,	P =    -1.757 deg,	R =    16.595 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.245  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1557.104  mm,	Y =    88.315  mm,	Z =    51.701  mm,
	W =   -15.584 deg,	P =     4.227 deg,	R =    56.694 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.538  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1460.805  mm,	Y =   277.536  mm,	Z =  -300.903  mm,
	W =   -58.058 deg,	P =    16.596 deg,	R =    80.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   196.727  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1557.131  mm,	Y =   204.652  mm,	Z =  -486.423  mm,
	W =   -44.640 deg,	P =     4.420 deg,	R =    78.332 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1742.068  mm,	Y =   206.859  mm,	Z =  -589.350  mm,
	W =   -53.577 deg,	P =     4.420 deg,	R =    78.331 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1841.958  mm,	Y =   236.526  mm,	Z =  -652.805  mm,
	W =   -57.070 deg,	P =     4.420 deg,	R =    78.331 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1904.680  mm,	Y =   233.133  mm,	Z =  -693.876  mm,
	W =   -57.070 deg,	P =     4.420 deg,	R =    78.331 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1887.054  mm,	Y =   319.200  mm,	Z =  -688.974  mm,
	W =   -59.947 deg,	P =     1.888 deg,	R =    82.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1897.219  mm,	Y =   398.155  mm,	Z =  -691.598  mm,
	W =   -59.947 deg,	P =     1.888 deg,	R =    82.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1896.892  mm,	Y =   572.941  mm,	Z =  -684.086  mm,
	W =   -59.948 deg,	P =     1.886 deg,	R =    82.663 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.156  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1903.466  mm,	Y =   623.992  mm,	Z =  -685.780  mm,
	W =   -59.949 deg,	P =     1.886 deg,	R =    82.663 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.156  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1891.055  mm,	Y =   680.606  mm,	Z =  -531.876  mm,
	W =   -60.158 deg,	P =   -12.931 deg,	R =    79.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.697  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1890.645  mm,	Y =   686.441  mm,	Z =  -529.642  mm,
	W =   -60.159 deg,	P =   -12.932 deg,	R =    79.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   213.999  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1906.753  mm,	Y =   676.660  mm,	Z =  -501.091  mm,
	W =   -60.159 deg,	P =   -12.932 deg,	R =    79.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1910.693  mm,	Y =   700.790  mm,	Z =  -495.026  mm,
	W =   -60.161 deg,	P =   -12.933 deg,	R =    79.092 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1915.039  mm,	Y =   734.419  mm,	Z =  -486.021  mm,
	W =   -60.161 deg,	P =   -12.933 deg,	R =    79.092 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1914.767  mm,	Y =   756.674  mm,	Z =  -487.384  mm,
	W =   -60.164 deg,	P =   -12.934 deg,	R =    79.093 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1926.127  mm,	Y =   829.513  mm,	Z =  -468.911  mm,
	W =   -60.147 deg,	P =   -12.890 deg,	R =    79.015 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1944.134  mm,	Y =   865.866  mm,	Z =  -454.828  mm,
	W =   -60.148 deg,	P =   -12.894 deg,	R =    79.014 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1934.930  mm,	Y =   866.457  mm,	Z =  -449.707  mm,
	W =   -60.148 deg,	P =   -12.894 deg,	R =    79.014 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1944.134  mm,	Y =   865.866  mm,	Z =  -454.828  mm,
	W =   -60.148 deg,	P =   -12.894 deg,	R =    79.014 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1926.127  mm,	Y =   829.513  mm,	Z =  -468.911  mm,
	W =   -60.147 deg,	P =   -12.890 deg,	R =    79.015 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1914.767  mm,	Y =   756.674  mm,	Z =  -487.384  mm,
	W =   -60.164 deg,	P =   -12.934 deg,	R =    79.093 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1915.039  mm,	Y =   734.419  mm,	Z =  -486.021  mm,
	W =   -60.161 deg,	P =   -12.933 deg,	R =    79.092 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1910.693  mm,	Y =   700.790  mm,	Z =  -495.026  mm,
	W =   -60.161 deg,	P =   -12.933 deg,	R =    79.092 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1906.753  mm,	Y =   676.660  mm,	Z =  -501.091  mm,
	W =   -60.159 deg,	P =   -12.932 deg,	R =    79.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1890.609  mm,	Y =   686.447  mm,	Z =  -529.730  mm,
	W =   -60.157 deg,	P =   -12.930 deg,	R =    79.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   213.999  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1891.055  mm,	Y =   680.606  mm,	Z =  -531.876  mm,
	W =   -60.158 deg,	P =   -12.931 deg,	R =    79.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.697  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1903.509  mm,	Y =   623.975  mm,	Z =  -685.728  mm,
	W =   -59.950 deg,	P =     1.885 deg,	R =    82.662 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1887.940  mm,	Y =   715.291  mm,	Z =  -672.950  mm,
	W =   -59.920 deg,	P =     1.230 deg,	R =    83.793 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1854.044  mm,	Y =   837.263  mm,	Z =  -661.484  mm,
	W =   -59.898 deg,	P =      .265 deg,	R =    85.458 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.158  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1844.039  mm,	Y =   896.575  mm,	Z =  -653.609  mm,
	W =   -59.905 deg,	P =     -.629 deg,	R =    86.998 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   182.659  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1829.373  mm,	Y =   962.690  mm,	Z =  -667.385  mm,
	W =   -59.905 deg,	P =     -.449 deg,	R =    89.245 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   147.409  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1839.693  mm,	Y =   930.100  mm,	Z =  -652.616  mm,
	W =   -59.906 deg,	P =    -2.495 deg,	R =    90.300 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    69.753  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1825.130  mm,	Y =   929.657  mm,	Z =  -644.184  mm,
	W =   -59.906 deg,	P =    -2.495 deg,	R =    90.300 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1822.731  mm,	Y =   930.709  mm,	Z =  -666.547  mm,
	W =   -59.902 deg,	P =    -2.494 deg,	R =    90.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    60.165  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1797.670  mm,	Y =   931.639  mm,	Z =  -690.874  mm,
	W =   -59.902 deg,	P =    -2.494 deg,	R =    90.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1822.731  mm,	Y =   930.709  mm,	Z =  -666.547  mm,
	W =   -59.902 deg,	P =    -2.494 deg,	R =    90.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    60.165  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1804.696  mm,	Y =   983.961  mm,	Z =  -691.935  mm,
	W =   -59.933 deg,	P =    -1.420 deg,	R =    90.921 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   106.909  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1774.175  mm,	Y =   983.206  mm,	Z =  -681.199  mm,
	W =   -59.938 deg,	P =     -.161 deg,	R =    90.881 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1834.045  mm,	Y =   975.435  mm,	Z =  -668.045  mm,
	W =   -59.875 deg,	P =    -2.213 deg,	R =    89.445 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    84.409  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1846.627  mm,	Y =   974.502  mm,	Z =  -646.316  mm,
	W =   -59.785 deg,	P =    -3.803 deg,	R =    88.355 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    84.409  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1861.911  mm,	Y =   972.328  mm,	Z =  -619.988  mm,
	W =   -59.707 deg,	P =    -4.971 deg,	R =    87.673 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    84.409  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1838.407  mm,	Y =   983.518  mm,	Z =  -581.357  mm,
	W =   -59.659 deg,	P =    -4.708 deg,	R =    87.232 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1865.300  mm,	Y =   952.318  mm,	Z =  -614.477  mm,
	W =   -59.665 deg,	P =    -5.728 deg,	R =    87.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   105.410  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1867.838  mm,	Y =   898.585  mm,	Z =  -617.795  mm,
	W =   -59.661 deg,	P =    -5.723 deg,	R =    87.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    86.409  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1852.371  mm,	Y =   896.300  mm,	Z =  -587.436  mm,
	W =   -59.662 deg,	P =    -5.725 deg,	R =    87.230 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1867.838  mm,	Y =   898.585  mm,	Z =  -617.795  mm,
	W =   -59.661 deg,	P =    -5.723 deg,	R =    87.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    86.409  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1841.849  mm,	Y =   810.900  mm,	Z =  -663.998  mm,
	W =   -59.661 deg,	P =    -5.722 deg,	R =    87.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.742  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1834.445  mm,	Y =   657.846  mm,	Z =  -679.355  mm,
	W =   -59.660 deg,	P =    -5.722 deg,	R =    87.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.742  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1869.123  mm,	Y =   689.970  mm,	Z =  -617.827  mm,
	W =   -59.658 deg,	P =    -5.718 deg,	R =    87.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    73.908  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1847.603  mm,	Y =   688.143  mm,	Z =  -589.217  mm,
	W =   -59.658 deg,	P =    -5.718 deg,	R =    87.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1869.123  mm,	Y =   689.970  mm,	Z =  -617.827  mm,
	W =   -59.658 deg,	P =    -5.718 deg,	R =    87.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    73.908  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1878.235  mm,	Y =   585.509  mm,	Z =  -603.947  mm,
	W =   -59.658 deg,	P =    -5.717 deg,	R =    87.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    73.908  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1852.755  mm,	Y =   579.738  mm,	Z =  -592.661  mm,
	W =   -59.655 deg,	P =    -5.716 deg,	R =    87.235 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1878.235  mm,	Y =   585.509  mm,	Z =  -603.947  mm,
	W =   -59.658 deg,	P =    -5.717 deg,	R =    87.234 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    73.908  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1877.306  mm,	Y =   630.058  mm,	Z =  -720.139  mm,
	W =   -59.654 deg,	P =    -5.713 deg,	R =    87.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.321  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1868.563  mm,	Y =   539.489  mm,	Z =  -726.759  mm,
	W =   -59.653 deg,	P =    -5.711 deg,	R =    87.239 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.318  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1865.727  mm,	Y =   480.700  mm,	Z =  -732.647  mm,
	W =   -59.653 deg,	P =    -5.711 deg,	R =    87.239 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.318  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1892.262  mm,	Y =   475.156  mm,	Z =  -624.753  mm,
	W =   -59.653 deg,	P =    -5.711 deg,	R =    87.239 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   107.568  mm
};
P[61:""]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1851.502  mm,	Y =   499.302  mm,	Z =  -592.868  mm,
	W =   -59.650 deg,	P =    -5.709 deg,	R =    87.241 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1864.145  mm,	Y =   465.260  mm,	Z =  -604.795  mm,
	W =   -59.645 deg,	P =    -5.707 deg,	R =    87.242 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    59.398  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1845.775  mm,	Y =   438.903  mm,	Z =  -587.969  mm,
	W =   -59.645 deg,	P =    -5.706 deg,	R =    87.242 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1892.262  mm,	Y =   475.156  mm,	Z =  -624.753  mm,
	W =   -59.653 deg,	P =    -5.711 deg,	R =    87.239 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   107.568  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1923.606  mm,	Y =   453.605  mm,	Z =  -631.572  mm,
	W =   -59.643 deg,	P =    -5.705 deg,	R =    87.244 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.896  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1907.015  mm,	Y =   424.103  mm,	Z =  -660.603  mm,
	W =   -59.641 deg,	P =    -5.704 deg,	R =    87.244 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.644  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1918.098  mm,	Y =   371.728  mm,	Z =  -673.779  mm,
	W =   -59.641 deg,	P =    -5.703 deg,	R =    87.244 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.644  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1914.764  mm,	Y =   302.486  mm,	Z =  -680.701  mm,
	W =   -59.641 deg,	P =    -5.703 deg,	R =    87.244 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.644  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1876.602  mm,	Y =   285.166  mm,	Z =  -681.734  mm,
	W =   -59.639 deg,	P =    -5.701 deg,	R =    87.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1593.132  mm,	Y =   286.823  mm,	Z =  -561.915  mm,
	W =   -59.639 deg,	P =    -5.701 deg,	R =    87.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1318.945  mm,	Y =   284.061  mm,	Z =  -402.358  mm,
	W =   -59.639 deg,	P =    -5.701 deg,	R =    87.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1409.275  mm,	Y =   258.515  mm,	Z =  -190.238  mm,
	W =   -59.639 deg,	P =    -5.701 deg,	R =    87.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1539.257  mm,	Y =   229.988  mm,	Z =    32.637  mm,
	W =   -59.639 deg,	P =    -5.701 deg,	R =    87.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1823.990  mm,	Y =   227.311  mm,	Z =   -77.574  mm,
	W =   -59.751 deg,	P =    -3.256 deg,	R =    88.680 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2055.590  mm,	Y =   232.793  mm,	Z =  -267.688  mm,
	W =   -59.804 deg,	P =     -.399 deg,	R =    90.345 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2051.821  mm,	Y =   259.395  mm,	Z =  -352.605  mm,
	W =   -59.827 deg,	P =     1.579 deg,	R =    91.544 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2049.280  mm,	Y =   273.874  mm,	Z =  -404.571  mm,
	W =   -59.765 deg,	P =     2.801 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2008.439  mm,	Y =   396.379  mm,	Z =  -472.633  mm,
	W =   -59.765 deg,	P =     2.801 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1934.607  mm,	Y =   394.900  mm,	Z =  -444.928  mm,
	W =   -59.734 deg,	P =     3.699 deg,	R =    92.734 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2022.884  mm,	Y =   396.531  mm,	Z =  -481.117  mm,
	W =   -59.763 deg,	P =     2.801 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.641  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2033.359  mm,	Y =   445.018  mm,	Z =  -475.201  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.641  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2022.921  mm,	Y =   512.644  mm,	Z =  -469.100  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.641  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2018.793  mm,	Y =   571.604  mm,	Z =  -475.173  mm,
	W =   -59.761 deg,	P =     2.803 deg,	R =    92.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2009.664  mm,	Y =   651.854  mm,	Z =  -489.475  mm,
	W =   -59.799 deg,	P =      .913 deg,	R =    91.109 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.641  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1938.329  mm,	Y =   650.116  mm,	Z =  -444.420  mm,
	W =   -59.797 deg,	P =      .914 deg,	R =    91.104 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2009.664  mm,	Y =   651.854  mm,	Z =  -489.475  mm,
	W =   -59.799 deg,	P =      .913 deg,	R =    91.109 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.641  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2018.793  mm,	Y =   571.604  mm,	Z =  -475.174  mm,
	W =   -56.117 deg,	P =     2.803 deg,	R =    92.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2036.227  mm,	Y =   511.955  mm,	Z =  -478.832  mm,
	W =   -53.747 deg,	P =     4.291 deg,	R =    90.179 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2036.895  mm,	Y =   444.946  mm,	Z =  -477.557  mm,
	W =   -56.303 deg,	P =     3.488 deg,	R =    91.180 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2030.697  mm,	Y =   333.680  mm,	Z =  -481.701  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.642  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2071.979  mm,	Y =   367.663  mm,	Z =  -362.457  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   175.642  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2000.785  mm,	Y =   388.318  mm,	Z =  -318.795  mm,
	W =   -59.760 deg,	P =     2.802 deg,	R =    92.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2110.133  mm,	Y =   358.310  mm,	Z =  -297.058  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.500  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2107.667  mm,	Y =   422.186  mm,	Z =  -300.187  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.500  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2103.203  mm,	Y =   493.030  mm,	Z =  -302.652  mm,
	W =   -59.763 deg,	P =     2.802 deg,	R =    92.209 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.500  mm
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2027.621  mm,	Y =   471.232  mm,	Z =  -331.945  mm,
	W =   -59.761 deg,	P =     2.803 deg,	R =    92.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   162.501  mm
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2003.423  mm,	Y =   470.990  mm,	Z =  -317.859  mm,
	W =   -59.761 deg,	P =     2.803 deg,	R =    92.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2027.621  mm,	Y =   471.232  mm,	Z =  -331.945  mm,
	W =   -59.761 deg,	P =     2.803 deg,	R =    92.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   162.501  mm
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2107.640  mm,	Y =   500.922  mm,	Z =  -346.616  mm,
	W =   -59.752 deg,	P =     2.805 deg,	R =    92.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.747  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2112.945  mm,	Y =   537.591  mm,	Z =  -336.869  mm,
	W =   -59.752 deg,	P =     2.805 deg,	R =    92.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.747  mm
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2095.472  mm,	Y =   537.380  mm,	Z =  -326.610  mm,
	W =   -59.753 deg,	P =     2.805 deg,	R =    92.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   152.522  mm
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2089.938  mm,	Y =   537.343  mm,	Z =  -323.385  mm,
	W =   -59.754 deg,	P =     2.805 deg,	R =    92.212 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.749  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2020.792  mm,	Y =   538.397  mm,	Z =  -283.252  mm,
	W =   -59.754 deg,	P =     2.805 deg,	R =    92.212 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2089.938  mm,	Y =   537.343  mm,	Z =  -323.385  mm,
	W =   -59.754 deg,	P =     2.805 deg,	R =    92.212 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.749  mm
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2095.472  mm,	Y =   537.380  mm,	Z =  -326.609  mm,
	W =   -59.753 deg,	P =     2.805 deg,	R =    92.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   152.522  mm
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2112.945  mm,	Y =   537.591  mm,	Z =  -336.869  mm,
	W =   -59.752 deg,	P =     2.805 deg,	R =    92.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.747  mm
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2099.964  mm,	Y =   582.123  mm,	Z =  -358.392  mm,
	W =   -59.704 deg,	P =     4.156 deg,	R =    93.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.747  mm
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2098.239  mm,	Y =   614.991  mm,	Z =  -360.785  mm,
	W =   -59.704 deg,	P =     4.156 deg,	R =    93.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.747  mm
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2027.870  mm,	Y =   586.073  mm,	Z =  -333.745  mm,
	W =   -59.704 deg,	P =     4.157 deg,	R =    93.003 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.580  mm
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2004.111  mm,	Y =   578.995  mm,	Z =  -321.794  mm,
	W =   -59.701 deg,	P =     4.158 deg,	R =    93.004 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    51.698  mm
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2037.564  mm,	Y =   872.272  mm,	Z =  -281.315  mm,
	W =   -59.756 deg,	P =     1.463 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2036.975  mm,	Y =   825.948  mm,	Z =  -275.180  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2044.035  mm,	Y =   683.977  mm,	Z =  -265.506  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2044.859  mm,	Y =   650.796  mm,	Z =  -264.661  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2045.946  mm,	Y =   607.156  mm,	Z =  -263.546  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2046.712  mm,	Y =   576.408  mm,	Z =  -262.760  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2106.014  mm,	Y =   585.003  mm,	Z =  -297.640  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2106.501  mm,	Y =   565.414  mm,	Z =  -297.140  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2105.534  mm,	Y =   525.584  mm,	Z =  -294.984  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2104.953  mm,	Y =   503.753  mm,	Z =  -293.773  mm,
	W =   -59.756 deg,	P =     1.464 deg,	R =    91.431 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[121]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2104.203  mm,	Y =   464.427  mm,	Z =  -291.762  mm,
	W =   -59.811 deg,	P =     2.421 deg,	R =    89.787 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[122]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2103.951  mm,	Y =   396.488  mm,	Z =  -288.891  mm,
	W =   -59.885 deg,	P =     3.276 deg,	R =    88.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[123]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2101.157  mm,	Y =   301.684  mm,	Z =  -283.463  mm,
	W =   -59.965 deg,	P =     4.011 deg,	R =    87.043 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[124]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2098.980  mm,	Y =   246.817  mm,	Z =  -279.996  mm,
	W =   -60.116 deg,	P =     5.098 deg,	R =    85.150 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[125]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2053.389  mm,	Y =   253.040  mm,	Z =  -253.693  mm,
	W =   -60.116 deg,	P =     5.098 deg,	R =    85.150 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[126]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1797.015  mm,	Y =   261.937  mm,	Z =  -104.733  mm,
	W =   -60.116 deg,	P =     5.099 deg,	R =    85.150 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.080  mm
};
P[127]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2019.020  mm,	Y =   308.908  mm,	Z =  1591.410  mm,
	W =   -18.555 deg,	P =   -45.337 deg,	R =    56.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.870  mm
};
P[128]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1987.880  mm,	Y =   469.473  mm,	Z =  1107.060  mm,
	W =   -99.723 deg,	P =   -16.315 deg,	R =    94.138 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.182  mm
};
P[129]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1661.823  mm,	Y =   307.141  mm,	Z =     5.295  mm,
	W =   -58.058 deg,	P =    16.596 deg,	R =    80.908 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   196.727  mm
};
P[130]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2025.860  mm,	Y =   608.218  mm,	Z =  -331.910  mm,
	W =   -59.701 deg,	P =     4.158 deg,	R =    93.004 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    54.580  mm
};
P[131]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1998.878  mm,	Y =   631.545  mm,	Z =  -318.003  mm,
	W =   -59.699 deg,	P =     4.159 deg,	R =    93.004 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[132]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2021.141  mm,	Y =   673.879  mm,	Z =  -327.516  mm,
	W =   -59.636 deg,	P =     5.390 deg,	R =    93.728 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    36.842  mm
};
P[133]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1999.816  mm,	Y =   708.047  mm,	Z =  -315.422  mm,
	W =   -59.633 deg,	P =     5.391 deg,	R =    93.728 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[134]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2034.778  mm,	Y =   708.397  mm,	Z =  -335.876  mm,
	W =   -59.446 deg,	P =     8.054 deg,	R =    95.306 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.171  mm
};
P[135]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2005.312  mm,	Y =   704.616  mm,	Z =  -343.214  mm,
	W =   -59.536 deg,	P =     6.894 deg,	R =    94.616 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.169  mm
};
P[136]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2022.157  mm,	Y =   711.069  mm,	Z =  -303.057  mm,
	W =   -59.618 deg,	P =     5.624 deg,	R =    93.866 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.169  mm
};
P[137]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2031.303  mm,	Y =   713.240  mm,	Z =  -287.317  mm,
	W =   -59.618 deg,	P =     5.624 deg,	R =    93.866 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.169  mm
};
P[138]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2046.736  mm,	Y =   716.903  mm,	Z =  -260.761  mm,
	W =   -59.652 deg,	P =     4.995 deg,	R =    93.496 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.169  mm
};
P[139]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2042.997  mm,	Y =   777.621  mm,	Z =  -266.144  mm,
	W =   -59.650 deg,	P =     4.996 deg,	R =    93.496 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.170  mm
};
P[140]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2037.283  mm,	Y =   871.156  mm,	Z =  -274.337  mm,
	W =   -59.719 deg,	P =     3.368 deg,	R =    92.542 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.170  mm
};
P[141]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2057.867  mm,	Y =   873.217  mm,	Z =  -254.860  mm,
	W =   -59.758 deg,	P =     1.946 deg,	R =    91.711 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.170  mm
};
P[142]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2056.514  mm,	Y =   918.370  mm,	Z =  -256.396  mm,
	W =   -59.773 deg,	P =      .878 deg,	R =    91.089 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.170  mm
};
P[143]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2088.796  mm,	Y =   932.280  mm,	Z =  -246.107  mm,
	W =   -59.771 deg,	P =      .879 deg,	R =    91.090 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.168  mm
};
P[144]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2054.236  mm,	Y =   931.932  mm,	Z =  -225.971  mm,
	W =   -59.771 deg,	P =      .879 deg,	R =    91.090 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[145]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2057.098  mm,	Y =   930.841  mm,	Z =  -300.536  mm,
	W =   -59.764 deg,	P =     1.461 deg,	R =    91.429 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    87.168  mm
};
P[146]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2005.587  mm,	Y =   927.105  mm,	Z =  -316.918  mm,
	W =   -59.761 deg,	P =     1.462 deg,	R =    91.429 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[147]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2031.537  mm,	Y =   896.628  mm,	Z =  -330.811  mm,
	W =   -59.761 deg,	P =     1.462 deg,	R =    91.429 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.582  mm
};
P[148]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2005.624  mm,	Y =   870.536  mm,	Z =  -318.132  mm,
	W =   -59.758 deg,	P =     1.462 deg,	R =    91.430 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[149]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2366.265  mm,	Y =   545.928  mm,	Z =   332.635  mm,
	W =   -90.538 deg,	P =    -2.692 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    78.915  mm
};
P[150]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2410.252  mm,	Y =   539.969  mm,	Z =   332.967  mm,
	W =   -90.536 deg,	P =    -2.691 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[151]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2405.785  mm,	Y =   408.253  mm,	Z =   326.924  mm,
	W =   -90.536 deg,	P =    -2.691 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[152]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2386.438  mm,	Y =   266.975  mm,	Z =   349.049  mm,
	W =   -90.536 deg,	P =    -2.691 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[153]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2387.755  mm,	Y =   213.794  mm,	Z =   500.835  mm,
	W =   -90.273 deg,	P =    -2.730 deg,	R =    76.759 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[154]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1651.983  mm,	Y =   387.238  mm,	Z =   512.821  mm,
	W =   -74.913 deg,	P =    -1.513 deg,	R =    92.487 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.225  mm
};
P[155]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2400.160  mm,	Y =   220.626  mm,	Z =   501.337  mm,
	W =   -90.015 deg,	P =    -2.744 deg,	R =    71.368 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[156]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2386.438  mm,	Y =   266.975  mm,	Z =   349.049  mm,
	W =   -90.536 deg,	P =    -2.691 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[157]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2405.785  mm,	Y =   408.253  mm,	Z =   326.924  mm,
	W =   -90.536 deg,	P =    -2.691 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
P[158]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2410.252  mm,	Y =   539.969  mm,	Z =   332.967  mm,
	W =   -90.536 deg,	P =    -2.691 deg,	R =    82.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.500  mm
};
/END
