/PROG  ED44_OP200_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP200_DROP";
PROG_SIZE	= 2184;
CREATE		= DATE 26-04-18  TIME 14:41:04;
MODIFIED	= DATE 26-04-18  TIME 14:41:04;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 2572;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1:GUN] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:   ;
   8:  CALL SEGMENT(6) ;
   9:  --ch:WITH R18 PICK ;
  10:  CALL ENTER_ZONE(5) ;
  11:   ;
  12:J PR[1:HOME] 100% FINE    ;
  13:J P[9] 100% CNT100    ;
  14:J P[1] 100% CNT100    ;
  15:J P[8] 100% CNT100    ;
  16:J P[7] 100% CNT80    ;
  17:J P[6] 100% CNT60    ;
  18:J P[5] 100% CNT50    ;
  19:L P[3] 2000mm/sec CNT30    ;
  20:L P[4] 1200mm/sec FINE    ;
  21:  !DROP_POS ;
  22:L P[2] 800mm/sec FINE    ;
  23:  DO[329: * ]=OFF ;
  24:  DO[330: * ]=ON ;
  25:  DO[329: * ]=OFF ;
  26:  DO[330: * ]=ON ;
  27:  CALL FINISHSEG(6) ;
  28:  CALL SEGMENT(7) ;
  29:   ;
  30:  CALL RELEASE_PART(1) ;
  31:  CALL RELEASE_PART(2) ;
  32:   ;
  33:L P[17] 1200mm/sec CNT10    ;
  34:  CALL CHECK_NO_PART(1) ;
  35:L P[16] 2000mm/sec CNT30    ;
  36:J P[15] 100% CNT50    ;
  37:J P[12] 100% CNT100    ;
  38:J P[18] 100% CNT100    ;
  39:J P[11] 100% CNT100    ;
  40:J P[10] 100% CNT100    ;
  41:J PR[1:HOME] 100% FINE    ;
  42:  CALL FINISHSEG(7) ;
  43:  --ch:WITH R18 PICK ;
  44:  CALL EXIT_ZONE(5) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -107.665  mm,	Y = -1474.376  mm,	Z =  1450.390  mm,
	W =   125.554 deg,	P =   -30.987 deg,	R =     3.593 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.875  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   150.267  mm,	Y = -2459.608  mm,	Z =  -278.662  mm,
	W =  -179.846 deg,	P =   -60.420 deg,	R =     -.093 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.858  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    97.273  mm,	Y = -2462.901  mm,	Z =  -247.631  mm,
	W =  -179.515 deg,	P =   -60.666 deg,	R =     -.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   122.407  mm,	Y = -2460.148  mm,	Z =  -263.571  mm,
	W =  -179.846 deg,	P =   -60.420 deg,	R =     -.093 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.858  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -209.038  mm,	Y = -2463.438  mm,	Z =   -75.506  mm,
	W =  -179.515 deg,	P =   -60.666 deg,	R =     -.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -378.551  mm,	Y = -2441.329  mm,	Z =    19.790  mm,
	W =   175.729 deg,	P =   -59.192 deg,	R =      .805 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -334.826  mm,	Y = -2184.601  mm,	Z =   548.344  mm,
	W =   167.645 deg,	P =   -57.824 deg,	R =     8.400 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -215.928  mm,	Y = -1771.141  mm,	Z =   976.356  mm,
	W =   123.789 deg,	P =   -41.561 deg,	R =    22.561 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.867  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1297.866  mm,	Y =  -880.528  mm,	Z =  1500.311  mm,
	W =   162.197 deg,	P =   -38.251 deg,	R =    -7.942 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1297.866  mm,	Y =  -880.528  mm,	Z =  1500.311  mm,
	W =   162.197 deg,	P =   -38.251 deg,	R =    -7.942 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -107.665  mm,	Y = -1474.377  mm,	Z =  1450.390  mm,
	W =   141.660 deg,	P =   -26.574 deg,	R =   -24.174 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.875  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -262.587  mm,	Y = -2421.640  mm,	Z =   165.290  mm,
	W =   174.986 deg,	P =   -54.783 deg,	R =    -1.400 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.866  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -209.038  mm,	Y = -2463.438  mm,	Z =   -75.506  mm,
	W =  -179.515 deg,	P =   -60.666 deg,	R =     -.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    55.622  mm,	Y = -2462.092  mm,	Z =  -226.868  mm,
	W =  -179.515 deg,	P =   -60.666 deg,	R =     -.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   138.324  mm,	Y = -2461.948  mm,	Z =  -273.340  mm,
	W =  -179.515 deg,	P =   -60.666 deg,	R =     -.456 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -320.801  mm,	Y = -2304.884  mm,	Z =   488.914  mm,
	W =   172.355 deg,	P =   -52.861 deg,	R =    -3.094 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.865  mm
};
/END
