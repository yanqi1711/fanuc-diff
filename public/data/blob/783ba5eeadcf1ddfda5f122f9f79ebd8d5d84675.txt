/PROG  G3G5_DROP_OP130
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DROP OP130";
PROG_SIZE	= 2046;
CREATE		= DATE 26-03-12  TIME 18:38:50;
MODIFIED	= DATE 26-09-04  TIME 17:32:14;
FILE_NAME	= G3G5_PIC;
VERSION		= 0;
LINE_COUNT	= 37;
MEMORY_SIZE	= 2446;
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
   4:   ;
   5:  CALL CHECK_PART(1) ;
   6:  DO[314: * ]=ON ;
   7:  CALL GRIP_PART    ;
   8:  CALL SEGMENT(10) ;
   9:J P[19] 100% FINE    ;
  10:J P[2] 100% CNT100    ;
  11:J P[13] 100% CNT100    ;
  12:J P[12] 100% CNT100    ;
  13:J P[11] 100% CNT100    ;
  14:J P[10] 100% CNT50    ;
  15:L P[6] 2000mm/sec CNT100    ;
  16:L P[5] 2000mm/sec CNT50    ;
  17:L P[4] 2000mm/sec CNT30    ;
  18:L P[3] 1200mm/sec FINE    ;
  19:  !POS ;
  20:L P[1] 600mm/sec FINE    ;
  21:  CALL FINISHSEG(10) ;
  22:  CALL SEGMENT(11) ;
  23:  DO[334: * ]=ON ;
  24:  DO[333: * ]=OFF ;
  25:  CALL RELEASE_PART    ;
  26:L P[20] 800mm/sec CNT30    ;
  27:L P[18] 1200mm/sec FINE    ;
  28:  CALL CHECK_NO_PART(1) ;
  29:L P[17] 2000mm/sec CNT50    ;
  30:L P[16] 2000mm/sec CNT100    ;
  31:J P[15] 100% CNT50    ;
  32:J P[14] 100% CNT100    ;
  33:J P[9] 100% CNT100    ;
  34:J P[8] 100% CNT100    ;
  35:J P[7] 100% CNT100    ;
  36:J PR[1:HOME] 100% FINE    ;
  37:  CALL FINISHSEG(11) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    67.632  mm,	Y =  2063.379  mm,	Z = -1305.696  mm,
	W =   179.591 deg,	P =    60.069 deg,	R =     -.808 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.005  mm,	Y =   672.785  mm,	Z =  1667.595  mm,
	W =  -111.202 deg,	P =    -6.779 deg,	R =    -6.325 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    91.852  mm,	Y =  2063.207  mm,	Z = -1291.814  mm,
	W =   179.588 deg,	P =    60.069 deg,	R =     -.811 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   111.679  mm,	Y =  2062.510  mm,	Z = -1278.670  mm,
	W =   179.591 deg,	P =    60.069 deg,	R =     -.808 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   228.509  mm,	Y =  2063.945  mm,	Z = -1211.513  mm,
	W =   179.100 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   242.108  mm,	Y =  2064.886  mm,	Z = -1091.528  mm,
	W =   179.099 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.005  mm,	Y =   672.785  mm,	Z =  1667.595  mm,
	W =  -111.202 deg,	P =    -6.779 deg,	R =    -6.325 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   870.873  mm,	Y =  1951.756  mm,	Z =   609.349  mm,
	W =  -157.123 deg,	P =    14.494 deg,	R =     8.545 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   900.670  mm,	Y =  2072.576  mm,	Z =  -545.886  mm,
	W =   179.027 deg,	P =    40.972 deg,	R =     -.293 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   569.416  mm,	Y =  2067.075  mm,	Z =  -878.249  mm,
	W =   179.189 deg,	P =    48.930 deg,	R =     -.498 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   783.663  mm,	Y =  2070.141  mm,	Z =  -680.746  mm,
	W =   179.013 deg,	P =    41.894 deg,	R =     -.314 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   900.670  mm,	Y =  2072.576  mm,	Z =  -545.886  mm,
	W =   179.027 deg,	P =    40.972 deg,	R =     -.293 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   870.873  mm,	Y =  1951.756  mm,	Z =   609.349  mm,
	W =  -157.123 deg,	P =    14.494 deg,	R =     8.545 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   783.663  mm,	Y =  2070.141  mm,	Z =  -680.746  mm,
	W =   179.013 deg,	P =    41.894 deg,	R =     -.314 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   569.416  mm,	Y =  2067.075  mm,	Z =  -878.249  mm,
	W =   179.189 deg,	P =    48.930 deg,	R =     -.498 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   242.108  mm,	Y =  2064.886  mm,	Z = -1091.528  mm,
	W =   179.099 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   228.509  mm,	Y =  2063.945  mm,	Z = -1211.513  mm,
	W =   179.100 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   111.679  mm,	Y =  2062.510  mm,	Z = -1278.670  mm,
	W =   179.591 deg,	P =    60.069 deg,	R =     -.808 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.606  mm,	Y =  -530.509  mm,	Z =  1667.634  mm,
	W =  -111.200 deg,	P =    -6.778 deg,	R =   -87.821 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    91.863  mm,	Y =  2063.206  mm,	Z = -1291.814  mm,
	W =   179.588 deg,	P =    60.069 deg,	R =     -.811 deg
};
/END
