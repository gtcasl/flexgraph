module ch_queue(
  input wire clk,
  input wire reset,
  input wire io_enq_valid,
  input wire[511:0] io_enq_data,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire io_deq_valid,
  output wire[511:0] io_deq_data,
  output wire[1:0] io_size
);
  wire[1:0] add44;
  wire and38;
  wire[1:0] add49;
  wire[1:0] sel46;
  wire[1:0] sel51;
  wire and40;
  wire proxy37; // v136 - /home/blaise/dev/cash/src/htl/queue.h(28)
  reg[1:0] reg26;
  reg[1:0] reg32;
  wire eq61;
  wire ne63;
  wire proxy35; // v135 - /home/blaise/dev/cash/src/htl/queue.h(27)
  reg[511:0] mem53[0:1];
  wire[1:0] sub67;
  wire ne57;
  wire or65;

  assign add44 = reg26 + 2'h1;
  assign and38 = io_deq_ready & ne57;
  assign add49 = reg32 + 2'h1;
  assign sel46 = and38 ? add44 : reg26;
  assign sel51 = and40 ? add49 : reg32;
  assign and40 = io_enq_valid & or65;
  assign proxy37 = reg32[0];
  always @ (posedge clk) begin
    reg26 <= sel46;
  end
  always @ (posedge clk) begin
    reg32 <= sel51;
  end
  assign eq61 = reg32[1] == reg26[1];
  assign ne63 = proxy37 != proxy35;
  assign proxy35 = reg26[0];
  always @(posedge clk) begin
    if (and40) begin
      mem53[proxy37] = io_enq_data;
    end
  end
  assign sub67 = reg32 - reg26;
  assign ne57 = reg32 != reg26;
  assign or65 = ne63 | eq61;

  assign io_enq_ready = or65;
  assign io_deq_valid = ne57;
  assign io_deq_data = mem53[proxy35];
  assign io_size = sub67;

endmodule


module ch_queue_0(
  input wire clk,
  input wire reset,
  input wire io_enq_valid,
  input wire[511:0] io_enq_data,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire io_deq_valid,
  output wire[511:0] io_deq_data,
  output wire[5:0] io_size
);
  wire[5:0] add44;
  wire and38;
  wire[5:0] add49;
  wire[5:0] sel46;
  wire[5:0] sel51;
  wire and40;
  wire[4:0] proxy37; // v218 - /home/blaise/dev/cash/src/htl/queue.h(28)
  reg[5:0] reg26;
  reg[5:0] reg32;
  wire eq61;
  wire ne63;
  wire[4:0] proxy35; // v217 - /home/blaise/dev/cash/src/htl/queue.h(27)
  reg[511:0] mem53[0:31];
  wire[5:0] sub67;
  wire ne57;
  wire or65;

  assign add44 = reg26 + 6'h1;
  assign and38 = io_deq_ready & ne57;
  assign add49 = reg32 + 6'h1;
  assign sel46 = and38 ? add44 : reg26;
  assign sel51 = and40 ? add49 : reg32;
  assign and40 = io_enq_valid & or65;
  assign proxy37 = reg32[4:0];
  always @ (posedge clk) begin
    reg26 <= sel46;
  end
  always @ (posedge clk) begin
    reg32 <= sel51;
  end
  assign eq61 = reg32[5] == reg26[5];
  assign ne63 = proxy37 != proxy35;
  assign proxy35 = reg26[4:0];
  always @(posedge clk) begin
    if (and40) begin
      mem53[proxy37] = io_enq_data;
    end
  end
  assign sub67 = reg32 - reg26;
  assign ne57 = reg32 != reg26;
  assign or65 = ne63 | eq61;

  assign io_enq_ready = or65;
  assign io_deq_valid = ne57;
  assign io_deq_data = mem53[proxy35];
  assign io_size = sub67;

endmodule




module spmv_dcsc_walk(
  input wire clk,
  input wire reset,
  input wire io_ctrl_start_valid,
  input wire[63:0] io_ctrl_start_data,
  input wire[63:0] io_ctrl_timer,
  input wire io_lsu_rd_req_ready,
  input wire io_lsu_rd_rsp_valid,
  input wire[514:0] io_lsu_rd_rsp_data,
  input wire io_pe_ready,
  output wire io_ctrl_start_ready,
  output wire[351:0] io_ctrl_stats,
  output wire io_lsu_rd_req_valid,
  output wire[22:0] io_lsu_rd_req_data,
  output wire io_pe_valid,
  output wire[84:0] io_pe_data
);
  wire[351:0] lit347 = 352'h0;
  wire[19:0] add710;
  wire[19:0] and713;
  wire[19:0] sll872;
  wire[19:0] sll716;
  wire[19:0] add876;
  wire[511:0] srl718;
  wire eq1225;
  wire and1226;
  wire[19:0] and689;
  wire[19:0] sra820;
  wire eq1100;
  wire[19:0] sra879;
  wire[19:0] sel1219; // dcsc_walk.cpp(241)
  wire[511:0] sel1224; // dcsc_walk.cpp(193)
  wire and1101;
  wire eq1151;
  wire and1087;
  wire eq1088;
  wire eq400;
  reg[19:0] sel1220; // dcsc_walk.cpp(139)
  wire[19:0] sll692;
  wire[511:0] bindout174;
  wire[19:0] and823;
  wire[511:0] sel1099; // dcsc_walk.cpp(309)
  wire[19:0] sel1095; // dcsc_walk.cpp(139)
  wire and1152;
  wire and1089;
  wire sel1068; // dcsc_walk.cpp(442)
  wire eq1071;
  reg[511:0] reg333;
  wire[63:0] sel1150; // dcsc_walk.cpp(142)
  wire[19:0] and935;
  wire[511:0] sel1086; // dcsc_walk.cpp(411)
  wire and402;
  wire eq388;
  wire sel1069; // dcsc_walk.cpp(440)
  wire and1072;
  reg[19:0] reg90;
  wire[511:0] srl694;
  wire[19:0] sll826;
  wire[511:0] bindout302;
  reg[511:0] reg336;
  wire eq376;
  reg[19:0] reg108;
  wire eq394;
  wire[511:0] sel1221; // dcsc_walk.cpp(193)
  wire sel1070; // dcsc_walk.cpp(436)
  wire sel1090; // dcsc_walk.cpp(411)
  wire sel1216; // dcsc_walk.cpp(193)
  wire[31:0] proxy9; // v66 - end(0)
  wire[511:0] srl1024;
  wire[19:0] add971;
  wire sel1161; // dcsc_walk.cpp(241)
  wire sel1160; // dcsc_walk.cpp(193)
  reg[63:0] reg345;
  wire[19:0] sll938;
  reg[511:0] reg339;
  wire[511:0] bindout270;
  wire and390;
  wire[511:0] bindout142;
  wire[2:0] proxy41; // v88 - type(0)
  wire[19:0] proxy627; // v554 - dcsc_walk.cpp(145)
  wire[19:0] sub752;
  wire[19:0] sub888;
  wire[19:0] and834;
  wire[511:0] srl828;
  wire[511:0] srl771;
  wire and378;
  wire sel1096; // dcsc_walk.cpp(309)
  wire eq406;
  wire[19:0] sub883;
  wire and396;
  reg sel1162; // dcsc_walk.cpp(139)
  wire eq382;
  wire bindin273;
  wire[511:0] bindin255;
  wire bindin252;
  wire bindin251;
  wire bindin250;
  reg[511:0] reg330;
  reg reg580;
  wire eq496;
  wire and498;
  wire eq471;
  reg reg583;
  wire eq521;
  wire eq546;
  wire eq446;
  reg reg571;
  wire eq419;
  wire[19:0] sub630;
  wire[19:0] sel1230; // dcsc_walk.cpp(436)
  wire[19:0] sel1229; // dcsc_walk.cpp(193)
  wire[63:0] sub1036;
  wire[511:0] srl940;
  wire[511:0] srl930;
  wire[511:0] srl683;
  wire[19:0] sel1232; // dcsc_walk.cpp(139)
  reg[19:0] sel1231; // dcsc_walk.cpp(139)
  wire[19:0] sel1094; // dcsc_walk.cpp(139)
  wire[31:0] sll837;
  wire[19:0] sel1107; // dcsc_walk.cpp(278)
  reg reg586;
  wire and408;
  reg reg574;
  wire and384;
  wire lt1042;
  wire bindout265;
  wire[19:0] and960;
  wire bindin209;
  wire[511:0] bindin191;
  wire bindin188;
  wire bindin187;
  wire bindin186;
  wire[511:0] srl1014;
  wire[31:0] proxy8; // v65 - start(0)
  wire eq504;
  wire eq509;
  wire and500;
  wire eq479;
  wire and475;
  wire eq529;
  wire eq534;
  wire and525;
  wire eq554;
  wire eq559;
  wire and550;
  wire eq454;
  wire eq459;
  wire and450;
  wire eq428;
  wire eq433;
  wire and423;
  wire[19:0] sel1163; // dcsc_walk.cpp(142)
  wire[19:0] sel1108; // dcsc_walk.cpp(139)
  wire[19:0] sll796;
  wire bindin145;
  wire[511:0] bindin127;
  wire bindin124;
  wire bindin123;
  wire bindin122;
  wire[5:0] sel1215; // dcsc_walk.cpp(139)
  wire bindin241;
  wire[511:0] bindin223;
  wire bindin220;
  wire bindin219;
  wire bindin218;
  wire[19:0] proxy625; // v553 - dcsc_walk.cpp(144)
  reg[19:0] reg93;
  reg[19:0] reg87;
  reg[19:0] reg111;
  wire[31:0] and839;
  wire[31:0] and783;
  wire[31:0] sel1067; // dcsc_walk.cpp(139)
  wire[31:0] sel1044;
  wire eq1047;
  wire[31:0] sel1082; // dcsc_walk.cpp(411)
  wire and1085;
  wire[19:0] sll963;
  wire[511:0] bindout238;
  wire[511:0] bindout206;
  wire[19:0] sel1158; // dcsc_walk.cpp(193)
  wire[19:0] sll758;
  wire[19:0] sel1156; // dcsc_walk.cpp(142)
  wire[7:0] sub517;
  wire and506;
  wire[7:0] add514;
  wire and511;
  wire[7:0] sub492;
  wire and481;
  wire[7:0] add489;
  wire and486;
  wire[7:0] sub542;
  wire and531;
  wire[7:0] add539;
  wire and536;
  wire[7:0] sub567;
  wire and556;
  wire[7:0] add564;
  wire and561;
  wire[7:0] sub467;
  wire and456;
  wire[7:0] add464;
  wire and461;
  wire[7:0] sub442;
  wire and430;
  wire[7:0] add439;
  wire and435;
  reg[19:0] reg81;
  wire eq979;
  reg[19:0] reg102;
  wire[19:0] sra799;
  wire bindout137;
  wire bindin305;
  wire[511:0] bindin287;
  wire bindin284;
  wire bindin283;
  wire bindin282;
  reg[5:0] reg114;
  wire[5:0] bindout246;
  wire bindin177;
  wire[511:0] bindin159;
  wire bindin156;
  wire bindin155;
  wire bindin154;
  wire[31:0] sel1083; // dcsc_walk.cpp(410)
  wire[19:0] sll866;
  reg[19:0] sel1159; // dcsc_walk.cpp(139)
  reg[19:0] sel1157; // dcsc_walk.cpp(139)
  wire ne1001;
  wire ne973;
  wire ne910;
  wire ne842;
  wire ne787;
  wire[31:0] add813;
  wire[31:0] add860;
  wire[31:0] add916;
  wire[31:0] add899;
  wire[31:0] add739;
  wire[31:0] add651;
  reg[31:0] reg342;
  wire gt1054;
  wire[31:0] sel1049;
  wire[511:0] srl965;
  wire[511:0] srl955;
  wire[19:0] add908;
  wire[19:0] sra761;
  reg[7:0] sel519; // dcsc_walk.cpp(74)
  reg[7:0] sel494; // dcsc_walk.cpp(74)
  reg[7:0] sel544; // dcsc_walk.cpp(74)
  reg[7:0] sel569; // dcsc_walk.cpp(74)
  reg[7:0] sel469; // dcsc_walk.cpp(74)
  reg[7:0] sel444; // dcsc_walk.cpp(74)
  wire ne995;
  wire[22:0] sel1142; // dcsc_walk.cpp(442)
  wire eq801;
  wire eq763;
  wire and673;
  wire[31:0] add1065;
  wire bindout297;
  wire eq921;
  wire bindout169;
  reg[31:0] reg117;
  wire and1154;
  wire[19:0] sra869;
  reg[19:0] reg84;
  reg[19:0] reg75;
  wire[22:0] sel1145; // dcsc_walk.cpp(471)
  wire[22:0] sel1143; // dcsc_walk.cpp(440)
  wire[22:0] sel1138; // dcsc_walk.cpp(390)
  wire and1137;
  wire and1135;
  wire[22:0] sel1132; // dcsc_walk.cpp(316)
  wire and1131;
  wire[22:0] sel1127; // dcsc_walk.cpp(261)
  wire and1125;
  wire[22:0] sel1122; // dcsc_walk.cpp(205)
  wire and1119;
  wire[31:0] sel1207; // dcsc_walk.cpp(295)
  wire[31:0] sel1203; // dcsc_walk.cpp(335)
  wire[31:0] sel1198; // dcsc_walk.cpp(388)
  wire[31:0] sel1194; // dcsc_walk.cpp(369)
  wire[31:0] sel1189; // dcsc_walk.cpp(227)
  wire[31:0] sel1183; // dcsc_walk.cpp(161)
  wire[31:0] add1058;
  wire eq1180;
  wire[31:0] sel1056;
  reg[31:0] reg1052;
  wire[31:0] add1061;
  wire[19:0] sel1153; // dcsc_walk.cpp(388)
  wire[19:0] sel1233; // dcsc_walk.cpp(258)
  reg[7:0] reg321;
  reg[7:0] reg318;
  reg[7:0] reg324;
  reg[7:0] reg327;
  reg[7:0] reg315;
  reg[7:0] reg312;
  wire[22:0] sel1148; // dcsc_walk.cpp(508)
  wire[22:0] sel1146; // dcsc_walk.cpp(469)
  wire[22:0] sel1144; // dcsc_walk.cpp(436)
  wire[22:0] sel1141; // dcsc_walk.cpp(410)
  wire[22:0] sel1139; // dcsc_walk.cpp(388)
  wire[22:0] sel1136; // dcsc_walk.cpp(369)
  wire[22:0] sel1134; // dcsc_walk.cpp(335)
  wire[22:0] sel1133; // dcsc_walk.cpp(309)
  wire[22:0] sel1130; // dcsc_walk.cpp(295)
  wire[22:0] sel1129; // dcsc_walk.cpp(278)
  wire[22:0] sel1128; // dcsc_walk.cpp(258)
  wire[22:0] sel1126; // dcsc_walk.cpp(241)
  wire[22:0] sel1124; // dcsc_walk.cpp(227)
  wire[22:0] sel1123; // dcsc_walk.cpp(193)
  wire[22:0] sel1120; // dcsc_walk.cpp(179)
  wire[22:0] sel1118; // dcsc_walk.cpp(161)
  wire[22:0] sel1117; // dcsc_walk.cpp(142)
  wire[31:0] sel1213; // dcsc_walk.cpp(508)
  wire[31:0] sel1209; // dcsc_walk.cpp(309)
  wire[31:0] sel1208; // dcsc_walk.cpp(292)
  wire[31:0] sel1204; // dcsc_walk.cpp(332)
  wire[31:0] sel1200; // dcsc_walk.cpp(410)
  wire[31:0] sel1199; // dcsc_walk.cpp(385)
  wire[31:0] sel1195; // dcsc_walk.cpp(366)
  wire[31:0] sel1191; // dcsc_walk.cpp(241)
  wire[31:0] sel1190; // dcsc_walk.cpp(224)
  wire[31:0] sel1184; // dcsc_walk.cpp(158)
  wire and1181;
  reg sel1081; // dcsc_walk.cpp(139)
  wire[31:0] sel1079; // dcsc_walk.cpp(139)
  wire[31:0] sel1077; // dcsc_walk.cpp(139)
  wire[19:0] sel1075; // dcsc_walk.cpp(139)
  reg[19:0] sel1155; // dcsc_walk.cpp(139)
  wire[19:0] sel1234; // dcsc_walk.cpp(139)
  wire[19:0] sll728;
  wire[19:0] sll657;
  reg[22:0] sel1149; // dcsc_walk.cpp(139)
  reg[31:0] sel1214; // dcsc_walk.cpp(139)
  reg[31:0] sel1210; // dcsc_walk.cpp(139)
  wire[31:0] sel1205; // dcsc_walk.cpp(139)
  reg[31:0] sel1201; // dcsc_walk.cpp(139)
  wire[31:0] sel1196; // dcsc_walk.cpp(139)
  reg[31:0] sel1192; // dcsc_walk.cpp(139)
  wire[31:0] sel1185; // dcsc_walk.cpp(139)
  wire[31:0] sel1179; // dcsc_walk.cpp(508)
  wire[31:0] sel1175; // dcsc_walk.cpp(508)
  wire[31:0] sel1171; // dcsc_walk.cpp(508)
  wire[31:0] sel1167; // dcsc_walk.cpp(508)
  wire[84:0] ch_pe_req_t595; // v528 - dcsc_walk.cpp(114)
  reg sel1073; // dcsc_walk.cpp(139)
  wire ne905;
  wire ne894;
  wire ne856;
  wire ne808;
  wire ne734;
  wire ne644;
  wire[351:0] ch_walker_stats_t612; // v541 - dcsc_walk.cpp(135)
  reg[19:0] reg105;
  reg[19:0] reg98;
  wire[19:0] sra731;
  wire[19:0] sra660;
  reg[22:0] reg413;
  reg[84:0] reg589;
  reg reg601;
  wire sel1115; // dcsc_walk.cpp(385)
  wire sel1114; // dcsc_walk.cpp(366)
  wire sel1113; // dcsc_walk.cpp(332)
  wire sel1112; // dcsc_walk.cpp(292)
  wire sel1111; // dcsc_walk.cpp(224)
  wire sel1109; // dcsc_walk.cpp(158)
  reg[351:0] reg361;
  wire eq416;
  reg[19:0] sel1228; // dcsc_walk.cpp(139)
  reg[2:0] sel1227; // dcsc_walk.cpp(139)
  reg sel1116; // dcsc_walk.cpp(139)
  wire[22:0] io_lsu_rd_req_data40; // v87 - dcsc_walk.cpp(35)

  assign add710 = reg75 + 20'h1;
  assign and713 = add710 & 20'hf;
  assign sll872 = reg90 << 32'h2;
  assign sll716 = and713 << 32'h5;
  assign add876 = sll872 + 20'h3f;
  assign srl718 = reg333 >> sll716;
  assign eq1225 = reg413 == 23'h10;
  assign and1226 = eq1225 & and673;
  assign and689 = reg75 & 20'hf;
  assign sra820 = reg84 >>> 32'h5;
  assign eq1100 = reg413 == 23'h800;
  assign sra879 = add876 >>> 32'h6;
  assign sel1219 = bindout169 ? bindout174[19:0] : reg90;
  assign sel1224 = and1226 ? bindout174 : reg333;
  assign and1101 = eq1100 & bindout297;
  assign eq1151 = reg413 == 23'h1;
  assign and1087 = eq921 & bindout265;
  assign eq1088 = reg413 == 23'h20000;
  assign eq400 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  always @(*) begin
    case (reg413)
      23'h000080: sel1220 = srl718[19:0];
      23'h000040: sel1220 = sel1219;
      default: sel1220 = reg90;
    endcase
  end
  assign sll692 = and689 << 32'h5;
  assign and823 = sra820 & 20'hf;
  assign sel1099 = and1101 ? bindout302 : reg336;
  assign sel1095 = (reg413 == 23'h2000) ? sra879 : reg108;
  assign and1152 = eq1151 & io_ctrl_start_valid;
  assign and1089 = eq1088 & and1087;
  assign sel1068 = eq979 ? 1'h1 : 1'h0;
  assign eq1071 = reg413 == 23'h40000;
  always @ (posedge clk) begin
    reg333 <= sel1224;
  end
  assign sel1150 = and1152 ? io_ctrl_timer : reg345;
  assign and935 = reg84 & 20'hf;
  assign sel1086 = and1089 ? bindout270 : reg339;
  assign and402 = io_lsu_rd_rsp_valid & eq400;
  assign eq388 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign sel1069 = ne973 ? sel1068 : 1'h1;
  assign and1072 = eq1071 & io_pe_ready;
  always @ (posedge clk) begin
    reg90 <= sel1220;
  end
  assign srl694 = bindout174 >> sll692;
  assign sll826 = and823 << 32'h5;
  always @ (posedge clk) begin
    reg336 <= sel1099;
  end
  assign eq376 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  always @ (posedge clk) begin
    reg108 <= sel1095;
  end
  assign eq394 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign sel1221 = and1226 ? bindout142 : reg330;
  assign sel1070 = and1072 ? sel1069 : 1'h0;
  assign sel1090 = and1089 ? 1'h1 : 1'h0;
  assign sel1216 = and1226 ? 1'h1 : 1'h0;
  assign proxy9 = io_ctrl_start_data[63:32];
  assign srl1024 = reg333 >> sll692;
  assign add971 = reg87 + 20'h1;
  assign sel1161 = bindout169 ? 1'h1 : 1'h0;
  assign sel1160 = and673 ? 1'h1 : 1'h0;
  always @ (posedge clk) begin
    reg345 <= sel1150;
  end
  assign sll938 = and935 << 32'h5;
  always @ (posedge clk) begin
    reg339 <= sel1086;
  end
  assign and390 = io_lsu_rd_rsp_valid & eq388;
  assign proxy41 = io_lsu_rd_req_data40[2:0];
  assign proxy627 = proxy9[19:0];
  assign sub752 = reg90 - 20'h1;
  assign sub888 = reg108 - 20'h1;
  assign and834 = reg84 & 20'h1f;
  assign srl828 = bindout302 >> sll826;
  assign srl771 = reg336 >> sll826;
  assign and378 = io_lsu_rd_rsp_valid & eq376;
  assign sel1096 = and1101 ? 1'h1 : 1'h0;
  assign eq406 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign sub883 = reg108 - reg105;
  assign and396 = io_lsu_rd_rsp_valid & eq394;
  always @(*) begin
    case (reg413)
      23'h000010: sel1162 = sel1160;
      23'h000040: sel1162 = sel1161;
      default: sel1162 = 1'h0;
    endcase
  end
  assign eq382 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign bindin273 = reg583;
  assign bindin255 = io_lsu_rd_rsp_data[514:3];
  assign bindin252 = and402;
  assign bindin251 = reset;
  assign bindin250 = clk;
  always @ (posedge clk) begin
    reg330 <= sel1221;
  end
  always @ (posedge clk) begin
    reg580 <= sel1070;
  end
  assign eq496 = proxy41 == 3'h4;
  assign and498 = sel1116 & io_lsu_rd_req_ready;
  assign eq471 = proxy41 == 3'h3;
  always @ (posedge clk) begin
    reg583 <= sel1090;
  end
  assign eq521 = proxy41 == 3'h5;
  assign eq546 = proxy41 == 3'h6;
  assign eq446 = proxy41 == 3'h2;
  always @ (posedge clk) begin
    reg571 <= sel1216;
  end
  assign eq419 = proxy41 == 3'h1;
  assign sub630 = proxy627 - 20'h1;
  assign sel1230 = io_pe_ready ? add971 : reg87;
  assign sel1229 = and673 ? srl694[19:0] : reg87;
  assign sub1036 = io_ctrl_timer - reg345;
  assign srl940 = reg339 >> sll938;
  assign srl930 = bindout270 >> sll938;
  ch_queue __module6__(.clk(bindin250), .reset(bindin251), .io_enq_valid(bindin252), .io_enq_data(bindin255), .io_deq_ready(bindin273), .io_deq_valid(bindout265), .io_deq_data(bindout270));
  assign srl683 = bindout142 >> sll692;
  assign sel1232 = (reg413 == 23'h100) ? sub752 : reg93;
  always @(*) begin
    case (reg413)
      23'h000010: sel1231 = sel1229;
      23'h040000: sel1231 = sel1230;
      23'h200000: sel1231 = srl1024[19:0];
      default: sel1231 = reg87;
    endcase
  end
  assign sel1094 = (reg413 == 23'h4000) ? sub888 : reg111;
  assign sll837 = 32'h1 << and834;
  assign sel1107 = eq801 ? reg102 : sra799;
  always @ (posedge clk) begin
    reg586 <= sel1096;
  end
  assign and408 = io_lsu_rd_rsp_valid & eq406;
  always @ (posedge clk) begin
    reg574 <= sel1162;
  end
  assign and384 = io_lsu_rd_rsp_valid & eq382;
  assign lt1042 = reg361[63:32] < reg342;
  assign and960 = reg87 & 20'hf;
  assign bindin209 = reg580;
  assign bindin191 = io_lsu_rd_rsp_data[514:3];
  assign bindin188 = and390;
  assign bindin187 = reset;
  assign bindin186 = clk;
  assign srl1014 = reg330 >> sll692;
  assign proxy8 = io_ctrl_start_data[31:0];
  assign eq504 = 1'h0 == and500;
  assign eq509 = 1'h0 == reg580;
  assign and500 = and498 & eq496;
  assign eq479 = 1'h0 == and475;
  assign and475 = and498 & eq471;
  assign eq529 = 1'h0 == and525;
  assign eq534 = 1'h0 == reg583;
  assign and525 = and498 & eq521;
  assign eq554 = 1'h0 == and550;
  assign eq559 = 1'h0 == reg586;
  assign and550 = and498 & eq546;
  assign eq454 = 1'h0 == and450;
  assign eq459 = 1'h0 == reg574;
  assign and450 = and498 & eq446;
  assign eq428 = 1'h0 == and423;
  assign eq433 = 1'h0 == reg571;
  assign and423 = and498 & eq419;
  assign sel1163 = and1152 ? sub630 : reg81;
  assign sel1108 = (reg413 == 23'h200) ? sel1107 : reg102;
  assign sll796 = reg84 << 32'h2;
  assign bindin145 = reg571;
  assign bindin127 = io_lsu_rd_rsp_data[514:3];
  assign bindin124 = and378;
  assign bindin123 = reset;
  assign bindin122 = clk;
  assign sel1215 = (reg413 == 23'h4000) ? sub883[5:0] : reg114;
  assign bindin241 = reg580;
  assign bindin223 = io_lsu_rd_rsp_data[514:3];
  assign bindin220 = and396;
  assign bindin219 = reset;
  assign bindin218 = clk;
  ch_queue_0 __module4__(.clk(bindin186), .reset(bindin187), .io_enq_valid(bindin188), .io_enq_data(bindin191), .io_deq_ready(bindin209), .io_deq_data(bindout206));
  assign proxy625 = proxy8[19:0];
  always @ (posedge clk) begin
    reg93 <= sel1232;
  end
  always @ (posedge clk) begin
    reg87 <= sel1231;
  end
  always @ (posedge clk) begin
    reg111 <= sel1094;
  end
  assign and839 = srl828[31:0] & sll837;
  assign and783 = srl771[31:0] & sll837;
  ch_queue __module2__(.clk(bindin122), .reset(bindin123), .io_enq_valid(bindin124), .io_enq_data(bindin127), .io_deq_ready(bindin145), .io_deq_valid(bindout137), .io_deq_data(bindout142));
  ch_queue_0 __module5__(.clk(bindin218), .reset(bindin219), .io_enq_valid(bindin220), .io_enq_data(bindin223), .io_deq_ready(bindin241), .io_deq_data(bindout238), .io_size(bindout246));
  assign sel1067 = (reg413 == 23'h400000) ? sub1036[31:0] : reg342;
  assign sel1044 = lt1042 ? reg361[63:32] : reg342;
  assign eq1047 = reg361[63:32] == 32'h0;
  assign sel1082 = bindout265 ? srl930[31:0] : srl940[31:0];
  assign and1085 = eq1088 & eq921;
  assign sll963 = and960 << 32'h5;
  assign sel1158 = and673 ? srl683[19:0] : reg84;
  assign sll758 = sra820 << 32'h2;
  assign sel1156 = io_ctrl_start_valid ? proxy625 : reg75;
  assign sub517 = reg321 - 8'h1;
  assign and506 = eq504 & reg580;
  assign add514 = reg321 + 8'h1;
  assign and511 = and500 & eq509;
  assign sub492 = reg318 - 8'h1;
  assign and481 = eq479 & reg580;
  assign add489 = reg318 + 8'h1;
  assign and486 = and475 & eq509;
  assign sub542 = reg324 - 8'h1;
  assign and531 = eq529 & reg583;
  assign add539 = reg324 + 8'h1;
  assign and536 = and525 & eq534;
  assign sub567 = reg327 - 8'h1;
  assign and556 = eq554 & reg586;
  assign add564 = reg327 + 8'h1;
  assign and561 = and550 & eq559;
  assign sub467 = reg315 - 8'h1;
  assign and456 = eq454 & reg574;
  assign add464 = reg315 + 8'h1;
  assign and461 = and450 & eq459;
  assign sub442 = reg312 - 8'h1;
  assign and430 = eq428 & reg571;
  assign add439 = reg312 + 8'h1;
  assign and435 = and423 & eq433;
  always @ (posedge clk) begin
    reg81 <= sel1163;
  end
  assign eq979 = and960 == 20'hf;
  always @ (posedge clk) begin
    reg102 <= reset ? 20'hfffff : sel1108;
  end
  assign sra799 = sll796 >>> 32'h6;
  assign bindin305 = reg586;
  assign bindin287 = io_lsu_rd_rsp_data[514:3];
  assign bindin284 = and408;
  assign bindin283 = reset;
  assign bindin282 = clk;
  always @ (posedge clk) begin
    reg114 <= sel1215;
  end
  assign bindin177 = reg574;
  assign bindin159 = io_lsu_rd_rsp_data[514:3];
  assign bindin156 = and384;
  assign bindin155 = reset;
  assign bindin154 = clk;
  assign sel1083 = and1085 ? sel1082 : reg117;
  assign sll866 = reg87 << 32'h2;
  always @(*) begin
    case (reg413)
      23'h000010: sel1159 = sel1158;
      23'h200000: sel1159 = srl1014[19:0];
      default: sel1159 = reg84;
    endcase
  end
  always @(*) begin
    case (reg413)
      23'h000001: sel1157 = sel1156;
      23'h100000: sel1157 = add710;
      default: sel1157 = reg75;
    endcase
  end
  assign ne1001 = and689 != 20'hf;
  assign ne973 = reg87 != reg93;
  assign ne910 = reg105 != reg111;
  assign ne842 = and839 != 32'h0;
  assign ne787 = and783 != 32'h0;
  ch_queue __module7__(.clk(bindin282), .reset(bindin283), .io_enq_valid(bindin284), .io_enq_data(bindin287), .io_deq_ready(bindin305), .io_deq_valid(bindout297), .io_deq_data(bindout302));
  assign add813 = reg361[319:288] + 32'h1;
  assign add860 = reg361[287:256] + 32'h1;
  assign add916 = reg361[255:224] + 32'h1;
  assign add899 = reg361[223:192] + 32'h1;
  ch_queue __module3__(.clk(bindin154), .reset(bindin155), .io_enq_valid(bindin156), .io_enq_data(bindin159), .io_deq_ready(bindin177), .io_deq_valid(bindout169), .io_deq_data(bindout174));
  assign add739 = reg361[191:160] + 32'h1;
  assign add651 = reg361[159:128] + 32'h1;
  always @ (posedge clk) begin
    reg342 <= sel1067;
  end
  assign gt1054 = reg361[63:32] > reg342;
  assign sel1049 = eq1047 ? reg342 : sel1044;
  assign srl965 = bindout238 >> sll963;
  assign srl955 = bindout206 >> sll963;
  assign add908 = reg105 + 20'h1;
  assign sra761 = sll758 >>> 32'h6;
  always @(*) begin
    if (and511)
      sel519 = add514;
    else if (and506)
      sel519 = sub517;
    else
      sel519 = reg321;
  end
  always @(*) begin
    if (and486)
      sel494 = add489;
    else if (and481)
      sel494 = sub492;
    else
      sel494 = reg318;
  end
  always @(*) begin
    if (and536)
      sel544 = add539;
    else if (and531)
      sel544 = sub542;
    else
      sel544 = reg324;
  end
  always @(*) begin
    if (and561)
      sel569 = add564;
    else if (and556)
      sel569 = sub567;
    else
      sel569 = reg327;
  end
  always @(*) begin
    if (and461)
      sel469 = add464;
    else if (and456)
      sel469 = sub467;
    else
      sel469 = reg315;
  end
  always @(*) begin
    if (and435)
      sel444 = add439;
    else if (and430)
      sel444 = sub442;
    else
      sel444 = reg312;
  end
  assign ne995 = reg75 != reg81;
  assign sel1142 = eq979 ? 23'h80000 : reg413;
  assign eq801 = sra799 == reg102;
  assign eq763 = sra761 == reg98;
  assign and673 = bindout137 & bindout169;
  assign add1065 = reg361[351:320] + 32'h1;
  assign eq921 = bindout246 == reg114;
  always @ (posedge clk) begin
    reg117 <= sel1083;
  end
  assign and1154 = ne905 & io_lsu_rd_req_ready;
  assign sra869 = sll866 >>> 32'h6;
  always @ (posedge clk) begin
    reg84 <= sel1159;
  end
  always @ (posedge clk) begin
    reg75 <= sel1157;
  end
  assign sel1145 = ne1001 ? 23'h200000 : 23'h2;
  assign sel1143 = ne973 ? sel1142 : 23'h100000;
  assign sel1138 = ne910 ? 23'h8000 : 23'h20000;
  assign and1137 = ne894 & io_lsu_rd_req_ready;
  assign and1135 = ne856 & io_lsu_rd_req_ready;
  assign sel1132 = ne842 ? 23'h200 : 23'h100000;
  assign and1131 = ne808 & io_lsu_rd_req_ready;
  assign sel1127 = ne787 ? 23'h200 : 23'h100000;
  assign and1125 = ne734 & io_lsu_rd_req_ready;
  assign sel1122 = ne1001 ? 23'h80 : 23'h20;
  assign and1119 = ne644 & io_lsu_rd_req_ready;
  assign sel1207 = io_lsu_rd_req_ready ? reg361[319:288] : add813;
  assign sel1203 = io_lsu_rd_req_ready ? reg361[287:256] : add860;
  assign sel1198 = io_lsu_rd_req_ready ? reg361[255:224] : add916;
  assign sel1194 = io_lsu_rd_req_ready ? reg361[223:192] : add899;
  assign sel1189 = io_lsu_rd_req_ready ? reg361[191:160] : add739;
  assign sel1183 = io_lsu_rd_req_ready ? reg361[159:128] : add651;
  assign add1058 = reg361[127:96] + reg342;
  assign eq1180 = reg413 == 23'h800000;
  assign sel1056 = gt1054 ? reg361[63:32] : reg342;
  always @ (posedge clk) begin
    reg1052 <= reset ? sel1049 : reg1052;
  end
  assign add1061 = reg361[31:0] + 32'h1;
  assign sel1153 = and1154 ? add908 : reg105;
  assign sel1233 = eq763 ? reg98 : sra761;
  always @ (posedge clk) begin
    reg321 <= sel519;
  end
  always @ (posedge clk) begin
    reg318 <= sel494;
  end
  always @ (posedge clk) begin
    reg324 <= sel544;
  end
  always @ (posedge clk) begin
    reg327 <= sel569;
  end
  always @ (posedge clk) begin
    reg315 <= sel469;
  end
  always @ (posedge clk) begin
    reg312 <= sel444;
  end
  assign sel1148 = io_pe_ready ? 23'h1 : reg413;
  assign sel1146 = ne995 ? sel1145 : 23'h400000;
  assign sel1144 = io_pe_ready ? sel1143 : reg413;
  assign sel1141 = eq921 ? 23'h40000 : reg413;
  assign sel1139 = and1154 ? sel1138 : reg413;
  assign sel1136 = and1137 ? 23'h10000 : reg413;
  assign sel1134 = and1135 ? 23'h2000 : reg413;
  assign sel1133 = bindout297 ? sel1132 : reg413;
  assign sel1130 = and1131 ? 23'h800 : reg413;
  assign sel1129 = eq801 ? 23'h2000 : 23'h1000;
  assign sel1128 = eq763 ? sel1127 : 23'h400;
  assign sel1126 = bindout169 ? 23'h100 : reg413;
  assign sel1124 = and1125 ? 23'h40 : reg413;
  assign sel1123 = and673 ? sel1122 : reg413;
  assign sel1120 = and1125 ? 23'h10 : reg413;
  assign sel1118 = and1119 ? 23'h4 : reg413;
  assign sel1117 = io_ctrl_start_valid ? 23'h2 : reg413;
  assign sel1213 = io_pe_ready ? reg361[351:320] : add1065;
  assign sel1209 = bindout297 ? reg361[319:288] : add813;
  assign sel1208 = ne808 ? sel1207 : add813;
  assign sel1204 = ne856 ? sel1203 : add860;
  assign sel1200 = eq921 ? reg361[255:224] : add916;
  assign sel1199 = ne905 ? sel1198 : add916;
  assign sel1195 = ne894 ? sel1194 : add899;
  assign sel1191 = bindout169 ? reg361[191:160] : add739;
  assign sel1190 = ne734 ? sel1189 : add739;
  assign sel1184 = ne644 ? sel1183 : add651;
  assign and1181 = eq1180 & io_pe_ready;
  always @(*) begin
    case (reg413)
      23'h040000: sel1081 = 1'h0;
      23'h800000: sel1081 = 1'h1;
      default: sel1081 = reg589[84];
    endcase
  end
  assign sel1079 = (reg413 == 23'h40000) ? reg117 : reg589[83:52];
  assign sel1077 = (reg413 == 23'h40000) ? srl965[31:0] : reg589[51:20];
  assign sel1075 = (reg413 == 23'h40000) ? srl955[19:0] : reg589[19:0];
  always @(*) begin
    case (reg413)
      23'h002000: sel1155 = sra869;
      23'h010000: sel1155 = sel1153;
      default: sel1155 = reg105;
    endcase
  end
  assign sel1234 = (reg413 == 23'h100) ? sel1233 : reg98;
  assign sll728 = add710 << 32'h2;
  assign sll657 = reg75 << 32'h2;
  always @(*) begin
    case (reg413)
      23'h000001: sel1149 = sel1117;
      23'h000002: sel1149 = sel1118;
      23'h000004: sel1149 = sel1120;
      23'h000010: sel1149 = sel1123;
      23'h000080: sel1149 = 23'h100;
      23'h000020: sel1149 = sel1124;
      23'h000040: sel1149 = sel1126;
      23'h000100: sel1149 = sel1128;
      23'h000200: sel1149 = sel1129;
      23'h000400: sel1149 = sel1130;
      23'h000800: sel1149 = sel1133;
      23'h001000: sel1149 = sel1134;
      23'h002000: sel1149 = 23'h4000;
      23'h004000: sel1149 = 23'h8000;
      23'h008000: sel1149 = sel1136;
      23'h010000: sel1149 = sel1139;
      23'h020000: sel1149 = sel1141;
      23'h040000: sel1149 = sel1144;
      23'h080000: sel1149 = 23'h40000;
      23'h100000: sel1149 = sel1146;
      23'h200000: sel1149 = sel1122;
      23'h400000: sel1149 = 23'h800000;
      23'h800000: sel1149 = sel1148;
      default: sel1149 = reg413;
    endcase
  end
  always @(*) begin
    case (reg413)
      23'h040000: sel1214 = sel1213;
      23'h800000: sel1214 = sel1213;
      default: sel1214 = reg361[351:320];
    endcase
  end
  always @(*) begin
    case (reg413)
      23'h000400: sel1210 = sel1208;
      23'h000800: sel1210 = sel1209;
      default: sel1210 = reg361[319:288];
    endcase
  end
  assign sel1205 = (reg413 == 23'h1000) ? sel1204 : reg361[287:256];
  always @(*) begin
    case (reg413)
      23'h010000: sel1201 = sel1199;
      23'h020000: sel1201 = sel1200;
      default: sel1201 = reg361[255:224];
    endcase
  end
  assign sel1196 = (reg413 == 23'h8000) ? sel1195 : reg361[223:192];
  always @(*) begin
    case (reg413)
      23'h000004: sel1192 = sel1190;
      23'h000020: sel1192 = sel1190;
      23'h000040: sel1192 = sel1191;
      default: sel1192 = reg361[191:160];
    endcase
  end
  assign sel1185 = (reg413 == 23'h2) ? sel1184 : reg361[159:128];
  assign sel1179 = and1181 ? add1058 : reg361[127:96];
  assign sel1175 = and1181 ? sel1056 : reg361[95:64];
  assign sel1171 = and1181 ? reg1052 : reg361[63:32];
  assign sel1167 = and1181 ? add1061 : reg361[31:0];
  assign ch_pe_req_t595 = {sel1081, sel1079, sel1077, sel1075};
  always @(*) begin
    case (reg413)
      23'h040000: sel1073 = 1'h1;
      23'h800000: sel1073 = 1'h1;
      default: sel1073 = 1'h0;
    endcase
  end
  assign ne905 = reg321 != 8'h20;
  assign ne894 = reg318 != 8'h20;
  assign ne856 = reg324 != 8'h2;
  assign ne808 = reg327 != 8'h2;
  assign ne734 = reg315 != 8'h2;
  assign ne644 = reg312 != 8'h2;
  assign ch_walker_stats_t612 = {sel1214, sel1210, sel1205, sel1201, sel1196, sel1192, sel1185, sel1179, sel1175, sel1171, sel1167};
  always @ (posedge clk) begin
    reg105 <= sel1155;
  end
  always @ (posedge clk) begin
    reg98 <= reset ? 20'hfffff : sel1234;
  end
  assign sra731 = sll728 >>> 32'h6;
  assign sra660 = sll657 >>> 32'h6;
  always @ (posedge clk) begin
    reg413 <= reset ? 23'h1 : sel1149;
  end
  always @ (posedge clk) begin
    reg589 <= ch_pe_req_t595;
  end
  always @ (posedge clk) begin
    reg601 <= sel1073;
  end
  assign sel1115 = ne905 ? 1'h1 : 1'h0;
  assign sel1114 = ne894 ? 1'h1 : 1'h0;
  assign sel1113 = ne856 ? 1'h1 : 1'h0;
  assign sel1112 = ne808 ? 1'h1 : 1'h0;
  assign sel1111 = ne734 ? 1'h1 : 1'h0;
  assign sel1109 = ne644 ? 1'h1 : 1'h0;
  always @ (posedge clk) begin
    reg361 <= reset ? lit347 : ch_walker_stats_t612;
  end
  assign eq416 = reg413 == 23'h1;
  always @(*) begin
    case (reg413)
      23'h000002: sel1228 = sra660;
      23'h000004: sel1228 = sra660;
      23'h000020: sel1228 = sra731;
      23'h000400: sel1228 = reg98;
      23'h001000: sel1228 = sra799;
      23'h008000: sel1228 = reg105;
      23'h010000: sel1228 = reg105;
      default: sel1228 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg413)
      23'h000002: sel1227 = 3'h1;
      23'h000004: sel1227 = 3'h2;
      23'h000020: sel1227 = 3'h2;
      23'h000400: sel1227 = 3'h6;
      23'h001000: sel1227 = 3'h5;
      23'h008000: sel1227 = 3'h3;
      23'h010000: sel1227 = 3'h4;
      default: sel1227 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg413)
      23'h000002: sel1116 = sel1109;
      23'h000004: sel1116 = sel1111;
      23'h000020: sel1116 = sel1111;
      23'h000400: sel1116 = sel1112;
      23'h001000: sel1116 = sel1113;
      23'h008000: sel1116 = sel1114;
      23'h010000: sel1116 = sel1115;
      default: sel1116 = 1'h0;
    endcase
  end
  assign io_lsu_rd_req_data40 = {sel1228, sel1227};

  assign io_ctrl_start_ready = eq416;
  assign io_ctrl_stats = reg361;
  assign io_lsu_rd_req_valid = sel1116;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data40;
  assign io_pe_valid = reg601;
  assign io_pe_data = reg589;

endmodule


module ch_pipe(
  input wire clk,
  input wire reset,
  input wire io_enq_valid,
  input wire[20:0] io_enq_data,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire io_deq_valid,
  output wire[20:0] io_deq_data
);
  wire[20:0] sel41;
  wire sel60;
  reg[20:0] reg49;
  reg reg64;
  wire[20:0] sel76;
  wire sel92;
  reg[20:0] reg84;
  reg reg96;
  wire[20:0] sel108;
  wire sel124;
  reg[20:0] reg116;
  reg reg128;

  assign sel41 = io_deq_ready ? io_enq_data : reg49;
  assign sel60 = io_deq_ready ? io_enq_valid : reg64;
  always @ (posedge clk) begin
    reg49 <= sel41;
  end
  always @ (posedge clk) begin
    reg64 <= sel60;
  end
  assign sel76 = io_deq_ready ? reg49 : reg84;
  assign sel92 = io_deq_ready ? reg64 : reg96;
  always @ (posedge clk) begin
    reg84 <= sel76;
  end
  always @ (posedge clk) begin
    reg96 <= sel92;
  end
  assign sel108 = io_deq_ready ? reg84 : reg116;
  assign sel124 = io_deq_ready ? reg96 : reg128;
  always @ (posedge clk) begin
    reg116 <= sel108;
  end
  always @ (posedge clk) begin
    reg128 <= sel124;
  end

  assign io_enq_ready = io_deq_ready;
  assign io_deq_valid = reg128;
  assign io_deq_data = reg116;

endmodule


module spmv_pe(
  input wire clk,
  input wire reset,
  input wire io_req_valid,
  input wire[84:0] io_req_data,
  input wire io_lsu_wr_req_ready,
  output wire io_req_ready,
  output wire io_lsu_wr_req_valid,
  output wire[533:0] io_lsu_wr_req_data,
  output wire[63:0] io_stats,
  output wire io_is_idle
);
  wire[63:0] lit134 = 64'h0;
  wire[511:0] lit269 = 512'h0;
  wire[31:0] inv249;
  wire proxy86; // v1931 - is_end(0)
  wire[31:0] and251;
  wire ne245;
  wire eq236;
  wire[31:0] or253;
  wire and247;
  wire[31:0] sll157;
  wire[31:0] or259;
  wire and238;
  wire[19:0] and207;
  wire[31:0] sel261; // pe.cpp(90)
  wire[31:0] or280;
  reg[31:0] sel262; // pe.cpp(89)
  wire[4:0] proxy209; // v1995 - pe.cpp(72)
  wire[31:0] and191;
  wire[20:0] bindout73;
  wire[31:0] sel524; // pe.cpp(124)
  wire and203;
  wire[31:0] sll154;
  reg[31:0] reg118;
  wire eq214;
  wire[31:0] sel525; // pe.cpp(129)
  wire ne194;
  wire proxy68; // v1832 - is_end(0)
  wire[19:0] proxy67; // v1831 - a_rowind(0)
  wire[31:0] sel526; // pe.cpp(116)
  wire eq241;
  wire[20:0] proxy84; // v1929 - /home/blaise/dev/cash/src/module.h(33)
  wire[31:0] and171;
  wire eq161;
  wire and216;
  wire eq219;
  wire eq224;
  wire[31:0] sel197;
  wire[31:0] fmult201;
  wire bindin109;
  wire[20:0] bindin87;
  wire bindin82;
  wire bindin81;
  wire bindin80;
  reg[31:0] reg112;
  wire eq520;
  wire[19:0] and277;
  wire[19:0] and265;
  wire and243;
  wire[20:0] bindout106;
  wire bindout64;
  wire eq175;
  wire or166;
  wire[31:0] sub232;
  wire and221;
  wire[31:0] add229;
  wire and226;
  wire and521;
  wire and274;
  wire[31:0] fadd210;
  wire bindout97;
  wire[19:0] sra492;
  wire[31:0] sel519; // pe.cpp(129)
  wire[19:0] sel267; // pe.cpp(100)
  wire eq169;
  wire and177;
  reg[31:0] sel234; // pe.cpp(79)
  wire[31:0] add505;
  wire[31:0] add477;
  wire sel522; // pe.cpp(116)
  wire[31:0] sel523; // pe.cpp(116)
  wire[4:0] sel518; // pe.cpp(116)
  wire and282;
  wire[19:0] and496;
  reg[31:0] reg115;
  wire[19:0] sll465;
  reg[19:0] reg132;
  wire or179;
  wire and199;
  reg[31:0] reg121;
  wire[31:0] sel512; // pe.cpp(181)
  wire[31:0] sel509; // pe.cpp(166)
  wire[1:0] sel530; // pe.cpp(181)
  wire[1:0] sel529; // pe.cpp(166)
  wire[1:0] sel528; // pe.cpp(147)
  wire[1:0] sel527; // pe.cpp(129)
  wire proxy10; // v1713 - is_end(0)
  wire[19:0] proxy7; // v1710 - a_rowind(0)
  wire[31:0] sel513; // pe.cpp(116)
  reg[31:0] sel510; // pe.cpp(116)
  wire[19:0] sll499;
  wire[511:0] zext489;
  reg[31:0] mem110[0:31];
  wire[19:0] sll484;
  wire[19:0] sra468;
  reg[1:0] sel531; // pe.cpp(116)
  wire[20:0] proxy51; // v1823 - /home/blaise/dev/cash/src/module.h(33)
  wire eq182;
  wire eq185;
  wire[63:0] ch_pe_stats_t149; // v1960 - pe.cpp(33)
  wire bindin76;
  wire[20:0] bindin54;
  wire bindin49;
  wire bindin48;
  wire bindin47;
  wire[511:0] sll501;
  wire[19:0] sra487;
  wire[19:0] add472;
  reg[1:0] reg147;
  wire and187;
  reg[63:0] reg139;
  wire[511:0] proxy383; // v2093 - pe.cpp(157)
  wire[511:0] proxy288; // v2037 - pe.cpp(138)
  wire bindout59;
  reg[511:0] sel517; // pe.cpp(116)
  reg[19:0] sel516; // pe.cpp(116)
  wire[1:0] sel515; // pe.cpp(116)
  reg sel514; // pe.cpp(116)
  wire[533:0] io_lsu_wr_req_data24; // v1721 - pe.cpp(14)

  assign inv249 = ~sll157;
  assign proxy86 = proxy84[20];
  assign and251 = reg118 & inv249;
  assign ne245 = sll154 != sll157;
  assign eq236 = 1'h0 == proxy86;
  assign or253 = and251 | sll154;
  assign and247 = and238 & ne245;
  assign sll157 = 32'h1 << sel518;
  assign or259 = reg118 | sll154;
  assign and238 = and203 & eq236;
  assign and207 = proxy67 & 20'h1f;
  assign sel261 = and247 ? or253 : and251;
  assign or280 = reg112 | sll157;
  always @(*) begin
    if (and243)
      sel262 = sel261;
    else if (and238)
      sel262 = or259;
    else
      sel262 = reg118;
  end
  assign proxy209 = and207[4:0];
  assign and191 = reg112 & sll154;
  assign sel524 = sel522 ? or280 : reg112;
  assign and203 = bindout64 & or179;
  assign sll154 = 32'h1 << proxy209;
  always @ (posedge clk) begin
    reg118 <= sel262;
  end
  assign eq214 = 2'h0 == reg147;
  assign sel525 = and282 ? 32'h0 : sel524;
  assign ne194 = 32'h0 != and191;
  assign proxy68 = bindout73[20];
  assign proxy67 = bindout73[19:0];
  assign sel526 = (reg147 == 2'h0) ? sel525 : reg112;
  assign eq241 = 1'h0 == bindout106[20];
  assign proxy84 = {proxy68, proxy67};
  assign and171 = reg118 & sll154;
  assign eq161 = 1'h0 == bindout97;
  assign and216 = eq214 & bindout97;
  assign eq219 = 1'h0 == and199;
  assign eq224 = 1'h0 == and216;
  assign sel197 = ne194 ? mem110[proxy209] : 32'h0;
  fp_mult __fp_mult_201__(.clock(clk), .clk_en(or179), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(fmult201));
  assign bindin109 = or166;
  assign bindin87 = proxy84;
  assign bindin82 = and203;
  assign bindin81 = reset;
  assign bindin80 = clk;
  always @ (posedge clk) begin
    reg112 <= sel526;
  end
  assign eq520 = reg147 == 2'h0;
  assign and277 = bindout106[19:0] & 20'h1f;
  assign and265 = bindout106[19:0] & 20'hfffe0;
  assign and243 = and216 & eq241;
  ch_pipe __module17__(.clk(bindin80), .reset(bindin81), .io_enq_valid(bindin82), .io_enq_data(bindin87), .io_deq_ready(bindin109), .io_deq_valid(bindout97), .io_deq_data(bindout106));
  assign eq175 = 32'h0 == and171;
  assign or166 = eq214 | eq161;
  assign sub232 = reg121 - 32'h1;
  assign and221 = eq219 & and216;
  assign add229 = reg121 + 32'h1;
  assign and226 = and199 & eq224;
  assign and521 = eq520 & and282;
  assign and274 = bindout97 & eq241;
  fp_add __fp_add_sub_210__(.clock(clk), .clk_en(or166), .dataa(fmult201), .datab(sel197), .result(fadd210));
  assign sra492 = reg132 >>> 32'h5;
  assign sel519 = and521 ? reg112 : reg115;
  assign sel267 = and243 ? and265 : reg132;
  assign eq169 = 1'h0 == bindout64;
  assign and177 = or166 & eq175;
  always @(*) begin
    if (and226)
      sel234 = add229;
    else if (and221)
      sel234 = sub232;
    else
      sel234 = reg121;
  end
  assign add505 = reg139[63:32] + 32'h1;
  assign add477 = reg139[31:0] + 32'h1;
  assign sel522 = (reg147 == 2'h0) ? and274 : 1'h0;
  assign sel523 = (reg147 == 2'h0) ? fadd210 : 32'h0;
  assign sel518 = (reg147 == 2'h0) ? and277[4:0] : 5'h0;
  assign and282 = bindout97 & bindout106[20];
  assign and496 = sra492 & 20'hf;
  always @ (posedge clk) begin
    reg115 <= sel519;
  end
  assign sll465 = reg132 << 32'h2;
  always @ (posedge clk) begin
    reg132 <= sel267;
  end
  assign or179 = and177 | eq169;
  assign and199 = io_req_valid & bindout59;
  always @ (posedge clk) begin
    reg121 <= sel234;
  end
  assign sel512 = io_lsu_wr_req_ready ? reg139[63:32] : add505;
  assign sel509 = io_lsu_wr_req_ready ? reg139[31:0] : add477;
  assign sel530 = io_lsu_wr_req_ready ? 2'h0 : reg147;
  assign sel529 = io_lsu_wr_req_ready ? 2'h3 : reg147;
  assign sel528 = io_lsu_wr_req_ready ? 2'h2 : reg147;
  assign sel527 = and282 ? 2'h1 : reg147;
  assign proxy10 = io_req_data[84];
  assign proxy7 = io_req_data[19:0];
  assign sel513 = (reg147 == 2'h3) ? sel512 : reg139[63:32];
  always @(*) begin
    case (reg147)
      2'h1: sel510 = sel509;
      2'h2: sel510 = sel509;
      default: sel510 = reg139[31:0];
    endcase
  end
  assign sll499 = and496 << 32'h5;
  assign zext489 = {{480{1'b0}}, reg115};
  always @(posedge clk) begin
    if (sel522) begin
      mem110[sel518] = sel523;
    end
  end
  assign sll484 = sra492 << 32'h2;
  assign sra468 = sll465 >>> 32'h6;
  always @(*) begin
    case (reg147)
      2'h0: sel531 = sel527;
      2'h1: sel531 = sel528;
      2'h2: sel531 = sel529;
      2'h3: sel531 = sel530;
      default: sel531 = reg147;
    endcase
  end
  assign proxy51 = {proxy10, proxy7};
  assign eq182 = 32'h0 == reg121;
  assign eq185 = reg147 == 2'h0;
  assign ch_pe_stats_t149 = {sel513, sel510};
  assign bindin76 = or179;
  assign bindin54 = proxy51;
  assign bindin49 = and199;
  assign bindin48 = reset;
  assign bindin47 = clk;
  assign sll501 = zext489 << sll499;
  assign sra487 = sll484 >>> 32'h6;
  assign add472 = sra468 + 20'h1;
  always @ (posedge clk) begin
    reg147 <= reset ? 2'h0 : sel531;
  end
  ch_pipe __module16__(.clk(bindin47), .reset(bindin48), .io_enq_valid(bindin49), .io_enq_data(bindin54), .io_deq_ready(bindin76), .io_enq_ready(bindout59), .io_deq_valid(bindout64), .io_deq_data(bindout73));
  assign and187 = eq185 & eq182;
  always @ (posedge clk) begin
    reg139 <= reset ? lit134 : ch_pe_stats_t149;
  end
  assign proxy383 = {mem110[5'hf1], mem110[5'hf0], mem110[5'he1], mem110[5'he0], mem110[5'hd1], mem110[5'hd0], mem110[5'hc1], mem110[5'hc0], mem110[5'hb1], mem110[5'hb0], mem110[5'ha1], mem110[5'ha0], mem110[5'h91], mem110[5'h90], mem110[5'h81], mem110[5'h80]};
  assign proxy288 = {mem110[5'h71], mem110[5'h70], mem110[5'h61], mem110[5'h60], mem110[5'h51], mem110[5'h50], mem110[5'h41], mem110[5'h40], mem110[5'h31], mem110[5'h30], mem110[5'h21], mem110[5'h20], mem110[5'h11], mem110[5'h10], mem110[5'h1], mem110[5'h0]};
  always @(*) begin
    case (reg147)
      2'h1: sel517 = proxy288;
      2'h2: sel517 = proxy383;
      2'h3: sel517 = sll501;
      default: sel517 = lit269;
    endcase
  end
  always @(*) begin
    case (reg147)
      2'h1: sel516 = sra468;
      2'h2: sel516 = add472;
      2'h3: sel516 = sra487;
      default: sel516 = 20'h0;
    endcase
  end
  assign sel515 = (reg147 == 2'h3) ? 2'h1 : 2'h0;
  always @(*) begin
    case (reg147)
      2'h1: sel514 = 1'h1;
      2'h2: sel514 = 1'h1;
      2'h3: sel514 = 1'h1;
      default: sel514 = 1'h0;
    endcase
  end
  assign io_lsu_wr_req_data24 = {sel517, sel516, sel515};

  assign io_req_ready = bindout59;
  assign io_lsu_wr_req_valid = sel514;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data24;
  assign io_stats = reg139;
  assign io_is_idle = and187;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  wire eq56;
  wire[23:0] sel57;
  wire eq58;
  wire[23:0] sel59;
  wire eq60;
  wire[23:0] sel61;

  assign eq56 = io_sel == 3'h4;
  assign sel57 = eq56 ? io_in[71:48] : 24'h0;
  assign eq58 = io_sel == 3'h2;
  assign sel59 = eq58 ? io_in[47:24] : sel57;
  assign eq60 = io_sel == 3'h1;
  assign sel61 = eq60 ? io_in[23:0] : sel59;

  assign io_out = sel61;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire proxy99; // v2977 - /home/blaise/dev/cash/src/htl/arbiter.h(22)
  wire proxy102; // v2979 - /home/blaise/dev/cash/src/htl/arbiter.h(22)
  wire proxy75; // v2962 - /home/blaise/dev/cash/src/htl/arbiter.h(22)
  wire inv100;
  wire or103;
  wire inv76;
  wire or79;
  wire or71;
  wire and105;
  wire and81;
  wire and73;
  reg reg33;
  reg reg24;
  wire inv112;
  reg reg21;
  wire inv107;
  wire inv83;
  wire and89;
  wire and57;
  wire and114;
  wire and54;
  wire and109;
  wire and85;
  wire[2:0] proxy49; // v2946 - /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy47; // v2945 - /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy45; // v2944 - /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire orr118;
  wire orr92;
  wire orr60;
  wire inv120;
  wire inv94;
  wire inv62;
  wire and122;
  wire and96;
  wire and64;
  wire[2:0] proxy51; // v2947 - /home/blaise/dev/cash/src/htl/arbiter.h(22)

  assign proxy99 = proxy51[1];
  assign proxy102 = proxy51[2];
  assign proxy75 = proxy51[0];
  assign inv100 = ~proxy99;
  assign or103 = reg33 | proxy102;
  assign inv76 = ~proxy75;
  assign or79 = reg24 | proxy102;
  assign or71 = reg21 | proxy99;
  assign and105 = or103 & inv100;
  assign and81 = or79 & inv76;
  assign and73 = or71 & inv76;
  always @ (posedge clk) begin
    reg33 <= and105;
  end
  always @ (posedge clk) begin
    reg24 <= and81;
  end
  assign inv112 = ~reg33;
  always @ (posedge clk) begin
    reg21 <= and73;
  end
  assign inv107 = ~reg24;
  assign inv83 = ~reg21;
  assign and89 = io_in[1] & reg33;
  assign and57 = io_in[0] & reg24;
  assign and114 = io_in[2] & inv112;
  assign and54 = io_in[0] & reg21;
  assign and109 = io_in[2] & inv107;
  assign and85 = io_in[1] & inv83;
  assign proxy49 = {1'h0, and89, and57};
  assign proxy47 = {and114, 1'h0, and54};
  assign proxy45 = {and109, and85, 1'h0};
  assign orr118 = |proxy49;
  assign orr92 = |proxy47;
  assign orr60 = |proxy45;
  assign inv120 = ~orr118;
  assign inv94 = ~orr92;
  assign inv62 = ~orr60;
  assign and122 = io_in[2] & inv120;
  assign and96 = io_in[1] & inv94;
  assign and64 = io_in[0] & inv62;
  assign proxy51 = {and122, and96, and64};

  assign io_grant = proxy51;

endmodule

module ch_xbar_switch(
  input wire clk,
  input wire reset,
  input wire io_in_0_valid,
  input wire[22:0] io_in_0_data,
  input wire io_in_1_valid,
  input wire[22:0] io_in_1_data,
  input wire io_in_2_valid,
  input wire[22:0] io_in_2_data,
  input wire io_out_ready,
  output wire io_in_0_ready,
  output wire io_in_1_ready,
  output wire io_in_2_ready,
  output wire io_out_valid,
  output wire[22:0] io_out_data,
  output wire[2:0] io_out_grant
);
  wire[71:0] proxy66; // v2898 - /home/blaise/dev/cash/src/module.h(33)
  wire[71:0] bindin82;
  wire[2:0] bindin64;
  wire[2:0] proxy99; // v2993 - /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindin109;
  wire bindin108;
  wire bindin107;
  wire[23:0] bindout97;
  wire eq143;
  wire eq137;
  wire eq131;
  wire[2:0] bindout114;
  wire and145;
  wire and139;
  wire and133;

  assign proxy66 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin82 = proxy66;
  assign bindin64 = bindout114;
  assign proxy99 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  ch_hxbar __module23__(.io_sel(bindin64), .io_in(bindin82), .io_out(bindout97));
  assign bindin109 = proxy99;
  assign bindin108 = reset;
  assign bindin107 = clk;
  assign eq143 = bindout114 == 3'h4;
  assign eq137 = bindout114 == 3'h2;
  assign eq131 = bindout114 == 3'h1;
  ch_rrArbiter __module24__(.clk(bindin107), .reset(bindin108), .io_in(bindin109), .io_grant(bindout114));
  assign and145 = io_out_ready & eq143;
  assign and139 = io_out_ready & eq137;
  assign and133 = io_out_ready & eq131;

  assign io_in_0_ready = and133;
  assign io_in_1_ready = and139;
  assign io_in_2_ready = and145;
  assign io_out_valid = bindout97[23];
  assign io_out_data = bindout97[22:0];
  assign io_out_grant = bindout114;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  wire[534:0] lit61 = 535'h0;
  wire eq63;
  wire[534:0] sel64;
  wire eq65;
  wire[534:0] sel66;
  wire eq67;
  wire[534:0] sel68;

  assign eq63 = io_sel == 3'h4;
  assign sel64 = eq63 ? io_in[1604:1070] : lit61;
  assign eq65 = io_sel == 3'h2;
  assign sel66 = eq65 ? io_in[1069:535] : sel64;
  assign eq67 = io_sel == 3'h1;
  assign sel68 = eq67 ? io_in[534:0] : sel66;

  assign io_out = sel68;

endmodule


module ch_xbar_switch_0(
  input wire clk,
  input wire reset,
  input wire io_in_0_valid,
  input wire[533:0] io_in_0_data,
  input wire io_in_1_valid,
  input wire[533:0] io_in_1_data,
  input wire io_in_2_valid,
  input wire[533:0] io_in_2_data,
  input wire io_out_ready,
  output wire io_in_0_ready,
  output wire io_in_1_ready,
  output wire io_in_2_ready,
  output wire io_out_valid,
  output wire[533:0] io_out_data,
  output wire[2:0] io_out_grant
);
  wire[1604:0] proxy73; // v3144 - /home/blaise/dev/cash/src/module.h(33)
  wire[1604:0] bindin92;
  wire[2:0] bindin71;
  wire[2:0] proxy111; // v3244 - /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindin121;
  wire bindin120;
  wire bindin119;
  wire[534:0] bindout109;
  wire eq155;
  wire eq149;
  wire eq143;
  wire[2:0] bindout126;
  wire and157;
  wire and151;
  wire and145;

  assign proxy73 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin92 = proxy73;
  assign bindin71 = bindout126;
  assign proxy111 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  ch_hxbar_0 __module26__(.io_sel(bindin71), .io_in(bindin92), .io_out(bindout109));
  assign bindin121 = proxy111;
  assign bindin120 = reset;
  assign bindin119 = clk;
  assign eq155 = bindout126 == 3'h4;
  assign eq149 = bindout126 == 3'h2;
  assign eq143 = bindout126 == 3'h1;
  ch_rrArbiter __module27__(.clk(bindin119), .reset(bindin120), .io_in(bindin121), .io_grant(bindout126));
  assign and157 = io_out_ready & eq155;
  assign and151 = io_out_ready & eq149;
  assign and145 = io_out_ready & eq143;

  assign io_in_0_ready = and145;
  assign io_in_1_ready = and151;
  assign io_in_2_ready = and157;
  assign io_out_valid = bindout109[534];
  assign io_out_data = bindout109[533:0];
  assign io_out_grant = bindout126;

endmodule

module spmv_write_cache(
  input wire clk,
  input wire reset,
  input wire io_enq_valid,
  input wire[533:0] io_enq_data,
  input wire io_evict_ready,
  input wire io_flush,
  output wire io_enq_ready,
  output wire io_evict_valid,
  output wire[533:0] io_evict_data
);
  wire[511:0] lit166 = 512'h0;
  wire[1:0] proxy112; // v3363 - owners(0)
  wire[1:0] and115;
  wire[1:0] proxy90; // v3348 - owners(0)
  wire[19:0] proxy100; // v3355 - tag(0)
  wire ne118;
  wire ne94;
  wire eq101;
  wire[1:0] proxy127; // v3374 - owners(0)
  wire sel121;
  wire eq130;
  wire and103;
  wire eq324;
  wire and325;
  wire sel133;
  wire sel106;
  wire sel323; // wrcache.h(143)
  wire[1:0] proxy169; // v3400 - owners(0)
  wire[19:0] sel326; // wrcache.h(143)
  reg reg144;
  wire add301;
  wire[1:0] inv269;
  wire[1:0] and172;
  reg[19:0] reg10;
  wire[1:0] and264;
  wire[19:0] proxy205; // v3426 - tag(0)
  wire[1:0] proxy209; // v3429 - owners(0)
  wire sel351; // wrcache.h(232)
  wire sel349; // wrcache.h(135)
  wire sel359; // wrcache.h(180)
  wire sel358; // wrcache.h(160)
  reg reg150;
  reg reg138;
  wire sel319; // wrcache.h(146)
  wire[1:0] and275;
  wire[1:0] or223;
  wire eq206;
  wire ne212;
  wire ne175;
  wire eq177;
  wire sel352; // wrcache.h(226)
  wire sel350; // wrcache.h(121)
  wire sel360; // wrcache.h(146)
  wire sel320; // wrcache.h(143)
  wire[19:0] proxy279; // v3483 - tag(0)
  wire ne267;
  wire[19:0] proxy74; // v3335 - tag(0)
  wire[1:0] or188;
  wire eq304;
  wire ne241;
  wire ne232;
  reg reg156;
  wire[511:0] or217;
  reg sel353; // wrcache.h(119)
  wire sel361; // wrcache.h(143)
  wire[21:0] tag_t281; // v3484 - wrcache.h(204)
  wire[21:0] tag_t238; // v3450 - wrcache.h(173)
  wire[21:0] tag_t229; // v3444 - wrcache.h(153)
  wire and214;
  wire and179;
  wire[511:0] or182;
  reg reg7;
  wire sel367; // wrcache.h(201)
  wire and365;
  wire[21:0] sel383; // wrcache.h(201)
  wire[21:0] tag_t254; // v3463 - wrcache.h(196)
  wire[21:0] sel381; // wrcache.h(146)
  wire[21:0] tag_t194; // v3418 - wrcache.h(129)
  wire eq372;
  wire and339;
  wire eq248;
  wire[2:0] sel333; // wrcache.h(180)
  wire[2:0] sel332; // wrcache.h(160)
  wire[511:0] sel376; // wrcache.h(146)
  reg reg27;
  reg reg163;
  wire sel368; // wrcache.h(193)
  wire sel366; // wrcache.h(143)
  wire sel364; // wrcache.h(124)
  wire[21:0] sel384; // wrcache.h(193)
  wire[21:0] sel382; // wrcache.h(143)
  wire[21:0] sel379; // wrcache.h(124)
  wire[533:0] sel370; // wrcache.h(124)
  wire and373;
  wire[2:0] sel340; // wrcache.h(243)
  wire[2:0] sel338; // wrcache.h(235)
  wire[2:0] sel334; // wrcache.h(146)
  wire[2:0] sel330; // wrcache.h(135)
  wire[2:0] sel329; // wrcache.h(124)
  wire[511:0] sel377; // wrcache.h(143)
  wire[511:0] sel374; // wrcache.h(124)
  wire sel356; // wrcache.h(143)
  wire sel354; // wrcache.h(121)
  reg sel369; // wrcache.h(119)
  reg[21:0] sel385; // wrcache.h(119)
  wire[533:0] sel371; // wrcache.h(121)
  wire[2:0] sel341; // wrcache.h(226)
  wire[2:0] sel337; // wrcache.h(218)
  wire[2:0] sel336; // wrcache.h(193)
  wire[2:0] sel335; // wrcache.h(143)
  wire[2:0] sel331; // wrcache.h(121)
  reg sel348; // wrcache.h(119)
  reg[511:0] sel378; // wrcache.h(119)
  reg sel357; // wrcache.h(119)
  reg[21:0] mem1[0:1];
  reg[2:0] sel342; // wrcache.h(119)
  reg[511:0] mem5[0:1];
  reg[533:0] reg71;
  wire ne294;
  reg[2:0] reg68;
  wire[511:0] sel317; // wrcache.h(226)
  wire[19:0] sel315; // wrcache.h(226)
  wire[1:0] proxy73; // v3334 - owner(0)
  wire sel343; // wrcache.h(226)
  wire eq160;
  reg[511:0] sel318; // wrcache.h(119)
  reg[19:0] sel316; // wrcache.h(119)
  wire[1:0] sel314; // wrcache.h(119)
  reg sel344; // wrcache.h(119)
  wire[533:0] io_evict_data50; // v3323 - wrcache.h(58)

  assign proxy112 = mem1[1'h1][1:0];
  assign and115 = proxy112 & io_enq_data[1:0];
  assign proxy90 = mem1[1'h1][1:0];
  assign proxy100 = mem1[1'h1][21:2];
  assign ne118 = and115 != 2'h0;
  assign ne94 = proxy90 != 2'h0;
  assign eq101 = proxy100 == io_enq_data[21:2];
  assign proxy127 = mem1[1'h0][1:0];
  assign sel121 = ne118 ? 1'h1 : 1'h0;
  assign eq130 = proxy127 == 2'h0;
  assign and103 = eq101 & ne94;
  assign eq324 = reg68 == 3'h1;
  assign and325 = eq324 & reg156;
  assign sel133 = eq130 ? 1'h0 : 1'h1;
  assign sel106 = and103 ? 1'h1 : 1'h0;
  assign sel323 = and325 ? reg138 : 1'h0;
  assign proxy169 = mem1[sel357][1:0];
  assign sel326 = and325 ? proxy74 : reg10;
  always @ (posedge clk) begin
    reg144 <= sel121;
  end
  assign add301 = reg27 + 1'h1;
  assign inv269 = ~proxy73;
  assign and172 = proxy169 & io_enq_data[1:0];
  always @ (posedge clk) begin
    reg10 <= sel326;
  end
  assign and264 = proxy169 & proxy73;
  assign proxy205 = mem1[sel323][21:2];
  assign proxy209 = mem1[sel323][1:0];
  assign sel351 = io_evict_ready ? add301 : reg27;
  assign sel349 = io_flush ? 1'h0 : reg27;
  assign sel359 = ne241 ? reg144 : reg163;
  assign sel358 = ne232 ? reg144 : reg163;
  always @ (posedge clk) begin
    reg150 <= sel133;
  end
  always @ (posedge clk) begin
    reg138 <= sel106;
  end
  assign sel319 = and214 ? reg138 : reg150;
  assign and275 = proxy169 & inv269;
  assign or223 = proxy169 | proxy73;
  assign eq206 = proxy205 == proxy74;
  assign ne212 = proxy209 != 2'h0;
  assign ne175 = and172 != 2'h0;
  assign eq177 = io_enq_data[21:2] == reg10;
  assign sel352 = ne294 ? sel351 : add301;
  assign sel350 = io_enq_valid ? reg27 : sel349;
  assign sel360 = and214 ? sel358 : sel359;
  assign sel320 = and325 ? sel319 : reg7;
  assign proxy279 = mem1[sel357][21:2];
  assign ne267 = and264 != 2'h0;
  assign proxy74 = reg71[21:2];
  assign or188 = proxy169 | io_enq_data[1:0];
  assign eq304 = reg27 == 1'h1;
  assign ne241 = reg150 != reg144;
  assign ne232 = reg138 != reg144;
  always @ (posedge clk) begin
    reg156 <= io_enq_valid;
  end
  assign or217 = mem5[sel357] | reg71[533:22];
  always @(*) begin
    case (reg68)
      3'h0: sel353 = sel350;
      3'h4: sel353 = sel352;
      default: sel353 = reg27;
    endcase
  end
  assign sel361 = and325 ? sel360 : reg163;
  assign tag_t281 = {proxy279, and275};
  assign tag_t238 = {proxy74, proxy73};
  assign tag_t229 = {proxy279, or223};
  assign and214 = ne212 & eq206;
  assign and179 = eq177 & ne175;
  assign or182 = mem5[sel357] | io_enq_data[533:22];
  always @ (posedge clk) begin
    reg7 <= sel320;
  end
  assign sel367 = ne267 ? 1'h1 : 1'h0;
  assign and365 = io_enq_valid & and179;
  assign sel383 = ne267 ? tag_t281 : 22'h0;
  assign tag_t254 = {proxy279, 2'h0};
  assign sel381 = and214 ? tag_t229 : tag_t238;
  assign tag_t194 = {proxy279, or188};
  assign eq372 = reg68 == 3'h0;
  assign and339 = io_evict_ready & eq304;
  assign eq248 = proxy169 == proxy73;
  assign sel333 = ne241 ? 3'h2 : 3'h0;
  assign sel332 = ne232 ? 3'h2 : 3'h0;
  assign sel376 = and214 ? or217 : reg71[533:22];
  always @ (posedge clk) begin
    reg27 <= sel353;
  end
  always @ (posedge clk) begin
    reg163 <= sel361;
  end
  assign sel368 = eq248 ? 1'h1 : sel367;
  assign sel366 = reg156 ? 1'h1 : 1'h0;
  assign sel364 = and365 ? 1'h1 : 1'h0;
  assign sel384 = eq248 ? tag_t254 : sel383;
  assign sel382 = reg156 ? sel381 : 22'h0;
  assign sel379 = and365 ? tag_t194 : 22'h0;
  assign sel370 = and179 ? reg71 : io_enq_data;
  assign and373 = eq372 & io_enq_valid;
  assign sel340 = eq304 ? 3'h0 : reg68;
  assign sel338 = and339 ? 3'h0 : reg68;
  assign sel334 = and214 ? sel332 : sel333;
  assign sel330 = io_flush ? 3'h4 : reg68;
  assign sel329 = and179 ? reg68 : 3'h1;
  assign sel377 = reg156 ? sel376 : lit166;
  assign sel374 = and365 ? or182 : lit166;
  assign sel356 = reg156 ? sel319 : 1'h0;
  assign sel354 = io_enq_valid ? reg7 : 1'h0;
  always @(*) begin
    case (reg68)
      3'h0: sel369 = sel364;
      3'h1: sel369 = sel366;
      3'h2: sel369 = sel368;
      default: sel369 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg68)
      3'h0: sel385 = sel379;
      3'h1: sel385 = sel382;
      3'h2: sel385 = sel384;
      default: sel385 = 22'h0;
    endcase
  end
  assign sel371 = and373 ? sel370 : reg71;
  assign sel341 = ne294 ? sel338 : sel340;
  assign sel337 = io_evict_ready ? 3'h0 : reg68;
  assign sel336 = eq248 ? 3'h3 : 3'h0;
  assign sel335 = reg156 ? sel334 : reg68;
  assign sel331 = io_enq_valid ? sel329 : sel330;
  always @(*) begin
    case (reg68)
      3'h0: sel348 = sel364;
      3'h1: sel348 = sel366;
      default: sel348 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg68)
      3'h0: sel378 = sel374;
      3'h1: sel378 = sel377;
      default: sel378 = lit166;
    endcase
  end
  always @(*) begin
    case (reg68)
      3'h0: sel357 = sel354;
      3'h1: sel357 = sel356;
      3'h2: sel357 = reg163;
      3'h3: sel357 = reg163;
      3'h4: sel357 = reg27;
      default: sel357 = 1'h0;
    endcase
  end
  always @(posedge clk) begin
    if (sel369) begin
      mem1[sel357] = sel385;
    end
  end
  always @(*) begin
    case (reg68)
      3'h0: sel342 = sel331;
      3'h1: sel342 = sel335;
      3'h2: sel342 = sel336;
      3'h3: sel342 = sel337;
      3'h4: sel342 = sel341;
      default: sel342 = reg68;
    endcase
  end
  always @(posedge clk) begin
    if (sel348) begin
      mem5[sel357] = sel378;
    end
  end
  always @ (posedge clk) begin
    reg71 <= sel371;
  end
  assign ne294 = proxy169 != 2'h0;
  always @ (posedge clk) begin
    reg68 <= reset ? 3'h0 : sel342;
  end
  assign sel317 = ne294 ? mem5[sel357] : lit166;
  assign sel315 = ne294 ? proxy279 : 20'h0;
  assign proxy73 = reg71[1:0];
  assign sel343 = ne294 ? 1'h1 : 1'h0;
  assign eq160 = reg68 == 3'h0;
  always @(*) begin
    case (reg68)
      3'h3: sel318 = mem5[sel357];
      3'h4: sel318 = sel317;
      default: sel318 = lit166;
    endcase
  end
  always @(*) begin
    case (reg68)
      3'h3: sel316 = proxy279;
      3'h4: sel316 = sel315;
      default: sel316 = 20'h0;
    endcase
  end
  assign sel314 = (reg68 == 3'h3) ? proxy73 : 2'h0;
  always @(*) begin
    case (reg68)
      3'h3: sel344 = 1'h1;
      3'h4: sel344 = sel343;
      default: sel344 = 1'h0;
    endcase
  end
  assign io_evict_data50 = {sel318, sel316, sel314};

  assign io_enq_ready = eq160;
  assign io_evict_valid = sel344;
  assign io_evict_data = io_evict_data50;

endmodule

module spmv_lsu(
  input wire clk,
  input wire reset,
  input wire io_qpi_rd_req_almostfull,
  input wire[13:0] io_qpi_rd_rsp_mdata,
  input wire[511:0] io_qpi_rd_rsp_data,
  input wire io_qpi_rd_rsp_valid,
  input wire io_qpi_wr_req_almostfull,
  input wire[13:0] io_qpi_wr_rsp0_mdata,
  input wire io_qpi_wr_rsp0_valid,
  input wire[13:0] io_qpi_wr_rsp1_mdata,
  input wire io_qpi_wr_rsp1_valid,
  input wire[511:0] io_ctx,
  input wire io_ctrl_rd_req_valid,
  input wire[22:0] io_ctrl_rd_req_data,
  input wire io_ctrl_wr_req_valid,
  input wire[533:0] io_ctrl_wr_req_data,
  input wire io_walkers_0_rd_req_valid,
  input wire[22:0] io_walkers_0_rd_req_data,
  input wire io_walkers_1_rd_req_valid,
  input wire[22:0] io_walkers_1_rd_req_data,
  input wire io_PEs_0_wr_req_valid,
  input wire[533:0] io_PEs_0_wr_req_data,
  input wire io_PEs_1_wr_req_valid,
  input wire[533:0] io_PEs_1_wr_req_data,
  output wire[19:0] io_qpi_rd_req_addr,
  output wire[13:0] io_qpi_rd_req_mdata,
  output wire io_qpi_rd_req_valid,
  output wire[19:0] io_qpi_wr_req_addr,
  output wire[13:0] io_qpi_wr_req_mdata,
  output wire[511:0] io_qpi_wr_req_data,
  output wire io_qpi_wr_req_valid,
  output wire io_ctrl_rd_req_ready,
  output wire io_ctrl_wr_req_ready,
  output wire io_ctrl_rd_rsp_valid,
  output wire[514:0] io_ctrl_rd_rsp_data,
  output wire[31:0] io_ctrl_outstanding_writes,
  output wire io_walkers_0_rd_req_ready,
  output wire io_walkers_0_rd_rsp_valid,
  output wire[514:0] io_walkers_0_rd_rsp_data,
  output wire io_walkers_1_rd_req_ready,
  output wire io_walkers_1_rd_rsp_valid,
  output wire[514:0] io_walkers_1_rd_rsp_data,
  output wire io_PEs_0_wr_req_ready,
  output wire io_PEs_1_wr_req_ready
);
  wire[511:0] lit543 = 512'h0;
  wire eq548;
  wire eq438;
  wire eq545;
  wire[2:0] bindout350;
  wire eq574;
  wire bindout367;
  wire eq432;
  wire[2:0] sel565; // lsu.cpp(164)
  wire bindout331;
  wire and575;
  wire and440;
  wire[2:0] sel566; // lsu.cpp(163)
  wire[533:0] bindout342;
  wire[2:0] sel573; // lsu.cpp(160)
  wire sel559; // lsu.cpp(158)
  wire[511:0] sel563; // lsu.cpp(158)
  wire[19:0] sel562; // lsu.cpp(158)
  wire[1:0] sel561; // lsu.cpp(158)
  wire sel560; // lsu.cpp(158)
  wire[2:0] sel571; // lsu.cpp(205)
  wire[2:0] sel570; // lsu.cpp(198)
  wire[2:0] sel568; // lsu.cpp(177)
  wire[2:0] sel567; // lsu.cpp(160)
  wire or455;
  wire[2:0] zext496;
  wire[533:0] proxy358; // v3513 - /home/blaise/dev/cash/src/module.h(33)
  wire[39:0] proxy70; // v2719 - y(0)
  reg[2:0] sel572; // lsu.cpp(158)
  wire and451;
  wire[533:0] sel576; // lsu.cpp(160)
  reg[2:0] reg449;
  reg[19:0] sel541; // lsu.cpp(271)
  wire bindin389;
  wire bindin386;
  wire[533:0] bindin362;
  wire bindin356;
  wire bindin355;
  wire bindin354;
  wire[19:0] proxy72; // v2721 - masks(0)
  wire[19:0] proxy71; // v2720 - values(0)
  wire sel537; // lsu.cpp(114)
  wire[31:0] sel461;
  wire[533:0] bindout383;
  wire[4:0] ch_wr_mdata_t499; // v3581 - lsu.cpp(117)
  wire[1:0] proxy445; // v3556 - type(0)
  reg[19:0] sel527; // lsu.cpp(271)
  reg[2:0] reg423;
  wire sel539; // lsu.cpp(127)
  wire sel538; // lsu.cpp(105)
  wire[2:0] bindout281;
  wire[39:0] proxy67; // v2716 - x(0)
  wire[131:0] proxy60; // v2709 - a(0)
  wire[31:0] sel462;
  wire[31:0] add516;
  reg[533:0] reg443;
  wire[13:0] zext508;
  wire[4:0] ch_wr_mdata_t483; // v3573 - lsu.cpp(107)
  wire[19:0] add506;
  wire bindout372;
  reg sel540; // lsu.cpp(103)
  wire[22:0] bindout273;
  wire[19:0] proxy69; // v2718 - masks(0)
  wire[19:0] proxy68; // v2717 - values(0)
  wire[19:0] proxy66; // v2715 - values(0)
  wire[19:0] proxy65; // v2714 - row_ind(0)
  wire[19:0] proxy64; // v2713 - row_ptr(0)
  wire[19:0] proxy63; // v2712 - col_ind(0)
  wire[19:0] proxy62; // v2711 - col_ptr(0)
  wire eq435;
  wire eq392;
  wire eq512;
  wire[13:0] zext492;
  wire[19:0] add490;
  wire sel564; // lsu.cpp(158)
  wire[2:0] proxy267; // v3036 - type(0)
  reg[19:0] sel411; // lsu.cpp(258)
  wire[31:0] sub480;
  wire[31:0] sub518;
  wire eq522;
  wire[511:0] sel534; // lsu.cpp(114)
  wire[13:0] sel531; // lsu.cpp(114)
  wire[19:0] sel528; // lsu.cpp(114)
  reg reg427;
  wire[5:0] ch_rd_mdata_t415; // v3538 - lsu.cpp(55)
  wire and523;
  wire[2:0] proxy582; // v3611 - owner(0)
  wire[511:0] sel535; // lsu.cpp(105)
  wire[13:0] sel532; // lsu.cpp(105)
  wire[19:0] sel529; // lsu.cpp(105)
  wire bindout264;
  wire[13:0] zext419;
  wire[19:0] add412;
  wire eq594;
  wire eq589;
  wire[31:0] sel521; // lsu.cpp(127)
  wire eq584;
  wire bindin345;
  wire[533:0] bindin321;
  wire bindin315;
  wire[533:0] bindin307;
  wire bindin301;
  wire[533:0] bindin293;
  wire bindin287;
  wire bindin286;
  wire bindin285;
  wire bindin276;
  wire[22:0] bindin254;
  wire bindin249;
  wire[22:0] bindin241;
  wire bindin236;
  wire[22:0] bindin228;
  wire bindin223;
  wire bindin222;
  wire bindin221;
  wire sel524; // lsu.cpp(127)
  wire[511:0] sel536; // lsu.cpp(103)
  wire[13:0] sel533; // lsu.cpp(103)
  wire[19:0] sel530; // lsu.cpp(103)
  wire bindout312;
  wire bindout298;
  wire and596;
  wire bindout246;
  wire and591;
  wire bindout233;
  reg[31:0] reg465;
  wire[5:0] proxy580; // v3609 - lsu.cpp(227)
  wire and586;
  wire bindout326;
  wire bindout259;
  reg reg468;
  reg[511:0] reg474;
  reg[13:0] reg477;
  reg[19:0] reg471;
  reg reg395;
  reg[13:0] reg401;
  reg[19:0] reg398;
  wire[2:0] proxy581; // v3610 - type(0)
  wire[514:0] io_walkers_1_rd_rsp_data177; // v2788 - lsu.cpp(19)

  assign eq548 = bindout350 == 3'h4;
  assign eq438 = 1'h0 == sel564;
  assign eq545 = bindout342[1:0] == 2'h1;
  assign eq574 = reg423 == 3'h0;
  assign eq432 = reg427 == 1'h0;
  assign sel565 = eq548 ? 3'h3 : 3'h2;
  assign and575 = eq574 & bindout331;
  assign and440 = eq432 & eq438;
  assign sel566 = eq545 ? sel565 : 3'h1;
  assign sel573 = and575 ? bindout350 : reg449;
  assign sel559 = (reg423 == 3'h3) ? 1'h1 : 1'h0;
  assign sel563 = (reg423 == 3'h2) ? reg443[533:22] : lit543;
  assign sel562 = (reg423 == 3'h2) ? reg443[21:2] : 20'h0;
  assign sel561 = (reg423 == 3'h2) ? reg449[1:0] : 2'h0;
  assign sel560 = (reg423 == 3'h2) ? 1'h1 : 1'h0;
  assign sel571 = bindout367 ? 3'h0 : reg423;
  assign sel570 = bindout367 ? 3'h4 : reg423;
  assign sel568 = eq432 ? 3'h0 : reg423;
  assign sel567 = bindout331 ? sel566 : reg423;
  assign or455 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  assign zext496 = {{1{1'b0}}, bindout383[1:0]};
  assign proxy358 = {sel563, sel562, sel561};
  assign proxy70 = io_ctx[211:172];
  always @(*) begin
    case (reg423)
      3'h0: sel572 = sel567;
      3'h1: sel572 = sel568;
      3'h2: sel572 = sel571;
      3'h3: sel572 = sel570;
      3'h4: sel572 = sel571;
      default: sel572 = reg423;
    endcase
  end
  assign and451 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign sel576 = and575 ? bindout342 : reg443;
  always @ (posedge clk) begin
    reg449 <= sel573;
  end
  always @(*) begin
    case (2'h1)
      2'h0: sel541 = proxy71;
      2'h1: sel541 = proxy72;
      default: sel541 = io_ctx[231:212];
    endcase
  end
  assign bindin389 = sel559;
  assign bindin386 = and440;
  assign bindin362 = proxy358;
  assign bindin356 = sel560;
  assign bindin355 = reset;
  assign bindin354 = clk;
  assign proxy72 = proxy70[39:20];
  assign proxy71 = proxy70[19:0];
  assign sel537 = bindout372 ? 1'h1 : reg427;
  assign sel461 = or455 ? 32'h1 : 32'h0;
  assign ch_wr_mdata_t499 = {zext496, 2'h1};
  assign proxy445 = reg443[1:0];
  spmv_write_cache __module28__(.clk(bindin354), .reset(bindin355), .io_enq_valid(bindin356), .io_enq_data(bindin362), .io_evict_ready(bindin386), .io_flush(bindin389), .io_enq_ready(bindout367), .io_evict_valid(bindout372), .io_evict_data(bindout383));
  always @(*) begin
    case (proxy445)
      2'h0: sel527 = proxy71;
      2'h1: sel527 = proxy72;
      default: sel527 = io_ctx[231:212];
    endcase
  end
  always @ (posedge clk) begin
    reg423 <= reset ? 3'h0 : sel572;
  end
  assign sel539 = eq512 ? 1'h0 : reg427;
  assign sel538 = sel564 ? 1'h1 : sel537;
  assign proxy67 = io_ctx[171:132];
  assign proxy60 = io_ctx[131:0];
  assign sel462 = and451 ? 32'h2 : sel461;
  assign add516 = reg465 + 32'h1;
  always @ (posedge clk) begin
    reg443 <= sel576;
  end
  assign zext508 = {{9{1'b0}}, ch_wr_mdata_t499};
  assign ch_wr_mdata_t483 = {reg449, proxy445};
  assign add506 = sel541 + bindout383[21:2];
  always @(*) begin
    case (reg427)
      1'h0: sel540 = sel538;
      1'h1: sel540 = sel539;
      default: sel540 = reg427;
    endcase
  end
  assign proxy69 = proxy67[39:20];
  assign proxy68 = proxy67[19:0];
  assign proxy66 = proxy60[131:112];
  assign proxy65 = proxy60[111:92];
  assign proxy64 = proxy60[91:72];
  assign proxy63 = proxy60[71:52];
  assign proxy62 = proxy60[51:32];
  assign eq435 = reg423 == 3'h0;
  assign eq392 = 1'h0 == io_qpi_rd_req_almostfull;
  assign eq512 = 1'h0 == io_qpi_wr_req_almostfull;
  assign zext492 = {{9{1'b0}}, ch_wr_mdata_t483};
  assign add490 = sel527 + reg443[21:2];
  assign sel564 = (reg423 == 3'h1) ? 1'h1 : 1'h0;
  assign proxy267 = bindout273[2:0];
  always @(*) begin
    case (proxy267)
      3'h0: sel411 = proxy62;
      3'h1: sel411 = proxy63;
      3'h2: sel411 = proxy64;
      3'h3: sel411 = proxy65;
      3'h4: sel411 = proxy66;
      3'h5: sel411 = proxy68;
      default: sel411 = proxy69;
    endcase
  end
  assign sub480 = reg465 - sel462;
  assign sub518 = add516 - sel462;
  assign eq522 = reg427 == 1'h1;
  assign sel534 = bindout372 ? bindout383[533:22] : reg474;
  assign sel531 = bindout372 ? zext508 : reg477;
  assign sel528 = bindout372 ? add506 : reg471;
  always @ (posedge clk) begin
    reg427 <= reset ? 1'h0 : sel540;
  end
  assign ch_rd_mdata_t415 = {bindout281, proxy267};
  assign and523 = eq522 & eq512;
  assign proxy582 = proxy580[5:3];
  assign sel535 = sel564 ? reg443[533:22] : sel534;
  assign sel532 = sel564 ? zext492 : sel531;
  assign sel529 = sel564 ? add490 : sel528;
  assign zext419 = {{8{1'b0}}, ch_rd_mdata_t415};
  assign add412 = sel411 + bindout273[22:3];
  assign eq594 = proxy582 == 3'h2;
  assign eq589 = proxy582 == 3'h1;
  assign sel521 = and523 ? sub518 : sub480;
  assign eq584 = proxy582 == 3'h4;
  assign bindin345 = eq435;
  assign bindin321 = io_ctrl_wr_req_data;
  assign bindin315 = io_ctrl_wr_req_valid;
  assign bindin307 = io_PEs_1_wr_req_data;
  assign bindin301 = io_PEs_1_wr_req_valid;
  assign bindin293 = io_PEs_0_wr_req_data;
  assign bindin287 = io_PEs_0_wr_req_valid;
  assign bindin286 = reset;
  assign bindin285 = clk;
  assign bindin276 = eq392;
  assign bindin254 = io_ctrl_rd_req_data;
  assign bindin249 = io_ctrl_rd_req_valid;
  assign bindin241 = io_walkers_1_rd_req_data;
  assign bindin236 = io_walkers_1_rd_req_valid;
  assign bindin228 = io_walkers_0_rd_req_data;
  assign bindin223 = io_walkers_0_rd_req_valid;
  assign bindin222 = reset;
  assign bindin221 = clk;
  assign sel524 = and523 ? 1'h1 : 1'h0;
  assign sel536 = (reg427 == 1'h0) ? sel535 : reg474;
  assign sel533 = (reg427 == 1'h0) ? sel532 : reg477;
  assign sel530 = (reg427 == 1'h0) ? sel529 : reg471;
  ch_xbar_switch_0 __module25__(.clk(bindin285), .reset(bindin286), .io_in_0_valid(bindin287), .io_in_0_data(bindin293), .io_in_1_valid(bindin301), .io_in_1_data(bindin307), .io_in_2_valid(bindin315), .io_in_2_data(bindin321), .io_out_ready(bindin345), .io_in_0_ready(bindout298), .io_in_1_ready(bindout312), .io_in_2_ready(bindout326), .io_out_valid(bindout331), .io_out_data(bindout342), .io_out_grant(bindout350));
  ch_xbar_switch __module22__(.clk(bindin221), .reset(bindin222), .io_in_0_valid(bindin223), .io_in_0_data(bindin228), .io_in_1_valid(bindin236), .io_in_1_data(bindin241), .io_in_2_valid(bindin249), .io_in_2_data(bindin254), .io_out_ready(bindin276), .io_in_0_ready(bindout233), .io_in_1_ready(bindout246), .io_in_2_ready(bindout259), .io_out_valid(bindout264), .io_out_data(bindout273), .io_out_grant(bindout281));
  assign and596 = io_qpi_rd_rsp_valid & eq594;
  assign and591 = io_qpi_rd_rsp_valid & eq589;
  always @ (posedge clk) begin
    reg465 <= sel521;
  end
  assign proxy580 = io_qpi_rd_rsp_mdata[5:0];
  assign and586 = io_qpi_rd_rsp_valid & eq584;
  always @ (posedge clk) begin
    reg468 <= sel524;
  end
  always @ (posedge clk) begin
    reg474 <= sel536;
  end
  always @ (posedge clk) begin
    reg477 <= sel533;
  end
  always @ (posedge clk) begin
    reg471 <= sel530;
  end
  always @ (posedge clk) begin
    reg395 <= bindout264;
  end
  always @ (posedge clk) begin
    reg401 <= zext419;
  end
  always @ (posedge clk) begin
    reg398 <= add412;
  end
  assign proxy581 = proxy580[2:0];
  assign io_walkers_1_rd_rsp_data177 = {io_qpi_rd_rsp_data, proxy581};

  assign io_qpi_rd_req_addr = reg398;
  assign io_qpi_rd_req_mdata = reg401;
  assign io_qpi_rd_req_valid = reg395;
  assign io_qpi_wr_req_addr = reg471;
  assign io_qpi_wr_req_mdata = reg477;
  assign io_qpi_wr_req_data = reg474;
  assign io_qpi_wr_req_valid = reg468;
  assign io_ctrl_rd_req_ready = bindout259;
  assign io_ctrl_wr_req_ready = bindout326;
  assign io_ctrl_rd_rsp_valid = and586;
  assign io_ctrl_rd_rsp_data = io_walkers_1_rd_rsp_data177;
  assign io_ctrl_outstanding_writes = reg465;
  assign io_walkers_0_rd_req_ready = bindout233;
  assign io_walkers_0_rd_rsp_valid = and591;
  assign io_walkers_0_rd_rsp_data = io_walkers_1_rd_rsp_data177;
  assign io_walkers_1_rd_req_ready = bindout246;
  assign io_walkers_1_rd_rsp_valid = and596;
  assign io_walkers_1_rd_rsp_data = io_walkers_1_rd_rsp_data177;
  assign io_PEs_0_wr_req_ready = bindout298;
  assign io_PEs_1_wr_req_ready = bindout312;

endmodule

module ch_queue_1(
  input wire clk,
  input wire reset,
  input wire io_enq_valid,
  input wire[511:0] io_enq_data,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire io_deq_valid,
  output wire[511:0] io_deq_data,
  output wire[2:0] io_size
);
  wire[2:0] add44;
  wire and38;
  wire[2:0] add49;
  wire[2:0] sel46;
  wire[2:0] sel51;
  wire and40;
  wire[1:0] proxy37; // v3738 - /home/blaise/dev/cash/src/htl/queue.h(28)
  reg[2:0] reg26;
  reg[2:0] reg32;
  wire eq61;
  wire ne63;
  wire[1:0] proxy35; // v3737 - /home/blaise/dev/cash/src/htl/queue.h(27)
  reg[511:0] mem53[0:3];
  wire[2:0] sub67;
  wire ne57;
  wire or65;

  assign add44 = reg26 + 3'h1;
  assign and38 = io_deq_ready & ne57;
  assign add49 = reg32 + 3'h1;
  assign sel46 = and38 ? add44 : reg26;
  assign sel51 = and40 ? add49 : reg32;
  assign and40 = io_enq_valid & or65;
  assign proxy37 = reg32[1:0];
  always @ (posedge clk) begin
    reg26 <= sel46;
  end
  always @ (posedge clk) begin
    reg32 <= sel51;
  end
  assign eq61 = reg32[2] == reg26[2];
  assign ne63 = proxy37 != proxy35;
  assign proxy35 = reg26[1:0];
  always @(posedge clk) begin
    if (and40) begin
      mem53[proxy37] = io_enq_data;
    end
  end
  assign sub67 = reg32 - reg26;
  assign ne57 = reg32 != reg26;
  assign or65 = ne63 | eq61;

  assign io_enq_ready = or65;
  assign io_deq_valid = ne57;
  assign io_deq_data = mem53[proxy35];
  assign io_size = sub67;

endmodule

module spmv_device(
  input wire clk,
  input wire reset,
  input wire io_qpi_rd_req_almostfull,
  input wire[13:0] io_qpi_rd_rsp_mdata,
  input wire[511:0] io_qpi_rd_rsp_data,
  input wire io_qpi_rd_rsp_valid,
  input wire io_qpi_wr_req_almostfull,
  input wire[13:0] io_qpi_wr_rsp0_mdata,
  input wire io_qpi_wr_rsp0_valid,
  input wire[13:0] io_qpi_wr_rsp1_mdata,
  input wire io_qpi_wr_rsp1_valid,
  input wire[511:0] io_ctx,
  input wire io_start,
  output wire[19:0] io_qpi_rd_req_addr,
  output wire[13:0] io_qpi_rd_req_mdata,
  output wire io_qpi_rd_req_valid,
  output wire[19:0] io_qpi_wr_req_addr,
  output wire[13:0] io_qpi_wr_req_mdata,
  output wire[511:0] io_qpi_wr_req_data,
  output wire io_qpi_wr_req_valid,
  output wire io_done
);
  wire[63:0] lit674 = 64'h1;
  wire[511:0] lit737 = 512'h0;
  wire[63:0] lit882 = 64'h0;
  wire[4:0] sub942;
  wire[19:0] sub669;
  wire[31:0] add715;
  wire[4:0] sel975; // spmv.cpp(207)
  wire eq687;
  wire bindout504;
  wire[4:0] sel978; // spmv.cpp(224)
  wire[4:0] sel977; // spmv.cpp(224)
  wire[4:0] sel976; // spmv.cpp(205)
  wire[514:0] bindout513;
  wire[31:0] sll719;
  reg[4:0] sel979; // spmv.cpp(202)
  reg[19:0] reg663;
  wire and689;
  wire[31:0] add723;
  reg[4:0] reg637;
  wire ne945;
  wire ne947;
  wire[2:0] proxy478; // v3662 - type(0)
  wire bindin627;
  wire[511:0] bindin609;
  wire bindin606;
  wire bindin605;
  wire bindin604;
  wire eq694;
  wire and696;
  wire[31:0] sra727;
  wire[543:0] srl933;
  wire[511:0] bindout624;
  wire eq886;
  wire and949;
  wire bindout338;
  wire[19:0] add939;
  wire bindout619;
  wire eq999;
  wire and698;
  wire[31:0] sel993; // spmv.cpp(207)
  wire[479:0] sel987; // spmv.cpp(207)
  wire and982;
  wire[1:0] sel972; // spmv.cpp(243)
  wire[1:0] sel970; // spmv.cpp(243)
  wire[31:0] add764;
  wire and1000;
  wire and706;
  wire[19:0] sel961; // spmv.cpp(224)
  wire[19:0] sel960; // spmv.cpp(224)
  wire[19:0] sub732;
  wire[31:0] sel996; // spmv.cpp(224)
  wire[31:0] sel995; // spmv.cpp(224)
  wire[31:0] sel994; // spmv.cpp(205)
  wire[479:0] sel990; // spmv.cpp(224)
  wire[479:0] sel989; // spmv.cpp(224)
  wire[479:0] sel988; // spmv.cpp(205)
  wire[31:0] sel984; // spmv.cpp(224)
  wire[31:0] sel983; // spmv.cpp(224)
  wire[31:0] sel981; // spmv.cpp(207)
  wire[1:0] sel973; // spmv.cpp(224)
  wire[1:0] sel971; // spmv.cpp(224)
  wire[1:0] sel969; // spmv.cpp(205)
  wire sel998; // spmv.cpp(205)
  wire[31:0] zext700;
  reg[19:0] sel962; // spmv.cpp(202)
  reg[31:0] sel997; // spmv.cpp(202)
  reg[479:0] sel991; // spmv.cpp(202)
  reg[31:0] sel985; // spmv.cpp(202)
  reg[1:0] sel974; // spmv.cpp(202)
  wire[31:0] sel873; // spmv.cpp(120)
  wire bindout389;
  wire and709;
  wire[543:0] proxy883; // v3891 - spmv.cpp(197)
  wire[31:0] sel874; // spmv.cpp(117)
  wire[31:0] zext691;
  wire[31:0] add702;
  wire[19:0] proxy666; // v3779 - spmv.cpp(34)
  reg[19:0] reg660;
  reg[19:0] reg646;
  wire[63:0] add676;
  reg[1:0] reg880;
  wire[351:0] bindout241;
  wire[63:0] bindout384;
  wire[351:0] bindout148;
  wire[63:0] bindout333;
  wire[31:0] sel875; // spmv.cpp(102)
  wire and711;
  wire bindout211;
  reg[543:0] reg634;
  wire bindout118;
  wire[95:0] ch_ctrl_stats_t738; // v3814 - spmv.cpp(98)
  wire[1:0] add833;
  wire eq846;
  wire[31:0] sub704;
  wire eq769;
  wire eq759;
  wire eq958;
  wire eq967;
  wire and847;
  wire bindout485;
  wire eq836;
  wire bindout600;
  wire[84:0] bindout284;
  wire bindout271;
  wire bindout586;
  wire[84:0] bindout191;
  wire bindout178;
  wire bindout356;
  wire[514:0] bindout572;
  wire bindout563;
  wire bindout558;
  wire and959;
  wire bindout305;
  wire[514:0] bindout545;
  wire bindout536;
  wire bindout531;
  reg[63:0] reg672;
  wire and968;
  wire[415:0] ch_cu_stats_t807; // v3861 - spmv.cpp(274)
  wire[415:0] ch_cu_stats_t785; // v3841 - spmv.cpp(271)
  reg[95:0] reg652;
  wire[1:0] sel845; // spmv.cpp(159)
  wire[19:0] add757;
  wire bindout499;
  wire and771;
  wire and864;
  wire[63:0] sel957; // spmv.cpp(224)
  wire sel954; // spmv.cpp(224)
  wire[63:0] sel966; // spmv.cpp(224)
  wire sel963; // spmv.cpp(224)
  wire[511:0] zext825;
  wire[511:0] zext803;
  wire and852;
  wire and850;
  reg[31:0] reg640;
  wire[131:0] proxy60; // v27 - a(0)
  wire and869;
  wire and865;
  wire eq827;
  wire[511:0] zext781;
  reg[1:0] reg649;
  wire[19:0] sel851; // spmv.cpp(120)
  wire[19:0] sel849; // spmv.cpp(105)
  wire[31:0] bindout518;
  wire[31:0] proxy61; // v28 - num_parts(0)
  wire[2:0] sel870; // spmv.cpp(169)
  wire[2:0] sel868; // spmv.cpp(161)
  wire[2:0] sel867; // spmv.cpp(147)
  wire[2:0] sel866; // spmv.cpp(137)
  wire[2:0] sel863; // spmv.cpp(122)
  wire[2:0] sel861; // spmv.cpp(105)
  wire bindin375;
  wire[84:0] bindin351;
  wire bindin344;
  wire bindin343;
  wire bindin342;
  wire bindin324;
  wire[84:0] bindin300;
  wire bindin293;
  wire bindin292;
  wire bindin291;
  wire bindin287;
  wire[514:0] bindin266;
  wire bindin261;
  wire bindin258;
  wire[63:0] bindin214;
  wire[63:0] bindin206;
  wire bindin200;
  wire bindin199;
  wire bindin198;
  wire bindin194;
  wire[514:0] bindin173;
  wire bindin168;
  wire bindin165;
  wire[63:0] bindin121;
  wire[63:0] bindin113;
  wire bindin107;
  wire bindin106;
  wire bindin105;
  wire[511:0] sel828;
  wire eq829;
  reg[19:0] sel853; // spmv.cpp(102)
  wire ne754;
  wire ne744;
  reg[2:0] sel871; // spmv.cpp(102)
  wire[511:0] sel830;
  wire[19:0] zext779;
  wire eq855;
  wire eq841;
  wire[533:0] bindout372;
  wire bindout361;
  wire[533:0] bindout321;
  wire bindout310;
  wire[22:0] bindout255;
  wire bindout246;
  wire[22:0] bindout162;
  wire bindout153;
  reg[19:0] reg643;
  wire and856;
  wire sel857; // spmv.cpp(105)
  reg[2:0] reg681;
  wire[511:0] sel878; // spmv.cpp(102)
  wire[19:0] sel877; // spmv.cpp(102)
  reg[1:0] sel876; // spmv.cpp(102)
  reg sel848; // spmv.cpp(102)
  wire sel854; // spmv.cpp(117)
  wire sel859; // spmv.cpp(169)
  wire sel858; // spmv.cpp(104)
  wire[533:0] proxy490; // v3667 - /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] proxy477; // v3661 - /home/blaise/dev/cash/src/module.h(33)
  reg sel860; // spmv.cpp(102)
  wire[533:0] bindin595;
  wire bindin589;
  wire[533:0] bindin581;
  wire bindin575;
  wire[22:0] bindin553;
  wire bindin548;
  wire[22:0] bindin526;
  wire bindin521;
  wire[533:0] bindin494;
  wire bindin488;
  wire[22:0] bindin480;
  wire bindin475;
  wire[511:0] bindin472;
  wire bindin454;
  wire[13:0] bindin451;
  wire bindin448;
  wire[13:0] bindin445;
  wire bindin422;
  wire bindin419;
  wire[511:0] bindin416;
  wire[13:0] bindin413;
  wire bindin395;
  wire bindin394;
  wire bindin393;
  reg reg684;
  wire bindout442;
  wire[511:0] bindout437;
  wire[13:0] bindout432;
  wire[19:0] bindout427;
  wire bindout410;
  wire[13:0] bindout405;
  wire[19:0] bindout400;

  assign sub942 = reg637 - 5'h1;
  assign sub669 = proxy666 - 20'h1;
  assign add715 = proxy61 + 32'h1;
  assign sel975 = eq886 ? 5'h80 : 5'h81;
  assign eq687 = bindout513[2:0] == 3'h0;
  assign sel978 = bindout211 ? sub942 : reg637;
  assign sel977 = bindout118 ? sub942 : reg637;
  assign sel976 = bindout619 ? sel975 : reg637;
  assign sll719 = add715 << 32'h2;
  always @(*) begin
    case (reg880)
      2'h0: sel979 = sel976;
      2'h1: sel979 = sel977;
      2'h2: sel979 = sel978;
      default: sel979 = reg637;
    endcase
  end
  always @ (posedge clk) begin
    reg663 <= sub669;
  end
  assign and689 = bindout504 & eq687;
  assign add723 = sll719 + 32'h3f;
  always @ (posedge clk) begin
    reg637 <= sel979;
  end
  assign ne945 = reg637 != 5'h10;
  assign ne947 = reg660 != reg663;
  assign proxy478 = proxy477[2:0];
  assign bindin627 = sel998;
  assign bindin609 = bindout513[514:3];
  assign bindin606 = and689;
  assign bindin605 = reset;
  assign bindin604 = clk;
  assign eq694 = proxy478 == 3'h0;
  assign and696 = sel854 & bindout485;
  assign sra727 = add723 >>> 32'h6;
  assign srl933 = reg634 >> 32'h20;
  assign eq886 = 5'h0 == reg637;
  assign and949 = ne947 & ne945;
  ch_queue_1 __module29__(.clk(bindin604), .reset(bindin605), .io_enq_valid(bindin606), .io_enq_data(bindin609), .io_deq_ready(bindin627), .io_deq_valid(bindout619), .io_deq_data(bindout624));
  assign add939 = reg660 + 20'h1;
  assign eq999 = reg880 == 2'h0;
  assign and698 = and696 & eq694;
  assign sel993 = eq886 ? reg634[543:512] : bindout624[511:480];
  assign sel987 = eq886 ? bindout624[511:32] : bindout624[479:0];
  assign and982 = bindout619 & eq886;
  assign sel972 = and949 ? 2'h1 : 2'h0;
  assign sel970 = and949 ? 2'h2 : 2'h0;
  assign add764 = reg652[31:0] + 32'h1;
  assign and1000 = eq999 & bindout619;
  assign and706 = bindout118 & bindout338;
  assign sel961 = bindout211 ? add939 : reg660;
  assign sel960 = bindout118 ? add939 : reg660;
  assign sub732 = sra727[19:0] - 20'h1;
  assign sel996 = bindout211 ? srl933[543:512] : reg634[543:512];
  assign sel995 = bindout118 ? srl933[543:512] : reg634[543:512];
  assign sel994 = bindout619 ? sel993 : reg634[543:512];
  assign sel990 = bindout211 ? srl933[511:32] : reg634[511:32];
  assign sel989 = bindout118 ? srl933[511:32] : reg634[511:32];
  assign sel988 = bindout619 ? sel987 : reg634[511:32];
  assign sel984 = bindout211 ? srl933[31:0] : reg634[31:0];
  assign sel983 = bindout118 ? srl933[31:0] : reg634[31:0];
  assign sel981 = and982 ? bindout624[31:0] : reg634[31:0];
  assign sel973 = bindout211 ? sel972 : 2'h1;
  assign sel971 = bindout118 ? sel970 : 2'h2;
  assign sel969 = bindout619 ? 2'h1 : reg880;
  assign sel998 = and1000 ? 1'h1 : 1'h0;
  assign zext700 = {{31{1'b0}}, and698};
  always @(*) begin
    case (reg880)
      2'h1: sel962 = sel960;
      2'h2: sel962 = sel961;
      default: sel962 = reg660;
    endcase
  end
  always @(*) begin
    case (reg880)
      2'h0: sel997 = sel994;
      2'h1: sel997 = sel995;
      2'h2: sel997 = sel996;
      default: sel997 = reg634[543:512];
    endcase
  end
  always @(*) begin
    case (reg880)
      2'h0: sel991 = sel988;
      2'h1: sel991 = sel989;
      2'h2: sel991 = sel990;
      default: sel991 = reg634[511:32];
    endcase
  end
  always @(*) begin
    case (reg880)
      2'h0: sel985 = sel981;
      2'h1: sel985 = sel983;
      2'h2: sel985 = sel984;
      default: sel985 = reg634[31:0];
    endcase
  end
  always @(*) begin
    case (reg880)
      2'h0: sel974 = sel969;
      2'h1: sel974 = sel971;
      2'h2: sel974 = sel973;
      default: sel974 = reg880;
    endcase
  end
  assign sel873 = bindout485 ? reg652[31:0] : add764;
  assign and709 = and706 & bindout211;
  assign proxy883 = {sel997, sel991, sel985};
  assign sel874 = ne754 ? sel873 : add764;
  assign zext691 = {{31{1'b0}}, sel998};
  assign add702 = reg640 + zext700;
  assign proxy666 = proxy61[19:0];
  always @ (posedge clk) begin
    reg660 <= sel962;
  end
  always @ (posedge clk) begin
    reg646 <= sub732;
  end
  assign add676 = reg672 + lit674;
  always @ (posedge clk) begin
    reg880 <= sel974;
  end
  assign sel875 = (reg681 == 3'h1) ? sel874 : reg652[31:0];
  assign and711 = and709 & bindout389;
  always @ (posedge clk) begin
    reg634 <= proxy883;
  end
  assign ch_ctrl_stats_t738 = {reg652[95:32], sel875};
  assign add833 = reg649 + 2'h1;
  assign eq846 = reg681 == 3'h4;
  assign sub704 = add702 - zext691;
  assign eq769 = reg660 == proxy666;
  assign eq759 = reg643 == reg646;
  assign eq958 = reg880 == 2'h2;
  assign eq967 = reg880 == 2'h1;
  assign and847 = eq846 & bindout499;
  assign eq836 = reg649 == 2'h2;
  assign and959 = eq958 & bindout211;
  always @ (posedge clk) begin
    reg672 <= add676;
  end
  assign and968 = eq967 & bindout118;
  assign ch_cu_stats_t807 = {bindout384, bindout241};
  assign ch_cu_stats_t785 = {bindout333, bindout148};
  always @ (posedge clk) begin
    reg652 <= ch_ctrl_stats_t738;
  end
  assign sel845 = and847 ? add833 : reg649;
  assign add757 = reg643 + 20'h1;
  assign and771 = eq769 & and711;
  assign and864 = bindout485 & eq759;
  assign sel957 = and959 ? reg634[63:0] : lit882;
  assign sel954 = and959 ? 1'h1 : 1'h0;
  assign sel966 = and968 ? reg634[63:0] : lit882;
  assign sel963 = and968 ? 1'h1 : 1'h0;
  assign zext825 = {{96{1'b0}}, ch_cu_stats_t807};
  assign zext803 = {{96{1'b0}}, ch_cu_stats_t785};
  assign and852 = ne754 & bindout485;
  assign and850 = io_start & ne744;
  always @ (posedge clk) begin
    reg640 <= sub704;
  end
  assign proxy60 = io_ctx[131:0];
  assign and869 = bindout499 & eq836;
  assign and865 = ne754 & and864;
  assign eq827 = reg649 == 2'h1;
  assign zext781 = {{416{1'b0}}, reg652};
  always @ (posedge clk) begin
    reg649 <= sel845;
  end
  assign sel851 = and852 ? add757 : reg643;
  assign sel849 = and850 ? 20'h0 : reg643;
  assign proxy61 = proxy60[31:0];
  assign sel870 = eq841 ? 3'h0 : reg681;
  assign sel868 = and869 ? 3'h5 : reg681;
  assign sel867 = bindout499 ? 3'h4 : reg681;
  assign sel866 = and771 ? 3'h3 : reg681;
  assign sel863 = and865 ? 3'h2 : reg681;
  assign sel861 = and850 ? 3'h1 : reg681;
  assign bindin375 = bindout600;
  assign bindin351 = bindout284;
  assign bindin344 = bindout271;
  assign bindin343 = reset;
  assign bindin342 = clk;
  assign bindin324 = bindout586;
  assign bindin300 = bindout191;
  assign bindin293 = bindout178;
  assign bindin292 = reset;
  assign bindin291 = clk;
  assign bindin287 = bindout356;
  assign bindin266 = bindout572;
  assign bindin261 = bindout563;
  assign bindin258 = bindout558;
  assign bindin214 = reg672;
  assign bindin206 = sel957;
  assign bindin200 = sel954;
  assign bindin199 = reset;
  assign bindin198 = clk;
  assign bindin194 = bindout305;
  assign bindin173 = bindout545;
  assign bindin168 = bindout536;
  assign bindin165 = bindout531;
  assign bindin121 = reg672;
  assign bindin113 = sel966;
  assign bindin107 = sel963;
  assign bindin106 = reset;
  assign bindin105 = clk;
  assign sel828 = eq827 ? zext803 : zext825;
  assign eq829 = reg649 == 2'h0;
  always @(*) begin
    case (reg681)
      3'h0: sel853 = sel849;
      3'h1: sel853 = sel851;
      default: sel853 = reg643;
    endcase
  end
  assign ne754 = reg640 != 32'h4;
  assign ne744 = proxy61 != 32'h0;
  always @(*) begin
    case (reg681)
      3'h0: sel871 = sel861;
      3'h1: sel871 = sel863;
      3'h2: sel871 = sel866;
      3'h3: sel871 = sel867;
      3'h4: sel871 = sel868;
      3'h5: sel871 = sel870;
      default: sel871 = reg681;
    endcase
  end
  spmv_pe __module18__(.clk(bindin342), .reset(bindin343), .io_req_valid(bindin344), .io_req_data(bindin351), .io_lsu_wr_req_ready(bindin375), .io_req_ready(bindout356), .io_lsu_wr_req_valid(bindout361), .io_lsu_wr_req_data(bindout372), .io_stats(bindout384), .io_is_idle(bindout389));
  spmv_pe __module15__(.clk(bindin291), .reset(bindin292), .io_req_valid(bindin293), .io_req_data(bindin300), .io_lsu_wr_req_ready(bindin324), .io_req_ready(bindout305), .io_lsu_wr_req_valid(bindout310), .io_lsu_wr_req_data(bindout321), .io_stats(bindout333), .io_is_idle(bindout338));
  spmv_dcsc_walk __module8__(.clk(bindin198), .reset(bindin199), .io_ctrl_start_valid(bindin200), .io_ctrl_start_data(bindin206), .io_ctrl_timer(bindin214), .io_lsu_rd_req_ready(bindin258), .io_lsu_rd_rsp_valid(bindin261), .io_lsu_rd_rsp_data(bindin266), .io_pe_ready(bindin287), .io_ctrl_start_ready(bindout211), .io_ctrl_stats(bindout241), .io_lsu_rd_req_valid(bindout246), .io_lsu_rd_req_data(bindout255), .io_pe_valid(bindout271), .io_pe_data(bindout284));
  spmv_dcsc_walk __module1__(.clk(bindin105), .reset(bindin106), .io_ctrl_start_valid(bindin107), .io_ctrl_start_data(bindin113), .io_ctrl_timer(bindin121), .io_lsu_rd_req_ready(bindin165), .io_lsu_rd_rsp_valid(bindin168), .io_lsu_rd_rsp_data(bindin173), .io_pe_ready(bindin194), .io_ctrl_start_ready(bindout118), .io_ctrl_stats(bindout148), .io_lsu_rd_req_valid(bindout153), .io_lsu_rd_req_data(bindout162), .io_pe_valid(bindout178), .io_pe_data(bindout191));
  assign sel830 = eq829 ? zext781 : sel828;
  assign zext779 = {{18{1'b0}}, reg649};
  assign eq855 = reg681 == 3'h1;
  assign eq841 = bindout518 == 32'h0;
  always @ (posedge clk) begin
    reg643 <= sel853;
  end
  assign and856 = eq855 & ne754;
  assign sel857 = ne744 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg681 <= reset ? 3'h0 : sel871;
  end
  assign sel878 = (reg681 == 3'h4) ? sel830 : lit737;
  assign sel877 = (reg681 == 3'h4) ? zext779 : 20'h0;
  always @(*) begin
    case (reg681)
      3'h3: sel876 = 2'h1;
      3'h4: sel876 = 2'h2;
      default: sel876 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg681)
      3'h3: sel848 = 1'h1;
      3'h4: sel848 = 1'h1;
      default: sel848 = 1'h0;
    endcase
  end
  assign sel854 = and856 ? 1'h1 : 1'h0;
  assign sel859 = eq841 ? 1'h1 : reg684;
  assign sel858 = io_start ? sel857 : reg684;
  assign proxy490 = {sel878, sel877, sel876};
  assign proxy477 = {reg643, 3'h0};
  always @(*) begin
    case (reg681)
      3'h0: sel860 = sel858;
      3'h5: sel860 = sel859;
      default: sel860 = reg684;
    endcase
  end
  assign bindin595 = bindout372;
  assign bindin589 = bindout361;
  assign bindin581 = bindout321;
  assign bindin575 = bindout310;
  assign bindin553 = bindout255;
  assign bindin548 = bindout246;
  assign bindin526 = bindout162;
  assign bindin521 = bindout153;
  assign bindin494 = proxy490;
  assign bindin488 = sel848;
  assign bindin480 = proxy477;
  assign bindin475 = sel854;
  assign bindin472 = io_ctx;
  assign bindin454 = io_qpi_wr_rsp1_valid;
  assign bindin451 = io_qpi_wr_rsp1_mdata;
  assign bindin448 = io_qpi_wr_rsp0_valid;
  assign bindin445 = io_qpi_wr_rsp0_mdata;
  assign bindin422 = io_qpi_wr_req_almostfull;
  assign bindin419 = io_qpi_rd_rsp_valid;
  assign bindin416 = io_qpi_rd_rsp_data;
  assign bindin413 = io_qpi_rd_rsp_mdata;
  assign bindin395 = io_qpi_rd_req_almostfull;
  assign bindin394 = reset;
  assign bindin393 = clk;
  spmv_lsu __module21__(.clk(bindin393), .reset(bindin394), .io_qpi_rd_req_almostfull(bindin395), .io_qpi_rd_rsp_mdata(bindin413), .io_qpi_rd_rsp_data(bindin416), .io_qpi_rd_rsp_valid(bindin419), .io_qpi_wr_req_almostfull(bindin422), .io_qpi_wr_rsp0_mdata(bindin445), .io_qpi_wr_rsp0_valid(bindin448), .io_qpi_wr_rsp1_mdata(bindin451), .io_qpi_wr_rsp1_valid(bindin454), .io_ctx(bindin472), .io_ctrl_rd_req_valid(bindin475), .io_ctrl_rd_req_data(bindin480), .io_ctrl_wr_req_valid(bindin488), .io_ctrl_wr_req_data(bindin494), .io_walkers_0_rd_req_valid(bindin521), .io_walkers_0_rd_req_data(bindin526), .io_walkers_1_rd_req_valid(bindin548), .io_walkers_1_rd_req_data(bindin553), .io_PEs_0_wr_req_valid(bindin575), .io_PEs_0_wr_req_data(bindin581), .io_PEs_1_wr_req_valid(bindin589), .io_PEs_1_wr_req_data(bindin595), .io_qpi_rd_req_addr(bindout400), .io_qpi_rd_req_mdata(bindout405), .io_qpi_rd_req_valid(bindout410), .io_qpi_wr_req_addr(bindout427), .io_qpi_wr_req_mdata(bindout432), .io_qpi_wr_req_data(bindout437), .io_qpi_wr_req_valid(bindout442), .io_ctrl_rd_req_ready(bindout485), .io_ctrl_wr_req_ready(bindout499), .io_ctrl_rd_rsp_valid(bindout504), .io_ctrl_rd_rsp_data(bindout513), .io_ctrl_outstanding_writes(bindout518), .io_walkers_0_rd_req_ready(bindout531), .io_walkers_0_rd_rsp_valid(bindout536), .io_walkers_0_rd_rsp_data(bindout545), .io_walkers_1_rd_req_ready(bindout558), .io_walkers_1_rd_rsp_valid(bindout563), .io_walkers_1_rd_rsp_data(bindout572), .io_PEs_0_wr_req_ready(bindout586), .io_PEs_1_wr_req_ready(bindout600));
  always @ (posedge clk) begin
    reg684 <= sel860;
  end

  assign io_qpi_rd_req_addr = bindout400;
  assign io_qpi_rd_req_mdata = bindout405;
  assign io_qpi_rd_req_valid = bindout410;
  assign io_qpi_wr_req_addr = bindout427;
  assign io_qpi_wr_req_mdata = bindout432;
  assign io_qpi_wr_req_data = bindout437;
  assign io_qpi_wr_req_valid = bindout442;
  assign io_done = reg684;

endmodule
