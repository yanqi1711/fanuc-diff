/PROG  SERVICE_GRIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "服务位";
PROG_SIZE	= 1067;
CREATE		= DATE 26-03-14  TIME 20:01:04;
MODIFIED	= DATE 26-03-25  TIME 11:33:16;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1383;
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
   1:  UFRAME_NUM=1 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1:GUN] ;
   4:J PR[1:HOME] 100% FINE    ;
   5:  WAIT DI[260:OFF:偏置气缸工作位为on]=ON AND DI[262:OFF]=ON    ;
   6:  CALL GRIP_PART(1) ;
   7:  CALL GRIP_PART(2) ;
   8:J P[1] 100% CNT100    ;
   9:L P[3] 2000mm/sec CNT50    ;
  10:L P[2] 500mm/sec FINE    ;
  11:  DO[211:OFF:预留]=ON ;
  12:  WAIT DI[211:OFF:Reserve]=ON    ;
  13:L P[5] 2000mm/sec CNT50    ;
  14:J P[6] 100% CNT100    ;
  15:J PR[1:HOME] 100% FINE    ;
  16:  CALL RELEASE_PART(1) ;
  17:  CALL RELEASE_PART(2) ;
  18:  DO[211:OFF:预留]=OFF ;
/POS
P[1]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   541.824  mm,	Y = -1300.125  mm,	Z = -1333.038  mm,
	W =    12.154 deg,	P =    11.540 deg,	R =    98.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.003  mm
};
P[2]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   615.620  mm,	Y = -1582.555  mm,	Z =   173.395  mm,
	W =    -1.292 deg,	P =    -1.110 deg,	R =    88.327 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.005  mm
};
P[3]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   602.362  mm,	Y = -1698.849  mm,	Z =  -340.890  mm,
	W =    -1.467 deg,	P =     -.866 deg,	R =    94.783 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.005  mm
};
P[5]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   602.324  mm,	Y = -1698.869  mm,	Z =  -340.829  mm,
	W =    -1.469 deg,	P =     -.866 deg,	R =    94.783 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.006  mm
};
P[6]{
   GP1:
	UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   541.824  mm,	Y = -1300.125  mm,	Z = -1333.038  mm,
	W =    12.154 deg,	P =    11.540 deg,	R =    98.002 deg
   GP2:
	UF : 1, UT : 1,	
	J1=    50.005  mm
};
/END
