/PROG  SERVIC_GRIP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "·þÎñÎ»";
PROG_SIZE	= 961;
CREATE		= DATE 26-03-14  TIME 16:49:16;
MODIFIED	= DATE 26-03-20  TIME 17:14:58;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 18;
MEMORY_SIZE	= 1285;
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
   4:J PR[1:HOME] 100% FINE    ;
   5:  CALL CHECK_NO_PART(1) ;
   6:  CALL GRIP_PART    ;
   7:J P[1] 100% CNT100    ;
   8:J P[2] 100% CNT100    ;
   9:L P[3] 2000mm/sec CNT50    ;
  10:   ;
  11:  DO[211:OFF:Ô¤Áô]=ON ;
  12:  WAIT DI[211:OFF:Reserve]=ON    ;
  13:J P[4] 100% CNT100    ;
  14:J P[5] 100% CNT100    ;
  15:J PR[1:HOME] 100% FINE    ;
  16:  CALL RELEASE_PART    ;
  17:   ;
  18:  DO[211:OFF:Ô¤Áô]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.606  mm,	Y =  -530.509  mm,	Z =  1667.634  mm,
	W =  -111.200 deg,	P =    -6.778 deg,	R =   -87.821 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1056.452  mm,	Y =  -544.709  mm,	Z =  1674.556  mm,
	W =  -105.174 deg,	P =    -7.281 deg,	R =   -89.118 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1409.358  mm,	Y =  -461.679  mm,	Z =  1188.435  mm,
	W =  -110.154 deg,	P =     -.051 deg,	R =   -89.709 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.606  mm,	Y =  -530.509  mm,	Z =  1667.634  mm,
	W =  -111.200 deg,	P =    -6.778 deg,	R =   -87.821 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1056.452  mm,	Y =  -544.709  mm,	Z =  1674.556  mm,
	W =  -105.174 deg,	P =    -7.281 deg,	R =   -89.118 deg
};
/END
