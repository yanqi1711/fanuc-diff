/PROG  WR_UPDAT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Update wear vals";
PROG_SIZE	= 2064;
CREATE		= DATE 03-06-04  TIME 20:26:06;
MODIFIED	= DATE 12-02-28  TIME 10:50:42;
FILE_NAME	= TW_UPDAT;
VERSION		= 0;
LINE_COUNT	= 65;
MEMORY_SIZE	= 2612;
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
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  !Program description ;
   2:  !  Update fixtureless wear measmt ;
   3:  !  Version:6.40 ;
   4:   ;
   5:  !Input parameters ;
   6:  !  AR[1]: Gun number ;
   7:  !  AR[2]: New tip ( reset wr ) ;
   8:   ;
   9:  !Data registers R[] used ;
  10:  !  R[10]: Work register ;
  11:  !  R[11]: Work register ;
  12:   ;
  13:  !Position registers used ;
  14:  !  PR[20]: Position at wr start ;
  15:  !  PR[21]: Work position register ;
  16:   ;
  17:  !Update grp mask for motn prog ;
  18:  !  Parm1: gun number ;
  19:  !  Parm2: program name ;
  20:  CALL TWKGPMSK(AR[1],'TW_MVGUN') ;
  21:   ;
  22:  !Write present position to PR ;
  23:  !  Parm1: Gun # ;
  24:  !  Parm2: Position register index ;
  25:  !  Parm3: Typ(1=opndist,2=curpos) ;
  26:  CALL TWKWRTPR(AR[1],20,2) ;
  27:   ;
  28:  !Write open distance to PR ;
  29:  !  Parm1: Gun # ;
  30:  !  Parm2: Position register index ;
  31:  !  Parm3: Typ(1=opndist,2=curpos) ;
  32:  !  Parm4: Magnitude of open dist ;
  33:  CALL TWKWRTPR(AR[1],21,1,25) ;
  34:   ;
  35:  !Move gun to PR ;
  36:  !  Parm1: Velocity label ;
  37:  !  Parm2: Position register index ;
  38:  CALL TW_MVGUN(1,21) ;
  39:   ;
  40:  !Calibrate 0 with worn tips ;
  41:  !  parm1: gun number   ;
  42:  !  parm2: data register1 ;
  43:  !  parm3: position register ;
  44:  !  parm4: data register2 ;
  45:  CALL TWKZRCLB(AR[1],10,21) ;
  46:  WAIT   0.00(sec) ;
  47:   ;
  48:  !Reset ref to 0 before checking ;
  49:  !for wear error, if new tip ;
  50:  R[10:Tip wear down]=AR[2]    ;
  51:  IF R[10:Tip wear down]<>1,JMP LBL[1] ;
  52:  CALL TWKRSWDN    ;
  53:  LBL[1] ;
  54:   ;
  55:  !Update wear amounts ;
  56:  !Parm1: 0<=Robot wear ratio<=1.0 ;
  57:  !RbtTipWear = ( rbtwr_ratio *  ;
  58:  !               total wear ) ;
  59:  !Parm2: New tip installed ;
  60:  CALL TWKCALC2(.5,AR[2]) ;
  61:   ;
  62:  !Move gun to PR ;
  63:  !  Parm1: Velocity label ;
  64:  !  Parm2: Position register index ;
  65:  CALL TW_MVGUN(1,20) ;
/POS
/END
