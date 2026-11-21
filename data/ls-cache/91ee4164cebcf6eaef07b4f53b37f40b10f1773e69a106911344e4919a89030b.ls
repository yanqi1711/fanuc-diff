/PROG  ED46_55_56_OP200_STUD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED46_55_56_OP200";
PROG_SIZE	= 5920;
CREATE		= DATE 26-03-29  TIME 23:39:10;
MODIFIED	= DATE 26-09-24  TIME 01:11:14;
FILE_NAME	= ED44_54_;
VERSION		= 0;
LINE_COUNT	= 92;
MEMORY_SIZE	= 6228;
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
   4:  CALL SEGMENT(2) ;
   5:  !R10_R9WELD ¸ÉÉæÇø ;
   6:  CALL ENTER_ZONE(9) ;
   7:  CALL ENTER_ZONE(8) ;
   8:   ;
   9:J PR[1:HOME] 100% CNT100    ;
  10:J P[22] 100% CNT100    ;
  11:J P[37] 100% CNT100    ;
  12:L P[38] 2000mm/sec FINE    ;
  13:  CALL STUD1(2) ;
  14:J P[39] 100% CNT100    ;
  15:J P[40] 100% CNT100    ;
  16:L P[41] 2000mm/sec FINE    ;
  17:  CALL STUD1(2) ;
  18:J P[42] 100% CNT100    ;
  19:J P[43] 100% CNT100    ;
  20:J P[44] 100% CNT100    ;
  21:L P[45] 2000mm/sec FINE    ;
  22:  CALL STUD1(2) ;
  23:J P[46] 100% CNT100    ;
  24:J P[47] 100% CNT100    ;
  25:J P[48] 100% CNT100    ;
  26:J P[49] 100% CNT100    ;
  27:L P[50] 2000mm/sec FINE    ;
  28:  CALL STUD1(2) ;
  29:J P[51] 100% CNT100    ;
  30:J P[52] 100% CNT100    ;
  31:L P[53] 2000mm/sec FINE    ;
  32:  CALL STUD1(2) ;
  33:J P[62] 100% CNT100    ;
  34:J P[63] 100% CNT100    ;
  35:J P[64] 100% CNT100    ;
  36:L P[65] 2000mm/sec FINE    ;
  37:  CALL STUD1(2) ;
  38:J P[66] 100% CNT100    ;
  39:J P[74] 100% CNT100    ;
  40:J P[75] 100% CNT100    ;
  41:J P[76] 100% CNT100    ;
  42:L P[77] 2000mm/sec FINE    ;
  43:  CALL STUD1(2) ;
  44:J P[78] 100% CNT100    ;
  45:J P[81] 100% CNT100    ;
  46:L P[82] 2000mm/sec FINE    ;
  47:  CALL STUD1(2) ;
  48:J P[83] 100% CNT100    ;
  49:J P[84] 100% CNT100    ;
  50:J P[85] 100% FINE    ;
  51:  CALL P0S_200    ;
  52:J P[100] 100% FINE    ;
  53:   ;
  54:J P[34] 100% CNT100    ;
  55:J P[54] 100% CNT100    ;
  56:J P[55] 100% CNT100    ;
  57:L P[1] 2000mm/sec FINE    ;
  58:  CALL STUD1(2) ;
  59:J P[57] 100% CNT100    ;
  60:J P[58] 100% CNT100    ;
  61:L P[59] 2000mm/sec FINE    ;
  62:  CALL STUD1(2) ;
  63:J P[60] 100% CNT100    ;
  64:J P[61] 100% CNT100    ;
  65:J P[67] 100% CNT100    ;
  66:L P[68] 2000mm/sec FINE    ;
  67:  CALL STUD1(2) ;
  68:J P[69] 100% CNT100    ;
  69:J P[70] 100% CNT100    ;
  70:L P[71] 2000mm/sec FINE    ;
  71:  CALL STUD1(2) ;
  72:J P[72] 100% CNT100    ;
  73:J P[73] 100% CNT100    ;
  74:J P[79] 100% CNT100    ;
  75:J P[80] 100% CNT70    ;
  76:J P[88] 100% CNT80    ;
  77:L P[89] 2000mm/sec FINE    ;
  78:  CALL STUD1(2) ;
  79:J P[90] 100% CNT100    ;
  80:J P[91] 100% CNT100    ;
  81:L P[92] 2000mm/sec FINE    ;
  82:  CALL STUD1(2) ;
  83:J P[93] 100% CNT100    ;
  84:J P[35] 100% CNT100    ;
  85:   ;
  86:   ;
  87:J P[98] 100% CNT100    ;
  88:J PR[1:HOME] 100% FINE    ;
  89:  CALL FINISHSEG(2) ;
  90:  CALL EXIT_ZONE(9) ;
  91:  CALL EXIT_ZONE(8) ;
  92:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2637.323  mm,	Y =   -30.800  mm,	Z =  -745.762  mm,
	W =  -179.531 deg,	P =    -1.042 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1916.582  mm,	Y =  -743.529  mm,	Z =   383.998  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2114.310  mm,	Y =    42.964  mm,	Z =   464.232  mm,
	W =   179.205 deg,	P =    -6.730 deg,	R =     6.765 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1593.069  mm,	Y =   -56.232  mm,	Z =  -105.035  mm,
	W =   179.887 deg,	P =      .157 deg,	R =    95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.301  mm,	Y =  -763.228  mm,	Z =    -7.232  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1861.246  mm,	Y =  -762.615  mm,	Z =   -79.715  mm,
	W =   179.080 deg,	P =     -.534 deg,	R =   -59.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.301  mm,	Y =  -763.228  mm,	Z =    -7.232  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1976.037  mm,	Y =  -771.511  mm,	Z =    -9.752  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1985.352  mm,	Y =  -763.485  mm,	Z =   -81.571  mm,
	W =   177.722 deg,	P =      .936 deg,	R =   -59.424 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.637  mm,	Y =  -772.823  mm,	Z =   107.049  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.169  mm,	Y =  -202.835  mm,	Z =   104.805  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.168  mm,	Y =  -202.835  mm,	Z =   -56.862  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2285.925  mm,	Y =  -202.437  mm,	Z =  -137.823  mm,
	W =   179.662 deg,	P =     1.267 deg,	R =   -17.929 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.168  mm,	Y =  -202.835  mm,	Z =   -56.862  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.167  mm,	Y =  -202.835  mm,	Z =   117.438  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =   117.438  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =    27.838  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2610.146  mm,	Y =   -73.758  mm,	Z =   -32.645  mm,
	W =  -178.216 deg,	P =     1.316 deg,	R =   -17.788 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =    27.838  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.217  mm,	Y =   -69.835  mm,	Z =    27.839  mm,
	W =  -179.815 deg,	P =     -.348 deg,	R =    -7.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2705.742  mm,	Y =   -69.855  mm,	Z =   -26.111  mm,
	W =   178.692 deg,	P =    -4.535 deg,	R =    -9.696 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[54]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2639.202  mm,	Y =   -10.589  mm,	Z =  -622.730  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[55]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.514  mm,	Y =   -38.212  mm,	Z =  -715.784  mm,
	W =   179.841 deg,	P =     -.107 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2630.514  mm,	Y =   -38.212  mm,	Z =  -715.784  mm,
	W =   179.841 deg,	P =     -.107 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2629.988  mm,	Y =    -3.586  mm,	Z =  -715.874  mm,
	W =   179.841 deg,	P =     -.107 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2637.505  mm,	Y =      .314  mm,	Z =  -746.444  mm,
	W =   179.842 deg,	P =     -.104 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2629.988  mm,	Y =    -3.586  mm,	Z =  -715.874  mm,
	W =   179.841 deg,	P =     -.107 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[61]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.713  mm,	Y =    10.618  mm,	Z =  -716.389  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[62]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.217  mm,	Y =   -69.835  mm,	Z =    27.839  mm,
	W =  -179.815 deg,	P =     -.348 deg,	R =    -7.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2292.462  mm,	Y =   119.164  mm,	Z =    27.828  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =   -53.922  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.031  mm,	Y =   160.458  mm,	Z =  -137.997  mm,
	W =  -179.252 deg,	P =    -1.042 deg,	R =    -7.069 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =   -53.922  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.879  mm,	Y =   -46.065  mm,	Z =  -716.789  mm,
	W =   179.870 deg,	P =     -.143 deg,	R =    -7.296 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2130.844  mm,	Y =   -34.000  mm,	Z =  -758.809  mm,
	W =   179.912 deg,	P =     -.172 deg,	R =   -22.739 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2117.879  mm,	Y =   -46.065  mm,	Z =  -716.789  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.693  mm,	Y =   -12.916  mm,	Z =  -716.878  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2128.053  mm,	Y =    -5.833  mm,	Z =  -759.370  mm,
	W =   179.841 deg,	P =     -.109 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2115.693  mm,	Y =   -12.916  mm,	Z =  -716.879  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.380  mm,	Y =   -56.580  mm,	Z =  -717.373  mm,
	W =   179.841 deg,	P =     -.109 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =    69.278  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.311  mm,	Y =   702.664  mm,	Z =    69.278  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.112  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1973.336  mm,	Y =   722.605  mm,	Z =   -81.128  mm,
	W =  -179.992 deg,	P =     1.087 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.112  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[79]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1741.445  mm,	Y =   -13.349  mm,	Z =  -652.611  mm,
	W =   179.807 deg,	P =     -.004 deg,	R =    39.104 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[80]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1596.928  mm,	Y =    62.208  mm,	Z =  -653.121  mm,
	W =   179.866 deg,	P =      .139 deg,	R =    86.426 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[81]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1850.944  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    50.728 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.942  mm,	Y =   720.295  mm,	Z =   -80.539  mm,
	W =  -179.222 deg,	P =     -.938 deg,	R =    50.904 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.375  mm,	Y =   713.122  mm,	Z =    13.843  mm,
	W =  -179.223 deg,	P =     -.940 deg,	R =    50.905 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.487  mm,	Y =   230.623  mm,	Z =   826.780  mm,
	W =  -176.808 deg,	P =   -31.757 deg,	R =     8.523 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1196.452  mm,	Y =   102.591  mm,	Z =   721.258  mm,
	W =   178.594 deg,	P =   -21.870 deg,	R =     8.997 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1582.023  mm,	Y =     3.249  mm,	Z =  -710.435  mm,
	W =   179.888 deg,	P =      .157 deg,	R =    95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1583.357  mm,	Y =     5.362  mm,	Z =  -777.381  mm,
	W =   179.889 deg,	P =      .157 deg,	R =    95.035 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1581.347  mm,	Y =     2.322  mm,	Z =  -721.650  mm,
	W =   179.888 deg,	P =      .157 deg,	R =    95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.226  mm,	Y =   -58.653  mm,	Z =  -721.459  mm,
	W =   179.888 deg,	P =      .157 deg,	R =    95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1601.428  mm,	Y =   -52.858  mm,	Z =  -776.780  mm,
	W =   179.889 deg,	P =      .157 deg,	R =    95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1594.313  mm,	Y =   -57.687  mm,	Z =  -671.100  mm,
	W =   179.888 deg,	P =      .157 deg,	R =    95.036 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[98]{
   GP1:
	UF : 0, UT : 1,	
	J1=     0.000 deg,	J2=   -45.000 deg,	J3=    30.000 deg,
	J4=     0.000 deg,	J5=  -110.000 deg,	J6=     0.000 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,	
	J1=     5.522 deg,	J2=   -47.248 deg,	J3=    32.487 deg,
	J4=      .112 deg,	J5=  -100.574 deg,	J6=     3.245 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
/END
