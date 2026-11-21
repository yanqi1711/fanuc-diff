/PROG  ED54_OP130_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED54_OP130";
PROG_SIZE	= 13540;
CREATE		= DATE 26-03-11  TIME 14:41:52;
MODIFIED	= DATE 26-03-19  TIME 18:15:16;
FILE_NAME	= ED44_OP1;
VERSION		= 0;
LINE_COUNT	= 186;
MEMORY_SIZE	= 13840;
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
   4:   ;
   5:J PR[1:HOME] 100% CNT100    ;
   6:  CALL SEGMENT(2) ;
   7:   ;
   8:  !WITH R12 WELD ;
   9:  CALL ENTER_ZONE(5) ;
  10:J P[2] 100% CNT100    ;
  11:J P[3] 100% CNT100    ;
  12:J P[4] 100% CNT100    ;
  13:J P[5] 100% CNT80    ;
  14:J P[6] 100% CNT100    ;
  15:   ;
  16:  !R13_005 ;
  17:L P[1] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=5,ED=10]    ;
  18:  !R13_004 ;
  19:L P[7] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=4,ED=10]    ;
  20:  !R13_003 ;
  21:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=3,ED=10]    ;
  22:  !R13_002 ;
  23:L P[9] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=2,ED=10]    ;
  24:  !R13_001 ;
  25:L P[10] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=1,ED=10]    ;
  26:J P[11] 100% CNT100    ;
  27:   ;
  28:J P[68] 100% CNT100    ;
  29:  !R13_006 ;
  30:L P[67] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=6,ED=10]    ;
  31:   ;
  32:  !R13_007 ;
  33:L P[69] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=7,ED=10]    ;
  34:  !R13_008 ;
  35:L P[70] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=8,ED=10]    ;
  36:J P[71] 100% CNT100    ;
  37:   ;
  38:J P[13] 100% CNT100    ;
  39:  !R13_009 ;
  40:L P[12] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.3,S=9,ED=10]    ;
  41:  !R13_010 ;
  42:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.3,S=10,ED=10]    ;
  43:J P[15] 100% FINE    ;
  44:  !WITH R12 WELD ;
  45:  CALL EXIT_ZONE(5) ;
  46:   ;
  47:J P[17] 100% CNT100    ;
  48:  !R13_014 ;
  49:L P[16] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.3,S=14,ED=10]    ;
  50:J P[18] 100% CNT100    ;
  51:  !R13_015 ;
  52:L P[19] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.3,S=15,ED=10]    ;
  53:J P[20] 100% CNT100    ;
  54:   ;
  55:J P[24] 100% CNT100    ;
  56:J P[23] 100% CNT100    ;
  57:   ;
  58:J P[66] 100% CNT100    ;
  59:J P[63] 100% CNT100    ;
  60:J P[62] 100% CNT100    ;
  61:  !R13_018 ;
  62:L P[61] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.7,S=18,ED=10]    ;
  63:J P[64] 100% CNT100    ;
  64:J P[65] 100% CNT100    ;
  65:J P[60] 100% CNT100    ;
  66:J P[22] 100% CNT50    ;
  67:  !R13_012 ;
  68:L P[21] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.2,S=12,ED=10]    ;
  69:J P[25] 100% CNT50    ;
  70:J P[26] 100% CNT80    ;
  71:J P[28] 100% CNT100    ;
  72:  !R13_013 ;
  73:L P[27] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.2,S=13,ED=10]    ;
  74:J P[29] 100% CNT100    ;
  75:J P[31] 100% CNT100    ;
  76:  !R13_011 ;
  77:L P[30] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.3,S=11,ED=10]    ;
  78:J P[32] 100% CNT100    ;
  79:   ;
  80:J P[34] 100% CNT100    ;
  81:  !R13_016 ;
  82:L P[33] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.3,S=16,ED=10]    ;
  83:J P[35] 100% CNT100    ;
  84:   ;
  85:J P[36] 100% CNT100    ;
  86:  !R13_017 ;
  87:L P[38] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.2,S=17,ED=10]    ;
  88:J P[37] 100% CNT100    ;
  89:J P[39] 100% CNT100    ;
  90:J P[40] 100% CNT100    ;
  91:J P[49] 100% CNT100    ;
  92:J P[50] 100% CNT80    ;
  93:J P[51] 100% CNT80    ;
  94:   ;
  95:J P[117] 100% CNT80    ;
  96:J P[118] 100% CNT80    ;
  97:   ;
  98:J P[47] 100% CNT80    ;
  99:J P[45] 100% CNT80    ;
 100:  !R13_022 ;
 101:L P[44] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=22,ED=1]    ;
 102:J P[46] 100% CNT80    ;
 103:J P[48] 100% CNT50    ;
 104:   ;
 105:J P[55] 100% CNT50    ;
 106:J P[53] 100% CNT50    ;
 107:  !R13_019 ;
 108:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=19,ED=10]    ;
 109:J P[54] 100% CNT50    ;
 110:J P[56] 100% CNT50    ;
 111:   ;
 112:J P[43] 100% CNT50    ;
 113:  !R13_020 ;
 114:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=1.9,S=20,ED=10]    ;
 115:  !R13_021 ;
 116:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.7,S=21,ED=10]    ;
 117:J P[58] 100% CNT50    ;
 118:J P[41] 100% CNT80    ;
 119:J P[42] 100% CNT100    ;
 120:J P[75] 100% CNT100    ;
 121:J P[119] 100% CNT100    ;
 122:   ;
 123:J P[73] 100% CNT100    ;
 124:  !R13_023 ;
 125:L P[72] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.9,S=23,ED=10]    ;
 126:J P[74] 100% CNT100    ;
 127:   ;
 128:J P[77] 100% CNT100    ;
 129:  !R13_024 ;
 130:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=24,ED=10]    ;
 131:J P[78] 100% CNT80    ;
 132:J P[79] 100% CNT80    ;
 133:J P[80] 100% CNT80    ;
 134:   ;
 135:   ;
 136:J P[84] 100% CNT80    ;
 137:J P[82] 100% CNT100    ;
 138:  !R13_025 ;
 139:L P[81] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.7,S=25,ED=10]    ;
 140:J P[83] 100% CNT100    ;
 141:J P[85] 100% CNT100    ;
 142:J P[115] 100% CNT100    ;
 143:   ;
 144:  !R13_032 ;
 145:L P[114] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.4,S=28,ED=10]    ;
 146:   ;
 147:J P[87] 100% CNT100    ;
 148:  !R13_026 ;
 149:L P[86] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.0,S=26,ED=10]    ;
 150:J P[88] 100% CNT100    ;
 151:J P[90] 100% CNT100    ;
 152:  !R13_027 ;
 153:L P[89] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=27,ED=10]    ;
 154:  !R13_034 ;
 155:L P[91] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=28,ED=10]    ;
 156:  !R13_033 ;
 157:L P[116] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=28,ED=10]    ;
 158:J P[92] 100% CNT100    ;
 159:J P[94] 100% CNT100    ;
 160:  !R13_029 ;
 161:L P[93] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=29,ED=10]    ;
 162:J P[95] 100% CNT50    ;
 163:J P[97] 100% CNT50    ;
 164:  !R13_030 ;
 165:L P[96] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.5,S=30,ED=10]    ;
 166:J P[98] 100% CNT50    ;
 167:J P[99] 100% CNT50    ;
 168:J P[100] 100% CNT100    ;
 169:J P[101] 100% CNT100    ;
 170:J P[120] 100% CNT100    ;
 171:   ;
 172:J P[112] 100% CNT100    ;
 173:J P[111] 100% CNT100    ;
 174:J P[109] 100% CNT100    ;
 175:J P[107] 100% CNT100    ;
 176:J P[105] 100% CNT100    ;
 177:J P[103] 100% CNT100    ;
 178:  !R13_031 ;
 179:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.7,S=31,ED=10]    ;
 180:J P[104] 100% CNT100    ;
 181:J P[106] 100% CNT100    ;
 182:J P[108] 100% CNT100    ;
 183:J P[110] 100% CNT100    ;
 184:J P[113] 100% CNT100    ;
 185:J PR[1:HOME] 100% CNT100    ;
 186:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2074.314  mm,	Y =  -968.318  mm,	Z =   -22.943  mm,
	W =    61.516 deg,	P =    -3.475 deg,	R =   -88.424 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.168  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1692.039  mm,	Y =  -297.050  mm,	Z =   774.817  mm,
	W =    66.703 deg,	P =   -17.819 deg,	R =   -81.559 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.280  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1884.789  mm,	Y =  -177.213  mm,	Z =    99.698  mm,
	W =    73.606 deg,	P =   -11.309 deg,	R =   -75.391 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.846  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2186.059  mm,	Y =  -200.430  mm,	Z =   -93.355  mm,
	W =    59.421 deg,	P =    -2.551 deg,	R =   -66.113 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2191.219  mm,	Y =  -557.825  mm,	Z =  -120.176  mm,
	W =    61.343 deg,	P =    -1.121 deg,	R =   -84.102 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2148.846  mm,	Y =  -973.904  mm,	Z =   -62.895  mm,
	W =    61.750 deg,	P =    -5.146 deg,	R =   -91.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   181.002  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2088.247  mm,	Y =  -923.039  mm,	Z =     1.293  mm,
	W =    60.998 deg,	P =    -3.926 deg,	R =   -89.262 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.999  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2111.613  mm,	Y =  -919.893  mm,	Z =    43.485  mm,
	W =    60.587 deg,	P =    -4.055 deg,	R =   -89.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.999  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2127.859  mm,	Y =  -940.356  mm,	Z =    75.897  mm,
	W =    61.583 deg,	P =    -4.035 deg,	R =   -89.465 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    18.027  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2151.089  mm,	Y =  -936.079  mm,	Z =   123.388  mm,
	W =    58.649 deg,	P =    -8.355 deg,	R =   -86.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    21.749  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2215.396  mm,	Y =  -941.829  mm,	Z =    83.300  mm,
	W =    61.659 deg,	P =    -6.734 deg,	R =   -90.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   132.332  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2146.723  mm,	Y =  -510.692  mm,	Z =    50.977  mm,
	W =    59.894 deg,	P =    -5.684 deg,	R =   -88.655 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    18.333  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2193.234  mm,	Y =  -542.028  mm,	Z =    29.366  mm,
	W =    61.657 deg,	P =    -6.732 deg,	R =   -90.667 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.251  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2116.590  mm,	Y =  -510.518  mm,	Z =    -2.003  mm,
	W =    58.831 deg,	P =    -5.395 deg,	R =   -88.242 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.423  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2212.728  mm,	Y =  -550.895  mm,	Z =   -49.601  mm,
	W =    61.444 deg,	P =    -5.690 deg,	R =   -88.733 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   181.500  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2146.271  mm,	Y =  -431.698  mm,	Z =    51.699  mm,
	W =    59.454 deg,	P =    -5.303 deg,	R =   -88.075 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    27.002  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2253.021  mm,	Y =  -419.331  mm,	Z =    25.937  mm,
	W =    61.442 deg,	P =    -5.689 deg,	R =   -88.733 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   202.169  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2156.774  mm,	Y =  -430.398  mm,	Z =     8.889  mm,
	W =    61.442 deg,	P =    -5.689 deg,	R =   -88.733 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    63.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2114.841  mm,	Y =  -430.899  mm,	Z =    -2.805  mm,
	W =    61.579 deg,	P =    -1.860 deg,	R =   -90.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.417  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2207.376  mm,	Y =  -417.842  mm,	Z =   -53.277  mm,
	W =    61.579 deg,	P =    -1.860 deg,	R =   -90.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   166.250  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2002.897  mm,	Y =  -810.131  mm,	Z =  -193.430  mm,
	W =    56.330 deg,	P =     6.799 deg,	R =   -97.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.414  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2102.826  mm,	Y =  -815.369  mm,	Z =  -238.112  mm,
	W =    56.473 deg,	P =     7.552 deg,	R =   -95.982 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   155.000  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2114.549  mm,	Y =  -746.230  mm,	Z =  -222.049  mm,
	W =    56.648 deg,	P =     5.173 deg,	R =   -94.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   155.000  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2153.468  mm,	Y =  -469.098  mm,	Z =  -208.357  mm,
	W =    56.648 deg,	P =     5.173 deg,	R =   -94.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2102.826  mm,	Y =  -815.370  mm,	Z =  -238.112  mm,
	W =    56.473 deg,	P =     7.552 deg,	R =   -95.982 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   155.000  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2114.548  mm,	Y =  -746.230  mm,	Z =  -222.050  mm,
	W =    56.648 deg,	P =     5.173 deg,	R =   -94.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   155.000  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2003.498  mm,	Y =  -638.911  mm,	Z =  -193.949  mm,
	W =    57.231 deg,	P =     8.284 deg,	R =   -94.659 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    29.998  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2102.829  mm,	Y =  -644.625  mm,	Z =  -236.161  mm,
	W =    56.480 deg,	P =     7.471 deg,	R =   -95.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   189.083  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2102.829  mm,	Y =  -644.625  mm,	Z =  -236.161  mm,
	W =    56.480 deg,	P =     7.471 deg,	R =   -95.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   189.083  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2043.206  mm,	Y =  -512.913  mm,	Z =  -127.777  mm,
	W =    58.478 deg,	P =     7.714 deg,	R =   -95.530 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.748  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2138.769  mm,	Y =  -539.676  mm,	Z =  -195.458  mm,
	W =    56.477 deg,	P =     7.472 deg,	R =   -95.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.748  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2138.769  mm,	Y =  -539.676  mm,	Z =  -195.458  mm,
	W =    56.477 deg,	P =     7.472 deg,	R =   -95.928 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.748  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2042.603  mm,	Y =  -434.800  mm,	Z =  -129.472  mm,
	W =    60.095 deg,	P =     8.388 deg,	R =   -94.330 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    31.082  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2131.131  mm,	Y =  -407.890  mm,	Z =  -194.143  mm,
	W =    60.562 deg,	P =     7.327 deg,	R =   -95.847 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.082  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2131.131  mm,	Y =  -407.890  mm,	Z =  -194.143  mm,
	W =    60.562 deg,	P =     7.327 deg,	R =   -95.847 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.082  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2114.072  mm,	Y =  -338.226  mm,	Z =  -215.528  mm,
	W =    60.562 deg,	P =     7.328 deg,	R =   -95.847 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.082  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2114.072  mm,	Y =  -338.226  mm,	Z =  -215.528  mm,
	W =    60.562 deg,	P =     7.328 deg,	R =   -95.847 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.082  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2005.894  mm,	Y =  -327.568  mm,	Z =  -191.241  mm,
	W =    57.901 deg,	P =    11.768 deg,	R =   -98.410 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.498  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2131.447  mm,	Y =  -173.603  mm,	Z =  -167.062  mm,
	W =    61.504 deg,	P =     6.061 deg,	R =   -82.344 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   191.487  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2136.423  mm,	Y =   -27.417  mm,	Z =  -130.619  mm,
	W =    61.333 deg,	P =      .122 deg,	R =   -62.437 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1983.629  mm,	Y =  -174.118  mm,	Z =  -431.653  mm,
	W =    64.098 deg,	P =    -2.935 deg,	R =   -83.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1964.176  mm,	Y =    30.881  mm,	Z =  -435.185  mm,
	W =    64.160 deg,	P =     -.078 deg,	R =   -71.753 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2019.058  mm,	Y =  -305.603  mm,	Z =  -384.206  mm,
	W =    64.098 deg,	P =    -2.936 deg,	R =   -83.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1857.818  mm,	Y =  -612.218  mm,	Z =  -456.813  mm,
	W =    57.489 deg,	P =     8.400 deg,	R =   -95.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.501  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1975.443  mm,	Y =  -601.055  mm,	Z =  -526.158  mm,
	W =    58.908 deg,	P =    10.930 deg,	R =   -91.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.833  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1975.443  mm,	Y =  -601.055  mm,	Z =  -526.158  mm,
	W =    58.908 deg,	P =    10.930 deg,	R =   -91.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.833  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1978.416  mm,	Y =  -458.780  mm,	Z =  -498.718  mm,
	W =    58.906 deg,	P =    10.930 deg,	R =   -91.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.831  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2001.170  mm,	Y =  -433.922  mm,	Z =  -456.293  mm,
	W =    59.362 deg,	P =     5.728 deg,	R =   -88.068 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.831  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2000.592  mm,	Y =   212.258  mm,	Z =  -147.427  mm,
	W =    61.274 deg,	P =    -3.491 deg,	R =   -60.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1857.378  mm,	Y =   177.232  mm,	Z =  -409.200  mm,
	W =    61.274 deg,	P =    -3.490 deg,	R =   -60.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1912.107  mm,	Y =   -45.148  mm,	Z =  -410.929  mm,
	W =    61.268 deg,	P =     7.553 deg,	R =   -72.803 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.062  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1931.836  mm,	Y =  -429.065  mm,	Z =  -322.962  mm,
	W =    57.873 deg,	P =    -5.815 deg,	R =   -86.882 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.829  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1953.515  mm,	Y =  -429.261  mm,	Z =  -336.482  mm,
	W =    57.494 deg,	P =    -2.531 deg,	R =   -81.681 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    64.079  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1953.515  mm,	Y =  -429.261  mm,	Z =  -336.482  mm,
	W =    57.494 deg,	P =    -2.531 deg,	R =   -81.681 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    64.079  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2004.872  mm,	Y =  -430.428  mm,	Z =  -433.839  mm,
	W =    58.683 deg,	P =     1.893 deg,	R =   -82.718 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.483  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2004.872  mm,	Y =  -430.428  mm,	Z =  -433.839  mm,
	W =    58.683 deg,	P =     1.893 deg,	R =   -82.718 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.483  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1936.247  mm,	Y =  -313.989  mm,	Z =  -319.935  mm,
	W =    62.004 deg,	P =    -6.175 deg,	R =   -82.316 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    30.417  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2019.058  mm,	Y =  -305.603  mm,	Z =  -384.206  mm,
	W =    64.098 deg,	P =    -2.936 deg,	R =   -83.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1917.328  mm,	Y =  -293.166  mm,	Z =  -344.832  mm,
	W =    60.575 deg,	P =    -3.111 deg,	R =   -83.584 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.465  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2097.547  mm,	Y =  -865.734  mm,	Z =  -244.828  mm,
	W =    56.473 deg,	P =     7.552 deg,	R =   -95.982 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.500  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1926.300  mm,	Y =  -867.282  mm,	Z =  -316.286  mm,
	W =    58.613 deg,	P =    20.502 deg,	R =  -105.167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    40.501  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1986.990  mm,	Y =  -866.876  mm,	Z =  -350.970  mm,
	W =    59.090 deg,	P =    20.502 deg,	R =  -105.167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.167  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2022.335  mm,	Y =  -889.651  mm,	Z =  -284.272  mm,
	W =    60.158 deg,	P =    14.781 deg,	R =  -101.651 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.167  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1986.990  mm,	Y =  -866.876  mm,	Z =  -350.970  mm,
	W =    59.090 deg,	P =    20.502 deg,	R =  -105.167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.167  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2022.334  mm,	Y =  -889.651  mm,	Z =  -284.272  mm,
	W =    60.158 deg,	P =    14.781 deg,	R =  -101.651 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.167  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2097.547  mm,	Y =  -865.733  mm,	Z =  -244.828  mm,
	W =    56.473 deg,	P =     7.553 deg,	R =   -95.982 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.500  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2180.967  mm,	Y =  -826.389  mm,	Z =   122.147  mm,
	W =    58.257 deg,	P =    -8.354 deg,	R =   -86.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.416  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2232.622  mm,	Y =  -829.638  mm,	Z =    76.941  mm,
	W =    61.180 deg,	P =    -8.354 deg,	R =   -86.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   165.667  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2161.638  mm,	Y =  -796.348  mm,	Z =    91.133  mm,
	W =    56.899 deg,	P =    -8.997 deg,	R =   -87.318 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    14.249  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2152.948  mm,	Y =  -826.075  mm,	Z =    72.049  mm,
	W =    58.319 deg,	P =    -8.870 deg,	R =   -87.214 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    19.332  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2210.671  mm,	Y =  -826.900  mm,	Z =    40.881  mm,
	W =    61.180 deg,	P =    -8.354 deg,	R =   -86.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.499  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1804.709  mm,	Y =  -429.773  mm,	Z =  -551.694  mm,
	W =    59.689 deg,	P =     -.690 deg,	R =   -84.310 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.168  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1854.637  mm,	Y =  -408.282  mm,	Z =  -582.190  mm,
	W =    59.601 deg,	P =    -4.203 deg,	R =   -82.252 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.955  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1854.637  mm,	Y =  -408.282  mm,	Z =  -582.190  mm,
	W =    59.601 deg,	P =    -4.203 deg,	R =   -82.252 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.955  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1906.532  mm,	Y =    64.389  mm,	Z =  -526.633  mm,
	W =    64.084 deg,	P =    -4.212 deg,	R =   -69.747 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1835.472  mm,	Y =  -295.647  mm,	Z =  -491.928  mm,
	W =    59.882 deg,	P =   -10.895 deg,	R =   -82.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.288  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1885.421  mm,	Y =  -297.566  mm,	Z =  -533.659  mm,
	W =    59.882 deg,	P =   -10.895 deg,	R =   -82.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.288  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1885.421  mm,	Y =  -297.566  mm,	Z =  -533.659  mm,
	W =    59.882 deg,	P =   -10.895 deg,	R =   -82.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.288  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1853.023  mm,	Y =  -379.052  mm,	Z =  -695.494  mm,
	W =    60.617 deg,	P =     4.435 deg,	R =   -92.409 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   166.954  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1789.403  mm,	Y =  -474.338  mm,	Z =  -739.672  mm,
	W =    60.617 deg,	P =     4.436 deg,	R =   -92.409 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   198.333  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1731.089  mm,	Y =  -859.130  mm,	Z =  -658.522  mm,
	W =    60.361 deg,	P =    -5.178 deg,	R =   -89.229 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    32.455  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1768.243  mm,	Y =  -855.948  mm,	Z =  -701.299  mm,
	W =    60.706 deg,	P =     -.930 deg,	R =   -89.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.500  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1768.242  mm,	Y =  -855.947  mm,	Z =  -701.300  mm,
	W =    60.706 deg,	P =     -.930 deg,	R =   -89.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.000  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1752.450  mm,	Y =  -712.359  mm,	Z =  -687.376  mm,
	W =    60.640 deg,	P =    -3.796 deg,	R =   -87.783 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.122  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1752.451  mm,	Y =  -712.359  mm,	Z =  -687.376  mm,
	W =    60.639 deg,	P =    -3.796 deg,	R =   -87.783 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.667  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1739.704  mm,	Y =  -606.261  mm,	Z =  -660.218  mm,
	W =    60.590 deg,	P =    -4.934 deg,	R =   -87.140 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.372  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1771.247  mm,	Y =  -608.467  mm,	Z =  -683.030  mm,
	W =    60.600 deg,	P =    -4.727 deg,	R =   -87.257 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.039  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1771.247  mm,	Y =  -608.467  mm,	Z =  -683.030  mm,
	W =    60.600 deg,	P =    -4.727 deg,	R =   -87.257 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.039  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1725.923  mm,	Y =  -482.922  mm,	Z =  -677.509  mm,
	W =    60.690 deg,	P =     -.640 deg,	R =   -88.877 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    34.240  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1783.875  mm,	Y =  -482.990  mm,	Z =  -717.245  mm,
	W =    60.698 deg,	P =     -.931 deg,	R =   -89.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.490  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1707.192  mm,	Y =  -457.761  mm,	Z =  -714.715  mm,
	W =    60.614 deg,	P =     3.736 deg,	R =   -92.305 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.656  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1744.037  mm,	Y =  -454.887  mm,	Z =  -730.443  mm,
	W =    60.629 deg,	P =     3.858 deg,	R =   -92.087 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    64.406  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1746.953  mm,	Y =  -345.455  mm,	Z =  -643.450  mm,
	W =    60.629 deg,	P =     3.858 deg,	R =   -92.087 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.823  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1793.172  mm,	Y =  -345.389  mm,	Z =  -669.387  mm,
	W =    60.629 deg,	P =     3.858 deg,	R =   -92.087 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.573  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1844.624  mm,	Y =  -345.314  mm,	Z =  -698.260  mm,
	W =    60.629 deg,	P =     3.858 deg,	R =   -92.087 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   167.073  mm
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1723.429  mm,	Y =  -296.455  mm,	Z =  -687.971  mm,
	W =    60.629 deg,	P =     3.859 deg,	R =   -92.087 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.990  mm
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1803.003  mm,	Y =  -320.269  mm,	Z =  -734.733  mm,
	W =    60.629 deg,	P =     3.859 deg,	R =   -92.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1803.003  mm,	Y =  -320.269  mm,	Z =  -734.733  mm,
	W =    60.629 deg,	P =     3.859 deg,	R =   -92.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1791.346  mm,	Y =  -173.474  mm,	Z =  -715.281  mm,
	W =    60.629 deg,	P =     3.860 deg,	R =   -92.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1784.929  mm,	Y =  -156.469  mm,	Z =  -699.754  mm,
	W =    63.148 deg,	P =    12.303 deg,	R =   -75.925 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1605.926  mm,	Y =  -109.468  mm,	Z =  -493.757  mm,
	W =    63.148 deg,	P =    12.303 deg,	R =   -75.925 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1805.155  mm,	Y =  -274.061  mm,	Z =  -520.427  mm,
	W =   -97.975 deg,	P =    63.040 deg,	R =   -11.539 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.947  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1779.334  mm,	Y =  -321.280  mm,	Z =  -527.929  mm,
	W =   -97.976 deg,	P =    63.040 deg,	R =   -11.539 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1779.334  mm,	Y =  -321.280  mm,	Z =  -527.929  mm,
	W =   -97.976 deg,	P =    63.040 deg,	R =   -11.539 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1605.622  mm,	Y =  -301.745  mm,	Z =  -431.369  mm,
	W =   -97.976 deg,	P =    63.040 deg,	R =   -11.539 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1605.622  mm,	Y =  -301.745  mm,	Z =  -431.369  mm,
	W =   -97.976 deg,	P =    63.040 deg,	R =   -11.539 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1554.581  mm,	Y =   -65.432  mm,	Z =  -308.515  mm,
	W =   -61.426 deg,	P =    59.253 deg,	R =    29.756 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1554.581  mm,	Y =   -65.432  mm,	Z =  -308.515  mm,
	W =   -61.426 deg,	P =    59.253 deg,	R =    29.756 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.802  mm,	Y =   860.186  mm,	Z =    28.927  mm,
	W =   -63.502 deg,	P =    39.804 deg,	R =    78.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.802  mm,	Y =   860.186  mm,	Z =    28.927  mm,
	W =   -63.502 deg,	P =    39.804 deg,	R =    78.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1972.788  mm,	Y =  1162.898  mm,	Z =   615.575  mm,
	W =   -70.331 deg,	P =     8.091 deg,	R =    68.620 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1907.773  mm,	Y =   268.273  mm,	Z =  1584.657  mm,
	W =    67.378 deg,	P =   -64.396 deg,	R =   -71.171 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   167.174  mm
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1972.788  mm,	Y =  1162.898  mm,	Z =   615.575  mm,
	W =   -70.331 deg,	P =     8.091 deg,	R =    68.620 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   114.447  mm
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1737.509  mm,	Y =  -653.057  mm,	Z =  -660.123  mm,
	W =    60.590 deg,	P =    -4.933 deg,	R =   -87.141 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     8.622  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1771.247  mm,	Y =  -608.467  mm,	Z =  -683.030  mm,
	W =    60.600 deg,	P =    -4.727 deg,	R =   -87.257 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.039  mm
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1707.494  mm,	Y =  -445.283  mm,	Z =  -713.903  mm,
	W =    60.626 deg,	P =     3.862 deg,	R =   -92.091 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    19.005  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1939.683  mm,	Y =  -163.383  mm,	Z =  -414.244  mm,
	W =    60.415 deg,	P =    14.796 deg,	R =   -84.443 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.831  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1929.620  mm,	Y =  -365.281  mm,	Z =  -449.696  mm,
	W =    58.906 deg,	P =    10.930 deg,	R =   -91.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.831  mm
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1807.313  mm,	Y =    46.136  mm,	Z =  -624.213  mm,
	W =    59.414 deg,	P =    -7.342 deg,	R =   -80.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   172.955  mm
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1457.785  mm,	Y =   194.197  mm,	Z =  -273.615  mm,
	W =    72.774 deg,	P =    21.501 deg,	R =   -74.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
/END
