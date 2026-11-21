/PROG  G3G5_PICK_OP110
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PICK OP110";
PROG_SIZE	= 1994;
CREATE		= DATE 26-04-18  TIME 14:31:44;
MODIFIED	= DATE 26-06-13  TIME 17:10:14;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 43;
MEMORY_SIZE	= 2502;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1:GUN] ;
   4:  CALL CHECK_NO_PART(1) ;
   5:   ;
   6:  DO[314: * ]=ON ;
   7:  CALL RELEASE_PART    ;
   8:J PR[1:HOME] 100% FINE    ;
   9:  CALL SEGMENT(7) ;
  10:  IF DI[129:OFF:Reserve]=ON,JMP LBL[97] ;
  11:J P[9] 100% CNT100    ;
  12:   ;
  13:J P[8] 100% CNT100    ;
  14:J P[7] 100% CNT100    ;
  15:J P[6] 100% CNT100    ;
  16:L P[5] 2000mm/sec CNT100    ;
  17:L P[4] 2000mm/sec CNT100    ;
  18:L P[3] 2000mm/sec CNT50    ;
  19:L P[2] 1500mm/sec FINE    ;
  20:  !POS ;
  21:L P[1] 600mm/sec FINE    ;
  22:  CALL CHECK_PART(1) ;
  23:  DO[334: * ]=OFF ;
  24:  DO[333: * ]=ON ;
  25:  CALL FINISHSEG(7) ;
  26:  CALL SEGMENT(8) ;
  27:  CALL GRIP_PART    ;
  28:L P[10] 1000mm/sec FINE    ;
  29:L P[17] 2000mm/sec CNT30    ;
  30:  CALL FINISHSEG(8) ;
  31:  CALL SEGMENT(9) ;
  32:   ;
  33:L P[19] 2000mm/sec CNT50    ;
  34:L P[15] 2000mm/sec CNT100    ;
  35:J P[14] 100% CNT100    ;
  36:J P[13] 100% CNT100    ;
  37:J P[12] 100% CNT100    ;
  38:   ;
  39:J P[11] 100% CNT100    ;
  40:J P[18] 100% FINE    ;
  41:   ;
  42:  CALL FINISHSEG(9) ;
  43:  LBL[97] ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1291.514  mm,	Y = -2113.106  mm,	Z = -1074.002  mm,
	W =  -179.598 deg,	P =     -.172 deg,	R =  -179.654 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1291.458  mm,	Y = -2112.906  mm,	Z = -1051.089  mm,
	W =  -179.600 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1291.012  mm,	Y = -2111.845  mm,	Z =  -901.613  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1480.401  mm,	Y = -2112.013  mm,	Z =  -760.720  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1479.446  mm,	Y = -2109.758  mm,	Z =  -437.050  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1478.302  mm,	Y = -2107.059  mm,	Z =   -51.142  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1183.701  mm,	Y = -2371.210  mm,	Z =   298.924  mm,
	W =  -171.628 deg,	P =    -2.837 deg,	R =  -169.035 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -893.302  mm,	Y =  -990.224  mm,	Z =  1972.728  mm,
	W =  -114.216 deg,	P =   -18.496 deg,	R =   174.082 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   395.160  mm,	Y =  -965.451  mm,	Z =  1770.201  mm,
	W =  -111.198 deg,	P =    -6.778 deg,	R =  -124.888 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1291.356  mm,	Y = -2112.741  mm,	Z = -1022.550  mm,
	W =  -179.598 deg,	P =     -.172 deg,	R =  -179.654 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   395.160  mm,	Y =  -965.451  mm,	Z =  1770.201  mm,
	W =  -111.198 deg,	P =    -6.778 deg,	R =  -124.888 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -893.302  mm,	Y =  -990.224  mm,	Z =  1972.728  mm,
	W =  -114.216 deg,	P =   -18.496 deg,	R =   174.082 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1183.701  mm,	Y = -2371.210  mm,	Z =   298.924  mm,
	W =  -171.628 deg,	P =    -2.837 deg,	R =  -169.035 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1445.662  mm,	Y = -2106.863  mm,	Z =   -51.240  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1450.347  mm,	Y = -2108.860  mm,	Z =  -437.144  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1291.012  mm,	Y = -2111.845  mm,	Z =  -901.613  mm,
	W =  -179.601 deg,	P =     -.172 deg,	R =  -179.655 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.629  mm,	Y =  -530.511  mm,	Z =  1667.671  mm,
	W =  -111.198 deg,	P =    -6.778 deg,	R =   -87.822 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1438.674  mm,	Y = -2107.521  mm,	Z =  -721.753  mm,
	W =  -179.602 deg,	P =     -.171 deg,	R =  -179.655 deg
};
/END
