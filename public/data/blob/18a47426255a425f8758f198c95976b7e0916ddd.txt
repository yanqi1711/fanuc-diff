/PROG  ED46_OP130_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED46_OP130";
PROG_SIZE	= 12014;
CREATE		= DATE 26-03-14  TIME 21:18:34;
MODIFIED	= DATE 26-03-19  TIME 18:13:36;
FILE_NAME	= ED44_OP1;
VERSION		= 0;
LINE_COUNT	= 162;
MEMORY_SIZE	= 12410;
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
  10:J P[4] 100% CNT100    ;
  11:J P[5] 100% CNT100    ;
  12:J P[6] 100% CNT100    ;
  13:J P[3] 100% CNT100    ;
  14:J P[2] 100% CNT100    ;
  15:  !R13_005 ;
  16:  //L P[1] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=5,ED=10]    ;
  17:  !R13_004 ;
  18:L P[7] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=4,ED=10]    ;
  19:  !R13_003 ;
  20:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=3,ED=10]    ;
  21:  !R13_002 ;
  22:L P[9] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=2,ED=10]    ;
  23:  !R13_001 ;
  24:L P[10] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=1,ED=10]    ;
  25:J P[11] 100% CNT100    ;
  26:   ;
  27:J P[68] 100% CNT100    ;
  28:  !R13_006 ;
  29:L P[67] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=6,ED=10]    ;
  30:   ;
  31:  !R13_007 ;
  32:L P[69] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=7,ED=10]    ;
  33:  !R13_008 ;
  34:L P[70] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=8,ED=10]    ;
  35:J P[71] 100% CNT100    ;
  36:J P[13] 100% CNT100    ;
  37:J P[12] 100% CNT100    ;
  38:J P[24] 100% CNT100    ;
  39:J P[23] 100% CNT100    ;
  40:   ;
  41:J P[66] 100% CNT100    ;
  42:J P[63] 100% CNT100    ;
  43:J P[62] 100% CNT100    ;
  44:  !R13_018 ;
  45:L P[61] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.7,S=18,ED=10]    ;
  46:J P[64] 100% CNT100    ;
  47:J P[65] 100% CNT100    ;
  48:J P[60] 100% CNT100    ;
  49:J P[22] 100% CNT50    ;
  50:  !R13_012 ;
  51:L P[21] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.2,S=12,ED=10]    ;
  52:J P[25] 100% CNT50    ;
  53:J P[26] 100% CNT80    ;
  54:J P[28] 100% FINE    ;
  55:   ;
  56:  !WITH R12 WELD ;
  57:  CALL EXIT_ZONE(5) ;
  58:   ;
  59:  !R13_013 ;
  60:L P[27] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.2,S=13,ED=10]    ;
  61:J P[29] 100% CNT100    ;
  62:J P[14] 100% CNT80    ;
  63:J P[36] 100% CNT100    ;
  64:  !R13_017 ;
  65:L P[38] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.2,S=17,ED=10]    ;
  66:J P[37] 100% CNT100    ;
  67:J P[15] 100% CNT100    ;
  68:J P[16] 100% CNT100    ;
  69:J P[17] 100% CNT100    ;
  70:J P[18] 100% CNT80    ;
  71:J P[19] 100% CNT80    ;
  72:   ;
  73:J P[20] 100% CNT80    ;
  74:   ;
  75:J P[49] 100% CNT80    ;
  76:J P[47] 100% CNT80    ;
  77:J P[45] 100% CNT80    ;
  78:  !R13_022 ;
  79:L P[44] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.5,S=22,ED=1]    ;
  80:J P[46] 100% CNT80    ;
  81:J P[48] 100% CNT50    ;
  82:   ;
  83:J P[55] 100% CNT50    ;
  84:J P[53] 100% CNT50    ;
  85:  !R13_019 ;
  86:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=19,ED=10]    ;
  87:J P[54] 100% CNT50    ;
  88:J P[56] 100% CNT50    ;
  89:   ;
  90:J P[43] 100% CNT50    ;
  91:  !R13_020 ;
  92:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=1.9,S=20,ED=10]    ;
  93:  !R13_021 ;
  94:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.7,S=21,ED=10]    ;
  95:J P[58] 100% CNT50    ;
  96:   ;
  97:J P[30] 100% CNT80    ;
  98:J P[31] 100% CNT100    ;
  99:J P[32] 100% CNT100    ;
 100:J P[33] 100% CNT100    ;
 101:   ;
 102:J P[73] 100% CNT100    ;
 103:  !R13_023 ;
 104:L P[72] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.9,S=23,ED=10]    ;
 105:J P[74] 100% CNT100    ;
 106:   ;
 107:J P[77] 100% CNT100    ;
 108:  !R13_024 ;
 109:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=24,ED=10]    ;
 110:J P[78] 100% CNT80    ;
 111:J P[79] 100% CNT80    ;
 112:J P[80] 100% CNT80    ;
 113:J P[115] 100% CNT50    ;
 114:J P[114] 100% CNT50    ;
 115:J P[82] 100% CNT100    ;
 116:  !R13_025 ;
 117:L P[81] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.7,S=25,ED=10]    ;
 118:J P[83] 100% CNT100    ;
 119:J P[84] 100% CNT80    ;
 120:J P[116] 100% CNT100    ;
 121:J P[87] 100% CNT100    ;
 122:  !R13_026 ;
 123:L P[86] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.0,S=26,ED=10]    ;
 124:J P[88] 100% CNT100    ;
 125:J P[117] 100% CNT100    ;
 126:  !R13_032 ;
 127:L P[85] 2000mm/sec CNT50
    :  SPOT[SD=1,P=8,t=4.0,S=26,ED=10]    ;
 128:J P[118] 100% CNT100    ;
 129:J P[90] 100% CNT100    ;
 130:  !R13_027 ;
 131:L P[89] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=27,ED=10]    ;
 132:  !R13_028 ;
 133:L P[91] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=28,ED=10]    ;
 134:J P[92] 100% CNT100    ;
 135:J P[94] 100% CNT100    ;
 136:  !R13_029 ;
 137:L P[93] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=29,ED=10]    ;
 138:J P[95] 100% CNT50    ;
 139:J P[97] 100% CNT50    ;
 140:  !R13_030 ;
 141:L P[96] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.5,S=30,ED=10]    ;
 142:J P[98] 100% CNT50    ;
 143:J P[34] 100% CNT50    ;
 144:J P[35] 100% CNT100    ;
 145:J P[39] 100% CNT100    ;
 146:J P[40] 100% CNT100    ;
 147:   ;
 148:J P[112] 100% CNT100    ;
 149:J P[111] 100% CNT100    ;
 150:J P[109] 100% CNT100    ;
 151:J P[107] 100% CNT100    ;
 152:J P[105] 100% CNT100    ;
 153:J P[103] 100% CNT100    ;
 154:  !R13_031 ;
 155:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.7,S=31,ED=10]    ;
 156:J P[104] 100% CNT100    ;
 157:J P[106] 100% CNT100    ;
 158:J P[108] 100% CNT100    ;
 159:J P[110] 100% CNT100    ;
 160:J P[113] 100% CNT100    ;
 161:J PR[1:HOME] 100% CNT100    ;
 162:  CALL FINISHSEG(2) ;
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
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2148.846  mm,	Y =  -973.904  mm,	Z =   -62.895  mm,
	W =    61.750 deg,	P =    -5.146 deg,	R =   -91.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   181.002  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2191.219  mm,	Y =  -557.825  mm,	Z =  -120.176  mm,
	W =    61.343 deg,	P =    -1.121 deg,	R =   -84.102 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1692.039  mm,	Y =  -297.050  mm,	Z =   774.817  mm,
	W =    66.703 deg,	P =   -17.819 deg,	R =   -81.559 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.280  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1884.789  mm,	Y =  -177.213  mm,	Z =    99.698  mm,
	W =    73.606 deg,	P =   -11.309 deg,	R =   -75.391 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.846  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2186.059  mm,	Y =  -200.430  mm,	Z =   -93.355  mm,
	W =    59.421 deg,	P =    -2.551 deg,	R =   -66.113 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2088.261  mm,	Y =  -923.037  mm,	Z =     1.318  mm,
	W =    61.569 deg,	P =    -3.926 deg,	R =   -89.262 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.999  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2111.637  mm,	Y =  -919.891  mm,	Z =    43.528  mm,
	W =    61.585 deg,	P =    -4.055 deg,	R =   -89.500 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.999  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2125.713  mm,	Y =  -940.474  mm,	Z =    74.544  mm,
	W =    61.583 deg,	P =    -4.035 deg,	R =   -89.465 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.999  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2149.382  mm,	Y =  -936.881  mm,	Z =   118.690  mm,
	W =    61.179 deg,	P =    -8.355 deg,	R =   -86.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.999  mm
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
	X =  2184.211  mm,	Y =  -678.156  mm,	Z =  -117.460  mm,
	W =    56.648 deg,	P =     5.173 deg,	R =   -94.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   155.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2178.909  mm,	Y =  -726.787  mm,	Z =   -80.549  mm,
	W =    57.551 deg,	P =     2.225 deg,	R =   -93.582 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   150.740  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2118.128  mm,	Y =  -399.046  mm,	Z =  -218.179  mm,
	W =    59.799 deg,	P =     7.347 deg,	R =   -95.845 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   174.756  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2131.447  mm,	Y =  -173.603  mm,	Z =  -167.062  mm,
	W =    61.504 deg,	P =     6.061 deg,	R =   -82.344 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   191.487  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2136.423  mm,	Y =   -27.417  mm,	Z =  -130.619  mm,
	W =    61.333 deg,	P =      .122 deg,	R =   -62.437 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2000.592  mm,	Y =   212.258  mm,	Z =  -147.427  mm,
	W =    61.274 deg,	P =    -3.491 deg,	R =   -60.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1857.378  mm,	Y =   177.232  mm,	Z =  -409.200  mm,
	W =    61.274 deg,	P =    -3.490 deg,	R =   -60.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.502  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1912.107  mm,	Y =   -45.148  mm,	Z =  -410.929  mm,
	W =    61.268 deg,	P =     7.553 deg,	R =   -72.803 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.062  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1939.683  mm,	Y =  -163.383  mm,	Z =  -414.244  mm,
	W =    60.415 deg,	P =    14.796 deg,	R =   -84.443 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.831  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2001.252  mm,	Y =  -809.801  mm,	Z =  -194.098  mm,
	W =    56.428 deg,	P =     7.325 deg,	R =   -96.328 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.997  mm
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
	X =  2117.432  mm,	Y =  -663.716  mm,	Z =  -219.867  mm,
	W =    56.648 deg,	P =     5.173 deg,	R =   -94.401 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   155.000  mm
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
	X =  2002.417  mm,	Y =  -639.604  mm,	Z =  -195.193  mm,
	W =    56.480 deg,	P =     7.471 deg,	R =   -95.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.167  mm
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
	X =  1983.629  mm,	Y =  -174.118  mm,	Z =  -431.653  mm,
	W =    64.098 deg,	P =    -2.935 deg,	R =   -83.220 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1964.176  mm,	Y =    30.881  mm,	Z =  -435.185  mm,
	W =    64.160 deg,	P =     -.078 deg,	R =   -71.753 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1906.532  mm,	Y =    64.389  mm,	Z =  -526.633  mm,
	W =    64.084 deg,	P =    -4.212 deg,	R =   -69.747 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   212.500  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1807.313  mm,	Y =    46.136  mm,	Z =  -624.213  mm,
	W =    59.414 deg,	P =    -7.342 deg,	R =   -80.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   172.955  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1791.346  mm,	Y =  -173.474  mm,	Z =  -715.281  mm,
	W =    60.629 deg,	P =     3.860 deg,	R =   -92.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1784.929  mm,	Y =  -156.469  mm,	Z =  -699.754  mm,
	W =    63.148 deg,	P =    12.303 deg,	R =   -75.925 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
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
	X =  2005.461  mm,	Y =  -320.179  mm,	Z =  -192.185  mm,
	W =    57.901 deg,	P =    11.768 deg,	R =   -98.410 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    60.998  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1605.926  mm,	Y =  -109.468  mm,	Z =  -493.757  mm,
	W =    63.148 deg,	P =    12.303 deg,	R =   -75.925 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1457.785  mm,	Y =   194.197  mm,	Z =  -273.615  mm,
	W =    72.774 deg,	P =    21.501 deg,	R =   -74.149 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.573  mm
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
	X =  1857.829  mm,	Y =  -608.607  mm,	Z =  -455.957  mm,
	W =    59.889 deg,	P =     9.429 deg,	R =   -93.727 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    52.500  mm
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
	X =  1929.620  mm,	Y =  -365.281  mm,	Z =  -449.696  mm,
	W =    58.906 deg,	P =    10.930 deg,	R =   -91.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.831  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1931.979  mm,	Y =  -431.698  mm,	Z =  -322.694  mm,
	W =    57.886 deg,	P =    -5.897 deg,	R =   -87.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    86.329  mm
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
	X =  1935.791  mm,	Y =  -314.070  mm,	Z =  -319.870  mm,
	W =    62.055 deg,	P =    -6.421 deg,	R =   -82.780 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.334  mm
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
	X =  1917.531  mm,	Y =  -294.985  mm,	Z =  -344.733  mm,
	W =    60.575 deg,	P =    -3.111 deg,	R =   -83.584 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.465  mm
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
	X =  1926.429  mm,	Y =  -863.359  mm,	Z =  -317.674  mm,
	W =    59.090 deg,	P =    20.502 deg,	R =  -105.167 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.667  mm
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
	X =  2173.450  mm,	Y =  -828.717  mm,	Z =   109.057  mm,
	W =    61.180 deg,	P =    -8.354 deg,	R =   -86.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.499  mm
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
	X =  2157.729  mm,	Y =  -795.678  mm,	Z =    86.690  mm,
	W =    61.180 deg,	P =    -8.354 deg,	R =   -86.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.499  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2151.277  mm,	Y =  -827.039  mm,	Z =    65.881  mm,
	W =    61.180 deg,	P =    -8.354 deg,	R =   -86.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.499  mm
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
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1835.321  mm,	Y =  -294.429  mm,	Z =  -492.165  mm,
	W =    59.882 deg,	P =   -10.895 deg,	R =   -82.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    61.372  mm
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
	J1=   166.954  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1721.916  mm,	Y =  -856.008  mm,	Z =  -674.735  mm,
	W =    60.706 deg,	P =     -.930 deg,	R =   -89.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.372  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1768.243  mm,	Y =  -855.948  mm,	Z =  -701.299  mm,
	W =    60.706 deg,	P =     -.930 deg,	R =   -89.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.622  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1768.243  mm,	Y =  -855.948  mm,	Z =  -701.299  mm,
	W =    60.706 deg,	P =     -.930 deg,	R =   -89.394 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.622  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1753.002  mm,	Y =  -754.707  mm,	Z =  -690.012  mm,
	W =    60.647 deg,	P =    -2.771 deg,	R =   -88.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.500  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1727.899  mm,	Y =  -536.873  mm,	Z =  -683.597  mm,
	W =    60.740 deg,	P =    -2.397 deg,	R =   -88.682 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.100  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1739.850  mm,	Y =  -608.513  mm,	Z =  -665.416  mm,
	W =    60.590 deg,	P =    -4.934 deg,	R =   -87.140 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.872  mm
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
	X =  1724.574  mm,	Y =  -483.075  mm,	Z =  -683.967  mm,
	W =    60.698 deg,	P =     -.931 deg,	R =   -89.395 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.240  mm
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
	X =  1705.677  mm,	Y =  -454.095  mm,	Z =  -721.490  mm,
	W =    60.629 deg,	P =     3.858 deg,	R =   -92.087 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.073  mm
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
	X =  1748.752  mm,	Y =  -767.913  mm,	Z =  -682.646  mm,
	W =    60.815 deg,	P =    -2.780 deg,	R =   -88.649 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   183.518  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1757.582  mm,	Y =  -700.468  mm,	Z =  -706.670  mm,
	W =    61.042 deg,	P =    -1.306 deg,	R =   -89.830 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   215.861  mm
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1750.624  mm,	Y =  -675.309  mm,	Z =  -693.927  mm,
	W =    60.645 deg,	P =    -2.769 deg,	R =   -88.324 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.502  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1752.267  mm,	Y =  -536.864  mm,	Z =  -697.286  mm,
	W =    60.739 deg,	P =    -2.395 deg,	R =   -88.682 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    68.099  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1752.267  mm,	Y =  -536.864  mm,	Z =  -697.286  mm,
	W =    60.739 deg,	P =    -2.395 deg,	R =   -88.682 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    68.099  mm
};
/END
