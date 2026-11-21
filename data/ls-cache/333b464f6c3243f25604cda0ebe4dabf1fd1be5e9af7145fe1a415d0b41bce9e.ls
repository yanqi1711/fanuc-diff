/PROG  RELEASE_PART	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "GRIP";
PROG_SIZE	= 552;
CREATE		= DATE 25-07-17  TIME 15:18:06;
MODIFIED	= DATE 26-03-10  TIME 23:25:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 956;
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
   1:   ;
   2:  DO[333: * ]=OFF ;
   3:  DO[334: * ]=ON ;
   4:   ;
   5:   ;
   6:  WAIT DI[313: * :抓手1夹头1打开到位]=ON AND DI[315: * :抓手1夹头2打开到位]=ON TIMEOUT,LBL[2] ;
   7:  WAIT DI[314: * :抓手1夹头1关闭到位]=OFF AND DI[316: * :抓手1夹头2关闭到位]=OFF TIMEOUT,LBL[2] ;
   8:   ;
   9:  WAIT DI[317: * :抓手1夹头3打开到位]=ON AND DI[319: * :抓手1夹头4打开到位]=ON TIMEOUT,LBL[2] ;
  10:  WAIT DI[318: * :抓手1夹头3关闭到位]=OFF AND DI[320: * :抓手1夹头4关闭到位]=OFF TIMEOUT,LBL[2] ;
  11:   ;
  12:  WAIT DI[321: * ]=ON AND DI[323: * ]=ON TIMEOUT,LBL[2] ;
  13:  WAIT DI[322: * ]=OFF AND DI[324: * ]=OFF TIMEOUT,LBL[2] ;
  14:   ;
  15:  JMP LBL[99] ;
  16:   ;
  17:   ;
  18:   ;
  19:  LBL[2] ;
  20:   ;
  21:  UALM[4] ;
  22:   ;
  23:  JMP LBL[1] ;
  24:   ;
  25:  LBL[99] ;
/POS
/END
