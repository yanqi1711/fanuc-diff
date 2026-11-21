/PROG  XW_UPDAT	  Macro
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Update wear vals";
PROG_SIZE	= 798;
CREATE		= DATE 13-08-30  TIME 15:53:10;
MODIFIED	= DATE 13-08-30  TIME 15:53:10;
FILE_NAME	= TW_UPDAT;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1226;
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
   2:  !  Update combination wear meas ;
   3:   ;
   4:  !Input parameter(s) ;
   5:  !  AR[1]: Gun number ;
   6:  !  AR[2]: New tip ;
   7:   ;
   8:  !Data register(s) used ;
   9:  !  R[10] ;
  10:   ;
  11:  !Judge measurement method ;
  12:  !  parm1: gun number   ;
  13:  !  parm2: data register1 ;
  14:  !  parm3: new-1/worn-0 ;
  15:  CALL TWKSTCHK(AR[1],10,AR[2]) ;
  16:  IF R[10:Tip wear down]>0,JMP LBL[1] ;
  17:   ;
  18:  !Call 1 step measurement ;
  19:  CALL WR_UPDAT(AR[1],AR[2]) ;
  20:  END ;
  21:   ;
  22:  LBL[1] ;
  23:  !Call 2 step measurement ;
  24:  CALL TW_UPDAT(AR[1],AR[2]) ;
  25:  END ;
/POS
/END
