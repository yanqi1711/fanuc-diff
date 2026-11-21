/PROG  ED54_OP120_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED54_55_56_OP120";
PROG_SIZE	= 8692;
CREATE		= DATE 26-03-09  TIME 21:49:10;
MODIFIED	= DATE 26-10-04  TIME 17:55:52;
FILE_NAME	= ED44_46_;
VERSION		= 0;
LINE_COUNT	= 113;
MEMORY_SIZE	= 9028;
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
  13:J P[3] 100% CNT100    ;
  14:J P[4] 100% CNT100    ;
  15:  !R9_001 ;
  16:L P[44] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.5,S=40,ED=1]    ;
  17:J P[25] 100% CNT100    ;
  18:  !R9_002 ;
  19:L P[45] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.5,S=40,ED=1]    ;
  20:J P[97] 100% CNT100    ;
  21:J P[2] 100% CNT100    ;
  22:  !R9_003 ;
  23:L P[1] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=40,ED=1]    ;
  24:  !R9_004 ;
  25:L P[7] 2000mm/sec CNT50
    :  SPOT[SD=1,P=7,t=4.0,S=41,ED=1]    ;
  26:J P[46] 100% CNT100    ;
  27:  !R9_005 ;
  28:L P[8] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=42,ED=1]    ;
  29:J P[12] 100% CNT100    ;
  30:J P[11] 100% CNT100    ;
  31:J P[10] 100% CNT100    ;
  32:J P[9] 100% CNT100    ;
  33:J P[13] 100% CNT100    ;
  34:J P[18] 100% CNT100    ;
  35:J P[17] 100% CNT100    ;
  36:J P[16] 100% CNT100    ;
  37:J P[15] 100% CNT100    ;
  38:  !R9_006 ;
  39:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=43,ED=1]    ;
  40:J P[19] 100% CNT100    ;
  41:J P[20] 100% CNT100    ;
  42:J P[21] 100% CNT100    ;
  43:J P[22] 100% CNT100    ;
  44:J P[23] 100% CNT100    ;
  45:  !R9_007 ;
  46:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=44,ED=1]    ;
  47:J P[26] 100% CNT100    ;
  48:J P[83] 100% CNT100    ;
  49:J P[84] 100% CNT100    ;
  50:J P[85] 100% CNT100    ;
  51:  !R9_008 ;
  52:L P[86] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=45,ED=1]    ;
  53:J P[88] 100% CNT100    ;
  54:  !R9_009 ;
  55:L P[87] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=46,ED=1]    ;
  56:  !R9_010 ;
  57:L P[89] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=47,ED=1]    ;
  58:J P[90] 100% CNT100    ;
  59:J P[92] 100% CNT100    ;
  60:  !R9_011 ;
  61:L P[91] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.3,S=48,ED=1]    ;
  62:J P[93] 100% CNT100    ;
  63:J P[94] 100% CNT100    ;
  64:J P[95] 100% CNT100    ;
  65:J P[27] 100% CNT100    ;
  66:J P[28] 100% CNT100    ;
  67:J P[29] 100% CNT100    ;
  68:J P[30] 100% CNT100    ;
  69:J P[36] 100% CNT100    ;
  70:J P[35] 100% CNT100    ;
  71:   ;
  72:  !R10_R9WELD 干涉区 ;
  73:  CALL EXIT_ZONE(1) ;
  74:  !R10_R9修磨换帽干涉区 ;
  75:  CALL EXIT_ZONE(3) ;
  76:   ;
  77:J P[34] 100% CNT100    ;
  78:J P[33] 100% CNT100    ;
  79:J P[32] 100% CNT100    ;
  80:  !R9_012 ;
  81:L P[31] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=49,ED=1]    ;
  82:J P[39] 100% CNT100    ;
  83:J P[38] 100% CNT100    ;
  84:J P[37] 100% CNT100    ;
  85:  !R9_013 ;
  86:L P[40] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=2.7,S=50,ED=1]    ;
  87:J P[41] 100% CNT100    ;
  88:J P[42] 100% CNT100    ;
  89:J P[43] 100% CNT100    ;
  90:J P[51] 100% CNT100    ;
  91:J P[50] 100% CNT100    ;
  92:J P[49] 100% CNT100    ;
  93:J P[48] 100% CNT100    ;
  94:  !R9_014 ;
  95:L P[47] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.6,S=53,ED=1]    ;
  96:J P[57] 100% CNT100    ;
  97:J P[58] 100% CNT100    ;
  98:J P[63] 100% CNT100    ;
  99:J P[62] 100% CNT100    ;
 100:J P[61] 100% CNT100    ;
 101:J P[60] 100% CNT100    ;
 102:  !R9_015 ;
 103:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=1,P=6,t=3.6,S=54,ED=1]    ;
 104:J P[66] 100% CNT100    ;
 105:J P[65] 100% CNT100    ;
 106:J P[64] 100% CNT100    ;
 107:J P[67] 100% CNT100    ;
 108:J P[68] 100% CNT100    ;
 109:J P[69] 100% CNT100    ;
 110:J P[70] 100% CNT100    ;
 111:J P[71] 100% CNT100    ;
 112:J PR[1:HOME] 100% CNT100    ;
 113:  CALL FINISHSEG(2) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1790.032  mm,	Y =  1281.160  mm,	Z =  -155.997  mm,
	W =     -.557 deg,	P =     7.923 deg,	R =   -12.892 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.998  mm
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
	X =  1676.721  mm,	Y =  1334.416  mm,	Z =  -178.934  mm,
	W =    -1.361 deg,	P =    10.390 deg,	R =    -7.796 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.003  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1735.734  mm,	Y =  1322.286  mm,	Z =  -166.119  mm,
	W =    -1.367 deg,	P =    10.393 deg,	R =    -7.797 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   143.500  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1408.674  mm,	Y =  1349.446  mm,	Z =  -126.805  mm,
	W =     -.887 deg,	P =    10.440 deg,	R =    -5.188 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   125.005  mm
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
	X =  1790.556  mm,	Y =  1250.754  mm,	Z =  -155.032  mm,
	W =    -2.265 deg,	P =     7.081 deg,	R =   -12.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    16.164  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1739.632  mm,	Y =  1245.659  mm,	Z =  -149.762  mm,
	W =     4.690 deg,	P =     6.726 deg,	R =    -8.698 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.033  mm
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
	X =  1722.194  mm,	Y =  1152.681  mm,	Z =  -148.901  mm,
	W =      .130 deg,	P =    10.336 deg,	R =      .434 deg
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
	J1=   197.501  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1766.833  mm,	Y =  1147.864  mm,	Z =  -213.541  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.501  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1767.444  mm,	Y =  1116.418  mm,	Z =  -213.681  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.501  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1767.637  mm,	Y =  1106.519  mm,	Z =  -213.725  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.501  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1768.021  mm,	Y =  1086.721  mm,	Z =  -213.813  mm,
	W =      .259 deg,	P =    10.478 deg,	R =     1.160 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   197.501  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1784.215  mm,	Y =  1085.275  mm,	Z =  -153.135  mm,
	W =      .255 deg,	P =     6.523 deg,	R =     1.141 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    28.000  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1735.770  mm,	Y =  1322.308  mm,	Z =  -166.098  mm,
	W =    -1.363 deg,	P =    10.391 deg,	R =    -7.797 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    42.331  mm
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
	X =  1777.341  mm,	Y =   727.992  mm,	Z =  -153.415  mm,
	W =     2.229 deg,	P =     2.551 deg,	R =    54.359 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    63.332  mm
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
	X =  1749.325  mm,	Y =   328.966  mm,	Z =   293.230  mm,
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
	X =  1726.148  mm,	Y =   660.421  mm,	Z =  -148.931  mm,
	W =     3.654 deg,	P =     2.197 deg,	R =    54.312 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    36.667  mm
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
	X =  1739.234  mm,	Y =  1322.267  mm,	Z =  -148.494  mm,
	W =     -.754 deg,	P =     4.371 deg,	R =    -7.653 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.581  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1791.143  mm,	Y =  1315.208  mm,	Z =  -155.205  mm,
	W =      .381 deg,	P =     4.266 deg,	R =    -7.652 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.909  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1788.306  mm,	Y =  1250.559  mm,	Z =  -172.340  mm,
	W =    -2.265 deg,	P =     7.081 deg,	R =   -12.858 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    44.000  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2192.935  mm,	Y =   815.086  mm,	Z =   -86.386  mm,
	W =      .652 deg,	P =     1.091 deg,	R =    74.665 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.375  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2186.368  mm,	Y =   816.582  mm,	Z =  -132.853  mm,
	W =     2.399 deg,	P =     1.091 deg,	R =    74.665 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   104.498  mm
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
	X =  2004.265  mm,	Y =   364.655  mm,	Z =  -138.332  mm,
	W =     2.850 deg,	P =     1.569 deg,	R =    64.774 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.005  mm
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
	X =  2270.909  mm,	Y =   811.059  mm,	Z =   -87.108  mm,
	W =     1.794 deg,	P =     1.934 deg,	R =    51.947 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.762  mm
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
	X =  1831.173  mm,	Y =   960.872  mm,	Z =   -92.765  mm,
	W =      .254 deg,	P =     3.030 deg,	R =     1.126 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1830.815  mm,	Y =   927.709  mm,	Z =   -87.915  mm,
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
	X =  1832.268  mm,	Y =   883.497  mm,	Z =   -86.600  mm,
	W =      .251 deg,	P =     3.033 deg,	R =     1.125 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    25.000  mm
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
	X =  1829.009  mm,	Y =   848.807  mm,	Z =   -92.574  mm,
	W =     -.177 deg,	P =     3.041 deg,	R =    -6.894 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    26.733  mm
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
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1787.893  mm,	Y =  1315.111  mm,	Z =  -171.288  mm,
	W =    -1.731 deg,	P =    10.343 deg,	R =    -9.781 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    65.408  mm
};
/END
