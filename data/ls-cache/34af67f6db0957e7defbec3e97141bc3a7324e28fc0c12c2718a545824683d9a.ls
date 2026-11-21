/PROG  CHECK_PART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRIP";
PROG_SIZE	= 484;
CREATE		= DATE 25-07-17  TIME 15:16:50;
MODIFIED	= DATE 26-03-15  TIME 17:32:50;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 888;
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
   1:  IF DI[29:OFF:空循环]=ON,JMP LBL[3] ;
   2:   ;
   3:  LBL[1] ;
   4:   ;
   5:  R[14]=AR[1]    ;
   6:   ;
   7:  SELECT R[14]=1,JMP LBL[10] ;
   8:         ELSE,JMP LBL[2] ;
   9:   ;
  10:   ;
  11:  LBL[10] ;
  12:  WAIT DI[319: * :抓手1夹头4打开到位]=ON AND DI[320: * :抓手1夹头4关闭到位]=ON TIMEOUT,LBL[2] ;
  13:   ;
  14:  JMP LBL[3] ;
  15:   ;
  16:   ;
  17:  LBL[2] ;
  18:   ;
  19:  UALM[1] ;
  20:   ;
  21:  JMP LBL[1] ;
  22:   ;
  23:  LBL[3] ;
  24:   ;
  25:   ;
/POS
/END
