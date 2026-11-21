/PROG  TESTTEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1144;
CREATE		= DATE 26-03-07  TIME 20:08:08;
MODIFIED	= DATE 26-06-10  TIME 18:21:24;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1452;
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
   1:J P[1] 100% FINE    ;
   2:J P[2] 100% FINE    ;
   3:J P[3] 100% FINE    ;
   4:J P[4] 100% FINE    ;
   5:   ;
   6:J PR[1:HOME] 100% FINE    ;
   7:   ;
   8:  CALL TIPDRESS_GUN    ;
   9:   ;
  10:J PR[1:HOME] 100% FINE    ;
  11:   ;
  12:J P[8] 100% FINE    ;
  13:J P[7] 100% FINE    ;
  14:J P[6] 100% FINE    ;
  15:J P[5] 100% FINE    ;
  16:   ;
  17:   ;
  18:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  3282.991  mm,	Y =  -787.990  mm,	Z =  -367.786  mm,
	W =      .001 deg,	P =    -1.009 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.656  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  3036.105  mm,	Y =  -545.623  mm,	Z =   263.301  mm,
	W =      .892 deg,	P =    13.267 deg,	R =     6.018 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.979  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2279.633  mm,	Y =  -620.194  mm,	Z =   102.936  mm,
	W =     1.115 deg,	P =    38.806 deg,	R =     6.512 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.979  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1626.930  mm,	Y =  -205.567  mm,	Z =   504.810  mm,
	W =    -3.692 deg,	P =    54.953 deg,	R =     2.859 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   104.597  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  3282.991  mm,	Y =  -787.990  mm,	Z =  -367.786  mm,
	W =      .001 deg,	P =    -1.009 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    20.656  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  3036.105  mm,	Y =  -545.623  mm,	Z =   263.301  mm,
	W =      .892 deg,	P =    13.267 deg,	R =     6.018 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.979  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2279.633  mm,	Y =  -620.194  mm,	Z =   102.936  mm,
	W =     1.115 deg,	P =    38.806 deg,	R =     6.512 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    37.979  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1626.930  mm,	Y =  -205.567  mm,	Z =   504.810  mm,
	W =    -3.692 deg,	P =    54.953 deg,	R =     2.859 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   104.597  mm
};
/END
