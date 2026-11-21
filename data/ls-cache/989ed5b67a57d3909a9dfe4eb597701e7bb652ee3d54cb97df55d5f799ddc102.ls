/PROG  ED46_OP150_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED46_OP150";
PROG_SIZE	= 9955;
CREATE		= DATE 26-03-15  TIME 21:14:44;
MODIFIED	= DATE 26-03-19  TIME 18:14:16;
FILE_NAME	= OP150_WE;
VERSION		= 0;
LINE_COUNT	= 134;
MEMORY_SIZE	= 10319;
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
   5:  CALL SEGMENT(2) ;
   6:   ;
   7:J PR[1:HOME] 100% CNT100    ;
   8:J P[4] 100% CNT100    ;
   9:J P[5] 100% CNT100    ;
  10:J P[6] 100% CNT100    ;
  11:J P[7] 100% CNT100    ;
  12:J P[88] 100% CNT100    ;
  13:   ;
  14:   ;
  15:J P[3] 100% CNT100    ;
  16:J P[2] 100% CNT100    ;
  17:  !R13_003 ;
  18:L P[1] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=42,ED=10]    ;
  19:  !R13_002 ;
  20:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=41,ED=10]    ;
  21:J P[9] 100% CNT100    ;
  22:J P[11] 100% CNT100    ;
  23:  !R13_001 ;
  24:L P[10] 2000mm/sec CNT50
    :  SPOT[SD=10,P=4,t=1.9,S=40,ED=10]    ;
  25:J P[12] 100% CNT100    ;
  26:J P[14] 100% CNT100    ;
  27:  !R13_004 ;
  28:L P[13] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=5.5,S=43,ED=10]    ;
  29:J P[15] 100% CNT100    ;
  30:   ;
  31:J P[17] 100% CNT100    ;
  32:  !R13_005 ;
  33:L P[16] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.3,S=44,ED=10]    ;
  34:J P[18] 100% CNT50    ;
  35:J P[19] 100% CNT50    ;
  36:J P[21] 100% CNT50    ;
  37:  !R13_006 ;
  38:L P[20] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.5,S=45,ED=10]    ;
  39:  !R13_007 ;
  40:L P[22] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.5,S=46,ED=10]    ;
  41:J P[23] 100% CNT100    ;
  42:   ;
  43:J P[24] 100% CNT100    ;
  44:  !R13_008 ;
  45:L P[25] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.5,S=47,ED=10]    ;
  46:J P[26] 100% CNT80    ;
  47:J P[30] 100% CNT80    ;
  48:J P[29] 100% CNT80    ;
  49:  !R13_009 ;
  50:L P[27] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=48,ED=10]    ;
  51:  !R13_010 ;
  52:L P[28] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=49,ED=10]    ;
  53:J P[31] 100% CNT80    ;
  54:J P[32] 100% CNT100    ;
  55:J P[33] 100% CNT100    ;
  56:J P[46] 100% CNT100    ;
  57:J P[51] 100% CNT100    ;
  58:J P[89] 100% CNT80    ;
  59:   ;
  60:J P[34] 100% CNT80    ;
  61:J P[35] 100% CNT80    ;
  62:   ;
  63:J P[36] 100% CNT80    ;
  64:J P[38] 100% CNT80    ;
  65:  !R13_011 ;
  66:L P[37] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=50,ED=10]    ;
  67:J P[39] 100% CNT80    ;
  68:J P[44] 100% CNT80    ;
  69:J P[43] 100% CNT80    ;
  70:J P[41] 100% CNT80    ;
  71:  !R13_012 ;
  72:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=51,ED=10]    ;
  73:J P[42] 100% CNT80    ;
  74:J P[45] 100% CNT80    ;
  75:   ;
  76:J P[50] 100% CNT100    ;
  77:J P[48] 100% CNT100    ;
  78:  !ÐÂÔö ;
  79:L P[61] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=4.0,S=51,ED=1]    ;
  80:J P[87] 100% CNT50    ;
  81:  !R13_013 ;
  82:L P[47] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=52,ED=10]    ;
  83:J P[49] 100% CNT100    ;
  84:J P[52] 100% CNT100    ;
  85:   ;
  86:J P[54] 100% CNT80    ;
  87:J P[53] 100% CNT50    ;
  88:J P[55] 100% CNT50    ;
  89:   ;
  90:J P[57] 100% CNT80    ;
  91:  !R13_015 ;
  92:L P[56] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.4,S=54,ED=10]    ;
  93:J P[58] 100% CNT80    ;
  94:J P[60] 100% CNT80    ;
  95:  !R13_014 ;
  96:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.7,S=53,ED=10]    ;
  97:J P[85] 100% CNT50    ;
  98:  !R13_016 ;
  99:L P[84] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.3,S=55,ED=10]    ;
 100:J P[86] 100% CNT50    ;
 101:J P[63] 100% CNT50    ;
 102:J P[62] 100% CNT50    ;
 103:   ;
 104:J P[65] 100% CNT80    ;
 105:  !R13_017 ;
 106:L P[64] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.5,S=56,ED=10]    ;
 107:J P[66] 100% CNT80    ;
 108:   ;
 109:J P[68] 100% CNT100    ;
 110:  !R13_018 ;
 111:L P[67] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.5,S=57,ED=10]    ;
 112:J P[69] 100% CNT100    ;
 113:J P[71] 100% CNT100    ;
 114:  !R13_020 ;
 115:L P[70] 2000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=1.9,S=59,ED=10]    ;
 116:  !R13_019 ;
 117:L P[72] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=3.7,S=58,ED=10]    ;
 118:J P[73] 100% CNT100    ;
 119:J P[74] 100% CNT100    ;
 120:   ;
 121:J P[78] 100% CNT100    ;
 122:J P[76] 100% CNT100    ;
 123:  !R13_021 ;
 124:L P[75] 2000mm/sec CNT50
    :  SPOT[SD=10,P=8,t=4.0,S=60,ED=10]    ;
 125:J P[77] 100% CNT100    ;
 126:J P[79] 100% CNT100    ;
 127:J P[80] 100% CNT100    ;
 128:J P[81] 100% CNT50    ;
 129:J P[82] 100% CNT100    ;
 130:J P[83] 100% CNT100    ;
 131:J P[90] 100% CNT100    ;
 132:J P[91] 100% CNT100    ;
 133:J PR[1:HOME] 100% CNT100    ;
 134:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1817.289  mm,	Y =  -850.993  mm,	Z =  -623.438  mm,
	W =    60.211 deg,	P =    -5.785 deg,	R =   -88.730 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    63.849  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1860.065  mm,	Y =  -875.776  mm,	Z =  -649.176  mm,
	W =    60.211 deg,	P =    -5.785 deg,	R =   -88.730 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.749  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1884.356  mm,	Y =  -715.660  mm,	Z =  -654.142  mm,
	W =    59.744 deg,	P =    -4.994 deg,	R =   -84.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.749  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1518.549  mm,	Y =  -380.881  mm,	Z =   761.901  mm,
	W =    50.754 deg,	P =   -26.427 deg,	R =   -79.442 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.413  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1214.933  mm,	Y =  -334.667  mm,	Z =  -138.346  mm,
	W =    55.208 deg,	P =     4.020 deg,	R =   -90.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   143.964  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1404.552  mm,	Y =  -154.064  mm,	Z =  -504.469  mm,
	W =    53.827 deg,	P =    -1.038 deg,	R =   -85.227 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.749  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1855.631  mm,	Y =  -154.037  mm,	Z =  -711.376  mm,
	W =    53.830 deg,	P =    -1.040 deg,	R =   -85.225 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.749  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1789.687  mm,	Y =  -850.595  mm,	Z =  -675.653  mm,
	W =    60.304 deg,	P =    -3.876 deg,	R =   -89.824 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.415  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1834.514  mm,	Y =  -855.512  mm,	Z =  -684.956  mm,
	W =    60.301 deg,	P =    -3.876 deg,	R =   -89.825 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.664  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1764.588  mm,	Y =  -910.019  mm,	Z =  -665.768  mm,
	W =    60.381 deg,	P =     -.728 deg,	R =   -91.727 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.331  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1807.238  mm,	Y =  -902.206  mm,	Z =  -689.993  mm,
	W =    60.381 deg,	P =     -.727 deg,	R =   -91.727 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.997  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1807.238  mm,	Y =  -902.206  mm,	Z =  -689.993  mm,
	W =    60.381 deg,	P =     -.727 deg,	R =   -91.727 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   129.997  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1824.912  mm,	Y =  -904.796  mm,	Z =  -564.538  mm,
	W =    60.017 deg,	P =    -8.466 deg,	R =   -87.284 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.751  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1848.656  mm,	Y =  -924.786  mm,	Z =  -593.530  mm,
	W =    60.019 deg,	P =    -8.469 deg,	R =   -87.284 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.749  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1848.656  mm,	Y =  -924.786  mm,	Z =  -593.530  mm,
	W =    60.019 deg,	P =    -8.469 deg,	R =   -87.284 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    95.749  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1841.204  mm,	Y =  -814.621  mm,	Z =  -568.879  mm,
	W =    59.870 deg,	P =    -8.586 deg,	R =   -87.207 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.330  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1874.168  mm,	Y =  -815.864  mm,	Z =  -587.742  mm,
	W =    59.870 deg,	P =    -8.586 deg,	R =   -87.207 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   105.330  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1839.861  mm,	Y =  -843.968  mm,	Z =  -639.943  mm,
	W =    60.176 deg,	P =    -3.645 deg,	R =   -90.072 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   106.330  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1843.140  mm,	Y =  -618.664  mm,	Z =  -649.036  mm,
	W =    60.059 deg,	P =    -6.022 deg,	R =   -88.702 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   106.329  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1843.118  mm,	Y =  -612.745  mm,	Z =  -569.682  mm,
	W =    60.034 deg,	P =    -5.882 deg,	R =   -88.461 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.750  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1878.546  mm,	Y =  -611.656  mm,	Z =  -590.232  mm,
	W =    60.059 deg,	P =    -6.021 deg,	R =   -88.702 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.829  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1843.784  mm,	Y =  -546.399  mm,	Z =  -571.441  mm,
	W =    60.034 deg,	P =    -5.882 deg,	R =   -88.461 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    26.750  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1919.049  mm,	Y =  -545.981  mm,	Z =  -614.900  mm,
	W =    59.661 deg,	P =    -3.135 deg,	R =   -83.722 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   126.750  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1928.844  mm,	Y =  -413.849  mm,	Z =  -620.897  mm,
	W =    59.661 deg,	P =    -3.135 deg,	R =   -83.722 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   126.750  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1845.618  mm,	Y =  -420.316  mm,	Z =  -572.151  mm,
	W =    59.848 deg,	P =    -4.723 deg,	R =   -86.452 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    27.750  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1895.349  mm,	Y =  -426.689  mm,	Z =  -686.079  mm,
	W =    59.846 deg,	P =    -4.722 deg,	R =   -86.454 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.663  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1853.446  mm,	Y =  -332.501  mm,	Z =  -575.769  mm,
	W =    61.157 deg,	P =      .555 deg,	R =   -89.535 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    14.790  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1854.223  mm,	Y =  -309.495  mm,	Z =  -575.909  mm,
	W =    61.159 deg,	P =      .554 deg,	R =   -89.534 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.708  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1951.364  mm,	Y =  -303.912  mm,	Z =  -629.391  mm,
	W =    61.435 deg,	P =     4.199 deg,	R =   -82.881 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   152.458  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1912.988  mm,	Y =  -381.720  mm,	Z =  -682.095  mm,
	W =    60.451 deg,	P =      .182 deg,	R =   -82.799 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.330  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1959.056  mm,	Y =  -299.443  mm,	Z =  -633.605  mm,
	W =    61.368 deg,	P =     3.664 deg,	R =   -83.864 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.708  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1919.558  mm,	Y =   -76.865  mm,	Z =  -665.616  mm,
	W =    60.317 deg,	P =    -2.442 deg,	R =   -77.803 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.628  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1874.197  mm,	Y =   297.057  mm,	Z =  -635.938  mm,
	W =    69.570 deg,	P =     5.893 deg,	R =   -57.837 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.001  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2062.375  mm,	Y =  -402.231  mm,	Z =  -419.465  mm,
	W =    61.717 deg,	P =    15.993 deg,	R =   -92.917 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2040.021  mm,	Y =  -641.950  mm,	Z =  -441.173  mm,
	W =    61.158 deg,	P =    13.717 deg,	R =   -97.186 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   196.334  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2048.942  mm,	Y =  -716.946  mm,	Z =  -468.429  mm,
	W =    54.446 deg,	P =    17.956 deg,	R =   -94.317 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.001  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1930.989  mm,	Y =  -791.856  mm,	Z =  -433.650  mm,
	W =    57.339 deg,	P =    15.832 deg,	R =   -97.848 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    26.169  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2002.905  mm,	Y =  -810.173  mm,	Z =  -485.160  mm,
	W =    55.739 deg,	P =    15.833 deg,	R =   -97.848 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.169  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2002.905  mm,	Y =  -810.173  mm,	Z =  -485.160  mm,
	W =    55.739 deg,	P =    15.833 deg,	R =   -97.848 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.169  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1931.085  mm,	Y =  -650.936  mm,	Z =  -428.672  mm,
	W =    60.322 deg,	P =    18.467 deg,	R =   -99.983 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.042  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1987.602  mm,	Y =  -650.684  mm,	Z =  -458.972  mm,
	W =    60.388 deg,	P =    18.487 deg,	R =   -99.962 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.334  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1987.602  mm,	Y =  -650.684  mm,	Z =  -458.972  mm,
	W =    60.388 deg,	P =    18.487 deg,	R =   -99.962 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.334  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2040.021  mm,	Y =  -641.950  mm,	Z =  -441.172  mm,
	W =    61.158 deg,	P =    13.717 deg,	R =   -97.186 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   196.334  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2048.942  mm,	Y =  -716.947  mm,	Z =  -468.428  mm,
	W =    54.446 deg,	P =    17.956 deg,	R =   -94.317 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.001  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2039.976  mm,	Y =  -641.947  mm,	Z =  -441.248  mm,
	W =    61.155 deg,	P =    13.717 deg,	R =   -97.186 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   196.333  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1964.860  mm,	Y =   324.346  mm,	Z =  -392.179  mm,
	W =    69.571 deg,	P =     5.893 deg,	R =   -57.837 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.001  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1931.579  mm,	Y =  -363.429  mm,	Z =  -431.058  mm,
	W =    60.621 deg,	P =    13.718 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.750  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2028.189  mm,	Y =  -388.100  mm,	Z =  -453.040  mm,
	W =    60.621 deg,	P =    13.719 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.500  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2028.189  mm,	Y =  -388.100  mm,	Z =  -453.040  mm,
	W =    60.621 deg,	P =    13.719 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.500  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2059.214  mm,	Y =  -406.959  mm,	Z =  -392.291  mm,
	W =    60.621 deg,	P =    13.719 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.500  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  2062.591  mm,	Y =   -70.304  mm,	Z =  -303.879  mm,
	W =    69.214 deg,	P =     9.029 deg,	R =   -61.116 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.001  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2059.214  mm,	Y =  -406.959  mm,	Z =  -392.291  mm,
	W =    60.621 deg,	P =    13.719 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.500  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2096.955  mm,	Y =  -738.598  mm,	Z =  -352.035  mm,
	W =    74.377 deg,	P =     8.210 deg,	R =   -87.645 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.500  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2077.565  mm,	Y =  -577.199  mm,	Z =  -362.456  mm,
	W =    68.764 deg,	P =     7.495 deg,	R =   -90.457 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.500  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2074.840  mm,	Y =  -860.598  mm,	Z =  -361.956  mm,
	W =    74.374 deg,	P =     8.212 deg,	R =   -87.650 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.502  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2044.749  mm,	Y =  -856.094  mm,	Z =  -209.601  mm,
	W =    62.481 deg,	P =     -.325 deg,	R =   -90.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.167  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2078.961  mm,	Y =  -856.409  mm,	Z =  -240.665  mm,
	W =    62.481 deg,	P =     -.325 deg,	R =   -90.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2078.961  mm,	Y =  -856.409  mm,	Z =  -240.665  mm,
	W =    62.481 deg,	P =     -.325 deg,	R =   -90.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1992.135  mm,	Y =  -851.876  mm,	Z =  -299.821  mm,
	W =    62.406 deg,	P =     4.064 deg,	R =   -92.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.167  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2060.278  mm,	Y =  -875.683  mm,	Z =  -337.522  mm,
	W =    62.406 deg,	P =     4.064 deg,	R =   -92.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   174.500  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1935.562  mm,	Y =  -391.343  mm,	Z =  -429.408  mm,
	W =    59.077 deg,	P =    13.719 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.266  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2096.955  mm,	Y =  -738.598  mm,	Z =  -352.035  mm,
	W =    74.377 deg,	P =     8.210 deg,	R =   -87.645 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.500  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2074.840  mm,	Y =  -860.598  mm,	Z =  -361.956  mm,
	W =    74.374 deg,	P =     8.212 deg,	R =   -87.650 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   206.502  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1996.185  mm,	Y =  -652.395  mm,	Z =  -304.122  mm,
	W =    60.464 deg,	P =     -.889 deg,	R =   -91.271 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.670  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2101.311  mm,	Y =  -653.032  mm,	Z =  -359.488  mm,
	W =    65.193 deg,	P =     1.306 deg,	R =   -86.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   196.333  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2045.498  mm,	Y =  -609.408  mm,	Z =  -330.834  mm,
	W =    60.481 deg,	P =     -.884 deg,	R =   -91.270 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   107.832  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1998.697  mm,	Y =  -561.816  mm,	Z =  -305.928  mm,
	W =    60.461 deg,	P =     -.889 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.084  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2045.227  mm,	Y =  -563.262  mm,	Z =  -332.375  mm,
	W =    60.459 deg,	P =     -.889 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   107.832  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2081.315  mm,	Y =  -530.896  mm,	Z =  -309.710  mm,
	W =    60.459 deg,	P =     -.888 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   178.831  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2018.648  mm,	Y =  -477.308  mm,	Z =  -266.304  mm,
	W =    60.459 deg,	P =     -.888 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.165  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2064.738  mm,	Y =  -478.736  mm,	Z =  -292.432  mm,
	W =    60.459 deg,	P =     -.888 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   115.998  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1999.322  mm,	Y =  -489.025  mm,	Z =  -301.378  mm,
	W =    60.459 deg,	P =     -.888 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.498  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2084.080  mm,	Y =  -512.525  mm,	Z =  -349.373  mm,
	W =    60.459 deg,	P =     -.888 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.498  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2051.456  mm,	Y =  -512.692  mm,	Z =  -406.903  mm,
	W =    60.459 deg,	P =     -.887 deg,	R =   -91.272 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.498  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2003.448  mm,	Y =  -362.243  mm,	Z =  -308.597  mm,
	W =    60.458 deg,	P =     -.887 deg,	R =   -91.273 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.082  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2064.667  mm,	Y =  -364.141  mm,	Z =  -343.307  mm,
	W =    60.458 deg,	P =     -.887 deg,	R =   -91.273 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.332  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2064.667  mm,	Y =  -364.141  mm,	Z =  -343.307  mm,
	W =    60.458 deg,	P =     -.887 deg,	R =   -91.273 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   171.332  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2049.042  mm,	Y =  -394.201  mm,	Z =  -410.810  mm,
	W =    60.458 deg,	P =     -.887 deg,	R =   -91.273 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.832  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2049.042  mm,	Y =  -394.201  mm,	Z =  -410.810  mm,
	W =    60.458 deg,	P =     -.887 deg,	R =   -91.273 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   205.832  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2068.903  mm,	Y =  -271.366  mm,	Z =  -422.435  mm,
	W =    60.482 deg,	P =     1.521 deg,	R =   -87.025 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.998  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2080.934  mm,	Y =  -204.880  mm,	Z =  -404.768  mm,
	W =    61.504 deg,	P =     3.992 deg,	R =   -76.152 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.998  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  2016.085  mm,	Y =   -87.574  mm,	Z =  -326.566  mm,
	W =    63.268 deg,	P =    11.000 deg,	R =   -62.711 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.998  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  1953.602  mm,	Y =    32.472  mm,	Z =  -187.714  mm,
	W =    71.724 deg,	P =    10.902 deg,	R =   -56.141 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.998  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1994.056  mm,	Y =  -795.785  mm,	Z =  -301.445  mm,
	W =    62.404 deg,	P =     4.065 deg,	R =   -92.527 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.499  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2064.259  mm,	Y =  -796.281  mm,	Z =  -338.031  mm,
	W =    62.404 deg,	P =     4.065 deg,	R =   -92.528 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   183.832  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2062.664  mm,	Y =  -832.403  mm,	Z =  -340.605  mm,
	W =    67.572 deg,	P =     4.065 deg,	R =   -92.528 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   183.832  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1943.699  mm,	Y =  -391.216  mm,	Z =  -434.097  mm,
	W =    59.077 deg,	P =    13.719 deg,	R =   -97.187 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.000  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1884.864  mm,	Y =  -341.442  mm,	Z =  -708.600  mm,
	W =    59.744 deg,	P =    -4.994 deg,	R =   -84.337 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.749  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2107.621  mm,	Y =  -210.883  mm,	Z =  -335.682  mm,
	W =    66.287 deg,	P =    10.327 deg,	R =   -76.579 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.001  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 1, -1',
	X =  2032.706  mm,	Y =   224.465  mm,	Z =     3.751  mm,
	W =    88.108 deg,	P =    30.082 deg,	R =   -55.027 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   211.493  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1414.183  mm,	Y =  -572.057  mm,	Z =  1588.325  mm,
	W =   101.439 deg,	P =   -21.102 deg,	R =  -100.810 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   148.770  mm
};
/END
