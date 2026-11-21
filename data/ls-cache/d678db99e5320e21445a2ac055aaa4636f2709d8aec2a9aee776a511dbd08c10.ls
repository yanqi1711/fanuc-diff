/PROG  TIPDRESS_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tipdress_Gun";
PROG_SIZE	= 1601;
CREATE		= DATE 26-03-13  TIME 14:39:28;
MODIFIED	= DATE 26-03-15  TIME 16:48:44;
FILE_NAME	= TIPCHANG;
VERSION		= 0;
LINE_COUNT	= 25;
MEMORY_SIZE	= 1889;
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
   4:  DO[201:OFF:Ç¹1ÐÞÄ¥ÖÐ]=ON ;
   5:J PR[1:HOME] 100% CNT100    ;
   6:J P[1] 100% CNT100    ;
   7:J P[2] 100% CNT100    ;
   8:J P[4] 100% CNT50    ;
   9:J P[5] 100% CNT50    ;
  10:   ;
  11:L P[6] 1000mm/sec CNT20    ;
  12:  DO[257:OFF:µ¶Æ¬Ðý×ª]=PULSE,5.0sec ;
  13:  WAIT DI[257:OFF]=ON+    ;
  14:  !ÐÞÄ¥Î» ;
  15:L P[7] 500mm/sec FINE
    :  TIPDRESS[SD=1,P=10,t=6.0,TD=1,ED=1]    ;
  16:   ;
  17:L P[8] 1000mm/sec CNT20    ;
  18:  DO[257:OFF:µ¶Æ¬Ðý×ª]=OFF ;
  19:J P[9] 100% CNT50    ;
  20:J P[10] 100% CNT50    ;
  21:J P[11] 100% CNT50    ;
  22:J P[12] 100% CNT50    ;
  23:J PR[1:HOME] 100% FINE    ;
  24:  CALL WR_UPD01(1,0) ;
  25:  CALL TD_DRESS_END    ;
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
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   107.894  mm,	Y =  1538.619  mm,	Z =  -465.531  mm,
	W =    -1.017 deg,	P =     -.038 deg,	R =   120.298 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   147.147  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   107.892  mm,	Y =  1538.618  mm,	Z =  -409.531  mm,
	W =    -1.017 deg,	P =     -.038 deg,	R =   120.298 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    60.480  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   107.894  mm,	Y =  1538.619  mm,	Z =  -465.531  mm,
	W =    -1.017 deg,	P =     -.038 deg,	R =   120.298 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   147.147  mm
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
