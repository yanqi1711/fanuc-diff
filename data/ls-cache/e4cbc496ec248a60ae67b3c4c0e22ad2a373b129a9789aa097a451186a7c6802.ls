/PROG  DRESS_TEST
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 768;
CREATE		= DATE 26-03-12  TIME 16:10:50;
MODIFIED	= DATE 26-03-16  TIME 11:20:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 7;
MEMORY_SIZE	= 1136;
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
   1:J P[2] 100% CNT100    ;
   2:  CALL DRESS_ON    ;
   3:  TIPDRESS[SD=1,P=98,t=6.0,TD=1,ED=1] ;
   4:J P[1] 100% CNT100    ;
   5:  CALL DRESS_OFF    ;
   6:  CALL WR_UPD01(1,0) ;
   7:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1474.969  mm,	Y =   216.000  mm,	Z =  1414.698  mm,
	W =  -180.000 deg,	P =   -39.999 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.025  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1474.969  mm,	Y =   216.000  mm,	Z =  1414.698  mm,
	W =  -180.000 deg,	P =   -39.999 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   208.025  mm
};
/END
