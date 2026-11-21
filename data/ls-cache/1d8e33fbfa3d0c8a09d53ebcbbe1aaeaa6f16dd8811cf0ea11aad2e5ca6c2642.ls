/PROG  CHECK_NO_PART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRIP";
PROG_SIZE	= 472;
CREATE		= DATE 25-07-17  TIME 15:16:42;
MODIFIED	= DATE 26-03-11  TIME 20:28:46;
FILE_NAME	= CHECK_PA;
VERSION		= 0;
LINE_COUNT	= 20;
MEMORY_SIZE	= 896;
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
   3:  R[14]=AR[1]    ;
   4:   ;
   5:  SELECT R[14]=1,JMP LBL[10] ;
   6:         ELSE,JMP LBL[2] ;
   7:   ;
   8:  LBL[10] ;
   9:   ;
  10:  WAIT DI[319: * :抓手1夹头4打开到位]=OFF AND DI[320: * :抓手1夹头4关闭到位]=OFF TIMEOUT,LBL[2] ;
  11:   ;
  12:  JMP LBL[3] ;
  13:   ;
  14:  LBL[2] ;
  15:   ;
  16:  UALM[1] ;
  17:   ;
  18:  JMP LBL[1] ;
  19:   ;
  20:  LBL[3] ;
/POS
/END
