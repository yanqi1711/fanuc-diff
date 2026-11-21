/PROG  TIPCHANGE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tipchange_Gun";
PROG_SIZE	= 940;
CREATE		= DATE 24-03-20  TIME 15:59:18;
MODIFIED	= DATE 26-03-25  TIME 14:22:42;
FILE_NAME	= E658_TIP;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 1248;
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
   4:  DO[204:OFF:Ç¹1»»Ã±ÖÐ]=ON ;
   5:  DO[274:OFF:Ë®]=ON ;
   6:J PR[1:HOME] 100% FINE    ;
   7:  WAIT DI[274:OFF:×îÐ¡Á÷Á¿£¨²»ÊÊºÏº¸½Ó£]=ON AND DI[273:OFF:³ä×ãÁ÷Á¿£¨ÔÊÐíº¸½Ó£©]=OFF    ;
   8:   ;
   9:  !»»Ã±Î» ;
  10:J P[3] 100% FINE    ;
  11:  DO[28:OFF:»»Ã±Î»ÖÃ]=ON ;
  12:  WAIT DI[28:OFF:»»Ã±Î»»ØÔ­µ ]=ON    ;
  13:  CALL WR_UPD01(1,1) ;
  14:  DO[28:OFF:»»Ã±Î»ÖÃ]=OFF ;
  15:  DO[274:OFF:Ë®]=OFF ;
  16:J P[1] 100% CNT100    ;
  17:  WAIT DI[274:OFF:×îÐ¡Á÷Á¿£¨²»ÊÊºÏº¸½Ó£]=OFF AND DI[273:OFF:³ä×ãÁ÷Á¿£¨ÔÊÐíº¸½Ó£©]=ON    ;
  18:J PR[1:HOME] 100% FINE    ;
  19:   ;
  20:  CALL TD_CHANGE_END    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   801.797  mm,	Y =     0.000  mm,	Z =   355.035  mm,
	W =      .000 deg,	P =    81.060 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.805  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   745.616  mm,	Y =    16.805  mm,	Z =   -52.653  mm,
	W =   179.999 deg,	P =    82.223 deg,	R =   179.999 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.803  mm
};
/END
