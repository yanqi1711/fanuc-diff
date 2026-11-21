/PROG  STUD1	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Stud1";
PROG_SIZE	= 1618;
CREATE		= DATE 25-12-15  TIME 21:09:46;
MODIFIED	= DATE 26-03-13  TIME 23:12:24;
FILE_NAME	= STUD1;
VERSION		= 0;
LINE_COUNT	= 71;
MEMORY_SIZE	= 2142;
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
   5:  ! STUD1 ;
   6:  ! REV: 1.0.0 ;
   7:  ! ******************************* ;
   8:   ;
   9:  IF DI[29:OFF:ø’—≠ª∑]=ON,JMP LBL[99] ;
  10:   ;
  11:  $WAITTMOUT=5000 ;
  12:   ;
  13:  LBL[1] ;
  14:  CALL STUD1_INIT    ;
  15:   ;
  16:  !Check for Tool Ready ON ;
  17:  WAIT DI[697: * :π ’œ–≈œ¢1]=ON TIMEOUT,LBL[91] ;
  18:  !Check for Operate Ready ON ;
  19:  WAIT DI[699: * :π ’œ–≈œ¢4]=ON TIMEOUT,LBL[91] ;
  20:  !Check for Cycle Ready ON ;
  21:  WAIT DI[700: * :π ’œ–≈œ¢8]=ON TIMEOUT,LBL[91] ;
  22:   ;
  23:  GO[37: * ]=AR[1] ;
  24:  CALL STUD1_PARITYCAL    ;
  25:  DO[705: * :‘§¡Ù∞Ê±æ1]=ON ;
  26:  WAIT   1.00(sec) ;
  27:  DO[706: * :‘§¡Ù∞Ê±æ2]=ON ;
  28:   ;
  29:  LBL[97] ;
  30:  !Check for Cycle Ready OFF ;
  31:  WAIT DI[700: * :π ’œ–≈œ¢8]=OFF TIMEOUT,LBL[90] ;
  32:   ;
  33:  LBL[10] ;
  34:  !Check for Cycle Ready ON ;
  35:  WAIT DI[700: * :π ’œ–≈œ¢8]=ON TIMEOUT,LBL[93] ;
  36:  !Check for Weld Enable ON ;
  37:  WAIT DI[698: * :π ’œ–≈œ¢2]=ON TIMEOUT,LBL[92] ;
  38:  JMP LBL[100] ;
  39:   ;
  40:  !*********FAULT********** ;
  41:   ;
  42:  LBL[90:CycleReadyOFF] ;
  43:  MESSAGE[Check DI 148 OFF] ;
  44:  MESSAGE[CycleReady fault] ;
  45:  JMP LBL[97] ;
  46:   ;
  47:  LBL[91:CycleReadyON] ;
  48:  MESSAGE[Check DI 145\147\148 ON] ;
  49:  MESSAGE[CycleReady fault] ;
  50:  UALM[1] ;
  51:  //JMP LBL[1] ;
  52:   ;
  53:  LBL[92:CycleReadyON] ;
  54:  MESSAGE[Check DI 146 ON] ;
  55:  MESSAGE[WeldEnable fault] ;
  56:  JMP LBL[10] ;
  57:   ;
  58:  LBL[93:CycleReadyON] ;
  59:  MESSAGE[Check DI 148 ON] ;
  60:  MESSAGE[CycleReady fault] ;
  61:  JMP LBL[10] ;
  62:   ;
  63:  !************************ ;
  64:   ;
  65:  LBL[100:END] ;
  66:  DO[704: * :‘§¡Ù–Õ∫≈8]=OFF ;
  67:  DO[705: * :‘§¡Ù∞Ê±æ1]=OFF ;
  68:  DO[706: * :‘§¡Ù∞Ê±æ2]=OFF ;
  69:  LBL[99] ;
  70:  WAIT (DI[697: * :π ’œ–≈œ¢1])    ;
  71:  CALL STUD1_INIT    ;
/POS
/END
