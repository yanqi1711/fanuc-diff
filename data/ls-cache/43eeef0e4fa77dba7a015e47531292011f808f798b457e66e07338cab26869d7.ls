/PROG  GRIP_PART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRIP";
PROG_SIZE	= 804;
CREATE		= DATE 26-04-17  TIME 16:18:42;
MODIFIED	= DATE 26-04-17  TIME 16:18:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 1260;
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
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  LBL[1] ;
   2:   ;
   3:  R[15]=AR[1]    ;
   4:  DO[314: * ]=ON ;
   5:  SELECT R[15]=1,JMP LBL[10] ;
   6:  SELECT R[15]=2,JMP LBL[20] ;
   7:         ELSE,JMP LBL[2] ;
   8:   ;
   9:   ;
  10:  LBL[10] ;
  11:   ;
  12:  DO[329: * ]=ON ;
  13:  DO[330: * ]=OFF ;
  14:   ;
  15:   ;
  16:  WAIT DI[321: * ]=OFF AND DI[323: * ]=OFF TIMEOUT,LBL[2] ;
  17:  WAIT DI[325: * ]=OFF AND DI[327: * ]=OFF TIMEOUT,LBL[2] ;
  18:  WAIT DI[322: * ]=ON AND DI[324: * ]=ON TIMEOUT,LBL[2] ;
  19:  WAIT DI[326: * ]=ON AND DI[328: * ]=ON TIMEOUT,LBL[2] ;
  20:   ;
  21:   ;
  22:  JMP LBL[99] ;
  23:   ;
  24:  LBL[20] ;
  25:   ;
  26:  DO[331: * ]=ON ;
  27:  DO[332: * ]=OFF ;
  28:   ;
  29:  WAIT DI[313: * :抓手1夹头1打开到位]=OFF AND DI[315: * :抓手1夹头2打开到位]=OFF AND DI[317: * :抓手1夹头3打开到位]=OFF TIMEOUT,LBL[2] ;
  30:   ;
  31:  WAIT DI[314: * :抓手1夹头1关闭到位]=ON AND DI[316: * :抓手1夹头2关闭到位]=ON AND DI[318: * :抓手1夹头3关闭到位]=ON TIMEOUT,LBL[2] ;
  32:   ;
  33:   ;
  34:  JMP LBL[99] ;
  35:   ;
  36:   ;
  37:  LBL[2] ;
  38:   ;
  39:   ;
  40:  UALM[3] ;
  41:   ;
  42:  JMP LBL[1] ;
  43:   ;
  44:  LBL[99] ;
/POS
/END
