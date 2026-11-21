/PROG  ED44_54_OP200_STUD
/ATTR
OWNER		= MNEDITOR;
COMMENT		= "ED44_54_OP200";
PROG_SIZE	= 11987;
CREATE		= DATE 26-04-13  TIME 22:03:02;
MODIFIED	= DATE 26-09-05  TIME 00:46:34;
FILE_NAME	= ;
VERSION		= 0;
LINE_COUNT	= 188;
MEMORY_SIZE	= 12295;
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
   5:  !R18_R20_PICK_DROP 干涉区 ;
   6:  CALL ENTER_ZONE(9) ;
   7:  CALL ENTER_ZONE(8) ;
   8:J PR[1:HOME] 100% CNT100    ;
   9:J P[103] 100% CNT100    ;
  10:J P[104] 100% CNT100    ;
  11:L P[105] 2000mm/sec FINE    ;
  12:  CALL STUD1(1) ;
  13:J P[106] 100% CNT100    ;
  14:J P[107] 100% CNT100    ;
  15:L P[108] 2000mm/sec FINE    ;
  16:  CALL STUD1(1) ;
  17:J P[109] 100% CNT100    ;
  18:J P[110] 100% CNT100    ;
  19:J P[111] 100% CNT100    ;
  20:L P[112] 2000mm/sec FINE    ;
  21:  CALL STUD1(1) ;
  22:J P[113] 100% CNT100    ;
  23:J P[114] 100% CNT100    ;
  24:J P[115] 100% CNT100    ;
  25:J P[116] 100% CNT100    ;
  26:L P[117] 2000mm/sec FINE    ;
  27:  CALL STUD1(1) ;
  28:J P[118] 100% CNT100    ;
  29:J P[119] 100% CNT100    ;
  30:L P[120] 2000mm/sec FINE    ;
  31:  CALL STUD1(1) ;
  32:J P[121] 100% CNT100    ;
  33:J P[122] 100% CNT100    ;
  34:J P[123] 100% CNT100    ;
  35:L P[124] 2000mm/sec FINE    ;
  36:  CALL STUD1(1) ;
  37:J P[125] 100% CNT100    ;
  38:J P[126] 100% CNT100    ;
  39:J P[127] 100% CNT100    ;
  40:J P[128] 100% CNT100    ;
  41:L P[129] 2000mm/sec FINE    ;
  42:  CALL STUD1(1) ;
  43:J P[130] 100% CNT100    ;
  44:J P[131] 100% CNT100    ;
  45:L P[132] 2000mm/sec FINE    ;
  46:  CALL STUD1(1) ;
  47:J P[133] 100% CNT100    ;
  48:J P[134] 100% CNT100    ;
  49:J P[135] 100% FINE    ;
  50:  //J PR[1:HOME] 100% CNT100    ;
  51:  //J P[1] 100% CNT100    ;
  52:  //J P[2] 100% CNT100    ;
  53:  //L P[3] 2000mm/sec FINE    ;
  54:  //L P[100] 2000mm/sec FINE    ;
  55:  //    ;
  56:  //CALL STUD1(1) ;
  57:  //J P[4] 100% CNT100    ;
  58:  //J P[5] 100% CNT100    ;
  59:  //L P[6] 2000mm/sec FINE    ;
  60:  //CALL STUD1(1) ;
  61:  //J P[7] 100% CNT100    ;
  62:  //J P[8] 100% CNT100    ;
  63:  //J P[9] 100% CNT100    ;
  64:  //L P[10] 2000mm/sec FINE    ;
  65:  //CALL STUD1(1) ;
  66:  //J P[11] 100% CNT100    ;
  67:  //J P[12] 100% CNT100    ;
  68:  //J P[13] 100% CNT100    ;
  69:  //J P[14] 100% CNT100    ;
  70:  //L P[15] 2000mm/sec FINE    ;
  71:  //CALL STUD1(1) ;
  72:  //J P[16] 100% CNT100    ;
  73:  //J P[17] 100% CNT100    ;
  74:  //L P[18] 2000mm/sec FINE    ;
  75:  //CALL STUD1(1) ;
  76:  //J P[19] 100% CNT100    ;
  77:  //J P[20] 100% CNT100    ;
  78:  //J P[21] 100% CNT100    ;
  79:  //L P[22] 2000mm/sec FINE    ;
  80:  //CALL STUD1(1) ;
  81:  //J P[23] 100% CNT100    ;
  82:  //J P[24] 100% CNT100    ;
  83:  //J P[25] 100% CNT100    ;
  84:  //J P[26] 100% CNT100    ;
  85:  //L P[27] 2000mm/sec FINE    ;
  86:  //CALL STUD1(1) ;
  87:  //J P[28] 100% CNT100    ;
  88:  //J P[29] 100% CNT100    ;
  89:  //L P[30] 2000mm/sec FINE    ;
  90:  //CALL STUD1(1) ;
  91:  //J P[31] 100% CNT100    ;
  92:  //J P[32] 100% CNT100    ;
  93:  //J P[33] 100% FINE    ;
  94:   ;
  95:  CALL P0S_200    ;
  96:   ;
  97:   ;
  98:J P[34] 100% CNT100    ;
  99:J P[35] 100% CNT100    ;
 100:J P[36] 100% CNT80    ;
 101:J P[37] 100% CNT100    ;
 102:J P[38] 100% CNT100    ;
 103:L P[39] 2000mm/sec FINE    ;
 104:  CALL STUD1(1) ;
 105:J P[40] 100% CNT100    ;
 106:J P[41] 100% CNT100    ;
 107:L P[42] 2000mm/sec FINE    ;
 108:  CALL STUD1(1) ;
 109:J P[43] 100% CNT100    ;
 110:J P[44] 100% CNT100    ;
 111:J P[45] 100% CNT100    ;
 112:L P[46] 2000mm/sec FINE    ;
 113:  CALL STUD1(1) ;
 114:J P[47] 100% CNT100    ;
 115:J P[101] 100% CNT100    ;
 116:J P[48] 100% CNT100    ;
 117:L P[49] 2000mm/sec FINE    ;
 118:  CALL STUD1(1) ;
 119:J P[50] 100% CNT100    ;
 120:J P[51] 100% CNT100    ;
 121:J P[52] 100% CNT100    ;
 122:J P[53] 100% CNT100    ;
 123:J P[102] 100% CNT100    ;
 124:J P[54] 100% CNT100    ;
 125:J P[55] 100% CNT100    ;
 126:L P[56] 2000mm/sec FINE    ;
 127:  CALL STUD1(1) ;
 128:J P[57] 100% CNT100    ;
 129:J P[58] 100% CNT100    ;
 130:L P[59] 2000mm/sec FINE    ;
 131:  CALL STUD1(1) ;
 132:J P[60] 100% CNT100    ;
 133:J P[61] 100% CNT100    ;
 134:L P[62] 2000mm/sec FINE    ;
 135:  CALL STUD1(1) ;
 136:J P[64] 100% CNT100    ;
 137:J P[63] 100% CNT100    ;
 138:L P[65] 2000mm/sec FINE    ;
 139:  CALL STUD1(1) ;
 140:J P[66] 100% CNT100    ;
 141:J P[67] 100% CNT100    ;
 142:L P[68] 2000mm/sec FINE    ;
 143:  CALL STUD1(1) ;
 144:J P[69] 100% CNT100    ;
 145:J P[70] 100% CNT100    ;
 146:L P[71] 2000mm/sec FINE    ;
 147:  CALL STUD1(1) ;
 148:J P[72] 100% CNT100    ;
 149:J P[73] 100% CNT100    ;
 150:L P[74] 2000mm/sec FINE    ;
 151:  CALL STUD1(1) ;
 152:J P[75] 100% CNT100    ;
 153:J P[76] 100% CNT100    ;
 154:L P[77] 2000mm/sec FINE    ;
 155:  CALL STUD1(1) ;
 156:J P[78] 100% CNT100    ;
 157:J P[79] 100% CNT100    ;
 158:J P[80] 100% CNT70    ;
 159:J P[81] 100% CNT100    ;
 160:J P[82] 100% CNT100    ;
 161:L P[83] 2000mm/sec FINE    ;
 162:  CALL STUD1(1) ;
 163:J P[84] 100% CNT100    ;
 164:J P[85] 100% CNT100    ;
 165:L P[86] 2000mm/sec FINE    ;
 166:  CALL STUD1(1) ;
 167:J P[87] 100% CNT80    ;
 168:J P[88] 100% CNT80    ;
 169:L P[89] 2000mm/sec FINE    ;
 170:  CALL STUD1(1) ;
 171:J P[90] 100% CNT100    ;
 172:J P[91] 100% CNT100    ;
 173:L P[92] 2000mm/sec FINE    ;
 174:  CALL STUD1(1) ;
 175:J P[93] 100% CNT100    ;
 176:J P[94] 100% CNT100    ;
 177:L P[95] 2000mm/sec FINE    ;
 178:  CALL STUD1(1) ;
 179:J P[96] 100% CNT100    ;
 180:J P[97] 100% CNT100    ;
 181:J P[99] 100% CNT100    ;
 182:J P[98] 100% CNT100    ;
 183:J PR[1:HOME] 100% FINE    ;
 184:  CALL FINISHSEG(2) ;
 185:  !R18_R20_PICK_DROP 干涉区 ;
 186:  CALL EXIT_ZONE(9) ;
 187:  CALL EXIT_ZONE(8) ;
 188:   ;
/POS
P[1]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1916.582  mm,	Y =  -743.529  mm,	Z =   383.998  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[2]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.301  mm,	Y =  -763.228  mm,	Z =    -7.232  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[3]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1857.957  mm,	Y =  -770.780  mm,	Z =   -88.297  mm,
	W =   179.081 deg,	P =     -.535 deg,	R =   -59.402 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[4]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.301  mm,	Y =  -763.228  mm,	Z =    -7.232  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[5]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1976.037  mm,	Y =  -771.511  mm,	Z =    -9.752  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[6]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.316  mm,	Y =  -771.670  mm,	Z =   -88.567  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[7]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.637  mm,	Y =  -772.823  mm,	Z =   107.049  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[8]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.169  mm,	Y =  -202.835  mm,	Z =   104.805  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[9]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.168  mm,	Y =  -202.835  mm,	Z =   -56.862  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[10]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.482  mm,	Y =  -202.371  mm,	Z =  -143.606  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[11]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.168  mm,	Y =  -202.835  mm,	Z =   -56.862  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[12]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.167  mm,	Y =  -202.835  mm,	Z =   117.438  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[13]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =   117.438  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[14]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =    27.838  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[15]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2611.449  mm,	Y =   -76.035  mm,	Z =   -40.262  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[16]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =    27.838  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[17]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.217  mm,	Y =   -69.835  mm,	Z =    27.839  mm,
	W =  -179.815 deg,	P =     -.348 deg,	R =    -7.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[18]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2707.486  mm,	Y =   -76.285  mm,	Z =   -32.424  mm,
	W =  -179.735 deg,	P =     -.817 deg,	R =    -9.712 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[19]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.217  mm,	Y =   -69.835  mm,	Z =    27.839  mm,
	W =  -179.815 deg,	P =     -.348 deg,	R =    -7.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[20]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2292.462  mm,	Y =   119.164  mm,	Z =    27.828  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[21]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =   -53.922  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[22]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.607  mm,	Y =   163.856  mm,	Z =  -143.765  mm,
	W =  -179.993 deg,	P =     1.085 deg,	R =    -7.068 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[23]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =   -53.922  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[24]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =    69.278  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[25]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.311  mm,	Y =   702.664  mm,	Z =    69.278  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[26]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.112  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[27]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1971.992  mm,	Y =   718.764  mm,	Z =   -87.726  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[28]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.112  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[29]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1850.944  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    50.728 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[30]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.358  mm,	Y =   715.285  mm,	Z =   -87.801  mm,
	W =  -179.223 deg,	P =     -.940 deg,	R =    50.905 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[31]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.375  mm,	Y =   713.122  mm,	Z =    13.843  mm,
	W =  -179.223 deg,	P =     -.940 deg,	R =    50.905 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[32]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.487  mm,	Y =   230.623  mm,	Z =   826.780  mm,
	W =  -176.808 deg,	P =   -31.757 deg,	R =     8.523 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[33]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1196.452  mm,	Y =   102.591  mm,	Z =   721.258  mm,
	W =   178.594 deg,	P =   -21.870 deg,	R =     8.997 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[34]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2134.242  mm,	Y =  -579.313  mm,	Z =   388.732  mm,
	W =   179.881 deg,	P =     -.154 deg,	R =   -11.624 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[35]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.174  mm,	Y =  -579.088  mm,	Z =   -75.993  mm,
	W =   179.839 deg,	P =     -.109 deg,	R =     6.501 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[36]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2394.839  mm,	Y =  -579.822  mm,	Z =  -379.322  mm,
	W =   179.839 deg,	P =     -.108 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[37]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2527.720  mm,	Y =  -597.857  mm,	Z =  -580.582  mm,
	W =   179.839 deg,	P =     -.108 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[38]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.128  mm,	Y =  -593.166  mm,	Z =  -679.612  mm,
	W =   179.839 deg,	P =     -.108 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[39]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2532.586  mm,	Y =  -586.097  mm,	Z =  -728.203  mm,
	W =   179.844 deg,	P =     -.097 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[40]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2520.128  mm,	Y =  -593.166  mm,	Z =  -679.612  mm,
	W =   179.839 deg,	P =     -.108 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[41]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.635  mm,	Y =  -595.792  mm,	Z =  -679.950  mm,
	W =   179.839 deg,	P =     -.108 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[42]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2373.215  mm,	Y =  -586.994  mm,	Z =  -730.944  mm,
	W =   179.844 deg,	P =     -.098 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[43]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2364.635  mm,	Y =  -595.792  mm,	Z =  -679.950  mm,
	W =   179.839 deg,	P =     -.108 deg,	R =     6.502 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[44]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2237.965  mm,	Y =  -584.064  mm,	Z =  -680.271  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[45]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2144.887  mm,	Y =  -596.833  mm,	Z =  -680.445  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[46]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2153.473  mm,	Y =  -589.484  mm,	Z =  -740.519  mm,
	W =   179.866 deg,	P =     -.135 deg,	R =    -5.295 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[47]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2144.887  mm,	Y =  -596.833  mm,	Z =  -680.445  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[48]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1981.314  mm,	Y =  -586.705  mm,	Z =  -680.832  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[49]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1983.061  mm,	Y =  -590.047  mm,	Z =  -737.532  mm,
	W =   179.867 deg,	P =     -.130 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[50]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1981.314  mm,	Y =  -586.705  mm,	Z =  -680.832  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[51]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1979.675  mm,	Y =  -584.794  mm,	Z =    64.497  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[52]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.285  mm,	Y =  -355.331  mm,	Z =    64.546  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[53]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2464.198  mm,	Y =   -26.569  mm,	Z =    64.130  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
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
	X =  2633.502  mm,	Y =   -50.334  mm,	Z =  -715.642  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[56]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2638.588  mm,	Y =   -42.317  mm,	Z =  -761.138  mm,
	W =   179.842 deg,	P =     -.100 deg,	R =     5.838 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[57]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2633.502  mm,	Y =   -50.334  mm,	Z =  -715.642  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[58]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2620.782  mm,	Y =    11.091  mm,	Z =  -715.829  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[59]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2628.474  mm,	Y =    21.614  mm,	Z =  -745.079  mm,
	W =   178.380 deg,	P =     -.306 deg,	R =     5.534 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[60]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2620.782  mm,	Y =    11.091  mm,	Z =  -715.829  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
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
	X =  2378.631  mm,	Y =    19.425  mm,	Z =  -748.054  mm,
	W =   179.841 deg,	P =     -.108 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[63]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.539  mm,	Y =   -60.368  mm,	Z =  -716.205  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[64]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.713  mm,	Y =    10.618  mm,	Z =  -716.389  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[65]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2378.701  mm,	Y =   -44.034  mm,	Z =  -748.231  mm,
	W =   179.841 deg,	P =     -.109 deg,	R =     5.841 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[66]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2366.539  mm,	Y =   -60.368  mm,	Z =  -716.205  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[67]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2142.237  mm,	Y =   -57.579  mm,	Z =  -716.705  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[68]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2154.707  mm,	Y =   -46.601  mm,	Z =  -756.818  mm,
	W =   179.841 deg,	P =     -.107 deg,	R =     5.839 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[69]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2142.237  mm,	Y =   -57.579  mm,	Z =  -716.705  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[70]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2045.921  mm,	Y =    11.378  mm,	Z =  -717.093  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[71]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2056.584  mm,	Y =    15.808  mm,	Z =  -754.621  mm,
	W =  -179.027 deg,	P =     -.489 deg,	R =     5.830 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[72]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2045.921  mm,	Y =    11.378  mm,	Z =  -717.093  mm,
	W =   179.841 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[73]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.497  mm,	Y =   -49.931  mm,	Z =  -723.019  mm,
	W =   179.841 deg,	P =     -.108 deg,	R =     5.841 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[74]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.498  mm,	Y =   -48.277  mm,	Z =  -758.735  mm,
	W =   179.841 deg,	P =     -.108 deg,	R =     5.841 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[75]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1845.380  mm,	Y =   -56.580  mm,	Z =  -717.373  mm,
	W =   179.841 deg,	P =     -.109 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[76]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1814.008  mm,	Y =     8.364  mm,	Z =  -717.608  mm,
	W =   179.841 deg,	P =     -.109 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[77]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1818.435  mm,	Y =    14.588  mm,	Z =  -759.057  mm,
	W =   179.841 deg,	P =     -.108 deg,	R =     5.841 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[78]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1814.008  mm,	Y =     8.364  mm,	Z =  -717.608  mm,
	W =   179.841 deg,	P =     -.109 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
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
	X =  1567.950  mm,	Y =   113.762  mm,	Z =  -653.317  mm,
	W =   179.882 deg,	P =      .153 deg,	R =    92.960 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[82]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1562.570  mm,	Y =   218.897  mm,	Z =  -682.299  mm,
	W =   179.882 deg,	P =      .153 deg,	R =    92.960 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[83]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1576.523  mm,	Y =   222.232  mm,	Z =  -743.749  mm,
	W =   179.887 deg,	P =      .152 deg,	R =    92.957 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[84]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1562.570  mm,	Y =   218.897  mm,	Z =  -682.299  mm,
	W =   179.882 deg,	P =      .153 deg,	R =    92.960 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[85]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1572.054  mm,	Y =   116.901  mm,	Z =  -682.015  mm,
	W =   179.883 deg,	P =      .153 deg,	R =    92.960 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[86]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1582.897  mm,	Y =   125.817  mm,	Z =  -743.573  mm,
	W =   179.884 deg,	P =      .153 deg,	R =    92.961 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[87]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1572.054  mm,	Y =   116.901  mm,	Z =  -682.014  mm,
	W =   179.975 deg,	P =      .191 deg,	R =   122.881 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[88]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1602.670  mm,	Y =    -2.677  mm,	Z =  -681.640  mm,
	W =  -179.881 deg,	P =      .152 deg,	R =   168.314 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[89]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1613.790  mm,	Y =     3.502  mm,	Z =  -775.996  mm,
	W =  -179.881 deg,	P =      .150 deg,	R =   168.314 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[90]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1602.670  mm,	Y =    -2.677  mm,	Z =  -681.640  mm,
	W =  -179.881 deg,	P =      .152 deg,	R =   168.314 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[91]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1598.743  mm,	Y =   -54.627  mm,	Z =  -681.516  mm,
	W =  -179.829 deg,	P =      .089 deg,	R =  -167.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[92]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1604.443  mm,	Y =   -56.202  mm,	Z =  -775.780  mm,
	W =   177.509 deg,	P =    -1.267 deg,	R =  -167.188 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[93]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1598.743  mm,	Y =   -54.627  mm,	Z =  -681.516  mm,
	W =  -179.829 deg,	P =      .089 deg,	R =  -167.247 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[94]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1572.880  mm,	Y =  -178.758  mm,	Z =  -681.255  mm,
	W =  -179.807 deg,	P =     -.003 deg,	R =  -138.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[95]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1574.086  mm,	Y =  -177.600  mm,	Z =  -746.026  mm,
	W =  -179.811 deg,	P =     1.119 deg,	R =  -138.619 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[96]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1572.880  mm,	Y =  -178.758  mm,	Z =  -681.255  mm,
	W =  -179.807 deg,	P =     -.003 deg,	R =  -138.622 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[97]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 1',
	X =  1571.389  mm,	Y =  -177.012  mm,	Z =    -2.456  mm,
	W =  -179.807 deg,	P =     -.003 deg,	R =  -138.620 deg
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
P[99]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1457.546  mm,	Y =    27.163  mm,	Z =   197.649  mm,
	W =   178.388 deg,	P =     1.532 deg,	R =   125.510 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[100]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1859.429  mm,	Y =  -763.642  mm,	Z =   -79.740  mm,
	W =   179.081 deg,	P =     -.535 deg,	R =   -59.403 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[101]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2088.260  mm,	Y =  -575.549  mm,	Z =  -678.794  mm,
	W =   179.865 deg,	P =     -.139 deg,	R =    -5.293 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[102]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2598.121  mm,	Y =   -17.940  mm,	Z =  -332.308  mm,
	W =   179.837 deg,	P =     -.110 deg,	R =     5.840 deg
   GP2:
	UF : 0, UT : 1,	
	J1=    -3.491  mm
};
P[103]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1916.582  mm,	Y =  -743.529  mm,	Z =   383.998  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[104]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.301  mm,	Y =  -763.228  mm,	Z =    -7.232  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[105]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1862.847  mm,	Y =  -762.615  mm,	Z =   -81.955  mm,
	W =   179.080 deg,	P =     -.534 deg,	R =   -59.405 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[106]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1864.301  mm,	Y =  -763.228  mm,	Z =    -7.232  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[107]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1976.037  mm,	Y =  -771.511  mm,	Z =    -9.752  mm,
	W =   179.082 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[108]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1985.710  mm,	Y =  -762.473  mm,	Z =   -83.089  mm,
	W =   177.721 deg,	P =      .971 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[109]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.637  mm,	Y =  -772.823  mm,	Z =   107.049  mm,
	W =   179.081 deg,	P =      .934 deg,	R =   -59.425 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[110]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.169  mm,	Y =  -202.835  mm,	Z =   104.805  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[111]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.168  mm,	Y =  -202.835  mm,	Z =   -56.862  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[112]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2286.838  mm,	Y =  -202.133  mm,	Z =  -137.844  mm,
	W =   179.662 deg,	P =     1.267 deg,	R =   -17.929 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[113]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.168  mm,	Y =  -202.835  mm,	Z =   -56.862  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[114]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2265.167  mm,	Y =  -202.835  mm,	Z =   117.438  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[115]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =   117.438  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[116]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =    27.838  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[117]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2609.828  mm,	Y =   -73.590  mm,	Z =   -32.700  mm,
	W =  -178.216 deg,	P =     1.316 deg,	R =   -17.788 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[118]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2600.467  mm,	Y =   -69.835  mm,	Z =    27.838  mm,
	W =   179.662 deg,	P =     1.266 deg,	R =   -17.930 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[119]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.217  mm,	Y =   -69.835  mm,	Z =    27.839  mm,
	W =  -179.815 deg,	P =     -.348 deg,	R =    -7.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[120]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2707.172  mm,	Y =   -69.855  mm,	Z =   -26.430  mm,
	W =   178.692 deg,	P =    -4.535 deg,	R =    -9.696 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[121]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2687.217  mm,	Y =   -69.835  mm,	Z =    27.839  mm,
	W =  -179.815 deg,	P =     -.348 deg,	R =    -7.064 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[122]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2292.462  mm,	Y =   119.164  mm,	Z =    27.828  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[123]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =   -53.922  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[124]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2282.272  mm,	Y =   160.713  mm,	Z =  -138.144  mm,
	W =  -179.253 deg,	P =    -1.038 deg,	R =    -7.069 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[125]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =   -53.922  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[126]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  2269.212  mm,	Y =   156.664  mm,	Z =    69.278  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    -7.065 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[127]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1984.311  mm,	Y =   702.664  mm,	Z =    69.278  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[128]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.112  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[129]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1973.334  mm,	Y =   722.561  mm,	Z =   -81.103  mm,
	W =  -179.992 deg,	P =     1.086 deg,	R =    34.872 deg
   GP2:
	UF : 0, UT : 1,	
	J1=      .000  mm
};
P[130]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1980.112  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    34.871 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[131]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1850.944  mm,	Y =   715.964  mm,	Z =    -7.021  mm,
	W =  -179.993 deg,	P =     1.084 deg,	R =    50.728 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[132]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1851.596  mm,	Y =   720.010  mm,	Z =   -79.651  mm,
	W =  -179.222 deg,	P =     -.937 deg,	R =    50.904 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[133]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1849.375  mm,	Y =   713.122  mm,	Z =    13.843  mm,
	W =  -179.223 deg,	P =     -.940 deg,	R =    50.905 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[134]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1597.487  mm,	Y =   230.623  mm,	Z =   826.780  mm,
	W =  -176.808 deg,	P =   -31.757 deg,	R =     8.523 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
P[135]{
   GP1:
	UF : 0, UT : 1,		CONFIG : 'N U T, 0, 0, 0',
	X =  1196.452  mm,	Y =   102.591  mm,	Z =   721.258  mm,
	W =   178.594 deg,	P =   -21.870 deg,	R =     8.997 deg
   GP2:
	UF : 0, UT : 1,	
	J1=     -.000  mm
};
/END
