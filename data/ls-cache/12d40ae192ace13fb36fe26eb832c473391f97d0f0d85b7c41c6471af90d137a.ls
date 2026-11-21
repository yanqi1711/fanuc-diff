/PROG  TIPCHANGE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tipchange_Gun";
PROG_SIZE	= 901;
CREATE		= DATE 24-03-20  TIME 15:59:18;
MODIFIED	= DATE 26-03-25  TIME 14:22:50;
FILE_NAME	= E658_TIP;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 1201;
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
   4:  DO[258:OFF]=OFF ;
   5:  DO[274:OFF:Ë®]=ON ;
   6:  DO[204:OFF:Ç¹1»»Ã±ÖÐ]=ON ;
   7:J PR[1:HOME] 100% FINE    ;
   8:  WAIT DI[274:OFF:×îÐ¡Á÷Á¿£¨²»ÊÊºÏº¸½Ó£]=ON AND DI[273:OFF:³ä×ãÁ÷Á¿£¨ÔÊÐíº¸½Ó£©]=OFF    ;
   9:  !Change POS ;
  10:J P[1] 100% FINE    ;
  11:  DO[28:OFF:»»Ã±Î»ÖÃ]=ON ;
  12:  WAIT DI[28:OFF:»»Ã±Î»»ØÔ­µ ]=ON    ;
  13:  DO[28:OFF:»»Ã±Î»ÖÃ]=OFF ;
  14:   ;
  15:  CALL WR_UPDAT(1,1) ;
  16:  DO[274:OFF:Ë®]=OFF ;
  17:   ;
  18:J PR[1:HOME] 100% FINE    ;
  19:  WAIT DI[274:OFF:×îÐ¡Á÷Á¿£¨²»ÊÊºÏº¸½Ó£]=OFF AND DI[273:OFF:³ä×ãÁ÷Á¿£¨ÔÊÐíº¸½Ó£©]=ON    ;
  20:   ;
  21:  CALL TD_CHANGE_END    ;
  22:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1561.351  mm,	Y =   215.996  mm,	Z =  1414.678  mm,
	W =  -179.999 deg,	P =   -39.998 deg,	R =     -.001 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   190.942  mm
};
/END
