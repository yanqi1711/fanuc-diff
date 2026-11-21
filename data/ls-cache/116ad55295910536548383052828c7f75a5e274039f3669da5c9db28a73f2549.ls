/PROG  STUD1_INIT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Init Stud1";
PROG_SIZE	= 622;
CREATE		= DATE 23-03-24  TIME 13:23:02;
MODIFIED	= DATE 26-03-13  TIME 23:19:52;
FILE_NAME	= STUD1_IN;
VERSION		= 0;
LINE_COUNT	= 22;
MEMORY_SIZE	= 906;
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
   1:  ! ******************************* ;
   2:  !           SERES MOTORS ;
   3:  ! FANUC ;
   4:  ! STUD1_HONGBAI ;
   5:  ! STUD1_INIT ;
   6:  ! REV: 1.0.0 ;
   7:  ! ******************************* ;
   8:   ;
   9:  GO[37: * ]=0 ;
  10:  DO[697: * :‘§¡Ùµ•‘™1]=OFF ;
  11:  DO[698: * :‘§¡Ùµ•‘™2]=OFF ;
  12:  DO[699: * :‘§¡Ùµ•‘™4]=OFF ;
  13:  DO[700: * :‘§¡Ùµ•‘™8]=OFF ;
  14:  DO[701: * :‘§¡Ù–Õ∫≈1]=OFF ;
  15:  DO[702: * :‘§¡Ù–Õ∫≈2]=OFF ;
  16:  DO[703: * :‘§¡Ù–Õ∫≈4]=OFF ;
  17:  DO[704: * :‘§¡Ù–Õ∫≈8]=OFF ;
  18:  DO[705: * :‘§¡Ù∞Ê±æ1]=OFF ;
  19:  DO[706: * :‘§¡Ù∞Ê±æ2]=OFF ;
  20:  DO[708: * :‘§¡Ù∞Ê±æ8]=OFF ;
  21:   ;
  22:  DO[712: * :‘§¡Ù◊Û/”“∂Ê∑ΩœÚ≈Ã_8]=OFF ;
/POS
/END
