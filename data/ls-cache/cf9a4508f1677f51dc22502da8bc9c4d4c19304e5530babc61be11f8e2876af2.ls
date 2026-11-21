/PROG  GRIP_PART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRIP";
PROG_SIZE	= 804;
CREATE		= DATE 26-04-17  TIME 16:17:32;
MODIFIED	= DATE 26-04-17  TIME 16:17:32;
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
   4:  DO[329: * ]=ON ;
   5:  SELECT R[15]=1,JMP LBL[10] ;
   6:  SELECT R[15]=2,JMP LBL[20] ;
   7:         ELSE,JMP LBL[2] ;
   8:   ;
   9:   ;
  10:  LBL[10] ;
  11:   ;
  12:  DO[314: * ]=OFF ;
  13:  DO[313: * ]=ON ;
  14:   ;
  15:   ;
  16:  WAIT DI[330: * ]=ON AND DI[332: * ]=ON TIMEOUT,LBL[2] ;
  17:  WAIT DI[334: * ]=ON AND DI[336: * :抓手1感应器]=ON TIMEOUT,LBL[2] ;
  18:  WAIT DI[329: * ]=OFF AND DI[331: * ]=OFF TIMEOUT,LBL[2] ;
  19:  WAIT DI[333: * ]=OFF AND DI[335: * ]=OFF TIMEOUT,LBL[2] ;
  20:   ;
  21:   ;
  22:  JMP LBL[99] ;
  23:   ;
  24:  LBL[20] ;
  25:   ;
  26:  DO[316: * ]=OFF ;
  27:  DO[315: * ]=ON ;
  28:   ;
  29:  WAIT DI[337: * :抓手2夹头1打开到位]=OFF AND DI[339: * :抓手2夹头2打开到位]=OFF AND DI[341: * :抓手2夹头3打开到位]=OFF TIMEOUT,LBL[2] ;
  30:   ;
  31:  WAIT DI[338: * :抓手2夹头1关闭到位]=ON AND DI[340: * :抓手2夹头2关闭到位]=ON AND DI[342: * :抓手2夹头3关闭到位]=ON TIMEOUT,LBL[2] ;
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
