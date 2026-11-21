/PROG  ED44_54_OP150_PICK
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP150_PICK";
PROG_SIZE	= 2348;
CREATE		= DATE 26-04-18  TIME 14:27:02;
MODIFIED	= DATE 26-04-18  TIME 14:27:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 46;
MEMORY_SIZE	= 2728;
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
   7:  CALL SEGMENT(2) ;
   8:  --ch:WITH R11 DROP ;
   9:  CALL ENTER_ZONE(12) ;
  10:J PR[1:HOME] 100% FINE    ;
  11:J P[9] 100% CNT100    ;
  12:J P[8] 100% CNT100    ;
  13:J P[7] 100% CNT100    ;
  14:J P[18] 100% CNT100    ;
  15:J P[6] 100% CNT100    ;
  16:J P[5] 100% CNT100    ;
  17:L P[4] 2000mm/sec CNT100    ;
  18:L P[3] 2000mm/sec CNT50    ;
  19:L P[2] 1500mm/sec FINE    ;
  20:   ;
  21:L P[1] 800mm/sec FINE    ;
  22:  CALL CHECK_PART(1) ;
  23:  DO[329: * ]=ON ;
  24:  DO[330: * ]=OFF ;
  25:  DO[331: * ]=ON ;
  26:  DO[332: * ]=OFF ;
  27:  CALL FINISHSEG(2) ;
  28:  CALL SEGMENT(3) ;
  29:  CALL GRIP_PART(1) ;
  30:  CALL GRIP_PART(2) ;
  31:L P[10] 300mm/sec FINE    ;
  32:L P[11] 2000mm/sec CNT30    ;
  33:  CALL FINISHSEG(3) ;
  34:  CALL SEGMENT(4) ;
  35:   ;
  36:L P[12] 2000mm/sec CNT50    ;
  37:L P[13] 2000mm/sec CNT100    ;
  38:J P[14] 100% CNT100    ;
  39:J P[17] 100% CNT100    ;
  40:J P[16] 100% CNT100    ;
  41:J P[15] 100% CNT100    ;
  42:  CALL FINISHSEG(4) ;
  43:  --ch:WITH R11 DROP ;
  44:  CALL EXIT_ZONE(12) ;
  45:   ;
  46:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   187.236  mm,	Y =  2287.840  mm,	Z =  -527.374  mm,
	W =   179.609 deg,	P =    59.941 deg,	R =   179.095 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   148.426  mm,	Y =  2288.157  mm,	Z =  -504.836  mm,
	W =   179.605 deg,	P =    59.941 deg,	R =   179.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   -44.445  mm,	Y =  2290.372  mm,	Z =  -393.979  mm,
	W =   179.519 deg,	P =    59.941 deg,	R =   178.990 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -422.248  mm,	Y =  2302.665  mm,	Z =  -175.241  mm,
	W =   175.141 deg,	P =    59.940 deg,	R =   178.990 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -257.220  mm,	Y =  2301.184  mm,	Z =   110.160  mm,
	W =   175.141 deg,	P =    59.940 deg,	R =   178.990 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -310.989  mm,	Y =  2279.493  mm,	Z =   391.082  mm,
	W =   175.141 deg,	P =    59.940 deg,	R =   178.990 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -238.456  mm,	Y =  1708.521  mm,	Z =  1887.879  mm,
	W =   117.210 deg,	P =    34.517 deg,	R =   171.297 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   966.642  mm,	Y =   328.887  mm,	Z =  2370.997  mm,
	W =   109.258 deg,	P =    54.899 deg,	R =   132.742 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   822.893  mm,	Y =  -216.500  mm,	Z =  2167.506  mm,
	W =   180.000 deg,	P =    70.333 deg,	R =   180.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   147.317  mm,	Y =  2288.165  mm,	Z =  -504.195  mm,
	W =   179.605 deg,	P =    59.941 deg,	R =   179.088 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =    55.554  mm,	Y =  2290.162  mm,	Z =  -450.782  mm,
	W =   179.662 deg,	P =    59.942 deg,	R =   179.176 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -343.269  mm,	Y =  2293.186  mm,	Z =  -219.983  mm,
	W =   179.662 deg,	P =    59.942 deg,	R =   179.176 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -318.739  mm,	Y =  2288.637  mm,	Z =   260.998  mm,
	W =   167.695 deg,	P =    59.450 deg,	R =   179.182 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -341.202  mm,	Y =  2127.295  mm,	Z =   762.819  mm,
	W =   151.079 deg,	P =    44.853 deg,	R =   161.996 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U B, 0, 0, 0',
	X =   739.952  mm,	Y =  -146.215  mm,	Z =  1935.438  mm,
	W =   111.028 deg,	P =    20.294 deg,	R =    97.595 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   960.797  mm,	Y =   332.620  mm,	Z =  2352.695  mm,
	W =   107.244 deg,	P =    50.225 deg,	R =   130.208 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -238.456  mm,	Y =  1708.521  mm,	Z =  1887.879  mm,
	W =   117.210 deg,	P =    34.517 deg,	R =   171.297 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -230.162  mm,	Y =  2277.482  mm,	Z =   748.033  mm,
	W =   168.248 deg,	P =    56.839 deg,	R =   179.562 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   199.017  mm
};
/END
