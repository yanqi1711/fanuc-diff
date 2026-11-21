/PROG  TIPDRESS_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Tipdress_Gun";
PROG_SIZE	= 1403;
CREATE		= DATE 26-03-10  TIME 17:42:20;
MODIFIED	= DATE 26-03-15  TIME 17:12:00;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 1695;
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
   4:   ;
   5:   ;
   6:J PR[1:HOME] 100% CNT100    ;
   7:J P[10] 100% CNT100    ;
   8:J P[3] 100% CNT100    ;
   9:J P[1] 100% CNT100    ;
  10:   ;
  11:L P[5] 1500mm/sec CNT10    ;
  12:  DO[257:OFF:µ¶Æ¬Ðý×ª]=ON ;
  13:  !ÐÞÄ¥Î» ;
  14:L P[4] 800mm/sec FINE
    :  TIPDRESS[SD=1,P=10,t=6.0,TD=1,ED=1]    ;
  15:L P[6] 1500mm/sec CNT10    ;
  16:  DO[257:OFF:µ¶Æ¬Ðý×ª]=OFF ;
  17:   ;
  18:J P[9] 100% CNT100    ;
  19:J P[7] 100% CNT100    ;
  20:J P[11] 100% CNT100    ;
  21:J PR[1:HOME] 100% FINE    ;
  22:  CALL WR_UPD01(1,0) ;
  23:   ;
  24:  CALL TD_DRESS_END    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   475.457  mm,	Y =  -913.036  mm,	Z =    99.290  mm,
	W =   -92.499 deg,	P =    75.695 deg,	R =   -91.903 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.384  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   719.015  mm,	Y =  -688.259  mm,	Z =   244.689  mm,
	W =  -100.240 deg,	P =    75.453 deg,	R =  -101.965 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.277  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   528.187  mm,	Y =  -955.921  mm,	Z =  -148.599  mm,
	W =   -93.503 deg,	P =    79.848 deg,	R =   -92.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    40.490  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.192  mm,	Y =  -957.276  mm,	Z =  -148.076  mm,
	W =   -93.503 deg,	P =    79.848 deg,	R =   -92.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.384  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   473.192  mm,	Y =  -957.276  mm,	Z =  -148.076  mm,
	W =   -93.503 deg,	P =    79.848 deg,	R =   -92.931 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.384  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   719.015  mm,	Y =  -688.259  mm,	Z =   244.689  mm,
	W =  -100.240 deg,	P =    75.453 deg,	R =  -101.965 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.277  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   475.457  mm,	Y =  -913.036  mm,	Z =    99.290  mm,
	W =   -92.499 deg,	P =    75.695 deg,	R =   -91.903 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   144.384  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   801.797  mm,	Y =     0.000  mm,	Z =   355.035  mm,
	W =      .000 deg,	P =    81.060 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.805  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   801.797  mm,	Y =     0.000  mm,	Z =   355.035  mm,
	W =      .000 deg,	P =    81.060 deg,	R =     -.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   138.805  mm
};
/END
