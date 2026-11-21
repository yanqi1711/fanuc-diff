/PROG  SERVICE_GUN
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "Service_gun";
PROG_SIZE	= 1119;
CREATE		= DATE 26-03-14  TIME 16:18:22;
MODIFIED	= DATE 26-03-25  TIME 12:19:20;
FILE_NAME	= TIPCHANG;
VERSION		= 0;
LINE_COUNT	= 15;
MEMORY_SIZE	= 1431;
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
   7:J P[3] 100% CNT100    ;
   8:J P[4] 100% FINE    ;
   9:  DO[211:OFF:Ô¤Áô]=ON ;
  10:  WAIT DI[211:OFF:Reserve]=ON    ;
  11:J P[10] 100% CNT100    ;
  12:J P[11] 100% CNT100    ;
  13:J P[12] 100% CNT100    ;
  14:J PR[1:HOME] 100% FINE    ;
  15:  DO[211:OFF:Ô¤Áô]=OFF ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   773.211  mm,	Y =  -808.507  mm,	Z =   441.142  mm,
	W =   -18.282 deg,	P =    42.920 deg,	R =    19.294 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.247  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.807  mm,	Y =  -715.567  mm,	Z =   406.846  mm,
	W =    10.171 deg,	P =    68.588 deg,	R =   129.820 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.247  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   512.805  mm,	Y =  -804.238  mm,	Z =    48.849  mm,
	W =     3.718 deg,	P =    28.184 deg,	R =   163.892 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.246  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   436.782  mm,	Y =  -923.563  mm,	Z =  -529.163  mm,
	W =    -2.382 deg,	P =     5.113 deg,	R =   168.331 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.246  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =   512.805  mm,	Y =  -804.238  mm,	Z =    48.849  mm,
	W =     3.718 deg,	P =    28.184 deg,	R =   163.892 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.246  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   512.807  mm,	Y =  -715.567  mm,	Z =   406.846  mm,
	W =    10.171 deg,	P =    68.588 deg,	R =   129.820 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.246  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =   773.211  mm,	Y =  -808.507  mm,	Z =   441.142  mm,
	W =   -18.283 deg,	P =    42.920 deg,	R =    19.294 deg
   GP2:
	UF : 0, UT : 1,	
	J1=   214.246  mm
};
/END
