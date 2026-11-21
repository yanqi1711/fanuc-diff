/PROG  SERVICE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Servicc_Gun";
PROG_SIZE	= 1281;
CREATE		= DATE 26-03-20  TIME 16:55:40;
MODIFIED	= DATE 26-03-20  TIME 16:58:28;
FILE_NAME	= TIPCHANG;
VERSION		= 0;
LINE_COUNT	= 19;
MEMORY_SIZE	= 1577;
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
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1:GUN] ;
   4:J PR[1:HOME] 100% CNT100    ;
   5:J P[1] 100% CNT100    ;
   6:J P[2] 100% CNT100    ;
   7:J P[4] 100% CNT50    ;
   8:J P[5] 100% CNT50    ;
   9:   ;
  10:L P[3] 2000mm/sec FINE    ;
  11:  DO[211:OFF:Ô¤Áô]=ON ;
  12:  WAIT DI[211:OFF:Reserve]=ON    ;
  13:   ;
  14:J P[9] 100% CNT50    ;
  15:J P[10] 100% CNT50    ;
  16:J P[11] 100% CNT50    ;
  17:J P[12] 100% CNT50    ;
  18:J PR[1:HOME] 100% FINE    ;
  19:  DO[211:OFF:Ô¤Áô]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1297.020  mm,	Y =   794.872  mm,	Z =   932.383  mm,
	W =    38.108 deg,	P =    32.722 deg,	R =   -25.416 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.066  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   454.893  mm,	Y =   987.533  mm,	Z =   756.069  mm,
	W =    -5.503 deg,	P =    67.744 deg,	R =  -139.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.066  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   241.807  mm,	Y =  1611.064  mm,	Z =  -509.635  mm,
	W =    -1.525 deg,	P =     5.736 deg,	R =   113.231 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   147.067  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   290.964  mm,	Y =  1190.227  mm,	Z =   433.698  mm,
	W =   -36.001 deg,	P =    26.655 deg,	R =   143.479 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.067  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   241.804  mm,	Y =  1611.063  mm,	Z =  -509.635  mm,
	W =    -1.525 deg,	P =     5.736 deg,	R =   118.933 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.067  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   241.805  mm,	Y =  1611.063  mm,	Z =  -509.635  mm,
	W =    -1.525 deg,	P =     5.736 deg,	R =   118.933 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.067  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   290.964  mm,	Y =  1190.227  mm,	Z =   433.699  mm,
	W =   -36.001 deg,	P =    26.655 deg,	R =   143.479 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.067  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   454.893  mm,	Y =   987.533  mm,	Z =   756.069  mm,
	W =    -5.503 deg,	P =    67.744 deg,	R =  -139.668 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.067  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1297.019  mm,	Y =   794.872  mm,	Z =   932.383  mm,
	W =    38.108 deg,	P =    32.722 deg,	R =   -25.416 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    82.067  mm
};
/END
