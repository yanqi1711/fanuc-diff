/PROG  ED44_46_OP120_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED44_46_OP120";
PROG_SIZE	= 9528;
CREATE		= DATE 26-03-09  TIME 12:52:22;
MODIFIED	= DATE 26-09-13  TIME 11:01:30;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 127;
MEMORY_SIZE	= 9808;
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
   5:  !R10_R9WELD 干涉区 ;
   6:  CALL ENTER_ZONE(1) ;
   7:  !R10_R9修磨换帽干涉区 ;
   8:  CALL ENTER_ZONE(3) ;
   9:   ;
  10:J PR[1:HOME] 100% CNT100    ;
  11:J P[6] 100% CNT100    ;
  12:J P[5] 100% CNT100    ;
  13:J P[4] 100% CNT100    ;
  14:J P[3] 100% CNT100    ;
  15:J P[2] 100% CNT100    ;
  16:  !R9_001 ;
  17:L P[1] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=40,ED=1]    ;
  18:  !R9_002 ;
  19:L P[7] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=41,ED=1]    ;
  20:  !R9_003 ;
  21:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=42,ED=1]    ;
  22:J P[12] 100% CNT100    ;
  23:J P[11] 100% CNT100    ;
  24:J P[10] 100% CNT100    ;
  25:J P[9] 100% CNT100    ;
  26:J P[13] 100% CNT100    ;
  27:J P[18] 100% CNT100    ;
  28:J P[17] 100% CNT100    ;
  29:J P[16] 100% CNT100    ;
  30:J P[15] 100% CNT100    ;
  31:  !R9_004 ;
  32:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=43,ED=1]    ;
  33:J P[19] 100% CNT100    ;
  34:J P[20] 100% CNT100    ;
  35:J P[21] 100% CNT100    ;
  36:J P[22] 100% CNT100    ;
  37:J P[23] 100% CNT100    ;
  38:  !R9_005 ;
  39:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=44,ED=1]    ;
  40:J P[26] 100% CNT100    ;
  41:J P[83] 100% CNT100    ;
  42:J P[84] 100% CNT100    ;
  43:J P[85] 100% CNT100    ;
  44:  !R9_006 ;
  45:L P[86] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=45,ED=1]    ;
  46:J P[88] 100% CNT100    ;
  47:  !R9_007 ;
  48:L P[87] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=46,ED=1]    ;
  49:  !R9_008 ;
  50:L P[89] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=47,ED=1]    ;
  51:J P[90] 100% CNT100    ;
  52:J P[92] 100% CNT100    ;
  53:  !R9_009 ;
  54:L P[91] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=48,ED=1]    ;
  55:J P[93] 100% CNT100    ;
  56:J P[94] 100% CNT100    ;
  57:J P[95] 100% CNT100    ;
  58:J P[27] 100% CNT100    ;
  59:J P[28] 100% CNT100    ;
  60:J P[29] 100% CNT100    ;
  61:J P[30] 100% CNT100    ;
  62:J P[36] 100% FINE    ;
  63:   ;
  64:  !R10_R9WELD 干涉区 ;
  65:  CALL EXIT_ZONE(1) ;
  66:  !R10_R9修磨换帽干涉区 ;
  67:  CALL EXIT_ZONE(3) ;
  68:   ;
  69:J P[35] 100% CNT100    ;
  70:J P[34] 100% CNT100    ;
  71:J P[33] 100% CNT100    ;
  72:J P[32] 100% CNT100    ;
  73:  !R9_010 ;
  74:L P[31] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=49,ED=1]    ;
  75:J P[39] 100% CNT100    ;
  76:J P[38] 100% CNT100    ;
  77:J P[37] 100% CNT100    ;
  78:  !R9_011 ;
  79:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=50,ED=1]    ;
  80:J P[41] 100% CNT100    ;
  81:J P[42] 100% CNT100    ;
  82:J P[43] 100% CNT100    ;
  83:J P[51] 100% CNT100    ;
  84:J P[50] 100% CNT100    ;
  85:J P[49] 100% CNT100    ;
  86:J P[48] 100% CNT100    ;
  87:J P[47] 100% CNT100    ;
  88:J P[46] 100% CNT100    ;
  89:J P[44] 100% CNT100    ;
  90:  !R9_015 ;
  91:L P[45] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=51,ED=1]    ;
  92:J P[56] 100% CNT100    ;
  93:J P[55] 100% CNT100    ;
  94:J P[54] 100% CNT100    ;
  95:J P[72] 100% CNT100    ;
  96:J P[73] 100% CNT100    ;
  97:J P[77] 100% CNT100    ;
  98:J P[76] 100% CNT100    ;
  99:J P[75] 100% CNT100    ;
 100:  !R9_014 ;
 101:L P[74] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.0,S=52,ED=1]    ;
 102:J P[82] 100% CNT100    ;
 103:J P[81] 100% CNT100    ;
 104:J P[80] 100% CNT100    ;
 105:J P[79] 100% CNT100    ;
 106:J P[78] 100% CNT100    ;
 107:J P[53] 100% CNT100    ;
 108:  !R9_012 ;
 109:L P[52] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.6,S=53,ED=1]    ;
 110:J P[57] 100% CNT100    ;
 111:J P[58] 100% CNT100    ;
 112:J P[63] 100% CNT100    ;
 113:J P[62] 100% CNT100    ;
 114:J P[61] 100% CNT100    ;
 115:J P[60] 100% CNT100    ;
 116:  !R9_013 ;
 117:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.6,S=54,ED=1]    ;
 118:J P[66] 100% CNT100    ;
 119:J P[65] 100% CNT100    ;
 120:J P[64] 100% CNT100    ;
 121:J P[67] 100% CNT100    ;
 122:J P[68] 100% CNT100    ;
 123:J P[69] 100% CNT100    ;
 124:J P[70] 100% CNT100    ;
 125:J P[71] 100% CNT100    ;
 126:J PR[1:HOME] 100% CNT100    ;
 127:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1787.562  mm,	Y =  1279.577  mm,	Z =  -156.477  mm,
	W =    -2.281 deg,	P =    10.225 deg,	R =   -12.984 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1786.255  mm,	Y =  1281.346  mm,	Z =  -170.028  mm,
	W =    -2.284 deg,	P =    10.226 deg,	R =   -12.985 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.566  mm,	Y =  1301.665  mm,	Z =  -167.039  mm,
	W =    -2.054 deg,	P =    10.275 deg,	R =   -11.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.004  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1519.673  mm,	Y =  1334.250  mm,	Z =  -147.345  mm,
	W =    -1.359 deg,	P =    10.390 deg,	R =    -7.796 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.005  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1408.674  mm,	Y =  1349.447  mm,	Z =  -126.804  mm,
	W =     -.887 deg,	P =    10.440 deg,	R =    -5.188 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.005  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1430.186  mm,	Y =  1370.625  mm,	Z =   386.249  mm,
	W =    11.025 deg,	P =     7.279 deg,	R =    13.165 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.805  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1789.747  mm,	Y =  1250.499  mm,	Z =  -154.799  mm,
	W =    -2.284 deg,	P =    10.226 deg,	R =   -12.984 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.005  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1740.191  mm,	Y =  1246.041  mm,	Z =  -150.941  mm,
	W =     2.055 deg,	P =     8.039 deg,	R =   -13.196 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.790  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1412.370  mm,	Y =  1392.326  mm,	Z =  -127.500  mm,
	W =     -.555 deg,	P =    10.463 deg,	R =    -3.350 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.004  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1519.673  mm,	Y =  1334.250  mm,	Z =  -147.345  mm,
	W =    -1.359 deg,	P =    10.390 deg,	R =    -7.796 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.005  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1695.566  mm,	Y =  1301.665  mm,	Z =  -167.039  mm,
	W =    -2.054 deg,	P =    10.275 deg,	R =   -11.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.004  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1723.396  mm,	Y =  1267.621  mm,	Z =  -159.012  mm,
	W =    -2.210 deg,	P =    10.243 deg,	R =   -12.558 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    62.004  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1360.487  mm,	Y =  1234.603  mm,	Z =  -118.085  mm,
	W =     -.213 deg,	P =    10.476 deg,	R =    -1.466 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   100.004  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1722.291  mm,	Y =  1157.114  mm,	Z =  -148.169  mm,
	W =      .130 deg,	P =    10.478 deg,	R =      .434 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1746.984  mm,	Y =  1159.678  mm,	Z =  -186.006  mm,
	W =      .260 deg,	P =    10.477 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   148.995  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1700.777  mm,	Y =  1158.743  mm,	Z =  -177.459  mm,
	W =      .260 deg,	P =    10.477 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   148.995  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1611.299  mm,	Y =  1156.916  mm,	Z =  -160.945  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   148.993  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1396.894  mm,	Y =  1152.639  mm,	Z =  -136.233  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   148.993  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1743.034  mm,	Y =  1159.677  mm,	Z =  -207.297  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1766.833  mm,	Y =  1147.864  mm,	Z =  -213.541  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1767.444  mm,	Y =  1116.418  mm,	Z =  -213.681  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1767.637  mm,	Y =  1106.519  mm,	Z =  -213.725  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1768.021  mm,	Y =  1086.721  mm,	Z =  -213.813  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.000  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1783.550  mm,	Y =  1088.330  mm,	Z =  -156.521  mm,
	W =      .256 deg,	P =     8.578 deg,	R =     1.151 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1763.785  mm,	Y =  1089.739  mm,	Z =  -236.383  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.159 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.501  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.537  mm,	Y =   987.423  mm,	Z =  -206.263  mm,
	W =      .257 deg,	P =    10.480 deg,	R =     1.159 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.499  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1328.681  mm,	Y =  1077.962  mm,	Z =  -167.200  mm,
	W =      .256 deg,	P =    10.480 deg,	R =     1.159 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.499  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1430.186  mm,	Y =  1370.625  mm,	Z =   386.249  mm,
	W =    11.025 deg,	P =     7.279 deg,	R =    13.165 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   122.805  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1765.981  mm,	Y =  1019.590  mm,	Z =  1512.494  mm,
	W =      .000 deg,	P =   -30.000 deg,	R =    30.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.495  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1787.015  mm,	Y =   736.317  mm,	Z =  -154.905  mm,
	W =     3.652 deg,	P =     2.195 deg,	R =    54.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1793.419  mm,	Y =   747.809  mm,	Z =  -218.331  mm,
	W =     3.653 deg,	P =     2.196 deg,	R =    54.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1773.103  mm,	Y =   719.533  mm,	Z =  -217.021  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.001  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1697.822  mm,	Y =   616.731  mm,	Z =  -230.510  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.001  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1539.494  mm,	Y =   396.297  mm,	Z =  -220.099  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.001  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1664.217  mm,	Y =   210.471  mm,	Z =   298.825  mm,
	W =   -10.563 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.001  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1697.822  mm,	Y =   616.731  mm,	Z =  -230.510  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.001  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1773.103  mm,	Y =   719.533  mm,	Z =  -217.021  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.001  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1793.419  mm,	Y =   747.809  mm,	Z =  -218.331  mm,
	W =     3.653 deg,	P =     2.196 deg,	R =    54.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.000  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1721.317  mm,	Y =   664.520  mm,	Z =  -150.804  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1716.165  mm,	Y =   658.146  mm,	Z =  -216.938  mm,
	W =     3.655 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   184.999  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1487.847  mm,	Y =   412.277  mm,	Z =  -201.664  mm,
	W =     3.663 deg,	P =     2.200 deg,	R =    54.313 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.003  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1714.985  mm,	Y =   248.286  mm,	Z =  -219.564  mm,
	W =     3.662 deg,	P =     2.200 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.004  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2204.760  mm,	Y =  1188.460  mm,	Z =  -148.079  mm,
	W =     2.456 deg,	P =      .957 deg,	R =    77.800 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2226.024  mm,	Y =  1182.037  mm,	Z =   -90.180  mm,
	W =     1.276 deg,	P =     1.791 deg,	R =    75.552 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    23.750  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.682  mm,	Y =  1157.206  mm,	Z =  -147.211  mm,
	W =     2.456 deg,	P =      .957 deg,	R =    77.800 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.949  mm,	Y =   953.987  mm,	Z =  -144.153  mm,
	W =     2.435 deg,	P =     1.009 deg,	R =    76.589 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2145.578  mm,	Y =   809.663  mm,	Z =  -142.631  mm,
	W =     2.400 deg,	P =     1.091 deg,	R =    74.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2087.979  mm,	Y =   599.643  mm,	Z =  -138.540  mm,
	W =     2.374 deg,	P =     1.150 deg,	R =    73.241 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2076.582  mm,	Y =   408.035  mm,	Z =  -136.628  mm,
	W =     2.329 deg,	P =     1.238 deg,	R =    71.104 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1955.698  mm,	Y =   261.565  mm,	Z =  -135.211  mm,
	W =     2.850 deg,	P =     1.569 deg,	R =    64.774 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.006  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.045  mm,	Y =   811.950  mm,	Z =   -85.946  mm,
	W =     1.322 deg,	P =     1.091 deg,	R =    74.665 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    16.833  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2121.382  mm,	Y =   769.032  mm,	Z =  -141.235  mm,
	W =     2.400 deg,	P =     1.091 deg,	R =    74.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2155.949  mm,	Y =   953.987  mm,	Z =  -144.153  mm,
	W =     2.435 deg,	P =     1.009 deg,	R =    76.589 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2190.682  mm,	Y =  1157.206  mm,	Z =  -147.211  mm,
	W =     2.456 deg,	P =      .957 deg,	R =    77.800 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2204.760  mm,	Y =  1188.460  mm,	Z =  -148.079  mm,
	W =     2.456 deg,	P =      .957 deg,	R =    77.800 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2172.313  mm,	Y =   820.172  mm,	Z =  -152.931  mm,
	W =     2.400 deg,	P =     1.091 deg,	R =    74.666 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2207.006  mm,	Y =   810.131  mm,	Z =  -179.662  mm,
	W =     2.341 deg,	P =     1.212 deg,	R =    71.746 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2267.218  mm,	Y =   810.905  mm,	Z =   -85.918  mm,
	W =     1.347 deg,	P =     1.934 deg,	R =    51.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    18.333  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.389  mm,	Y =   811.249  mm,	Z =  -185.787  mm,
	W =     1.796 deg,	P =     1.936 deg,	R =    51.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.368  mm,	Y =   807.036  mm,	Z =  -185.527  mm,
	W =     1.841 deg,	P =     1.893 deg,	R =    53.302 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2246.450  mm,	Y =   782.995  mm,	Z =  -184.536  mm,
	W =     1.869 deg,	P =     1.865 deg,	R =    54.157 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2230.271  mm,	Y =   800.210  mm,	Z =  -181.483  mm,
	W =     2.121 deg,	P =     1.567 deg,	R =    62.647 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2246.450  mm,	Y =   782.995  mm,	Z =  -184.536  mm,
	W =     1.869 deg,	P =     1.865 deg,	R =    54.157 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2264.368  mm,	Y =   807.036  mm,	Z =  -185.527  mm,
	W =     1.841 deg,	P =     1.893 deg,	R =    53.302 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.389  mm,	Y =   811.249  mm,	Z =  -185.787  mm,
	W =     1.796 deg,	P =     1.936 deg,	R =    51.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.008  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2199.154  mm,	Y =   718.112  mm,	Z =  -191.641  mm,
	W =     1.900 deg,	P =     1.839 deg,	R =    55.013 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.009  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2089.350  mm,	Y =   566.065  mm,	Z =  -185.463  mm,
	W =     1.870 deg,	P =     1.866 deg,	R =    54.157 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.007  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1990.971  mm,	Y =   419.631  mm,	Z =  -179.915  mm,
	W =     1.870 deg,	P =     1.866 deg,	R =    54.157 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.007  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1871.928  mm,	Y =   254.837  mm,	Z =  -173.291  mm,
	W =     1.870 deg,	P =     1.866 deg,	R =    54.157 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.007  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1770.295  mm,	Y =   216.626  mm,	Z =   515.823  mm,
	W =   -18.641 deg,	P =    -2.789 deg,	R =    48.338 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   180.359  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2178.354  mm,	Y =   898.146  mm,	Z =  -173.104  mm,
	W =     2.395 deg,	P =     1.109 deg,	R =    74.239 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.009  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.319  mm,	Y =   889.578  mm,	Z =  -186.509  mm,
	W =     2.326 deg,	P =     1.246 deg,	R =    70.914 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.009  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2270.824  mm,	Y =   941.230  mm,	Z =   -85.613  mm,
	W =     2.075 deg,	P =     1.634 deg,	R =    60.867 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.166  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2277.401  mm,	Y =   935.799  mm,	Z =  -172.178  mm,
	W =     2.075 deg,	P =     1.634 deg,	R =    60.868 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.998  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2260.866  mm,	Y =   935.419  mm,	Z =  -171.422  mm,
	W =     2.100 deg,	P =     1.601 deg,	R =    61.771 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.998  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2238.756  mm,	Y =   917.917  mm,	Z =  -177.108  mm,
	W =     2.219 deg,	P =     1.429 deg,	R =    66.304 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   182.482  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2178.354  mm,	Y =   898.146  mm,	Z =  -173.104  mm,
	W =     2.395 deg,	P =     1.109 deg,	R =    74.239 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.009  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2210.319  mm,	Y =   889.578  mm,	Z =  -186.509  mm,
	W =     2.326 deg,	P =     1.246 deg,	R =    70.914 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.009  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2238.756  mm,	Y =   917.917  mm,	Z =  -177.108  mm,
	W =     2.219 deg,	P =     1.429 deg,	R =    66.304 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   182.482  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2260.866  mm,	Y =   935.419  mm,	Z =  -171.422  mm,
	W =     2.100 deg,	P =     1.601 deg,	R =    61.771 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.998  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2277.401  mm,	Y =   935.799  mm,	Z =  -172.178  mm,
	W =     2.075 deg,	P =     1.634 deg,	R =    60.868 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.998  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1762.779  mm,	Y =  1079.685  mm,	Z =  -242.894  mm,
	W =      .257 deg,	P =     7.484 deg,	R =     1.146 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.498  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1764.303  mm,	Y =   980.498  mm,	Z =  -246.342  mm,
	W =      .256 deg,	P =     7.485 deg,	R =     1.146 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.499  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1834.092  mm,	Y =   957.794  mm,	Z =  -234.580  mm,
	W =      .256 deg,	P =     7.485 deg,	R =     1.146 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.499  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1829.085  mm,	Y =   960.829  mm,	Z =   -92.487  mm,
	W =      .254 deg,	P =     3.030 deg,	R =     1.126 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.917  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1830.815  mm,	Y =   927.708  mm,	Z =   -87.915  mm,
	W =      .253 deg,	P =     3.031 deg,	R =     1.126 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1827.768  mm,	Y =   947.099  mm,	Z =   -99.227  mm,
	W =      .251 deg,	P =     3.033 deg,	R =     1.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.579  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1828.911  mm,	Y =   883.426  mm,	Z =   -85.404  mm,
	W =      .251 deg,	P =     3.033 deg,	R =     1.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    17.083  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.905  mm,	Y =   863.802  mm,	Z =  -104.354  mm,
	W =      .251 deg,	P =     3.033 deg,	R =     1.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.579  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1828.646  mm,	Y =   848.855  mm,	Z =   -90.851  mm,
	W =     -.177 deg,	P =     3.041 deg,	R =    -6.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    13.150  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1829.563  mm,	Y =   868.191  mm,	Z =  -118.898  mm,
	W =     -.177 deg,	P =     3.041 deg,	R =    -6.893 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    48.321  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1825.682  mm,	Y =   868.397  mm,	Z =  -191.968  mm,
	W =     -.178 deg,	P =     3.042 deg,	R =    -6.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.319  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1817.354  mm,	Y =   869.404  mm,	Z =  -191.522  mm,
	W =     -.178 deg,	P =     3.042 deg,	R =    -6.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.319  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.419  mm,	Y =   885.810  mm,	Z =  -193.861  mm,
	W =     -.179 deg,	P =     3.042 deg,	R =    -6.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   169.319  mm
};
/END
