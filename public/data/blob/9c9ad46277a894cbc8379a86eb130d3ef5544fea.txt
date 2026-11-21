/PROG  G3G5_PICK_OP130
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PICK_OP130";
PROG_SIZE	= 2063;
CREATE		= DATE 26-04-18  TIME 14:31:10;
MODIFIED	= DATE 26-04-18  TIME 14:31:10;
FILE_NAME	= G3G5_DRO;
VERSION		= 0;
LINE_COUNT	= 42;
MEMORY_SIZE	= 2443;
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
   4:  CALL CHECK_NO_PART    ;
   5:   ;
   6:  DO[314: * ]=ON ;
   7:  CALL RELEASE_PART    ;
   8:  CALL SEGMENT(2) ;
   9:J PR[1:HOME] 100% FINE    ;
  10:J P[8] 100% CNT100    ;
  11:J P[7] 100% CNT100    ;
  12:J P[6] 100% CNT100    ;
  13:J P[5] 100% CNT100    ;
  14:J P[4] 100% CNT50    ;
  15:L P[3] 2000mm/sec CNT100    ;
  16:L P[2] 2000mm/sec CNT50    ;
  17:L P[1] 2000mm/sec FINE    ;
  18:   ;
  19:  !POS ;
  20:L P[15] 600mm/sec FINE    ;
  21:  CALL CHECK_PART    ;
  22:  DO[334: * ]=OFF ;
  23:  DO[333: * ]=ON ;
  24:  CALL FINISHSEG(2) ;
  25:  CALL SEGMENT(3) ;
  26:  CALL GRIP_PART    ;
  27:L P[14] 2000mm/sec FINE    ;
  28:  CALL FINISHSEG(3) ;
  29:  CALL SEGMENT(4) ;
  30:   ;
  31:L P[13] 2000mm/sec CNT50    ;
  32:L P[12] 2000mm/sec CNT100    ;
  33:J P[11] 100% CNT50    ;
  34:J P[10] 100% CNT100    ;
  35:J P[9] 100% CNT50    ;
  36:J P[17] 100% CNT100    ;
  37:   ;
  38:J P[16] 100% CNT100    ;
  39:J P[19] 100% CNT100    ;
  40:J P[18] 100% FINE    ;
  41:  CALL FINISHSEG(4) ;
  42:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   101.936  mm,	Y =  2062.981  mm,	Z = -1287.284  mm,
	W =   179.426 deg,	P =    60.183 deg,	R =     -.804 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   228.509  mm,	Y =  2063.945  mm,	Z = -1211.513  mm,
	W =   179.100 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   242.108  mm,	Y =  2064.886  mm,	Z = -1091.528  mm,
	W =   179.099 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   569.416  mm,	Y =  2067.075  mm,	Z =  -878.249  mm,
	W =   179.189 deg,	P =    48.930 deg,	R =     -.498 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   783.663  mm,	Y =  2070.141  mm,	Z =  -680.746  mm,
	W =   179.013 deg,	P =    41.894 deg,	R =     -.314 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   900.670  mm,	Y =  2072.576  mm,	Z =  -545.886  mm,
	W =   179.027 deg,	P =    40.972 deg,	R =     -.293 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   870.873  mm,	Y =  1951.756  mm,	Z =   609.349  mm,
	W =  -157.123 deg,	P =    14.494 deg,	R =     8.545 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.005  mm,	Y =   672.785  mm,	Z =  1667.595  mm,
	W =  -111.202 deg,	P =    -6.779 deg,	R =    -6.325 deg
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
	X =   783.663  mm,	Y =  2070.141  mm,	Z =  -680.746  mm,
	W =   179.013 deg,	P =    41.894 deg,	R =     -.314 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   569.416  mm,	Y =  2067.075  mm,	Z =  -878.249  mm,
	W =   179.189 deg,	P =    48.930 deg,	R =     -.498 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   242.108  mm,	Y =  2064.886  mm,	Z = -1091.528  mm,
	W =   179.099 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   228.509  mm,	Y =  2063.945  mm,	Z = -1211.513  mm,
	W =   179.100 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   114.151  mm,	Y =  2063.451  mm,	Z = -1278.495  mm,
	W =   179.100 deg,	P =    59.640 deg,	R =     -.796 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    69.595  mm,	Y =  2063.080  mm,	Z = -1305.741  mm,
	W =   179.428 deg,	P =    60.184 deg,	R =     -.800 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   849.085  mm,	Y =  1766.135  mm,	Z =  1820.963  mm,
	W =  -109.398 deg,	P =    -5.763 deg,	R =     5.307 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   765.339  mm,	Y =  1836.157  mm,	Z =   263.210  mm,
	W =  -153.147 deg,	P =    19.786 deg,	R =     1.639 deg
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.606  mm,	Y =  -530.509  mm,	Z =  1667.634  mm,
	W =  -111.200 deg,	P =    -6.778 deg,	R =   -87.821 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   655.350  mm,	Y =   654.949  mm,	Z =  1667.634  mm,
	W =  -111.200 deg,	P =    -6.778 deg,	R =    -7.909 deg
};
/END
