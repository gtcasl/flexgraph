

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
  reg[1:0] reg20; // /home/blaise/dev/cash/src/htl/queue.h(25)
  reg[1:0] reg26; // /home/blaise/dev/cash/src/htl/queue.h(25)
  wire proxy29; // /home/blaise/dev/cash/src/htl/queue.h(27)
  wire proxy31; // /home/blaise/dev/cash/src/htl/queue.h(28)
  wire and32;
  wire and34;
  wire[1:0] add38;
  wire[1:0] sel40;
  wire[1:0] add43;
  wire[1:0] sel45;
  reg[511:0] mem47[0:1]; // /home/blaise/dev/cash/src/htl/queue.h(36)
  wire ne51;
  wire eq55;
  wire ne57;
  wire or59;
  wire[1:0] sub61;

  always @ (posedge clk) begin
    reg20 <= sel40;
  end
  always @ (posedge clk) begin
    reg26 <= sel45;
  end
  assign proxy29 = reg20[0];
  assign proxy31 = reg26[0];
  assign and32 = io_deq_ready & ne51;
  assign and34 = io_enq_valid & or59;
  assign add38 = reg20 + 2'h1;
  assign sel40 = and32 ? add38 : reg20;
  assign add43 = reg26 + 2'h1;
  assign sel45 = and34 ? add43 : reg26;
  always @(posedge clk) begin
    if (and34) begin
      mem47[proxy31] = io_enq_data;
    end
  end
  assign ne51 = reg26 != reg20;
  assign eq55 = reg26[1] == reg20[1];
  assign ne57 = proxy31 != proxy29;
  assign or59 = ne57 | eq55;
  assign sub61 = reg26 - reg20;

  assign io_enq_ready = or59;
  assign io_deq_valid = ne51;
  assign io_deq_data = mem47[proxy29];
  assign io_size = sub61;

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
  reg[5:0] reg20; // /home/blaise/dev/cash/src/htl/queue.h(25)
  reg[5:0] reg26; // /home/blaise/dev/cash/src/htl/queue.h(25)
  wire[4:0] proxy29; // /home/blaise/dev/cash/src/htl/queue.h(27)
  wire[4:0] proxy31; // /home/blaise/dev/cash/src/htl/queue.h(28)
  wire and32;
  wire and34;
  wire[5:0] add38;
  wire[5:0] sel40;
  wire[5:0] add43;
  wire[5:0] sel45;
  reg[511:0] mem47[0:31]; // /home/blaise/dev/cash/src/htl/queue.h(36)
  wire ne51;
  wire eq55;
  wire ne57;
  wire or59;
  wire[5:0] sub61;

  always @ (posedge clk) begin
    reg20 <= sel40;
  end
  always @ (posedge clk) begin
    reg26 <= sel45;
  end
  assign proxy29 = reg20[4:0];
  assign proxy31 = reg26[4:0];
  assign and32 = io_deq_ready & ne51;
  assign and34 = io_enq_valid & or59;
  assign add38 = reg20 + 6'h1;
  assign sel40 = and32 ? add38 : reg20;
  assign add43 = reg26 + 6'h1;
  assign sel45 = and34 ? add43 : reg26;
  always @(posedge clk) begin
    if (and34) begin
      mem47[proxy31] = io_enq_data;
    end
  end
  assign ne51 = reg26 != reg20;
  assign eq55 = reg26[5] == reg20[5];
  assign ne57 = proxy31 != proxy29;
  assign or59 = ne57 | eq55;
  assign sub61 = reg26 - reg20;

  assign io_enq_ready = or59;
  assign io_deq_valid = ne51;
  assign io_deq_data = mem47[proxy29];
  assign io_size = sub61;

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
  wire[351:0] lit280 = 352'h0;
  wire[31:0] proxy6; // start(0)
  wire[31:0] proxy7; // end(0)
  wire[22:0] io_lsu_rd_req_data31; // dcsc_walk.cpp(35)
  wire[2:0] proxy32; // type(0)
  reg[19:0] reg56; // dcsc_walk.cpp(35)
  reg[19:0] reg62; // dcsc_walk.cpp(35)
  reg[19:0] reg65; // dcsc_walk.cpp(35)
  reg[19:0] reg68; // dcsc_walk.cpp(35)
  reg[19:0] reg71; // dcsc_walk.cpp(35)
  reg[19:0] reg74; // dcsc_walk.cpp(35)
  reg[19:0] reg79; // dcsc_walk.cpp(35)
  reg[19:0] reg83; // dcsc_walk.cpp(35)
  reg[19:0] reg86; // dcsc_walk.cpp(35)
  reg[19:0] reg89; // dcsc_walk.cpp(35)
  reg[19:0] reg92; // dcsc_walk.cpp(35)
  reg[5:0] reg95; // dcsc_walk.cpp(35)
  reg[31:0] reg98; // dcsc_walk.cpp(35)
  wire bindin103; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin104; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin105; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin108; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout114; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout117; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin120; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin127; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin128; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin129; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin132; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout138; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout141; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin144; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin151; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin152; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin153; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin156; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout165; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin168; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin175; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin176; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin177; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin180; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout189; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin192; // /home/blaise/dev/cash/src/module.h(33)
  wire[5:0] bindout195; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin199; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin200; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin201; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin204; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout210; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout213; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin216; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin223; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin224; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin225; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin228; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout234; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout237; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin240; // /home/blaise/dev/cash/src/module.h(33)
  reg[7:0] reg245; // dcsc_walk.cpp(35)
  reg[7:0] reg248; // dcsc_walk.cpp(35)
  reg[7:0] reg251; // dcsc_walk.cpp(35)
  reg[7:0] reg254; // dcsc_walk.cpp(35)
  reg[7:0] reg257; // dcsc_walk.cpp(35)
  reg[7:0] reg260; // dcsc_walk.cpp(35)
  reg[511:0] reg263; // dcsc_walk.cpp(35)
  reg[511:0] reg266; // dcsc_walk.cpp(35)
  reg[511:0] reg269; // dcsc_walk.cpp(35)
  reg[511:0] reg272; // dcsc_walk.cpp(35)
  reg[31:0] reg275; // dcsc_walk.cpp(35)
  reg[63:0] reg278; // dcsc_walk.cpp(35)
  reg[351:0] reg294; // dcsc_walk.cpp(35)
  wire eq309;
  wire and311;
  wire eq315;
  wire and317;
  wire eq321;
  wire and323;
  wire eq327;
  wire and329;
  wire eq333;
  wire and335;
  wire eq339;
  wire and341;
  reg[22:0] reg346; // dcsc_walk.cpp(65)
  wire eq349;
  wire eq352;
  wire and354;
  wire and356;
  wire eq361;
  wire and363;
  wire eq366;
  wire and368;
  wire[7:0] add372;
  wire[7:0] sub375;
  reg[7:0] sel377; // dcsc_walk.cpp(74)
  wire eq379;
  wire and383;
  wire eq387;
  wire and389;
  wire eq392;
  wire and394;
  wire[7:0] add397;
  wire[7:0] sub400;
  reg[7:0] sel402; // dcsc_walk.cpp(74)
  wire eq404;
  wire and408;
  wire eq412;
  wire and414;
  wire eq417;
  wire and419;
  wire[7:0] add422;
  wire[7:0] sub425;
  reg[7:0] sel427; // dcsc_walk.cpp(74)
  wire eq429;
  wire and433;
  wire eq437;
  wire and439;
  wire and444;
  wire[7:0] add447;
  wire[7:0] sub450;
  reg[7:0] sel452; // dcsc_walk.cpp(74)
  wire eq454;
  wire and458;
  wire eq462;
  wire and464;
  wire eq467;
  wire and469;
  wire[7:0] add472;
  wire[7:0] sub475;
  reg[7:0] sel477; // dcsc_walk.cpp(74)
  wire eq479;
  wire and483;
  wire eq487;
  wire and489;
  wire eq492;
  wire and494;
  wire[7:0] add497;
  wire[7:0] sub500;
  reg[7:0] sel502; // dcsc_walk.cpp(74)
  reg reg504; // dcsc_walk.cpp(105)
  reg reg507; // dcsc_walk.cpp(106)
  reg reg510; // dcsc_walk.cpp(107)
  reg reg516; // dcsc_walk.cpp(109)
  reg reg519; // dcsc_walk.cpp(110)
  reg[84:0] reg522; // dcsc_walk.cpp(113)
  wire[84:0] ch_pe_req_t528; // dcsc_walk.cpp(114)
  reg reg534; // dcsc_walk.cpp(118)
  wire[351:0] ch_walker_stats_t545; // dcsc_walk.cpp(135)
  wire[19:0] proxy558; // dcsc_walk.cpp(144)
  wire[19:0] proxy560; // dcsc_walk.cpp(145)
  wire[19:0] sub563;
  wire[19:0] sll569;
  wire[19:0] srl573;
  wire ne577;
  wire[31:0] add584;
  wire ne596;
  wire[31:0] add601;
  wire and606;
  wire[19:0] and610;
  wire[19:0] sll614;
  wire[511:0] srl616;
  wire[511:0] srl627;
  wire ne636;
  wire[19:0] add643;
  wire[19:0] and646;
  wire[19:0] sll649;
  wire[511:0] srl651;
  wire[19:0] sll661;
  wire[19:0] srl664;
  wire[19:0] sub685;
  wire[19:0] srl688;
  wire[19:0] sll691;
  wire[19:0] srl694;
  wire eq696;
  wire[19:0] and699;
  wire[19:0] sll702;
  wire[511:0] srl704;
  wire[19:0] and711;
  wire[31:0] sll714;
  wire[31:0] and716;
  wire ne720;
  wire[19:0] sll729;
  wire[19:0] srl732;
  wire eq734;
  wire ne741;
  wire[31:0] add746;
  wire[511:0] srl761;
  wire[31:0] and772;
  wire ne775;
  wire ne789;
  wire[31:0] add793;
  wire[19:0] sll799;
  wire[19:0] srl802;
  wire[19:0] sll805;
  wire[19:0] add809;
  wire[19:0] srl812;
  wire[19:0] sub816;
  wire[19:0] sub821;
  wire ne827;
  wire[31:0] add832;
  wire ne838;
  wire[19:0] add841;
  wire ne843;
  wire[31:0] add849;
  wire eq854;
  wire[19:0] and858;
  wire[19:0] sll861;
  wire[511:0] srl863;
  wire[511:0] srl873;
  wire[19:0] and883;
  wire[19:0] sll886;
  wire[511:0] srl888;
  wire[511:0] srl898;
  wire[19:0] add904;
  wire ne906;
  wire eq912;
  wire[31:0] add922;
  wire ne928;
  wire[511:0] srl947;
  wire[511:0] srl957;
  wire[63:0] sub969;
  wire lt975;
  wire[31:0] sel977;
  wire eq980;
  wire[31:0] sel982;
  reg[31:0] reg985; // /home/blaise/dev/cash/src/logic.h(237)
  wire gt987;
  wire[31:0] sel989;
  wire[31:0] add991;
  wire[31:0] add994;
  wire sel1000; // dcsc_walk.cpp(442)
  wire sel1001; // dcsc_walk.cpp(440)
  wire sel1002; // dcsc_walk.cpp(436)
  wire eq1003;
  wire and1004;
  wire[19:0] sel1011; // dcsc_walk.cpp(139)
  wire[31:0] sel1013; // dcsc_walk.cpp(139)
  wire[31:0] sel1015; // dcsc_walk.cpp(139)
  reg sel1017; // dcsc_walk.cpp(139)
  wire[31:0] sel1018; // dcsc_walk.cpp(411)
  wire[31:0] sel1019; // dcsc_walk.cpp(410)
  wire eq1020;
  wire and1021;
  wire[5:0] sel1022; // dcsc_walk.cpp(139)
  reg sel1023; // dcsc_walk.cpp(139)
  wire[511:0] sel1024; // dcsc_walk.cpp(411)
  wire and1025;
  wire and1027;
  wire[19:0] sel1028; // dcsc_walk.cpp(139)
  wire[31:0] sel1029; // dcsc_walk.cpp(139)
  wire[19:0] sel1030; // dcsc_walk.cpp(388)
  wire and1031;
  reg[19:0] sel1032; // dcsc_walk.cpp(139)
  wire sel1033; // dcsc_walk.cpp(158)
  wire sel1034; // dcsc_walk.cpp(176)
  wire sel1036; // dcsc_walk.cpp(292)
  wire sel1037; // dcsc_walk.cpp(332)
  wire sel1038; // dcsc_walk.cpp(366)
  wire sel1039; // dcsc_walk.cpp(385)
  reg sel1040; // dcsc_walk.cpp(139)
  wire[511:0] sel1041; // dcsc_walk.cpp(309)
  wire eq1042;
  wire and1043;
  reg[2:0] sel1044; // dcsc_walk.cpp(139)
  reg[19:0] sel1045; // dcsc_walk.cpp(139)
  wire[63:0] sel1046; // dcsc_walk.cpp(142)
  wire eq1047;
  wire and1048;
  wire[19:0] sel1049; // dcsc_walk.cpp(142)
  wire[19:0] sel1052; // dcsc_walk.cpp(142)
  reg[19:0] sel1053; // dcsc_walk.cpp(139)
  wire[22:0] sel1054; // dcsc_walk.cpp(142)
  wire[22:0] sel1055; // dcsc_walk.cpp(161)
  wire and1056;
  wire[22:0] sel1057; // dcsc_walk.cpp(179)
  wire and1058;
  wire[22:0] sel1059; // dcsc_walk.cpp(205)
  wire[22:0] sel1060; // dcsc_walk.cpp(193)
  wire[22:0] sel1061; // dcsc_walk.cpp(227)
  wire[22:0] sel1063; // dcsc_walk.cpp(241)
  wire[22:0] sel1064; // dcsc_walk.cpp(261)
  wire[22:0] sel1065; // dcsc_walk.cpp(258)
  wire[22:0] sel1066; // dcsc_walk.cpp(278)
  wire[22:0] sel1067; // dcsc_walk.cpp(295)
  wire and1068;
  wire[22:0] sel1069; // dcsc_walk.cpp(316)
  wire[22:0] sel1070; // dcsc_walk.cpp(309)
  wire[22:0] sel1071; // dcsc_walk.cpp(335)
  wire and1072;
  wire[22:0] sel1073; // dcsc_walk.cpp(369)
  wire and1074;
  wire[22:0] sel1075; // dcsc_walk.cpp(390)
  wire[22:0] sel1076; // dcsc_walk.cpp(388)
  wire[22:0] sel1078; // dcsc_walk.cpp(410)
  wire[22:0] sel1079; // dcsc_walk.cpp(442)
  wire[22:0] sel1080; // dcsc_walk.cpp(440)
  wire[22:0] sel1081; // dcsc_walk.cpp(436)
  wire[22:0] sel1082; // dcsc_walk.cpp(471)
  wire[22:0] sel1083; // dcsc_walk.cpp(469)
  wire[22:0] sel1085; // dcsc_walk.cpp(508)
  reg[22:0] sel1086; // dcsc_walk.cpp(139)
  wire[19:0] sel1087; // dcsc_walk.cpp(193)
  reg[19:0] sel1088; // dcsc_walk.cpp(139)
  wire sel1089; // dcsc_walk.cpp(411)
  wire[511:0] sel1093; // dcsc_walk.cpp(193)
  wire eq1094;
  wire and1095;
  wire[31:0] sel1097; // dcsc_walk.cpp(508)
  wire eq1098;
  wire and1099;
  wire[31:0] sel1101; // dcsc_walk.cpp(508)
  wire[31:0] sel1105; // dcsc_walk.cpp(508)
  wire[31:0] sel1109; // dcsc_walk.cpp(508)
  wire[31:0] sel1113; // dcsc_walk.cpp(161)
  wire[31:0] sel1114; // dcsc_walk.cpp(158)
  wire[31:0] sel1115; // dcsc_walk.cpp(139)
  wire[31:0] sel1117; // dcsc_walk.cpp(179)
  wire[31:0] sel1118; // dcsc_walk.cpp(176)
  wire[31:0] sel1121; // dcsc_walk.cpp(241)
  reg[31:0] sel1122; // dcsc_walk.cpp(139)
  wire[31:0] sel1124; // dcsc_walk.cpp(369)
  wire[31:0] sel1125; // dcsc_walk.cpp(366)
  wire[31:0] sel1126; // dcsc_walk.cpp(139)
  wire[31:0] sel1128; // dcsc_walk.cpp(388)
  wire[31:0] sel1129; // dcsc_walk.cpp(385)
  wire[31:0] sel1130; // dcsc_walk.cpp(410)
  reg[31:0] sel1131; // dcsc_walk.cpp(139)
  wire[31:0] sel1133; // dcsc_walk.cpp(335)
  wire[31:0] sel1134; // dcsc_walk.cpp(332)
  wire[31:0] sel1135; // dcsc_walk.cpp(139)
  wire[31:0] sel1137; // dcsc_walk.cpp(295)
  wire[31:0] sel1138; // dcsc_walk.cpp(292)
  wire[31:0] sel1139; // dcsc_walk.cpp(309)
  reg[31:0] sel1140; // dcsc_walk.cpp(139)
  wire[31:0] sel1142; // dcsc_walk.cpp(436)
  reg[31:0] sel1144; // dcsc_walk.cpp(139)
  wire[19:0] sel1145; // dcsc_walk.cpp(241)
  reg[19:0] sel1146; // dcsc_walk.cpp(139)
  wire[19:0] sel1147; // dcsc_walk.cpp(193)
  wire[19:0] sel1148; // dcsc_walk.cpp(436)
  reg[19:0] sel1149; // dcsc_walk.cpp(139)
  wire[19:0] sel1150; // dcsc_walk.cpp(139)
  wire[19:0] sel1151; // dcsc_walk.cpp(278)
  wire[19:0] sel1152; // dcsc_walk.cpp(139)
  wire sel1153; // dcsc_walk.cpp(193)
  wire sel1154; // dcsc_walk.cpp(241)
  reg sel1155; // dcsc_walk.cpp(139)
  wire sel1156; // dcsc_walk.cpp(309)
  wire sel1159; // dcsc_walk.cpp(193)
  wire[19:0] sel1162; // dcsc_walk.cpp(139)
  wire[511:0] sel1163; // dcsc_walk.cpp(193)
  wire[19:0] sel1166; // dcsc_walk.cpp(258)
  wire[19:0] sel1167; // dcsc_walk.cpp(139)

  assign proxy6 = io_ctrl_start_data[31:0];
  assign proxy7 = io_ctrl_start_data[63:32];
  assign io_lsu_rd_req_data31 = {sel1045, sel1044};
  assign proxy32 = io_lsu_rd_req_data31[2:0];
  always @ (posedge clk) begin
    reg56 <= sel1053;
  end
  always @ (posedge clk) begin
    reg62 <= sel1049;
  end
  always @ (posedge clk) begin
    reg65 <= sel1088;
  end
  always @ (posedge clk) begin
    reg68 <= sel1149;
  end
  always @ (posedge clk) begin
    reg71 <= sel1146;
  end
  always @ (posedge clk) begin
    reg74 <= sel1162;
  end
  always @ (posedge clk) begin
    reg79 <= reset ? 20'hfffff : sel1167;
  end
  always @ (posedge clk) begin
    reg83 <= reset ? 20'hfffff : sel1152;
  end
  always @ (posedge clk) begin
    reg86 <= sel1032;
  end
  always @ (posedge clk) begin
    reg89 <= sel1028;
  end
  always @ (posedge clk) begin
    reg92 <= sel1150;
  end
  always @ (posedge clk) begin
    reg95 <= sel1022;
  end
  always @ (posedge clk) begin
    reg98 <= sel1019;
  end
  assign bindin103 = clk;
  assign bindin104 = reset;
  ch_queue __module2__(.clk(bindin103), .reset(bindin104), .io_enq_valid(bindin105), .io_enq_data(bindin108), .io_deq_ready(bindin120), .io_deq_valid(bindout114), .io_deq_data(bindout117));
  assign bindin105 = and311;
  assign bindin108 = io_lsu_rd_rsp_data[514:3];
  assign bindin120 = reg504;
  assign bindin127 = clk;
  assign bindin128 = reset;
  ch_queue __module3__(.clk(bindin127), .reset(bindin128), .io_enq_valid(bindin129), .io_enq_data(bindin132), .io_deq_ready(bindin144), .io_deq_valid(bindout138), .io_deq_data(bindout141));
  assign bindin129 = and317;
  assign bindin132 = io_lsu_rd_rsp_data[514:3];
  assign bindin144 = reg507;
  assign bindin151 = clk;
  assign bindin152 = reset;
  ch_queue_0 __module4__(.clk(bindin151), .reset(bindin152), .io_enq_valid(bindin153), .io_enq_data(bindin156), .io_deq_ready(bindin168), .io_deq_data(bindout165));
  assign bindin153 = and323;
  assign bindin156 = io_lsu_rd_rsp_data[514:3];
  assign bindin168 = reg510;
  assign bindin175 = clk;
  assign bindin176 = reset;
  ch_queue_0 __module5__(.clk(bindin175), .reset(bindin176), .io_enq_valid(bindin177), .io_enq_data(bindin180), .io_deq_ready(bindin192), .io_deq_data(bindout189), .io_size(bindout195));
  assign bindin177 = and329;
  assign bindin180 = io_lsu_rd_rsp_data[514:3];
  assign bindin192 = reg510;
  assign bindin199 = clk;
  assign bindin200 = reset;
  ch_queue __module6__(.clk(bindin199), .reset(bindin200), .io_enq_valid(bindin201), .io_enq_data(bindin204), .io_deq_ready(bindin216), .io_deq_valid(bindout210), .io_deq_data(bindout213));
  assign bindin201 = and335;
  assign bindin204 = io_lsu_rd_rsp_data[514:3];
  assign bindin216 = reg516;
  assign bindin223 = clk;
  assign bindin224 = reset;
  ch_queue __module7__(.clk(bindin223), .reset(bindin224), .io_enq_valid(bindin225), .io_enq_data(bindin228), .io_deq_ready(bindin240), .io_deq_valid(bindout234), .io_deq_data(bindout237));
  assign bindin225 = and341;
  assign bindin228 = io_lsu_rd_rsp_data[514:3];
  assign bindin240 = reg519;
  always @ (posedge clk) begin
    reg245 <= sel377;
  end
  always @ (posedge clk) begin
    reg248 <= sel402;
  end
  always @ (posedge clk) begin
    reg251 <= sel427;
  end
  always @ (posedge clk) begin
    reg254 <= sel452;
  end
  always @ (posedge clk) begin
    reg257 <= sel477;
  end
  always @ (posedge clk) begin
    reg260 <= sel502;
  end
  always @ (posedge clk) begin
    reg263 <= sel1163;
  end
  always @ (posedge clk) begin
    reg266 <= sel1093;
  end
  always @ (posedge clk) begin
    reg269 <= sel1041;
  end
  always @ (posedge clk) begin
    reg272 <= sel1024;
  end
  always @ (posedge clk) begin
    reg275 <= sel1029;
  end
  always @ (posedge clk) begin
    reg278 <= sel1046;
  end
  always @ (posedge clk) begin
    reg294 <= reset ? lit280 : ch_walker_stats_t545;
  end
  assign eq309 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign and311 = io_lsu_rd_rsp_valid & eq309;
  assign eq315 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign and317 = io_lsu_rd_rsp_valid & eq315;
  assign eq321 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign and323 = io_lsu_rd_rsp_valid & eq321;
  assign eq327 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign and329 = io_lsu_rd_rsp_valid & eq327;
  assign eq333 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  assign and335 = io_lsu_rd_rsp_valid & eq333;
  assign eq339 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign and341 = io_lsu_rd_rsp_valid & eq339;
  always @ (posedge clk) begin
    reg346 <= reset ? 23'h1 : sel1086;
  end
  assign eq349 = reg346 == 23'h1;
  assign eq352 = proxy32 == 3'h1;
  assign and354 = sel1040 & io_lsu_rd_req_ready;
  assign and356 = and354 & eq352;
  assign eq361 = 1'h0 == and356;
  assign and363 = eq361 & reg504;
  assign eq366 = 1'h0 == reg504;
  assign and368 = and356 & eq366;
  assign add372 = reg245 + 8'h1;
  assign sub375 = reg245 - 8'h1;
  always @(*) begin
    if (and368)
      sel377 = add372;
    else if (and363)
      sel377 = sub375;
    else
      sel377 = reg245;
  end
  assign eq379 = proxy32 == 3'h2;
  assign and383 = and354 & eq379;
  assign eq387 = 1'h0 == and383;
  assign and389 = eq387 & reg507;
  assign eq392 = 1'h0 == reg507;
  assign and394 = and383 & eq392;
  assign add397 = reg248 + 8'h1;
  assign sub400 = reg248 - 8'h1;
  always @(*) begin
    if (and394)
      sel402 = add397;
    else if (and389)
      sel402 = sub400;
    else
      sel402 = reg248;
  end
  assign eq404 = proxy32 == 3'h3;
  assign and408 = and354 & eq404;
  assign eq412 = 1'h0 == and408;
  assign and414 = eq412 & reg510;
  assign eq417 = 1'h0 == reg510;
  assign and419 = and408 & eq417;
  assign add422 = reg251 + 8'h1;
  assign sub425 = reg251 - 8'h1;
  always @(*) begin
    if (and419)
      sel427 = add422;
    else if (and414)
      sel427 = sub425;
    else
      sel427 = reg251;
  end
  assign eq429 = proxy32 == 3'h4;
  assign and433 = and354 & eq429;
  assign eq437 = 1'h0 == and433;
  assign and439 = eq437 & reg510;
  assign and444 = and433 & eq417;
  assign add447 = reg254 + 8'h1;
  assign sub450 = reg254 - 8'h1;
  always @(*) begin
    if (and444)
      sel452 = add447;
    else if (and439)
      sel452 = sub450;
    else
      sel452 = reg254;
  end
  assign eq454 = proxy32 == 3'h5;
  assign and458 = and354 & eq454;
  assign eq462 = 1'h0 == and458;
  assign and464 = eq462 & reg516;
  assign eq467 = 1'h0 == reg516;
  assign and469 = and458 & eq467;
  assign add472 = reg257 + 8'h1;
  assign sub475 = reg257 - 8'h1;
  always @(*) begin
    if (and469)
      sel477 = add472;
    else if (and464)
      sel477 = sub475;
    else
      sel477 = reg257;
  end
  assign eq479 = proxy32 == 3'h6;
  assign and483 = and354 & eq479;
  assign eq487 = 1'h0 == and483;
  assign and489 = eq487 & reg519;
  assign eq492 = 1'h0 == reg519;
  assign and494 = and483 & eq492;
  assign add497 = reg260 + 8'h1;
  assign sub500 = reg260 - 8'h1;
  always @(*) begin
    if (and494)
      sel502 = add497;
    else if (and489)
      sel502 = sub500;
    else
      sel502 = reg260;
  end
  always @ (posedge clk) begin
    reg504 <= sel1159;
  end
  always @ (posedge clk) begin
    reg507 <= sel1155;
  end
  always @ (posedge clk) begin
    reg510 <= sel1002;
  end
  always @ (posedge clk) begin
    reg516 <= sel1089;
  end
  always @ (posedge clk) begin
    reg519 <= sel1156;
  end
  always @ (posedge clk) begin
    reg522 <= ch_pe_req_t528;
  end
  assign ch_pe_req_t528 = {sel1017, sel1015, sel1013, sel1011};
  always @ (posedge clk) begin
    reg534 <= sel1023;
  end
  assign ch_walker_stats_t545 = {sel1144, sel1140, sel1135, sel1131, sel1126, sel1122, sel1115, sel1109, sel1105, sel1101, sel1097};
  assign proxy558 = proxy6[19:0];
  assign proxy560 = proxy7[19:0];
  assign sub563 = proxy560 - 20'h1;
  assign sll569 = reg56 << 32'h2;
  assign srl573 = sll569 >> 32'h6;
  assign ne577 = reg245 != 8'h2;
  assign add584 = reg294[159:128] + 32'h1;
  assign ne596 = reg248 != 8'h2;
  assign add601 = reg294[191:160] + 32'h1;
  assign and606 = bindout114 & bindout138;
  assign and610 = reg56 & 20'hf;
  assign sll614 = and610 << 32'h5;
  assign srl616 = bindout117 >> sll614;
  assign srl627 = bindout141 >> sll614;
  assign ne636 = and610 != 20'hf;
  assign add643 = reg56 + 20'h1;
  assign and646 = add643 & 20'hf;
  assign sll649 = and646 << 32'h5;
  assign srl651 = reg266 >> sll649;
  assign sll661 = add643 << 32'h2;
  assign srl664 = sll661 >> 32'h6;
  assign sub685 = reg71 - 20'h1;
  assign srl688 = reg65 >> 32'h5;
  assign sll691 = srl688 << 32'h2;
  assign srl694 = sll691 >> 32'h6;
  assign eq696 = srl694 == reg79;
  assign and699 = srl688 & 20'hf;
  assign sll702 = and699 << 32'h5;
  assign srl704 = reg269 >> sll702;
  assign and711 = reg65 & 20'h1f;
  assign sll714 = 32'h1 << and711;
  assign and716 = srl704[31:0] & sll714;
  assign ne720 = and716 != 32'h0;
  assign sll729 = reg65 << 32'h2;
  assign srl732 = sll729 >> 32'h6;
  assign eq734 = srl732 == reg83;
  assign ne741 = reg260 != 8'h2;
  assign add746 = reg294[319:288] + 32'h1;
  assign srl761 = bindout237 >> sll702;
  assign and772 = srl761[31:0] & sll714;
  assign ne775 = and772 != 32'h0;
  assign ne789 = reg257 != 8'h2;
  assign add793 = reg294[287:256] + 32'h1;
  assign sll799 = reg68 << 32'h2;
  assign srl802 = sll799 >> 32'h6;
  assign sll805 = reg71 << 32'h2;
  assign add809 = sll805 + 20'h3f;
  assign srl812 = add809 >> 32'h6;
  assign sub816 = reg89 - reg86;
  assign sub821 = reg89 - 20'h1;
  assign ne827 = reg251 != 8'h20;
  assign add832 = reg294[223:192] + 32'h1;
  assign ne838 = reg254 != 8'h20;
  assign add841 = reg86 + 20'h1;
  assign ne843 = reg86 != reg92;
  assign add849 = reg294[255:224] + 32'h1;
  assign eq854 = bindout195 == reg95;
  assign and858 = reg65 & 20'hf;
  assign sll861 = and858 << 32'h5;
  assign srl863 = bindout213 >> sll861;
  assign srl873 = reg272 >> sll861;
  assign and883 = reg68 & 20'hf;
  assign sll886 = and883 << 32'h5;
  assign srl888 = bindout165 >> sll886;
  assign srl898 = bindout189 >> sll886;
  assign add904 = reg68 + 20'h1;
  assign ne906 = reg68 != reg74;
  assign eq912 = and883 == 20'hf;
  assign add922 = reg294[351:320] + 32'h1;
  assign ne928 = reg56 != reg62;
  assign srl947 = reg263 >> sll614;
  assign srl957 = reg266 >> sll614;
  assign sub969 = io_ctrl_timer - reg278;
  assign lt975 = reg294[63:32] < reg275;
  assign sel977 = lt975 ? reg294[63:32] : reg275;
  assign eq980 = reg294[63:32] == 32'h0;
  assign sel982 = eq980 ? reg275 : sel977;
  always @ (posedge clk) begin
    reg985 <= reset ? sel982 : reg985;
  end
  assign gt987 = reg294[63:32] > reg275;
  assign sel989 = gt987 ? reg294[63:32] : reg275;
  assign add991 = reg294[127:96] + reg275;
  assign add994 = reg294[31:0] + 32'h1;
  assign sel1000 = eq912 ? 1'h1 : 1'h0;
  assign sel1001 = ne906 ? sel1000 : 1'h1;
  assign sel1002 = and1004 ? sel1001 : 1'h0;
  assign eq1003 = reg346 == 23'h40000;
  assign and1004 = eq1003 & io_pe_ready;
  assign sel1011 = (reg346 == 23'h40000) ? srl888[19:0] : reg522[19:0];
  assign sel1013 = (reg346 == 23'h40000) ? srl898[31:0] : reg522[51:20];
  assign sel1015 = (reg346 == 23'h40000) ? reg98 : reg522[83:52];
  always @(*) begin
    case (reg346)
      23'h040000: sel1017 = 1'h0;
      23'h800000: sel1017 = 1'h1;
      default: sel1017 = reg522[84];
    endcase
  end
  assign sel1018 = bindout210 ? srl863[31:0] : srl873[31:0];
  assign sel1019 = and1021 ? sel1018 : reg98;
  assign eq1020 = reg346 == 23'h20000;
  assign and1021 = eq1020 & eq854;
  assign sel1022 = (reg346 == 23'h4000) ? sub816[5:0] : reg95;
  always @(*) begin
    case (reg346)
      23'h040000: sel1023 = 1'h1;
      23'h800000: sel1023 = 1'h1;
      default: sel1023 = 1'h0;
    endcase
  end
  assign sel1024 = and1027 ? bindout213 : reg272;
  assign and1025 = eq854 & bindout210;
  assign and1027 = eq1020 & and1025;
  assign sel1028 = (reg346 == 23'h2000) ? srl812 : reg89;
  assign sel1029 = (reg346 == 23'h400000) ? sub969[31:0] : reg275;
  assign sel1030 = and1031 ? add841 : reg86;
  assign and1031 = ne838 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg346)
      23'h002000: sel1032 = srl802;
      23'h010000: sel1032 = sel1030;
      default: sel1032 = reg86;
    endcase
  end
  assign sel1033 = ne577 ? 1'h1 : 1'h0;
  assign sel1034 = ne596 ? 1'h1 : 1'h0;
  assign sel1036 = ne741 ? 1'h1 : 1'h0;
  assign sel1037 = ne789 ? 1'h1 : 1'h0;
  assign sel1038 = ne827 ? 1'h1 : 1'h0;
  assign sel1039 = ne838 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg346)
      23'h000002: sel1040 = sel1033;
      23'h000004: sel1040 = sel1034;
      23'h000020: sel1040 = sel1034;
      23'h000400: sel1040 = sel1036;
      23'h001000: sel1040 = sel1037;
      23'h008000: sel1040 = sel1038;
      23'h010000: sel1040 = sel1039;
      default: sel1040 = 1'h0;
    endcase
  end
  assign sel1041 = and1043 ? bindout237 : reg269;
  assign eq1042 = reg346 == 23'h800;
  assign and1043 = eq1042 & bindout234;
  always @(*) begin
    case (reg346)
      23'h000002: sel1044 = 3'h1;
      23'h000004: sel1044 = 3'h2;
      23'h000020: sel1044 = 3'h2;
      23'h000400: sel1044 = 3'h6;
      23'h001000: sel1044 = 3'h5;
      23'h008000: sel1044 = 3'h3;
      23'h010000: sel1044 = 3'h4;
      default: sel1044 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg346)
      23'h000002: sel1045 = srl573;
      23'h000004: sel1045 = srl573;
      23'h000020: sel1045 = srl664;
      23'h000400: sel1045 = reg79;
      23'h001000: sel1045 = srl732;
      23'h008000: sel1045 = reg86;
      23'h010000: sel1045 = reg86;
      default: sel1045 = 20'h0;
    endcase
  end
  assign sel1046 = and1048 ? io_ctrl_timer : reg278;
  assign eq1047 = reg346 == 23'h1;
  assign and1048 = eq1047 & io_ctrl_start_valid;
  assign sel1049 = and1048 ? sub563 : reg62;
  assign sel1052 = io_ctrl_start_valid ? proxy558 : reg56;
  always @(*) begin
    case (reg346)
      23'h000001: sel1053 = sel1052;
      23'h100000: sel1053 = add643;
      default: sel1053 = reg56;
    endcase
  end
  assign sel1054 = io_ctrl_start_valid ? 23'h2 : reg346;
  assign sel1055 = and1056 ? 23'h4 : reg346;
  assign and1056 = ne577 & io_lsu_rd_req_ready;
  assign sel1057 = and1058 ? 23'h10 : reg346;
  assign and1058 = ne596 & io_lsu_rd_req_ready;
  assign sel1059 = ne636 ? 23'h80 : 23'h20;
  assign sel1060 = and606 ? sel1059 : reg346;
  assign sel1061 = and1058 ? 23'h40 : reg346;
  assign sel1063 = bindout138 ? 23'h100 : reg346;
  assign sel1064 = ne720 ? 23'h200 : 23'h100000;
  assign sel1065 = eq696 ? sel1064 : 23'h400;
  assign sel1066 = eq734 ? 23'h2000 : 23'h1000;
  assign sel1067 = and1068 ? 23'h800 : reg346;
  assign and1068 = ne741 & io_lsu_rd_req_ready;
  assign sel1069 = ne775 ? 23'h200 : 23'h100000;
  assign sel1070 = bindout234 ? sel1069 : reg346;
  assign sel1071 = and1072 ? 23'h2000 : reg346;
  assign and1072 = ne789 & io_lsu_rd_req_ready;
  assign sel1073 = and1074 ? 23'h10000 : reg346;
  assign and1074 = ne827 & io_lsu_rd_req_ready;
  assign sel1075 = ne843 ? 23'h8000 : 23'h20000;
  assign sel1076 = and1031 ? sel1075 : reg346;
  assign sel1078 = eq854 ? 23'h40000 : reg346;
  assign sel1079 = eq912 ? 23'h80000 : reg346;
  assign sel1080 = ne906 ? sel1079 : 23'h100000;
  assign sel1081 = io_pe_ready ? sel1080 : reg346;
  assign sel1082 = ne636 ? 23'h200000 : 23'h2;
  assign sel1083 = ne928 ? sel1082 : 23'h400000;
  assign sel1085 = io_pe_ready ? 23'h1 : reg346;
  always @(*) begin
    case (reg346)
      23'h000001: sel1086 = sel1054;
      23'h000002: sel1086 = sel1055;
      23'h000004: sel1086 = sel1057;
      23'h000010: sel1086 = sel1060;
      23'h000080: sel1086 = 23'h100;
      23'h000020: sel1086 = sel1061;
      23'h000040: sel1086 = sel1063;
      23'h000100: sel1086 = sel1065;
      23'h000200: sel1086 = sel1066;
      23'h000400: sel1086 = sel1067;
      23'h000800: sel1086 = sel1070;
      23'h001000: sel1086 = sel1071;
      23'h002000: sel1086 = 23'h4000;
      23'h004000: sel1086 = 23'h8000;
      23'h008000: sel1086 = sel1073;
      23'h010000: sel1086 = sel1076;
      23'h020000: sel1086 = sel1078;
      23'h040000: sel1086 = sel1081;
      23'h080000: sel1086 = 23'h40000;
      23'h100000: sel1086 = sel1083;
      23'h200000: sel1086 = sel1059;
      23'h400000: sel1086 = 23'h800000;
      23'h800000: sel1086 = sel1085;
      default: sel1086 = reg346;
    endcase
  end
  assign sel1087 = and606 ? srl616[19:0] : reg65;
  always @(*) begin
    case (reg346)
      23'h000010: sel1088 = sel1087;
      23'h200000: sel1088 = srl947[19:0];
      default: sel1088 = reg65;
    endcase
  end
  assign sel1089 = and1027 ? 1'h1 : 1'h0;
  assign sel1093 = and1095 ? bindout141 : reg266;
  assign eq1094 = reg346 == 23'h10;
  assign and1095 = eq1094 & and606;
  assign sel1097 = and1099 ? add994 : reg294[31:0];
  assign eq1098 = reg346 == 23'h800000;
  assign and1099 = eq1098 & io_pe_ready;
  assign sel1101 = and1099 ? reg985 : reg294[63:32];
  assign sel1105 = and1099 ? sel989 : reg294[95:64];
  assign sel1109 = and1099 ? add991 : reg294[127:96];
  assign sel1113 = io_lsu_rd_req_ready ? reg294[159:128] : add584;
  assign sel1114 = ne577 ? sel1113 : add584;
  assign sel1115 = (reg346 == 23'h2) ? sel1114 : reg294[159:128];
  assign sel1117 = io_lsu_rd_req_ready ? reg294[191:160] : add601;
  assign sel1118 = ne596 ? sel1117 : add601;
  assign sel1121 = bindout138 ? reg294[191:160] : add601;
  always @(*) begin
    case (reg346)
      23'h000004: sel1122 = sel1118;
      23'h000020: sel1122 = sel1118;
      23'h000040: sel1122 = sel1121;
      default: sel1122 = reg294[191:160];
    endcase
  end
  assign sel1124 = io_lsu_rd_req_ready ? reg294[223:192] : add832;
  assign sel1125 = ne827 ? sel1124 : add832;
  assign sel1126 = (reg346 == 23'h8000) ? sel1125 : reg294[223:192];
  assign sel1128 = io_lsu_rd_req_ready ? reg294[255:224] : add849;
  assign sel1129 = ne838 ? sel1128 : add849;
  assign sel1130 = eq854 ? reg294[255:224] : add849;
  always @(*) begin
    case (reg346)
      23'h010000: sel1131 = sel1129;
      23'h020000: sel1131 = sel1130;
      default: sel1131 = reg294[255:224];
    endcase
  end
  assign sel1133 = io_lsu_rd_req_ready ? reg294[287:256] : add793;
  assign sel1134 = ne789 ? sel1133 : add793;
  assign sel1135 = (reg346 == 23'h1000) ? sel1134 : reg294[287:256];
  assign sel1137 = io_lsu_rd_req_ready ? reg294[319:288] : add746;
  assign sel1138 = ne741 ? sel1137 : add746;
  assign sel1139 = bindout234 ? reg294[319:288] : add746;
  always @(*) begin
    case (reg346)
      23'h000400: sel1140 = sel1138;
      23'h000800: sel1140 = sel1139;
      default: sel1140 = reg294[319:288];
    endcase
  end
  assign sel1142 = io_pe_ready ? reg294[351:320] : add922;
  always @(*) begin
    case (reg346)
      23'h040000: sel1144 = sel1142;
      23'h800000: sel1144 = sel1142;
      default: sel1144 = reg294[351:320];
    endcase
  end
  assign sel1145 = bindout138 ? bindout141[19:0] : reg71;
  always @(*) begin
    case (reg346)
      23'h000080: sel1146 = srl651[19:0];
      23'h000040: sel1146 = sel1145;
      default: sel1146 = reg71;
    endcase
  end
  assign sel1147 = and606 ? srl627[19:0] : reg68;
  assign sel1148 = io_pe_ready ? add904 : reg68;
  always @(*) begin
    case (reg346)
      23'h000010: sel1149 = sel1147;
      23'h040000: sel1149 = sel1148;
      23'h200000: sel1149 = srl957[19:0];
      default: sel1149 = reg68;
    endcase
  end
  assign sel1150 = (reg346 == 23'h4000) ? sub821 : reg92;
  assign sel1151 = eq734 ? reg83 : srl732;
  assign sel1152 = (reg346 == 23'h200) ? sel1151 : reg83;
  assign sel1153 = and606 ? 1'h1 : 1'h0;
  assign sel1154 = bindout138 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg346)
      23'h000010: sel1155 = sel1153;
      23'h000040: sel1155 = sel1154;
      default: sel1155 = 1'h0;
    endcase
  end
  assign sel1156 = and1043 ? 1'h1 : 1'h0;
  assign sel1159 = and1095 ? 1'h1 : 1'h0;
  assign sel1162 = (reg346 == 23'h100) ? sub685 : reg74;
  assign sel1163 = and1095 ? bindout117 : reg263;
  assign sel1166 = eq696 ? reg79 : srl694;
  assign sel1167 = (reg346 == 23'h100) ? sel1166 : reg79;

  assign io_ctrl_start_ready = eq349;
  assign io_ctrl_stats = reg294;
  assign io_lsu_rd_req_valid = sel1040;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data31;
  assign io_pe_valid = reg534;
  assign io_pe_data = reg522;

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
  wire[20:0] sel33;
  reg[20:0] reg41; // /home/blaise/dev/cash/src/htl/pipe.h(22)
  wire sel52;
  reg reg56; // /home/blaise/dev/cash/src/htl/pipe.h(23)
  wire[20:0] sel68;
  reg[20:0] reg76; // /home/blaise/dev/cash/src/htl/pipe.h(22)
  wire sel84;
  reg reg88; // /home/blaise/dev/cash/src/htl/pipe.h(23)
  wire[20:0] sel100;
  reg[20:0] reg108; // /home/blaise/dev/cash/src/htl/pipe.h(22)
  wire sel116;
  reg reg120; // /home/blaise/dev/cash/src/htl/pipe.h(23)

  assign sel33 = io_deq_ready ? io_enq_data : reg41;
  always @ (posedge clk) begin
    reg41 <= sel33;
  end
  assign sel52 = io_deq_ready ? io_enq_valid : reg56;
  always @ (posedge clk) begin
    reg56 <= sel52;
  end
  assign sel68 = io_deq_ready ? reg41 : reg76;
  always @ (posedge clk) begin
    reg76 <= sel68;
  end
  assign sel84 = io_deq_ready ? reg56 : reg88;
  always @ (posedge clk) begin
    reg88 <= sel84;
  end
  assign sel100 = io_deq_ready ? reg76 : reg108;
  always @ (posedge clk) begin
    reg108 <= sel100;
  end
  assign sel116 = io_deq_ready ? reg88 : reg120;
  always @ (posedge clk) begin
    reg120 <= sel116;
  end

  assign io_enq_ready = io_deq_ready;
  assign io_deq_valid = reg120;
  assign io_deq_data = reg108;

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
  wire[511:0] lit243 = 512'h0;
  wire[19:0] proxy5; // a_rowind(0)
  wire proxy8; // is_end(0)
  wire[533:0] io_lsu_wr_req_data16; // pe.cpp(14)
  wire bindin37; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin38; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin39; // /home/blaise/dev/cash/src/module.h(33)
  wire[20:0] proxy41; // /home/blaise/dev/cash/src/module.h(33)
  wire[20:0] bindin44; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout47; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout50; // /home/blaise/dev/cash/src/module.h(33)
  wire[19:0] proxy53; // a_rowind(0)
  wire proxy54; // is_end(0)
  wire[20:0] bindout55; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin58; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin62; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin63; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin64; // /home/blaise/dev/cash/src/module.h(33)
  wire[20:0] proxy66; // /home/blaise/dev/cash/src/module.h(33)
  wire proxy68; // is_end(0)
  wire[20:0] bindin69; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout75; // /home/blaise/dev/cash/src/module.h(33)
  wire[20:0] bindout80; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin83; // /home/blaise/dev/cash/src/module.h(33)
  reg[31:0] mem84[0:31]; // pe.cpp(14)
  reg[31:0] reg86; // pe.cpp(14)
  reg[31:0] reg89; // pe.cpp(14)
  reg[31:0] reg92; // pe.cpp(14)
  reg[31:0] reg95; // pe.cpp(14)
  reg[19:0] reg106; // pe.cpp(14)
  reg[63:0] reg113; // pe.cpp(14)
  reg[1:0] reg121; // pe.cpp(30)
  wire[63:0] ch_pe_stats_t123; // pe.cpp(33)
  wire[31:0] sll128;
  wire[31:0] sll131;
  wire eq135;
  wire eq138;
  wire or140;
  wire eq143;
  wire[31:0] and145;
  wire eq149;
  wire and151;
  wire or153;
  wire eq156;
  wire eq159;
  wire and161;
  wire[31:0] and165;
  wire ne168;
  wire[31:0] sel171;
  wire and173;
  wire[31:0] udfs175;
  wire and177;
  wire[19:0] and181;
  wire[4:0] proxy183; // pe.cpp(72)
  wire[31:0] udfs184;
  wire and190;
  wire eq193;
  wire and195;
  wire eq198;
  wire and200;
  wire[31:0] add203;
  wire[31:0] sub206;
  reg[31:0] sel208; // pe.cpp(79)
  wire eq210;
  wire and212;
  wire eq215;
  wire and217;
  wire ne219;
  wire and221;
  wire[31:0] inv223;
  wire[31:0] and225;
  wire[31:0] or227;
  wire[31:0] or233;
  wire[31:0] sel235; // pe.cpp(90)
  reg[31:0] sel236; // pe.cpp(89)
  wire[19:0] and239;
  wire[19:0] sel241; // pe.cpp(100)
  wire and248;
  wire[19:0] and251;
  wire[31:0] or254;
  wire and256;
  wire[511:0] proxy262; // pe.cpp(138)
  wire[19:0] sll344;
  wire[19:0] srl348;
  wire[31:0] add354;
  wire[511:0] proxy357; // pe.cpp(157)
  wire[19:0] add446;
  wire[19:0] srl455;
  wire[19:0] sll458;
  wire[19:0] srl461;
  wire[511:0] zext463;
  wire[19:0] and470;
  wire[19:0] sll473;
  wire[511:0] sll475;
  wire[31:0] add479;
  wire[31:0] sel482; // pe.cpp(147)
  reg[31:0] sel484; // pe.cpp(116)
  wire[31:0] sel486; // pe.cpp(181)
  wire[31:0] sel487; // pe.cpp(116)
  reg sel488; // pe.cpp(116)
  wire[1:0] sel489; // pe.cpp(116)
  reg[19:0] sel490; // pe.cpp(116)
  reg[511:0] sel491; // pe.cpp(116)
  wire[31:0] sel492; // pe.cpp(124)
  wire[31:0] sel493; // pe.cpp(129)
  wire[31:0] sel494; // pe.cpp(116)
  wire[1:0] sel495; // pe.cpp(129)
  wire[1:0] sel496; // pe.cpp(147)
  wire[1:0] sel497; // pe.cpp(166)
  wire[1:0] sel498; // pe.cpp(181)
  reg[1:0] sel499; // pe.cpp(116)
  wire[31:0] sel500; // pe.cpp(116)
  wire[4:0] sel501; // pe.cpp(116)
  wire sel502; // pe.cpp(116)
  wire[31:0] sel503; // pe.cpp(129)
  wire eq504;
  wire and505;

  assign proxy5 = io_req_data[19:0];
  assign proxy8 = io_req_data[84];
  assign io_lsu_wr_req_data16 = {sel491, sel490, sel489};
  assign bindin37 = clk;
  assign bindin38 = reset;
  ch_pipe __module16__(.clk(bindin37), .reset(bindin38), .io_enq_valid(bindin39), .io_enq_data(bindin44), .io_deq_ready(bindin58), .io_enq_ready(bindout47), .io_deq_valid(bindout50), .io_deq_data(bindout55));
  assign bindin39 = and173;
  assign proxy41 = {proxy8, proxy5};
  assign bindin44 = proxy41;
  assign proxy53 = bindout55[19:0];
  assign proxy54 = bindout55[20];
  assign bindin58 = or153;
  assign bindin62 = clk;
  assign bindin63 = reset;
  ch_pipe __module17__(.clk(bindin62), .reset(bindin63), .io_enq_valid(bindin64), .io_enq_data(bindin69), .io_deq_ready(bindin83), .io_deq_valid(bindout75), .io_deq_data(bindout80));
  assign bindin64 = and177;
  assign proxy66 = {proxy54, proxy53};
  assign proxy68 = proxy66[20];
  assign bindin69 = proxy66;
  assign bindin83 = or140;
  always @(posedge clk) begin
    if (sel502) begin
      mem84[sel501] = sel500;
    end
  end
  always @ (posedge clk) begin
    reg86 <= sel494;
  end
  always @ (posedge clk) begin
    reg89 <= sel503;
  end
  always @ (posedge clk) begin
    reg92 <= sel236;
  end
  always @ (posedge clk) begin
    reg95 <= sel208;
  end
  always @ (posedge clk) begin
    reg106 <= sel241;
  end
  always @ (posedge clk) begin
    reg113 <= reset ? 64'h0 : ch_pe_stats_t123;
  end
  always @ (posedge clk) begin
    reg121 <= reset ? 2'h0 : sel499;
  end
  assign ch_pe_stats_t123 = {sel487, sel484};
  assign sll128 = 32'h1 << proxy183;
  assign sll131 = 32'h1 << sel501;
  assign eq135 = 1'h0 == bindout75;
  assign eq138 = 2'h0 == reg121;
  assign or140 = eq138 | eq135;
  assign eq143 = 1'h0 == bindout50;
  assign and145 = reg92 & sll128;
  assign eq149 = 32'h0 == and145;
  assign and151 = or140 & eq149;
  assign or153 = and151 | eq143;
  assign eq156 = 32'h0 == reg95;
  assign eq159 = reg121 == 2'h0;
  assign and161 = eq159 & eq156;
  assign and165 = reg86 & sll128;
  assign ne168 = 32'h0 != and165;
  assign sel171 = ne168 ? mem84[proxy183] : 32'h0;
  assign and173 = io_req_valid & bindout47;
  fp_mult __fp_mult175(.clock(clk), .clk_en(or153), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs175));
  assign and177 = bindout50 & or153;
  assign and181 = proxy53 & 20'h1f;
  assign proxy183 = and181[4:0];
  fp_add __fp_add184(.clock(clk), .clk_en(or140), .dataa(udfs175), .datab(sel171), .result(udfs184));
  assign and190 = eq138 & bindout75;
  assign eq193 = 1'h0 == and173;
  assign and195 = eq193 & and190;
  assign eq198 = 1'h0 == and190;
  assign and200 = and173 & eq198;
  assign add203 = reg95 + 32'h1;
  assign sub206 = reg95 - 32'h1;
  always @(*) begin
    if (and200)
      sel208 = add203;
    else if (and195)
      sel208 = sub206;
    else
      sel208 = reg95;
  end
  assign eq210 = 1'h0 == proxy68;
  assign and212 = and177 & eq210;
  assign eq215 = 1'h0 == bindout80[20];
  assign and217 = and190 & eq215;
  assign ne219 = sll128 != sll131;
  assign and221 = and212 & ne219;
  assign inv223 = ~sll131;
  assign and225 = reg92 & inv223;
  assign or227 = and225 | sll128;
  assign or233 = reg92 | sll128;
  assign sel235 = and221 ? or227 : and225;
  always @(*) begin
    if (and217)
      sel236 = sel235;
    else if (and212)
      sel236 = or233;
    else
      sel236 = reg92;
  end
  assign and239 = bindout80[19:0] & 20'hfffe0;
  assign sel241 = and217 ? and239 : reg106;
  assign and248 = bindout75 & eq215;
  assign and251 = bindout80[19:0] & 20'h1f;
  assign or254 = reg86 | sll131;
  assign and256 = bindout75 & bindout80[20];
  assign proxy262 = {mem84[5'h71], mem84[5'h70], mem84[5'h61], mem84[5'h60], mem84[5'h51], mem84[5'h50], mem84[5'h41], mem84[5'h40], mem84[5'h31], mem84[5'h30], mem84[5'h21], mem84[5'h20], mem84[5'h11], mem84[5'h10], mem84[5'h1], mem84[5'h0]};
  assign sll344 = reg106 << 32'h2;
  assign srl348 = sll344 >> 32'h6;
  assign add354 = reg113[31:0] + 32'h1;
  assign proxy357 = {mem84[5'hf1], mem84[5'hf0], mem84[5'he1], mem84[5'he0], mem84[5'hd1], mem84[5'hd0], mem84[5'hc1], mem84[5'hc0], mem84[5'hb1], mem84[5'hb0], mem84[5'ha1], mem84[5'ha0], mem84[5'h91], mem84[5'h90], mem84[5'h81], mem84[5'h80]};
  assign add446 = srl348 + 20'h1;
  assign srl455 = reg106 >> 32'h5;
  assign sll458 = srl455 << 32'h2;
  assign srl461 = sll458 >> 32'h6;
  assign zext463 = {{480{1'b0}}, reg89};
  assign and470 = srl455 & 20'hf;
  assign sll473 = and470 << 32'h5;
  assign sll475 = zext463 << sll473;
  assign add479 = reg113[63:32] + 32'h1;
  assign sel482 = io_lsu_wr_req_ready ? reg113[31:0] : add354;
  always @(*) begin
    case (reg121)
      2'h1: sel484 = sel482;
      2'h2: sel484 = sel482;
      default: sel484 = reg113[31:0];
    endcase
  end
  assign sel486 = io_lsu_wr_req_ready ? reg113[63:32] : add479;
  assign sel487 = (reg121 == 2'h3) ? sel486 : reg113[63:32];
  always @(*) begin
    case (reg121)
      2'h1: sel488 = 1'h1;
      2'h2: sel488 = 1'h1;
      2'h3: sel488 = 1'h1;
      default: sel488 = 1'h0;
    endcase
  end
  assign sel489 = (reg121 == 2'h3) ? 2'h1 : 2'h0;
  always @(*) begin
    case (reg121)
      2'h1: sel490 = srl348;
      2'h2: sel490 = add446;
      2'h3: sel490 = srl461;
      default: sel490 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg121)
      2'h1: sel491 = proxy262;
      2'h2: sel491 = proxy357;
      2'h3: sel491 = sll475;
      default: sel491 = lit243;
    endcase
  end
  assign sel492 = sel502 ? or254 : reg86;
  assign sel493 = and256 ? 32'h0 : sel492;
  assign sel494 = (reg121 == 2'h0) ? sel493 : reg86;
  assign sel495 = and256 ? 2'h1 : reg121;
  assign sel496 = io_lsu_wr_req_ready ? 2'h2 : reg121;
  assign sel497 = io_lsu_wr_req_ready ? 2'h3 : reg121;
  assign sel498 = io_lsu_wr_req_ready ? 2'h0 : reg121;
  always @(*) begin
    case (reg121)
      2'h0: sel499 = sel495;
      2'h1: sel499 = sel496;
      2'h2: sel499 = sel497;
      2'h3: sel499 = sel498;
      default: sel499 = reg121;
    endcase
  end
  assign sel500 = (reg121 == 2'h0) ? udfs184 : 32'h0;
  assign sel501 = (reg121 == 2'h0) ? and251[4:0] : 5'h0;
  assign sel502 = (reg121 == 2'h0) ? and248 : 1'h0;
  assign sel503 = and505 ? reg86 : reg89;
  assign eq504 = reg121 == 2'h0;
  assign and505 = eq504 & and256;

  assign io_req_ready = bindout47;
  assign io_lsu_wr_req_valid = sel488;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data16;
  assign io_stats = reg113;
  assign io_is_idle = and161;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  wire eq37;
  wire[23:0] sel38;
  wire eq39;
  wire[23:0] sel40;
  wire eq41;
  wire[23:0] sel42;

  assign eq37 = io_sel == 3'h4;
  assign sel38 = eq37 ? io_in[71:48] : 24'h0;
  assign eq39 = io_sel == 3'h2;
  assign sel40 = eq39 ? io_in[47:24] : sel38;
  assign eq41 = io_sel == 3'h1;
  assign sel42 = eq41 ? io_in[23:0] : sel40;

  assign io_out = sel42;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  reg reg16; // /home/blaise/dev/cash/src/htl/arbiter.h(20)
  reg reg19; // /home/blaise/dev/cash/src/htl/arbiter.h(20)
  reg reg28; // /home/blaise/dev/cash/src/htl/arbiter.h(20)
  wire[2:0] proxy40; // /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy42; // /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy44; // /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy46; // /home/blaise/dev/cash/src/htl/arbiter.h(22)
  wire and49;
  wire and52;
  wire orr55;
  wire inv57;
  wire and59;
  wire proxy62; // /home/blaise/dev/cash/src/htl/arbiter.h(33)
  wire inv63;
  wire proxy65; // /home/blaise/dev/cash/src/htl/arbiter.h(33)
  wire or66;
  wire and68;
  wire proxy73; // /home/blaise/dev/cash/src/htl/arbiter.h(33)
  wire or74;
  wire and76;
  wire inv78;
  wire and80;
  wire and84;
  wire orr87;
  wire inv89;
  wire and91;
  wire inv95;
  wire or98;
  wire and100;
  wire inv102;
  wire and104;
  wire inv107;
  wire and109;
  wire orr113;
  wire inv115;
  wire and117;

  always @ (posedge clk) begin
    reg16 <= and68;
  end
  always @ (posedge clk) begin
    reg19 <= and76;
  end
  always @ (posedge clk) begin
    reg28 <= and100;
  end
  assign proxy40 = {and104, and80, 1'h0};
  assign proxy42 = {and109, 1'h0, and49};
  assign proxy44 = {1'h0, and84, and52};
  assign proxy46 = {and117, and91, and59};
  assign and49 = io_in[0] & reg16;
  assign and52 = io_in[0] & reg19;
  assign orr55 = |proxy40;
  assign inv57 = ~orr55;
  assign and59 = io_in[0] & inv57;
  assign proxy62 = proxy46[0];
  assign inv63 = ~proxy62;
  assign proxy65 = proxy46[1];
  assign or66 = reg16 | proxy65;
  assign and68 = or66 & inv63;
  assign proxy73 = proxy46[2];
  assign or74 = reg19 | proxy73;
  assign and76 = or74 & inv63;
  assign inv78 = ~reg16;
  assign and80 = io_in[1] & inv78;
  assign and84 = io_in[1] & reg28;
  assign orr87 = |proxy42;
  assign inv89 = ~orr87;
  assign and91 = io_in[1] & inv89;
  assign inv95 = ~proxy65;
  assign or98 = reg28 | proxy73;
  assign and100 = or98 & inv95;
  assign inv102 = ~reg19;
  assign and104 = io_in[2] & inv102;
  assign inv107 = ~reg28;
  assign and109 = io_in[2] & inv107;
  assign orr113 = |proxy44;
  assign inv115 = ~orr113;
  assign and117 = io_in[2] & inv115;

  assign io_grant = proxy46;

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
  wire[2:0] bindin44; // /home/blaise/dev/cash/src/module.h(33)
  wire[71:0] proxy46; // /home/blaise/dev/cash/src/module.h(33)
  wire[71:0] bindin62; // /home/blaise/dev/cash/src/module.h(33)
  wire[23:0] bindout70; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] proxy72; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin80; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin81; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindin82; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindout85; // /home/blaise/dev/cash/src/module.h(33)
  wire eq102;
  wire and104;
  wire eq108;
  wire and110;
  wire eq114;
  wire and116;

  ch_hxbar __module23__(.io_sel(bindin44), .io_in(bindin62), .io_out(bindout70));
  assign bindin44 = bindout85;
  assign proxy46 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin62 = proxy46;
  assign proxy72 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin80 = clk;
  assign bindin81 = reset;
  ch_rrArbiter __module24__(.clk(bindin80), .reset(bindin81), .io_in(bindin82), .io_grant(bindout85));
  assign bindin82 = proxy72;
  assign eq102 = bindout85 == 3'h1;
  assign and104 = io_out_ready & eq102;
  assign eq108 = bindout85 == 3'h2;
  assign and110 = io_out_ready & eq108;
  assign eq114 = bindout85 == 3'h4;
  assign and116 = io_out_ready & eq114;

  assign io_in_0_ready = and104;
  assign io_in_1_ready = and110;
  assign io_in_2_ready = and116;
  assign io_out_valid = bindout70[23];
  assign io_out_data = bindout70[22:0];
  assign io_out_grant = bindout85;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  wire[534:0] lit39 = 535'h0;
  wire eq41;
  wire[534:0] sel42;
  wire eq43;
  wire[534:0] sel44;
  wire eq45;
  wire[534:0] sel46;

  assign eq41 = io_sel == 3'h4;
  assign sel42 = eq41 ? io_in[1604:1070] : lit39;
  assign eq43 = io_sel == 3'h2;
  assign sel44 = eq43 ? io_in[1069:535] : sel42;
  assign eq45 = io_sel == 3'h1;
  assign sel46 = eq45 ? io_in[534:0] : sel44;

  assign io_out = sel46;

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
  wire[2:0] bindin48; // /home/blaise/dev/cash/src/module.h(33)
  wire[1604:0] proxy50; // /home/blaise/dev/cash/src/module.h(33)
  wire[1604:0] bindin69; // /home/blaise/dev/cash/src/module.h(33)
  wire[534:0] bindout78; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] proxy80; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin88; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin89; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindin90; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindout93; // /home/blaise/dev/cash/src/module.h(33)
  wire eq110;
  wire and112;
  wire eq116;
  wire and118;
  wire eq122;
  wire and124;

  ch_hxbar_0 __module26__(.io_sel(bindin48), .io_in(bindin69), .io_out(bindout78));
  assign bindin48 = bindout93;
  assign proxy50 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin69 = proxy50;
  assign proxy80 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin88 = clk;
  assign bindin89 = reset;
  ch_rrArbiter __module27__(.clk(bindin88), .reset(bindin89), .io_in(bindin90), .io_grant(bindout93));
  assign bindin90 = proxy80;
  assign eq110 = bindout93 == 3'h1;
  assign and112 = io_out_ready & eq110;
  assign eq116 = bindout93 == 3'h2;
  assign and118 = io_out_ready & eq116;
  assign eq122 = bindout93 == 3'h4;
  assign and124 = io_out_ready & eq122;

  assign io_in_0_ready = and112;
  assign io_in_1_ready = and118;
  assign io_in_2_ready = and124;
  assign io_out_valid = bindout78[534];
  assign io_out_data = bindout78[533:0];
  assign io_out_grant = bindout93;

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
  wire[511:0] lit155 = 512'h0;
  reg[21:0] mem1[0:1]; // wrcache.h(58)
  reg[511:0] mem5[0:1]; // wrcache.h(58)
  reg reg7; // wrcache.h(58)
  reg[19:0] reg10; // wrcache.h(58)
  reg reg27; // wrcache.h(58)
  wire[533:0] io_evict_data43; // wrcache.h(58)
  reg[2:0] reg57; // wrcache.h(68)
  reg[533:0] reg60; // wrcache.h(69)
  wire[1:0] proxy62; // owner(0)
  wire[19:0] proxy63; // tag(0)
  wire[1:0] proxy79; // owners(0)
  wire ne83;
  wire[19:0] proxy89; // tag(0)
  wire eq90;
  wire and92;
  wire sel95;
  wire[1:0] proxy101; // owners(0)
  wire[1:0] and104;
  wire ne107;
  wire sel110;
  wire[1:0] proxy116; // owners(0)
  wire eq119;
  wire sel122;
  reg reg127; // wrcache.h(93)
  reg reg133; // wrcache.h(94)
  reg reg139; // wrcache.h(95)
  reg reg145; // wrcache.h(96)
  wire eq149;
  reg reg152; // wrcache.h(102)
  wire[1:0] proxy159; // owners(0)
  wire[1:0] and162;
  wire ne165;
  wire eq167;
  wire and169;
  wire[511:0] or173;
  wire[1:0] or179;
  wire[19:0] proxy183; // tag(0)
  wire[21:0] tag_t185; // wrcache.h(129)
  wire[19:0] proxy196; // tag(0)
  wire eq197;
  wire[1:0] proxy200; // owners(0)
  wire ne203;
  wire and205;
  wire[511:0] or208;
  wire[1:0] or214;
  wire[21:0] tag_t220; // wrcache.h(153)
  wire ne223;
  wire[21:0] tag_t229; // wrcache.h(173)
  wire ne232;
  wire eq239;
  wire[21:0] tag_t245; // wrcache.h(196)
  wire[1:0] and255;
  wire ne258;
  wire[1:0] inv260;
  wire[1:0] and266;
  wire[21:0] tag_t272; // wrcache.h(204)
  wire ne285;
  wire add292;
  wire eq295;
  wire sel305; // wrcache.h(226)
  reg sel306; // wrcache.h(119)
  wire sel307; // wrcache.h(160)
  wire sel308; // wrcache.h(180)
  wire sel309; // wrcache.h(146)
  wire sel310; // wrcache.h(143)
  wire eq311;
  wire and312;
  wire sel313; // wrcache.h(146)
  wire sel314; // wrcache.h(143)
  wire[19:0] sel317; // wrcache.h(143)
  wire[1:0] sel320; // wrcache.h(119)
  wire[19:0] sel321; // wrcache.h(226)
  reg[19:0] sel322; // wrcache.h(119)
  wire[511:0] sel323; // wrcache.h(226)
  reg[511:0] sel324; // wrcache.h(119)
  wire sel325; // wrcache.h(143)
  wire sel328; // wrcache.h(135)
  wire sel329; // wrcache.h(121)
  wire sel330; // wrcache.h(232)
  wire sel331; // wrcache.h(226)
  reg sel332; // wrcache.h(119)
  wire sel333; // wrcache.h(124)
  wire and334;
  wire sel335; // wrcache.h(143)
  reg sel336; // wrcache.h(119)
  wire[2:0] sel337; // wrcache.h(124)
  wire[2:0] sel338; // wrcache.h(135)
  wire[2:0] sel339; // wrcache.h(121)
  wire[2:0] sel340; // wrcache.h(160)
  wire[2:0] sel341; // wrcache.h(180)
  wire[2:0] sel342; // wrcache.h(146)
  wire[2:0] sel343; // wrcache.h(143)
  wire[2:0] sel344; // wrcache.h(193)
  wire[2:0] sel345; // wrcache.h(218)
  wire[2:0] sel346; // wrcache.h(235)
  wire and347;
  wire[2:0] sel348; // wrcache.h(243)
  wire[2:0] sel349; // wrcache.h(226)
  reg[2:0] sel350; // wrcache.h(119)
  wire[533:0] sel351; // wrcache.h(124)
  wire[533:0] sel352; // wrcache.h(121)
  wire eq353;
  wire and354;
  wire[21:0] sel355; // wrcache.h(124)
  wire[21:0] sel357; // wrcache.h(146)
  wire[21:0] sel358; // wrcache.h(143)
  wire[21:0] sel359; // wrcache.h(201)
  wire[21:0] sel360; // wrcache.h(193)
  reg[21:0] sel361; // wrcache.h(119)
  wire sel365; // wrcache.h(201)
  wire sel366; // wrcache.h(193)
  reg sel367; // wrcache.h(119)
  wire sel368; // wrcache.h(121)
  wire sel370; // wrcache.h(143)
  reg sel371; // wrcache.h(119)
  wire[511:0] sel372; // wrcache.h(124)
  wire[511:0] sel374; // wrcache.h(146)
  wire[511:0] sel375; // wrcache.h(143)
  reg[511:0] sel376; // wrcache.h(119)

  always @(posedge clk) begin
    if (sel367) begin
      mem1[sel371] = sel361;
    end
  end
  always @(posedge clk) begin
    if (sel336) begin
      mem5[sel371] = sel376;
    end
  end
  always @ (posedge clk) begin
    reg7 <= sel314;
  end
  always @ (posedge clk) begin
    reg10 <= sel317;
  end
  always @ (posedge clk) begin
    reg27 <= sel332;
  end
  assign io_evict_data43 = {sel324, sel322, sel320};
  always @ (posedge clk) begin
    reg57 <= reset ? 3'h0 : sel350;
  end
  always @ (posedge clk) begin
    reg60 <= sel352;
  end
  assign proxy62 = reg60[1:0];
  assign proxy63 = reg60[21:2];
  assign proxy79 = mem1[1'h1][1:0];
  assign ne83 = proxy79 != 2'h0;
  assign proxy89 = mem1[1'h1][21:2];
  assign eq90 = proxy89 == io_enq_data[21:2];
  assign and92 = eq90 & ne83;
  assign sel95 = and92 ? 1'h1 : 1'h0;
  assign proxy101 = mem1[1'h1][1:0];
  assign and104 = proxy101 & io_enq_data[1:0];
  assign ne107 = and104 != 2'h0;
  assign sel110 = ne107 ? 1'h1 : 1'h0;
  assign proxy116 = mem1[1'h0][1:0];
  assign eq119 = proxy116 == 2'h0;
  assign sel122 = eq119 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg127 <= sel95;
  end
  always @ (posedge clk) begin
    reg133 <= sel110;
  end
  always @ (posedge clk) begin
    reg139 <= sel122;
  end
  always @ (posedge clk) begin
    reg145 <= io_enq_valid;
  end
  assign eq149 = reg57 == 3'h0;
  always @ (posedge clk) begin
    reg152 <= sel310;
  end
  assign proxy159 = mem1[sel371][1:0];
  assign and162 = proxy159 & io_enq_data[1:0];
  assign ne165 = and162 != 2'h0;
  assign eq167 = io_enq_data[21:2] == reg10;
  assign and169 = eq167 & ne165;
  assign or173 = mem5[sel371] | io_enq_data[533:22];
  assign or179 = proxy159 | io_enq_data[1:0];
  assign proxy183 = mem1[sel371][21:2];
  assign tag_t185 = {proxy183, or179};
  assign proxy196 = mem1[sel325][21:2];
  assign eq197 = proxy196 == proxy63;
  assign proxy200 = mem1[sel325][1:0];
  assign ne203 = proxy200 != 2'h0;
  assign and205 = ne203 & eq197;
  assign or208 = mem5[sel371] | reg60[533:22];
  assign or214 = proxy159 | proxy62;
  assign tag_t220 = {proxy183, or214};
  assign ne223 = reg127 != reg133;
  assign tag_t229 = {proxy63, proxy62};
  assign ne232 = reg139 != reg133;
  assign eq239 = proxy159 == proxy62;
  assign tag_t245 = {proxy183, 2'h0};
  assign and255 = proxy159 & proxy62;
  assign ne258 = and255 != 2'h0;
  assign inv260 = ~proxy62;
  assign and266 = proxy159 & inv260;
  assign tag_t272 = {proxy183, and266};
  assign ne285 = proxy159 != 2'h0;
  assign add292 = reg27 + 1'h1;
  assign eq295 = reg27 == 1'h1;
  assign sel305 = ne285 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg57)
      3'h3: sel306 = 1'h1;
      3'h4: sel306 = sel305;
      default: sel306 = 1'h0;
    endcase
  end
  assign sel307 = ne223 ? reg133 : reg152;
  assign sel308 = ne232 ? reg133 : reg152;
  assign sel309 = and205 ? sel307 : sel308;
  assign sel310 = and312 ? sel309 : reg152;
  assign eq311 = reg57 == 3'h1;
  assign and312 = eq311 & reg145;
  assign sel313 = and205 ? reg127 : reg139;
  assign sel314 = and312 ? sel313 : reg7;
  assign sel317 = and312 ? proxy63 : reg10;
  assign sel320 = (reg57 == 3'h3) ? proxy62 : 2'h0;
  assign sel321 = ne285 ? proxy183 : 20'h0;
  always @(*) begin
    case (reg57)
      3'h3: sel322 = proxy183;
      3'h4: sel322 = sel321;
      default: sel322 = 20'h0;
    endcase
  end
  assign sel323 = ne285 ? mem5[sel371] : lit155;
  always @(*) begin
    case (reg57)
      3'h3: sel324 = mem5[sel371];
      3'h4: sel324 = sel323;
      default: sel324 = lit155;
    endcase
  end
  assign sel325 = and312 ? reg127 : 1'h0;
  assign sel328 = io_flush ? 1'h0 : reg27;
  assign sel329 = io_enq_valid ? reg27 : sel328;
  assign sel330 = io_evict_ready ? add292 : reg27;
  assign sel331 = ne285 ? sel330 : add292;
  always @(*) begin
    case (reg57)
      3'h0: sel332 = sel329;
      3'h4: sel332 = sel331;
      default: sel332 = reg27;
    endcase
  end
  assign sel333 = and334 ? 1'h1 : 1'h0;
  assign and334 = io_enq_valid & and169;
  assign sel335 = reg145 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg57)
      3'h0: sel336 = sel333;
      3'h1: sel336 = sel335;
      default: sel336 = 1'h0;
    endcase
  end
  assign sel337 = and169 ? reg57 : 3'h1;
  assign sel338 = io_flush ? 3'h4 : reg57;
  assign sel339 = io_enq_valid ? sel337 : sel338;
  assign sel340 = ne223 ? 3'h2 : 3'h0;
  assign sel341 = ne232 ? 3'h2 : 3'h0;
  assign sel342 = and205 ? sel340 : sel341;
  assign sel343 = reg145 ? sel342 : reg57;
  assign sel344 = eq239 ? 3'h3 : 3'h0;
  assign sel345 = io_evict_ready ? 3'h0 : reg57;
  assign sel346 = and347 ? 3'h0 : reg57;
  assign and347 = io_evict_ready & eq295;
  assign sel348 = eq295 ? 3'h0 : reg57;
  assign sel349 = ne285 ? sel346 : sel348;
  always @(*) begin
    case (reg57)
      3'h0: sel350 = sel339;
      3'h1: sel350 = sel343;
      3'h2: sel350 = sel344;
      3'h3: sel350 = sel345;
      3'h4: sel350 = sel349;
      default: sel350 = reg57;
    endcase
  end
  assign sel351 = and169 ? reg60 : io_enq_data;
  assign sel352 = and354 ? sel351 : reg60;
  assign eq353 = reg57 == 3'h0;
  assign and354 = eq353 & io_enq_valid;
  assign sel355 = and334 ? tag_t185 : 22'h0;
  assign sel357 = and205 ? tag_t220 : tag_t229;
  assign sel358 = reg145 ? sel357 : 22'h0;
  assign sel359 = ne258 ? tag_t272 : 22'h0;
  assign sel360 = eq239 ? tag_t245 : sel359;
  always @(*) begin
    case (reg57)
      3'h0: sel361 = sel355;
      3'h1: sel361 = sel358;
      3'h2: sel361 = sel360;
      default: sel361 = 22'h0;
    endcase
  end
  assign sel365 = ne258 ? 1'h1 : 1'h0;
  assign sel366 = eq239 ? 1'h1 : sel365;
  always @(*) begin
    case (reg57)
      3'h0: sel367 = sel333;
      3'h1: sel367 = sel335;
      3'h2: sel367 = sel366;
      default: sel367 = 1'h0;
    endcase
  end
  assign sel368 = io_enq_valid ? reg7 : 1'h0;
  assign sel370 = reg145 ? sel313 : 1'h0;
  always @(*) begin
    case (reg57)
      3'h0: sel371 = sel368;
      3'h1: sel371 = sel370;
      3'h2: sel371 = reg152;
      3'h3: sel371 = reg152;
      3'h4: sel371 = reg27;
      default: sel371 = 1'h0;
    endcase
  end
  assign sel372 = and334 ? or173 : lit155;
  assign sel374 = and205 ? or208 : reg60[533:22];
  assign sel375 = reg145 ? sel374 : lit155;
  always @(*) begin
    case (reg57)
      3'h0: sel376 = sel372;
      3'h1: sel376 = sel375;
      default: sel376 = lit155;
    endcase
  end

  assign io_enq_ready = eq149;
  assign io_evict_valid = sel306;
  assign io_evict_data = io_evict_data43;

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
  wire[511:0] lit431 = 512'h0;
  wire[131:0] proxy42; // a(0)
  wire[19:0] proxy44; // col_ptr(0)
  wire[19:0] proxy45; // col_ind(0)
  wire[19:0] proxy46; // row_ptr(0)
  wire[19:0] proxy47; // row_ind(0)
  wire[19:0] proxy48; // values(0)
  wire[39:0] proxy49; // x(0)
  wire[19:0] proxy50; // values(0)
  wire[19:0] proxy51; // masks(0)
  wire[39:0] proxy52; // y(0)
  wire[19:0] proxy53; // values(0)
  wire[19:0] proxy54; // masks(0)
  wire[514:0] io_ctrl_rd_rsp_data80; // lsu.cpp(19)
  wire bindin147; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin148; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin149; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindin154; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout157; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin160; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindin165; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout168; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin171; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindin176; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout179; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout182; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] proxy185; // type(0)
  wire[22:0] bindout187; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin190; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindout193; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin197; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin198; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin199; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin205; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout208; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin211; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin217; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout220; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin223; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin229; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout232; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout235; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindout241; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin244; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindout247; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin251; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin252; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin253; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] proxy255; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin259; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout262; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout265; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindout271; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin274; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin277; // /home/blaise/dev/cash/src/module.h(33)
  wire eq280;
  reg reg283; // lsu.cpp(47)
  reg[19:0] reg286; // lsu.cpp(48)
  reg[13:0] reg289; // lsu.cpp(49)
  reg[19:0] sel299; // lsu.cpp(258)
  wire[19:0] add300;
  wire[5:0] ch_rd_mdata_t303; // lsu.cpp(55)
  wire[13:0] zext307;
  reg[2:0] reg311; // lsu.cpp(70)
  reg reg315; // lsu.cpp(71)
  wire eq320;
  wire eq323;
  wire eq326;
  wire and328;
  reg[533:0] reg331; // lsu.cpp(81)
  wire[1:0] proxy333; // type(0)
  reg[2:0] reg337; // lsu.cpp(82)
  wire and339;
  wire or343;
  wire[31:0] sel349;
  wire[31:0] sel350;
  reg[31:0] reg353; // lsu.cpp(91)
  reg reg356; // lsu.cpp(94)
  reg[19:0] reg359; // lsu.cpp(95)
  reg[511:0] reg362; // lsu.cpp(96)
  reg[13:0] reg365; // lsu.cpp(97)
  wire[31:0] sub368;
  wire[4:0] ch_wr_mdata_t371; // lsu.cpp(107)
  wire[19:0] add378;
  wire[13:0] zext380;
  wire[2:0] zext384;
  wire[4:0] ch_wr_mdata_t387; // lsu.cpp(117)
  wire[19:0] add394;
  wire[13:0] zext396;
  wire eq400;
  wire[31:0] add404;
  wire[31:0] sub406;
  reg[19:0] sel409; // lsu.cpp(271)
  wire[19:0] sel410; // lsu.cpp(114)
  wire[19:0] sel411; // lsu.cpp(105)
  wire[19:0] sel412; // lsu.cpp(103)
  reg[19:0] sel413; // lsu.cpp(271)
  wire[511:0] sel414; // lsu.cpp(114)
  wire[511:0] sel415; // lsu.cpp(105)
  wire[511:0] sel416; // lsu.cpp(103)
  wire sel417; // lsu.cpp(127)
  wire eq418;
  wire and419;
  wire[13:0] sel420; // lsu.cpp(114)
  wire[13:0] sel421; // lsu.cpp(105)
  wire[13:0] sel422; // lsu.cpp(103)
  wire[31:0] sel423; // lsu.cpp(127)
  wire sel426; // lsu.cpp(114)
  wire sel427; // lsu.cpp(105)
  wire sel428; // lsu.cpp(127)
  reg sel429; // lsu.cpp(103)
  wire eq433;
  wire eq436;
  wire sel447; // lsu.cpp(158)
  wire[1:0] sel448; // lsu.cpp(158)
  wire[19:0] sel449; // lsu.cpp(158)
  wire[511:0] sel450; // lsu.cpp(158)
  wire sel451; // lsu.cpp(158)
  wire sel452; // lsu.cpp(158)
  wire[2:0] sel453; // lsu.cpp(164)
  wire[2:0] sel454; // lsu.cpp(163)
  wire[2:0] sel455; // lsu.cpp(160)
  wire[2:0] sel456; // lsu.cpp(177)
  wire[2:0] sel457; // lsu.cpp(189)
  wire[2:0] sel458; // lsu.cpp(198)
  reg[2:0] sel460; // lsu.cpp(158)
  wire[2:0] sel461; // lsu.cpp(160)
  wire eq462;
  wire and463;
  wire[533:0] sel464; // lsu.cpp(160)
  wire[5:0] proxy468; // lsu.cpp(227)
  wire[2:0] proxy469; // type(0)
  wire[2:0] proxy470; // owner(0)
  wire eq472;
  wire and474;
  wire eq477;
  wire and479;
  wire eq482;
  wire and484;

  assign proxy42 = io_ctx[131:0];
  assign proxy44 = proxy42[51:32];
  assign proxy45 = proxy42[71:52];
  assign proxy46 = proxy42[91:72];
  assign proxy47 = proxy42[111:92];
  assign proxy48 = proxy42[131:112];
  assign proxy49 = io_ctx[171:132];
  assign proxy50 = proxy49[19:0];
  assign proxy51 = proxy49[39:20];
  assign proxy52 = io_ctx[211:172];
  assign proxy53 = proxy52[19:0];
  assign proxy54 = proxy52[39:20];
  assign io_ctrl_rd_rsp_data80 = {io_qpi_rd_rsp_data, proxy469};
  assign bindin147 = clk;
  assign bindin148 = reset;
  ch_xbar_switch __module22__(.clk(bindin147), .reset(bindin148), .io_in_0_valid(bindin149), .io_in_0_data(bindin154), .io_in_1_valid(bindin160), .io_in_1_data(bindin165), .io_in_2_valid(bindin171), .io_in_2_data(bindin176), .io_out_ready(bindin190), .io_in_0_ready(bindout157), .io_in_1_ready(bindout168), .io_in_2_ready(bindout179), .io_out_valid(bindout182), .io_out_data(bindout187), .io_out_grant(bindout193));
  assign bindin149 = io_walkers_0_rd_req_valid;
  assign bindin154 = io_walkers_0_rd_req_data;
  assign bindin160 = io_walkers_1_rd_req_valid;
  assign bindin165 = io_walkers_1_rd_req_data;
  assign bindin171 = io_ctrl_rd_req_valid;
  assign bindin176 = io_ctrl_rd_req_data;
  assign proxy185 = bindout187[2:0];
  assign bindin190 = eq280;
  assign bindin197 = clk;
  assign bindin198 = reset;
  ch_xbar_switch_0 __module25__(.clk(bindin197), .reset(bindin198), .io_in_0_valid(bindin199), .io_in_0_data(bindin205), .io_in_1_valid(bindin211), .io_in_1_data(bindin217), .io_in_2_valid(bindin223), .io_in_2_data(bindin229), .io_out_ready(bindin244), .io_in_0_ready(bindout208), .io_in_1_ready(bindout220), .io_in_2_ready(bindout232), .io_out_valid(bindout235), .io_out_data(bindout241), .io_out_grant(bindout247));
  assign bindin199 = io_PEs_0_wr_req_valid;
  assign bindin205 = io_PEs_0_wr_req_data;
  assign bindin211 = io_PEs_1_wr_req_valid;
  assign bindin217 = io_PEs_1_wr_req_data;
  assign bindin223 = io_ctrl_wr_req_valid;
  assign bindin229 = io_ctrl_wr_req_data;
  assign bindin244 = eq323;
  assign bindin251 = clk;
  assign bindin252 = reset;
  spmv_write_cache __module28__(.clk(bindin251), .reset(bindin252), .io_enq_valid(bindin253), .io_enq_data(bindin259), .io_evict_ready(bindin274), .io_flush(bindin277), .io_enq_ready(bindout262), .io_evict_valid(bindout265), .io_evict_data(bindout271));
  assign bindin253 = sel447;
  assign proxy255 = {sel450, sel449, sel448};
  assign bindin259 = proxy255;
  assign bindin274 = and328;
  assign bindin277 = sel452;
  assign eq280 = 1'h0 == io_qpi_rd_req_almostfull;
  always @ (posedge clk) begin
    reg283 <= bindout182;
  end
  always @ (posedge clk) begin
    reg286 <= add300;
  end
  always @ (posedge clk) begin
    reg289 <= zext307;
  end
  always @(*) begin
    case (proxy185)
      3'h0: sel299 = proxy44;
      3'h1: sel299 = proxy45;
      3'h2: sel299 = proxy46;
      3'h3: sel299 = proxy47;
      3'h4: sel299 = proxy48;
      3'h5: sel299 = proxy50;
      default: sel299 = proxy51;
    endcase
  end
  assign add300 = sel299 + bindout187[22:3];
  assign ch_rd_mdata_t303 = {bindout193, proxy185};
  assign zext307 = {{8{1'b0}}, ch_rd_mdata_t303};
  always @ (posedge clk) begin
    reg311 <= reset ? 3'h0 : sel460;
  end
  always @ (posedge clk) begin
    reg315 <= reset ? 1'h0 : sel429;
  end
  assign eq320 = reg315 == 1'h0;
  assign eq323 = reg311 == 3'h0;
  assign eq326 = 1'h0 == sel451;
  assign and328 = eq320 & eq326;
  always @ (posedge clk) begin
    reg331 <= sel464;
  end
  assign proxy333 = reg331[1:0];
  always @ (posedge clk) begin
    reg337 <= sel461;
  end
  assign and339 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign or343 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  assign sel349 = or343 ? 32'h1 : 32'h0;
  assign sel350 = and339 ? 32'h2 : sel349;
  always @ (posedge clk) begin
    reg353 <= sel423;
  end
  always @ (posedge clk) begin
    reg356 <= sel417;
  end
  always @ (posedge clk) begin
    reg359 <= sel412;
  end
  always @ (posedge clk) begin
    reg362 <= sel416;
  end
  always @ (posedge clk) begin
    reg365 <= sel422;
  end
  assign sub368 = reg353 - sel350;
  assign ch_wr_mdata_t371 = {reg337, proxy333};
  assign add378 = sel413 + reg331[21:2];
  assign zext380 = {{9{1'b0}}, ch_wr_mdata_t371};
  assign zext384 = {{1{1'b0}}, bindout271[1:0]};
  assign ch_wr_mdata_t387 = {zext384, 2'h1};
  assign add394 = sel409 + bindout271[21:2];
  assign zext396 = {{9{1'b0}}, ch_wr_mdata_t387};
  assign eq400 = 1'h0 == io_qpi_wr_req_almostfull;
  assign add404 = reg353 + 32'h1;
  assign sub406 = add404 - sel350;
  always @(*) begin
    case (2'h1)
      2'h0: sel409 = proxy53;
      2'h1: sel409 = proxy54;
      default: sel409 = io_ctx[231:212];
    endcase
  end
  assign sel410 = bindout265 ? add394 : reg359;
  assign sel411 = sel451 ? add378 : sel410;
  assign sel412 = (reg315 == 1'h0) ? sel411 : reg359;
  always @(*) begin
    case (proxy333)
      2'h0: sel413 = proxy53;
      2'h1: sel413 = proxy54;
      default: sel413 = io_ctx[231:212];
    endcase
  end
  assign sel414 = bindout265 ? bindout271[533:22] : reg362;
  assign sel415 = sel451 ? reg331[533:22] : sel414;
  assign sel416 = (reg315 == 1'h0) ? sel415 : reg362;
  assign sel417 = and419 ? 1'h1 : 1'h0;
  assign eq418 = reg315 == 1'h1;
  assign and419 = eq418 & eq400;
  assign sel420 = bindout265 ? zext396 : reg365;
  assign sel421 = sel451 ? zext380 : sel420;
  assign sel422 = (reg315 == 1'h0) ? sel421 : reg365;
  assign sel423 = and419 ? sub406 : sub368;
  assign sel426 = bindout265 ? 1'h1 : reg315;
  assign sel427 = sel451 ? 1'h1 : sel426;
  assign sel428 = eq400 ? 1'h0 : reg315;
  always @(*) begin
    case (reg315)
      1'h0: sel429 = sel427;
      1'h1: sel429 = sel428;
      default: sel429 = reg315;
    endcase
  end
  assign eq433 = bindout241[1:0] == 2'h1;
  assign eq436 = bindout247 == 3'h4;
  assign sel447 = (reg311 == 3'h2) ? 1'h1 : 1'h0;
  assign sel448 = (reg311 == 3'h2) ? reg337[1:0] : 2'h0;
  assign sel449 = (reg311 == 3'h2) ? reg331[21:2] : 20'h0;
  assign sel450 = (reg311 == 3'h2) ? reg331[533:22] : lit431;
  assign sel451 = (reg311 == 3'h1) ? 1'h1 : 1'h0;
  assign sel452 = (reg311 == 3'h3) ? 1'h1 : 1'h0;
  assign sel453 = eq436 ? 3'h3 : 3'h2;
  assign sel454 = eq433 ? sel453 : 3'h1;
  assign sel455 = bindout235 ? sel454 : reg311;
  assign sel456 = eq320 ? 3'h0 : reg311;
  assign sel457 = bindout262 ? 3'h0 : reg311;
  assign sel458 = bindout262 ? 3'h4 : reg311;
  always @(*) begin
    case (reg311)
      3'h0: sel460 = sel455;
      3'h1: sel460 = sel456;
      3'h2: sel460 = sel457;
      3'h3: sel460 = sel458;
      3'h4: sel460 = sel457;
      default: sel460 = reg311;
    endcase
  end
  assign sel461 = and463 ? bindout247 : reg337;
  assign eq462 = reg311 == 3'h0;
  assign and463 = eq462 & bindout235;
  assign sel464 = and463 ? bindout241 : reg331;
  assign proxy468 = io_qpi_rd_rsp_mdata[5:0];
  assign proxy469 = proxy468[2:0];
  assign proxy470 = proxy468[5:3];
  assign eq472 = proxy470 == 3'h4;
  assign and474 = io_qpi_rd_rsp_valid & eq472;
  assign eq477 = proxy470 == 3'h1;
  assign and479 = io_qpi_rd_rsp_valid & eq477;
  assign eq482 = proxy470 == 3'h2;
  assign and484 = io_qpi_rd_rsp_valid & eq482;

  assign io_qpi_rd_req_addr = reg286;
  assign io_qpi_rd_req_mdata = reg289;
  assign io_qpi_rd_req_valid = reg283;
  assign io_qpi_wr_req_addr = reg359;
  assign io_qpi_wr_req_mdata = reg365;
  assign io_qpi_wr_req_data = reg362;
  assign io_qpi_wr_req_valid = reg356;
  assign io_ctrl_rd_req_ready = bindout179;
  assign io_ctrl_wr_req_ready = bindout232;
  assign io_ctrl_rd_rsp_valid = and474;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data80;
  assign io_ctrl_outstanding_writes = reg353;
  assign io_walkers_0_rd_req_ready = bindout157;
  assign io_walkers_0_rd_rsp_valid = and479;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data80;
  assign io_walkers_1_rd_req_ready = bindout168;
  assign io_walkers_1_rd_rsp_valid = and484;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data80;
  assign io_PEs_0_wr_req_ready = bindout208;
  assign io_PEs_1_wr_req_ready = bindout220;

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
  reg[2:0] reg20; // /home/blaise/dev/cash/src/htl/queue.h(25)
  reg[2:0] reg26; // /home/blaise/dev/cash/src/htl/queue.h(25)
  wire[1:0] proxy29; // /home/blaise/dev/cash/src/htl/queue.h(27)
  wire[1:0] proxy31; // /home/blaise/dev/cash/src/htl/queue.h(28)
  wire and32;
  wire and34;
  wire[2:0] add38;
  wire[2:0] sel40;
  wire[2:0] add43;
  wire[2:0] sel45;
  reg[511:0] mem47[0:3]; // /home/blaise/dev/cash/src/htl/queue.h(36)
  wire ne51;
  wire eq55;
  wire ne57;
  wire or59;
  wire[2:0] sub61;

  always @ (posedge clk) begin
    reg20 <= sel40;
  end
  always @ (posedge clk) begin
    reg26 <= sel45;
  end
  assign proxy29 = reg20[1:0];
  assign proxy31 = reg26[1:0];
  assign and32 = io_deq_ready & ne51;
  assign and34 = io_enq_valid & or59;
  assign add38 = reg20 + 3'h1;
  assign sel40 = and32 ? add38 : reg20;
  assign add43 = reg26 + 3'h1;
  assign sel45 = and34 ? add43 : reg26;
  always @(posedge clk) begin
    if (and34) begin
      mem47[proxy31] = io_enq_data;
    end
  end
  assign ne51 = reg26 != reg20;
  assign eq55 = reg26[2] == reg20[2];
  assign ne57 = proxy31 != proxy29;
  assign or59 = ne57 | eq55;
  assign sub61 = reg26 - reg20;

  assign io_enq_ready = or59;
  assign io_deq_valid = ne51;
  assign io_deq_data = mem47[proxy29];
  assign io_size = sub61;

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
  wire[511:0] lit558 = 512'h0;
  wire[131:0] proxy42; // a(0)
  wire[31:0] proxy43; // num_parts(0)
  wire bindin68; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin69; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin70; // /home/blaise/dev/cash/src/module.h(33)
  wire[63:0] bindin76; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout79; // /home/blaise/dev/cash/src/module.h(33)
  wire[63:0] bindin82; // /home/blaise/dev/cash/src/module.h(33)
  wire[351:0] bindout96; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout99; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindout104; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin107; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin110; // /home/blaise/dev/cash/src/module.h(33)
  wire[514:0] bindin115; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout118; // /home/blaise/dev/cash/src/module.h(33)
  wire[84:0] bindout125; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin128; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin132; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin133; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin134; // /home/blaise/dev/cash/src/module.h(33)
  wire[63:0] bindin140; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout143; // /home/blaise/dev/cash/src/module.h(33)
  wire[63:0] bindin146; // /home/blaise/dev/cash/src/module.h(33)
  wire[351:0] bindout160; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout163; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindout168; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin171; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin174; // /home/blaise/dev/cash/src/module.h(33)
  wire[514:0] bindin179; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout182; // /home/blaise/dev/cash/src/module.h(33)
  wire[84:0] bindout189; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin192; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin196; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin197; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin198; // /home/blaise/dev/cash/src/module.h(33)
  wire[84:0] bindin205; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout208; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout211; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindout217; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin220; // /home/blaise/dev/cash/src/module.h(33)
  wire[63:0] bindout225; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout228; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin232; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin233; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin234; // /home/blaise/dev/cash/src/module.h(33)
  wire[84:0] bindin241; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout244; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout247; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindout253; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin256; // /home/blaise/dev/cash/src/module.h(33)
  wire[63:0] bindout261; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout264; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin268; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin269; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin270; // /home/blaise/dev/cash/src/module.h(33)
  wire[19:0] bindout273; // /home/blaise/dev/cash/src/module.h(33)
  wire[13:0] bindout276; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout279; // /home/blaise/dev/cash/src/module.h(33)
  wire[13:0] bindin282; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin285; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin288; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin291; // /home/blaise/dev/cash/src/module.h(33)
  wire[19:0] bindout294; // /home/blaise/dev/cash/src/module.h(33)
  wire[13:0] bindout297; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout300; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout303; // /home/blaise/dev/cash/src/module.h(33)
  wire[13:0] bindin306; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin309; // /home/blaise/dev/cash/src/module.h(33)
  wire[13:0] bindin312; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin315; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin333; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin336; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] proxy338; // /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] proxy339; // type(0)
  wire[22:0] bindin341; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout344; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin347; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] proxy349; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin353; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout356; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout359; // /home/blaise/dev/cash/src/module.h(33)
  wire[514:0] bindout364; // /home/blaise/dev/cash/src/module.h(33)
  wire[31:0] bindout367; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin370; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindin375; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout378; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout381; // /home/blaise/dev/cash/src/module.h(33)
  wire[514:0] bindout386; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin389; // /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] bindin394; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout397; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout400; // /home/blaise/dev/cash/src/module.h(33)
  wire[514:0] bindout405; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin408; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin414; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout417; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin420; // /home/blaise/dev/cash/src/module.h(33)
  wire[533:0] bindin426; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout429; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin433; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin434; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin435; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindin438; // /home/blaise/dev/cash/src/module.h(33)
  wire bindout444; // /home/blaise/dev/cash/src/module.h(33)
  wire[511:0] bindout447; // /home/blaise/dev/cash/src/module.h(33)
  wire bindin450; // /home/blaise/dev/cash/src/module.h(33)
  reg[543:0] reg455; // spmv.cpp(17)
  reg[4:0] reg458; // spmv.cpp(17)
  reg[31:0] reg461; // spmv.cpp(17)
  reg[19:0] reg464; // spmv.cpp(17)
  reg[19:0] reg467; // spmv.cpp(17)
  reg[1:0] reg470; // spmv.cpp(17)
  reg[95:0] reg473; // spmv.cpp(17)
  reg[19:0] reg481; // spmv.cpp(17)
  reg[19:0] reg484; // spmv.cpp(17)
  wire[19:0] proxy487; // spmv.cpp(34)
  wire[19:0] sub490;
  reg[63:0] reg493; // spmv.cpp(38)
  wire[63:0] add497;
  reg[2:0] reg502; // spmv.cpp(56)
  reg reg505; // spmv.cpp(59)
  wire eq508;
  wire and510;
  wire[31:0] zext512;
  wire eq515;
  wire and517;
  wire and519;
  wire[31:0] zext521;
  wire[31:0] add523;
  wire[31:0] sub525;
  wire and527;
  wire and530;
  wire and532;
  wire[31:0] add536;
  wire[31:0] sll540;
  wire[31:0] add544;
  wire[31:0] srl548;
  wire[19:0] sub553;
  wire[95:0] ch_ctrl_stats_t559; // spmv.cpp(98)
  wire ne565;
  wire ne575;
  wire[19:0] add578;
  wire eq580;
  wire[31:0] add585;
  wire eq590;
  wire and592;
  wire[19:0] zext600;
  wire[511:0] zext602;
  wire[415:0] ch_cu_stats_t606; // spmv.cpp(271)
  wire[511:0] zext624;
  wire[415:0] ch_cu_stats_t628; // spmv.cpp(274)
  wire[511:0] zext646;
  wire eq648;
  wire[511:0] sel649;
  wire eq650;
  wire[511:0] sel651;
  wire[1:0] add654;
  wire eq657;
  wire eq662;
  wire[1:0] sel666; // spmv.cpp(159)
  wire eq667;
  wire and668;
  reg sel669; // spmv.cpp(102)
  wire sel670; // spmv.cpp(105)
  wire sel671; // spmv.cpp(104)
  wire sel672; // spmv.cpp(169)
  reg sel673; // spmv.cpp(102)
  wire[19:0] sel674; // spmv.cpp(105)
  wire and675;
  wire[19:0] sel676; // spmv.cpp(120)
  wire and677;
  reg[19:0] sel678; // spmv.cpp(102)
  reg[1:0] sel679; // spmv.cpp(102)
  wire[19:0] sel680; // spmv.cpp(102)
  wire[511:0] sel681; // spmv.cpp(102)
  wire[2:0] sel682; // spmv.cpp(105)
  wire[2:0] sel684; // spmv.cpp(122)
  wire and685;
  wire and686;
  wire[2:0] sel687; // spmv.cpp(137)
  wire[2:0] sel688; // spmv.cpp(147)
  wire[2:0] sel689; // spmv.cpp(161)
  wire and690;
  wire[2:0] sel691; // spmv.cpp(169)
  reg[2:0] sel692; // spmv.cpp(102)
  wire sel693; // spmv.cpp(117)
  wire eq694;
  wire and695;
  wire[31:0] sel697; // spmv.cpp(120)
  wire[31:0] sel698; // spmv.cpp(117)
  wire[31:0] sel699; // spmv.cpp(102)
  reg[1:0] reg701; // spmv.cpp(187)
  wire[543:0] proxy704; // spmv.cpp(197)
  wire eq707;
  wire[543:0] srl726;
  wire[19:0] add732;
  wire[4:0] sub736;
  wire ne740;
  wire ne742;
  wire and744;
  wire[63:0] sel775; // spmv.cpp(224)
  wire eq776;
  wire and777;
  wire[19:0] sel778; // spmv.cpp(224)
  wire[19:0] sel779; // spmv.cpp(224)
  reg[19:0] sel780; // spmv.cpp(202)
  wire sel781; // spmv.cpp(224)
  wire eq782;
  wire and783;
  wire[63:0] sel784; // spmv.cpp(224)
  wire[1:0] sel787; // spmv.cpp(205)
  wire[1:0] sel788; // spmv.cpp(243)
  wire[1:0] sel789; // spmv.cpp(224)
  wire[1:0] sel790; // spmv.cpp(243)
  wire[1:0] sel791; // spmv.cpp(224)
  reg[1:0] sel792; // spmv.cpp(202)
  wire[4:0] sel793; // spmv.cpp(207)
  wire[4:0] sel794; // spmv.cpp(205)
  wire[4:0] sel795; // spmv.cpp(224)
  wire[4:0] sel796; // spmv.cpp(224)
  reg[4:0] sel797; // spmv.cpp(202)
  wire[31:0] sel799; // spmv.cpp(207)
  wire and800;
  wire[31:0] sel801; // spmv.cpp(224)
  wire[31:0] sel802; // spmv.cpp(224)
  reg[31:0] sel803; // spmv.cpp(202)
  wire[479:0] sel805; // spmv.cpp(207)
  wire[479:0] sel806; // spmv.cpp(205)
  wire[479:0] sel807; // spmv.cpp(224)
  wire[479:0] sel808; // spmv.cpp(224)
  reg[479:0] sel809; // spmv.cpp(202)
  wire[31:0] sel811; // spmv.cpp(207)
  wire[31:0] sel812; // spmv.cpp(205)
  wire[31:0] sel813; // spmv.cpp(224)
  wire[31:0] sel814; // spmv.cpp(224)
  reg[31:0] sel815; // spmv.cpp(202)
  wire sel816; // spmv.cpp(224)
  wire sel819; // spmv.cpp(205)
  wire eq820;
  wire and821;

  assign proxy42 = io_ctx[131:0];
  assign proxy43 = proxy42[31:0];
  assign bindin68 = clk;
  assign bindin69 = reset;
  spmv_dcsc_walk __module1__(.clk(bindin68), .reset(bindin69), .io_ctrl_start_valid(bindin70), .io_ctrl_start_data(bindin76), .io_ctrl_timer(bindin82), .io_lsu_rd_req_ready(bindin107), .io_lsu_rd_rsp_valid(bindin110), .io_lsu_rd_rsp_data(bindin115), .io_pe_ready(bindin128), .io_ctrl_start_ready(bindout79), .io_ctrl_stats(bindout96), .io_lsu_rd_req_valid(bindout99), .io_lsu_rd_req_data(bindout104), .io_pe_valid(bindout118), .io_pe_data(bindout125));
  assign bindin70 = sel781;
  assign bindin76 = sel784;
  assign bindin82 = reg493;
  assign bindin107 = bindout378;
  assign bindin110 = bindout381;
  assign bindin115 = bindout386;
  assign bindin128 = bindout208;
  assign bindin132 = clk;
  assign bindin133 = reset;
  spmv_dcsc_walk __module8__(.clk(bindin132), .reset(bindin133), .io_ctrl_start_valid(bindin134), .io_ctrl_start_data(bindin140), .io_ctrl_timer(bindin146), .io_lsu_rd_req_ready(bindin171), .io_lsu_rd_rsp_valid(bindin174), .io_lsu_rd_rsp_data(bindin179), .io_pe_ready(bindin192), .io_ctrl_start_ready(bindout143), .io_ctrl_stats(bindout160), .io_lsu_rd_req_valid(bindout163), .io_lsu_rd_req_data(bindout168), .io_pe_valid(bindout182), .io_pe_data(bindout189));
  assign bindin134 = sel816;
  assign bindin140 = sel775;
  assign bindin146 = reg493;
  assign bindin171 = bindout397;
  assign bindin174 = bindout400;
  assign bindin179 = bindout405;
  assign bindin192 = bindout244;
  assign bindin196 = clk;
  assign bindin197 = reset;
  spmv_pe __module15__(.clk(bindin196), .reset(bindin197), .io_req_valid(bindin198), .io_req_data(bindin205), .io_lsu_wr_req_ready(bindin220), .io_req_ready(bindout208), .io_lsu_wr_req_valid(bindout211), .io_lsu_wr_req_data(bindout217), .io_stats(bindout225), .io_is_idle(bindout228));
  assign bindin198 = bindout118;
  assign bindin205 = bindout125;
  assign bindin220 = bindout417;
  assign bindin232 = clk;
  assign bindin233 = reset;
  spmv_pe __module18__(.clk(bindin232), .reset(bindin233), .io_req_valid(bindin234), .io_req_data(bindin241), .io_lsu_wr_req_ready(bindin256), .io_req_ready(bindout244), .io_lsu_wr_req_valid(bindout247), .io_lsu_wr_req_data(bindout253), .io_stats(bindout261), .io_is_idle(bindout264));
  assign bindin234 = bindout182;
  assign bindin241 = bindout189;
  assign bindin256 = bindout429;
  assign bindin268 = clk;
  assign bindin269 = reset;
  spmv_lsu __module21__(.clk(bindin268), .reset(bindin269), .io_qpi_rd_req_almostfull(bindin270), .io_qpi_rd_rsp_mdata(bindin282), .io_qpi_rd_rsp_data(bindin285), .io_qpi_rd_rsp_valid(bindin288), .io_qpi_wr_req_almostfull(bindin291), .io_qpi_wr_rsp0_mdata(bindin306), .io_qpi_wr_rsp0_valid(bindin309), .io_qpi_wr_rsp1_mdata(bindin312), .io_qpi_wr_rsp1_valid(bindin315), .io_ctx(bindin333), .io_ctrl_rd_req_valid(bindin336), .io_ctrl_rd_req_data(bindin341), .io_ctrl_wr_req_valid(bindin347), .io_ctrl_wr_req_data(bindin353), .io_walkers_0_rd_req_valid(bindin370), .io_walkers_0_rd_req_data(bindin375), .io_walkers_1_rd_req_valid(bindin389), .io_walkers_1_rd_req_data(bindin394), .io_PEs_0_wr_req_valid(bindin408), .io_PEs_0_wr_req_data(bindin414), .io_PEs_1_wr_req_valid(bindin420), .io_PEs_1_wr_req_data(bindin426), .io_qpi_rd_req_addr(bindout273), .io_qpi_rd_req_mdata(bindout276), .io_qpi_rd_req_valid(bindout279), .io_qpi_wr_req_addr(bindout294), .io_qpi_wr_req_mdata(bindout297), .io_qpi_wr_req_data(bindout300), .io_qpi_wr_req_valid(bindout303), .io_ctrl_rd_req_ready(bindout344), .io_ctrl_wr_req_ready(bindout356), .io_ctrl_rd_rsp_valid(bindout359), .io_ctrl_rd_rsp_data(bindout364), .io_ctrl_outstanding_writes(bindout367), .io_walkers_0_rd_req_ready(bindout378), .io_walkers_0_rd_rsp_valid(bindout381), .io_walkers_0_rd_rsp_data(bindout386), .io_walkers_1_rd_req_ready(bindout397), .io_walkers_1_rd_rsp_valid(bindout400), .io_walkers_1_rd_rsp_data(bindout405), .io_PEs_0_wr_req_ready(bindout417), .io_PEs_1_wr_req_ready(bindout429));
  assign bindin270 = io_qpi_rd_req_almostfull;
  assign bindin282 = io_qpi_rd_rsp_mdata;
  assign bindin285 = io_qpi_rd_rsp_data;
  assign bindin288 = io_qpi_rd_rsp_valid;
  assign bindin291 = io_qpi_wr_req_almostfull;
  assign bindin306 = io_qpi_wr_rsp0_mdata;
  assign bindin309 = io_qpi_wr_rsp0_valid;
  assign bindin312 = io_qpi_wr_rsp1_mdata;
  assign bindin315 = io_qpi_wr_rsp1_valid;
  assign bindin333 = io_ctx;
  assign bindin336 = sel693;
  assign proxy338 = {reg464, 3'h0};
  assign proxy339 = proxy338[2:0];
  assign bindin341 = proxy338;
  assign bindin347 = sel669;
  assign proxy349 = {sel681, sel680, sel679};
  assign bindin353 = proxy349;
  assign bindin370 = bindout99;
  assign bindin375 = bindout104;
  assign bindin389 = bindout163;
  assign bindin394 = bindout168;
  assign bindin408 = bindout211;
  assign bindin414 = bindout217;
  assign bindin420 = bindout247;
  assign bindin426 = bindout253;
  assign bindin433 = clk;
  assign bindin434 = reset;
  ch_queue_1 __module29__(.clk(bindin433), .reset(bindin434), .io_enq_valid(bindin435), .io_enq_data(bindin438), .io_deq_ready(bindin450), .io_deq_valid(bindout444), .io_deq_data(bindout447));
  assign bindin435 = and510;
  assign bindin438 = bindout364[514:3];
  assign bindin450 = sel819;
  always @ (posedge clk) begin
    reg455 <= proxy704;
  end
  always @ (posedge clk) begin
    reg458 <= sel797;
  end
  always @ (posedge clk) begin
    reg461 <= sub525;
  end
  always @ (posedge clk) begin
    reg464 <= sel678;
  end
  always @ (posedge clk) begin
    reg467 <= sub553;
  end
  always @ (posedge clk) begin
    reg470 <= sel666;
  end
  always @ (posedge clk) begin
    reg473 <= ch_ctrl_stats_t559;
  end
  always @ (posedge clk) begin
    reg481 <= sel780;
  end
  always @ (posedge clk) begin
    reg484 <= sub490;
  end
  assign proxy487 = proxy43[19:0];
  assign sub490 = proxy487 - 20'h1;
  always @ (posedge clk) begin
    reg493 <= add497;
  end
  assign add497 = reg493 + 64'h1;
  always @ (posedge clk) begin
    reg502 <= reset ? 3'h0 : sel692;
  end
  always @ (posedge clk) begin
    reg505 <= sel673;
  end
  assign eq508 = bindout364[2:0] == 3'h0;
  assign and510 = bindout359 & eq508;
  assign zext512 = {{31{1'b0}}, sel819};
  assign eq515 = proxy339 == 3'h0;
  assign and517 = sel693 & bindout344;
  assign and519 = and517 & eq515;
  assign zext521 = {{31{1'b0}}, and519};
  assign add523 = reg461 + zext521;
  assign sub525 = add523 - zext512;
  assign and527 = bindout79 & bindout228;
  assign and530 = and527 & bindout143;
  assign and532 = and530 & bindout264;
  assign add536 = proxy43 + 32'h1;
  assign sll540 = add536 << 32'h2;
  assign add544 = sll540 + 32'h3f;
  assign srl548 = add544 >> 32'h6;
  assign sub553 = srl548[19:0] - 20'h1;
  assign ch_ctrl_stats_t559 = {reg473[95:32], sel699};
  assign ne565 = proxy43 != 32'h0;
  assign ne575 = reg461 != 32'h4;
  assign add578 = reg464 + 20'h1;
  assign eq580 = reg464 == reg467;
  assign add585 = reg473[31:0] + 32'h1;
  assign eq590 = reg481 == proxy487;
  assign and592 = eq590 & and532;
  assign zext600 = {{18{1'b0}}, reg470};
  assign zext602 = {{416{1'b0}}, reg473};
  assign ch_cu_stats_t606 = {bindout225, bindout96};
  assign zext624 = {{96{1'b0}}, ch_cu_stats_t606};
  assign ch_cu_stats_t628 = {bindout261, bindout160};
  assign zext646 = {{96{1'b0}}, ch_cu_stats_t628};
  assign eq648 = reg470 == 2'h1;
  assign sel649 = eq648 ? zext624 : zext646;
  assign eq650 = reg470 == 2'h0;
  assign sel651 = eq650 ? zext602 : sel649;
  assign add654 = reg470 + 2'h1;
  assign eq657 = reg470 == 2'h2;
  assign eq662 = bindout367 == 32'h0;
  assign sel666 = and668 ? add654 : reg470;
  assign eq667 = reg502 == 3'h4;
  assign and668 = eq667 & bindout356;
  always @(*) begin
    case (reg502)
      3'h3: sel669 = 1'h1;
      3'h4: sel669 = 1'h1;
      default: sel669 = 1'h0;
    endcase
  end
  assign sel670 = ne565 ? 1'h0 : 1'h1;
  assign sel671 = io_start ? sel670 : reg505;
  assign sel672 = eq662 ? 1'h1 : reg505;
  always @(*) begin
    case (reg502)
      3'h0: sel673 = sel671;
      3'h5: sel673 = sel672;
      default: sel673 = reg505;
    endcase
  end
  assign sel674 = and675 ? 20'h0 : reg464;
  assign and675 = io_start & ne565;
  assign sel676 = and677 ? add578 : reg464;
  assign and677 = ne575 & bindout344;
  always @(*) begin
    case (reg502)
      3'h0: sel678 = sel674;
      3'h1: sel678 = sel676;
      default: sel678 = reg464;
    endcase
  end
  always @(*) begin
    case (reg502)
      3'h3: sel679 = 2'h1;
      3'h4: sel679 = 2'h2;
      default: sel679 = 2'h0;
    endcase
  end
  assign sel680 = (reg502 == 3'h4) ? zext600 : 20'h0;
  assign sel681 = (reg502 == 3'h4) ? sel651 : lit558;
  assign sel682 = and675 ? 3'h1 : reg502;
  assign sel684 = and686 ? 3'h2 : reg502;
  assign and685 = bindout344 & eq580;
  assign and686 = ne575 & and685;
  assign sel687 = and592 ? 3'h3 : reg502;
  assign sel688 = bindout356 ? 3'h4 : reg502;
  assign sel689 = and690 ? 3'h5 : reg502;
  assign and690 = bindout356 & eq657;
  assign sel691 = eq662 ? 3'h0 : reg502;
  always @(*) begin
    case (reg502)
      3'h0: sel692 = sel682;
      3'h1: sel692 = sel684;
      3'h2: sel692 = sel687;
      3'h3: sel692 = sel688;
      3'h4: sel692 = sel689;
      3'h5: sel692 = sel691;
      default: sel692 = reg502;
    endcase
  end
  assign sel693 = and695 ? 1'h1 : 1'h0;
  assign eq694 = reg502 == 3'h1;
  assign and695 = eq694 & ne575;
  assign sel697 = bindout344 ? reg473[31:0] : add585;
  assign sel698 = ne575 ? sel697 : add585;
  assign sel699 = (reg502 == 3'h1) ? sel698 : reg473[31:0];
  always @ (posedge clk) begin
    reg701 <= sel792;
  end
  assign proxy704 = {sel815, sel809, sel803};
  assign eq707 = 5'h0 == reg458;
  assign srl726 = reg455 >> 32'h20;
  assign add732 = reg481 + 20'h1;
  assign sub736 = reg458 - 5'h1;
  assign ne740 = reg458 != 5'h10;
  assign ne742 = reg481 != reg484;
  assign and744 = ne742 & ne740;
  assign sel775 = and777 ? reg455[63:0] : 64'h0;
  assign eq776 = reg701 == 2'h2;
  assign and777 = eq776 & bindout143;
  assign sel778 = bindout79 ? add732 : reg481;
  assign sel779 = bindout143 ? add732 : reg481;
  always @(*) begin
    case (reg701)
      2'h1: sel780 = sel778;
      2'h2: sel780 = sel779;
      default: sel780 = reg481;
    endcase
  end
  assign sel781 = and783 ? 1'h1 : 1'h0;
  assign eq782 = reg701 == 2'h1;
  assign and783 = eq782 & bindout79;
  assign sel784 = and783 ? reg455[63:0] : 64'h0;
  assign sel787 = bindout444 ? 2'h1 : reg701;
  assign sel788 = and744 ? 2'h2 : 2'h0;
  assign sel789 = bindout79 ? sel788 : 2'h2;
  assign sel790 = and744 ? 2'h1 : 2'h0;
  assign sel791 = bindout143 ? sel790 : 2'h1;
  always @(*) begin
    case (reg701)
      2'h0: sel792 = sel787;
      2'h1: sel792 = sel789;
      2'h2: sel792 = sel791;
      default: sel792 = reg701;
    endcase
  end
  assign sel793 = eq707 ? 5'h80 : 5'h81;
  assign sel794 = bindout444 ? sel793 : reg458;
  assign sel795 = bindout79 ? sub736 : reg458;
  assign sel796 = bindout143 ? sub736 : reg458;
  always @(*) begin
    case (reg701)
      2'h0: sel797 = sel794;
      2'h1: sel797 = sel795;
      2'h2: sel797 = sel796;
      default: sel797 = reg458;
    endcase
  end
  assign sel799 = and800 ? bindout447[31:0] : reg455[31:0];
  assign and800 = bindout444 & eq707;
  assign sel801 = bindout79 ? srl726[31:0] : reg455[31:0];
  assign sel802 = bindout143 ? srl726[31:0] : reg455[31:0];
  always @(*) begin
    case (reg701)
      2'h0: sel803 = sel799;
      2'h1: sel803 = sel801;
      2'h2: sel803 = sel802;
      default: sel803 = reg455[31:0];
    endcase
  end
  assign sel805 = eq707 ? bindout447[511:32] : bindout447[479:0];
  assign sel806 = bindout444 ? sel805 : reg455[511:32];
  assign sel807 = bindout79 ? srl726[511:32] : reg455[511:32];
  assign sel808 = bindout143 ? srl726[511:32] : reg455[511:32];
  always @(*) begin
    case (reg701)
      2'h0: sel809 = sel806;
      2'h1: sel809 = sel807;
      2'h2: sel809 = sel808;
      default: sel809 = reg455[511:32];
    endcase
  end
  assign sel811 = eq707 ? reg455[543:512] : bindout447[511:480];
  assign sel812 = bindout444 ? sel811 : reg455[543:512];
  assign sel813 = bindout79 ? srl726[543:512] : reg455[543:512];
  assign sel814 = bindout143 ? srl726[543:512] : reg455[543:512];
  always @(*) begin
    case (reg701)
      2'h0: sel815 = sel812;
      2'h1: sel815 = sel813;
      2'h2: sel815 = sel814;
      default: sel815 = reg455[543:512];
    endcase
  end
  assign sel816 = and777 ? 1'h1 : 1'h0;
  assign sel819 = and821 ? 1'h1 : 1'h0;
  assign eq820 = reg701 == 2'h0;
  assign and821 = eq820 & bindout444;

  assign io_qpi_rd_req_addr = bindout273;
  assign io_qpi_rd_req_mdata = bindout276;
  assign io_qpi_rd_req_valid = bindout279;
  assign io_qpi_wr_req_addr = bindout294;
  assign io_qpi_wr_req_mdata = bindout297;
  assign io_qpi_wr_req_data = bindout300;
  assign io_qpi_wr_req_valid = bindout303;
  assign io_done = reg505;

endmodule
