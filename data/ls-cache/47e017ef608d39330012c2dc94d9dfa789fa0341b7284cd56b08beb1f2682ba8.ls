/PROG  END_TASK	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "END_TASK";
PROG_SIZE	= 460;
CREATE		= DATE 23-03-17  TIME 14:48:56;
MODIFIED	= DATE 24-01-24  TIME 12:15:42;
FILE_NAME	= END_TASK;
VERSION		= 0;
LINE_COUNT	= 11;
MEMORY_SIZE	= 788;
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
   1:  ! ******************************* ;
   2:  !           BoJun MOTORS ;
   3:  ! FANUC ;
   4:  ! COMMON ;
   5:  ! END_TASK ;
   6:  ! REV: 1.0.0 ;
   7:  ! ******************************* ;
   8:   ;
   9:  DO[20:OFF:工作完成]=ON ;
  10:  WAIT DI[20:OFF:复位工作完成]=ON    ;
  11:  DO[20:OFF:工作完成]=OFF ;
/POS
/END
