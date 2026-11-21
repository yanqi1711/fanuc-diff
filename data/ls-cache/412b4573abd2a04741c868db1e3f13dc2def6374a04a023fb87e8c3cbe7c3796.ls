/PROG  ED46_55_56_OP110_WELD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED46_55_56_OP110";
PROG_SIZE	= 7728;
CREATE		= DATE 26-03-12  TIME 11:33:44;
MODIFIED	= DATE 26-04-27  TIME 12:03:56;
FILE_NAME	= ED44_46_;
VERSION		= 0;
LINE_COUNT	= 113;
MEMORY_SIZE	= 8064;
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
   5:  !进入干涉区 ;
   6:  CALL ENTER_ZONE(1) ;
   7:  !R10_R9修磨换帽干涉区 ;
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
  21:J P[31] 100% CNT100    ;
  22:   ;
  23:J P[10] 100% CNT100    ;
  24:J P[11] 100% CNT100    ;
  25:  !003 ;
  26:L P[157] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=3,ED=1]    ;
  27:   ;
  28:J P[99] 100% FINE    ;
  29:  !03 ;
  30:L P[45] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=3,ED=1]    ;
  31:J P[158] 100% CNT50    ;
  32:J P[42] 100% CNT50    ;
  33:J P[159] 100% CNT50    ;
  34:  !004 ;
  35:L P[14] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=4,ED=1]    ;
  36:J P[15] 100% CNT30    ;
  37:J P[20] 100% CNT20    ;
  38:   ;
  39:J P[21] 100% CNT25    ;
  40:J P[22] 100% CNT20    ;
  41:  !005 ;
  42:L P[24] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=5,ED=1]    ;
  43:J P[25] 100% CNT100    ;
  44:J P[26] 100% CNT100    ;
  45:  !006 ;
  46:L P[28] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=6,ED=1]    ;
  47:J P[12] 100% CNT100    ;
  48:J P[30] 100% CNT100    ;
  49:  !007 ;
  50:L P[33] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=7,ED=1]    ;
  51:J P[34] 100% CNT100    ;
  52:J P[17] 100% CNT100    ;
  53:  !001 ;
  54:L P[18] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=1,ED=1]    ;
  55:J P[19] 100% CNT100    ;
  56:J P[35] 100% CNT100    ;
  57:J P[36] 100% CNT100    ;
  58:J P[16] 100% CNT100    ;
  59:J P[23] 100% CNT100    ;
  60:J P[13] 100% CNT100    ;
  61:J P[27] 100% CNT100    ;
  62:J P[29] 100% CNT100    ;
  63:J P[103] 100% FINE    ;
  64:   ;
  65:  !--WITH R10 WELD ;
  66:  CALL EXIT_ZONE(1) ;
  67:   ;
  68:  !R10_R9修磨换帽干涉区 ;
  69:  CALL EXIT_ZONE(3) ;
  70:   ;
  71:J P[107] 100% CNT100    ;
  72:J P[55] 100% CNT10    ;
  73:   ;
  74:  !--WITH R10 WELD ;
  75:  CALL ENTER_ZONE(2) ;
  76:   ;
  77:J P[108] 100% CNT100    ;
  78:  !012 ;
  79:L P[39] 2000mm/sec CNT50
    :  SPOT[SD=1,P=4,t=2.5,S=12,ED=1]    ;
  80:J P[40] 100% CNT20    ;
  81:J P[47] 100% CNT20    ;
  82:J P[48] 100% CNT20    ;
  83:  !04 ;
  84:L P[41] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.5,S=4,ED=1]    ;
  85:J P[43] 100% CNT100    ;
  86:  !05 ;
  87:L P[44] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.5,S=5,ED=1]    ;
  88:J P[46] 100% CNT100    ;
  89:J P[61] 100% CNT20    ;
  90:   ;
  91:   ;
  92:J P[49] 100% CNT20    ;
  93:J P[50] 100% CNT20    ;
  94:  !01 ;
  95:J P[56] 100% CNT80    ;
  96:L P[57] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.5,S=5,ED=1]    ;
  97:J P[58] 100% CNT100    ;
  98:J P[51] 100% CNT100    ;
  99:J P[52] 100% CNT100    ;
 100:  !02 ;
 101:L P[59] 2000mm/sec CNT50
    :  SPOT[SD=1,P=5,t=3.5,S=5,ED=1]    ;
 102:J P[60] 100% CNT100    ;
 103:J P[53] 100% CNT100    ;
 104:J P[54] 100% CNT100    ;
 105:J P[38] 100% CNT100    ;
 106:J P[32] 100% CNT100    ;
 107:J P[37] 100% CNT100    ;
 108:   ;
 109:  !--WITH R10 WELD ;
 110:  CALL EXIT_ZONE(2) ;
 111:   ;
 112:J PR[1:HOME] 100% CNT100    ;
 113:  CALL FINISHSEG(2) ;
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
	X =  1820.958  mm,	Y =  1242.237  mm,	Z =   -44.035  mm,
	W =      .617 deg,	P =      .561 deg,	R =     3.393 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    59.195  mm
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
	X =  1759.658  mm,	Y =  1233.014  mm,	Z =   -91.076  mm,
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
	X =  1654.556  mm,	Y =  1221.676  mm,	Z =   -70.142  mm,
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
	X =  1561.135  mm,	Y =  1298.077  mm,	Z =   -52.365  mm,
	W =     -.951 deg,	P =      .743 deg,	R =    -5.808 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    24.401  mm
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
	X =  1649.966  mm,	Y =  1235.229  mm,	Z =  -148.975  mm,
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
	X =  1591.609  mm,	Y =  1211.153  mm,	Z =   -57.497  mm,
	W =    22.755 deg,	P =     2.730 deg,	R =    -2.143 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    22.738  mm
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
	X =  1751.081  mm,	Y =  1230.352  mm,	Z =  -130.127  mm,
	W =     5.675 deg,	P =     6.234 deg,	R =     2.826 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   151.607  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1917.238  mm,	Y =   437.512  mm,	Z =   -83.630  mm,
	W =    -4.862 deg,	P =    19.832 deg,	R =    87.658 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.929  mm
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
	X =  1877.970  mm,	Y =   516.255  mm,	Z =   419.115  mm,
	W =    -5.424 deg,	P =     6.045 deg,	R =    81.391 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.929  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1914.269  mm,	Y =   497.789  mm,	Z =  -101.712  mm,
	W =     -.247 deg,	P =      .561 deg,	R =   102.694 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   204.929  mm
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
	X =  1680.126  mm,	Y =  1283.886  mm,	Z =   -57.579  mm,
	W =     -.215 deg,	P =      .576 deg,	R =   105.832 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   167.999  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1670.004  mm,	Y =  1228.341  mm,	Z =   -92.009  mm,
	W =     4.309 deg,	P =    -2.587 deg,	R =     2.699 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   194.333  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.301  mm,	Y =  1315.009  mm,	Z =   -87.550  mm,
	W =     -.212 deg,	P =      .575 deg,	R =   105.833 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    99.498  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.083  mm,	Y =  1315.305  mm,	Z =   -53.301  mm,
	W =     -.212 deg,	P =      .575 deg,	R =   105.833 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    13.248  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1709.190  mm,	Y =  1206.842  mm,	Z =   -59.711  mm,
	W =    19.762 deg,	P =    -1.262 deg,	R =     1.519 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    42.500  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1678.309  mm,	Y =  1314.975  mm,	Z =   -91.339  mm,
	W =     -.211 deg,	P =      .575 deg,	R =   105.833 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   217.501  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1681.667  mm,	Y =  1287.808  mm,	Z =   -82.061  mm,
	W =     -.218 deg,	P =      .576 deg,	R =   105.833 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.500  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1680.446  mm,	Y =  1283.900  mm,	Z =   -61.226  mm,
	W =     -.218 deg,	P =      .576 deg,	R =   105.832 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   168.000  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1752.487  mm,	Y =  1272.196  mm,	Z =   -90.546  mm,
	W =     -.271 deg,	P =      .548 deg,	R =    99.454 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   217.499  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.815  mm,	Y =  1313.904  mm,	Z =   -90.862  mm,
	W =     -.282 deg,	P =      .543 deg,	R =    98.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   217.499  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.893  mm,	Y =  1313.842  mm,	Z =   -98.737  mm,
	W =     -.280 deg,	P =      .543 deg,	R =    98.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    77.950  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.183  mm,	Y =  1279.424  mm,	Z =   -93.566  mm,
	W =     -.276 deg,	P =      .544 deg,	R =    98.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    94.995  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.344  mm,	Y =  1279.177  mm,	Z =  -121.783  mm,
	W =     -.275 deg,	P =      .544 deg,	R =    98.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   217.495  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1766.370  mm,	Y =  1054.338  mm,	Z =  -119.826  mm,
	W =     -.273 deg,	P =      .544 deg,	R =    98.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   217.492  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1862.188  mm,	Y =   527.388  mm,	Z =  -144.728  mm,
	W =     1.426 deg,	P =     1.167 deg,	R =    95.158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.669  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.721  mm,	Y =  1314.025  mm,	Z =   -75.161  mm,
	W =     -.281 deg,	P =      .543 deg,	R =    98.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.668  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.600  mm,	Y =  1314.188  mm,	Z =   -55.979  mm,
	W =     -.281 deg,	P =      .543 deg,	R =    98.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.668  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1759.721  mm,	Y =  1314.025  mm,	Z =   -75.161  mm,
	W =     -.281 deg,	P =      .543 deg,	R =    98.349 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    46.668  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1757.214  mm,	Y =  1284.759  mm,	Z =   -57.058  mm,
	W =     -.276 deg,	P =      .544 deg,	R =    98.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    35.748  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.184  mm,	Y =  1279.424  mm,	Z =   -93.566  mm,
	W =     -.276 deg,	P =      .544 deg,	R =    98.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    94.995  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1701.586  mm,	Y =  1245.937  mm,	Z =   -90.501  mm,
	W =     -.232 deg,	P =      .567 deg,	R =   103.683 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   217.501  mm
};
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1712.317  mm,	Y =  1212.079  mm,	Z =   -74.223  mm,
	W =    19.522 deg,	P =     -.894 deg,	R =     1.654 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    42.501  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1842.397  mm,	Y =   621.469  mm,	Z =   459.020  mm,
	W =   -17.221 deg,	P =     3.188 deg,	R =    85.311 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   210.915  mm
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1887.005  mm,	Y =   449.680  mm,	Z =   154.251  mm,
	W =    -5.320 deg,	P =     8.049 deg,	R =    90.251 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   216.669  mm
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1755.539  mm,	Y =  1135.547  mm,	Z =  -101.635  mm,
	W =     -.153 deg,	P =    -2.858 deg,	R =    99.286 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   177.050  mm
};
P[157]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1754.265  mm,	Y =  1207.939  mm,	Z =   -58.204  mm,
	W =    20.344 deg,	P =     -.895 deg,	R =     1.654 deg
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
	X =  1658.746  mm,	Y =  1226.057  mm,	Z =   -78.178  mm,
	W =    17.849 deg,	P =    -3.173 deg,	R =     6.343 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   194.333  mm
};
/END
