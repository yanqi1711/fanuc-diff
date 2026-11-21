/PROG  CLR2PRCD	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Chk OK to Pick 2";
PROG_SIZE	= 412;
CREATE		= DATE 99-11-08  TIME 14:41:52;
MODIFIED	= DATE 99-12-23  TIME 15:42:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 8;
MEMORY_SIZE	= 752;
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
/MN
   1:  !This macro is called by oktopick ;
   2:  !to allow the user to add any ;
   3:  !additional criteria for the ;
   4:  !robot to wait on before picking ;
   5:  !up the part. ;
   6:   ;
   7:  !Does not use the parameters ;
   8:  !passed to oktopick. ;
/POS
/END
