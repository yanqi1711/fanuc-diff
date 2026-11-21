/PROG  DRESS_ON
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 658;
CREATE		= DATE 25-07-22  TIME 15:02:28;
MODIFIED	= DATE 26-08-04  TIME 15:53:56;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 38;
MEMORY_SIZE	= 1138;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= *,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  LBL[10] ;
   2:  DO[260:OFF]=OFF ;
   3:  WAIT DI[260:OFF:偏置气缸工作位为on]=ON AND DI[263:OFF:摆臂气缸摆上]=ON AND DI[262:OFF]=ON TIMEOUT,LBL[2] ;
   4:   ;
   5:   ;
   6:  LBL[1] ;
   7:   ;
   8:  DO[260:OFF]=OFF ;
   9:  WAIT DI[262:OFF]=ON    ;
  10:   ;
  11:  WAIT    .50(sec) ;
  12:   ;
  13:  DO[258:OFF]=ON ;
  14:   ;
  15:  WAIT DI[259:OFF]=ON AND DI[264:OFF:摆臂气缸摆下]=ON AND DI[263:OFF:摆臂气缸摆上]=OFF TIMEOUT,LBL[2] ;
  16:   ;
  17:  WAIT    .30(sec) ;
  18:  DO[258:OFF]=OFF ;
  19:  WAIT   1.00(sec) ;
  20:   ;
  21:  DO[260:OFF]=ON ;
  22:  WAIT DI[262:OFF]=OFF    ;
  23:   ;
  24:  DO[259:OFF]=ON ;
  25:  DO[257:OFF:刀片旋转]=PULSE,5.0sec ;
  26:  //WAIT DI[261:OFF]=ON+    ;
  27:  JMP LBL[99] ;
  28:   ;
  29:   ;
  30:  LBL[2] ;
  31:   ;
  32:  UALM[1] ;
  33:   ;
  34:  JMP LBL[10] ;
  35:   ;
  36:   ;
  37:  LBL[99] ;
  38:   ;
/POS
/END
