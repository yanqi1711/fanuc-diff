/PROG  ED44_46_OP120_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED44_46_OP120";
PROG_SIZE	= 6339;
CREATE		= DATE 26-09-04  TIME 12:02:36;
MODIFIED	= DATE 26-09-04  TIME 18:22:44;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 83;
MEMORY_SIZE	= 6667;
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
   4:  !R10_14¸öº¸µ  ;
   5:   ;
   6:  CALL SEGMENT(2) ;
   7:   ;
   8:J PR[1:HOME] 100% CNT100    ;
   9:J P[6] 100% CNT100    ;
  10:J P[5] 100% CNT100    ;
  11:J P[4] 100% CNT100    ;
  12:J P[33] 100% CNT100    ;
  13:J P[2] 100% CNT100    ;
  14:  !R10_001 ;
  15:L P[1] 3000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.6,S=40,ED=1]    ;
  16:J P[3] 100% CNT100    ;
  17:J P[8] 100% CNT100    ;
  18:  !R10_002 ;
  19:L P[7] 3000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.6,S=41,ED=1]    ;
  20:J P[9] 100% CNT100    ;
  21:J P[10] 100% CNT100    ;
  22:J P[11] 100% CNT100    ;
  23:J P[15] 100% CNT100    ;
  24:J P[13] 100% CNT100    ;
  25:  !R10_003 ;
  26:L P[12] 3000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=42,ED=1]    ;
  27:J P[14] 100% CNT100    ;
  28:J P[16] 100% CNT100    ;
  29:  --ch:WITH R9 WELD ;
  30:  CALL ENTER_ZONE(1) ;
  31:J P[53] 100% CNT50    ;
  32:J P[51] 100% CNT80    ;
  33:J P[49] 100% CNT100    ;
  34:  !R10_010 ;
  35:L P[48] 3000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=5.5,S=49,ED=1]    ;
  36:J P[50] 100% CNT100    ;
  37:J P[55] 100% CNT100    ;
  38:  !R10_009 ;
  39:L P[56] 3000mm/sec CNT50
    :  SPOT[SD=10,P=9,t=4.0,S=48,ED=10]    ;
  40:  !R10_007 ;
  41:L P[57] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=3.6,S=46,ED=10]    ;
  42:  !R10_008 ;
  43:L P[58] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=3.2,S=47,ED=10]    ;
  44:J P[59] 100% CNT100    ;
  45:J P[61] 100% CNT100    ;
  46:  !R10_006 ;
  47:L P[60] 3000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=45,ED=1]    ;
  48:J P[62] 100% CNT100    ;
  49:J P[64] 100% CNT100    ;
  50:  !R10_005 ;
  51:L P[63] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=2.7,S=44,ED=10]    ;
  52:J P[66] 100% CNT100    ;
  53:J P[65] 100% CNT100    ;
  54:   ;
  55:J P[46] 100% CNT100    ;
  56:J P[17] 100% CNT100    ;
  57:J P[19] 100% CNT100    ;
  58:J P[18] 100% CNT100    ;
  59:J P[20] 100% CNT100    ;
  60:J P[24] 100% CNT80    ;
  61:J P[22] 100% CNT100    ;
  62:  !R10_004 ;
  63:L P[21] 3000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=43,ED=1]    ;
  64:J P[23] 100% CNT100    ;
  65:J P[25] 100% CNT100    ;
  66:J P[27] 100% CNT100    ;
  67:  !R10_011 ;
  68:L P[26] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=3.3,S=50,ED=10]    ;
  69:J P[32] 100% CNT100    ;
  70:  !R10_012 ;
  71:L P[28] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=3.3,S=51,ED=10]    ;
  72:  !R10_013 ;
  73:L P[29] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=3.3,S=52,ED=10]    ;
  74:  !R10_014 ;
  75:L P[30] 3000mm/sec CNT50
    :  SPOT[SD=10,P=5,t=3.3,S=53,ED=10]    ;
  76:J P[31] 100% CNT100    ;
  77:J P[35] 100% CNT100    ;
  78:J P[47] 100% CNT100    ;
  79:J PR[1:HOME] 50% FINE    ;
  80:  CALL FINISHSEG(2) ;
  81:  --ch:WITH R9 WELD ;
  82:  CALL EXIT_ZONE(1) ;
  83:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2255.092  mm,	Y =  -680.756  mm,	Z =   -77.750  mm,
	W =    -1.078 deg,	P =     -.228 deg,	R =   -64.156 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   110.917  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2256.917  mm,	Y =  -682.397  mm,	Z =  -175.187  mm,
	W =    -1.079 deg,	P =    -1.642 deg,	R =   -64.129 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.167  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2256.917  mm,	Y =  -682.397  mm,	Z =  -175.187  mm,
	W =    -1.079 deg,	P =    -1.642 deg,	R =   -64.129 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.167  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2156.395  mm,	Y =  -511.020  mm,	Z =  -180.568  mm,
	W =    -1.079 deg,	P =    -1.642 deg,	R =   -64.129 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.167  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2013.180  mm,	Y =  -179.803  mm,	Z =  -191.194  mm,
	W =    -1.079 deg,	P =    -1.642 deg,	R =   -64.129 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.167  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1905.119  mm,	Y =    81.157  mm,	Z =   400.264  mm,
	W =    -1.707 deg,	P =     -.972 deg,	R =   -37.114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.167  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.945  mm,	Y =  -682.563  mm,	Z =   -75.805  mm,
	W =     -.133 deg,	P =    -1.189 deg,	R =   -64.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    84.747  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.481  mm,	Y =  -685.972  mm,	Z =  -176.114  mm,
	W =    -1.084 deg,	P =    -1.640 deg,	R =   -64.130 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.350  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.481  mm,	Y =  -685.972  mm,	Z =  -176.114  mm,
	W =    -1.084 deg,	P =    -1.640 deg,	R =   -64.130 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.350  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1898.067  mm,	Y =   -98.547  mm,	Z =  -189.681  mm,
	W =    -1.355 deg,	P =    -1.401 deg,	R =   -53.472 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.166  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1939.039  mm,	Y =   -26.687  mm,	Z =  -196.091  mm,
	W =    -1.430 deg,	P =    -1.348 deg,	R =   -50.778 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.166  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1771.708  mm,	Y =  -532.434  mm,	Z =  -147.721  mm,
	W =      .399 deg,	P =      .956 deg,	R =   -50.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.083  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1775.024  mm,	Y =  -527.270  mm,	Z =  -257.276  mm,
	W =      .399 deg,	P =      .956 deg,	R =   -50.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   175.367  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1775.024  mm,	Y =  -527.270  mm,	Z =  -257.276  mm,
	W =      .399 deg,	P =      .956 deg,	R =   -50.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   175.367  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1533.119  mm,	Y =  -293.628  mm,	Z =  -251.980  mm,
	W =      .399 deg,	P =      .956 deg,	R =   -50.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   175.367  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1533.119  mm,	Y =  -293.628  mm,	Z =  -251.980  mm,
	W =      .399 deg,	P =      .956 deg,	R =   -50.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   175.367  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1939.039  mm,	Y =   -26.687  mm,	Z =  -196.091  mm,
	W =    -1.430 deg,	P =    -1.348 deg,	R =   -50.778 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.166  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2226.017  mm,	Y =   411.466  mm,	Z =    42.877  mm,
	W =    -1.403 deg,	P =     1.375 deg,	R =    36.942 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.166  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2323.442  mm,	Y =   287.041  mm,	Z =    46.674  mm,
	W =    -1.964 deg,	P =     -.058 deg,	R =    -9.174 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.166  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1085.127  mm,	Y =  -291.005  mm,	Z =    67.858  mm,
	W =    -1.612 deg,	P =     1.122 deg,	R =    27.360 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   207.166  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1715.317  mm,	Y =  -602.551  mm,	Z =  -144.126  mm,
	W =     1.109 deg,	P =      .772 deg,	R =    11.445 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.916  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.983  mm,	Y =  -601.596  mm,	Z =  -201.140  mm,
	W =     1.126 deg,	P =      .749 deg,	R =    12.673 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.415  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1706.983  mm,	Y =  -601.596  mm,	Z =  -201.140  mm,
	W =     1.126 deg,	P =      .749 deg,	R =    12.673 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.415  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.045  mm,	Y =  -703.315  mm,	Z =  -199.821  mm,
	W =     1.072 deg,	P =      .819 deg,	R =     8.911 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.415  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.045  mm,	Y =  -703.315  mm,	Z =  -199.821  mm,
	W =     1.072 deg,	P =      .819 deg,	R =     8.911 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   186.415  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1823.081  mm,	Y =  -663.646  mm,	Z =   -84.681  mm,
	W =     1.053 deg,	P =      .843 deg,	R =     7.629 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     5.500  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1819.637  mm,	Y =  -661.758  mm,	Z =  -210.728  mm,
	W =     1.086 deg,	P =      .803 deg,	R =     9.846 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   200.497  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1822.335  mm,	Y =  -692.449  mm,	Z =   -79.350  mm,
	W =     1.211 deg,	P =      .964 deg,	R =     6.998 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    13.107  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1823.845  mm,	Y =  -743.818  mm,	Z =   -77.999  mm,
	W =     1.011 deg,	P =      .895 deg,	R =     4.778 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    56.180  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1823.724  mm,	Y =  -774.858  mm,	Z =   -84.605  mm,
	W =      .980 deg,	P =      .928 deg,	R =     2.885 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    45.414  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1821.919  mm,	Y =  -773.130  mm,	Z =  -190.575  mm,
	W =     1.003 deg,	P =      .904 deg,	R =     4.271 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.580  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.323  mm,	Y =  -693.146  mm,	Z =  -109.936  mm,
	W =     1.045 deg,	P =      .856 deg,	R =     6.995 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    75.414  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.538  mm,	Y =  -577.983  mm,	Z =  -178.359  mm,
	W =    -1.079 deg,	P =    -1.639 deg,	R =   -64.129 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   215.667  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1297.618  mm,	Y =  -711.549  mm,	Z =  -175.462  mm,
	W =     1.054 deg,	P =      .824 deg,	R =     8.226 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.580  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1533.119  mm,	Y =  -293.628  mm,	Z =  -251.980  mm,
	W =      .399 deg,	P =      .956 deg,	R =   -50.835 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   175.367  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1252.287  mm,	Y =  -160.315  mm,	Z =   288.214  mm,
	W =      .090 deg,	P =     1.218 deg,	R =    32.113 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.033  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1755.405  mm,	Y = -1244.174  mm,	Z =  -145.241  mm,
	W =    -4.095 deg,	P =     -.587 deg,	R =   -72.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.699  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1764.007  mm,	Y = -1243.857  mm,	Z =  -160.587  mm,
	W =    -4.097 deg,	P =     -.586 deg,	R =   -72.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   127.948  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1764.007  mm,	Y = -1243.857  mm,	Z =  -160.587  mm,
	W =    -4.097 deg,	P =     -.586 deg,	R =   -72.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   127.948  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.250  mm,	Y = -1117.840  mm,	Z =  -188.134  mm,
	W =    -4.097 deg,	P =     -.586 deg,	R =   -72.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.031  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1611.614  mm,	Y =  -991.212  mm,	Z =  -185.034  mm,
	W =    -4.126 deg,	P =     -.319 deg,	R =   -68.354 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   201.281  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1780.274  mm,	Y = -1146.580  mm,	Z =  -179.895  mm,
	W =    -4.097 deg,	P =     -.586 deg,	R =   -72.067 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.448  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1775.925  mm,	Y = -1145.486  mm,	Z =  -149.663  mm,
	W =    -4.098 deg,	P =     -.585 deg,	R =   -72.068 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.197  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1752.453  mm,	Y = -1125.553  mm,	Z =  -147.867  mm,
	W =    -4.098 deg,	P =      .855 deg,	R =   -72.171 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    16.867  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1733.789  mm,	Y = -1122.952  mm,	Z =  -144.677  mm,
	W =    -4.099 deg,	P =     1.164 deg,	R =   -72.193 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    15.067  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1728.350  mm,	Y = -1140.728  mm,	Z =  -172.271  mm,
	W =    -4.098 deg,	P =     -.585 deg,	R =   -72.068 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   118.450  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1713.999  mm,	Y = -1022.594  mm,	Z =  -139.902  mm,
	W =    -4.099 deg,	P =     -.585 deg,	R =   -72.068 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.614  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.647  mm,	Y = -1031.758  mm,	Z =  -197.153  mm,
	W =    -4.104 deg,	P =     2.788 deg,	R =   -72.309 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.447  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.647  mm,	Y = -1031.758  mm,	Z =  -197.153  mm,
	W =    -4.104 deg,	P =     2.788 deg,	R =   -72.309 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.447  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1771.652  mm,	Y =  -956.369  mm,	Z =  -145.719  mm,
	W =    -7.450 deg,	P =     1.176 deg,	R =   -72.194 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1767.993  mm,	Y =  -953.324  mm,	Z =  -204.321  mm,
	W =    -7.451 deg,	P =     1.177 deg,	R =   -72.194 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.445  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1656.273  mm,	Y =  -824.181  mm,	Z =  -234.362  mm,
	W =    -7.520 deg,	P =     7.797 deg,	R =   -73.066 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.445  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.617  mm,	Y =  -949.291  mm,	Z =  -263.021  mm,
	W =    -7.520 deg,	P =     7.797 deg,	R =   -73.066 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.445  mm
};
/END
