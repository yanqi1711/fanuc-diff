/PROG  ED44_DROP_OP240
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP240_DROP";
PROG_SIZE	= 2140;
CREATE		= DATE 26-04-18  TIME 14:45:00;
MODIFIED	= DATE 26-05-11  TIME 13:30:42;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 41;
MEMORY_SIZE	= 2540;
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
   3:  PAYLOAD[2] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:  CALL SEGMENT(6) ;
   8:  --ch:WITH R21_WELD ;
   9:  CALL ENTER_ZONE(1) ;
  10:J P[7] 100% CNT100    ;
  11:J P[9] 100% CNT100    ;
  12:J P[8] 100% CNT100    ;
  13:J P[6] 100% CNT100    ;
  14:J P[5] 100% CNT100    ;
  15:L P[4] 2000mm/sec CNT60    ;
  16:L P[3] 2000mm/sec CNT50    ;
  17:L P[2] 1000mm/sec FINE    ;
  18:   ;
  19:L P[1] 500mm/sec FINE    ;
  20:  DO[313: * ]=OFF ;
  21:  DO[314: * ]=ON ;
  22:  DO[315: * ]=OFF ;
  23:  DO[316: * ]=ON ;
  24:  CALL FINISHSEG(6) ;
  25:  CALL SEGMENT(7) ;
  26:  CALL RELEASE_PART(1) ;
  27:  CALL RELEASE_PART(2) ;
  28:   ;
  29:L P[10] 1000mm/sec CNT10    ;
  30:  CALL CHECK_NO_PART(1) ;
  31:   ;
  32:L P[11] 2000mm/sec CNT30    ;
  33:L P[16] 2000mm/sec CNT30    ;
  34:L P[15] 2000mm/sec CNT50    ;
  35:J P[12] 100% CNT100    ;
  36:J P[13] 100% CNT100    ;
  37:J P[14] 100% CNT100    ;
  38:J PR[1:HOME] 100% FINE    ;
  39:  CALL FINISHSEG(7) ;
  40:  --ch:WITH R21_WELD ;
  41:  CALL EXIT_ZONE(1) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1007.810  mm,	Y = -1989.260  mm,	Z =  -925.256  mm,
	W =  -179.931 deg,	P =      .075 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1007.804  mm,	Y = -1989.246  mm,	Z =  -870.588  mm,
	W =  -179.930 deg,	P =      .076 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1005.381  mm,	Y = -1991.217  mm,	Z =  -534.980  mm,
	W =  -179.298 deg,	P =     -.301 deg,	R =   -50.607 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1020.419  mm,	Y = -1984.828  mm,	Z =  -195.324  mm,
	W =   177.990 deg,	P =    -7.973 deg,	R =   -46.367 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1003.110  mm,	Y = -1963.017  mm,	Z =   153.455  mm,
	W =   164.179 deg,	P =   -18.248 deg,	R =   -42.213 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1029.508  mm,	Y = -1560.555  mm,	Z =   689.775  mm,
	W =   146.200 deg,	P =   -23.499 deg,	R =   -41.147 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1458.680  mm,	Y =  -346.091  mm,	Z =   697.527  mm,
	W =   140.699 deg,	P =   -24.647 deg,	R =    72.718 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -145.599  mm,	Y = -1551.215  mm,	Z =  1196.405  mm,
	W =   123.188 deg,	P =   -26.856 deg,	R =    -1.935 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.001  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   962.872  mm,	Y =  -904.715  mm,	Z =  1488.397  mm,
	W =   108.211 deg,	P =   -27.015 deg,	R =    58.382 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.001  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1007.810  mm,	Y = -1989.260  mm,	Z =  -899.679  mm,
	W =  -179.931 deg,	P =      .075 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1007.804  mm,	Y = -1989.246  mm,	Z =  -870.588  mm,
	W =  -179.930 deg,	P =      .076 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1007.805  mm,	Y = -1989.248  mm,	Z =  -572.988  mm,
	W =  -179.930 deg,	P =      .076 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1029.498  mm,	Y = -1560.539  mm,	Z =   689.717  mm,
	W =   146.203 deg,	P =   -23.498 deg,	R =   -41.148 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.004  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   228.970  mm,	Y = -1551.923  mm,	Z =  1181.417  mm,
	W =   145.350 deg,	P =   -45.551 deg,	R =   -31.780 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X = -1007.804  mm,	Y = -1989.248  mm,	Z =  -791.867  mm,
	W =  -179.930 deg,	P =      .076 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.002  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -995.189  mm,	Y = -1992.029  mm,	Z =  -818.116  mm,
	W =  -179.930 deg,	P =      .076 deg,	R =   -50.459 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.003  mm
};
/END
