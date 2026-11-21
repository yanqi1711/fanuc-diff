/PROG  TIPCHANGE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tipchange_Gun";
PROG_SIZE	= 1425;
CREATE		= DATE 26-03-13  TIME 10:25:52;
MODIFIED	= DATE 26-03-25  TIME 14:11:26;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 35;
MEMORY_SIZE	= 1817;
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
   1:  !op110Æø¸×´ò¿ªÐèÒªÑéÖ¤ ;
   2:  UFRAME_NUM=0 ;
   3:  UTOOL_NUM=1 ;
   4:  PAYLOAD[1:GUN] ;
   5:   ;
   6:  DO[204:OFF:Ç¹1»»Ã±ÖÐ]=ON ;
   7:  DO[274:OFF:Ë®]=ON ;
   8:   ;
   9:  --ch:WITH R9 WELD ;
  10:  CALL ENTER_ZONE(3) ;
  11:   ;
  12:J PR[1:HOME] 100% FINE    ;
  13:  WAIT DI[274:OFF:×îÐ¡Á÷Á¿£¨²»ÊÊºÏº¸½Ó£]=ON AND DI[273:OFF:³ä×ãÁ÷Á¿£¨ÔÊÐíº¸½Ó£©]=OFF    ;
  14:J P[1] 100% CNT100    ;
  15:J P[6] 100% CNT50    ;
  16:L P[4] 2000mm/sec CNT50    ;
  17:J P[7] 100% FINE    ;
  18:   ;
  19:  !»»Ã±Î» ;
  20:  DO[28:OFF:»»Ã±Î»ÖÃ]=ON ;
  21:  WAIT DI[28:OFF:»»Ã±Î»»ØÔ­µ ]=ON    ;
  22:  DO[28:OFF:»»Ã±Î»ÖÃ]=OFF ;
  23:L P[2] 2000mm/sec CNT50    ;
  24:J P[3] 100% CNT50    ;
  25:J P[5] 100% CNT100    ;
  26:  DO[274:OFF:Ë®]=OFF ;
  27:   ;
  28:  WAIT DI[274:OFF:×îÐ¡Á÷Á¿£¨²»ÊÊºÏº¸½Ó£]=OFF AND DI[273:OFF:³ä×ãÁ÷Á¿£¨ÔÊÐíº¸½Ó£©]=ON    ;
  29:   ;
  30:J PR[1:HOME] 100% FINE    ;
  31:  CALL WR_UPD01(1,1) ;
  32:   ;
  33:  CALL TD_CHANGE_END    ;
  34:  --ch:WITH R9 WELD ;
  35:  CALL EXIT_ZONE(3) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1198.836  mm,	Y =  1324.671  mm,	Z =  1925.039  mm,
	W =   -56.681 deg,	P =   -41.641 deg,	R =    92.012 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.241  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   664.600  mm,	Y =  1141.872  mm,	Z =   161.786  mm,
	W =     -.538 deg,	P =     4.584 deg,	R =    96.043 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.238  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   305.159  mm,	Y =  1311.649  mm,	Z =   904.730  mm,
	W =   -16.510 deg,	P =    -3.080 deg,	R =   103.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.243  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   664.600  mm,	Y =  1141.872  mm,	Z =   161.786  mm,
	W =     -.538 deg,	P =     4.584 deg,	R =    96.043 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.238  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1198.836  mm,	Y =  1324.671  mm,	Z =  1925.039  mm,
	W =   -56.681 deg,	P =   -41.641 deg,	R =    92.012 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.243  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   305.159  mm,	Y =  1311.649  mm,	Z =   904.730  mm,
	W =   -16.510 deg,	P =    -3.080 deg,	R =   103.133 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.243  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   664.618  mm,	Y =  1141.875  mm,	Z =  -240.517  mm,
	W =     -.540 deg,	P =     4.584 deg,	R =    96.043 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.240  mm
};
/END
