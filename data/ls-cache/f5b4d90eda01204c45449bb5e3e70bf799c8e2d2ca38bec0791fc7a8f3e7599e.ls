/PROG  ED44_OP170_PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP170_PICK";
PROG_SIZE	= 2194;
CREATE		= DATE 26-04-18  TIME 14:36:08;
MODIFIED	= DATE 26-04-18  TIME 14:36:08;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 2582;
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
   1:  UTOOL_NUM=1 ;
   2:  UFRAME_NUM=0 ;
   3:  PAYLOAD[1:GUN] ;
   4:  CALL CHECK_NO_PART(1) ;
   5:  CALL RELEASE_PART(1) ;
   6:  CALL RELEASE_PART(2) ;
   7:J PR[1:HOME] 100% FINE    ;
   8:   ;
   9:  CALL SEGMENT(2) ;
  10:  !R15_R14干涉区 ;
  11:  CALL ENTER_ZONE(15) ;
  12:   ;
  13:J P[7] 100% CNT100    ;
  14:J P[6] 100% CNT100    ;
  15:J P[5] 100% CNT100    ;
  16:L P[4] 2000mm/sec CNT50    ;
  17:L P[3] 2000mm/sec CNT50    ;
  18:L P[2] 1000mm/sec FINE    ;
  19:  //L P[1] 800mm/sec FINE    ;
  20:L P[16] 500mm/sec FINE    ;
  21:  CALL CHECK_PART(1) ;
  22:  DO[329: * ]=ON ;
  23:  DO[330: * ]=OFF ;
  24:  DO[331: * ]=ON ;
  25:  DO[332: * ]=OFF ;
  26:  CALL FINISHSEG(2) ;
  27:  CALL SEGMENT(3) ;
  28:  CALL GRIP_PART(1) ;
  29:  CALL GRIP_PART(2) ;
  30:L P[8] 400mm/sec FINE    ;
  31:L P[9] 1000mm/sec CNT50    ;
  32:  CALL FINISHSEG(3) ;
  33:  CALL SEGMENT(4) ;
  34:   ;
  35:L P[10] 2000mm/sec CNT50    ;
  36:J P[11] 100% CNT100    ;
  37:J P[12] 100% CNT100    ;
  38:J P[14] 100% CNT100    ;
  39:J P[15] 100% CNT100    ;
  40:J P[13] 100% FINE    ;
  41:  !R15_R14干涉区 ;
  42:  CALL EXIT_ZONE(15) ;
  43:  CALL FINISHSEG(4) ;
  44:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   326.703  mm,	Y =  2553.769  mm,	Z = -1024.503  mm,
	W =   179.632 deg,	P =     -.126 deg,	R =   179.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   325.769  mm,	Y =  2551.287  mm,	Z =  -985.803  mm,
	W =   179.743 deg,	P =     -.026 deg,	R =   179.564 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.871  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   325.477  mm,	Y =  2550.946  mm,	Z =  -855.268  mm,
	W =   179.629 deg,	P =     -.126 deg,	R =   179.643 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   326.585  mm,	Y =  2547.634  mm,	Z =  -342.642  mm,
	W =   179.629 deg,	P =     -.126 deg,	R =   179.643 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   318.177  mm,	Y =  1900.597  mm,	Z =   -63.558  mm,
	W =   169.954 deg,	P =     -.864 deg,	R =   179.648 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   610.425  mm,	Y =  1480.490  mm,	Z =   464.145  mm,
	W =   164.003 deg,	P =    -5.691 deg,	R =   138.503 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1283.980  mm,	Y =  1099.326  mm,	Z =   964.645  mm,
	W =   161.956 deg,	P =   -21.594 deg,	R =    75.990 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   326.768  mm,	Y =  2553.567  mm,	Z =  -994.023  mm,
	W =   179.632 deg,	P =     -.126 deg,	R =   179.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   327.130  mm,	Y =  2552.499  mm,	Z =  -826.957  mm,
	W =   179.632 deg,	P =     -.126 deg,	R =   179.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   327.455  mm,	Y =  2551.535  mm,	Z =  -676.799  mm,
	W =   179.632 deg,	P =     -.126 deg,	R =   179.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   324.592  mm,	Y =  2005.272  mm,	Z =  -423.660  mm,
	W =   178.894 deg,	P =     -.126 deg,	R =   179.641 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   818.207  mm,	Y =  1380.622  mm,	Z =    19.685  mm,
	W =   170.625 deg,	P =    -2.647 deg,	R =   133.403 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.873  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2262.075  mm,	Y =  1047.620  mm,	Z =   652.696  mm,
	W =  -145.502 deg,	P =     -.988 deg,	R =   -61.484 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   152.870  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1075.821  mm,	Y =  1286.136  mm,	Z =   306.930  mm,
	W =   170.553 deg,	P =   -18.550 deg,	R =    71.325 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   181.699  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1745.324  mm,	Y =  1205.572  mm,	Z =   474.940  mm,
	W =  -161.804 deg,	P =   -29.843 deg,	R =    -2.513 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   152.870  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   325.750  mm,	Y =  2551.245  mm,	Z = -1019.983  mm,
	W =   179.745 deg,	P =     -.024 deg,	R =   179.562 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.871  mm
};
/END
