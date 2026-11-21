/PROG  SERVICE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Service_Gun";
PROG_SIZE	= 797;
CREATE		= DATE 26-03-09  TIME 18:16:44;
MODIFIED	= DATE 26-03-20  TIME 16:45:20;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 12;
MEMORY_SIZE	= 1121;
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
   4:J PR[1:HOME] 100% CNT100    ;
   5:L P[1] 2000mm/sec CNT50    ;
   6:  !µΩŒªµ  ;
   7:J P[3] 100% FINE    ;
   8:  DO[211:OFF:‘§¡Ù]=ON ;
   9:  WAIT DI[211:OFF:Reserve]=ON    ;
  10:L P[5] 2000mm/sec CNT50    ;
  11:J PR[1:HOME] 100% FINE    ;
  12:  DO[211:OFF:‘§¡Ù]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   794.758  mm,	Y =    16.815  mm,	Z =   111.567  mm,
	W =   179.999 deg,	P =    82.221 deg,	R =   180.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.803  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   794.805  mm,	Y =    16.805  mm,	Z =  -545.398  mm,
	W =   179.999 deg,	P =    82.223 deg,	R =   179.999 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.803  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   794.749  mm,	Y =    16.815  mm,	Z =   111.554  mm,
	W =   179.999 deg,	P =    82.220 deg,	R =   180.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.804  mm
};
/END
