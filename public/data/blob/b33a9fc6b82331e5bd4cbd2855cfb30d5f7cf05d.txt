/PROG  WR_SETUP	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Setup tipwear";
PROG_SIZE	= 2010;
CREATE		= DATE 03-06-04  TIME 17:16:00;
MODIFIED	= DATE 12-02-28  TIME 10:47:44;
FILE_NAME	= TW_SETUP;
VERSION		= 0;
LINE_COUNT	= 64;
MEMORY_SIZE	= 2430;
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
   2:  !  Setup fixtureless wear measmt ;
   3:  !  Version:6.40 ;
   4:   ;
   5:  !Input parameters ;
   6:  !  AR[1]: Gun number ;
   7:   ;
   8:  !Data registers R[] used ;
   9:  !  R[10]: Work register ;
  10:  !  R[11]: Work register ;
  11:   ;
  12:  !Position registers used ;
  13:  !  PR[20]: Position at wr start ;
  14:  !  PR[21]: Work position register ;
  15:   ;
  16:   ;
  17:  !Initialize gun data ;
  18:  !  Parm1:gun number   ;
  19:  CALL TWKINIT(AR[1]) ;
  20:   ;
  21:  !Update grp mask for motn prog ;
  22:  !  Parm1: gun number ;
  23:  !  Parm2: program name ;
  24:  CALL TWKGPMSK(AR[1],'TW_MVGUN') ;
  25:   ;
  26:  !  Write present posn to PR ;
  27:  !  Parm1: Gun # ;
  28:  !  Parm2: Position register index ;
  29:  !  Parm3: Typ(1=opndist,2=curpos) ;
  30:  CALL TWKWRTPR(AR[1],20,2) ;
  31:   ;
  32:  !Write open distance to PR ;
  33:  !  Parm1: Gun # ;
  34:  !  Parm2: Position register index ;
  35:  !  Parm3: Typ(1=opndist,2=curpos) ;
  36:  !  Parm4: Magnitude of open dist ;
  37:  CALL TWKWRTPR(AR[1],21,1,25) ;
  38:   ;
  39:  !Move gun to PR ;
  40:  !  Parm1: Velocity label ;
  41:  !  Parm2: Position register index ;
  42:  CALL TW_MVGUN(1,21) ;
  43:   ;
  44:  !Skip threshold measurement ;
  45:  !Increment phase(step) ;
  46:  !  Parm1:gun number   ;
  47:  CALL TWKINCPH(AR[1]) ;
  48:   ;
  49:  !Calibrate 0 with master tips ;
  50:  !  parm1: gun number   ;
  51:  !  parm2: data register1 ;
  52:  !  parm3: position register ;
  53:  !  parm4: data register2 (<v6.31) ;
  54:  CALL TWKZRCLB(AR[1],10,21) ;
  55:   ;
  56:  !Skip fixture measurement ;
  57:  !Increment phase(step) ;
  58:  !  Parm1:gun number   ;
  59:  CALL TWKINCPH(AR[1]) ;
  60:   ;
  61:  !Move gun to PR ;
  62:  !  Parm1: Velocity label ;
  63:  !  Parm2: Position register index ;
  64:  CALL TW_MVGUN(1,20) ;
/POS
/END
