

module ch_queue(
  input wire clk,
  input wire reset,
  input wire[511:0] io_enq_data,
  input wire io_enq_valid,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire[511:0] io_deq_data,
  output wire io_deq_valid,
  output wire[1:0] io_size
);
  reg[1:0] reg22;
  reg[1:0] reg29;
  wire proxy32; // /home/blaise/dev/cash/include/htl/queue.h(27)
  wire and36; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire and39; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[1:0] add44; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] sel46; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] add50; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[1:0] sel52; // /home/blaise/dev/cash/include/htl/queue.h(34)
  reg[511:0] mem54[0:1]; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire ne59; // /home/blaise/dev/cash/include/htl/queue.h(40)
  wire eq63; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire ne66; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire or68; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire[1:0] sub71; // /home/blaise/dev/cash/include/htl/queue.h(42)

  always @ (posedge clk) begin
    reg22 <= reset ? 2'h0 : sel46;
  end
  always @ (posedge clk) begin
    reg29 <= reset ? 2'h0 : sel52;
  end
  assign proxy32 = reg22[0];
  assign and36 = io_deq_ready & ne59;
  assign and39 = io_enq_valid & or68;
  assign add44 = reg22 + 2'h1;
  assign sel46 = and36 ? add44 : reg22;
  assign add50 = reg29 + 2'h1;
  assign sel52 = and39 ? add50 : reg29;
  always @(posedge clk) begin
    if (and39) begin
      mem54[reg29[0]] = io_enq_data;
    end
  end
  assign ne59 = reg29 != reg22;
  assign eq63 = reg29[1] == reg22[1];
  assign ne66 = reg29[0] != proxy32;
  assign or68 = ne66 | eq63;
  assign sub71 = reg29 - reg22;

  assign io_enq_ready = or68;
  assign io_deq_data = mem54[proxy32];
  assign io_deq_valid = ne59;
  assign io_size = sub71;

endmodule


module ch_queue_0(
  input wire clk,
  input wire reset,
  input wire[511:0] io_enq_data,
  input wire io_enq_valid,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire[511:0] io_deq_data,
  output wire io_deq_valid,
  output wire[5:0] io_size
);
  reg[5:0] reg22;
  reg[5:0] reg29;
  wire[4:0] proxy32; // /home/blaise/dev/cash/include/htl/queue.h(27)
  wire and36; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire and39; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[5:0] add44; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[5:0] sel46; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[5:0] add50; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[5:0] sel52; // /home/blaise/dev/cash/include/htl/queue.h(34)
  reg[511:0] mem54[0:31]; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire ne59; // /home/blaise/dev/cash/include/htl/queue.h(40)
  wire eq63; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire ne66; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire or68; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire[5:0] sub71; // /home/blaise/dev/cash/include/htl/queue.h(42)

  always @ (posedge clk) begin
    reg22 <= reset ? 6'h0 : sel46;
  end
  always @ (posedge clk) begin
    reg29 <= reset ? 6'h0 : sel52;
  end
  assign proxy32 = reg22[4:0];
  assign and36 = io_deq_ready & ne59;
  assign and39 = io_enq_valid & or68;
  assign add44 = reg22 + 6'h1;
  assign sel46 = and36 ? add44 : reg22;
  assign add50 = reg29 + 6'h1;
  assign sel52 = and39 ? add50 : reg29;
  always @(posedge clk) begin
    if (and39) begin
      mem54[reg29[4:0]] = io_enq_data;
    end
  end
  assign ne59 = reg29 != reg22;
  assign eq63 = reg29[5] == reg22[5];
  assign ne66 = reg29[4:0] != proxy32;
  assign or68 = ne66 | eq63;
  assign sub71 = reg29 - reg22;

  assign io_enq_ready = or68;
  assign io_deq_data = mem54[proxy32];
  assign io_deq_valid = ne59;
  assign io_size = sub71;

endmodule




module spmv_dcsc_walk(
  input wire clk,
  input wire reset,
  input wire[63:0] io_ctrl_start_data,
  input wire io_ctrl_start_valid,
  input wire[63:0] io_ctrl_timer,
  input wire io_lsu_rd_req_ready,
  input wire[514:0] io_lsu_rd_rsp_data,
  input wire io_lsu_rd_rsp_valid,
  input wire io_pe_ready,
  output wire io_ctrl_start_ready,
  output wire[351:0] io_ctrl_stats,
  output wire[22:0] io_lsu_rd_req_data,
  output wire io_lsu_rd_req_valid,
  output wire[84:0] io_pe_data,
  output wire io_pe_valid
);
  wire[351:0] lit287 = 352'h0;
  wire[31:0] io_ctrl_start_data_part_start4; // dcsc_walk.cpp(41)
  wire[31:0] io_ctrl_start_data_part_end5; // dcsc_walk.cpp(41)
  wire[22:0] io_lsu_rd_req_data28; // dcsc_walk.cpp(41)
  wire[2:0] io_lsu_rd_req_data_type29; // dcsc_walk.cpp(41)
  reg[19:0] reg56; // dcsc_walk.cpp(41)
  reg[19:0] reg61; // dcsc_walk.cpp(41)
  reg[19:0] reg64; // dcsc_walk.cpp(41)
  reg[19:0] reg67; // dcsc_walk.cpp(41)
  reg[19:0] reg70; // dcsc_walk.cpp(41)
  reg[19:0] reg73; // dcsc_walk.cpp(41)
  reg[19:0] reg78;
  reg[19:0] reg83;
  reg[19:0] reg86; // dcsc_walk.cpp(41)
  reg[19:0] reg89; // dcsc_walk.cpp(41)
  reg[19:0] reg92; // dcsc_walk.cpp(41)
  reg[5:0] reg95; // dcsc_walk.cpp(41)
  reg[31:0] reg98; // dcsc_walk.cpp(41)
  wire bindin103;
  wire bindin104;
  wire[511:0] bindin105;
  wire bindin108;
  wire[511:0] bindout114;
  wire bindout117;
  wire bindin120;
  wire bindin127;
  wire bindin128;
  wire[511:0] bindin129;
  wire bindin132;
  wire[511:0] bindout138;
  wire bindout141;
  wire bindin144;
  wire bindin151;
  wire bindin152;
  wire[511:0] bindin153;
  wire bindin156;
  wire[511:0] bindout162;
  wire bindin168;
  wire bindin175;
  wire bindin176;
  wire[511:0] bindin177;
  wire bindin180;
  wire[511:0] bindout186;
  wire bindin192;
  wire[5:0] bindout195;
  wire bindin199;
  wire bindin200;
  wire[511:0] bindin201;
  wire bindin204;
  wire[511:0] bindout210;
  wire bindout213;
  wire bindin216;
  wire bindin223;
  wire bindin224;
  wire[511:0] bindin225;
  wire bindin228;
  wire[511:0] bindout234;
  wire bindout237;
  wire bindin240;
  reg[7:0] reg247;
  reg[7:0] reg251;
  reg[7:0] reg255;
  reg[7:0] reg259;
  reg[7:0] reg263;
  reg[7:0] reg267;
  reg[511:0] reg270; // dcsc_walk.cpp(41)
  reg[511:0] reg273; // dcsc_walk.cpp(41)
  reg[511:0] reg276; // dcsc_walk.cpp(41)
  reg[511:0] reg279; // dcsc_walk.cpp(41)
  reg[31:0] reg282; // dcsc_walk.cpp(41)
  reg[63:0] reg285; // dcsc_walk.cpp(41)
  reg[351:0] reg301;
  wire eq317; // lsu.h(23)
  wire and320; // dcsc_walk.cpp(59)
  wire eq325; // lsu.h(23)
  wire and328; // dcsc_walk.cpp(60)
  wire eq333; // lsu.h(23)
  wire and336; // dcsc_walk.cpp(61)
  wire eq341; // lsu.h(23)
  wire and344; // dcsc_walk.cpp(62)
  wire eq349; // lsu.h(23)
  wire and352; // dcsc_walk.cpp(63)
  wire eq357; // lsu.h(23)
  wire and360; // dcsc_walk.cpp(64)
  reg[22:0] reg365;
  wire eq369; // dcsc_walk.cpp(6)
  wire eq373; // lsu.h(23)
  wire and376; // dcsc_walk.cpp(78)
  wire and378; // dcsc_walk.cpp(78)
  wire eq383; // dcsc_walk.cpp(82)
  wire and385; // dcsc_walk.cpp(82)
  wire eq389; // dcsc_walk.cpp(79)
  wire and392; // dcsc_walk.cpp(79)
  wire[7:0] add397; // dcsc_walk.cpp(80)
  wire[7:0] sub401; // dcsc_walk.cpp(83)
  reg[7:0] sel403; // dcsc_walk.cpp(79)
  wire eq406; // lsu.h(23)
  wire and411; // dcsc_walk.cpp(78)
  wire eq415; // dcsc_walk.cpp(82)
  wire and417; // dcsc_walk.cpp(82)
  wire eq421; // dcsc_walk.cpp(79)
  wire and424; // dcsc_walk.cpp(79)
  wire[7:0] add428; // dcsc_walk.cpp(80)
  wire[7:0] sub432; // dcsc_walk.cpp(83)
  reg[7:0] sel434; // dcsc_walk.cpp(79)
  wire eq437; // lsu.h(23)
  wire and442; // dcsc_walk.cpp(78)
  wire eq446; // dcsc_walk.cpp(82)
  wire and448; // dcsc_walk.cpp(82)
  wire eq452; // dcsc_walk.cpp(79)
  wire and455; // dcsc_walk.cpp(79)
  wire[7:0] add459; // dcsc_walk.cpp(80)
  wire[7:0] sub463; // dcsc_walk.cpp(83)
  reg[7:0] sel465; // dcsc_walk.cpp(79)
  wire eq468; // lsu.h(23)
  wire and473; // dcsc_walk.cpp(78)
  wire eq477; // dcsc_walk.cpp(82)
  wire and479; // dcsc_walk.cpp(82)
  wire and486; // dcsc_walk.cpp(79)
  wire[7:0] add490; // dcsc_walk.cpp(80)
  wire[7:0] sub494; // dcsc_walk.cpp(83)
  reg[7:0] sel496; // dcsc_walk.cpp(79)
  wire eq499; // lsu.h(23)
  wire and504; // dcsc_walk.cpp(78)
  wire eq508; // dcsc_walk.cpp(82)
  wire and510; // dcsc_walk.cpp(82)
  wire eq514; // dcsc_walk.cpp(79)
  wire and517; // dcsc_walk.cpp(79)
  wire[7:0] add521; // dcsc_walk.cpp(80)
  wire[7:0] sub525; // dcsc_walk.cpp(83)
  reg[7:0] sel527; // dcsc_walk.cpp(79)
  wire eq530; // lsu.h(23)
  wire and535; // dcsc_walk.cpp(78)
  wire eq539; // dcsc_walk.cpp(82)
  wire and541; // dcsc_walk.cpp(82)
  wire eq545; // dcsc_walk.cpp(79)
  wire and548; // dcsc_walk.cpp(79)
  wire[7:0] add552; // dcsc_walk.cpp(80)
  wire[7:0] sub556; // dcsc_walk.cpp(83)
  reg[7:0] sel558; // dcsc_walk.cpp(79)
  reg reg560; // dcsc_walk.cpp(110)
  reg reg563; // dcsc_walk.cpp(111)
  reg reg566; // dcsc_walk.cpp(112)
  reg reg572; // dcsc_walk.cpp(114)
  reg reg575; // dcsc_walk.cpp(115)
  reg[84:0] reg578; // dcsc_walk.cpp(118)
  wire[84:0] proxy584; // dcsc_walk.cpp(119)
  reg reg590; // dcsc_walk.cpp(123)
  wire[351:0] proxy597; // dcsc_walk.cpp(140)
  wire[19:0] proxy610; // dcsc_walk.cpp(149)
  wire[19:0] proxy614; // dcsc_walk.cpp(150)
  wire[19:0] sub615; // dcsc_walk.cpp(150)
  wire[19:0] sll623; // dcsc_walk.cpp(162)
  wire[19:0] srl627; // dcsc_walk.cpp(162)
  wire ne632; // dcsc_walk.cpp(163)
  wire[31:0] add641; // dcsc_walk.cpp(170)
  wire ne657; // dcsc_walk.cpp(181)
  wire[31:0] add664; // dcsc_walk.cpp(189)
  wire and671; // dcsc_walk.cpp(198)
  wire[19:0] and677; // dcsc_walk.cpp(201)
  wire[19:0] sll681; // dcsc_walk.cpp(201)
  wire[511:0] srl683; // dcsc_walk.cpp(201)
  wire[511:0] srl695; // dcsc_walk.cpp(206)
  wire ne704; // dcsc_walk.cpp(210)
  wire[19:0] add714; // dcsc_walk.cpp(220)
  wire[19:0] and716; // dcsc_walk.cpp(220)
  wire[19:0] sll719; // dcsc_walk.cpp(220)
  wire[511:0] srl721; // dcsc_walk.cpp(220)
  wire[19:0] sll733; // dcsc_walk.cpp(227)
  wire[19:0] srl736; // dcsc_walk.cpp(227)
  wire[19:0] sub762; // dcsc_walk.cpp(259)
  wire[19:0] srl766; // dcsc_walk.cpp(261)
  wire[19:0] sll770; // dcsc_walk.cpp(262)
  wire[19:0] srl773; // dcsc_walk.cpp(262)
  wire eq776; // dcsc_walk.cpp(263)
  wire[19:0] and781; // dcsc_walk.cpp(265)
  wire[19:0] sll784; // dcsc_walk.cpp(265)
  wire[511:0] srl786; // dcsc_walk.cpp(265)
  wire[19:0] and797; // dcsc_walk.cpp(266)
  wire[31:0] sll799; // dcsc_walk.cpp(266)
  wire[31:0] and802; // dcsc_walk.cpp(266)
  wire ne804; // dcsc_walk.cpp(266)
  wire[19:0] sll814; // dcsc_walk.cpp(282)
  wire[19:0] srl817; // dcsc_walk.cpp(282)
  wire eq820; // dcsc_walk.cpp(283)
  wire ne829; // dcsc_walk.cpp(297)
  wire[31:0] add836; // dcsc_walk.cpp(305)
  wire[511:0] srl854; // dcsc_walk.cpp(320)
  wire[31:0] and868; // dcsc_walk.cpp(321)
  wire ne870; // dcsc_walk.cpp(321)
  wire ne888; // dcsc_walk.cpp(337)
  wire[31:0] add894; // dcsc_walk.cpp(345)
  wire[19:0] sll902; // dcsc_walk.cpp(354)
  wire[19:0] srl905; // dcsc_walk.cpp(354)
  wire[19:0] sll911; // dcsc_walk.cpp(355)
  wire[19:0] add913; // dcsc_walk.cpp(355)
  wire[19:0] srl916; // dcsc_walk.cpp(355)
  wire[19:0] sub921; // dcsc_walk.cpp(361)
  wire[19:0] sub927; // dcsc_walk.cpp(363)
  wire ne935; // dcsc_walk.cpp(371)
  wire[31:0] add942; // dcsc_walk.cpp(379)
  wire ne951; // dcsc_walk.cpp(390)
  wire[19:0] add956; // dcsc_walk.cpp(394)
  wire ne959; // dcsc_walk.cpp(395)
  wire[31:0] add966; // dcsc_walk.cpp(404)
  wire eq973; // dcsc_walk.cpp(415)
  wire[19:0] and978; // dcsc_walk.cpp(420)
  wire[19:0] sll981; // dcsc_walk.cpp(420)
  wire[511:0] srl983; // dcsc_walk.cpp(420)
  wire[511:0] srl995; // dcsc_walk.cpp(423)
  wire[19:0] and1008; // dcsc_walk.cpp(434)
  wire[19:0] sll1011; // dcsc_walk.cpp(434)
  wire[511:0] srl1013; // dcsc_walk.cpp(434)
  wire[511:0] srl1025; // dcsc_walk.cpp(435)
  wire[19:0] add1032; // dcsc_walk.cpp(443)
  wire ne1035; // dcsc_walk.cpp(445)
  wire eq1042; // dcsc_walk.cpp(447)
  wire[31:0] add1049; // dcsc_walk.cpp(463)
  wire ne1057; // dcsc_walk.cpp(474)
  wire[511:0] srl1079; // dcsc_walk.cpp(490)
  wire[511:0] srl1091; // dcsc_walk.cpp(492)
  wire[63:0] sub1105; // dcsc_walk.cpp(504)
  wire lt1112; // /home/blaise/dev/cash/include/select.h(132)
  wire[31:0] sel1114; // dcsc_walk.cpp(515)
  wire eq1118; // dcsc_walk.cpp(515)
  wire[31:0] sel1120; // dcsc_walk.cpp(515)
  reg[31:0] reg1123;
  wire gt1126; // /home/blaise/dev/cash/include/select.h(137)
  wire[31:0] sel1128; // dcsc_walk.cpp(516)
  wire[31:0] add1131; // dcsc_walk.cpp(517)
  wire[31:0] add1135; // dcsc_walk.cpp(518)
  wire[31:0] sel1142; // dcsc_walk.cpp(144)
  wire[31:0] sel1143; // dcsc_walk.cpp(416)
  wire[31:0] sel1144; // dcsc_walk.cpp(415)
  wire eq1145; // dcsc_walk.cpp(144)
  wire and1146; // dcsc_walk.cpp(144)
  wire[511:0] sel1147; // dcsc_walk.cpp(416)
  wire and1148; // dcsc_walk.cpp(144)
  wire and1150; // dcsc_walk.cpp(144)
  wire[19:0] sel1151; // dcsc_walk.cpp(144)
  wire[5:0] sel1152; // dcsc_walk.cpp(144)
  wire[19:0] sel1153; // dcsc_walk.cpp(144)
  wire sel1154; // dcsc_walk.cpp(447)
  wire sel1155; // dcsc_walk.cpp(445)
  wire sel1156; // dcsc_walk.cpp(441)
  wire eq1157; // dcsc_walk.cpp(144)
  wire and1158; // dcsc_walk.cpp(144)
  wire[19:0] sel1160; // dcsc_walk.cpp(144)
  wire[31:0] sel1162; // dcsc_walk.cpp(144)
  wire[31:0] sel1164; // dcsc_walk.cpp(144)
  reg sel1166; // dcsc_walk.cpp(144)
  wire[19:0] sel1167; // dcsc_walk.cpp(393)
  wire and1168; // dcsc_walk.cpp(144)
  reg[19:0] sel1169; // dcsc_walk.cpp(144)
  wire[511:0] sel1170; // dcsc_walk.cpp(314)
  wire eq1171; // dcsc_walk.cpp(144)
  wire and1172; // dcsc_walk.cpp(144)
  wire[19:0] sel1173; // dcsc_walk.cpp(283)
  wire[19:0] sel1174; // dcsc_walk.cpp(144)
  wire sel1175; // dcsc_walk.cpp(314)
  wire[511:0] sel1178; // dcsc_walk.cpp(198)
  wire eq1179; // dcsc_walk.cpp(144)
  wire and1180; // dcsc_walk.cpp(144)
  wire[19:0] sel1181; // dcsc_walk.cpp(263)
  wire[19:0] sel1182; // dcsc_walk.cpp(144)
  wire[63:0] sel1188; // dcsc_walk.cpp(147)
  wire eq1189; // dcsc_walk.cpp(144)
  wire and1190; // dcsc_walk.cpp(144)
  wire[19:0] sel1191; // dcsc_walk.cpp(147)
  reg[19:0] sel1192; // dcsc_walk.cpp(144)
  reg sel1193; // dcsc_walk.cpp(144)
  wire[31:0] sel1195; // dcsc_walk.cpp(513)
  wire eq1196; // dcsc_walk.cpp(144)
  wire and1197; // dcsc_walk.cpp(144)
  wire[31:0] sel1199; // dcsc_walk.cpp(513)
  wire[31:0] sel1203; // dcsc_walk.cpp(513)
  wire[31:0] sel1207; // dcsc_walk.cpp(513)
  wire[31:0] sel1211; // dcsc_walk.cpp(166)
  wire[31:0] sel1212; // dcsc_walk.cpp(163)
  wire[31:0] sel1213; // dcsc_walk.cpp(144)
  wire[31:0] sel1215; // dcsc_walk.cpp(184)
  wire[31:0] sel1216; // dcsc_walk.cpp(181)
  wire[31:0] sel1219; // dcsc_walk.cpp(246)
  reg[31:0] sel1220; // dcsc_walk.cpp(144)
  wire[31:0] sel1222; // dcsc_walk.cpp(374)
  wire[31:0] sel1223; // dcsc_walk.cpp(371)
  wire[31:0] sel1224; // dcsc_walk.cpp(144)
  wire[31:0] sel1226; // dcsc_walk.cpp(393)
  wire[31:0] sel1227; // dcsc_walk.cpp(390)
  wire[31:0] sel1228; // dcsc_walk.cpp(415)
  reg[31:0] sel1229; // dcsc_walk.cpp(144)
  wire[31:0] sel1231; // dcsc_walk.cpp(340)
  wire[31:0] sel1232; // dcsc_walk.cpp(337)
  wire[31:0] sel1233; // dcsc_walk.cpp(144)
  wire[31:0] sel1235; // dcsc_walk.cpp(300)
  wire[31:0] sel1236; // dcsc_walk.cpp(297)
  wire[31:0] sel1237; // dcsc_walk.cpp(314)
  reg[31:0] sel1238; // dcsc_walk.cpp(144)
  wire[31:0] sel1240; // dcsc_walk.cpp(441)
  reg[31:0] sel1242; // dcsc_walk.cpp(144)
  wire[19:0] sel1243; // dcsc_walk.cpp(147)
  wire[22:0] sel1246; // dcsc_walk.cpp(147)
  wire[22:0] sel1247; // dcsc_walk.cpp(166)
  wire and1248; // dcsc_walk.cpp(144)
  wire[22:0] sel1249; // dcsc_walk.cpp(184)
  wire and1250; // dcsc_walk.cpp(144)
  wire[22:0] sel1251; // dcsc_walk.cpp(210)
  wire[22:0] sel1252; // dcsc_walk.cpp(198)
  wire[22:0] sel1253; // dcsc_walk.cpp(232)
  wire[22:0] sel1255; // dcsc_walk.cpp(246)
  wire[22:0] sel1256; // dcsc_walk.cpp(266)
  wire[22:0] sel1257; // dcsc_walk.cpp(263)
  wire[22:0] sel1258; // dcsc_walk.cpp(283)
  wire[22:0] sel1259; // dcsc_walk.cpp(300)
  wire and1260; // dcsc_walk.cpp(144)
  wire[22:0] sel1261; // dcsc_walk.cpp(321)
  wire[22:0] sel1262; // dcsc_walk.cpp(314)
  wire[22:0] sel1263; // dcsc_walk.cpp(340)
  wire and1264; // dcsc_walk.cpp(144)
  wire[22:0] sel1265; // dcsc_walk.cpp(374)
  wire and1266; // dcsc_walk.cpp(144)
  wire[22:0] sel1267; // dcsc_walk.cpp(395)
  wire[22:0] sel1268; // dcsc_walk.cpp(393)
  wire[22:0] sel1270; // dcsc_walk.cpp(415)
  wire[22:0] sel1271; // dcsc_walk.cpp(447)
  wire[22:0] sel1272; // dcsc_walk.cpp(445)
  wire[22:0] sel1273; // dcsc_walk.cpp(441)
  wire[22:0] sel1274; // dcsc_walk.cpp(476)
  wire[22:0] sel1275; // dcsc_walk.cpp(474)
  wire[22:0] sel1277; // dcsc_walk.cpp(513)
  reg[22:0] sel1278; // dcsc_walk.cpp(144)
  wire[19:0] sel1279; // dcsc_walk.cpp(198)
  reg[19:0] sel1280; // dcsc_walk.cpp(144)
  wire sel1281; // dcsc_walk.cpp(198)
  wire sel1284; // dcsc_walk.cpp(163)
  wire sel1285; // dcsc_walk.cpp(181)
  wire sel1287; // dcsc_walk.cpp(297)
  wire sel1288; // dcsc_walk.cpp(337)
  wire sel1289; // dcsc_walk.cpp(371)
  wire sel1290; // dcsc_walk.cpp(390)
  reg sel1291; // dcsc_walk.cpp(144)
  wire[19:0] sel1292; // dcsc_walk.cpp(198)
  wire[19:0] sel1293; // dcsc_walk.cpp(441)
  reg[19:0] sel1294; // dcsc_walk.cpp(144)
  wire sel1295; // dcsc_walk.cpp(198)
  wire sel1296; // dcsc_walk.cpp(246)
  reg sel1297; // dcsc_walk.cpp(144)
  reg[2:0] sel1298; // dcsc_walk.cpp(144)
  reg[19:0] sel1299; // dcsc_walk.cpp(144)
  wire[511:0] sel1300; // dcsc_walk.cpp(198)
  wire[19:0] sel1303; // dcsc_walk.cpp(246)
  reg[19:0] sel1304; // dcsc_walk.cpp(144)
  wire sel1305; // dcsc_walk.cpp(416)
  wire[19:0] sel1309; // dcsc_walk.cpp(144)

  assign io_ctrl_start_data_part_start4 = io_ctrl_start_data[31:0];
  assign io_ctrl_start_data_part_end5 = io_ctrl_start_data[63:32];
  assign io_lsu_rd_req_data28 = {sel1299, sel1298};
  assign io_lsu_rd_req_data_type29 = io_lsu_rd_req_data28[2:0];
  always @ (posedge clk) begin
    reg56 <= sel1192;
  end
  always @ (posedge clk) begin
    reg61 <= sel1243;
  end
  always @ (posedge clk) begin
    reg64 <= sel1280;
  end
  always @ (posedge clk) begin
    reg67 <= sel1294;
  end
  always @ (posedge clk) begin
    reg70 <= sel1304;
  end
  always @ (posedge clk) begin
    reg73 <= sel1309;
  end
  always @ (posedge clk) begin
    reg78 <= reset ? 20'hfffff : sel1182;
  end
  always @ (posedge clk) begin
    reg83 <= reset ? 20'hfffff : sel1174;
  end
  always @ (posedge clk) begin
    reg86 <= sel1169;
  end
  always @ (posedge clk) begin
    reg89 <= sel1153;
  end
  always @ (posedge clk) begin
    reg92 <= sel1151;
  end
  always @ (posedge clk) begin
    reg95 <= sel1152;
  end
  always @ (posedge clk) begin
    reg98 <= sel1144;
  end
  assign bindin103 = clk;
  assign bindin104 = reset;
  ch_queue __module2__(.clk(bindin103), .reset(bindin104), .io_enq_data(bindin105), .io_enq_valid(bindin108), .io_deq_ready(bindin120), .io_deq_data(bindout114), .io_deq_valid(bindout117));
  assign bindin105 = io_lsu_rd_rsp_data[514:3];
  assign bindin108 = and320;
  assign bindin120 = reg560;
  assign bindin127 = clk;
  assign bindin128 = reset;
  ch_queue __module3__(.clk(bindin127), .reset(bindin128), .io_enq_data(bindin129), .io_enq_valid(bindin132), .io_deq_ready(bindin144), .io_deq_data(bindout138), .io_deq_valid(bindout141));
  assign bindin129 = io_lsu_rd_rsp_data[514:3];
  assign bindin132 = and328;
  assign bindin144 = reg563;
  assign bindin151 = clk;
  assign bindin152 = reset;
  ch_queue_0 __module4__(.clk(bindin151), .reset(bindin152), .io_enq_data(bindin153), .io_enq_valid(bindin156), .io_deq_ready(bindin168), .io_deq_data(bindout162));
  assign bindin153 = io_lsu_rd_rsp_data[514:3];
  assign bindin156 = and336;
  assign bindin168 = reg566;
  assign bindin175 = clk;
  assign bindin176 = reset;
  ch_queue_0 __module5__(.clk(bindin175), .reset(bindin176), .io_enq_data(bindin177), .io_enq_valid(bindin180), .io_deq_ready(bindin192), .io_deq_data(bindout186), .io_size(bindout195));
  assign bindin177 = io_lsu_rd_rsp_data[514:3];
  assign bindin180 = and344;
  assign bindin192 = reg566;
  assign bindin199 = clk;
  assign bindin200 = reset;
  ch_queue __module6__(.clk(bindin199), .reset(bindin200), .io_enq_data(bindin201), .io_enq_valid(bindin204), .io_deq_ready(bindin216), .io_deq_data(bindout210), .io_deq_valid(bindout213));
  assign bindin201 = io_lsu_rd_rsp_data[514:3];
  assign bindin204 = and352;
  assign bindin216 = reg572;
  assign bindin223 = clk;
  assign bindin224 = reset;
  ch_queue __module7__(.clk(bindin223), .reset(bindin224), .io_enq_data(bindin225), .io_enq_valid(bindin228), .io_deq_ready(bindin240), .io_deq_data(bindout234), .io_deq_valid(bindout237));
  assign bindin225 = io_lsu_rd_rsp_data[514:3];
  assign bindin228 = and360;
  assign bindin240 = reg575;
  always @ (posedge clk) begin
    reg247 <= reset ? 8'h0 : sel403;
  end
  always @ (posedge clk) begin
    reg251 <= reset ? 8'h0 : sel434;
  end
  always @ (posedge clk) begin
    reg255 <= reset ? 8'h0 : sel465;
  end
  always @ (posedge clk) begin
    reg259 <= reset ? 8'h0 : sel496;
  end
  always @ (posedge clk) begin
    reg263 <= reset ? 8'h0 : sel527;
  end
  always @ (posedge clk) begin
    reg267 <= reset ? 8'h0 : sel558;
  end
  always @ (posedge clk) begin
    reg270 <= sel1178;
  end
  always @ (posedge clk) begin
    reg273 <= sel1300;
  end
  always @ (posedge clk) begin
    reg276 <= sel1170;
  end
  always @ (posedge clk) begin
    reg279 <= sel1147;
  end
  always @ (posedge clk) begin
    reg282 <= sel1142;
  end
  always @ (posedge clk) begin
    reg285 <= sel1188;
  end
  always @ (posedge clk) begin
    reg301 <= reset ? lit287 : proxy597;
  end
  assign eq317 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign and320 = io_lsu_rd_rsp_valid & eq317;
  assign eq325 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign and328 = io_lsu_rd_rsp_valid & eq325;
  assign eq333 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign and336 = io_lsu_rd_rsp_valid & eq333;
  assign eq341 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign and344 = io_lsu_rd_rsp_valid & eq341;
  assign eq349 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  assign and352 = io_lsu_rd_rsp_valid & eq349;
  assign eq357 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign and360 = io_lsu_rd_rsp_valid & eq357;
  always @ (posedge clk) begin
    reg365 <= reset ? 23'h1 : sel1278;
  end
  assign eq369 = reg365 == 23'h1;
  assign eq373 = io_lsu_rd_req_data_type29 == 3'h1;
  assign and376 = sel1291 & io_lsu_rd_req_ready;
  assign and378 = and376 & eq373;
  assign eq383 = and378 == 1'h0;
  assign and385 = eq383 & reg560;
  assign eq389 = reg560 == 1'h0;
  assign and392 = and378 & eq389;
  assign add397 = reg247 + 8'h1;
  assign sub401 = reg247 - 8'h1;
  always @(*) begin
    if (and392)
      sel403 = add397;
    else if (and385)
      sel403 = sub401;
    else
      sel403 = reg247;
  end
  assign eq406 = io_lsu_rd_req_data_type29 == 3'h2;
  assign and411 = and376 & eq406;
  assign eq415 = and411 == 1'h0;
  assign and417 = eq415 & reg563;
  assign eq421 = reg563 == 1'h0;
  assign and424 = and411 & eq421;
  assign add428 = reg251 + 8'h1;
  assign sub432 = reg251 - 8'h1;
  always @(*) begin
    if (and424)
      sel434 = add428;
    else if (and417)
      sel434 = sub432;
    else
      sel434 = reg251;
  end
  assign eq437 = io_lsu_rd_req_data_type29 == 3'h3;
  assign and442 = and376 & eq437;
  assign eq446 = and442 == 1'h0;
  assign and448 = eq446 & reg566;
  assign eq452 = reg566 == 1'h0;
  assign and455 = and442 & eq452;
  assign add459 = reg255 + 8'h1;
  assign sub463 = reg255 - 8'h1;
  always @(*) begin
    if (and455)
      sel465 = add459;
    else if (and448)
      sel465 = sub463;
    else
      sel465 = reg255;
  end
  assign eq468 = io_lsu_rd_req_data_type29 == 3'h4;
  assign and473 = and376 & eq468;
  assign eq477 = and473 == 1'h0;
  assign and479 = eq477 & reg566;
  assign and486 = and473 & eq452;
  assign add490 = reg259 + 8'h1;
  assign sub494 = reg259 - 8'h1;
  always @(*) begin
    if (and486)
      sel496 = add490;
    else if (and479)
      sel496 = sub494;
    else
      sel496 = reg259;
  end
  assign eq499 = io_lsu_rd_req_data_type29 == 3'h5;
  assign and504 = and376 & eq499;
  assign eq508 = and504 == 1'h0;
  assign and510 = eq508 & reg572;
  assign eq514 = reg572 == 1'h0;
  assign and517 = and504 & eq514;
  assign add521 = reg263 + 8'h1;
  assign sub525 = reg263 - 8'h1;
  always @(*) begin
    if (and517)
      sel527 = add521;
    else if (and510)
      sel527 = sub525;
    else
      sel527 = reg263;
  end
  assign eq530 = io_lsu_rd_req_data_type29 == 3'h6;
  assign and535 = and376 & eq530;
  assign eq539 = and535 == 1'h0;
  assign and541 = eq539 & reg575;
  assign eq545 = reg575 == 1'h0;
  assign and548 = and535 & eq545;
  assign add552 = reg267 + 8'h1;
  assign sub556 = reg267 - 8'h1;
  always @(*) begin
    if (and548)
      sel558 = add552;
    else if (and541)
      sel558 = sub556;
    else
      sel558 = reg267;
  end
  always @ (posedge clk) begin
    reg560 <= sel1281;
  end
  always @ (posedge clk) begin
    reg563 <= sel1297;
  end
  always @ (posedge clk) begin
    reg566 <= sel1156;
  end
  always @ (posedge clk) begin
    reg572 <= sel1305;
  end
  always @ (posedge clk) begin
    reg575 <= sel1175;
  end
  always @ (posedge clk) begin
    reg578 <= proxy584;
  end
  assign proxy584 = {sel1166, sel1164, sel1162, sel1160};
  always @ (posedge clk) begin
    reg590 <= sel1193;
  end
  assign proxy597 = {sel1242, sel1238, sel1233, sel1229, sel1224, sel1220, sel1213, sel1207, sel1203, sel1199, sel1195};
  assign proxy610 = io_ctrl_start_data_part_start4[19:0];
  assign proxy614 = io_ctrl_start_data_part_end5[19:0];
  assign sub615 = proxy614 - 20'h1;
  assign sll623 = reg56 << 32'h2;
  assign srl627 = sll623 >> 32'h6;
  assign ne632 = reg247 != 8'h2;
  assign add641 = reg301[159:128] + 32'h1;
  assign ne657 = reg251 != 8'h2;
  assign add664 = reg301[191:160] + 32'h1;
  assign and671 = bindout117 & bindout141;
  assign and677 = reg56 & 20'hf;
  assign sll681 = and677 << 32'h5;
  assign srl683 = bindout114 >> sll681;
  assign srl695 = bindout138 >> sll681;
  assign ne704 = and677 != 20'hf;
  assign add714 = reg56 + 20'h1;
  assign and716 = add714 & 20'hf;
  assign sll719 = and716 << 32'h5;
  assign srl721 = reg273 >> sll719;
  assign sll733 = add714 << 32'h2;
  assign srl736 = sll733 >> 32'h6;
  assign sub762 = reg70 - 20'h1;
  assign srl766 = reg64 >> 32'h5;
  assign sll770 = srl766 << 32'h2;
  assign srl773 = sll770 >> 32'h6;
  assign eq776 = srl773 == reg78;
  assign and781 = srl766 & 20'hf;
  assign sll784 = and781 << 32'h5;
  assign srl786 = reg276 >> sll784;
  assign and797 = reg64 & 20'h1f;
  assign sll799 = 32'h1 << and797;
  assign and802 = srl786[31:0] & sll799;
  assign ne804 = and802 != 32'h0;
  assign sll814 = reg64 << 32'h2;
  assign srl817 = sll814 >> 32'h6;
  assign eq820 = srl817 == reg83;
  assign ne829 = reg267 != 8'h2;
  assign add836 = reg301[319:288] + 32'h1;
  assign srl854 = bindout234 >> sll784;
  assign and868 = srl854[31:0] & sll799;
  assign ne870 = and868 != 32'h0;
  assign ne888 = reg263 != 8'h2;
  assign add894 = reg301[287:256] + 32'h1;
  assign sll902 = reg67 << 32'h2;
  assign srl905 = sll902 >> 32'h6;
  assign sll911 = reg70 << 32'h2;
  assign add913 = sll911 + 20'h3f;
  assign srl916 = add913 >> 32'h6;
  assign sub921 = reg89 - reg86;
  assign sub927 = reg89 - 20'h1;
  assign ne935 = reg255 != 8'h20;
  assign add942 = reg301[223:192] + 32'h1;
  assign ne951 = reg259 != 8'h20;
  assign add956 = reg86 + 20'h1;
  assign ne959 = reg86 != reg92;
  assign add966 = reg301[255:224] + 32'h1;
  assign eq973 = bindout195 == reg95;
  assign and978 = reg64 & 20'hf;
  assign sll981 = and978 << 32'h5;
  assign srl983 = bindout210 >> sll981;
  assign srl995 = reg279 >> sll981;
  assign and1008 = reg67 & 20'hf;
  assign sll1011 = and1008 << 32'h5;
  assign srl1013 = bindout162 >> sll1011;
  assign srl1025 = bindout186 >> sll1011;
  assign add1032 = reg67 + 20'h1;
  assign ne1035 = reg67 != reg73;
  assign eq1042 = and1008 == 20'hf;
  assign add1049 = reg301[351:320] + 32'h1;
  assign ne1057 = reg56 != reg61;
  assign srl1079 = reg270 >> sll681;
  assign srl1091 = reg273 >> sll681;
  assign sub1105 = io_ctrl_timer - reg285;
  assign lt1112 = reg301[63:32] < reg282;
  assign sel1114 = lt1112 ? reg301[63:32] : reg282;
  assign eq1118 = reg301[63:32] == 32'h0;
  assign sel1120 = eq1118 ? reg282 : sel1114;
  always @ (posedge clk) begin
    reg1123 <= reset ? sel1120 : reg1123;
  end
  assign gt1126 = reg301[63:32] > reg282;
  assign sel1128 = gt1126 ? reg301[63:32] : reg282;
  assign add1131 = reg301[127:96] + reg282;
  assign add1135 = reg301[31:0] + 32'h1;
  assign sel1142 = (reg365 == 23'h400000) ? sub1105[31:0] : reg282;
  assign sel1143 = bindout213 ? srl983[31:0] : srl995[31:0];
  assign sel1144 = and1146 ? sel1143 : reg98;
  assign eq1145 = reg365 == 23'h20000;
  assign and1146 = eq1145 & eq973;
  assign sel1147 = and1150 ? bindout210 : reg279;
  assign and1148 = eq973 & bindout213;
  assign and1150 = eq1145 & and1148;
  assign sel1151 = (reg365 == 23'h4000) ? sub927 : reg92;
  assign sel1152 = (reg365 == 23'h4000) ? sub921[5:0] : reg95;
  assign sel1153 = (reg365 == 23'h2000) ? srl916 : reg89;
  assign sel1154 = eq1042 ? 1'h1 : 1'h0;
  assign sel1155 = ne1035 ? sel1154 : 1'h1;
  assign sel1156 = and1158 ? sel1155 : 1'h0;
  assign eq1157 = reg365 == 23'h40000;
  assign and1158 = eq1157 & io_pe_ready;
  assign sel1160 = (reg365 == 23'h40000) ? srl1013[19:0] : reg578[19:0];
  assign sel1162 = (reg365 == 23'h40000) ? srl1025[31:0] : reg578[51:20];
  assign sel1164 = (reg365 == 23'h40000) ? reg98 : reg578[83:52];
  always @(*) begin
    case (reg365)
      23'h040000: sel1166 = 1'h0;
      23'h800000: sel1166 = 1'h1;
      default: sel1166 = reg578[84];
    endcase
  end
  assign sel1167 = and1168 ? add956 : reg86;
  assign and1168 = ne951 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg365)
      23'h002000: sel1169 = srl905;
      23'h010000: sel1169 = sel1167;
      default: sel1169 = reg86;
    endcase
  end
  assign sel1170 = and1172 ? bindout234 : reg276;
  assign eq1171 = reg365 == 23'h800;
  assign and1172 = eq1171 & bindout237;
  assign sel1173 = eq820 ? reg83 : srl817;
  assign sel1174 = (reg365 == 23'h200) ? sel1173 : reg83;
  assign sel1175 = and1172 ? 1'h1 : 1'h0;
  assign sel1178 = and1180 ? bindout114 : reg270;
  assign eq1179 = reg365 == 23'h10;
  assign and1180 = eq1179 & and671;
  assign sel1181 = eq776 ? reg78 : srl773;
  assign sel1182 = (reg365 == 23'h100) ? sel1181 : reg78;
  assign sel1188 = and1190 ? io_ctrl_timer : reg285;
  assign eq1189 = reg365 == 23'h1;
  assign and1190 = eq1189 & io_ctrl_start_valid;
  assign sel1191 = io_ctrl_start_valid ? proxy610 : reg56;
  always @(*) begin
    case (reg365)
      23'h000001: sel1192 = sel1191;
      23'h100000: sel1192 = add714;
      default: sel1192 = reg56;
    endcase
  end
  always @(*) begin
    case (reg365)
      23'h040000: sel1193 = 1'h1;
      23'h800000: sel1193 = 1'h1;
      default: sel1193 = 1'h0;
    endcase
  end
  assign sel1195 = and1197 ? add1135 : reg301[31:0];
  assign eq1196 = reg365 == 23'h800000;
  assign and1197 = eq1196 & io_pe_ready;
  assign sel1199 = and1197 ? reg1123 : reg301[63:32];
  assign sel1203 = and1197 ? sel1128 : reg301[95:64];
  assign sel1207 = and1197 ? add1131 : reg301[127:96];
  assign sel1211 = io_lsu_rd_req_ready ? reg301[159:128] : add641;
  assign sel1212 = ne632 ? sel1211 : add641;
  assign sel1213 = (reg365 == 23'h2) ? sel1212 : reg301[159:128];
  assign sel1215 = io_lsu_rd_req_ready ? reg301[191:160] : add664;
  assign sel1216 = ne657 ? sel1215 : add664;
  assign sel1219 = bindout141 ? reg301[191:160] : add664;
  always @(*) begin
    case (reg365)
      23'h000004: sel1220 = sel1216;
      23'h000020: sel1220 = sel1216;
      23'h000040: sel1220 = sel1219;
      default: sel1220 = reg301[191:160];
    endcase
  end
  assign sel1222 = io_lsu_rd_req_ready ? reg301[223:192] : add942;
  assign sel1223 = ne935 ? sel1222 : add942;
  assign sel1224 = (reg365 == 23'h8000) ? sel1223 : reg301[223:192];
  assign sel1226 = io_lsu_rd_req_ready ? reg301[255:224] : add966;
  assign sel1227 = ne951 ? sel1226 : add966;
  assign sel1228 = eq973 ? reg301[255:224] : add966;
  always @(*) begin
    case (reg365)
      23'h010000: sel1229 = sel1227;
      23'h020000: sel1229 = sel1228;
      default: sel1229 = reg301[255:224];
    endcase
  end
  assign sel1231 = io_lsu_rd_req_ready ? reg301[287:256] : add894;
  assign sel1232 = ne888 ? sel1231 : add894;
  assign sel1233 = (reg365 == 23'h1000) ? sel1232 : reg301[287:256];
  assign sel1235 = io_lsu_rd_req_ready ? reg301[319:288] : add836;
  assign sel1236 = ne829 ? sel1235 : add836;
  assign sel1237 = bindout237 ? reg301[319:288] : add836;
  always @(*) begin
    case (reg365)
      23'h000400: sel1238 = sel1236;
      23'h000800: sel1238 = sel1237;
      default: sel1238 = reg301[319:288];
    endcase
  end
  assign sel1240 = io_pe_ready ? reg301[351:320] : add1049;
  always @(*) begin
    case (reg365)
      23'h040000: sel1242 = sel1240;
      23'h800000: sel1242 = sel1240;
      default: sel1242 = reg301[351:320];
    endcase
  end
  assign sel1243 = and1190 ? sub615 : reg61;
  assign sel1246 = io_ctrl_start_valid ? 23'h2 : reg365;
  assign sel1247 = and1248 ? 23'h4 : reg365;
  assign and1248 = ne632 & io_lsu_rd_req_ready;
  assign sel1249 = and1250 ? 23'h10 : reg365;
  assign and1250 = ne657 & io_lsu_rd_req_ready;
  assign sel1251 = ne704 ? 23'h80 : 23'h20;
  assign sel1252 = and671 ? sel1251 : reg365;
  assign sel1253 = and1250 ? 23'h40 : reg365;
  assign sel1255 = bindout141 ? 23'h100 : reg365;
  assign sel1256 = ne804 ? 23'h200 : 23'h100000;
  assign sel1257 = eq776 ? sel1256 : 23'h400;
  assign sel1258 = eq820 ? 23'h2000 : 23'h1000;
  assign sel1259 = and1260 ? 23'h800 : reg365;
  assign and1260 = ne829 & io_lsu_rd_req_ready;
  assign sel1261 = ne870 ? 23'h200 : 23'h100000;
  assign sel1262 = bindout237 ? sel1261 : reg365;
  assign sel1263 = and1264 ? 23'h2000 : reg365;
  assign and1264 = ne888 & io_lsu_rd_req_ready;
  assign sel1265 = and1266 ? 23'h10000 : reg365;
  assign and1266 = ne935 & io_lsu_rd_req_ready;
  assign sel1267 = ne959 ? 23'h8000 : 23'h20000;
  assign sel1268 = and1168 ? sel1267 : reg365;
  assign sel1270 = eq973 ? 23'h40000 : reg365;
  assign sel1271 = eq1042 ? 23'h80000 : reg365;
  assign sel1272 = ne1035 ? sel1271 : 23'h100000;
  assign sel1273 = io_pe_ready ? sel1272 : reg365;
  assign sel1274 = ne704 ? 23'h200000 : 23'h2;
  assign sel1275 = ne1057 ? sel1274 : 23'h400000;
  assign sel1277 = io_pe_ready ? 23'h1 : reg365;
  always @(*) begin
    case (reg365)
      23'h000001: sel1278 = sel1246;
      23'h000002: sel1278 = sel1247;
      23'h000004: sel1278 = sel1249;
      23'h000010: sel1278 = sel1252;
      23'h000080: sel1278 = 23'h100;
      23'h000020: sel1278 = sel1253;
      23'h000040: sel1278 = sel1255;
      23'h000100: sel1278 = sel1257;
      23'h000200: sel1278 = sel1258;
      23'h000400: sel1278 = sel1259;
      23'h000800: sel1278 = sel1262;
      23'h001000: sel1278 = sel1263;
      23'h002000: sel1278 = 23'h4000;
      23'h004000: sel1278 = 23'h8000;
      23'h008000: sel1278 = sel1265;
      23'h010000: sel1278 = sel1268;
      23'h020000: sel1278 = sel1270;
      23'h040000: sel1278 = sel1273;
      23'h080000: sel1278 = 23'h40000;
      23'h100000: sel1278 = sel1275;
      23'h200000: sel1278 = sel1251;
      23'h400000: sel1278 = 23'h800000;
      23'h800000: sel1278 = sel1277;
      default: sel1278 = reg365;
    endcase
  end
  assign sel1279 = and671 ? srl683[19:0] : reg64;
  always @(*) begin
    case (reg365)
      23'h000010: sel1280 = sel1279;
      23'h200000: sel1280 = srl1079[19:0];
      default: sel1280 = reg64;
    endcase
  end
  assign sel1281 = and1180 ? 1'h1 : 1'h0;
  assign sel1284 = ne632 ? 1'h1 : 1'h0;
  assign sel1285 = ne657 ? 1'h1 : 1'h0;
  assign sel1287 = ne829 ? 1'h1 : 1'h0;
  assign sel1288 = ne888 ? 1'h1 : 1'h0;
  assign sel1289 = ne935 ? 1'h1 : 1'h0;
  assign sel1290 = ne951 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg365)
      23'h000002: sel1291 = sel1284;
      23'h000004: sel1291 = sel1285;
      23'h000020: sel1291 = sel1285;
      23'h000400: sel1291 = sel1287;
      23'h001000: sel1291 = sel1288;
      23'h008000: sel1291 = sel1289;
      23'h010000: sel1291 = sel1290;
      default: sel1291 = 1'h0;
    endcase
  end
  assign sel1292 = and671 ? srl695[19:0] : reg67;
  assign sel1293 = io_pe_ready ? add1032 : reg67;
  always @(*) begin
    case (reg365)
      23'h000010: sel1294 = sel1292;
      23'h040000: sel1294 = sel1293;
      23'h200000: sel1294 = srl1091[19:0];
      default: sel1294 = reg67;
    endcase
  end
  assign sel1295 = and671 ? 1'h1 : 1'h0;
  assign sel1296 = bindout141 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg365)
      23'h000010: sel1297 = sel1295;
      23'h000040: sel1297 = sel1296;
      default: sel1297 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg365)
      23'h000002: sel1298 = 3'h1;
      23'h000004: sel1298 = 3'h2;
      23'h000020: sel1298 = 3'h2;
      23'h000400: sel1298 = 3'h6;
      23'h001000: sel1298 = 3'h5;
      23'h008000: sel1298 = 3'h3;
      23'h010000: sel1298 = 3'h4;
      default: sel1298 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg365)
      23'h000002: sel1299 = srl627;
      23'h000004: sel1299 = srl627;
      23'h000020: sel1299 = srl736;
      23'h000400: sel1299 = reg78;
      23'h001000: sel1299 = srl817;
      23'h008000: sel1299 = reg86;
      23'h010000: sel1299 = reg86;
      default: sel1299 = 20'h0;
    endcase
  end
  assign sel1300 = and1180 ? bindout138 : reg273;
  assign sel1303 = bindout141 ? bindout138[19:0] : reg70;
  always @(*) begin
    case (reg365)
      23'h000080: sel1304 = srl721[19:0];
      23'h000040: sel1304 = sel1303;
      default: sel1304 = reg70;
    endcase
  end
  assign sel1305 = and1150 ? 1'h1 : 1'h0;
  assign sel1309 = (reg365 == 23'h100) ? sub762 : reg73;

  assign io_ctrl_start_ready = eq369;
  assign io_ctrl_stats = reg301;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data28;
  assign io_lsu_rd_req_valid = sel1291;
  assign io_pe_data = reg578;
  assign io_pe_valid = reg590;

endmodule


module ch_pipe(
  input wire clk,
  input wire[20:0] io_enq_data,
  input wire io_enq_valid,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire[20:0] io_deq_data,
  output wire io_deq_valid
);
  wire[20:0] sel33; // /home/blaise/dev/cash/include/htl/pipe.h(22)
  reg[20:0] reg41; // /home/blaise/dev/cash/include/htl/pipe.h(22)
  wire sel51; // /home/blaise/dev/cash/include/htl/pipe.h(23)
  reg reg55; // /home/blaise/dev/cash/include/htl/pipe.h(23)
  wire[20:0] sel67; // /home/blaise/dev/cash/include/htl/pipe.h(22)
  reg[20:0] reg75; // /home/blaise/dev/cash/include/htl/pipe.h(22)
  wire sel83; // /home/blaise/dev/cash/include/htl/pipe.h(23)
  reg reg87; // /home/blaise/dev/cash/include/htl/pipe.h(23)
  wire[20:0] sel99; // /home/blaise/dev/cash/include/htl/pipe.h(22)
  reg[20:0] reg107; // /home/blaise/dev/cash/include/htl/pipe.h(22)
  wire sel115; // /home/blaise/dev/cash/include/htl/pipe.h(23)
  reg reg119; // /home/blaise/dev/cash/include/htl/pipe.h(23)

  assign sel33 = io_deq_ready ? io_enq_data : reg41;
  always @ (posedge clk) begin
    reg41 <= sel33;
  end
  assign sel51 = io_deq_ready ? io_enq_valid : reg55;
  always @ (posedge clk) begin
    reg55 <= sel51;
  end
  assign sel67 = io_deq_ready ? reg41 : reg75;
  always @ (posedge clk) begin
    reg75 <= sel67;
  end
  assign sel83 = io_deq_ready ? reg55 : reg87;
  always @ (posedge clk) begin
    reg87 <= sel83;
  end
  assign sel99 = io_deq_ready ? reg75 : reg107;
  always @ (posedge clk) begin
    reg107 <= sel99;
  end
  assign sel115 = io_deq_ready ? reg87 : reg119;
  always @ (posedge clk) begin
    reg119 <= sel115;
  end

  assign io_enq_ready = io_deq_ready;
  assign io_deq_data = reg107;
  assign io_deq_valid = reg119;

endmodule


module spmv_pe(
  input wire clk,
  input wire reset,
  input wire[84:0] io_req_data,
  input wire io_req_valid,
  input wire io_lsu_wr_req_ready,
  output wire io_req_ready,
  output wire[533:0] io_lsu_wr_req_data,
  output wire io_lsu_wr_req_valid,
  output wire[63:0] io_stats,
  output wire io_is_idle
);
  wire[511:0] lit271 = 512'h0;
  wire[19:0] io_req_data_a_rowind3; // pe.cpp(16)
  wire io_req_data_is_end6; // pe.cpp(16)
  wire[533:0] io_lsu_wr_req_data13; // pe.cpp(16)
  wire[20:0] proxy32; // pe.cpp(16)
  wire bindin38;
  wire[20:0] bindin39;
  wire bindin42;
  wire bindout45;
  wire[19:0] proxy_a_rowind48;
  wire proxy_is_end49;
  wire[20:0] bindout50;
  wire bindout53;
  wire bindin56;
  wire[20:0] proxy58;
  wire proxy_is_end60;
  wire bindin62;
  wire[20:0] bindin63;
  wire bindin66;
  wire[20:0] bindout74;
  wire bindout77;
  wire bindin80;
  reg[31:0] mem81[0:31]; // pe.cpp(16)
  reg[31:0] reg83; // pe.cpp(16)
  reg[31:0] reg86; // pe.cpp(16)
  reg[31:0] reg89; // pe.cpp(16)
  reg[31:0] reg94;
  reg[19:0] reg106; // pe.cpp(16)
  reg[63:0] reg113;
  reg[1:0] reg121;
  wire[63:0] proxy123; // pe.cpp(35)
  wire[31:0] sll128; // pe.cpp(39)
  wire[31:0] sll131; // pe.cpp(40)
  wire eq136; // pe.cpp(44)
  wire eq140; // pe.cpp(7)
  wire or142; // pe.cpp(7)
  wire eq146; // pe.cpp(48)
  wire[31:0] and149; // pe.cpp(47)
  wire eq152; // pe.cpp(47)
  wire and155; // pe.cpp(47)
  wire or157; // pe.cpp(47)
  wire eq160; // pe.cpp(55)
  wire eq164; // pe.cpp(7)
  wire and166; // pe.cpp(7)
  wire[31:0] and171; // pe.cpp(59)
  wire ne174; // pe.cpp(59)
  wire[31:0] sel176; // pe.cpp(59)
  wire and179; // pe.cpp(64)
  wire[31:0] udfs181; // pe.cpp(67)
  wire and184; // pe.cpp(72)
  wire[19:0] and189; // pe.cpp(74)
  wire[4:0] proxy191; // pe.cpp(74)
  wire[31:0] udfs192; // pe.cpp(76)
  wire and199; // pe.cpp(7)
  wire eq203; // pe.cpp(83)
  wire and205; // pe.cpp(83)
  wire eq209; // pe.cpp(81)
  wire and212; // pe.cpp(81)
  wire[31:0] add216; // pe.cpp(82)
  wire[31:0] sub220; // pe.cpp(84)
  reg[31:0] sel222; // pe.cpp(81)
  wire eq225; // pe.cpp(89)
  wire and228; // pe.cpp(89)
  wire eq232; // pe.cpp(90)
  wire and235; // pe.cpp(90)
  wire ne238; // pe.cpp(92)
  wire and241; // pe.cpp(92)
  wire[31:0] inv244; // pe.cpp(93)
  wire[31:0] and247; // pe.cpp(93)
  wire[31:0] or249; // pe.cpp(93)
  wire[31:0] or258; // pe.cpp(98)
  wire[31:0] sel260; // pe.cpp(92)
  reg[31:0] sel261; // pe.cpp(91)
  wire[19:0] and265; // pe.cpp(103)
  wire[19:0] sel267; // pe.cpp(102)
  wire and283; // pe.cpp(121)
  wire[19:0] and287; // pe.cpp(122)
  wire[31:0] or291; // pe.cpp(127)
  wire and294; // pe.cpp(131)
  wire[511:0] proxy299; // pe.cpp(140)
  wire[19:0] sll367; // pe.cpp(145)
  wire[19:0] srl371; // pe.cpp(145)
  wire[31:0] add379; // pe.cpp(154)
  wire[511:0] proxy382; // pe.cpp(159)
  wire[19:0] add457; // pe.cpp(164)
  wire[19:0] srl470; // pe.cpp(179)
  wire[19:0] sll473; // pe.cpp(179)
  wire[19:0] srl476; // pe.cpp(179)
  wire[511:0] pad478; // pe.cpp(180)
  wire[19:0] and486; // pe.cpp(180)
  wire[19:0] sll489; // pe.cpp(180)
  wire[511:0] sll491; // pe.cpp(180)
  wire[31:0] add497; // pe.cpp(188)
  wire[31:0] sel500; // pe.cpp(149)
  reg[31:0] sel502; // pe.cpp(118)
  wire[31:0] sel504; // pe.cpp(183)
  wire[31:0] sel505; // pe.cpp(118)
  reg sel506; // pe.cpp(118)
  wire[4:0] sel507; // pe.cpp(118)
  wire[31:0] sel508; // pe.cpp(126)
  wire[31:0] sel509; // pe.cpp(131)
  wire[31:0] sel510; // pe.cpp(118)
  wire[1:0] sel511; // pe.cpp(131)
  wire[1:0] sel512; // pe.cpp(149)
  wire[1:0] sel513; // pe.cpp(168)
  wire[1:0] sel514; // pe.cpp(183)
  reg[1:0] sel515; // pe.cpp(118)
  reg[1:0] sel516; // pe.cpp(118)
  reg[19:0] sel517; // pe.cpp(118)
  reg[511:0] sel518; // pe.cpp(118)
  wire sel519; // pe.cpp(118)
  wire[31:0] sel520; // pe.cpp(118)
  wire[31:0] sel521; // pe.cpp(131)
  wire eq522; // pe.cpp(118)
  wire and523; // pe.cpp(118)

  assign io_req_data_a_rowind3 = io_req_data[19:0];
  assign io_req_data_is_end6 = io_req_data[84];
  assign io_lsu_wr_req_data13 = {sel518, sel517, sel516};
  assign proxy32 = {io_req_data_is_end6, io_req_data_a_rowind3};
  assign bindin38 = clk;
  ch_pipe __module16__(.clk(bindin38), .io_enq_data(bindin39), .io_enq_valid(bindin42), .io_deq_ready(bindin56), .io_enq_ready(bindout45), .io_deq_data(bindout50), .io_deq_valid(bindout53));
  assign bindin39 = proxy32;
  assign bindin42 = and179;
  assign proxy_a_rowind48 = bindout50[19:0];
  assign proxy_is_end49 = bindout50[20];
  assign bindin56 = or157;
  assign proxy58 = {proxy_is_end49, proxy_a_rowind48};
  assign proxy_is_end60 = proxy58[20];
  assign bindin62 = clk;
  ch_pipe __module17__(.clk(bindin62), .io_enq_data(bindin63), .io_enq_valid(bindin66), .io_deq_ready(bindin80), .io_deq_data(bindout74), .io_deq_valid(bindout77));
  assign bindin63 = proxy58;
  assign bindin66 = and184;
  assign bindin80 = or142;
  always @(posedge clk) begin
    if (sel519) begin
      mem81[sel507] = sel520;
    end
  end
  always @ (posedge clk) begin
    reg83 <= sel510;
  end
  always @ (posedge clk) begin
    reg86 <= sel521;
  end
  always @ (posedge clk) begin
    reg89 <= sel261;
  end
  always @ (posedge clk) begin
    reg94 <= reset ? 32'h0 : sel222;
  end
  always @ (posedge clk) begin
    reg106 <= sel267;
  end
  always @ (posedge clk) begin
    reg113 <= reset ? 64'h0 : proxy123;
  end
  always @ (posedge clk) begin
    reg121 <= reset ? 2'h0 : sel515;
  end
  assign proxy123 = {sel505, sel502};
  assign sll128 = 32'h1 << proxy191;
  assign sll131 = 32'h1 << sel507;
  assign eq136 = bindout77 == 1'h0;
  assign eq140 = 2'h0 == reg121;
  assign or142 = eq140 | eq136;
  assign eq146 = bindout53 == 1'h0;
  assign and149 = reg89 & sll128;
  assign eq152 = 32'h0 == and149;
  assign and155 = or142 & eq152;
  assign or157 = and155 | eq146;
  assign eq160 = 32'h0 == reg94;
  assign eq164 = reg121 == 2'h0;
  assign and166 = eq164 & eq160;
  assign and171 = reg83 & sll128;
  assign ne174 = 32'h0 != and171;
  assign sel176 = ne174 ? mem81[proxy191] : 32'h0;
  assign and179 = io_req_valid & bindout45;
  fp_mult __fp_mult181(.clock(clk), .clk_en(or157), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs181));
  assign and184 = bindout53 & or157;
  assign and189 = proxy_a_rowind48 & 20'h1f;
  assign proxy191 = and189[4:0];
  fp_add __fp_add192(.clock(clk), .clk_en(or142), .dataa(udfs181), .datab(sel176), .result(udfs192));
  assign and199 = eq140 & bindout77;
  assign eq203 = and179 == 1'h0;
  assign and205 = eq203 & and199;
  assign eq209 = and199 == 1'h0;
  assign and212 = and179 & eq209;
  assign add216 = reg94 + 32'h1;
  assign sub220 = reg94 - 32'h1;
  always @(*) begin
    if (and212)
      sel222 = add216;
    else if (and205)
      sel222 = sub220;
    else
      sel222 = reg94;
  end
  assign eq225 = proxy_is_end60 == 1'h0;
  assign and228 = and184 & eq225;
  assign eq232 = bindout74[20] == 1'h0;
  assign and235 = and199 & eq232;
  assign ne238 = sll128 != sll131;
  assign and241 = and228 & ne238;
  assign inv244 = ~sll131;
  assign and247 = reg89 & inv244;
  assign or249 = and247 | sll128;
  assign or258 = reg89 | sll128;
  assign sel260 = and241 ? or249 : and247;
  always @(*) begin
    if (and235)
      sel261 = sel260;
    else if (and228)
      sel261 = or258;
    else
      sel261 = reg89;
  end
  assign and265 = bindout74[19:0] & 20'hfffe0;
  assign sel267 = and235 ? and265 : reg106;
  assign and283 = bindout77 & eq232;
  assign and287 = bindout74[19:0] & 20'h1f;
  assign or291 = reg83 | sll131;
  assign and294 = bindout77 & bindout74[20];
  assign proxy299 = {mem81[5'h71], mem81[5'h70], mem81[5'h61], mem81[5'h60], mem81[5'h51], mem81[5'h50], mem81[5'h41], mem81[5'h40], mem81[5'h31], mem81[5'h30], mem81[5'h21], mem81[5'h20], mem81[5'h11], mem81[5'h10], mem81[5'h1], mem81[5'h0]};
  assign sll367 = reg106 << 32'h2;
  assign srl371 = sll367 >> 32'h6;
  assign add379 = reg113[31:0] + 32'h1;
  assign proxy382 = {mem81[5'hf1], mem81[5'hf0], mem81[5'he1], mem81[5'he0], mem81[5'hd1], mem81[5'hd0], mem81[5'hc1], mem81[5'hc0], mem81[5'hb1], mem81[5'hb0], mem81[5'ha1], mem81[5'ha0], mem81[5'h91], mem81[5'h90], mem81[5'h81], mem81[5'h80]};
  assign add457 = srl371 + 20'h1;
  assign srl470 = reg106 >> 32'h5;
  assign sll473 = srl470 << 32'h2;
  assign srl476 = sll473 >> 32'h6;
  assign pad478 = {{480{1'b0}}, reg86};
  assign and486 = srl470 & 20'hf;
  assign sll489 = and486 << 32'h5;
  assign sll491 = pad478 << sll489;
  assign add497 = reg113[63:32] + 32'h1;
  assign sel500 = io_lsu_wr_req_ready ? reg113[31:0] : add379;
  always @(*) begin
    case (reg121)
      2'h1: sel502 = sel500;
      2'h2: sel502 = sel500;
      default: sel502 = reg113[31:0];
    endcase
  end
  assign sel504 = io_lsu_wr_req_ready ? reg113[63:32] : add497;
  assign sel505 = (reg121 == 2'h3) ? sel504 : reg113[63:32];
  always @(*) begin
    case (reg121)
      2'h1: sel506 = 1'h1;
      2'h2: sel506 = 1'h1;
      2'h3: sel506 = 1'h1;
      default: sel506 = 1'h0;
    endcase
  end
  assign sel507 = (reg121 == 2'h0) ? and287[4:0] : 5'h0;
  assign sel508 = sel519 ? or291 : reg83;
  assign sel509 = and294 ? 32'h0 : sel508;
  assign sel510 = (reg121 == 2'h0) ? sel509 : reg83;
  assign sel511 = and294 ? 2'h1 : reg121;
  assign sel512 = io_lsu_wr_req_ready ? 2'h2 : reg121;
  assign sel513 = io_lsu_wr_req_ready ? 2'h3 : reg121;
  assign sel514 = io_lsu_wr_req_ready ? 2'h0 : reg121;
  always @(*) begin
    case (reg121)
      2'h0: sel515 = sel511;
      2'h1: sel515 = sel512;
      2'h2: sel515 = sel513;
      2'h3: sel515 = sel514;
      default: sel515 = reg121;
    endcase
  end
  always @(*) begin
    case (reg121)
      2'h1: sel516 = 2'h0;
      2'h2: sel516 = 2'h0;
      2'h3: sel516 = 2'h1;
      default: sel516 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg121)
      2'h1: sel517 = srl371;
      2'h2: sel517 = add457;
      2'h3: sel517 = srl476;
      default: sel517 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg121)
      2'h1: sel518 = proxy299;
      2'h2: sel518 = proxy382;
      2'h3: sel518 = sll491;
      default: sel518 = lit271;
    endcase
  end
  assign sel519 = (reg121 == 2'h0) ? and283 : 1'h0;
  assign sel520 = (reg121 == 2'h0) ? udfs192 : 32'h0;
  assign sel521 = and523 ? reg83 : reg86;
  assign eq522 = reg121 == 2'h0;
  assign and523 = eq522 & and294;

  assign io_req_ready = bindout45;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data13;
  assign io_lsu_wr_req_valid = sel506;
  assign io_stats = reg113;
  assign io_is_idle = and166;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel31; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel31 = io_in[47:24];
      3'h1: sel31 = io_in[23:0];
      default: sel31 = io_in[71:48];
    endcase
  end

  assign io_out = sel31;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  reg reg15; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  reg reg18; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  reg reg27; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  wire[2:0] proxy39; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy41; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy43; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy45; // /home/blaise/dev/cash/include/htl/arbiter.h(22)
  wire and50; // /home/blaise/dev/cash/include/htl/arbiter.h(29)
  wire and54; // /home/blaise/dev/cash/include/htl/arbiter.h(29)
  wire orr57; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire inv59; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire and62; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire proxy65; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire inv66; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire proxy68; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire or70; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire and72; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire proxy77; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire or79; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire and81; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire inv84; // /home/blaise/dev/cash/include/htl/arbiter.h(25)
  wire and87; // /home/blaise/dev/cash/include/htl/arbiter.h(25)
  wire and93; // /home/blaise/dev/cash/include/htl/arbiter.h(29)
  wire orr96; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire inv98; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire and101; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire inv105; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire or109; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire and111; // /home/blaise/dev/cash/include/htl/arbiter.h(33)
  wire inv114; // /home/blaise/dev/cash/include/htl/arbiter.h(25)
  wire and117; // /home/blaise/dev/cash/include/htl/arbiter.h(25)
  wire inv121; // /home/blaise/dev/cash/include/htl/arbiter.h(25)
  wire and124; // /home/blaise/dev/cash/include/htl/arbiter.h(25)
  wire orr129; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire inv131; // /home/blaise/dev/cash/include/htl/arbiter.h(31)
  wire and134; // /home/blaise/dev/cash/include/htl/arbiter.h(31)

  always @ (posedge clk) begin
    reg15 <= and72;
  end
  always @ (posedge clk) begin
    reg18 <= and81;
  end
  always @ (posedge clk) begin
    reg27 <= and111;
  end
  assign proxy39 = {and117, and87, 1'h0};
  assign proxy41 = {and124, 1'h0, and50};
  assign proxy43 = {1'h0, and93, and54};
  assign proxy45 = {and134, and101, and62};
  assign and50 = io_in[0] & reg15;
  assign and54 = io_in[0] & reg18;
  assign orr57 = |proxy39;
  assign inv59 = ~orr57;
  assign and62 = io_in[0] & inv59;
  assign proxy65 = proxy45[0];
  assign inv66 = ~proxy65;
  assign proxy68 = proxy45[1];
  assign or70 = reg15 | proxy68;
  assign and72 = or70 & inv66;
  assign proxy77 = proxy45[2];
  assign or79 = reg18 | proxy77;
  assign and81 = or79 & inv66;
  assign inv84 = ~reg15;
  assign and87 = io_in[1] & inv84;
  assign and93 = io_in[1] & reg27;
  assign orr96 = |proxy41;
  assign inv98 = ~orr96;
  assign and101 = io_in[1] & inv98;
  assign inv105 = ~proxy68;
  assign or109 = reg27 | proxy77;
  assign and111 = or109 & inv105;
  assign inv114 = ~reg18;
  assign and117 = io_in[2] & inv114;
  assign inv121 = ~reg27;
  assign and124 = io_in[2] & inv121;
  assign orr129 = |proxy43;
  assign inv131 = ~orr129;
  assign and134 = io_in[2] & inv131;

  assign io_grant = proxy45;

endmodule

module ch_xbar_switch(
  input wire clk,
  input wire reset,
  input wire[22:0] io_in_0_data,
  input wire io_in_0_valid,
  input wire[22:0] io_in_1_data,
  input wire io_in_1_valid,
  input wire[22:0] io_in_2_data,
  input wire io_in_2_valid,
  input wire io_out_ready,
  output wire io_in_0_ready,
  output wire io_in_1_ready,
  output wire io_in_2_ready,
  output wire[22:0] io_out_data,
  output wire io_out_valid,
  output wire[2:0] io_out_grant
);
  wire[2:0] bindin44;
  wire[71:0] proxy46; // /home/blaise/dev/cash/include/htl/arbiter.h(41)
  wire[71:0] bindin62;
  wire[23:0] bindout70;
  wire[2:0] proxy72; // /home/blaise/dev/cash/include/htl/arbiter.h(41)
  wire bindin79;
  wire[2:0] bindin80;
  wire[2:0] bindout83;
  wire eq103; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire and106; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq111; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire and114; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq119; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire and122; // /home/blaise/dev/cash/include/htl/arbiter.h(63)

  ch_hxbar __module23__(.io_sel(bindin44), .io_in(bindin62), .io_out(bindout70));
  assign bindin44 = bindout83;
  assign proxy46 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin62 = proxy46;
  assign proxy72 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin79 = clk;
  ch_rrArbiter __module24__(.clk(bindin79), .io_in(bindin80), .io_grant(bindout83));
  assign bindin80 = proxy72;
  assign eq103 = bindout83 == 3'h1;
  assign and106 = io_out_ready & eq103;
  assign eq111 = bindout83 == 3'h2;
  assign and114 = io_out_ready & eq111;
  assign eq119 = bindout83 == 3'h4;
  assign and122 = io_out_ready & eq119;

  assign io_in_0_ready = and106;
  assign io_in_1_ready = and114;
  assign io_in_2_ready = and122;
  assign io_out_data = bindout70[22:0];
  assign io_out_valid = bindout70[23];
  assign io_out_grant = bindout83;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  reg[534:0] sel35; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel35 = io_in[1069:535];
      3'h1: sel35 = io_in[534:0];
      default: sel35 = io_in[1604:1070];
    endcase
  end

  assign io_out = sel35;

endmodule


module ch_xbar_switch_0(
  input wire clk,
  input wire reset,
  input wire[533:0] io_in_0_data,
  input wire io_in_0_valid,
  input wire[533:0] io_in_1_data,
  input wire io_in_1_valid,
  input wire[533:0] io_in_2_data,
  input wire io_in_2_valid,
  input wire io_out_ready,
  output wire io_in_0_ready,
  output wire io_in_1_ready,
  output wire io_in_2_ready,
  output wire[533:0] io_out_data,
  output wire io_out_valid,
  output wire[2:0] io_out_grant
);
  wire[2:0] bindin48;
  wire[1604:0] proxy50; // /home/blaise/dev/cash/include/htl/arbiter.h(41)
  wire[1604:0] bindin69;
  wire[534:0] bindout78;
  wire[2:0] proxy80; // /home/blaise/dev/cash/include/htl/arbiter.h(41)
  wire bindin87;
  wire[2:0] bindin88;
  wire[2:0] bindout91;
  wire eq111; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire and114; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq119; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire and122; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq127; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire and130; // /home/blaise/dev/cash/include/htl/arbiter.h(63)

  ch_hxbar_0 __module26__(.io_sel(bindin48), .io_in(bindin69), .io_out(bindout78));
  assign bindin48 = bindout91;
  assign proxy50 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin69 = proxy50;
  assign proxy80 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin87 = clk;
  ch_rrArbiter __module27__(.clk(bindin87), .io_in(bindin88), .io_grant(bindout91));
  assign bindin88 = proxy80;
  assign eq111 = bindout91 == 3'h1;
  assign and114 = io_out_ready & eq111;
  assign eq119 = bindout91 == 3'h2;
  assign and122 = io_out_ready & eq119;
  assign eq127 = bindout91 == 3'h4;
  assign and130 = io_out_ready & eq127;

  assign io_in_0_ready = and114;
  assign io_in_1_ready = and122;
  assign io_in_2_ready = and130;
  assign io_out_data = bindout78[533:0];
  assign io_out_valid = bindout78[534];
  assign io_out_grant = bindout91;

endmodule

module spmv_write_cache(
  input wire clk,
  input wire reset,
  input wire[533:0] io_enq_data,
  input wire io_enq_valid,
  input wire io_evict_ready,
  input wire io_flush,
  output wire io_enq_ready,
  output wire[533:0] io_evict_data,
  output wire io_evict_valid
);
  wire[511:0] lit149 = 512'h0;
  reg[21:0] mem1[0:1]; // wrcache.h(58)
  reg[511:0] mem4[0:1]; // wrcache.h(58)
  reg reg6; // wrcache.h(58)
  reg[19:0] reg9; // wrcache.h(58)
  reg reg28;
  wire[533:0] io_evict_data42; // wrcache.h(58)
  reg[2:0] reg59;
  reg[533:0] reg62; // wrcache.h(69)
  wire[1:0] proxy_owner64; // wrcache.h(69)
  wire[19:0] proxy_tag65; // wrcache.h(69)
  wire[1:0] proxy_owners81; // wrcache.h(82)
  wire ne83; // wrcache.h(82)
  wire[19:0] proxy_tag87; // wrcache.h(82)
  wire eq88; // wrcache.h(82)
  wire and90; // wrcache.h(82)
  wire sel92; // wrcache.h(82)
  wire[1:0] and99; // wrcache.h(83)
  wire ne101; // wrcache.h(83)
  wire sel103; // wrcache.h(83)
  wire[1:0] proxy_owners109; // wrcache.h(84)
  wire eq111; // wrcache.h(84)
  wire sel113; // wrcache.h(84)
  reg reg118; // wrcache.h(93)
  reg reg124; // wrcache.h(94)
  reg reg130; // wrcache.h(95)
  reg reg136; // wrcache.h(96)
  wire eq141; // wrcache.h(15)
  reg reg144; // wrcache.h(102)
  wire[1:0] proxy_owners162; // wrcache.h(124)
  wire[1:0] and164; // wrcache.h(124)
  wire ne166; // wrcache.h(124)
  wire eq169; // wrcache.h(124)
  wire and171; // wrcache.h(124)
  wire[511:0] or177; // wrcache.h(128)
  wire[1:0] or182; // wrcache.h(129)
  wire[19:0] proxy_tag186; // wrcache.h(129)
  wire[21:0] tag_t188; // wrcache.h(129)
  wire[19:0] proxy_tag198; // wrcache.h(146)
  wire eq199; // wrcache.h(146)
  wire[1:0] proxy_owners203; // wrcache.h(146)
  wire ne205; // wrcache.h(146)
  wire and207; // wrcache.h(146)
  wire[511:0] or212; // wrcache.h(152)
  wire[1:0] or217; // wrcache.h(153)
  wire[21:0] tag_t223; // wrcache.h(153)
  wire ne227; // wrcache.h(160)
  wire[21:0] tag_t235; // wrcache.h(173)
  wire ne239; // wrcache.h(180)
  wire eq246; // wrcache.h(193)
  wire[21:0] tag_t254; // wrcache.h(196)
  wire[1:0] and263; // wrcache.h(201)
  wire ne265; // wrcache.h(201)
  wire[1:0] inv269; // wrcache.h(204)
  wire[1:0] and274; // wrcache.h(204)
  wire[21:0] tag_t280; // wrcache.h(204)
  wire ne294; // wrcache.h(226)
  wire add304; // wrcache.h(234)
  wire eq308; // wrcache.h(235)
  wire sel320; // wrcache.h(146)
  wire sel321; // wrcache.h(143)
  wire eq322; // wrcache.h(119)
  wire and323; // wrcache.h(119)
  wire[19:0] sel324; // wrcache.h(143)
  wire sel327; // wrcache.h(143)
  wire[2:0] sel330; // wrcache.h(124)
  wire[2:0] sel331; // wrcache.h(135)
  wire[2:0] sel332; // wrcache.h(121)
  wire[2:0] sel333; // wrcache.h(160)
  wire[2:0] sel334; // wrcache.h(180)
  wire[2:0] sel335; // wrcache.h(146)
  wire[2:0] sel336; // wrcache.h(143)
  wire[2:0] sel337; // wrcache.h(193)
  wire[2:0] sel338; // wrcache.h(218)
  wire[2:0] sel339; // wrcache.h(235)
  wire and340; // wrcache.h(119)
  wire[2:0] sel341; // wrcache.h(243)
  wire[2:0] sel342; // wrcache.h(226)
  reg[2:0] sel343; // wrcache.h(119)
  wire sel344; // wrcache.h(226)
  reg sel345; // wrcache.h(119)
  wire sel346; // wrcache.h(160)
  wire sel347; // wrcache.h(180)
  wire sel348; // wrcache.h(146)
  wire sel349; // wrcache.h(143)
  wire sel352; // wrcache.h(124)
  wire and353; // wrcache.h(119)
  wire sel354; // wrcache.h(146)
  wire sel355; // wrcache.h(143)
  reg sel356; // wrcache.h(119)
  wire sel357; // wrcache.h(121)
  wire sel359; // wrcache.h(143)
  reg sel360; // wrcache.h(119)
  wire sel361; // wrcache.h(135)
  wire sel362; // wrcache.h(121)
  wire sel363; // wrcache.h(232)
  wire sel364; // wrcache.h(226)
  reg sel365; // wrcache.h(119)
  wire sel370; // wrcache.h(201)
  wire sel371; // wrcache.h(193)
  reg sel372; // wrcache.h(119)
  wire[21:0] sel373; // wrcache.h(124)
  wire[21:0] sel375; // wrcache.h(146)
  wire[21:0] sel376; // wrcache.h(143)
  wire[21:0] sel377; // wrcache.h(201)
  wire[21:0] sel378; // wrcache.h(193)
  reg[21:0] sel379; // wrcache.h(119)
  wire[1:0] sel380; // wrcache.h(226)
  reg[1:0] sel381; // wrcache.h(119)
  wire[19:0] sel382; // wrcache.h(226)
  reg[19:0] sel383; // wrcache.h(119)
  wire[511:0] sel384; // wrcache.h(226)
  reg[511:0] sel385; // wrcache.h(119)
  wire[511:0] sel386; // wrcache.h(124)
  wire[511:0] sel388; // wrcache.h(146)
  wire[511:0] sel389; // wrcache.h(143)
  reg[511:0] sel390; // wrcache.h(119)
  wire[533:0] sel391; // wrcache.h(124)
  wire[533:0] sel392; // wrcache.h(121)
  wire eq393; // wrcache.h(119)
  wire and394; // wrcache.h(119)

  always @(posedge clk) begin
    if (sel372) begin
      mem1[sel360] = sel379;
    end
  end
  always @(posedge clk) begin
    if (sel356) begin
      mem4[sel360] = sel390;
    end
  end
  always @ (posedge clk) begin
    reg6 <= sel321;
  end
  always @ (posedge clk) begin
    reg9 <= sel324;
  end
  always @ (posedge clk) begin
    reg28 <= reset ? 1'h0 : sel365;
  end
  assign io_evict_data42 = {sel385, sel383, sel381};
  always @ (posedge clk) begin
    reg59 <= reset ? 3'h0 : sel343;
  end
  always @ (posedge clk) begin
    reg62 <= sel392;
  end
  assign proxy_owner64 = reg62[1:0];
  assign proxy_tag65 = reg62[21:2];
  assign proxy_owners81 = mem1[1'h1][1:0];
  assign ne83 = proxy_owners81 != 2'h0;
  assign proxy_tag87 = mem1[1'h1][21:2];
  assign eq88 = proxy_tag87 == io_enq_data[21:2];
  assign and90 = eq88 & ne83;
  assign sel92 = and90 ? 1'h1 : 1'h0;
  assign and99 = proxy_owners81 & io_enq_data[1:0];
  assign ne101 = and99 != 2'h0;
  assign sel103 = ne101 ? 1'h1 : 1'h0;
  assign proxy_owners109 = mem1[1'h0][1:0];
  assign eq111 = proxy_owners109 == 2'h0;
  assign sel113 = eq111 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg118 <= sel92;
  end
  always @ (posedge clk) begin
    reg124 <= sel103;
  end
  always @ (posedge clk) begin
    reg130 <= sel113;
  end
  always @ (posedge clk) begin
    reg136 <= io_enq_valid;
  end
  assign eq141 = reg59 == 3'h0;
  always @ (posedge clk) begin
    reg144 <= sel349;
  end
  assign proxy_owners162 = mem1[sel360][1:0];
  assign and164 = proxy_owners162 & io_enq_data[1:0];
  assign ne166 = and164 != 2'h0;
  assign eq169 = io_enq_data[21:2] == reg9;
  assign and171 = eq169 & ne166;
  assign or177 = mem4[sel360] | io_enq_data[533:22];
  assign or182 = proxy_owners162 | io_enq_data[1:0];
  assign proxy_tag186 = mem1[sel360][21:2];
  assign tag_t188 = {proxy_tag186, or182};
  assign proxy_tag198 = mem1[sel327][21:2];
  assign eq199 = proxy_tag198 == proxy_tag65;
  assign proxy_owners203 = mem1[sel327][1:0];
  assign ne205 = proxy_owners203 != 2'h0;
  assign and207 = ne205 & eq199;
  assign or212 = mem4[sel360] | reg62[533:22];
  assign or217 = proxy_owners162 | proxy_owner64;
  assign tag_t223 = {proxy_tag186, or217};
  assign ne227 = reg118 != reg124;
  assign tag_t235 = {proxy_tag65, proxy_owner64};
  assign ne239 = reg130 != reg124;
  assign eq246 = proxy_owners162 == proxy_owner64;
  assign tag_t254 = {proxy_tag186, 2'h0};
  assign and263 = proxy_owners162 & proxy_owner64;
  assign ne265 = and263 != 2'h0;
  assign inv269 = ~proxy_owner64;
  assign and274 = proxy_owners162 & inv269;
  assign tag_t280 = {proxy_tag186, and274};
  assign ne294 = proxy_owners162 != 2'h0;
  assign add304 = reg28 + 1'h1;
  assign eq308 = reg28 == 1'h1;
  assign sel320 = and207 ? reg118 : reg130;
  assign sel321 = and323 ? sel320 : reg6;
  assign eq322 = reg59 == 3'h1;
  assign and323 = eq322 & reg136;
  assign sel324 = and323 ? proxy_tag65 : reg9;
  assign sel327 = and323 ? reg118 : 1'h0;
  assign sel330 = and171 ? reg59 : 3'h1;
  assign sel331 = io_flush ? 3'h4 : reg59;
  assign sel332 = io_enq_valid ? sel330 : sel331;
  assign sel333 = ne227 ? 3'h2 : 3'h0;
  assign sel334 = ne239 ? 3'h2 : 3'h0;
  assign sel335 = and207 ? sel333 : sel334;
  assign sel336 = reg136 ? sel335 : reg59;
  assign sel337 = eq246 ? 3'h3 : 3'h0;
  assign sel338 = io_evict_ready ? 3'h0 : reg59;
  assign sel339 = and340 ? 3'h0 : reg59;
  assign and340 = io_evict_ready & eq308;
  assign sel341 = eq308 ? 3'h0 : reg59;
  assign sel342 = ne294 ? sel339 : sel341;
  always @(*) begin
    case (reg59)
      3'h0: sel343 = sel332;
      3'h1: sel343 = sel336;
      3'h2: sel343 = sel337;
      3'h3: sel343 = sel338;
      3'h4: sel343 = sel342;
      default: sel343 = reg59;
    endcase
  end
  assign sel344 = ne294 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg59)
      3'h3: sel345 = 1'h1;
      3'h4: sel345 = sel344;
      default: sel345 = 1'h0;
    endcase
  end
  assign sel346 = ne227 ? reg124 : reg144;
  assign sel347 = ne239 ? reg124 : reg144;
  assign sel348 = and207 ? sel346 : sel347;
  assign sel349 = and323 ? sel348 : reg144;
  assign sel352 = and353 ? 1'h1 : 1'h0;
  assign and353 = io_enq_valid & and171;
  assign sel354 = and207 ? 1'h1 : 1'h1;
  assign sel355 = reg136 ? sel354 : 1'h0;
  always @(*) begin
    case (reg59)
      3'h0: sel356 = sel352;
      3'h1: sel356 = sel355;
      default: sel356 = 1'h0;
    endcase
  end
  assign sel357 = io_enq_valid ? reg6 : 1'h0;
  assign sel359 = reg136 ? sel320 : 1'h0;
  always @(*) begin
    case (reg59)
      3'h0: sel360 = sel357;
      3'h1: sel360 = sel359;
      3'h2: sel360 = reg144;
      3'h3: sel360 = reg144;
      3'h4: sel360 = reg28;
      default: sel360 = 1'h0;
    endcase
  end
  assign sel361 = io_flush ? 1'h0 : reg28;
  assign sel362 = io_enq_valid ? reg28 : sel361;
  assign sel363 = io_evict_ready ? add304 : reg28;
  assign sel364 = ne294 ? sel363 : add304;
  always @(*) begin
    case (reg59)
      3'h0: sel365 = sel362;
      3'h4: sel365 = sel364;
      default: sel365 = reg28;
    endcase
  end
  assign sel370 = ne265 ? 1'h1 : 1'h0;
  assign sel371 = eq246 ? 1'h1 : sel370;
  always @(*) begin
    case (reg59)
      3'h0: sel372 = sel352;
      3'h1: sel372 = sel355;
      3'h2: sel372 = sel371;
      default: sel372 = 1'h0;
    endcase
  end
  assign sel373 = and353 ? tag_t188 : 22'h0;
  assign sel375 = and207 ? tag_t223 : tag_t235;
  assign sel376 = reg136 ? sel375 : 22'h0;
  assign sel377 = ne265 ? tag_t280 : 22'h0;
  assign sel378 = eq246 ? tag_t254 : sel377;
  always @(*) begin
    case (reg59)
      3'h0: sel379 = sel373;
      3'h1: sel379 = sel376;
      3'h2: sel379 = sel378;
      default: sel379 = 22'h0;
    endcase
  end
  assign sel380 = ne294 ? 2'h0 : 2'h0;
  always @(*) begin
    case (reg59)
      3'h3: sel381 = proxy_owner64;
      3'h4: sel381 = sel380;
      default: sel381 = 2'h0;
    endcase
  end
  assign sel382 = ne294 ? proxy_tag186 : 20'h0;
  always @(*) begin
    case (reg59)
      3'h3: sel383 = proxy_tag186;
      3'h4: sel383 = sel382;
      default: sel383 = 20'h0;
    endcase
  end
  assign sel384 = ne294 ? mem4[sel360] : lit149;
  always @(*) begin
    case (reg59)
      3'h3: sel385 = mem4[sel360];
      3'h4: sel385 = sel384;
      default: sel385 = lit149;
    endcase
  end
  assign sel386 = and353 ? or177 : lit149;
  assign sel388 = and207 ? or212 : reg62[533:22];
  assign sel389 = reg136 ? sel388 : lit149;
  always @(*) begin
    case (reg59)
      3'h0: sel390 = sel386;
      3'h1: sel390 = sel389;
      default: sel390 = lit149;
    endcase
  end
  assign sel391 = and171 ? reg62 : io_enq_data;
  assign sel392 = and394 ? sel391 : reg62;
  assign eq393 = reg59 == 3'h0;
  assign and394 = eq393 & io_enq_valid;

  assign io_enq_ready = eq141;
  assign io_evict_data = io_evict_data42;
  assign io_evict_valid = sel345;

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
  input wire[22:0] io_ctrl_rd_req_data,
  input wire io_ctrl_rd_req_valid,
  input wire[533:0] io_ctrl_wr_req_data,
  input wire io_ctrl_wr_req_valid,
  input wire[22:0] io_walkers_0_rd_req_data,
  input wire io_walkers_0_rd_req_valid,
  input wire[22:0] io_walkers_1_rd_req_data,
  input wire io_walkers_1_rd_req_valid,
  input wire[533:0] io_PEs_0_wr_req_data,
  input wire io_PEs_0_wr_req_valid,
  input wire[533:0] io_PEs_1_wr_req_data,
  input wire io_PEs_1_wr_req_valid,
  output wire[19:0] io_qpi_rd_req_addr,
  output wire[13:0] io_qpi_rd_req_mdata,
  output wire io_qpi_rd_req_valid,
  output wire[19:0] io_qpi_wr_req_addr,
  output wire[13:0] io_qpi_wr_req_mdata,
  output wire[511:0] io_qpi_wr_req_data,
  output wire io_qpi_wr_req_valid,
  output wire io_ctrl_rd_req_ready,
  output wire io_ctrl_wr_req_ready,
  output wire[514:0] io_ctrl_rd_rsp_data,
  output wire io_ctrl_rd_rsp_valid,
  output wire[31:0] io_ctrl_outstanding_writes,
  output wire io_walkers_0_rd_req_ready,
  output wire[514:0] io_walkers_0_rd_rsp_data,
  output wire io_walkers_0_rd_rsp_valid,
  output wire io_walkers_1_rd_req_ready,
  output wire[514:0] io_walkers_1_rd_rsp_data,
  output wire io_walkers_1_rd_rsp_valid,
  output wire io_PEs_0_wr_req_ready,
  output wire io_PEs_1_wr_req_ready
);
  wire[511:0] lit436 = 512'h0;
  wire[131:0] io_ctx_a42; // lsu.cpp(19)
  wire[19:0] io_ctx_a_col_ptr44; // lsu.cpp(19)
  wire[19:0] io_ctx_a_col_ind45; // lsu.cpp(19)
  wire[19:0] io_ctx_a_row_ptr46; // lsu.cpp(19)
  wire[19:0] io_ctx_a_row_ind47; // lsu.cpp(19)
  wire[19:0] io_ctx_a_values48; // lsu.cpp(19)
  wire[39:0] io_ctx_x49; // lsu.cpp(19)
  wire[19:0] io_ctx_x_values50; // lsu.cpp(19)
  wire[19:0] io_ctx_x_masks51; // lsu.cpp(19)
  wire[39:0] io_ctx_y52; // lsu.cpp(19)
  wire[19:0] io_ctx_y_values53; // lsu.cpp(19)
  wire[19:0] io_ctx_y_masks54; // lsu.cpp(19)
  wire[514:0] io_ctrl_rd_rsp_data77; // lsu.cpp(19)
  wire bindin148;
  wire bindin150;
  wire[22:0] bindin151;
  wire bindin154;
  wire bindout157;
  wire[22:0] bindin162;
  wire bindin165;
  wire bindout168;
  wire[22:0] bindin173;
  wire bindin176;
  wire bindout179;
  wire[2:0] proxy_type182;
  wire[22:0] bindout184;
  wire bindout187;
  wire bindin190;
  wire[2:0] bindout193;
  wire bindin200;
  wire bindin201;
  wire[533:0] bindin202;
  wire bindin205;
  wire bindout208;
  wire[533:0] bindin214;
  wire bindin217;
  wire bindout220;
  wire[533:0] bindin226;
  wire bindin229;
  wire bindout232;
  wire[533:0] bindout238;
  wire bindout241;
  wire bindin244;
  wire[2:0] bindout247;
  wire[533:0] proxy249; // lsu.cpp(149)
  wire bindin254;
  wire bindin255;
  wire[533:0] bindin256;
  wire bindin259;
  wire bindout262;
  wire[1:0] proxy_owner265;
  wire[533:0] bindout268;
  wire bindout271;
  wire bindin274;
  wire bindin277;
  wire eq281; // lsu.cpp(44)
  reg reg284; // lsu.cpp(47)
  reg[19:0] reg287; // lsu.cpp(48)
  reg[13:0] reg290; // lsu.cpp(49)
  reg[19:0] sel300; // lsu.cpp(258)
  wire[19:0] add301; // lsu.cpp(257)
  wire[5:0] ch_rd_mdata_t304; // lsu.cpp(55)
  wire[13:0] pad307; // lsu.cpp(55)
  reg[2:0] reg311;
  reg reg315;
  wire eq321; // lsu.cpp(14)
  wire eq325; // lsu.cpp(6)
  wire eq329; // lsu.cpp(79)
  wire and332; // lsu.cpp(79)
  reg[533:0] reg335; // lsu.cpp(81)
  wire[1:0] proxy_type337; // lsu.cpp(81)
  reg[2:0] reg341; // lsu.cpp(82)
  wire and344; // lsu.cpp(87)
  wire or348; // lsu.cpp(88)
  reg[31:0] sel352; // lsu.cpp(87)
  reg[31:0] reg355; // lsu.cpp(91)
  reg reg358; // lsu.cpp(94)
  reg[19:0] reg361; // lsu.cpp(95)
  reg[511:0] reg364; // lsu.cpp(96)
  reg[13:0] reg367; // lsu.cpp(97)
  wire[31:0] sub370; // lsu.cpp(101)
  wire[4:0] ch_wr_mdata_t373; // lsu.cpp(107)
  wire[19:0] add380; // lsu.cpp(270)
  wire[13:0] pad382; // lsu.cpp(110)
  wire[2:0] pad386; // lsu.cpp(116)
  wire[4:0] ch_wr_mdata_t390; // lsu.cpp(117)
  wire[19:0] add396; // lsu.cpp(270)
  wire[13:0] pad398; // lsu.cpp(120)
  wire eq403; // lsu.cpp(127)
  wire[31:0] add407; // lsu.cpp(129)
  wire[31:0] sub409; // lsu.cpp(129)
  wire[31:0] sel412; // lsu.cpp(127)
  wire eq413; // lsu.cpp(103)
  wire and414; // lsu.cpp(103)
  wire sel415; // lsu.cpp(127)
  wire[19:0] sel418; // lsu.cpp(114)
  wire[19:0] sel419; // lsu.cpp(105)
  wire[19:0] sel420; // lsu.cpp(103)
  reg[19:0] sel421; // lsu.cpp(271)
  wire[511:0] sel422; // lsu.cpp(114)
  wire[511:0] sel423; // lsu.cpp(105)
  wire[511:0] sel424; // lsu.cpp(103)
  wire[13:0] sel425; // lsu.cpp(114)
  wire[13:0] sel426; // lsu.cpp(105)
  wire[13:0] sel427; // lsu.cpp(103)
  wire sel428; // lsu.cpp(114)
  wire sel429; // lsu.cpp(105)
  wire sel430; // lsu.cpp(127)
  reg sel431; // lsu.cpp(103)
  reg[19:0] sel432; // lsu.cpp(271)
  wire eq443; // lsu.h(33)
  wire eq447; // lsu.cpp(164)
  wire sel461; // lsu.cpp(158)
  wire sel462; // lsu.cpp(158)
  wire[2:0] sel463; // lsu.cpp(164)
  wire[2:0] sel464; // lsu.cpp(163)
  wire[2:0] sel465; // lsu.cpp(160)
  wire[2:0] sel466; // lsu.cpp(177)
  wire[2:0] sel467; // lsu.cpp(189)
  wire[2:0] sel468; // lsu.cpp(198)
  reg[2:0] sel470; // lsu.cpp(158)
  wire sel471; // lsu.cpp(158)
  wire[2:0] sel472; // lsu.cpp(160)
  wire eq473; // lsu.cpp(158)
  wire and474; // lsu.cpp(158)
  wire[1:0] sel475; // lsu.cpp(158)
  wire[19:0] sel476; // lsu.cpp(158)
  wire[511:0] sel477; // lsu.cpp(158)
  wire[533:0] sel478; // lsu.cpp(160)
  wire[5:0] proxy482; // lsu.cpp(227)
  wire[2:0] proxy_type483; // lsu.cpp(227)
  wire[2:0] proxy_owner484; // lsu.cpp(227)
  wire eq487; // lsu.cpp(230)
  wire and490; // lsu.cpp(230)
  wire eq494; // lsu.cpp(236)
  wire and497; // lsu.cpp(236)
  wire eq501; // lsu.cpp(236)
  wire and504; // lsu.cpp(236)

  assign io_ctx_a42 = io_ctx[131:0];
  assign io_ctx_a_col_ptr44 = io_ctx_a42[51:32];
  assign io_ctx_a_col_ind45 = io_ctx_a42[71:52];
  assign io_ctx_a_row_ptr46 = io_ctx_a42[91:72];
  assign io_ctx_a_row_ind47 = io_ctx_a42[111:92];
  assign io_ctx_a_values48 = io_ctx_a42[131:112];
  assign io_ctx_x49 = io_ctx[171:132];
  assign io_ctx_x_values50 = io_ctx_x49[19:0];
  assign io_ctx_x_masks51 = io_ctx_x49[39:20];
  assign io_ctx_y52 = io_ctx[211:172];
  assign io_ctx_y_values53 = io_ctx_y52[19:0];
  assign io_ctx_y_masks54 = io_ctx_y52[39:20];
  assign io_ctrl_rd_rsp_data77 = {io_qpi_rd_rsp_data, proxy_type483};
  assign bindin148 = clk;
  assign bindin150 = reset;
  ch_xbar_switch __module22__(.clk(bindin148), .reset(bindin150), .io_in_0_data(bindin151), .io_in_0_valid(bindin154), .io_in_1_data(bindin162), .io_in_1_valid(bindin165), .io_in_2_data(bindin173), .io_in_2_valid(bindin176), .io_out_ready(bindin190), .io_in_0_ready(bindout157), .io_in_1_ready(bindout168), .io_in_2_ready(bindout179), .io_out_data(bindout184), .io_out_valid(bindout187), .io_out_grant(bindout193));
  assign bindin151 = io_walkers_0_rd_req_data;
  assign bindin154 = io_walkers_0_rd_req_valid;
  assign bindin162 = io_walkers_1_rd_req_data;
  assign bindin165 = io_walkers_1_rd_req_valid;
  assign bindin173 = io_ctrl_rd_req_data;
  assign bindin176 = io_ctrl_rd_req_valid;
  assign proxy_type182 = bindout184[2:0];
  assign bindin190 = eq281;
  assign bindin200 = clk;
  assign bindin201 = reset;
  ch_xbar_switch_0 __module25__(.clk(bindin200), .reset(bindin201), .io_in_0_data(bindin202), .io_in_0_valid(bindin205), .io_in_1_data(bindin214), .io_in_1_valid(bindin217), .io_in_2_data(bindin226), .io_in_2_valid(bindin229), .io_out_ready(bindin244), .io_in_0_ready(bindout208), .io_in_1_ready(bindout220), .io_in_2_ready(bindout232), .io_out_data(bindout238), .io_out_valid(bindout241), .io_out_grant(bindout247));
  assign bindin202 = io_PEs_0_wr_req_data;
  assign bindin205 = io_PEs_0_wr_req_valid;
  assign bindin214 = io_PEs_1_wr_req_data;
  assign bindin217 = io_PEs_1_wr_req_valid;
  assign bindin226 = io_ctrl_wr_req_data;
  assign bindin229 = io_ctrl_wr_req_valid;
  assign bindin244 = eq325;
  assign proxy249 = {sel477, sel476, sel475};
  assign bindin254 = clk;
  assign bindin255 = reset;
  spmv_write_cache __module28__(.clk(bindin254), .reset(bindin255), .io_enq_data(bindin256), .io_enq_valid(bindin259), .io_evict_ready(bindin274), .io_flush(bindin277), .io_enq_ready(bindout262), .io_evict_data(bindout268), .io_evict_valid(bindout271));
  assign bindin256 = proxy249;
  assign bindin259 = sel461;
  assign proxy_owner265 = bindout268[1:0];
  assign bindin274 = and332;
  assign bindin277 = sel471;
  assign eq281 = io_qpi_rd_req_almostfull == 1'h0;
  always @ (posedge clk) begin
    reg284 <= bindout187;
  end
  always @ (posedge clk) begin
    reg287 <= add301;
  end
  always @ (posedge clk) begin
    reg290 <= pad307;
  end
  always @(*) begin
    case (proxy_type182)
      3'h0: sel300 = io_ctx_a_col_ptr44;
      3'h1: sel300 = io_ctx_a_col_ind45;
      3'h2: sel300 = io_ctx_a_row_ptr46;
      3'h3: sel300 = io_ctx_a_row_ind47;
      3'h4: sel300 = io_ctx_a_values48;
      3'h5: sel300 = io_ctx_x_values50;
      default: sel300 = io_ctx_x_masks51;
    endcase
  end
  assign add301 = sel300 + bindout184[22:3];
  assign ch_rd_mdata_t304 = {bindout193, proxy_type182};
  assign pad307 = {{8{1'b0}}, ch_rd_mdata_t304};
  always @ (posedge clk) begin
    reg311 <= reset ? 3'h0 : sel470;
  end
  always @ (posedge clk) begin
    reg315 <= reset ? 1'h0 : sel431;
  end
  assign eq321 = reg315 == 1'h0;
  assign eq325 = reg311 == 3'h0;
  assign eq329 = sel462 == 1'h0;
  assign and332 = eq321 & eq329;
  always @ (posedge clk) begin
    reg335 <= sel478;
  end
  assign proxy_type337 = reg335[1:0];
  always @ (posedge clk) begin
    reg341 <= sel472;
  end
  assign and344 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign or348 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (or348)
      sel352 = 32'h1;
    else if (and344)
      sel352 = 32'h2;
    else
      sel352 = 32'h0;
  end
  always @ (posedge clk) begin
    reg355 <= sel412;
  end
  always @ (posedge clk) begin
    reg358 <= sel415;
  end
  always @ (posedge clk) begin
    reg361 <= sel420;
  end
  always @ (posedge clk) begin
    reg364 <= sel424;
  end
  always @ (posedge clk) begin
    reg367 <= sel427;
  end
  assign sub370 = reg355 - sel352;
  assign ch_wr_mdata_t373 = {reg341, proxy_type337};
  assign add380 = sel421 + reg335[21:2];
  assign pad382 = {{9{1'b0}}, ch_wr_mdata_t373};
  assign pad386 = {{1{1'b0}}, proxy_owner265};
  assign ch_wr_mdata_t390 = {pad386, 2'h1};
  assign add396 = sel432 + bindout268[21:2];
  assign pad398 = {{9{1'b0}}, ch_wr_mdata_t390};
  assign eq403 = io_qpi_wr_req_almostfull == 1'h0;
  assign add407 = reg355 + 32'h1;
  assign sub409 = add407 - sel352;
  assign sel412 = and414 ? sub409 : sub370;
  assign eq413 = reg315 == 1'h1;
  assign and414 = eq413 & eq403;
  assign sel415 = and414 ? 1'h1 : 1'h0;
  assign sel418 = bindout271 ? add396 : reg361;
  assign sel419 = sel462 ? add380 : sel418;
  assign sel420 = (reg315 == 1'h0) ? sel419 : reg361;
  always @(*) begin
    case (proxy_type337)
      2'h0: sel421 = io_ctx_y_values53;
      2'h1: sel421 = io_ctx_y_masks54;
      default: sel421 = io_ctx[231:212];
    endcase
  end
  assign sel422 = bindout271 ? bindout268[533:22] : reg364;
  assign sel423 = sel462 ? reg335[533:22] : sel422;
  assign sel424 = (reg315 == 1'h0) ? sel423 : reg364;
  assign sel425 = bindout271 ? pad398 : reg367;
  assign sel426 = sel462 ? pad382 : sel425;
  assign sel427 = (reg315 == 1'h0) ? sel426 : reg367;
  assign sel428 = bindout271 ? 1'h1 : reg315;
  assign sel429 = sel462 ? 1'h1 : sel428;
  assign sel430 = eq403 ? 1'h0 : reg315;
  always @(*) begin
    case (reg315)
      1'h0: sel431 = sel429;
      1'h1: sel431 = sel430;
      default: sel431 = reg315;
    endcase
  end
  always @(*) begin
    case (2'h1)
      2'h0: sel432 = io_ctx_y_values53;
      2'h1: sel432 = io_ctx_y_masks54;
      default: sel432 = io_ctx[231:212];
    endcase
  end
  assign eq443 = bindout238[1:0] == 2'h1;
  assign eq447 = bindout247 == 3'h4;
  assign sel461 = (reg311 == 3'h2) ? 1'h1 : 1'h0;
  assign sel462 = (reg311 == 3'h1) ? 1'h1 : 1'h0;
  assign sel463 = eq447 ? 3'h3 : 3'h2;
  assign sel464 = eq443 ? sel463 : 3'h1;
  assign sel465 = bindout241 ? sel464 : reg311;
  assign sel466 = eq321 ? 3'h0 : reg311;
  assign sel467 = bindout262 ? 3'h0 : reg311;
  assign sel468 = bindout262 ? 3'h4 : reg311;
  always @(*) begin
    case (reg311)
      3'h0: sel470 = sel465;
      3'h1: sel470 = sel466;
      3'h2: sel470 = sel467;
      3'h3: sel470 = sel468;
      3'h4: sel470 = sel467;
      default: sel470 = reg311;
    endcase
  end
  assign sel471 = (reg311 == 3'h3) ? 1'h1 : 1'h0;
  assign sel472 = and474 ? bindout247 : reg341;
  assign eq473 = reg311 == 3'h0;
  assign and474 = eq473 & bindout241;
  assign sel475 = (reg311 == 3'h2) ? reg341[1:0] : 2'h0;
  assign sel476 = (reg311 == 3'h2) ? reg335[21:2] : 20'h0;
  assign sel477 = (reg311 == 3'h2) ? reg335[533:22] : lit436;
  assign sel478 = and474 ? bindout238 : reg335;
  assign proxy482 = io_qpi_rd_rsp_mdata[5:0];
  assign proxy_type483 = proxy482[2:0];
  assign proxy_owner484 = proxy482[5:3];
  assign eq487 = proxy_owner484 == 3'h4;
  assign and490 = io_qpi_rd_rsp_valid & eq487;
  assign eq494 = proxy_owner484 == 3'h1;
  assign and497 = io_qpi_rd_rsp_valid & eq494;
  assign eq501 = proxy_owner484 == 3'h2;
  assign and504 = io_qpi_rd_rsp_valid & eq501;

  assign io_qpi_rd_req_addr = reg287;
  assign io_qpi_rd_req_mdata = reg290;
  assign io_qpi_rd_req_valid = reg284;
  assign io_qpi_wr_req_addr = reg361;
  assign io_qpi_wr_req_mdata = reg367;
  assign io_qpi_wr_req_data = reg364;
  assign io_qpi_wr_req_valid = reg358;
  assign io_ctrl_rd_req_ready = bindout179;
  assign io_ctrl_wr_req_ready = bindout232;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data77;
  assign io_ctrl_rd_rsp_valid = and490;
  assign io_ctrl_outstanding_writes = reg355;
  assign io_walkers_0_rd_req_ready = bindout157;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data77;
  assign io_walkers_0_rd_rsp_valid = and497;
  assign io_walkers_1_rd_req_ready = bindout168;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data77;
  assign io_walkers_1_rd_rsp_valid = and504;
  assign io_PEs_0_wr_req_ready = bindout208;
  assign io_PEs_1_wr_req_ready = bindout220;

endmodule

module ch_queue_1(
  input wire clk,
  input wire reset,
  input wire[511:0] io_enq_data,
  input wire io_enq_valid,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire[511:0] io_deq_data,
  output wire io_deq_valid,
  output wire[2:0] io_size
);
  reg[2:0] reg22;
  reg[2:0] reg29;
  wire[1:0] proxy32; // /home/blaise/dev/cash/include/htl/queue.h(27)
  wire and36; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire and39; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[2:0] add44; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[2:0] sel46; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[2:0] add50; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[2:0] sel52; // /home/blaise/dev/cash/include/htl/queue.h(34)
  reg[511:0] mem54[0:3]; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire ne59; // /home/blaise/dev/cash/include/htl/queue.h(40)
  wire eq63; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire ne66; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire or68; // /home/blaise/dev/cash/include/htl/queue.h(41)
  wire[2:0] sub71; // /home/blaise/dev/cash/include/htl/queue.h(42)

  always @ (posedge clk) begin
    reg22 <= reset ? 3'h0 : sel46;
  end
  always @ (posedge clk) begin
    reg29 <= reset ? 3'h0 : sel52;
  end
  assign proxy32 = reg22[1:0];
  assign and36 = io_deq_ready & ne59;
  assign and39 = io_enq_valid & or68;
  assign add44 = reg22 + 3'h1;
  assign sel46 = and36 ? add44 : reg22;
  assign add50 = reg29 + 3'h1;
  assign sel52 = and39 ? add50 : reg29;
  always @(posedge clk) begin
    if (and39) begin
      mem54[reg29[1:0]] = io_enq_data;
    end
  end
  assign ne59 = reg29 != reg22;
  assign eq63 = reg29[2] == reg22[2];
  assign ne66 = reg29[1:0] != proxy32;
  assign or68 = ne66 | eq63;
  assign sub71 = reg29 - reg22;

  assign io_enq_ready = or68;
  assign io_deq_data = mem54[proxy32];
  assign io_deq_valid = ne59;
  assign io_size = sub71;

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
  wire[511:0] lit578 = 512'h0;
  wire[131:0] io_ctx_a42; // aal.h(74)
  wire[31:0] io_ctx_a_num_parts43; // aal.h(74)
  wire bindin70;
  wire bindin72;
  wire[63:0] bindin73;
  wire bindin76;
  wire bindout79;
  wire[63:0] bindin82;
  wire[351:0] bindout96;
  wire[22:0] bindout101;
  wire bindout104;
  wire bindin107;
  wire[514:0] bindin112;
  wire bindin115;
  wire[84:0] bindout122;
  wire bindout125;
  wire bindin128;
  wire bindin135;
  wire bindin136;
  wire[63:0] bindin137;
  wire bindin140;
  wire bindout143;
  wire[63:0] bindin146;
  wire[351:0] bindout160;
  wire[22:0] bindout165;
  wire bindout168;
  wire bindin171;
  wire[514:0] bindin176;
  wire bindin179;
  wire[84:0] bindout186;
  wire bindout189;
  wire bindin192;
  wire bindin200;
  wire bindin201;
  wire[84:0] bindin202;
  wire bindin205;
  wire bindout208;
  wire[533:0] bindout214;
  wire bindout217;
  wire bindin220;
  wire[63:0] bindout225;
  wire bindout228;
  wire bindin236;
  wire bindin237;
  wire[84:0] bindin238;
  wire bindin241;
  wire bindout244;
  wire[533:0] bindout250;
  wire bindout253;
  wire bindin256;
  wire[63:0] bindout261;
  wire bindout264;
  wire bindin268;
  wire bindin269;
  wire bindin270;
  wire[19:0] bindout273;
  wire[13:0] bindout276;
  wire bindout279;
  wire[13:0] bindin282;
  wire[511:0] bindin285;
  wire bindin288;
  wire bindin291;
  wire[19:0] bindout294;
  wire[13:0] bindout297;
  wire[511:0] bindout300;
  wire bindout303;
  wire[13:0] bindin306;
  wire bindin309;
  wire[13:0] bindin312;
  wire bindin315;
  wire[511:0] bindin333;
  wire[22:0] proxy335; // lsu.h(23)
  wire[2:0] proxy_type336;
  wire[22:0] bindin338;
  wire bindin341;
  wire bindout344;
  wire[533:0] proxy346; // spmv.cpp(97)
  wire[533:0] bindin350;
  wire bindin353;
  wire bindout356;
  wire[514:0] bindout361;
  wire bindout364;
  wire[31:0] bindout367;
  wire[22:0] bindin372;
  wire bindin375;
  wire bindout378;
  wire[514:0] bindout383;
  wire bindout386;
  wire[22:0] bindin391;
  wire bindin394;
  wire bindout397;
  wire[514:0] bindout402;
  wire bindout405;
  wire[533:0] bindin411;
  wire bindin414;
  wire bindout417;
  wire[533:0] bindin423;
  wire bindin426;
  wire bindout429;
  wire bindin433;
  wire bindin434;
  wire[511:0] bindin435;
  wire bindin438;
  wire[511:0] bindout444;
  wire bindout447;
  wire bindin450;
  reg[543:0] reg455; // spmv.cpp(22)
  reg[4:0] reg460;
  reg[31:0] reg465;
  reg[19:0] reg470;
  reg[19:0] reg473; // spmv.cpp(22)
  reg[1:0] reg478;
  reg[95:0] reg481; // spmv.cpp(22)
  reg[19:0] reg490;
  reg[19:0] reg493; // spmv.cpp(22)
  wire[19:0] proxy496; // spmv.cpp(39)
  wire[19:0] sub500; // spmv.cpp(40)
  reg[63:0] reg503; // spmv.cpp(43)
  wire[63:0] add508; // spmv.cpp(44)
  reg[2:0] reg513;
  reg reg516; // spmv.cpp(64)
  wire eq520; // lsu.h(23)
  wire and523; // spmv.cpp(69)
  wire[31:0] pad525; // spmv.cpp(76)
  wire eq529; // lsu.h(23)
  wire and532; // spmv.cpp(74)
  wire and534; // spmv.cpp(74)
  wire[31:0] pad536; // spmv.cpp(75)
  wire[31:0] add539; // spmv.cpp(75)
  wire[31:0] sub541; // spmv.cpp(75)
  wire and544; // spmv.cpp(79)
  wire and547; // spmv.cpp(81)
  wire and549; // spmv.cpp(81)
  wire[31:0] add558; // spmv.cpp(91)
  wire[31:0] sll562; // spmv.cpp(91)
  wire[31:0] add564; // spmv.cpp(91)
  wire[31:0] srl568; // spmv.cpp(91)
  wire[19:0] sub572; // spmv.cpp(91)
  wire[95:0] proxy581; // spmv.cpp(103)
  wire ne587; // spmv.cpp(110)
  wire ne595; // spmv.cpp(122)
  wire[19:0] add600; // spmv.cpp(126)
  wire eq603; // spmv.cpp(127)
  wire[31:0] add609; // spmv.cpp(133)
  wire eq616; // spmv.cpp(142)
  wire and618; // spmv.cpp(142)
  wire[19:0] pad629; // spmv.cpp(160)
  wire[511:0] pad631; // spmv.cpp(274)
  wire[415:0] ch_cu_stats_t634; // spmv.cpp(276)
  wire[511:0] pad650; // spmv.cpp(277)
  wire[415:0] ch_cu_stats_t653; // spmv.cpp(279)
  wire[511:0] pad669; // spmv.cpp(280)
  reg[511:0] sel671; // spmv.cpp(274)
  wire[1:0] add676; // spmv.cpp(165)
  wire eq680; // spmv.cpp(166)
  wire eq686; // spmv.cpp(174)
  wire[1:0] sel689; // spmv.cpp(164)
  wire eq690; // spmv.cpp(107)
  wire and691; // spmv.cpp(107)
  reg sel692; // spmv.cpp(107)
  wire sel693; // spmv.cpp(110)
  wire sel694; // spmv.cpp(109)
  wire sel695; // spmv.cpp(174)
  reg sel696; // spmv.cpp(107)
  wire sel697; // spmv.cpp(122)
  wire eq698; // spmv.cpp(107)
  wire and699; // spmv.cpp(107)
  wire[19:0] sel700; // spmv.cpp(110)
  wire and701; // spmv.cpp(107)
  wire[19:0] sel702; // spmv.cpp(125)
  wire and703; // spmv.cpp(107)
  reg[19:0] sel704; // spmv.cpp(107)
  wire[31:0] sel706; // spmv.cpp(125)
  wire[31:0] sel707; // spmv.cpp(122)
  wire[31:0] sel708; // spmv.cpp(107)
  wire[2:0] sel709; // spmv.cpp(110)
  wire[2:0] sel711; // spmv.cpp(127)
  wire and712; // spmv.cpp(107)
  wire and713; // spmv.cpp(107)
  wire[2:0] sel714; // spmv.cpp(142)
  wire[2:0] sel715; // spmv.cpp(152)
  wire[2:0] sel716; // spmv.cpp(166)
  wire and717; // spmv.cpp(107)
  wire[2:0] sel718; // spmv.cpp(174)
  reg[2:0] sel719; // spmv.cpp(107)
  reg[1:0] sel720; // spmv.cpp(107)
  wire[19:0] sel721; // spmv.cpp(107)
  wire[511:0] sel722; // spmv.cpp(107)
  reg[1:0] reg724; // spmv.cpp(192)
  wire[543:0] proxy732; // spmv.cpp(202)
  wire eq735; // spmv.cpp(212)
  wire[543:0] srl753; // spmv.cpp(236)
  wire[19:0] add760; // spmv.cpp(237)
  wire[4:0] sub765; // spmv.cpp(238)
  wire ne770; // spmv.cpp(248)
  wire ne773; // spmv.cpp(248)
  wire and775; // spmv.cpp(248)
  wire sel806; // spmv.cpp(229)
  wire eq807; // spmv.cpp(207)
  wire and808; // spmv.cpp(207)
  wire[63:0] sel809; // spmv.cpp(229)
  wire[19:0] sel812; // spmv.cpp(229)
  wire[19:0] sel813; // spmv.cpp(229)
  reg[19:0] sel814; // spmv.cpp(207)
  wire sel815; // spmv.cpp(229)
  wire eq816; // spmv.cpp(207)
  wire and817; // spmv.cpp(207)
  wire[63:0] sel818; // spmv.cpp(229)
  wire[1:0] sel821; // spmv.cpp(210)
  wire[1:0] sel822; // spmv.cpp(248)
  wire[1:0] sel823; // spmv.cpp(229)
  wire[1:0] sel824; // spmv.cpp(248)
  wire[1:0] sel825; // spmv.cpp(229)
  reg[1:0] sel826; // spmv.cpp(207)
  wire[4:0] sel827; // spmv.cpp(212)
  wire[4:0] sel828; // spmv.cpp(210)
  wire[4:0] sel829; // spmv.cpp(229)
  wire[4:0] sel830; // spmv.cpp(229)
  reg[4:0] sel831; // spmv.cpp(207)
  wire[31:0] sel833; // spmv.cpp(212)
  wire and834; // spmv.cpp(207)
  wire[31:0] sel835; // spmv.cpp(229)
  wire[31:0] sel836; // spmv.cpp(229)
  reg[31:0] sel837; // spmv.cpp(207)
  wire[479:0] sel839; // spmv.cpp(212)
  wire[479:0] sel840; // spmv.cpp(210)
  wire[479:0] sel841; // spmv.cpp(229)
  wire[479:0] sel842; // spmv.cpp(229)
  reg[479:0] sel843; // spmv.cpp(207)
  wire[31:0] sel845; // spmv.cpp(212)
  wire[31:0] sel846; // spmv.cpp(210)
  wire[31:0] sel847; // spmv.cpp(229)
  wire[31:0] sel848; // spmv.cpp(229)
  reg[31:0] sel849; // spmv.cpp(207)
  wire sel850; // spmv.cpp(210)
  wire eq851; // spmv.cpp(207)
  wire and852; // spmv.cpp(207)

  assign io_ctx_a42 = io_ctx[131:0];
  assign io_ctx_a_num_parts43 = io_ctx_a42[31:0];
  assign bindin70 = clk;
  assign bindin72 = reset;
  spmv_dcsc_walk __module1__(.clk(bindin70), .reset(bindin72), .io_ctrl_start_data(bindin73), .io_ctrl_start_valid(bindin76), .io_ctrl_timer(bindin82), .io_lsu_rd_req_ready(bindin107), .io_lsu_rd_rsp_data(bindin112), .io_lsu_rd_rsp_valid(bindin115), .io_pe_ready(bindin128), .io_ctrl_start_ready(bindout79), .io_ctrl_stats(bindout96), .io_lsu_rd_req_data(bindout101), .io_lsu_rd_req_valid(bindout104), .io_pe_data(bindout122), .io_pe_valid(bindout125));
  assign bindin73 = sel818;
  assign bindin76 = sel815;
  assign bindin82 = reg503;
  assign bindin107 = bindout378;
  assign bindin112 = bindout383;
  assign bindin115 = bindout386;
  assign bindin128 = bindout208;
  assign bindin135 = clk;
  assign bindin136 = reset;
  spmv_dcsc_walk __module8__(.clk(bindin135), .reset(bindin136), .io_ctrl_start_data(bindin137), .io_ctrl_start_valid(bindin140), .io_ctrl_timer(bindin146), .io_lsu_rd_req_ready(bindin171), .io_lsu_rd_rsp_data(bindin176), .io_lsu_rd_rsp_valid(bindin179), .io_pe_ready(bindin192), .io_ctrl_start_ready(bindout143), .io_ctrl_stats(bindout160), .io_lsu_rd_req_data(bindout165), .io_lsu_rd_req_valid(bindout168), .io_pe_data(bindout186), .io_pe_valid(bindout189));
  assign bindin137 = sel809;
  assign bindin140 = sel806;
  assign bindin146 = reg503;
  assign bindin171 = bindout397;
  assign bindin176 = bindout402;
  assign bindin179 = bindout405;
  assign bindin192 = bindout244;
  assign bindin200 = clk;
  assign bindin201 = reset;
  spmv_pe __module15__(.clk(bindin200), .reset(bindin201), .io_req_data(bindin202), .io_req_valid(bindin205), .io_lsu_wr_req_ready(bindin220), .io_req_ready(bindout208), .io_lsu_wr_req_data(bindout214), .io_lsu_wr_req_valid(bindout217), .io_stats(bindout225), .io_is_idle(bindout228));
  assign bindin202 = bindout122;
  assign bindin205 = bindout125;
  assign bindin220 = bindout417;
  assign bindin236 = clk;
  assign bindin237 = reset;
  spmv_pe __module18__(.clk(bindin236), .reset(bindin237), .io_req_data(bindin238), .io_req_valid(bindin241), .io_lsu_wr_req_ready(bindin256), .io_req_ready(bindout244), .io_lsu_wr_req_data(bindout250), .io_lsu_wr_req_valid(bindout253), .io_stats(bindout261), .io_is_idle(bindout264));
  assign bindin238 = bindout186;
  assign bindin241 = bindout189;
  assign bindin256 = bindout429;
  assign bindin268 = clk;
  assign bindin269 = reset;
  spmv_lsu __module21__(.clk(bindin268), .reset(bindin269), .io_qpi_rd_req_almostfull(bindin270), .io_qpi_rd_rsp_mdata(bindin282), .io_qpi_rd_rsp_data(bindin285), .io_qpi_rd_rsp_valid(bindin288), .io_qpi_wr_req_almostfull(bindin291), .io_qpi_wr_rsp0_mdata(bindin306), .io_qpi_wr_rsp0_valid(bindin309), .io_qpi_wr_rsp1_mdata(bindin312), .io_qpi_wr_rsp1_valid(bindin315), .io_ctx(bindin333), .io_ctrl_rd_req_data(bindin338), .io_ctrl_rd_req_valid(bindin341), .io_ctrl_wr_req_data(bindin350), .io_ctrl_wr_req_valid(bindin353), .io_walkers_0_rd_req_data(bindin372), .io_walkers_0_rd_req_valid(bindin375), .io_walkers_1_rd_req_data(bindin391), .io_walkers_1_rd_req_valid(bindin394), .io_PEs_0_wr_req_data(bindin411), .io_PEs_0_wr_req_valid(bindin414), .io_PEs_1_wr_req_data(bindin423), .io_PEs_1_wr_req_valid(bindin426), .io_qpi_rd_req_addr(bindout273), .io_qpi_rd_req_mdata(bindout276), .io_qpi_rd_req_valid(bindout279), .io_qpi_wr_req_addr(bindout294), .io_qpi_wr_req_mdata(bindout297), .io_qpi_wr_req_data(bindout300), .io_qpi_wr_req_valid(bindout303), .io_ctrl_rd_req_ready(bindout344), .io_ctrl_wr_req_ready(bindout356), .io_ctrl_rd_rsp_data(bindout361), .io_ctrl_rd_rsp_valid(bindout364), .io_ctrl_outstanding_writes(bindout367), .io_walkers_0_rd_req_ready(bindout378), .io_walkers_0_rd_rsp_data(bindout383), .io_walkers_0_rd_rsp_valid(bindout386), .io_walkers_1_rd_req_ready(bindout397), .io_walkers_1_rd_rsp_data(bindout402), .io_walkers_1_rd_rsp_valid(bindout405), .io_PEs_0_wr_req_ready(bindout417), .io_PEs_1_wr_req_ready(bindout429));
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
  assign proxy335 = {reg470, 3'h0};
  assign proxy_type336 = proxy335[2:0];
  assign bindin338 = proxy335;
  assign bindin341 = sel697;
  assign proxy346 = {sel722, sel721, sel720};
  assign bindin350 = proxy346;
  assign bindin353 = sel692;
  assign bindin372 = bindout101;
  assign bindin375 = bindout104;
  assign bindin391 = bindout165;
  assign bindin394 = bindout168;
  assign bindin411 = bindout214;
  assign bindin414 = bindout217;
  assign bindin423 = bindout250;
  assign bindin426 = bindout253;
  assign bindin433 = clk;
  assign bindin434 = reset;
  ch_queue_1 __module29__(.clk(bindin433), .reset(bindin434), .io_enq_data(bindin435), .io_enq_valid(bindin438), .io_deq_ready(bindin450), .io_deq_data(bindout444), .io_deq_valid(bindout447));
  assign bindin435 = bindout361[514:3];
  assign bindin438 = and523;
  assign bindin450 = sel850;
  always @ (posedge clk) begin
    reg455 <= proxy732;
  end
  always @ (posedge clk) begin
    reg460 <= reset ? 5'h0 : sel831;
  end
  always @ (posedge clk) begin
    reg465 <= reset ? 32'h0 : sub541;
  end
  always @ (posedge clk) begin
    reg470 <= reset ? 20'h0 : sel704;
  end
  always @ (posedge clk) begin
    reg473 <= sub572;
  end
  always @ (posedge clk) begin
    reg478 <= reset ? 2'h0 : sel689;
  end
  always @ (posedge clk) begin
    reg481 <= proxy581;
  end
  always @ (posedge clk) begin
    reg490 <= reset ? 20'h0 : sel814;
  end
  always @ (posedge clk) begin
    reg493 <= sub500;
  end
  assign proxy496 = io_ctx_a_num_parts43[19:0];
  assign sub500 = proxy496 - 20'h1;
  always @ (posedge clk) begin
    reg503 <= add508;
  end
  assign add508 = reg503 + 64'h1;
  always @ (posedge clk) begin
    reg513 <= reset ? 3'h0 : sel719;
  end
  always @ (posedge clk) begin
    reg516 <= sel696;
  end
  assign eq520 = bindout361[2:0] == 3'h0;
  assign and523 = bindout364 & eq520;
  assign pad525 = {{31{1'b0}}, sel850};
  assign eq529 = proxy_type336 == 3'h0;
  assign and532 = sel697 & bindout344;
  assign and534 = and532 & eq529;
  assign pad536 = {{31{1'b0}}, and534};
  assign add539 = reg465 + pad536;
  assign sub541 = add539 - pad525;
  assign and544 = bindout79 & bindout228;
  assign and547 = and544 & bindout143;
  assign and549 = and547 & bindout264;
  assign add558 = io_ctx_a_num_parts43 + 32'h1;
  assign sll562 = add558 << 32'h2;
  assign add564 = sll562 + 32'h3f;
  assign srl568 = add564 >> 32'h6;
  assign sub572 = srl568[19:0] - 20'h1;
  assign proxy581 = {reg481[95:32], sel708};
  assign ne587 = io_ctx_a_num_parts43 != 32'h0;
  assign ne595 = reg465 != 32'h4;
  assign add600 = reg470 + 20'h1;
  assign eq603 = reg470 == reg473;
  assign add609 = reg481[31:0] + 32'h1;
  assign eq616 = reg490 == proxy496;
  assign and618 = eq616 & and549;
  assign pad629 = {{18{1'b0}}, reg478};
  assign pad631 = {{416{1'b0}}, reg481};
  assign ch_cu_stats_t634 = {bindout225, bindout96};
  assign pad650 = {{96{1'b0}}, ch_cu_stats_t634};
  assign ch_cu_stats_t653 = {bindout261, bindout160};
  assign pad669 = {{96{1'b0}}, ch_cu_stats_t653};
  always @(*) begin
    case (reg478)
      2'h1: sel671 = pad650;
      2'h0: sel671 = pad631;
      default: sel671 = pad669;
    endcase
  end
  assign add676 = reg478 + 2'h1;
  assign eq680 = reg478 == 2'h2;
  assign eq686 = bindout367 == 32'h0;
  assign sel689 = and691 ? add676 : reg478;
  assign eq690 = reg513 == 3'h4;
  assign and691 = eq690 & bindout356;
  always @(*) begin
    case (reg513)
      3'h3: sel692 = 1'h1;
      3'h4: sel692 = 1'h1;
      default: sel692 = 1'h0;
    endcase
  end
  assign sel693 = ne587 ? 1'h0 : 1'h1;
  assign sel694 = io_start ? sel693 : reg516;
  assign sel695 = eq686 ? 1'h1 : reg516;
  always @(*) begin
    case (reg513)
      3'h0: sel696 = sel694;
      3'h5: sel696 = sel695;
      default: sel696 = reg516;
    endcase
  end
  assign sel697 = and699 ? 1'h1 : 1'h0;
  assign eq698 = reg513 == 3'h1;
  assign and699 = eq698 & ne595;
  assign sel700 = and701 ? 20'h0 : reg470;
  assign and701 = io_start & ne587;
  assign sel702 = and703 ? add600 : reg470;
  assign and703 = ne595 & bindout344;
  always @(*) begin
    case (reg513)
      3'h0: sel704 = sel700;
      3'h1: sel704 = sel702;
      default: sel704 = reg470;
    endcase
  end
  assign sel706 = bindout344 ? reg481[31:0] : add609;
  assign sel707 = ne595 ? sel706 : add609;
  assign sel708 = (reg513 == 3'h1) ? sel707 : reg481[31:0];
  assign sel709 = and701 ? 3'h1 : reg513;
  assign sel711 = and713 ? 3'h2 : reg513;
  assign and712 = bindout344 & eq603;
  assign and713 = ne595 & and712;
  assign sel714 = and618 ? 3'h3 : reg513;
  assign sel715 = bindout356 ? 3'h4 : reg513;
  assign sel716 = and717 ? 3'h5 : reg513;
  assign and717 = bindout356 & eq680;
  assign sel718 = eq686 ? 3'h0 : reg513;
  always @(*) begin
    case (reg513)
      3'h0: sel719 = sel709;
      3'h1: sel719 = sel711;
      3'h2: sel719 = sel714;
      3'h3: sel719 = sel715;
      3'h4: sel719 = sel716;
      3'h5: sel719 = sel718;
      default: sel719 = reg513;
    endcase
  end
  always @(*) begin
    case (reg513)
      3'h3: sel720 = 2'h1;
      3'h4: sel720 = 2'h2;
      default: sel720 = 2'h0;
    endcase
  end
  assign sel721 = (reg513 == 3'h4) ? pad629 : 20'h0;
  assign sel722 = (reg513 == 3'h4) ? sel671 : lit578;
  always @ (posedge clk) begin
    reg724 <= sel826;
  end
  assign proxy732 = {sel849, sel843, sel837};
  assign eq735 = 5'h0 == reg460;
  assign srl753 = reg455 >> 32'h20;
  assign add760 = reg490 + 20'h1;
  assign sub765 = reg460 - 5'h1;
  assign ne770 = reg460 != 5'h10;
  assign ne773 = reg490 != reg493;
  assign and775 = ne773 & ne770;
  assign sel806 = and808 ? 1'h1 : 1'h0;
  assign eq807 = reg724 == 2'h2;
  assign and808 = eq807 & bindout143;
  assign sel809 = and808 ? reg455[63:0] : 64'h0;
  assign sel812 = bindout79 ? add760 : reg490;
  assign sel813 = bindout143 ? add760 : reg490;
  always @(*) begin
    case (reg724)
      2'h1: sel814 = sel812;
      2'h2: sel814 = sel813;
      default: sel814 = reg490;
    endcase
  end
  assign sel815 = and817 ? 1'h1 : 1'h0;
  assign eq816 = reg724 == 2'h1;
  assign and817 = eq816 & bindout79;
  assign sel818 = and817 ? reg455[63:0] : 64'h0;
  assign sel821 = bindout447 ? 2'h1 : reg724;
  assign sel822 = and775 ? 2'h2 : 2'h0;
  assign sel823 = bindout79 ? sel822 : 2'h2;
  assign sel824 = and775 ? 2'h1 : 2'h0;
  assign sel825 = bindout143 ? sel824 : 2'h1;
  always @(*) begin
    case (reg724)
      2'h0: sel826 = sel821;
      2'h1: sel826 = sel823;
      2'h2: sel826 = sel825;
      default: sel826 = reg724;
    endcase
  end
  assign sel827 = eq735 ? 5'h80 : 5'h81;
  assign sel828 = bindout447 ? sel827 : reg460;
  assign sel829 = bindout79 ? sub765 : reg460;
  assign sel830 = bindout143 ? sub765 : reg460;
  always @(*) begin
    case (reg724)
      2'h0: sel831 = sel828;
      2'h1: sel831 = sel829;
      2'h2: sel831 = sel830;
      default: sel831 = reg460;
    endcase
  end
  assign sel833 = and834 ? bindout444[31:0] : reg455[31:0];
  assign and834 = bindout447 & eq735;
  assign sel835 = bindout79 ? srl753[31:0] : reg455[31:0];
  assign sel836 = bindout143 ? srl753[31:0] : reg455[31:0];
  always @(*) begin
    case (reg724)
      2'h0: sel837 = sel833;
      2'h1: sel837 = sel835;
      2'h2: sel837 = sel836;
      default: sel837 = reg455[31:0];
    endcase
  end
  assign sel839 = eq735 ? bindout444[511:32] : bindout444[479:0];
  assign sel840 = bindout447 ? sel839 : reg455[511:32];
  assign sel841 = bindout79 ? srl753[511:32] : reg455[511:32];
  assign sel842 = bindout143 ? srl753[511:32] : reg455[511:32];
  always @(*) begin
    case (reg724)
      2'h0: sel843 = sel840;
      2'h1: sel843 = sel841;
      2'h2: sel843 = sel842;
      default: sel843 = reg455[511:32];
    endcase
  end
  assign sel845 = eq735 ? reg455[543:512] : bindout444[511:480];
  assign sel846 = bindout447 ? sel845 : reg455[543:512];
  assign sel847 = bindout79 ? srl753[543:512] : reg455[543:512];
  assign sel848 = bindout143 ? srl753[543:512] : reg455[543:512];
  always @(*) begin
    case (reg724)
      2'h0: sel849 = sel846;
      2'h1: sel849 = sel847;
      2'h2: sel849 = sel848;
      default: sel849 = reg455[543:512];
    endcase
  end
  assign sel850 = and852 ? 1'h1 : 1'h0;
  assign eq851 = reg724 == 2'h0;
  assign and852 = eq851 & bindout447;

  assign io_qpi_rd_req_addr = bindout273;
  assign io_qpi_rd_req_mdata = bindout276;
  assign io_qpi_rd_req_valid = bindout279;
  assign io_qpi_wr_req_addr = bindout294;
  assign io_qpi_wr_req_mdata = bindout297;
  assign io_qpi_wr_req_data = bindout300;
  assign io_qpi_wr_req_valid = bindout303;
  assign io_done = reg516;

endmodule
