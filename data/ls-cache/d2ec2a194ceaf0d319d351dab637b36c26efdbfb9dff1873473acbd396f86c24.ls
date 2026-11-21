/PROG  G3G5_OP200_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "5¸ö¹²ÓÃ_OP200";
PROG_SIZE	= 11752;
CREATE		= DATE 26-03-17  TIME 21:14:48;
MODIFIED	= DATE 26-10-19  TIME 14:17:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 146;
MEMORY_SIZE	= 12068;
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
   6:J P[3] 100% CNT100    ;
   7:J P[2] 100% CNT100    ;
   8:J P[1] 100% CNT100    ;
   9:J P[4] 100% CNT100    ;
  10:J P[10] 100% CNT100    ;
  11:J P[9] 100% CNT100    ;
  12:J P[8] 100% CNT80    ;
  13:J P[6] 100% CNT50    ;
  14:  !011 ;
  15:L P[5] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.9,S=30,ED=3]    ;
  16:J P[7] 100% CNT50    ;
  17:J P[19] 100% CNT100    ;
  18:J P[12] 100% CNT100    ;
  19:  !012 ;
  20:L P[11] 2000mm/sec CNT50
    :  SPOT[SD=3,P=6,t=2.9,S=31,ED=3]    ;
  21:J P[13] 100% CNT100    ;
  22:J P[15] 100% CNT100    ;
  23:  !013 ;
  24:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=32,ED=1]    ;
  25:J P[16] 100% CNT30    ;
  26:J P[17] 100% CNT50    ;
  27:J P[68] 100% CNT100    ;
  28:J P[44] 100% CNT100    ;
  29:J P[21] 100% CNT100    ;
  30:J P[18] 100% CNT100    ;
  31:  !014 ;
  32:L P[20] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=33,ED=1]    ;
  33:  !015 ;
  34:L P[23] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.8,S=34,ED=1]    ;
  35:  !016 ;
  36:L P[26] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=35,ED=1]    ;
  37:J P[25] 100% CNT100    ;
  38:J P[24] 100% CNT100    ;
  39:J P[22] 100% CNT100    ;
  40:J P[29] 100% CNT100    ;
  41:J P[28] 100% CNT100    ;
  42:J P[27] 100% CNT100    ;
  43:  !017 ;
  44:L P[33] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=36,ED=1]    ;
  45:J P[30] 100% CNT100    ;
  46:  !018 ;
  47:L P[37] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=2.9,S=37,ED=1]    ;
  48:J P[39] 100% CNT50    ;
  49:J P[34] 100% CNT60    ;
  50:J P[32] 100% CNT80    ;
  51:J P[31] 100% CNT80    ;
  52:J P[35] 100% CNT80    ;
  53:J P[36] 100% CNT80    ;
  54:J P[42] 100% CNT80    ;
  55:J P[41] 100% CNT80    ;
  56:J P[40] 100% CNT60    ;
  57:J P[38] 100% CNT50    ;
  58:  !019 ;
  59:L P[50] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=6.4,S=38,ED=1]    ;
  60:J P[46] 100% CNT100    ;
  61:J P[45] 100% CNT100    ;
  62:J P[43] 100% CNT100    ;
  63:J P[49] 100% CNT100    ;
  64:J P[48] 100% CNT100    ;
  65:J P[47] 100% CNT100    ;
  66:  !020 ;
  67:L P[56] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=39,ED=1]    ;
  68:J P[51] 100% CNT100    ;
  69:  !021 ;
  70:L P[62] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.7,S=40,ED=1]    ;
  71:J P[52] 100% CNT100    ;
  72:J P[55] 100% CNT100    ;
  73:J P[54] 100% CNT100    ;
  74:J P[53] 100% CNT100    ;
  75:J P[60] 100% CNT100    ;
  76:J P[59] 100% CNT80    ;
  77:J P[58] 100% CNT60    ;
  78:J P[65] 100% CNT50    ;
  79:  !22 ;
  80:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.7,S=41,ED=1]    ;
  81:J P[67] 100% CNT50    ;
  82:J P[70] 100% CNT50    ;
  83:  !23 ;
  84:L P[69] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.7,S=42,ED=1]    ;
  85:J P[71] 100% CNT50    ;
  86:J P[66] 100% CNT60    ;
  87:J P[61] 100% CNT80    ;
  88:J P[63] 100% CNT100    ;
  89:J P[64] 100% CNT100    ;
  90:J P[72] 100% CNT100    ;
  91:J P[73] 100% CNT100    ;
  92:J P[74] 100% CNT100    ;
  93:J P[75] 100% CNT100    ;
  94:J P[79] 100% CNT100    ;
  95:J P[78] 100% CNT100    ;
  96:J P[77] 100% CNT100    ;
  97:  !1 ;
  98:L P[76] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=20,ED=1]    ;
  99:J P[81] 100% CNT100    ;
 100:  !2 ;
 101:L P[82] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=20,ED=1]    ;
 102:J P[83] 100% CNT100    ;
 103:  !3 ;
 104:L P[84] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.4,S=20,ED=1]    ;
 105:J P[85] 100% CNT100    ;
 106:J P[86] 100% CNT100    ;
 107:J P[87] 100% CNT100    ;
 108:J P[90] 100% CNT100    ;
 109:J P[118] 100% CNT100    ;
 110:J P[117] 100% CNT100    ;
 111:J P[80] 100% CNT80    ;
 112:J P[94] 100% CNT50    ;
 113:J P[93] 100% CNT50    ;
 114:J P[92] 100% CNT30    ;
 115:  !10 ;
 116:L P[91] 2000mm/sec CNT50
    :  SPOT[SD=3,P=7,t=4.0,S=29,ED=3]    ;
 117:J P[97] 100% CNT30    ;
 118:J P[96] 100% CNT50    ;
 119:J P[95] 100% CNT100    ;
 120:J P[101] 100% CNT100    ;
 121:J P[100] 100% CNT100    ;
 122:J P[99] 100% CNT100    ;
 123:  !9 ;
 124:L P[98] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=28,ED=1]    ;
 125:  !8 ;
 126:L P[102] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=27,ED=1]    ;
 127:J P[103] 100% CNT100    ;
 128:  !7 ;
 129:L P[104] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=26,ED=1]    ;
 130:J P[105] 100% CNT100    ;
 131:  !6 ;
 132:L P[106] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=25,ED=1]    ;
 133:J P[107] 100% CNT100    ;
 134:J P[108] 100% CNT100    ;
 135:  !5 ;
 136:L P[109] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=24,ED=1]    ;
 137:J P[110] 100% CNT100    ;
 138:  !4 ;
 139:L P[111] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=23,ED=1]    ;
 140:J P[112] 100% CNT100    ;
 141:J P[113] 100% CNT100    ;
 142:J P[114] 100% CNT100    ;
 143:J P[115] 100% CNT100    ;
 144:J P[116] 100% CNT100    ;
 145:J PR[1:HOME] 100% CNT100    ;
 146:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1478.807  mm,	Y =   929.095  mm,	Z =     8.373  mm,
	W =    90.250 deg,	P =    48.783 deg,	R =    -4.201 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.782  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1450.203  mm,	Y =   940.800  mm,	Z =   188.691  mm,
	W =    90.250 deg,	P =    48.783 deg,	R =    -4.201 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.782  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1460.272  mm,	Y =   517.021  mm,	Z =   222.469  mm,
	W =    28.355 deg,	P =    46.820 deg,	R =     8.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    73.650  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1544.092  mm,	Y =   947.012  mm,	Z =    28.628  mm,
	W =    89.619 deg,	P =    40.161 deg,	R =     1.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.779  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1694.855  mm,	Y =   917.140  mm,	Z =  -173.948  mm,
	W =    89.452 deg,	P =    30.301 deg,	R =     1.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.571  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1694.098  mm,	Y =   922.305  mm,	Z =  -174.078  mm,
	W =    89.443 deg,	P =    30.306 deg,	R =     1.852 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.803  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1696.707  mm,	Y =   917.187  mm,	Z =  -175.448  mm,
	W =    89.443 deg,	P =    30.306 deg,	R =     1.852 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.803  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1696.358  mm,	Y =   922.975  mm,	Z =  -175.636  mm,
	W =    89.440 deg,	P =    30.311 deg,	R =     1.851 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.999  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1655.692  mm,	Y =   931.256  mm,	Z =  -152.192  mm,
	W =    89.440 deg,	P =    30.312 deg,	R =     1.850 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.996  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1406.473  mm,	Y =   923.266  mm,	Z =    -6.455  mm,
	W =    89.441 deg,	P =    30.312 deg,	R =     1.854 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.995  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1712.891  mm,	Y =   914.101  mm,	Z =  -144.114  mm,
	W =    89.439 deg,	P =    30.312 deg,	R =     1.849 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1714.468  mm,	Y =   917.922  mm,	Z =  -145.214  mm,
	W =    89.437 deg,	P =    30.314 deg,	R =     1.847 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.489  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1688.010  mm,	Y =   918.603  mm,	Z =  -129.783  mm,
	W =    89.437 deg,	P =    30.314 deg,	R =     1.847 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.489  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1714.625  mm,	Y =   911.228  mm,	Z =  -102.554  mm,
	W =    89.424 deg,	P =    30.335 deg,	R =     1.877 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1709.689  mm,	Y =   923.962  mm,	Z =  -105.357  mm,
	W =    89.423 deg,	P =    30.336 deg,	R =     1.876 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.357  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1709.689  mm,	Y =   923.962  mm,	Z =  -105.357  mm,
	W =    89.423 deg,	P =    30.336 deg,	R =     1.876 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   120.357  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1659.590  mm,	Y =   922.311  mm,	Z =   -76.116  mm,
	W =    89.422 deg,	P =    30.338 deg,	R =     1.875 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.040  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1798.289  mm,	Y =   918.106  mm,	Z =    32.721  mm,
	W =    89.305 deg,	P =    30.442 deg,	R =     1.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.787  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1700.043  mm,	Y =   917.804  mm,	Z =  -159.091  mm,
	W =    89.442 deg,	P =    30.308 deg,	R =     1.849 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.180  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1779.092  mm,	Y =   913.152  mm,	Z =    32.976  mm,
	W =    89.307 deg,	P =    30.441 deg,	R =     1.816 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.752  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1771.277  mm,	Y =   931.766  mm,	Z =    58.570  mm,
	W =    89.305 deg,	P =    30.442 deg,	R =     1.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.787  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1617.637  mm,	Y =   926.898  mm,	Z =   148.909  mm,
	W =    89.305 deg,	P =    30.442 deg,	R =     1.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.787  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1807.216  mm,	Y =   915.422  mm,	Z =    27.049  mm,
	W =    89.315 deg,	P =    30.431 deg,	R =     1.822 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    23.405  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1771.277  mm,	Y =   931.766  mm,	Z =    58.570  mm,
	W =    89.305 deg,	P =    30.442 deg,	R =     1.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.787  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1798.289  mm,	Y =   918.106  mm,	Z =    32.721  mm,
	W =    89.305 deg,	P =    30.442 deg,	R =     1.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.787  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1788.586  mm,	Y =   910.970  mm,	Z =    51.307  mm,
	W =    89.937 deg,	P =    30.446 deg,	R =     3.058 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.748  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1867.907  mm,	Y =   918.895  mm,	Z =   161.656  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1844.626  mm,	Y =   918.151  mm,	Z =   175.462  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1729.701  mm,	Y =   915.370  mm,	Z =   227.541  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1862.007  mm,	Y =   920.659  mm,	Z =   162.698  mm,
	W =    93.381 deg,	P =    21.114 deg,	R =     1.177 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.652  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1729.701  mm,	Y =   915.370  mm,	Z =   227.541  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1844.626  mm,	Y =   918.151  mm,	Z =   175.462  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1849.166  mm,	Y =   911.804  mm,	Z =   159.885  mm,
	W =    94.157 deg,	P =    20.974 deg,	R =     3.319 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1867.907  mm,	Y =   918.895  mm,	Z =   161.656  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1589.506  mm,	Y =   914.835  mm,	Z =   239.276  mm,
	W =    93.387 deg,	P =    21.107 deg,	R =     1.175 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.377  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1610.415  mm,	Y =   916.594  mm,	Z =   369.971  mm,
	W =    90.747 deg,	P =    27.431 deg,	R =      .219 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.928  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1880.475  mm,	Y =   909.362  mm,	Z =   154.977  mm,
	W =    93.382 deg,	P =    21.113 deg,	R =     1.178 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.453  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1913.171  mm,	Y =   928.539  mm,	Z =   240.880  mm,
	W =    89.673 deg,	P =    32.824 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.929  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1862.007  mm,	Y =   920.659  mm,	Z =   162.698  mm,
	W =    93.381 deg,	P =    21.114 deg,	R =     1.177 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.652  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1878.113  mm,	Y =   917.985  mm,	Z =   264.218  mm,
	W =    89.673 deg,	P =    32.824 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.929  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.757  mm,	Y =   902.778  mm,	Z =   341.192  mm,
	W =    89.673 deg,	P =    32.824 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.929  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1661.790  mm,	Y =   890.670  mm,	Z =   503.569  mm,
	W =    89.672 deg,	P =    32.826 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.928  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.757  mm,	Y =   902.778  mm,	Z =   341.192  mm,
	W =    89.673 deg,	P =    32.824 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.929  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1617.637  mm,	Y =   926.898  mm,	Z =   148.909  mm,
	W =    89.305 deg,	P =    30.442 deg,	R =     1.815 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.787  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1878.113  mm,	Y =   917.985  mm,	Z =   264.218  mm,
	W =    89.673 deg,	P =    32.824 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.929  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1913.171  mm,	Y =   928.539  mm,	Z =   240.880  mm,
	W =    89.673 deg,	P =    32.824 deg,	R =     7.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   128.929  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.834  mm,	Y =   935.668  mm,	Z =   386.879  mm,
	W =    93.136 deg,	P =    32.843 deg,	R =     7.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.957  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1959.796  mm,	Y =   917.607  mm,	Z =   400.173  mm,
	W =    93.136 deg,	P =    32.844 deg,	R =     7.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.955  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.051  mm,	Y =   902.876  mm,	Z =   474.856  mm,
	W =    93.136 deg,	P =    32.845 deg,	R =     7.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.955  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1901.121  mm,	Y =   909.896  mm,	Z =   257.466  mm,
	W =    89.674 deg,	P =    32.822 deg,	R =     7.322 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.221  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.892  mm,	Y =   934.905  mm,	Z =   386.722  mm,
	W =    93.067 deg,	P =    30.844 deg,	R =     7.186 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.892  mm,	Y =   934.905  mm,	Z =   386.722  mm,
	W =    93.067 deg,	P =    30.844 deg,	R =     7.186 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    80.000  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.045  mm,	Y =   902.881  mm,	Z =   474.807  mm,
	W =    93.184 deg,	P =    34.180 deg,	R =     7.403 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.956  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1959.796  mm,	Y =   917.607  mm,	Z =   400.173  mm,
	W =    93.136 deg,	P =    32.844 deg,	R =     7.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.955  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.834  mm,	Y =   935.668  mm,	Z =   386.879  mm,
	W =    93.136 deg,	P =    32.843 deg,	R =     7.315 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.957  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1974.798  mm,	Y =   910.081  mm,	Z =   386.500  mm,
	W =    93.138 deg,	P =    32.839 deg,	R =     7.317 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2035.691  mm,	Y =   909.244  mm,	Z =   431.926  mm,
	W =    91.125 deg,	P =    39.662 deg,	R =     7.940 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2032.362  mm,	Y =   923.308  mm,	Z =   443.402  mm,
	W =   101.818 deg,	P =    39.661 deg,	R =     7.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2006.756  mm,	Y =   919.736  mm,	Z =   464.836  mm,
	W =   106.446 deg,	P =    39.661 deg,	R =     7.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1904.834  mm,	Y =   902.090  mm,	Z =   565.496  mm,
	W =   106.446 deg,	P =    39.660 deg,	R =     7.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2041.140  mm,	Y =   925.884  mm,	Z =   452.258  mm,
	W =   106.446 deg,	P =    39.661 deg,	R =     7.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2012.592  mm,	Y =   916.147  mm,	Z =   394.454  mm,
	W =    92.853 deg,	P =    26.757 deg,	R =     6.747 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2006.756  mm,	Y =   919.736  mm,	Z =   464.836  mm,
	W =   106.446 deg,	P =    39.661 deg,	R =     7.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1885.911  mm,	Y =   900.934  mm,	Z =   574.688  mm,
	W =   106.446 deg,	P =    39.660 deg,	R =     7.941 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2037.064  mm,	Y =   916.620  mm,	Z =   436.288  mm,
	W =    91.125 deg,	P =    39.664 deg,	R =     7.939 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.484  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2041.438  mm,	Y =   928.688  mm,	Z =   451.432  mm,
	W =    93.973 deg,	P =    36.658 deg,	R =     7.662 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.416  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2041.438  mm,	Y =   928.688  mm,	Z =   451.432  mm,
	W =    93.973 deg,	P =    36.658 deg,	R =     7.662 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.416  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1595.328  mm,	Y =   920.110  mm,	Z =   -55.267  mm,
	W =    89.421 deg,	P =    30.339 deg,	R =     1.877 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2049.763  mm,	Y =   913.317  mm,	Z =   456.752  mm,
	W =    93.668 deg,	P =    29.694 deg,	R =     7.106 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2044.485  mm,	Y =   921.635  mm,	Z =   459.736  mm,
	W =    93.666 deg,	P =    29.697 deg,	R =     7.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.777  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2044.485  mm,	Y =   921.635  mm,	Z =   459.736  mm,
	W =    93.666 deg,	P =    29.697 deg,	R =     7.103 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    74.777  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1717.388  mm,	Y =   877.477  mm,	Z =   715.803  mm,
	W =   106.448 deg,	P =    39.659 deg,	R =     7.944 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1608.471  mm,	Y =   841.380  mm,	Z =   579.664  mm,
	W =    48.438 deg,	P =    37.217 deg,	R =    13.121 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.934  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1714.285  mm,	Y =   510.073  mm,	Z =   616.323  mm,
	W =   -76.797 deg,	P =    37.217 deg,	R =    13.121 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.932  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1711.746  mm,	Y =   510.456  mm,	Z =   613.122  mm,
	W =   -62.701 deg,	P =    29.257 deg,	R =    38.484 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   124.932  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2000.858  mm,	Y =   846.177  mm,	Z =   368.750  mm,
	W =   -60.107 deg,	P =     6.463 deg,	R =    83.269 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.085  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2026.046  mm,	Y =   828.894  mm,	Z =   360.249  mm,
	W =   -65.084 deg,	P =     7.116 deg,	R =    81.859 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   112.655  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2027.401  mm,	Y =   770.139  mm,	Z =   362.963  mm,
	W =   -65.373 deg,	P =     8.112 deg,	R =    79.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   112.655  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  2016.661  mm,	Y =   692.463  mm,	Z =   372.536  mm,
	W =   -65.788 deg,	P =     9.341 deg,	R =    76.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   112.657  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1553.392  mm,	Y =   691.207  mm,	Z =    89.243  mm,
	W =   -62.659 deg,	P =    11.068 deg,	R =    85.968 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.477  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1994.114  mm,	Y =   814.836  mm,	Z =   324.664  mm,
	W =   -59.916 deg,	P =     8.907 deg,	R =    84.692 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    56.062  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1970.637  mm,	Y =   847.059  mm,	Z =   317.817  mm,
	W =   -59.916 deg,	P =     8.909 deg,	R =    84.691 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1955.249  mm,	Y =   826.518  mm,	Z =   276.492  mm,
	W =   -59.693 deg,	P =    11.066 deg,	R =    85.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    31.664  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1928.720  mm,	Y =   846.789  mm,	Z =   242.114  mm,
	W =   -59.511 deg,	P =    12.552 deg,	R =    86.857 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.163  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1980.026  mm,	Y =   821.954  mm,	Z =   262.130  mm,
	W =   -59.693 deg,	P =    11.066 deg,	R =    85.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.866  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1992.396  mm,	Y =   792.297  mm,	Z =   292.891  mm,
	W =   -59.693 deg,	P =    11.066 deg,	R =    85.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.866  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1986.508  mm,	Y =   708.822  mm,	Z =   309.258  mm,
	W =   -59.693 deg,	P =    11.066 deg,	R =    85.966 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    98.866  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1919.472  mm,	Y =   727.457  mm,	Z =   374.418  mm,
	W =   -61.865 deg,	P =    11.068 deg,	R =    85.942 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.609  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1732.986  mm,	Y =   844.621  mm,	Z =  -101.440  mm,
	W =   -59.690 deg,	P =    11.067 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1737.087  mm,	Y =   843.865  mm,	Z =  -103.818  mm,
	W =   -59.690 deg,	P =    11.067 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.478  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1732.421  mm,	Y =   835.810  mm,	Z =  -109.325  mm,
	W =   -62.066 deg,	P =    11.068 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.477  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1727.747  mm,	Y =   724.479  mm,	Z =   -89.248  mm,
	W =   -62.660 deg,	P =    11.068 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.477  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1727.747  mm,	Y =   724.479  mm,	Z =   -89.248  mm,
	W =   -62.660 deg,	P =    11.068 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.477  mm
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1732.421  mm,	Y =   835.810  mm,	Z =  -109.325  mm,
	W =   -62.066 deg,	P =    11.068 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.477  mm
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1737.087  mm,	Y =   843.865  mm,	Z =  -103.818  mm,
	W =   -59.690 deg,	P =    11.067 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.478  mm
};
P[98]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1770.761  mm,	Y =   849.016  mm,	Z =   -36.821  mm,
	W =   -59.689 deg,	P =    11.067 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.498  mm
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1793.511  mm,	Y =   831.630  mm,	Z =   -14.941  mm,
	W =   -59.689 deg,	P =    11.067 deg,	R =    85.967 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   115.705  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1823.481  mm,	Y =   786.637  mm,	Z =    26.809  mm,
	W =   -59.688 deg,	P =    11.067 deg,	R =    85.968 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   115.704  mm
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1826.060  mm,	Y =   639.061  mm,	Z =    47.854  mm,
	W =   -59.688 deg,	P =    11.067 deg,	R =    85.968 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   132.555  mm
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1792.662  mm,	Y =   849.343  mm,	Z =     1.046  mm,
	W =   -59.718 deg,	P =    10.811 deg,	R =    85.814 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    13.053  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1802.911  mm,	Y =   827.698  mm,	Z =    -1.991  mm,
	W =   -59.877 deg,	P =     9.271 deg,	R =    84.904 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    42.423  mm
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1813.063  mm,	Y =   847.292  mm,	Z =    34.791  mm,
	W =   -59.875 deg,	P =     9.271 deg,	R =    84.904 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.694  mm
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1823.671  mm,	Y =   827.653  mm,	Z =    30.592  mm,
	W =   -60.019 deg,	P =     7.600 deg,	R =    83.927 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    52.878  mm
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1833.901  mm,	Y =   847.424  mm,	Z =    69.514  mm,
	W =   -60.097 deg,	P =     6.185 deg,	R =    83.106 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    32.321  mm
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1845.514  mm,	Y =   817.863  mm,	Z =    81.288  mm,
	W =   -60.240 deg,	P =     3.737 deg,	R =    81.695 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.903  mm
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1857.441  mm,	Y =   817.133  mm,	Z =   102.092  mm,
	W =   -60.307 deg,	P =      .771 deg,	R =    80.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.903  mm
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1854.099  mm,	Y =   847.502  mm,	Z =   106.603  mm,
	W =   -60.309 deg,	P =     -.131 deg,	R =    79.485 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    32.882  mm
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1881.368  mm,	Y =   830.923  mm,	Z =   113.042  mm,
	W =   -60.280 deg,	P =    -2.453 deg,	R =    78.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.223  mm
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1872.964  mm,	Y =   849.604  mm,	Z =   138.663  mm,
	W =   -60.234 deg,	P =    -3.871 deg,	R =    77.348 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    42.091  mm
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1897.487  mm,	Y =   789.033  mm,	Z =   116.105  mm,
	W =   -60.086 deg,	P =    -5.304 deg,	R =    75.664 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.403  mm
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1884.059  mm,	Y =   778.785  mm,	Z =    96.593  mm,
	W =   -59.845 deg,	P =    -3.495 deg,	R =    72.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.403  mm
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1866.108  mm,	Y =   700.600  mm,	Z =    60.782  mm,
	W =   -59.670 deg,	P =     -.751 deg,	R =    67.820 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.403  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1785.262  mm,	Y =   502.296  mm,	Z =    57.974  mm,
	W =   -59.855 deg,	P =     3.592 deg,	R =    60.378 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.403  mm
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1447.917  mm,	Y =   377.846  mm,	Z =    17.265  mm,
	W =   -22.798 deg,	P =    39.423 deg,	R =    49.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   130.317  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1383.739  mm,	Y =   724.491  mm,	Z =   266.715  mm,
	W =   -62.659 deg,	P =    11.068 deg,	R =    85.968 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.476  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1609.473  mm,	Y =   727.456  mm,	Z =   562.418  mm,
	W =   -61.865 deg,	P =    11.068 deg,	R =    85.942 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.609  mm
};
/END
