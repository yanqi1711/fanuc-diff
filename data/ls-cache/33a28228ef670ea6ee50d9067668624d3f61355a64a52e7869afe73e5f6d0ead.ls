/PROG  DRESS
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "";
PROG_SIZE	= 1779;
CREATE		= DATE 26-03-09  TIME 12:12:08;
MODIFIED	= DATE 26-03-09  TIME 12:27:02;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 24;
MEMORY_SIZE	= 2055;
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
   5:J PR[1:HOME] 100% FINE    ;
   6:J P[9] 100% CNT100    ;
   7:J P[8] 100% CNT100    ;
   8:J P[7] 100% CNT100    ;
   9:J P[6] 100% CNT100    ;
  10:J P[5] 100% CNT100    ;
  11:J P[4] 100% CNT50    ;
  12:L P[3] 2000mm/sec FINE    ;
  13:L P[2] 2000mm/sec FINE    ;
  14:  !POS ;
  15:L P[1] 2000mm/sec FINE    ;
  16:L P[17] 2000mm/sec FINE    ;
  17:L P[16] 2000mm/sec FINE    ;
  18:J P[15] 100% CNT50    ;
  19:J P[14] 100% CNT100    ;
  20:J P[13] 100% CNT100    ;
  21:J P[12] 100% CNT100    ;
  22:J P[11] 100% CNT100    ;
  23:J P[10] 100% CNT100    ;
  24:J PR[1:HOME] 100% FINE    ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -146.123  mm,	Y =  1149.745  mm,	Z =  -412.358  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    94.179  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -147.885  mm,	Y =  1150.535  mm,	Z =  -510.021  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -160.686  mm,	Y =  1067.641  mm,	Z =  -510.457  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -150.972  mm,	Y =   942.189  mm,	Z =  -511.644  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   143.991  mm,	Y =   962.580  mm,	Z =  -430.248  mm,
	W =    -1.907 deg,	P =    30.169 deg,	R =  -176.550 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   666.958  mm,	Y =   994.105  mm,	Z =  -125.702  mm,
	W =    -2.728 deg,	P =    52.803 deg,	R =  -177.765 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   929.058  mm,	Y =   417.378  mm,	Z =   175.589  mm,
	W =    12.813 deg,	P =    68.053 deg,	R =  -157.474 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.495  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1395.304  mm,	Y =   243.009  mm,	Z =   680.663  mm,
	W =    65.791 deg,	P =    34.348 deg,	R =   -65.996 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.929  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1749.585  mm,	Y =  -632.673  mm,	Z =  1563.545  mm,
	W =    66.272 deg,	P =   -10.851 deg,	R =   -74.084 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   107.387  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1749.585  mm,	Y =  -632.673  mm,	Z =  1563.545  mm,
	W =    66.272 deg,	P =   -10.851 deg,	R =   -74.084 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   107.387  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1395.304  mm,	Y =   243.009  mm,	Z =   680.663  mm,
	W =    65.791 deg,	P =    34.348 deg,	R =   -65.996 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   142.929  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   929.058  mm,	Y =   417.378  mm,	Z =   175.589  mm,
	W =    12.813 deg,	P =    68.053 deg,	R =  -157.474 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   179.495  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   666.958  mm,	Y =   994.105  mm,	Z =  -125.702  mm,
	W =    -2.728 deg,	P =    52.803 deg,	R =  -177.765 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =   143.991  mm,	Y =   962.580  mm,	Z =  -430.248  mm,
	W =    -1.907 deg,	P =    30.169 deg,	R =  -176.550 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -150.972  mm,	Y =   942.189  mm,	Z =  -511.644  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -160.686  mm,	Y =  1067.641  mm,	Z =  -510.457  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, -1',
	X =  -147.885  mm,	Y =  1150.535  mm,	Z =  -510.021  mm,
	W =     -.540 deg,	P =     -.995 deg,	R =  -175.563 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   209.250  mm
};
/END
