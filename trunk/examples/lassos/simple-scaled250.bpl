//#rIgnore
// Auto-generated by simple-scaled.py
// A scaled version of Bangalore.bpl with n different ranking functions
// size = 250

procedure main() returns (x0: int, x1: int, x2: int, x3: int, x4: int, x5: int, x6: int, x7: int, x8: int, x9: int, x10: int, x11: int, x12: int, x13: int, x14: int, x15: int, x16: int, x17: int, x18: int, x19: int, x20: int, x21: int, x22: int, x23: int, x24: int, x25: int, x26: int, x27: int, x28: int, x29: int, x30: int, x31: int, x32: int, x33: int, x34: int, x35: int, x36: int, x37: int, x38: int, x39: int, x40: int, x41: int, x42: int, x43: int, x44: int, x45: int, x46: int, x47: int, x48: int, x49: int, x50: int, x51: int, x52: int, x53: int, x54: int, x55: int, x56: int, x57: int, x58: int, x59: int, x60: int, x61: int, x62: int, x63: int, x64: int, x65: int, x66: int, x67: int, x68: int, x69: int, x70: int, x71: int, x72: int, x73: int, x74: int, x75: int, x76: int, x77: int, x78: int, x79: int, x80: int, x81: int, x82: int, x83: int, x84: int, x85: int, x86: int, x87: int, x88: int, x89: int, x90: int, x91: int, x92: int, x93: int, x94: int, x95: int, x96: int, x97: int, x98: int, x99: int, x100: int, x101: int, x102: int, x103: int, x104: int, x105: int, x106: int, x107: int, x108: int, x109: int, x110: int, x111: int, x112: int, x113: int, x114: int, x115: int, x116: int, x117: int, x118: int, x119: int, x120: int, x121: int, x122: int, x123: int, x124: int, x125: int, x126: int, x127: int, x128: int, x129: int, x130: int, x131: int, x132: int, x133: int, x134: int, x135: int, x136: int, x137: int, x138: int, x139: int, x140: int, x141: int, x142: int, x143: int, x144: int, x145: int, x146: int, x147: int, x148: int, x149: int, x150: int, x151: int, x152: int, x153: int, x154: int, x155: int, x156: int, x157: int, x158: int, x159: int, x160: int, x161: int, x162: int, x163: int, x164: int, x165: int, x166: int, x167: int, x168: int, x169: int, x170: int, x171: int, x172: int, x173: int, x174: int, x175: int, x176: int, x177: int, x178: int, x179: int, x180: int, x181: int, x182: int, x183: int, x184: int, x185: int, x186: int, x187: int, x188: int, x189: int, x190: int, x191: int, x192: int, x193: int, x194: int, x195: int, x196: int, x197: int, x198: int, x199: int, x200: int, x201: int, x202: int, x203: int, x204: int, x205: int, x206: int, x207: int, x208: int, x209: int, x210: int, x211: int, x212: int, x213: int, x214: int, x215: int, x216: int, x217: int, x218: int, x219: int, x220: int, x221: int, x222: int, x223: int, x224: int, x225: int, x226: int, x227: int, x228: int, x229: int, x230: int, x231: int, x232: int, x233: int, x234: int, x235: int, x236: int, x237: int, x238: int, x239: int, x240: int, x241: int, x242: int, x243: int, x244: int, x245: int, x246: int, x247: int, x248: int, x249: int)
{
  var y0, y1, y2, y3, y4, y5, y6, y7, y8, y9, y10, y11, y12, y13, y14, y15, y16, y17, y18, y19, y20, y21, y22, y23, y24, y25, y26, y27, y28, y29, y30, y31, y32, y33, y34, y35, y36, y37, y38, y39, y40, y41, y42, y43, y44, y45, y46, y47, y48, y49, y50, y51, y52, y53, y54, y55, y56, y57, y58, y59, y60, y61, y62, y63, y64, y65, y66, y67, y68, y69, y70, y71, y72, y73, y74, y75, y76, y77, y78, y79, y80, y81, y82, y83, y84, y85, y86, y87, y88, y89, y90, y91, y92, y93, y94, y95, y96, y97, y98, y99, y100, y101, y102, y103, y104, y105, y106, y107, y108, y109, y110, y111, y112, y113, y114, y115, y116, y117, y118, y119, y120, y121, y122, y123, y124, y125, y126, y127, y128, y129, y130, y131, y132, y133, y134, y135, y136, y137, y138, y139, y140, y141, y142, y143, y144, y145, y146, y147, y148, y149, y150, y151, y152, y153, y154, y155, y156, y157, y158, y159, y160, y161, y162, y163, y164, y165, y166, y167, y168, y169, y170, y171, y172, y173, y174, y175, y176, y177, y178, y179, y180, y181, y182, y183, y184, y185, y186, y187, y188, y189, y190, y191, y192, y193, y194, y195, y196, y197, y198, y199, y200, y201, y202, y203, y204, y205, y206, y207, y208, y209, y210, y211, y212, y213, y214, y215, y216, y217, y218, y219, y220, y221, y222, y223, y224, y225, y226, y227, y228, y229, y230, y231, y232, y233, y234, y235, y236, y237, y238, y239, y240, y241, y242, y243, y244, y245, y246, y247, y248, y249: int;
  y0 := 1;
  y1 := 1;
  y2 := 1;
  y3 := 1;
  y4 := 1;
  y5 := 1;
  y6 := 1;
  y7 := 1;
  y8 := 1;
  y9 := 1;
  y10 := 1;
  y11 := 1;
  y12 := 1;
  y13 := 1;
  y14 := 1;
  y15 := 1;
  y16 := 1;
  y17 := 1;
  y18 := 1;
  y19 := 1;
  y20 := 1;
  y21 := 1;
  y22 := 1;
  y23 := 1;
  y24 := 1;
  y25 := 1;
  y26 := 1;
  y27 := 1;
  y28 := 1;
  y29 := 1;
  y30 := 1;
  y31 := 1;
  y32 := 1;
  y33 := 1;
  y34 := 1;
  y35 := 1;
  y36 := 1;
  y37 := 1;
  y38 := 1;
  y39 := 1;
  y40 := 1;
  y41 := 1;
  y42 := 1;
  y43 := 1;
  y44 := 1;
  y45 := 1;
  y46 := 1;
  y47 := 1;
  y48 := 1;
  y49 := 1;
  y50 := 1;
  y51 := 1;
  y52 := 1;
  y53 := 1;
  y54 := 1;
  y55 := 1;
  y56 := 1;
  y57 := 1;
  y58 := 1;
  y59 := 1;
  y60 := 1;
  y61 := 1;
  y62 := 1;
  y63 := 1;
  y64 := 1;
  y65 := 1;
  y66 := 1;
  y67 := 1;
  y68 := 1;
  y69 := 1;
  y70 := 1;
  y71 := 1;
  y72 := 1;
  y73 := 1;
  y74 := 1;
  y75 := 1;
  y76 := 1;
  y77 := 1;
  y78 := 1;
  y79 := 1;
  y80 := 1;
  y81 := 1;
  y82 := 1;
  y83 := 1;
  y84 := 1;
  y85 := 1;
  y86 := 1;
  y87 := 1;
  y88 := 1;
  y89 := 1;
  y90 := 1;
  y91 := 1;
  y92 := 1;
  y93 := 1;
  y94 := 1;
  y95 := 1;
  y96 := 1;
  y97 := 1;
  y98 := 1;
  y99 := 1;
  y100 := 1;
  y101 := 1;
  y102 := 1;
  y103 := 1;
  y104 := 1;
  y105 := 1;
  y106 := 1;
  y107 := 1;
  y108 := 1;
  y109 := 1;
  y110 := 1;
  y111 := 1;
  y112 := 1;
  y113 := 1;
  y114 := 1;
  y115 := 1;
  y116 := 1;
  y117 := 1;
  y118 := 1;
  y119 := 1;
  y120 := 1;
  y121 := 1;
  y122 := 1;
  y123 := 1;
  y124 := 1;
  y125 := 1;
  y126 := 1;
  y127 := 1;
  y128 := 1;
  y129 := 1;
  y130 := 1;
  y131 := 1;
  y132 := 1;
  y133 := 1;
  y134 := 1;
  y135 := 1;
  y136 := 1;
  y137 := 1;
  y138 := 1;
  y139 := 1;
  y140 := 1;
  y141 := 1;
  y142 := 1;
  y143 := 1;
  y144 := 1;
  y145 := 1;
  y146 := 1;
  y147 := 1;
  y148 := 1;
  y149 := 1;
  y150 := 1;
  y151 := 1;
  y152 := 1;
  y153 := 1;
  y154 := 1;
  y155 := 1;
  y156 := 1;
  y157 := 1;
  y158 := 1;
  y159 := 1;
  y160 := 1;
  y161 := 1;
  y162 := 1;
  y163 := 1;
  y164 := 1;
  y165 := 1;
  y166 := 1;
  y167 := 1;
  y168 := 1;
  y169 := 1;
  y170 := 1;
  y171 := 1;
  y172 := 1;
  y173 := 1;
  y174 := 1;
  y175 := 1;
  y176 := 1;
  y177 := 1;
  y178 := 1;
  y179 := 1;
  y180 := 1;
  y181 := 1;
  y182 := 1;
  y183 := 1;
  y184 := 1;
  y185 := 1;
  y186 := 1;
  y187 := 1;
  y188 := 1;
  y189 := 1;
  y190 := 1;
  y191 := 1;
  y192 := 1;
  y193 := 1;
  y194 := 1;
  y195 := 1;
  y196 := 1;
  y197 := 1;
  y198 := 1;
  y199 := 1;
  y200 := 1;
  y201 := 1;
  y202 := 1;
  y203 := 1;
  y204 := 1;
  y205 := 1;
  y206 := 1;
  y207 := 1;
  y208 := 1;
  y209 := 1;
  y210 := 1;
  y211 := 1;
  y212 := 1;
  y213 := 1;
  y214 := 1;
  y215 := 1;
  y216 := 1;
  y217 := 1;
  y218 := 1;
  y219 := 1;
  y220 := 1;
  y221 := 1;
  y222 := 1;
  y223 := 1;
  y224 := 1;
  y225 := 1;
  y226 := 1;
  y227 := 1;
  y228 := 1;
  y229 := 1;
  y230 := 1;
  y231 := 1;
  y232 := 1;
  y233 := 1;
  y234 := 1;
  y235 := 1;
  y236 := 1;
  y237 := 1;
  y238 := 1;
  y239 := 1;
  y240 := 1;
  y241 := 1;
  y242 := 1;
  y243 := 1;
  y244 := 1;
  y245 := 1;
  y246 := 1;
  y247 := 1;
  y248 := 1;
  y249 := 1;
  while (x0 >= 0 && x1 >= 0 && x2 >= 0 && x3 >= 0 && x4 >= 0 && x5 >= 0 && x6 >= 0 && x7 >= 0 && x8 >= 0 && x9 >= 0 && x10 >= 0 && x11 >= 0 && x12 >= 0 && x13 >= 0 && x14 >= 0 && x15 >= 0 && x16 >= 0 && x17 >= 0 && x18 >= 0 && x19 >= 0 && x20 >= 0 && x21 >= 0 && x22 >= 0 && x23 >= 0 && x24 >= 0 && x25 >= 0 && x26 >= 0 && x27 >= 0 && x28 >= 0 && x29 >= 0 && x30 >= 0 && x31 >= 0 && x32 >= 0 && x33 >= 0 && x34 >= 0 && x35 >= 0 && x36 >= 0 && x37 >= 0 && x38 >= 0 && x39 >= 0 && x40 >= 0 && x41 >= 0 && x42 >= 0 && x43 >= 0 && x44 >= 0 && x45 >= 0 && x46 >= 0 && x47 >= 0 && x48 >= 0 && x49 >= 0 && x50 >= 0 && x51 >= 0 && x52 >= 0 && x53 >= 0 && x54 >= 0 && x55 >= 0 && x56 >= 0 && x57 >= 0 && x58 >= 0 && x59 >= 0 && x60 >= 0 && x61 >= 0 && x62 >= 0 && x63 >= 0 && x64 >= 0 && x65 >= 0 && x66 >= 0 && x67 >= 0 && x68 >= 0 && x69 >= 0 && x70 >= 0 && x71 >= 0 && x72 >= 0 && x73 >= 0 && x74 >= 0 && x75 >= 0 && x76 >= 0 && x77 >= 0 && x78 >= 0 && x79 >= 0 && x80 >= 0 && x81 >= 0 && x82 >= 0 && x83 >= 0 && x84 >= 0 && x85 >= 0 && x86 >= 0 && x87 >= 0 && x88 >= 0 && x89 >= 0 && x90 >= 0 && x91 >= 0 && x92 >= 0 && x93 >= 0 && x94 >= 0 && x95 >= 0 && x96 >= 0 && x97 >= 0 && x98 >= 0 && x99 >= 0 && x100 >= 0 && x101 >= 0 && x102 >= 0 && x103 >= 0 && x104 >= 0 && x105 >= 0 && x106 >= 0 && x107 >= 0 && x108 >= 0 && x109 >= 0 && x110 >= 0 && x111 >= 0 && x112 >= 0 && x113 >= 0 && x114 >= 0 && x115 >= 0 && x116 >= 0 && x117 >= 0 && x118 >= 0 && x119 >= 0 && x120 >= 0 && x121 >= 0 && x122 >= 0 && x123 >= 0 && x124 >= 0 && x125 >= 0 && x126 >= 0 && x127 >= 0 && x128 >= 0 && x129 >= 0 && x130 >= 0 && x131 >= 0 && x132 >= 0 && x133 >= 0 && x134 >= 0 && x135 >= 0 && x136 >= 0 && x137 >= 0 && x138 >= 0 && x139 >= 0 && x140 >= 0 && x141 >= 0 && x142 >= 0 && x143 >= 0 && x144 >= 0 && x145 >= 0 && x146 >= 0 && x147 >= 0 && x148 >= 0 && x149 >= 0 && x150 >= 0 && x151 >= 0 && x152 >= 0 && x153 >= 0 && x154 >= 0 && x155 >= 0 && x156 >= 0 && x157 >= 0 && x158 >= 0 && x159 >= 0 && x160 >= 0 && x161 >= 0 && x162 >= 0 && x163 >= 0 && x164 >= 0 && x165 >= 0 && x166 >= 0 && x167 >= 0 && x168 >= 0 && x169 >= 0 && x170 >= 0 && x171 >= 0 && x172 >= 0 && x173 >= 0 && x174 >= 0 && x175 >= 0 && x176 >= 0 && x177 >= 0 && x178 >= 0 && x179 >= 0 && x180 >= 0 && x181 >= 0 && x182 >= 0 && x183 >= 0 && x184 >= 0 && x185 >= 0 && x186 >= 0 && x187 >= 0 && x188 >= 0 && x189 >= 0 && x190 >= 0 && x191 >= 0 && x192 >= 0 && x193 >= 0 && x194 >= 0 && x195 >= 0 && x196 >= 0 && x197 >= 0 && x198 >= 0 && x199 >= 0 && x200 >= 0 && x201 >= 0 && x202 >= 0 && x203 >= 0 && x204 >= 0 && x205 >= 0 && x206 >= 0 && x207 >= 0 && x208 >= 0 && x209 >= 0 && x210 >= 0 && x211 >= 0 && x212 >= 0 && x213 >= 0 && x214 >= 0 && x215 >= 0 && x216 >= 0 && x217 >= 0 && x218 >= 0 && x219 >= 0 && x220 >= 0 && x221 >= 0 && x222 >= 0 && x223 >= 0 && x224 >= 0 && x225 >= 0 && x226 >= 0 && x227 >= 0 && x228 >= 0 && x229 >= 0 && x230 >= 0 && x231 >= 0 && x232 >= 0 && x233 >= 0 && x234 >= 0 && x235 >= 0 && x236 >= 0 && x237 >= 0 && x238 >= 0 && x239 >= 0 && x240 >= 0 && x241 >= 0 && x242 >= 0 && x243 >= 0 && x244 >= 0 && x245 >= 0 && x246 >= 0 && x247 >= 0 && x248 >= 0 && x249 >= 0) {
    x0 := x0 - y0;
    x1 := x1 - y1;
    x2 := x2 - y2;
    x3 := x3 - y3;
    x4 := x4 - y4;
    x5 := x5 - y5;
    x6 := x6 - y6;
    x7 := x7 - y7;
    x8 := x8 - y8;
    x9 := x9 - y9;
    x10 := x10 - y10;
    x11 := x11 - y11;
    x12 := x12 - y12;
    x13 := x13 - y13;
    x14 := x14 - y14;
    x15 := x15 - y15;
    x16 := x16 - y16;
    x17 := x17 - y17;
    x18 := x18 - y18;
    x19 := x19 - y19;
    x20 := x20 - y20;
    x21 := x21 - y21;
    x22 := x22 - y22;
    x23 := x23 - y23;
    x24 := x24 - y24;
    x25 := x25 - y25;
    x26 := x26 - y26;
    x27 := x27 - y27;
    x28 := x28 - y28;
    x29 := x29 - y29;
    x30 := x30 - y30;
    x31 := x31 - y31;
    x32 := x32 - y32;
    x33 := x33 - y33;
    x34 := x34 - y34;
    x35 := x35 - y35;
    x36 := x36 - y36;
    x37 := x37 - y37;
    x38 := x38 - y38;
    x39 := x39 - y39;
    x40 := x40 - y40;
    x41 := x41 - y41;
    x42 := x42 - y42;
    x43 := x43 - y43;
    x44 := x44 - y44;
    x45 := x45 - y45;
    x46 := x46 - y46;
    x47 := x47 - y47;
    x48 := x48 - y48;
    x49 := x49 - y49;
    x50 := x50 - y50;
    x51 := x51 - y51;
    x52 := x52 - y52;
    x53 := x53 - y53;
    x54 := x54 - y54;
    x55 := x55 - y55;
    x56 := x56 - y56;
    x57 := x57 - y57;
    x58 := x58 - y58;
    x59 := x59 - y59;
    x60 := x60 - y60;
    x61 := x61 - y61;
    x62 := x62 - y62;
    x63 := x63 - y63;
    x64 := x64 - y64;
    x65 := x65 - y65;
    x66 := x66 - y66;
    x67 := x67 - y67;
    x68 := x68 - y68;
    x69 := x69 - y69;
    x70 := x70 - y70;
    x71 := x71 - y71;
    x72 := x72 - y72;
    x73 := x73 - y73;
    x74 := x74 - y74;
    x75 := x75 - y75;
    x76 := x76 - y76;
    x77 := x77 - y77;
    x78 := x78 - y78;
    x79 := x79 - y79;
    x80 := x80 - y80;
    x81 := x81 - y81;
    x82 := x82 - y82;
    x83 := x83 - y83;
    x84 := x84 - y84;
    x85 := x85 - y85;
    x86 := x86 - y86;
    x87 := x87 - y87;
    x88 := x88 - y88;
    x89 := x89 - y89;
    x90 := x90 - y90;
    x91 := x91 - y91;
    x92 := x92 - y92;
    x93 := x93 - y93;
    x94 := x94 - y94;
    x95 := x95 - y95;
    x96 := x96 - y96;
    x97 := x97 - y97;
    x98 := x98 - y98;
    x99 := x99 - y99;
    x100 := x100 - y100;
    x101 := x101 - y101;
    x102 := x102 - y102;
    x103 := x103 - y103;
    x104 := x104 - y104;
    x105 := x105 - y105;
    x106 := x106 - y106;
    x107 := x107 - y107;
    x108 := x108 - y108;
    x109 := x109 - y109;
    x110 := x110 - y110;
    x111 := x111 - y111;
    x112 := x112 - y112;
    x113 := x113 - y113;
    x114 := x114 - y114;
    x115 := x115 - y115;
    x116 := x116 - y116;
    x117 := x117 - y117;
    x118 := x118 - y118;
    x119 := x119 - y119;
    x120 := x120 - y120;
    x121 := x121 - y121;
    x122 := x122 - y122;
    x123 := x123 - y123;
    x124 := x124 - y124;
    x125 := x125 - y125;
    x126 := x126 - y126;
    x127 := x127 - y127;
    x128 := x128 - y128;
    x129 := x129 - y129;
    x130 := x130 - y130;
    x131 := x131 - y131;
    x132 := x132 - y132;
    x133 := x133 - y133;
    x134 := x134 - y134;
    x135 := x135 - y135;
    x136 := x136 - y136;
    x137 := x137 - y137;
    x138 := x138 - y138;
    x139 := x139 - y139;
    x140 := x140 - y140;
    x141 := x141 - y141;
    x142 := x142 - y142;
    x143 := x143 - y143;
    x144 := x144 - y144;
    x145 := x145 - y145;
    x146 := x146 - y146;
    x147 := x147 - y147;
    x148 := x148 - y148;
    x149 := x149 - y149;
    x150 := x150 - y150;
    x151 := x151 - y151;
    x152 := x152 - y152;
    x153 := x153 - y153;
    x154 := x154 - y154;
    x155 := x155 - y155;
    x156 := x156 - y156;
    x157 := x157 - y157;
    x158 := x158 - y158;
    x159 := x159 - y159;
    x160 := x160 - y160;
    x161 := x161 - y161;
    x162 := x162 - y162;
    x163 := x163 - y163;
    x164 := x164 - y164;
    x165 := x165 - y165;
    x166 := x166 - y166;
    x167 := x167 - y167;
    x168 := x168 - y168;
    x169 := x169 - y169;
    x170 := x170 - y170;
    x171 := x171 - y171;
    x172 := x172 - y172;
    x173 := x173 - y173;
    x174 := x174 - y174;
    x175 := x175 - y175;
    x176 := x176 - y176;
    x177 := x177 - y177;
    x178 := x178 - y178;
    x179 := x179 - y179;
    x180 := x180 - y180;
    x181 := x181 - y181;
    x182 := x182 - y182;
    x183 := x183 - y183;
    x184 := x184 - y184;
    x185 := x185 - y185;
    x186 := x186 - y186;
    x187 := x187 - y187;
    x188 := x188 - y188;
    x189 := x189 - y189;
    x190 := x190 - y190;
    x191 := x191 - y191;
    x192 := x192 - y192;
    x193 := x193 - y193;
    x194 := x194 - y194;
    x195 := x195 - y195;
    x196 := x196 - y196;
    x197 := x197 - y197;
    x198 := x198 - y198;
    x199 := x199 - y199;
    x200 := x200 - y200;
    x201 := x201 - y201;
    x202 := x202 - y202;
    x203 := x203 - y203;
    x204 := x204 - y204;
    x205 := x205 - y205;
    x206 := x206 - y206;
    x207 := x207 - y207;
    x208 := x208 - y208;
    x209 := x209 - y209;
    x210 := x210 - y210;
    x211 := x211 - y211;
    x212 := x212 - y212;
    x213 := x213 - y213;
    x214 := x214 - y214;
    x215 := x215 - y215;
    x216 := x216 - y216;
    x217 := x217 - y217;
    x218 := x218 - y218;
    x219 := x219 - y219;
    x220 := x220 - y220;
    x221 := x221 - y221;
    x222 := x222 - y222;
    x223 := x223 - y223;
    x224 := x224 - y224;
    x225 := x225 - y225;
    x226 := x226 - y226;
    x227 := x227 - y227;
    x228 := x228 - y228;
    x229 := x229 - y229;
    x230 := x230 - y230;
    x231 := x231 - y231;
    x232 := x232 - y232;
    x233 := x233 - y233;
    x234 := x234 - y234;
    x235 := x235 - y235;
    x236 := x236 - y236;
    x237 := x237 - y237;
    x238 := x238 - y238;
    x239 := x239 - y239;
    x240 := x240 - y240;
    x241 := x241 - y241;
    x242 := x242 - y242;
    x243 := x243 - y243;
    x244 := x244 - y244;
    x245 := x245 - y245;
    x246 := x246 - y246;
    x247 := x247 - y247;
    x248 := x248 - y248;
    x249 := x249 - y249;
  }
}
