/PROG  G3G5_DROP_OP150
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "DROP OP150";
PROG_SIZE	= 2170;
CREATE		= DATE 26-04-18  TIME 14:30:00;
MODIFIED	= DATE 26-04-18  TIME 14:30:00;
FILE_NAME	= G3G5_DRO;
VERSION		= 0;
LINE_COUNT	= 44;
MEMORY_SIZE	= 2558;
PROTECT		= READ_WRITE;
TCD:  STACK_SIZE	= 0,
      TASK_PRIORITY	= 50,
      TIME_SLICE	= 0,
      BUSY_LAMP_OFF	= 0,
      ABORT_REQUEST	= 0,
      PAUSE_REQUEST	= 0;
DEFAULT_GROUP	= 1,*,*,*,*;
CONTROL_CODE	= 00000000 00000000;
LOCAL_REGISTERS	= 0,0,0;
/APPL
  SPOT : TRUE ; 
  SPOT Welding Equipment Number : 1 ;
/MN
   1:  UFRAME_NUM=0 ;
   2:  UTOOL_NUM=1 ;
   3:  PAYLOAD[1:GUN] ;
   4:  CALL SEGMENT(15) ;
   5:   ;
   6:  CALL CHECK_PART(1) ;
   7:  DO[314: * ]=ON ;
   8:  CALL GRIP_PART    ;
   9:J P[19] 100% FINE    ;
  10:  !R11_R14干涉区 ;
  11:  CALL ENTER_ZONE(12) ;
  12:J P[2] 100% CNT100    ;
  13:J P[13] 100% CNT100    ;
  14:   ;
  15:J P[12] 100% CNT100    ;
  16:J P[11] 100% CNT100    ;
  17:J P[10] 100% CNT100    ;
  18:J P[6] 100% CNT100    ;
  19:L P[5] 2000mm/sec CNT100    ;
  20:L P[3] 2000mm/sec CNT50    ;
  21:L P[4] 2000mm/sec FINE    ;
  22:  !POS ;
  23:L P[1] 600mm/sec FINE    ;
  24:  DO[334: * ]=ON ;
  25:  DO[333: * ]=OFF ;
  26:  CALL FINISHSEG(15) ;
  27:  CALL SEGMENT(16) ;
  28:   ;
  29:  CALL RELEASE_PART    ;
  30:L P[21] 1000mm/sec FINE    ;
  31:  CALL CHECK_NO_PART(1) ;
  32:L P[20] 2000mm/sec CNT50    ;
  33:L P[17] 2000mm/sec CNT100    ;
  34:J P[16] 100% CNT100    ;
  35:J P[15] 100% CNT100    ;
  36:J P[14] 100% CNT100    ;
  37:J P[9] 100% CNT100    ;
  38:   ;
  39:J P[8] 100% CNT100    ;
  40:J P[7] 100% CNT100    ;
  41:J PR[1:HOME] 100% FINE    ;
  42:  !R11_R14干涉区 ;
  43:  CALL EXIT_ZONE(12) ;
  44:  CALL FINISHSEG(16) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -432.508  mm,	Y =  3181.768  mm,	Z =  -528.378  mm,
	W =  -179.513 deg,	P =   -60.393 deg,	R =   179.488 deg
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.005  mm,	Y =   672.785  mm,	Z =  1667.595  mm,
	W =  -111.202 deg,	P =    -6.779 deg,	R =    -6.325 deg
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -40.887  mm,	Y =  3178.559  mm,	Z =  -297.788  mm,
	W =   179.479 deg,	P =   -58.946 deg,	R =   179.544 deg
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -396.172  mm,	Y =  3181.799  mm,	Z =  -507.732  mm,
	W =  -179.513 deg,	P =   -60.393 deg,	R =   179.488 deg
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.079  mm,	Y =  3086.028  mm,	Z =    90.668  mm,
	W =   167.774 deg,	P =   -57.799 deg,	R =  -169.190 deg
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -61.774  mm,	Y =  2929.298  mm,	Z =   456.493  mm,
	W =   154.860 deg,	P =   -54.879 deg,	R =  -153.708 deg
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   637.005  mm,	Y =   672.785  mm,	Z =  1667.595  mm,
	W =  -111.202 deg,	P =    -6.779 deg,	R =    -6.325 deg
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   479.935  mm,	Y =  1857.789  mm,	Z =  1583.222  mm,
	W =   -91.834 deg,	P =    23.377 deg,	R =    -3.045 deg
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   406.215  mm,	Y =  2631.298  mm,	Z =  1079.552  mm,
	W =   -94.578 deg,	P =    64.501 deg,	R =   -10.920 deg
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.186  mm,	Y =  2996.450  mm,	Z =   931.937  mm,
	W =   138.456 deg,	P =   -37.378 deg,	R =  -152.474 deg
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -225.005  mm,	Y =  2428.593  mm,	Z =  1273.778  mm,
	W =   132.071 deg,	P =    42.674 deg,	R =  -124.887 deg
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   406.215  mm,	Y =  2631.298  mm,	Z =  1079.552  mm,
	W =   -94.578 deg,	P =    64.501 deg,	R =   -10.920 deg
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   479.935  mm,	Y =  1857.789  mm,	Z =  1583.222  mm,
	W =   -91.834 deg,	P =    23.377 deg,	R =    -3.045 deg
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -225.005  mm,	Y =  2428.593  mm,	Z =  1273.778  mm,
	W =   132.071 deg,	P =    42.674 deg,	R =  -124.887 deg
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    -9.186  mm,	Y =  2996.450  mm,	Z =   931.937  mm,
	W =   138.456 deg,	P =   -37.378 deg,	R =  -152.474 deg
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -61.774  mm,	Y =  2929.298  mm,	Z =   456.493  mm,
	W =   154.860 deg,	P =   -54.879 deg,	R =  -153.708 deg
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    40.079  mm,	Y =  3086.028  mm,	Z =    90.668  mm,
	W =   167.774 deg,	P =   -57.799 deg,	R =  -169.190 deg
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   759.606  mm,	Y =  -530.509  mm,	Z =  1667.634  mm,
	W =  -111.200 deg,	P =    -6.778 deg,	R =   -87.821 deg
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -40.887  mm,	Y =  3178.559  mm,	Z =  -297.788  mm,
	W =   179.479 deg,	P =   -58.946 deg,	R =   179.544 deg
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -396.172  mm,	Y =  3181.799  mm,	Z =  -507.732  mm,
	W =  -179.513 deg,	P =   -60.393 deg,	R =   179.488 deg
};
/END
