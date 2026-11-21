/PROG  G3G5_PICK_OP135
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "PICK OP135";
PROG_SIZE	= 1410;
CREATE		= DATE 26-04-18  TIME 14:32:36;
MODIFIED	= DATE 26-04-18  TIME 14:32:36;
FILE_NAME	= G3G5_DRO;
VERSION		= 0;
LINE_COUNT	= 31;
MEMORY_SIZE	= 1706;
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
   4:  CALL SEGMENT(12) ;
   5:   ;
   6:  CALL CHECK_NO_PART(1) ;
   7:  DO[314: * ]=ON ;
   8:  CALL RELEASE_PART    ;
   9:J PR[1:HOME] 100% FINE    ;
  10:J P[9] 100% CNT100    ;
  11:L P[8] 2000mm/sec CNT50    ;
  12:L P[7] 1500mm/sec FINE    ;
  13:  !POS ;
  14:L P[6] 500mm/sec FINE    ;
  15:  CALL CHECK_PART(1) ;
  16:  DO[333: * ]=ON ;
  17:  DO[334: * ]=OFF ;
  18:  CALL FINISHSEG(12) ;
  19:  CALL SEGMENT(13) ;
  20:   ;
  21:   ;
  22:  CALL GRIP_PART    ;
  23:  !OPEN ¼Ð¾ß ;
  24:L P[4] 1500mm/sec FINE    ;
  25:  CALL FINISHSEG(13) ;
  26:  CALL SEGMENT(14) ;
  27:L P[3] 2000mm/sec CNT50    ;
  28:J P[2] 100% CNT100    ;
  29:J P[1] 100% FINE    ;
  30:  CALL FINISHSEG(14) ;
  31:   ;
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
	X =  1705.400  mm,	Y =  -460.274  mm,	Z =  1079.780  mm,
	W =  -110.154 deg,	P =     -.051 deg,	R =   -89.709 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1758.687  mm,	Y =  -460.051  mm,	Z =  1060.145  mm,
	W =  -110.157 deg,	P =     -.051 deg,	R =   -89.710 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1705.400  mm,	Y =  -460.274  mm,	Z =  1079.780  mm,
	W =  -110.154 deg,	P =     -.051 deg,	R =   -89.709 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1409.358  mm,	Y =  -461.679  mm,	Z =  1188.435  mm,
	W =  -110.154 deg,	P =     -.051 deg,	R =   -89.709 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1056.452  mm,	Y =  -544.709  mm,	Z =  1674.556  mm,
	W =  -105.174 deg,	P =    -7.281 deg,	R =   -89.118 deg
};
/END
