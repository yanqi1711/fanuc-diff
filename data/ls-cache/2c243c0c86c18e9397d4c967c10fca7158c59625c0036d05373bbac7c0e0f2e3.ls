/PROG  G3G5_OP190_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "5³µÐÍ¹²ÓÃ";
PROG_SIZE	= 7945;
CREATE		= DATE 26-03-16  TIME 17:06:06;
MODIFIED	= DATE 26-07-06  TIME 18:24:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 102;
MEMORY_SIZE	= 8309;
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
   4:  !19¸öº¸µ  ;
   5:J PR[1:HOME] 100% CNT100    ;
   6:  CALL SEGMENT(2) ;
   7:J P[4] 100% CNT100    ;
   8:J P[3] 100% CNT100    ;
   9:J P[1] 100% CNT100    ;
  10:  !R17_001 ;
  11:L P[2] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.0,S=1,ED=1]    ;
  12:J P[6] 100% CNT100    ;
  13:J P[5] 100% CNT100    ;
  14:J P[7] 100% CNT100    ;
  15:J P[11] 100% CNT100    ;
  16:J P[10] 100% CNT100    ;
  17:J P[9] 100% CNT100    ;
  18:  !R17_002 ;
  19:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=3.0,S=2,ED=10]    ;
  20:  !R17_003 ;
  21:L P[12] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=3.0,S=3,ED=10]    ;
  22:  !R17_004 ;
  23:L P[13] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=3.0,S=4,ED=10]    ;
  24:J P[68] 100% CNT80    ;
  25:J P[15] 100% CNT80    ;
  26:J P[66] 100% CNT80    ;
  27:  !R17_006 ;
  28:L P[64] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.0,S=6,ED=1]    ;
  29:   ;
  30:  !R17_005 ;
  31:L P[71] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.0,S=6,ED=1]    ;
  32:   ;
  33:J P[67] 100% CNT80    ;
  34:J P[69] 100% CNT70    ;
  35:J P[16] 100% CNT70    ;
  36:   ;
  37:  //J P[20] 100% CNT80    ;
  38:J P[18] 100% CNT80    ;
  39:  !R17_008 ;
  40:L P[17] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.2,S=8,ED=1]    ;
  41:J P[19] 100% CNT80    ;
  42:J P[21] 100% CNT80    ;
  43:J P[70] 100% CNT100    ;
  44:J P[22] 100% CNT100    ;
  45:J P[28] 100% CNT100    ;
  46:J P[26] 100% CNT100    ;
  47:J P[24] 100% CNT100    ;
  48:  !R17_007 ;
  49:L P[23] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.2,S=7,ED=1]    ;
  50:J P[25] 100% CNT100    ;
  51:J P[27] 100% CNT80    ;
  52:   ;
  53:J P[31] 100% CNT30    ;
  54:J P[30] 100% CNT30    ;
  55:  !R17_010 ;
  56:L P[29] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=10,ED=10]    ;
  57:  !R17_009 ;
  58:L P[32] 2000mm/sec CNT20
    :  SPOT[SD=10,P=7,t=4.0,S=9,ED=10]    ;
  59:J P[33] 100% CNT20    ;
  60:J P[35] 100% CNT20    ;
  61:  !R17_011 ;
  62:L P[34] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=11,ED=10]    ;
  63:J P[36] 100% CNT100    ;
  64:  !R17_012 ;
  65:L P[37] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=12,ED=10]    ;
  66:  !R17_013 ;
  67:L P[38] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=13,ED=10]    ;
  68:  !R17_014 ;
  69:L P[39] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=4.0,S=14,ED=10]    ;
  70:J P[40] 100% CNT80    ;
  71:J P[42] 100% CNT50    ;
  72:J P[41] 100% CNT50    ;
  73:   ;
  74:J P[43] 100% CNT80    ;
  75:J P[47] 100% CNT50    ;
  76:J P[48] 100% CNT30    ;
  77:J P[49] 100% CNT30    ;
  78:  !R17_015 ;
  79:L P[44] 2000mm/sec CNT10
    :  SPOT[SD=1,P=7,t=4.0,S=15,ED=1]    ;
  80:J P[50] 100% CNT30    ;
  81:J P[52] 100% CNT30    ;
  82:  !R17_016 ;
  83:L P[51] 2000mm/sec CNT20
    :  SPOT[SD=1,P=7,t=4.0,S=16,ED=1]    ;
  84:J P[46] 100% CNT100    ;
  85:J P[54] 100% CNT100    ;
  86:J P[55] 100% CNT100    ;
  87:  !R17_017 ;
  88:L P[53] 2000mm/sec CNT50
    :  SPOT[SD=10,P=7,t=3.7,S=17,ED=10]    ;
  89:J P[56] 100% CNT30    ;
  90:L P[58] 2000mm/sec CNT50    ;
  91:  !R17_018 ;
  92:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=10,P=6,t=2.7,S=18,ED=10]    ;
  93:  !R17_019 ;
  94:L P[65] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=3.0,S=19,ED=1]    ;
  95:   ;
  96:J P[59] 100% CNT50    ;
  97:J P[60] 100% CNT30    ;
  98:J P[61] 100% CNT50    ;
  99:J P[62] 100% CNT100    ;
 100:J P[63] 100% CNT100    ;
 101:J PR[1:HOME] 100% CNT100    ;
 102:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1959.672  mm,	Y =  -735.555  mm,	Z =  -245.674  mm,
	W =    56.493 deg,	P =    -3.419 deg,	R =   -87.197 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.025  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1888.714  mm,	Y =  -731.441  mm,	Z =  -199.240  mm,
	W =    56.493 deg,	P =    -3.420 deg,	R =   -87.197 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.281  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1946.436  mm,	Y =  -455.601  mm,	Z =  -267.829  mm,
	W =    56.353 deg,	P =      .538 deg,	R =   -81.383 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.023  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1693.761  mm,	Y =  -304.451  mm,	Z =    53.798  mm,
	W =    18.796 deg,	P =    35.285 deg,	R =   -83.059 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.954  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1958.467  mm,	Y =  -578.473  mm,	Z =  -253.049  mm,
	W =    56.468 deg,	P =    -1.586 deg,	R =   -84.484 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.023  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1959.672  mm,	Y =  -735.555  mm,	Z =  -245.674  mm,
	W =    56.493 deg,	P =    -3.419 deg,	R =   -87.197 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.025  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1707.551  mm,	Y =  -619.820  mm,	Z =   -84.373  mm,
	W =    56.468 deg,	P =    -1.586 deg,	R =   -84.484 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   139.023  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1926.310  mm,	Y =  -734.400  mm,	Z =  -128.436  mm,
	W =    55.522 deg,	P =    22.254 deg,	R =  -101.618 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.360  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1959.579  mm,	Y =  -732.883  mm,	Z =  -151.444  mm,
	W =    56.029 deg,	P =    22.405 deg,	R =  -101.379 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.765  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2009.746  mm,	Y =  -568.516  mm,	Z =   -93.139  mm,
	W =    56.029 deg,	P =    22.406 deg,	R =  -101.379 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.712  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1803.119  mm,	Y =  -529.084  mm,	Z =     1.377  mm,
	W =    57.803 deg,	P =    14.183 deg,	R =   -95.746 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   134.712  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1948.532  mm,	Y =  -731.614  mm,	Z =   -90.931  mm,
	W =    57.741 deg,	P =    14.563 deg,	R =   -95.994 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.360  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1967.220  mm,	Y =  -731.008  mm,	Z =   -56.854  mm,
	W =    58.715 deg,	P =     5.858 deg,	R =   -90.525 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.360  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2016.445  mm,	Y =  -731.091  mm,	Z =   -61.922  mm,
	W =    58.897 deg,	P =     -.037 deg,	R =   -86.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   141.267  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2288.020  mm,	Y =  -607.658  mm,	Z =   327.918  mm,
	W =    48.393 deg,	P =    -5.167 deg,	R =   -84.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2294.311  mm,	Y =  -763.035  mm,	Z =   357.494  mm,
	W =    58.570 deg,	P =    -5.167 deg,	R =   -84.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.281  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2317.601  mm,	Y =  -791.069  mm,	Z =   335.088  mm,
	W =    48.393 deg,	P =    -5.167 deg,	R =   -84.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2317.601  mm,	Y =  -791.069  mm,	Z =   335.088  mm,
	W =    48.393 deg,	P =    -5.167 deg,	R =   -84.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2278.074  mm,	Y =  -510.397  mm,	Z =   319.078  mm,
	W =    48.393 deg,	P =    -5.167 deg,	R =   -84.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2290.166  mm,	Y =  -573.145  mm,	Z =   323.043  mm,
	W =    48.429 deg,	P =    -5.178 deg,	R =   -84.162 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   145.000  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1902.662  mm,	Y =  -563.992  mm,	Z =   426.017  mm,
	W =     9.589 deg,	P =    13.445 deg,	R =   -62.481 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    64.689  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2258.573  mm,	Y =  -788.198  mm,	Z =   412.655  mm,
	W =   -96.467 deg,	P =    43.000 deg,	R =   -10.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    49.407  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2242.115  mm,	Y =  -835.655  mm,	Z =   423.350  mm,
	W =   -96.466 deg,	P =    43.000 deg,	R =   -10.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.062  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2242.115  mm,	Y =  -835.655  mm,	Z =   423.350  mm,
	W =   -96.466 deg,	P =    43.000 deg,	R =   -10.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.062  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2085.254  mm,	Y =  -799.479  mm,	Z =   670.005  mm,
	W =   -96.466 deg,	P =    43.000 deg,	R =   -10.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.062  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2085.254  mm,	Y =  -799.479  mm,	Z =   670.005  mm,
	W =   -96.466 deg,	P =    43.000 deg,	R =   -10.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   131.062  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1659.766  mm,	Y =  -520.107  mm,	Z =   306.131  mm,
	W =   -69.465 deg,	P =    58.375 deg,	R =   -62.027 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.201  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1997.436  mm,	Y =  -792.217  mm,	Z =      .739  mm,
	W =   -98.998 deg,	P =    55.674 deg,	R =   -12.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    48.677  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1989.989  mm,	Y =  -814.990  mm,	Z =    15.879  mm,
	W =   -98.997 deg,	P =    55.674 deg,	R =   -12.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.511  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1760.824  mm,	Y =  -776.664  mm,	Z =   358.952  mm,
	W =   -98.997 deg,	P =    55.674 deg,	R =   -12.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.511  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1978.387  mm,	Y =  -790.304  mm,	Z =     4.559  mm,
	W =   -96.803 deg,	P =    55.668 deg,	R =   -12.756 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    51.616  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2000.190  mm,	Y =  -827.613  mm,	Z =   -27.658  mm,
	W =   -98.990 deg,	P =    55.702 deg,	R =   -12.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    88.497  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1981.722  mm,	Y =  -790.661  mm,	Z =   -21.175  mm,
	W =  -100.210 deg,	P =    55.561 deg,	R =   -13.791 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.473  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1990.332  mm,	Y =  -822.396  mm,	Z =   -42.485  mm,
	W =   -98.990 deg,	P =    55.702 deg,	R =   -12.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.057  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1990.332  mm,	Y =  -822.396  mm,	Z =   -42.485  mm,
	W =   -98.990 deg,	P =    55.702 deg,	R =   -12.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.057  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1959.670  mm,	Y =  -793.021  mm,	Z =   -64.634  mm,
	W =   -98.972 deg,	P =    55.756 deg,	R =   -12.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.578  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1941.834  mm,	Y =  -790.802  mm,	Z =   -74.740  mm,
	W =   -98.304 deg,	P =    55.756 deg,	R =   -12.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    31.106  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1942.722  mm,	Y =  -792.304  mm,	Z =   -92.677  mm,
	W =   -98.304 deg,	P =    55.756 deg,	R =   -12.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    31.106  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1942.593  mm,	Y =  -825.461  mm,	Z =   -97.753  mm,
	W =   -98.304 deg,	P =    55.756 deg,	R =   -12.301 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   127.577  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1760.824  mm,	Y =  -776.664  mm,	Z =   358.952  mm,
	W =   -98.997 deg,	P =    55.674 deg,	R =   -12.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.511  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2020.526  mm,	Y =  -828.585  mm,	Z =    23.701  mm,
	W =   -98.997 deg,	P =    55.674 deg,	R =   -12.321 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.511  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1679.952  mm,	Y =  -803.077  mm,	Z =   -15.891  mm,
	W =   -97.788 deg,	P =    49.405 deg,	R =   -10.801 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.511  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1905.109  mm,	Y =  -792.858  mm,	Z =  -157.619  mm,
	W =  -100.227 deg,	P =    26.956 deg,	R =   -11.506 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    42.463  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1912.869  mm,	Y =  -825.062  mm,	Z =  -183.403  mm,
	W =   -97.512 deg,	P =    33.088 deg,	R =   -10.503 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.520  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1760.280  mm,	Y =  -808.961  mm,	Z =  -121.639  mm,
	W =   -94.928 deg,	P =    35.490 deg,	R =    -6.345 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.188  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1859.429  mm,	Y =  -812.968  mm,	Z =  -192.955  mm,
	W =   -94.928 deg,	P =    35.490 deg,	R =    -6.345 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.188  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1914.330  mm,	Y =  -802.551  mm,	Z =  -179.984  mm,
	W =   -99.937 deg,	P =    27.057 deg,	R =   -10.866 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.621  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1921.932  mm,	Y =  -801.184  mm,	Z =  -165.876  mm,
	W =   -99.937 deg,	P =    27.057 deg,	R =   -10.866 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   119.621  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1900.820  mm,	Y =  -793.726  mm,	Z =  -176.464  mm,
	W =   -97.512 deg,	P =    33.088 deg,	R =   -10.503 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    79.290  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1906.031  mm,	Y =  -823.795  mm,	Z =  -178.872  mm,
	W =   -97.512 deg,	P =    33.088 deg,	R =   -10.503 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.520  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1878.546  mm,	Y =  -799.258  mm,	Z =  -238.305  mm,
	W =   -97.196 deg,	P =    38.499 deg,	R =   -10.055 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.115  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1881.924  mm,	Y =  -812.742  mm,	Z =  -223.988  mm,
	W =   -97.773 deg,	P =    38.404 deg,	R =   -10.983 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.615  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1871.430  mm,	Y =  -824.635  mm,	Z =  -233.991  mm,
	W =   -97.617 deg,	P =    38.431 deg,	R =   -10.732 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.812  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1876.970  mm,	Y =  -825.685  mm,	Z =  -238.466  mm,
	W =   -98.756 deg,	P =    38.224 deg,	R =   -12.568 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   108.443  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1860.175  mm,	Y =  -801.285  mm,	Z =  -273.544  mm,
	W =   -95.308 deg,	P =    38.758 deg,	R =    -7.032 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.477  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1857.358  mm,	Y =  -821.854  mm,	Z =  -274.859  mm,
	W =   -96.107 deg,	P =    47.310 deg,	R =    -8.200 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    97.823  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1855.641  mm,	Y =  -821.452  mm,	Z =  -280.449  mm,
	W =   -95.273 deg,	P =    38.807 deg,	R =    -7.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    71.619  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1861.081  mm,	Y =  -827.407  mm,	Z =  -268.043  mm,
	W =   -95.273 deg,	P =    38.807 deg,	R =    -7.008 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.813  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1639.496  mm,	Y =  -800.168  mm,	Z =   -88.550  mm,
	W =   -95.273 deg,	P =    38.809 deg,	R =    -7.007 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.811  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1598.064  mm,	Y =  -399.387  mm,	Z =   152.945  mm,
	W =   -63.314 deg,	P =    45.091 deg,	R =     7.108 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.232  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1666.117  mm,	Y =  -366.902  mm,	Z =   271.805  mm,
	W =   -62.502 deg,	P =    51.366 deg,	R =    -2.766 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.030  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2001.228  mm,	Y =  -720.586  mm,	Z =      .106  mm,
	W =    57.254 deg,	P =     -.037 deg,	R =   -86.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    19.541  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1836.786  mm,	Y =  -794.867  mm,	Z =  -271.135  mm,
	W =   -96.593 deg,	P =    38.356 deg,	R =   -11.999 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    44.915  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2046.750  mm,	Y =  -723.390  mm,	Z =   -25.779  mm,
	W =    58.897 deg,	P =     -.036 deg,	R =   -86.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.271  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2046.750  mm,	Y =  -723.390  mm,	Z =   -25.779  mm,
	W =    58.897 deg,	P =     -.036 deg,	R =   -86.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.271  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2012.431  mm,	Y =  -731.328  mm,	Z =   -68.605  mm,
	W =    58.897 deg,	P =     -.037 deg,	R =   -86.953 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   141.267  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  2093.432  mm,	Y =  -617.044  mm,	Z =    25.341  mm,
	W =    58.866 deg,	P =    -1.443 deg,	R =   -86.082 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   140.823  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2075.750  mm,	Y =  -594.929  mm,	Z =   465.780  mm,
	W =    25.458 deg,	P =     6.072 deg,	R =   -72.890 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.856  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  1996.915  mm,	Y =  -733.304  mm,	Z =    -9.676  mm,
	W =    57.253 deg,	P =     -.035 deg,	R =   -86.951 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    31.097  mm
};
/END
