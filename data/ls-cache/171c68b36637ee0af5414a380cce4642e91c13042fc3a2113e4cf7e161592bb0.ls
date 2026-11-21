/PROG  RELEASE_PART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRIP";
PROG_SIZE	= 752;
CREATE		= DATE 26-04-17  TIME 16:17:50;
MODIFIED	= DATE 26-04-17  TIME 16:17:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 39;
MEMORY_SIZE	= 1228;
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
   9:  LBL[10] ;
  10:  DO[313: * ]=OFF ;
  11:  DO[314: * ]=ON ;
  12:   ;
  13:   ;
  14:  WAIT DI[329: * ]=ON AND DI[331: * ]=ON AND DI[333: * ]=ON AND DI[335: * ]=ON TIMEOUT,LBL[2] ;
  15:  WAIT DI[330: * ]=OFF AND DI[332: * ]=OFF AND DI[334: * ]=OFF AND DI[336: * :抓手1感应器]=OFF TIMEOUT,LBL[2] ;
  16:   ;
  17:   ;
  18:  JMP LBL[99] ;
  19:   ;
  20:  LBL[20] ;
  21:  DO[315: * ]=OFF ;
  22:  DO[316: * ]=ON ;
  23:   ;
  24:  WAIT DI[337: * :抓手2夹头1打开到位]=ON AND DI[339: * :抓手2夹头2打开到位]=ON AND DI[341: * :抓手2夹头3打开到位]=ON TIMEOUT,LBL[2] ;
  25:   ;
  26:  WAIT DI[338: * :抓手2夹头1关闭到位]=OFF AND DI[340: * :抓手2夹头2关闭到位]=OFF AND DI[342: * :抓手2夹头3关闭到位]=OFF TIMEOUT,LBL[2] ;
  27:   ;
  28:   ;
  29:  JMP LBL[99] ;
  30:   ;
  31:   ;
  32:   ;
  33:  LBL[2] ;
  34:   ;
  35:  UALM[4] ;
  36:   ;
  37:  JMP LBL[1] ;
  38:   ;
  39:  LBL[99] ;
/POS
/END
