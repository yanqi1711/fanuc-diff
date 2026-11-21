# 最新备份（2026-11-21）焊点位置重复分析

## 结论

- 共分析 **10 台机器人、507 个含 SPOT 指令的程序、1302 条焊点指令**。
- **单个程序内部：0 组重复坐标**。没有发现同一个程序里两个不同 P 点落在同一位置，也没有发现同一个 P 被多条 SPOT 指令重复使用。
- **同一个 STYLE 循环内部：没有重复**。每个 STYLE 只调用一个焊接子程序。
- **不同机器人之间：0 组重复坐标**。没有两台机器人焊接完全相同的世界坐标。
- **同一台机器人、不同焊接程序之间：310 组重复坐标，涉及 893 条焊点指令**。

第 4 点需要结合工艺判断：当前多个 `ED*_WELD` 是同一工位的不同焊枪 / 零件方案，由不同 STYLE 程序选择执行。它们共享点位表通常是正常的方案复用，不代表同一次循环里重复焊接。如果这些程序本应针对不同零件且点位不应相同，则需要重点核对 r4、r5、r6、r7、r12。

## 按机器人统计

| 机器人 | 焊点指令 | 焊接程序 | 跨程序重复坐标组 | 涉及焊点 |
| --- | ---: | ---: | ---: | ---: |
| R1 | 76 | 4 | 6 | 12 |
| R2 | 78 | 4 | 11 | 22 |
| R4 | 157 | 6 | 48 | 137 |
| R5 | 158 | 6 | 44 | 109 |
| R6 | 151 | 3 | 50 | 130 |
| R7 | 228 | 5 | 52 | 210 |
| R8 | 42 | 2 | 0 | 0 |
| R9 | 67 | 3 | 11 | 22 |
| R10 | 176 | 4 | 37 | 108 |
| R12 | 169 | 4 | 51 | 143 |

## 同一机器人内重复最多的坐标（Top 20）

### 5× `152, 82.1, 37.5`

- 机器人：**r7**
- 程序：`ed44_op180_weld`、`ed46_op180_weld`、`ed54_op180_weld`、`ed55_op180_weld`、`ed56_op180_weld`
- STYLE：`style61`、`style62`、`style63`、`style64`、`style65`
- `ed44_op180_weld` L20 · P[8] · 002
- `ed46_op180_weld` L20 · P[8] · 002
- `ed54_op180_weld` L20 · P[8] · 002
- `ed55_op180_weld` L20 · P[8] · 002
- `ed56_op180_weld` L23 · P[8] · 002

### 5× `103.1, -27.5, 48.5`

- 机器人：**r7**
- 程序：`ed44_op180_weld`、`ed46_op180_weld`、`ed54_op180_weld`、`ed55_op180_weld`、`ed56_op180_weld`
- STYLE：`style61`、`style62`、`style63`、`style64`、`style65`
- `ed44_op180_weld` L24 · P[11] · 006
- `ed46_op180_weld` L24 · P[11] · 006
- `ed54_op180_weld` L24 · P[11] · 006
- `ed55_op180_weld` L24 · P[11] · 006
- `ed56_op180_weld` L27 · P[11] · 006

### 4× `1779, 352.7, -614.7`

- 机器人：**r4**
- 程序：`ed44_op130_weld`、`ed46_op130_weld`、`ed54_op130_weld`、`ed55_56_op130_weld`
- STYLE：`style41`、`style42`、`style43`、`style44`、`style45`
- `ed44_op130_weld` L16 · P[30] · R12_013
- `ed46_op130_weld` L16 · P[30] · R12_013
- `ed54_op130_weld` L16 · P[30] · R12_013
- `ed55_56_op130_weld` L17 · P[30] · R12_013

### 4× `1818.3, 351.7, -548`

- 机器人：**r4**
- 程序：`ed44_op130_weld`、`ed46_op130_weld`、`ed54_op130_weld`、`ed55_56_op130_weld`
- STYLE：`style41`、`style42`、`style43`、`style44`、`style45`
- `ed44_op130_weld` L19 · P[31] · R12_014
- `ed46_op130_weld` L22 · P[31] · R12_014
- `ed54_op130_weld` L19 · P[31] · R12_014
- `ed55_56_op130_weld` L23 · P[31] · R12_014

### 4× `2111.6, -919.9, 43.5`

- 机器人：**r5**
- 程序：`ed44_op130_weld`、`ed46_op130_weld`、`ed54_op130_weld`、`ed55_56_op130_weld`
- STYLE：`style41`、`style42`、`style43`、`style44`、`style45`
- `ed44_op130_weld` L22 · P[8] · R13_003
- `ed46_op130_weld` L20 · P[8] · R13_003
- `ed54_op130_weld` L21 · P[8] · R13_003
- `ed55_56_op130_weld` L21 · P[8] · R13_003

### 4× `1747, -345.5, -643.4`

- 机器人：**r5**
- 程序：`ed44_op130_weld`、`ed46_op130_weld`、`ed54_op130_weld`、`ed55_56_op130_weld`
- STYLE：`style41`、`style42`、`style43`、`style44`、`style45`
- `ed44_op130_weld` L155 · P[93] · R13_029
- `ed46_op130_weld` L137 · P[93] · R13_029
- `ed54_op130_weld` L161 · P[93] · R13_029
- `ed55_56_op130_weld` L161 · P[93] · R13_029

### 4× `1099.4, -917.7, 72.2`

- 机器人：**r10**
- 程序：`ed44_weld_op210`、`ed46_weld_op210`、`ed54_weld_op210`、`ed55_56_weld_op210`
- STYLE：`style21`、`style22`、`style23`、`style24`、`style25`
- `ed44_weld_op210` L22 · P[8] · 032
- `ed46_weld_op210` L20 · P[8] · 032
- `ed54_weld_op210` L20 · P[8] · 032
- `ed55_56_weld_op210` L20 · P[8] · 032

### 4× `430.5, 56.5, 50.7`

- 机器人：**r10**
- 程序：`ed44_weld_op210`、`ed46_weld_op210`、`ed54_weld_op210`、`ed55_56_weld_op210`
- STYLE：`style21`、`style22`、`style23`、`style24`、`style25`
- `ed44_weld_op210` L96 · P[72] · 007
- `ed46_weld_op210` L91 · P[72] · 007
- `ed54_weld_op210` L100 · P[72] · 007
- `ed55_56_weld_op210` L81 · P[72] · 007

### 4× `422.1, 662.2, -39.5`

- 机器人：**r12**
- 程序：`ed44_weld_op230`、`ed46_weld_op230`、`ed54_weld_op230`、`ed55_56_weld_op230`
- STYLE：`style31`、`style32`、`style33`、`style34`、`style35`
- `ed44_weld_op230` L31 · P[19] · 047
- `ed46_weld_op230` L30 · P[19] · 047
- `ed54_weld_op230` L31 · P[19] · 047
- `ed55_56_weld_op230` L31 · P[19] · 047

### 4× `337, 353.3, -55.1`

- 机器人：**r12**
- 程序：`ed44_weld_op230`、`ed46_weld_op230`、`ed54_weld_op230`、`ed55_56_weld_op230`
- STYLE：`style31`、`style32`、`style33`、`style34`、`style35`
- `ed44_weld_op230` L39 · P[24] · 045
- `ed46_weld_op230` L40 · P[24] · 045
- `ed54_weld_op230` L39 · P[24] · 045
- `ed55_56_weld_op230` L39 · P[24] · 045

### 3× `1110, -287.9, 28.5`

- 机器人：**r6**
- 程序：`ed44_op160_weld`、`ed46_55_56_op160_weld`、`ed54_op160_weld`
- STYLE：`style51`、`style52`、`style53`、`style54`、`style55`
- `ed44_op160_weld` L27 · P[16] · 002
- `ed46_55_56_op160_weld` L35 · P[16] · 002
- `ed54_op160_weld` L28 · P[16] · 002

### 3× `183.7, -1005, 99.4`

- 机器人：**r6**
- 程序：`ed44_op160_weld`、`ed46_55_56_op160_weld`、`ed54_op160_weld`
- STYLE：`style51`、`style52`、`style53`、`style54`、`style55`
- `ed44_op160_weld` L46 · P[30] · 005
- `ed46_55_56_op160_weld` L54 · P[30] · 005
- `ed54_op160_weld` L51 · P[30] · 005

### 2× `1830.8, 927.7, -87.9`

- 机器人：**r1**
- 程序：`ed44_46_op120_weld`、`ed54_op120_weld`
- STYLE：`style21`、`style22`、`style23`、`style24`、`style25`
- `ed44_46_op120_weld` L48 · P[87] · R9_007
- `ed54_op120_weld` L55 · P[87] · R9_009

### 2× `1754.3, 1207.9, -58.2`

- 机器人：**r1**
- 程序：`ed44_op110_weld`、`ed46_55_56_op110_weld`
- STYLE：`style11`、`style12`、`style13`、`style14`、`style15`
- `ed44_op110_weld` L25 · P[157] · 003
- `ed46_55_56_op110_weld` L26 · P[157] · 003

### 2× `1823.7, -774.9, -84.6`

- 机器人：**r2**
- 程序：`ed44_46_op120_weld`、`ed54_op120_weld`
- STYLE：`style21`、`style22`、`style23`、`style24`、`style25`
- `ed44_46_op120_weld` L75 · P[30] · R10_014
- `ed54_op120_weld` L85 · P[30] · R10_014

### 2× `1810.2, -1111.8, -40.5`

- 机器人：**r2**
- 程序：`ed44_op110_weld`、`ed46_55_56_op110_weld`
- STYLE：`style11`、`style12`、`style13`、`style14`、`style15`
- `ed44_op110_weld` L143 · P[97] · 018
- `ed46_55_56_op110_weld` L63 · P[97] · 018

### 2× `1693.1, -796, -147.4`

- 机器人：**r9**
- 程序：`ed44_54_op200_weld`、`ed46_55_56_op200_weld`
- STYLE：`style21`、`style22`、`style23`、`style24`、`style25`
- `ed44_54_op200_weld` L17 · P[9] · 25
- `ed46_55_56_op200_weld` L17 · P[9] · 25

### 2× `1853.2, -729.5, 140.5`

- 机器人：**r9**
- 程序：`ed44_54_op200_weld`、`ed46_55_56_op200_weld`
- STYLE：`style21`、`style22`、`style23`、`style24`、`style25`
- `ed44_54_op200_weld` L129 · P[101] · 4
- `ed46_55_56_op200_weld` L130 · P[101] · 4

## 共享坐标最多的程序对（Top 15）

| 机器人 | 程序 A | 程序 B | 相同坐标数 |
| --- | --- | --- | ---: |
| r6 | ed44_op160_weld | ed54_op160_weld | 47 |
| r7 | ed55_op180_weld | ed56_op180_weld | 42 |
| r7 | ed44_op180_weld | ed54_op180_weld | 40 |
| r7 | ed46_op180_weld | ed55_op180_weld | 38 |
| r7 | ed46_op180_weld | ed56_op180_weld | 37 |
| r7 | ed54_op180_weld | ed55_op180_weld | 36 |
| r7 | ed54_op180_weld | ed56_op180_weld | 35 |
| r7 | ed46_op180_weld | ed54_op180_weld | 34 |
| r6 | ed46_55_56_op160_weld | ed54_op160_weld | 33 |
| r7 | ed44_op180_weld | ed55_op180_weld | 33 |
| r7 | ed44_op180_weld | ed56_op180_weld | 32 |
| r7 | ed44_op180_weld | ed46_op180_weld | 31 |
| r6 | ed44_op160_weld | ed46_55_56_op160_weld | 30 |
| r12 | ed46_weld_op230 | ed55_56_weld_op230 | 30 |
| r10 | ed54_weld_op210 | ed55_56_weld_op210 | 28 |

## 判定方法

- 焊接点取 `SPOT[` 指令前面那条运动指令的位置（`P[n]`）。
- 坐标取 `/POS` 中 GP1 的 `X/Y/Z`，按 **0.1 mm** 精度归组。
- 只统计最新备份（2026-11-21），失败转译的程序不纳入。
- 完整的 310 组、893 条焊点明细见 [weld-duplicates.csv](./weld-duplicates.csv)。

> 说明：跨程序重复是“点位定义复用”，不等同于一次执行中的重复焊接。建议按 STYLE 实际调用的程序集合再结合工艺确认。
