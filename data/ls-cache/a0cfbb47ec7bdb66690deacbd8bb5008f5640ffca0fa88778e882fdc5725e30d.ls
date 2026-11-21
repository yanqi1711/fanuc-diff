/PROG  SERVICE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 977;
CREATE		= DATE 26-03-14  TIME 20:25:00;
MODIFIED	= DATE 26-03-20  TIME 16:42:02;
FILE_NAME	= TIPCHANG;
VERSION		= 0;
LINE_COUNT	= 13;
MEMORY_SIZE	= 1297;
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
   1:  PAYLOAD[1:GUN] ;
   2:  UTOOL_NUM=1 ;
   3:  UFRAME_NUM=0 ;
   4:J PR[1:HOME] 100% FINE    ;
   5:J P[1] 100% CNT100    ;
   6:L P[4] 2000mm/sec CNT50    ;
   7:L P[3] 2000mm/sec FINE    ;
   8:  DO[211:OFF:Ô¤Áô]=ON ;
   9:  WAIT DI[211:OFF:Reserve]=ON    ;
  10:L P[5] 2000mm/sec CNT50    ;
  11:L P[2] 2000mm/sec CNT100    ;
  12:J PR[1:HOME] 100% FINE    ;
  13:  DO[211:OFF:Ô¤Áô]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    35.813  mm,	Y =   850.961  mm,	Z =   254.384  mm,
	W =   -29.994 deg,	P =    84.974 deg,	R =    53.756 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.810  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    35.813  mm,	Y =   850.961  mm,	Z =   254.384  mm,
	W =   -29.994 deg,	P =    84.974 deg,	R =    53.756 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.810  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -234.326  mm,	Y =   935.186  mm,	Z =  -790.628  mm,
	W =   -84.079 deg,	P =    88.569 deg,	R =     -.258 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.812  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -264.327  mm,	Y =   895.186  mm,	Z =    55.372  mm,
	W =   -84.079 deg,	P =    88.569 deg,	R =     -.258 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.813  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -264.327  mm,	Y =   895.186  mm,	Z =    55.372  mm,
	W =   -84.079 deg,	P =    88.569 deg,	R =     -.258 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   136.813  mm
};
/END
