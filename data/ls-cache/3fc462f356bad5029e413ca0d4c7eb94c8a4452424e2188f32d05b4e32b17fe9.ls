/PROG  ED44_54_OP170_DROP
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP170_DROP";
PROG_SIZE	= 2125;
CREATE		= DATE 26-04-18  TIME 14:24:44;
MODIFIED	= DATE 26-04-18  TIME 14:24:44;
FILE_NAME	= ED44_54_;
VERSION		= 0;
LINE_COUNT	= 40;
MEMORY_SIZE	= 2529;
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
   3:  PAYLOAD[2] ;
   4:  CALL CHECK_PART(1) ;
   5:  CALL GRIP_PART(1) ;
   6:  CALL GRIP_PART(2) ;
   7:  CALL SEGMENT(6) ;
   8:   ;
   9:  --ch:With R15 PICK ;
  10:  CALL ENTER_ZONE(15) ;
  11:   ;
  12:J P[1] 100% CNT100    ;
  13:J P[2] 100% CNT100    ;
  14:J P[3] 100% CNT100    ;
  15:J P[4] 100% CNT60    ;
  16:L P[7] 2000mm/sec CNT50    ;
  17:L P[6] 1000mm/sec CNT5    ;
  18:L P[15] 800mm/sec FINE    ;
  19:  //L P[5] 800mm/sec FINE    ;
  20:  DO[329: * ]=OFF ;
  21:  DO[330: * ]=ON ;
  22:  DO[331: * ]=OFF ;
  23:  DO[332: * ]=ON ;
  24:  CALL FINISHSEG(6) ;
  25:  CALL SEGMENT(7) ;
  26:  CALL RELEASE_PART(1) ;
  27:  CALL RELEASE_PART(2) ;
  28:L P[8] 1000mm/sec CNT10    ;
  29:  CALL CHECK_NO_PART(1) ;
  30:L P[9] 2000mm/sec CNT50    ;
  31:L P[10] 2000mm/sec CNT50    ;
  32:L P[11] 2000mm/sec CNT100    ;
  33:J P[12] 100% CNT100    ;
  34:J P[13] 100% CNT100    ;
  35:J P[14] 100% CNT100    ;
  36:J PR[1:HOME] 100% FINE    ;
  37:  CALL FINISHSEG(7) ;
  38:  --ch:With R15 PICK ;
  39:  CALL EXIT_ZONE(15) ;
  40:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1842.168  mm,	Y =  -678.955  mm,	Z =  1050.221  mm,
	W =   135.736 deg,	P =   -25.123 deg,	R =    44.166 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.313  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1531.011  mm,	Y = -1236.881  mm,	Z =   450.716  mm,
	W =   142.608 deg,	P =   -15.542 deg,	R =    30.695 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.313  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   395.969  mm,	Y = -1834.627  mm,	Z =   413.559  mm,
	W =   146.953 deg,	P =    -7.296 deg,	R =     1.330 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.313  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   273.356  mm,	Y = -2047.962  mm,	Z =  -443.638  mm,
	W =  -179.266 deg,	P =    -1.252 deg,	R =     1.522 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.313  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.649  mm,	Y = -2171.272  mm,	Z = -1044.791  mm,
	W =  -179.787 deg,	P =      .043 deg,	R =      .114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.310  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.673  mm,	Y = -2171.141  mm,	Z =  -984.573  mm,
	W =   179.955 deg,	P =      .044 deg,	R =      .051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.310  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.649  mm,	Y = -2171.273  mm,	Z =  -631.801  mm,
	W =  -179.787 deg,	P =      .043 deg,	R =      .114 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.310  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.674  mm,	Y = -2171.140  mm,	Z = -1002.308  mm,
	W =   179.955 deg,	P =      .044 deg,	R =      .051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.310  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.589  mm,	Y = -2171.231  mm,	Z =  -928.181  mm,
	W =  -179.785 deg,	P =      .043 deg,	R =      .112 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.309  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.589  mm,	Y = -2171.232  mm,	Z =  -729.460  mm,
	W =  -179.785 deg,	P =      .043 deg,	R =      .112 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.309  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.590  mm,	Y = -2079.071  mm,	Z =  -367.541  mm,
	W =  -179.785 deg,	P =      .043 deg,	R =      .112 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.309  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.590  mm,	Y = -1574.107  mm,	Z =   208.460  mm,
	W =   166.029 deg,	P =     -.168 deg,	R =      .158 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.309  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   725.208  mm,	Y = -1381.919  mm,	Z =   684.455  mm,
	W =   160.706 deg,	P =     6.529 deg,	R =    43.340 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   170.750  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1415.651  mm,	Y =  -978.840  mm,	Z =  1163.735  mm,
	W =   156.838 deg,	P =    29.061 deg,	R =   109.628 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   185.636  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   256.644  mm,	Y = -2171.161  mm,	Z = -1036.918  mm,
	W =   179.955 deg,	P =      .044 deg,	R =      .051 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   161.310  mm
};
/END
