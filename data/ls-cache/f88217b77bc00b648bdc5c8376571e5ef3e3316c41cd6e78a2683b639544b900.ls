/PROG  TIPDRESS_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tipdress_Gun";
PROG_SIZE	= 1039;
CREATE		= DATE 25-07-23  TIME 11:28:02;
MODIFIED	= DATE 26-06-11  TIME 12:22:22;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1347;
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
   4:   ;
   5:  DO[201:OFF:Ç¹1ÐÞÄ¥ÖÐ]=ON ;
   6:J PR[1:HOME] 100% FINE    ;
   7:J P[1] 100% FINE    ;
   8:   ;
   9:  CALL DRESS_ON    ;
  10:   ;
  11:  !ÐÞÄ¥Î» ;
  12:L P[2] 500mm/sec FINE
    :  TIPDRESS[SD=10,P=10,t=6.0,TD=1,ED=10]    ;
  13:   ;
  14:   ;
  15:J P[3] 100% FINE    ;
  16:   ;
  17:  CALL DRESS_OFF    ;
  18:   ;
  19:J PR[1:HOME] 100% FINE    ;
  20:   ;
  21:  DO[201:OFF:Ç¹1ÐÞÄ¥ÖÐ]=OFF ;
  22:  CALL WR_UPD01(1,0) ;
  23:  CALL TD_DRESS_END    ;
  24:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1676.611  mm,	Y =  -216.510  mm,	Z =  1545.118  mm,
	W =  -179.999 deg,	P =    39.999 deg,	R =  -180.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.016  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1676.611  mm,	Y =  -216.510  mm,	Z =  1545.584  mm,
	W =  -179.999 deg,	P =    39.999 deg,	R =  -180.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.016  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1676.611  mm,	Y =  -216.510  mm,	Z =  1545.118  mm,
	W =  -179.999 deg,	P =    39.999 deg,	R =  -180.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.016  mm
};
/END
