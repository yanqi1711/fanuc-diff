/PROG  ED44_PICK_OP220
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "OP220_PICK";
PROG_SIZE	= 2228;
CREATE		= DATE 26-04-18  TIME 14:43:28;
MODIFIED	= DATE 26-05-11  TIME 12:52:52;
FILE_NAME	= ED44_DRO;
VERSION		= 0;
LINE_COUNT	= 47;
MEMORY_SIZE	= 2604;
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
   4:J PR[1:HOME] 100% FINE    ;
   5:  CALL CHKNOPRT(1) ;
   6:  CALL RELEASE_PART(1) ;
   7:  CALL RELEASE_PART(2) ;
   8:  CALL SEGMENT(2) ;
   9:  --ch:WITH R18 DROP ;
  10:  CALL ENTER_ZONE(11) ;
  11:  --ch:WITH R19 STUD ;
  12:  CALL ENTER_ZONE(9) ;
  13:J P[6] 100% CNT100    ;
  14:J P[5] 100% CNT100    ;
  15:J P[4] 100% CNT100    ;
  16:L P[3] 2000mm/sec CNT50    ;
  17:L P[14] 1500mm/sec FINE    ;
  18:L P[2] 1500mm/sec FINE    ;
  19:  --ch:PICK_POS ;
  20:L P[1] 500mm/sec FINE    ;
  21:  CALL CHECK_PART(1) ;
  22:  DO[313: * ]=ON ;
  23:  DO[314: * ]=OFF ;
  24:  DO[315: * ]=ON ;
  25:  DO[316: * ]=OFF ;
  26:  CALL FINISHSEG(2) ;
  27:  CALL SEGMENT(3) ;
  28:   ;
  29:   ;
  30:  CALL GRIP_PART(1) ;
  31:  CALL GRIP_PART(2) ;
  32:   ;
  33:L P[7] 1500mm/sec CNT10    ;
  34:L P[8] 2000mm/sec CNT30    ;
  35:  CALL FINISHSEG(3) ;
  36:  CALL SEGMENT(4) ;
  37:   ;
  38:J P[9] 100% CNT50    ;
  39:J P[11] 100% CNT100    ;
  40:J P[10] 100% CNT100    ;
  41:J P[13] 100% CNT100    ;
  42:J P[12] 100% FINE    ;
  43:  CALL FINISHSEG(4) ;
  44:  --ch:WITH R18 DROP ;
  45:  CALL EXIT_ZONE(11) ;
  46:  --ch:WITH R19 STUD ;
  47:  CALL EXIT_ZONE(9) ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -741.725  mm,	Y =  3416.701  mm,	Z =  -257.259  mm,
	W =   179.764 deg,	P =      .099 deg,	R =   -49.388 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.016  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -742.190  mm,	Y =  3416.972  mm,	Z =  -242.182  mm,
	W =   179.622 deg,	P =      .104 deg,	R =   -49.238 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.012  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -742.778  mm,	Y =  3421.576  mm,	Z =   131.215  mm,
	W =   179.711 deg,	P =      .267 deg,	R =   -49.236 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.011  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -645.911  mm,	Y =  3023.225  mm,	Z =  1171.173  mm,
	W =  -171.742 deg,	P =    16.442 deg,	R =   -47.979 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.012  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -514.032  mm,	Y =  2480.998  mm,	Z =  1551.656  mm,
	W =  -166.935 deg,	P =    24.513 deg,	R =   -46.292 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.012  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.248  mm,	Y =  2175.339  mm,	Z =  1925.866  mm,
	W =  -135.962 deg,	P =    13.078 deg,	R =   -44.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.006  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -742.695  mm,	Y =  3421.548  mm,	Z =  -200.917  mm,
	W =   179.709 deg,	P =      .264 deg,	R =   -49.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.014  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -742.694  mm,	Y =  3421.525  mm,	Z =   127.868  mm,
	W =   179.708 deg,	P =      .262 deg,	R =   -49.237 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.014  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -714.226  mm,	Y =  3304.426  mm,	Z =   765.322  mm,
	W =  -175.016 deg,	P =    10.444 deg,	R =   -48.742 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.015  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   802.248  mm,	Y =  2175.339  mm,	Z =  1925.866  mm,
	W =  -135.962 deg,	P =    13.078 deg,	R =   -44.210 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.007  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -495.625  mm,	Y =  2407.072  mm,	Z =  1969.387  mm,
	W =  -159.334 deg,	P =    35.157 deg,	R =   -42.517 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.008  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2323.316  mm,	Y =  -653.890  mm,	Z =  1438.734  mm,
	W =   168.255 deg,	P =    36.086 deg,	R =   169.188 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.006  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1307.973  mm,	Y =  1652.864  mm,	Z =  2537.300  mm,
	W =  -109.853 deg,	P =    28.516 deg,	R =   -55.910 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.003  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  -731.600  mm,	Y =  3423.606  mm,	Z =  -140.145  mm,
	W =   179.710 deg,	P =      .265 deg,	R =   -49.543 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    50.013  mm
};
/END
