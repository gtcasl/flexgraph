`include "cash.v"

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
    wire io_enq_ready8, io_deq_valid11, proxy38, proxy40, and41, and43, ne61, proxy62, proxy63, proxy64, eq65, ne67, or69, proxy70;
    wire[511:0] io_deq_data14, proxy58, sel59;
    wire[1:0] io_size20, proxy23, proxy25, proxy32, proxy34, add47, sel49, proxy50, add52, sel54, proxy55, sub71, proxy72;
    reg[1:0] reg30, reg36;
    reg[511:0] mem56[0:1];

    assign io_enq_ready8 = proxy70;
    assign io_deq_valid11 = proxy62;
    assign io_deq_data14 = mem56[proxy38];
    assign io_size20 = proxy72;
    assign proxy23 = reg30;
    assign proxy25 = proxy50;
    always @ (posedge clk)
    reg30 <= reset ? 2'b0 : proxy25;
    assign proxy32 = reg36;
    assign proxy34 = proxy55;
    always @ (posedge clk)
    reg36 <= reset ? 2'b0 : proxy34;
    assign proxy38 = proxy23[0];
    assign proxy40 = proxy32[0];
    assign and41 = io_deq_ready & io_deq_valid11;
    assign and43 = io_enq_valid & io_enq_ready8;
    assign add47 = proxy23 + 2'b1;
    assign sel49 = and41 ? add47 : proxy23;
    assign proxy50 = sel49;
    assign add52 = proxy32 + 2'b1;
    assign sel54 = and43 ? add52 : proxy32;
    assign proxy55 = sel54;
    always @(posedge clk)
    mem56[proxy40] = proxy58;
    assign proxy58 = sel59;
    assign sel59 = and43 ? io_enq_data : mem56[proxy40];
    assign ne61 = proxy32 != proxy23;
    assign proxy62 = ne61;
    assign proxy63 = proxy23[1];
    assign proxy64 = proxy32[1];
    assign eq65 = proxy64 == proxy63;
    assign ne67 = proxy40 != proxy38;
    assign or69 = ne67 | eq65;
    assign proxy70 = or69;
    assign sub71 = proxy32 - proxy23;
    assign proxy72 = sub71;

    assign io_enq_ready = io_enq_ready8;
    assign io_deq_valid = io_deq_valid11;
    assign io_deq_data = io_deq_data14;
    assign io_size = io_size20;

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
    wire io_enq_ready8, io_deq_valid11, and41, and43, ne61, proxy62, proxy63, proxy64, eq65, ne67, or69, proxy70;
    wire[511:0] io_deq_data14, proxy58, sel59;
    wire[5:0] io_size20, proxy23, proxy25, proxy32, proxy34, add47, sel49, proxy50, add52, sel54, proxy55, sub71, proxy72;
    reg[5:0] reg30, reg36;
    wire[4:0] proxy38, proxy40;
    reg[511:0] mem56[0:31];

    assign io_enq_ready8 = proxy70;
    assign io_deq_valid11 = proxy62;
    assign io_deq_data14 = mem56[proxy38];
    assign io_size20 = proxy72;
    assign proxy23 = reg30;
    assign proxy25 = proxy50;
    always @ (posedge clk)
    reg30 <= reset ? 6'b0 : proxy25;
    assign proxy32 = reg36;
    assign proxy34 = proxy55;
    always @ (posedge clk)
    reg36 <= reset ? 6'b0 : proxy34;
    assign proxy38 = proxy23[4:0];
    assign proxy40 = proxy32[4:0];
    assign and41 = io_deq_ready & io_deq_valid11;
    assign and43 = io_enq_valid & io_enq_ready8;
    assign add47 = proxy23 + 6'b1;
    assign sel49 = and41 ? add47 : proxy23;
    assign proxy50 = sel49;
    assign add52 = proxy32 + 6'b1;
    assign sel54 = and43 ? add52 : proxy32;
    assign proxy55 = sel54;
    always @(posedge clk)
    mem56[proxy40] = proxy58;
    assign proxy58 = sel59;
    assign sel59 = and43 ? io_enq_data : mem56[proxy40];
    assign ne61 = proxy32 != proxy23;
    assign proxy62 = ne61;
    assign proxy63 = proxy23[5];
    assign proxy64 = proxy32[5];
    assign eq65 = proxy64 == proxy63;
    assign ne67 = proxy40 != proxy38;
    assign or69 = ne67 | eq65;
    assign proxy70 = or69;
    assign sub71 = proxy32 - proxy23;
    assign proxy72 = sub71;

    assign io_enq_ready = io_enq_ready8;
    assign io_deq_valid = io_deq_valid11;
    assign io_deq_data = io_deq_data14;
    assign io_size = io_size20;

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
    wire[511:0] lit320 = 512'h0;
    wire[63:0] lit345 = 64'h0;
    wire[351:0] lit374 = 352'h0;
    wire[63:0] io_ctrl_start_data5, io_ctrl_start_data_part6, sel433, sub1210, proxy1211;
    wire[31:0] io_ctrl_start_data_part_start7, io_ctrl_start_data_part_end8, proxy128, proxy134, proxy_num_parts350, proxy_min_latency351, proxy_total_latency353, proxy_a_colind_stalls354, proxy_a_rowptr_stalls355, proxy_a_rowind_stalls356, proxy_a_values_stalls357, proxy_x_values_stalls358, proxy_x_masks_stalls359, proxy_execute_stalls360, add464, proxy468, sel469, add471, sel475, add498, proxy502, sel503, add505, sel509, add599, sel603, add605, sel609, add625, sel629, proxy651, sll657, and659, add741, proxy745, sel746, add748, sel752, proxy778, sll783, and785, add830, sel834, add884, proxy888, sel889, add891, sel895, add921, proxy925, sel926, add928, sel932, add968, proxy972, sel973, add975, sel979, proxy1009, sel1010, proxy1019, sel1022, add1026, sel1030, proxy1066, sel1068, proxy1069, sel1071, add1099, proxy1103, sel1104, sel1206, sel1207, proxy1212, sel1215, sel1220, proxy1223, sel1224, sel1227, proxy1229, sel1230, add1231, proxy1233, sel1234, add1236, proxy1238, sel1239, add1242, sel1246;
    wire io_ctrl_start_ready11, proxy136, bindin138, bindin139, bindin140, bindout149, bindin155, proxy160, bindin162, bindin163, bindin164, bindout173, bindin179, proxy184, bindin186, bindin187, bindin188, bindin203, proxy208, bindin210, bindin211, bindin212, bindin227, proxy232, bindin234, bindin235, bindin236, bindout245, bindin251, proxy256, bindin258, bindin259, bindin260, bindout269, bindin275, eq379, and381, proxy382, eq385, and387, proxy388, eq391, and393, proxy394, eq397, and399, proxy400, eq403, and405, proxy406, eq409, and411, proxy412, eq421, proxy422, eq424, and426, ne430, and432, eq437, inv438, and439, ne454, and457, sel458, and460, inv466, and467, inv473, and474, eq477, or478, inv479, and480, ne490, and492, sel493, and495, inv500, and501, inv507, and508, eq511, and512, or514, or515, inv516, and517, and518, sel532, sel544, ne549, and564, inv569, and570, eq573, or574, or575, or576, inv577, and578, ne591, and593, sel594, and596, inv601, and602, inv607, and608, eq611, or613, or614, or615, or616, inv617, and618, and619, sel620, inv627, and628, eq631, eq641, ne662, eq670, or678, or679, or680, or681, or682, inv683, and684, and685, and686, and687, inv706, and707, inv712, and713, inv715, and716, eq721, or722, or723, or724, or725, or726, or727, inv728, and729, ne733, and735, sel736, and738, inv743, and744, inv750, and751, eq754, or755, or756, or757, or758, or759, or760, or761, inv762, and763, and764, sel766, ne788, eq796, and804, and805, inv822, and823, inv826, and827, inv832, and833, eq836, or837, or838, or839, or840, or841, or842, or843, or844, inv845, and846, ne856, and858, sel859, and866, inv886, and887, inv893, and894, eq897, or898, or899, or900, or901, or902, or903, or904, or905, or906, inv907, and908, ne913, and915, sel916, and918, inv923, and924, inv930, and931, eq934, or935, or936, or937, or938, or939, or940, or941, or942, or943, or944, inv945, and946, ne950, and952, sel953, and957, ne959, and961, inv964, and965, inv970, and971, inv977, and978, eq981, eq982, or984, or985, or986, or987, or988, or989, or990, or991, or992, or993, or994, inv995, and996, and997, and998, sel1000, inv1020, and1021, inv1028, and1029, eq1032, or1042, or1043, or1044, or1045, or1046, or1047, or1048, or1049, or1050, or1051, or1052, or1053, inv1054, and1055, sel1074, sel1075, and1079, ne1081, eq1087, and1089, and1090, sel1091, sel1092, inv1093, and1094, sel1095, sel1096, inv1101, and1102, eq1106, or1110, or1111, or1112, or1113, or1114, or1115, or1116, or1117, or1118, or1119, or1120, or1121, or1122, inv1123, and1124, ne1126, ne1132, and1143, and1144, ne1160, and1174, inv1177, and1178, inv1180, and1181, inv1184, and1185, eq1188, or1189, or1190, or1191, or1192, or1193, or1194, or1195, or1196, or1197, or1198, or1199, or1200, or1201, or1202, inv1203, and1204, sel1208, sel1209, lt1213, eq1218, and1222, gt1225, inv1244, and1245;
    wire[351:0] io_ctrl_stats17, proxy349, ch_walker_stats_t362;
    wire[22:0] io_lsu_rd_req_data34;
    wire[514:0] io_lsu_rd_rsp_data45;
    wire[2:0] io_lsu_rd_rsp_data_type46, sel441, sel481, sel579, sel730, sel847, sel909, sel947;
    wire[511:0] io_lsu_rd_rsp_data_data47, proxy142, bindin143, bindout152, proxy166, bindin167, proxy175, bindout176, proxy190, bindin191, bindout200, proxy214, bindin215, bindout224, proxy238, bindin239, bindout248, proxy262, bindin263, bindout272, sel519, srl528, proxy529, sel533, srl540, proxy541, srl561, proxy562, proxy612, srl649, proxy650, sel765, srl776, proxy777, sel999, srl1007, proxy1008, srl1017, proxy1018, srl1039, proxy1040, srl1064, proxy1065, srl1140, proxy1141, srl1152, proxy1153, srl1171, proxy1172;
    wire[84:0] io_pe_data53;
    reg[19:0] reg70, reg76, reg82, reg88, reg94, reg101, reg107, reg113, reg119;
    reg[5:0] reg126;
    reg[31:0] reg133;
    wire[5:0] bindout230, proxy702, sel703, proxy819, sel820, proxy880, sel881;
    reg[7:0] reg285, reg291, reg297, reg303, reg309, reg315;
    reg[511:0] reg322, reg328, reg334, reg340;
    reg[63:0] reg347;
    reg[351:0] reg376;
    reg[15:0] reg419;
    wire[19:0] proxy425, sel427, proxy428, sel429, sll444, srl448, sel451, sll483, srl486, sel488, and522, sll526, proxy530, sel531, and535, sll538, proxy542, sel543, and546, add553, and556, sll559, proxy563, sel565, add581, sll584, srl587, sel589, proxy621, sel622, srl633, sll636, srl639, and644, sll647, and654, sll665, srl668, sll673, srl676, sel688, sll690, add694, srl697, sel699, sub700, proxy701, sel708, sel717, sel731, srl768, and771, sll774, and780, sll791, srl794, sll799, srl802, sel806, sll808, add811, srl814, sel816, sub817, proxy818, sel824, sll849, srl852, sel854, sll861, srl864, sel867, sll869, add872, srl875, sel877, sub878, proxy879, sel910, sel948, add955, sel958, and1002, sll1005, and1012, sll1015, and1034, sll1037, proxy1041, sel1057, and1059, sll1062, add1077, sel1080, and1084, add1108, sel1125, and1129, and1135, sll1138, proxy1142, sel1145, and1147, sll1150, proxy1154, sel1155, and1157, add1163, and1166, sll1169, proxy1173, sel1175, sel1205;
    wire[15:0] sel435, sel461, sel496, sel567, sel571, sel597, sel623, sel705, sel710, sel714, sel719, sel739, sel821, sel825, sel828, sel882, sel919, sel962, sel966, sel1024, sel1097, sel1176, sel1179, sel1182, sel1186, sel1240;

    assign io_ctrl_start_data5 = io_ctrl_start_data;
    assign io_ctrl_start_data_part6 = io_ctrl_start_data5;
    assign io_ctrl_start_data_part_start7 = io_ctrl_start_data_part6[31:0];
    assign io_ctrl_start_data_part_end8 = io_ctrl_start_data_part6[63:32];
    assign io_ctrl_start_ready11 = proxy422;
    assign io_ctrl_stats17 = proxy349;
    assign io_lsu_rd_req_data34 = {sel948, sel947};
    assign io_lsu_rd_rsp_data45 = io_lsu_rd_rsp_data;
    assign io_lsu_rd_rsp_data_type46 = io_lsu_rd_rsp_data45[2:0];
    assign io_lsu_rd_rsp_data_data47 = io_lsu_rd_rsp_data45[514:3];
    assign io_pe_data53 = {sel1208, sel1207, sel1206, sel1205};
    always @ (posedge clk)
    reg70 <= reset ? 20'h0 : sel1125;
    always @ (posedge clk)
    reg76 <= reset ? 20'h0 : sel429;
    always @ (posedge clk)
    reg82 <= reset ? 20'h0 : sel1145;
    always @ (posedge clk)
    reg88 <= reset ? 20'h0 : sel1155;
    always @ (posedge clk)
    reg94 <= reset ? 20'h0 : sel1175;
    always @ (posedge clk)
    reg101 <= reset ? 20'hfffff : sel717;
    always @ (posedge clk)
    reg107 <= reset ? 20'hfffff : sel824;
    always @ (posedge clk)
    reg113 <= reset ? 20'h0 : sel958;
    always @ (posedge clk)
    reg119 <= reset ? 20'h0 : sel877;
    always @ (posedge clk)
    reg126 <= reset ? 6'b0 : sel881;
    assign proxy128 = reg133;
    always @ (posedge clk)
    reg133 <= reset ? 32'h0 : sel1022;
    assign proxy134 = proxy128;
    assign proxy136 = proxy382;
    assign bindin138 = clk;
    assign bindin139 = reset;
    ch_queue __module2__(.clk(bindin138), .reset(bindin139), .io_enq_valid(bindin140), .io_enq_data(bindin143), .io_deq_ready(bindin155), .io_deq_valid(bindout149), .io_deq_data(bindout152));
    assign bindin140 = proxy136;
    assign proxy142 = io_lsu_rd_rsp_data_data47;
    assign bindin143 = proxy142;
    assign bindin155 = sel532;
    assign proxy160 = proxy388;
    assign bindin162 = clk;
    assign bindin163 = reset;
    ch_queue __module3__(.clk(bindin162), .reset(bindin163), .io_enq_valid(bindin164), .io_enq_data(bindin167), .io_deq_ready(bindin179), .io_deq_valid(bindout173), .io_deq_data(bindout176));
    assign bindin164 = proxy160;
    assign proxy166 = io_lsu_rd_rsp_data_data47;
    assign bindin167 = proxy166;
    assign proxy175 = bindout176;
    assign bindin179 = sel620;
    assign proxy184 = proxy394;
    assign bindin186 = clk;
    assign bindin187 = reset;
    ch_queue_0 __module4__(.clk(bindin186), .reset(bindin187), .io_enq_valid(bindin188), .io_enq_data(bindin191), .io_deq_ready(bindin203), .io_deq_data(bindout200));
    assign bindin188 = proxy184;
    assign proxy190 = io_lsu_rd_rsp_data_data47;
    assign bindin191 = proxy190;
    assign bindin203 = sel1095;
    assign proxy208 = proxy400;
    assign bindin210 = clk;
    assign bindin211 = reset;
    ch_queue_0 __module5__(.clk(bindin210), .reset(bindin211), .io_enq_valid(bindin212), .io_enq_data(bindin215), .io_deq_ready(bindin227), .io_deq_data(bindout224), .io_size(bindout230));
    assign bindin212 = proxy208;
    assign proxy214 = io_lsu_rd_rsp_data_data47;
    assign bindin215 = proxy214;
    assign bindin227 = sel1096;
    assign proxy232 = proxy406;
    assign bindin234 = clk;
    assign bindin235 = reset;
    ch_queue __module6__(.clk(bindin234), .reset(bindin235), .io_enq_valid(bindin236), .io_enq_data(bindin239), .io_deq_ready(bindin251), .io_deq_valid(bindout245), .io_deq_data(bindout248));
    assign bindin236 = proxy232;
    assign proxy238 = io_lsu_rd_rsp_data_data47;
    assign bindin239 = proxy238;
    assign bindin251 = sel1000;
    assign proxy256 = proxy412;
    assign bindin258 = clk;
    assign bindin259 = reset;
    ch_queue __module7__(.clk(bindin258), .reset(bindin259), .io_enq_valid(bindin260), .io_enq_data(bindin263), .io_deq_ready(bindin275), .io_deq_valid(bindout269), .io_deq_data(bindout272));
    assign bindin260 = proxy256;
    assign proxy262 = io_lsu_rd_rsp_data_data47;
    assign bindin263 = proxy262;
    assign bindin275 = sel766;
    always @ (posedge clk)
    reg285 <= reset ? 8'h0 : 8'h0;
    always @ (posedge clk)
    reg291 <= reset ? 8'h0 : 8'h0;
    always @ (posedge clk)
    reg297 <= reset ? 8'h0 : 8'h0;
    always @ (posedge clk)
    reg303 <= reset ? 8'h0 : 8'h0;
    always @ (posedge clk)
    reg309 <= reset ? 8'h0 : 8'h0;
    always @ (posedge clk)
    reg315 <= reset ? 8'h0 : 8'h0;
    always @ (posedge clk)
    reg322 <= reset ? lit320 : sel519;
    always @ (posedge clk)
    reg328 <= reset ? lit320 : sel533;
    always @ (posedge clk)
    reg334 <= reset ? lit320 : sel765;
    always @ (posedge clk)
    reg340 <= reset ? lit320 : sel999;
    always @ (posedge clk)
    reg347 <= reset ? lit345 : sel433;
    assign proxy349 = reg376;
    assign proxy_num_parts350 = proxy349[31:0];
    assign proxy_min_latency351 = proxy349[63:32];
    assign proxy_total_latency353 = proxy349[127:96];
    assign proxy_a_colind_stalls354 = proxy349[159:128];
    assign proxy_a_rowptr_stalls355 = proxy349[191:160];
    assign proxy_a_rowind_stalls356 = proxy349[223:192];
    assign proxy_a_values_stalls357 = proxy349[255:224];
    assign proxy_x_values_stalls358 = proxy349[287:256];
    assign proxy_x_masks_stalls359 = proxy349[319:288];
    assign proxy_execute_stalls360 = proxy349[351:320];
    assign ch_walker_stats_t362 = {sel1246, sel834, sel895, sel1030, sel932, sel629, sel475, sel1234, sel1230, sel1224, sel1239};
    always @ (posedge clk)
    reg376 <= reset ? lit374 : ch_walker_stats_t362;
    assign eq379 = io_lsu_rd_rsp_data_type46 == 3'b1;
    assign and381 = io_lsu_rd_rsp_valid & eq379;
    assign proxy382 = and381;
    assign eq385 = io_lsu_rd_rsp_data_type46 == 3'b10;
    assign and387 = io_lsu_rd_rsp_valid & eq385;
    assign proxy388 = and387;
    assign eq391 = io_lsu_rd_rsp_data_type46 == 3'b11;
    assign and393 = io_lsu_rd_rsp_valid & eq391;
    assign proxy394 = and393;
    assign eq397 = io_lsu_rd_rsp_data_type46 == 3'b100;
    assign and399 = io_lsu_rd_rsp_valid & eq397;
    assign proxy400 = and399;
    assign eq403 = io_lsu_rd_rsp_data_type46 == 3'b101;
    assign and405 = io_lsu_rd_rsp_valid & eq403;
    assign proxy406 = and405;
    assign eq409 = io_lsu_rd_rsp_data_type46 == 3'b110;
    assign and411 = io_lsu_rd_rsp_valid & eq409;
    assign proxy412 = and411;
    always @ (posedge clk)
    reg419 <= reset ? 16'h1 : sel1240;
    assign eq421 = reg419 == 16'h1;
    assign proxy422 = eq421;
    assign eq424 = reg419 == 16'h1;
    assign proxy425 = io_ctrl_start_data_part_start7[19:0];
    assign and426 = eq424 & io_ctrl_start_valid;
    assign sel427 = and426 ? proxy425 : reg70;
    assign proxy428 = io_ctrl_start_data_part_end8[19:0];
    assign sel429 = and426 ? proxy428 : reg76;
    assign ne430 = sel1125 != sel429;
    assign and432 = and426 & ne430;
    assign sel433 = and432 ? io_ctrl_timer : reg347;
    assign sel435 = and432 ? 16'h2 : reg419;
    assign eq437 = reg419 == 16'h2;
    assign inv438 = ~eq424;
    assign and439 = inv438 & eq437;
    assign sel441 = and439 ? 3'b1 : 3'b0;
    assign sll444 = reg70 << 20'h2;
    assign srl448 = sll444 >> 20'h6;
    assign sel451 = and439 ? srl448 : 20'h0;
    assign ne454 = reg285 != 8'h2;
    assign and457 = and439 & ne454;
    assign sel458 = and457 ? 1'b1 : 1'b0;
    assign and460 = and457 & io_lsu_rd_req_ready;
    assign sel461 = and460 ? 16'h4 : sel435;
    assign add464 = proxy_a_colind_stalls354 + 32'h1;
    assign inv466 = ~io_lsu_rd_req_ready;
    assign and467 = and457 & inv466;
    assign proxy468 = proxy349[159:128];
    assign sel469 = and467 ? add464 : proxy468;
    assign add471 = proxy_a_colind_stalls354 + 32'h1;
    assign inv473 = ~ne454;
    assign and474 = and439 & inv473;
    assign sel475 = and474 ? add471 : sel469;
    assign eq477 = reg419 == 16'h4;
    assign or478 = eq437 | eq424;
    assign inv479 = ~or478;
    assign and480 = inv479 & eq477;
    assign sel481 = and480 ? 3'b10 : sel441;
    assign sll483 = reg70 << 20'h2;
    assign srl486 = sll483 >> 20'h6;
    assign sel488 = and480 ? srl486 : sel451;
    assign ne490 = reg291 != 8'h2;
    assign and492 = and480 & ne490;
    assign sel493 = and492 ? 1'b1 : sel458;
    assign and495 = and492 & io_lsu_rd_req_ready;
    assign sel496 = and495 ? 16'h8 : sel461;
    assign add498 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv500 = ~io_lsu_rd_req_ready;
    assign and501 = and492 & inv500;
    assign proxy502 = proxy349[191:160];
    assign sel503 = and501 ? add498 : proxy502;
    assign add505 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv507 = ~ne490;
    assign and508 = and480 & inv507;
    assign sel509 = and508 ? add505 : sel503;
    assign eq511 = reg419 == 16'h8;
    assign and512 = bindout149 & bindout173;
    assign or514 = eq477 | eq437;
    assign or515 = or514 | eq424;
    assign inv516 = ~or515;
    assign and517 = inv516 & eq511;
    assign and518 = and517 & and512;
    assign sel519 = and518 ? bindout152 : reg322;
    assign and522 = reg70 & 20'hf;
    assign sll526 = and522 << 20'h5;
    assign srl528 = sel519 >> sll526;
    assign proxy529 = srl528;
    assign proxy530 = proxy529[19:0];
    assign sel531 = and518 ? proxy530 : reg82;
    assign sel532 = and518 ? 1'b1 : 1'b0;
    assign sel533 = and518 ? proxy175 : reg328;
    assign and535 = reg70 & 20'hf;
    assign sll538 = and535 << 20'h5;
    assign srl540 = sel533 >> sll538;
    assign proxy541 = srl540;
    assign proxy542 = proxy541[19:0];
    assign sel543 = and518 ? proxy542 : reg88;
    assign sel544 = and518 ? 1'b1 : 1'b0;
    assign and546 = reg70 & 20'hf;
    assign ne549 = and546 != 20'hf;
    assign add553 = reg70 + 20'h1;
    assign and556 = add553 & 20'hf;
    assign sll559 = and556 << 20'h5;
    assign srl561 = sel533 >> sll559;
    assign proxy562 = srl561;
    assign proxy563 = proxy562[19:0];
    assign and564 = and518 & ne549;
    assign sel565 = and564 ? proxy563 : reg94;
    assign sel567 = and564 ? 16'h40 : sel496;
    assign inv569 = ~ne549;
    assign and570 = and518 & inv569;
    assign sel571 = and570 ? 16'h10 : sel567;
    assign eq573 = reg419 == 16'h10;
    assign or574 = eq511 | eq477;
    assign or575 = or574 | eq437;
    assign or576 = or575 | eq424;
    assign inv577 = ~or576;
    assign and578 = inv577 & eq573;
    assign sel579 = and578 ? 3'b10 : sel481;
    assign add581 = reg70 + 20'h1;
    assign sll584 = add581 << 20'h2;
    assign srl587 = sll584 >> 20'h6;
    assign sel589 = and578 ? srl587 : sel488;
    assign ne591 = reg291 != 8'h2;
    assign and593 = and578 & ne591;
    assign sel594 = and593 ? 1'b1 : sel493;
    assign and596 = and593 & io_lsu_rd_req_ready;
    assign sel597 = and596 ? 16'h20 : sel571;
    assign add599 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv601 = ~io_lsu_rd_req_ready;
    assign and602 = and593 & inv601;
    assign sel603 = and602 ? add599 : sel509;
    assign add605 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv607 = ~ne591;
    assign and608 = and578 & inv607;
    assign sel609 = and608 ? add605 : sel603;
    assign eq611 = reg419 == 16'h20;
    assign proxy612 = proxy175;
    assign or613 = eq573 | eq511;
    assign or614 = or613 | eq477;
    assign or615 = or614 | eq437;
    assign or616 = or615 | eq424;
    assign inv617 = ~or616;
    assign and618 = inv617 & eq611;
    assign and619 = and618 & bindout173;
    assign sel620 = and619 ? 1'b1 : sel544;
    assign proxy621 = proxy612[19:0];
    assign sel622 = and619 ? proxy621 : sel565;
    assign sel623 = and619 ? 16'h40 : sel597;
    assign add625 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv627 = ~bindout173;
    assign and628 = and618 & inv627;
    assign sel629 = and628 ? add625 : sel609;
    assign eq631 = reg419 == 16'h40;
    assign srl633 = reg82 >> 20'h5;
    assign sll636 = srl633 << 20'h2;
    assign srl639 = sll636 >> 20'h6;
    assign eq641 = srl639 == reg101;
    assign and644 = srl633 & 20'hf;
    assign sll647 = and644 << 20'h5;
    assign srl649 = reg334 >> sll647;
    assign proxy650 = srl649;
    assign proxy651 = proxy650[31:0];
    assign and654 = reg82 & 20'h1f;
    assign sll657 = 32'h1 << and654;
    assign and659 = proxy651 & sll657;
    assign ne662 = and659 != 32'h0;
    assign sll665 = reg82 << 20'h2;
    assign srl668 = sll665 >> 20'h6;
    assign eq670 = srl668 == reg107;
    assign sll673 = reg88 << 20'h2;
    assign srl676 = sll673 >> 20'h6;
    assign or678 = eq611 | eq573;
    assign or679 = or678 | eq511;
    assign or680 = or679 | eq477;
    assign or681 = or680 | eq437;
    assign or682 = or681 | eq424;
    assign inv683 = ~or682;
    assign and684 = inv683 & eq631;
    assign and685 = and684 & eq641;
    assign and686 = and685 & ne662;
    assign and687 = and686 & eq670;
    assign sel688 = and687 ? srl676 : reg113;
    assign sll690 = reg94 << 20'h2;
    assign add694 = sll690 + 20'h3f;
    assign srl697 = add694 >> 20'h6;
    assign sel699 = and687 ? srl697 : reg119;
    assign sub700 = sel877 - sel958;
    assign proxy701 = sub700;
    assign proxy702 = proxy701[5:0];
    assign sel703 = and687 ? proxy702 : reg126;
    assign sel705 = and687 ? 16'h400 : sel623;
    assign inv706 = ~eq670;
    assign and707 = and686 & inv706;
    assign sel708 = and707 ? srl668 : reg107;
    assign sel710 = and707 ? 16'h200 : sel705;
    assign inv712 = ~ne662;
    assign and713 = and685 & inv712;
    assign sel714 = and713 ? 16'h4000 : sel710;
    assign inv715 = ~eq641;
    assign and716 = and684 & inv715;
    assign sel717 = and716 ? srl639 : reg101;
    assign sel719 = and716 ? 16'h80 : sel714;
    assign eq721 = reg419 == 16'h80;
    assign or722 = eq631 | eq611;
    assign or723 = or722 | eq573;
    assign or724 = or723 | eq511;
    assign or725 = or724 | eq477;
    assign or726 = or725 | eq437;
    assign or727 = or726 | eq424;
    assign inv728 = ~or727;
    assign and729 = inv728 & eq721;
    assign sel730 = and729 ? 3'b110 : sel579;
    assign sel731 = and729 ? reg101 : sel589;
    assign ne733 = reg315 != 8'h2;
    assign and735 = and729 & ne733;
    assign sel736 = and735 ? 1'b1 : sel594;
    assign and738 = and735 & io_lsu_rd_req_ready;
    assign sel739 = and738 ? 16'h100 : sel719;
    assign add741 = proxy_x_masks_stalls359 + 32'h1;
    assign inv743 = ~io_lsu_rd_req_ready;
    assign and744 = and735 & inv743;
    assign proxy745 = proxy349[319:288];
    assign sel746 = and744 ? add741 : proxy745;
    assign add748 = proxy_x_masks_stalls359 + 32'h1;
    assign inv750 = ~ne733;
    assign and751 = and729 & inv750;
    assign sel752 = and751 ? add748 : sel746;
    assign eq754 = reg419 == 16'h100;
    assign or755 = eq721 | eq631;
    assign or756 = or755 | eq611;
    assign or757 = or756 | eq573;
    assign or758 = or757 | eq511;
    assign or759 = or758 | eq477;
    assign or760 = or759 | eq437;
    assign or761 = or760 | eq424;
    assign inv762 = ~or761;
    assign and763 = inv762 & eq754;
    assign and764 = and763 & bindout269;
    assign sel765 = and764 ? bindout272 : reg334;
    assign sel766 = and764 ? 1'b1 : 1'b0;
    assign srl768 = reg82 >> 20'h5;
    assign and771 = srl768 & 20'hf;
    assign sll774 = and771 << 20'h5;
    assign srl776 = sel765 >> sll774;
    assign proxy777 = srl776;
    assign proxy778 = proxy777[31:0];
    assign and780 = reg82 & 20'h1f;
    assign sll783 = 32'h1 << and780;
    assign and785 = proxy778 & sll783;
    assign ne788 = and785 != 32'h0;
    assign sll791 = reg82 << 20'h2;
    assign srl794 = sll791 >> 20'h6;
    assign eq796 = srl794 == reg107;
    assign sll799 = reg88 << 20'h2;
    assign srl802 = sll799 >> 20'h6;
    assign and804 = and764 & ne788;
    assign and805 = and804 & eq796;
    assign sel806 = and805 ? srl802 : sel688;
    assign sll808 = reg94 << 20'h2;
    assign add811 = sll808 + 20'h3f;
    assign srl814 = add811 >> 20'h6;
    assign sel816 = and805 ? srl814 : sel699;
    assign sub817 = sel877 - sel958;
    assign proxy818 = sub817;
    assign proxy819 = proxy818[5:0];
    assign sel820 = and805 ? proxy819 : sel703;
    assign sel821 = and805 ? 16'h400 : sel739;
    assign inv822 = ~eq796;
    assign and823 = and804 & inv822;
    assign sel824 = and823 ? srl794 : sel708;
    assign sel825 = and823 ? 16'h200 : sel821;
    assign inv826 = ~ne788;
    assign and827 = and764 & inv826;
    assign sel828 = and827 ? 16'h4000 : sel825;
    assign add830 = proxy_x_masks_stalls359 + 32'h1;
    assign inv832 = ~bindout269;
    assign and833 = and763 & inv832;
    assign sel834 = and833 ? add830 : sel752;
    assign eq836 = reg419 == 16'h200;
    assign or837 = eq754 | eq721;
    assign or838 = or837 | eq631;
    assign or839 = or838 | eq611;
    assign or840 = or839 | eq573;
    assign or841 = or840 | eq511;
    assign or842 = or841 | eq477;
    assign or843 = or842 | eq437;
    assign or844 = or843 | eq424;
    assign inv845 = ~or844;
    assign and846 = inv845 & eq836;
    assign sel847 = and846 ? 3'b101 : sel730;
    assign sll849 = reg82 << 20'h2;
    assign srl852 = sll849 >> 20'h6;
    assign sel854 = and846 ? srl852 : sel731;
    assign ne856 = reg309 != 8'h2;
    assign and858 = and846 & ne856;
    assign sel859 = and858 ? 1'b1 : sel736;
    assign sll861 = reg88 << 20'h2;
    assign srl864 = sll861 >> 20'h6;
    assign and866 = and858 & io_lsu_rd_req_ready;
    assign sel867 = and866 ? srl864 : sel806;
    assign sll869 = reg94 << 20'h2;
    assign add872 = sll869 + 20'h3f;
    assign srl875 = add872 >> 20'h6;
    assign sel877 = and866 ? srl875 : sel816;
    assign sub878 = sel877 - sel958;
    assign proxy879 = sub878;
    assign proxy880 = proxy879[5:0];
    assign sel881 = and866 ? proxy880 : sel820;
    assign sel882 = and866 ? 16'h400 : sel828;
    assign add884 = proxy_x_values_stalls358 + 32'h1;
    assign inv886 = ~io_lsu_rd_req_ready;
    assign and887 = and858 & inv886;
    assign proxy888 = proxy349[287:256];
    assign sel889 = and887 ? add884 : proxy888;
    assign add891 = proxy_x_values_stalls358 + 32'h1;
    assign inv893 = ~ne856;
    assign and894 = and846 & inv893;
    assign sel895 = and894 ? add891 : sel889;
    assign eq897 = reg419 == 16'h400;
    assign or898 = eq836 | eq754;
    assign or899 = or898 | eq721;
    assign or900 = or899 | eq631;
    assign or901 = or900 | eq611;
    assign or902 = or901 | eq573;
    assign or903 = or902 | eq511;
    assign or904 = or903 | eq477;
    assign or905 = or904 | eq437;
    assign or906 = or905 | eq424;
    assign inv907 = ~or906;
    assign and908 = inv907 & eq897;
    assign sel909 = and908 ? 3'b11 : sel847;
    assign sel910 = and908 ? reg113 : sel854;
    assign ne913 = reg297 != 8'h20;
    assign and915 = and908 & ne913;
    assign sel916 = and915 ? 1'b1 : sel859;
    assign and918 = and915 & io_lsu_rd_req_ready;
    assign sel919 = and918 ? 16'h800 : sel882;
    assign add921 = proxy_a_rowind_stalls356 + 32'h1;
    assign inv923 = ~io_lsu_rd_req_ready;
    assign and924 = and915 & inv923;
    assign proxy925 = proxy349[223:192];
    assign sel926 = and924 ? add921 : proxy925;
    assign add928 = proxy_a_rowind_stalls356 + 32'h1;
    assign inv930 = ~ne913;
    assign and931 = and908 & inv930;
    assign sel932 = and931 ? add928 : sel926;
    assign eq934 = reg419 == 16'h800;
    assign or935 = eq897 | eq836;
    assign or936 = or935 | eq754;
    assign or937 = or936 | eq721;
    assign or938 = or937 | eq631;
    assign or939 = or938 | eq611;
    assign or940 = or939 | eq573;
    assign or941 = or940 | eq511;
    assign or942 = or941 | eq477;
    assign or943 = or942 | eq437;
    assign or944 = or943 | eq424;
    assign inv945 = ~or944;
    assign and946 = inv945 & eq934;
    assign sel947 = and946 ? 3'b100 : sel909;
    assign sel948 = and946 ? reg113 : sel910;
    assign ne950 = reg303 != 8'h20;
    assign and952 = and946 & ne950;
    assign sel953 = and952 ? 1'b1 : sel916;
    assign add955 = reg113 + 20'h1;
    assign and957 = and952 & io_lsu_rd_req_ready;
    assign sel958 = and957 ? add955 : sel867;
    assign ne959 = sel958 != reg119;
    assign and961 = and957 & ne959;
    assign sel962 = and961 ? 16'h400 : sel919;
    assign inv964 = ~ne959;
    assign and965 = and957 & inv964;
    assign sel966 = and965 ? 16'h1000 : sel962;
    assign add968 = proxy_a_values_stalls357 + 32'h1;
    assign inv970 = ~io_lsu_rd_req_ready;
    assign and971 = and952 & inv970;
    assign proxy972 = proxy349[255:224];
    assign sel973 = and971 ? add968 : proxy972;
    assign add975 = proxy_a_values_stalls357 + 32'h1;
    assign inv977 = ~ne950;
    assign and978 = and946 & inv977;
    assign sel979 = and978 ? add975 : sel973;
    assign eq981 = reg419 == 16'h1000;
    assign eq982 = bindout230 == reg126;
    assign or984 = eq934 | eq897;
    assign or985 = or984 | eq836;
    assign or986 = or985 | eq754;
    assign or987 = or986 | eq721;
    assign or988 = or987 | eq631;
    assign or989 = or988 | eq611;
    assign or990 = or989 | eq573;
    assign or991 = or990 | eq511;
    assign or992 = or991 | eq477;
    assign or993 = or992 | eq437;
    assign or994 = or993 | eq424;
    assign inv995 = ~or994;
    assign and996 = inv995 & eq981;
    assign and997 = and996 & eq982;
    assign and998 = and997 & bindout245;
    assign sel999 = and998 ? bindout248 : reg340;
    assign sel1000 = and998 ? 1'b1 : 1'b0;
    assign and1002 = reg82 & 20'hf;
    assign sll1005 = and1002 << 20'h5;
    assign srl1007 = sel999 >> sll1005;
    assign proxy1008 = srl1007;
    assign proxy1009 = proxy1008[31:0];
    assign sel1010 = and998 ? proxy1009 : proxy134;
    assign and1012 = reg82 & 20'hf;
    assign sll1015 = and1012 << 20'h5;
    assign srl1017 = reg340 >> sll1015;
    assign proxy1018 = srl1017;
    assign proxy1019 = proxy1018[31:0];
    assign inv1020 = ~bindout245;
    assign and1021 = and997 & inv1020;
    assign sel1022 = and1021 ? proxy1019 : sel1010;
    assign sel1024 = and997 ? 16'h2000 : sel966;
    assign add1026 = proxy_a_values_stalls357 + 32'h1;
    assign inv1028 = ~eq982;
    assign and1029 = and996 & inv1028;
    assign sel1030 = and1029 ? add1026 : sel979;
    assign eq1032 = reg419 == 16'h2000;
    assign and1034 = reg88 & 20'hf;
    assign sll1037 = and1034 << 20'h5;
    assign srl1039 = bindout200 >> sll1037;
    assign proxy1040 = srl1039;
    assign proxy1041 = proxy1040[19:0];
    assign or1042 = eq981 | eq934;
    assign or1043 = or1042 | eq897;
    assign or1044 = or1043 | eq836;
    assign or1045 = or1044 | eq754;
    assign or1046 = or1045 | eq721;
    assign or1047 = or1046 | eq631;
    assign or1048 = or1047 | eq611;
    assign or1049 = or1048 | eq573;
    assign or1050 = or1049 | eq511;
    assign or1051 = or1050 | eq477;
    assign or1052 = or1051 | eq437;
    assign or1053 = or1052 | eq424;
    assign inv1054 = ~or1053;
    assign and1055 = inv1054 & eq1032;
    assign sel1057 = and1055 ? proxy1041 : 20'h0;
    assign and1059 = reg88 & 20'hf;
    assign sll1062 = and1059 << 20'h5;
    assign srl1064 = bindout224 >> sll1062;
    assign proxy1065 = srl1064;
    assign proxy1066 = proxy1065[31:0];
    assign sel1068 = and1055 ? proxy1066 : 32'h0;
    assign proxy1069 = proxy128;
    assign sel1071 = and1055 ? proxy1069 : 32'h0;
    assign sel1074 = and1055 ? 1'b0 : 1'b0;
    assign sel1075 = and1055 ? 1'b1 : 1'b0;
    assign add1077 = reg88 + 20'h1;
    assign and1079 = and1055 & io_pe_ready;
    assign sel1080 = and1079 ? add1077 : sel543;
    assign ne1081 = sel1155 != reg94;
    assign and1084 = reg88 & 20'hf;
    assign eq1087 = and1084 == 20'hf;
    assign and1089 = and1079 & ne1081;
    assign and1090 = and1089 & eq1087;
    assign sel1091 = and1090 ? 1'b1 : 1'b0;
    assign sel1092 = and1090 ? 1'b1 : 1'b0;
    assign inv1093 = ~ne1081;
    assign and1094 = and1079 & inv1093;
    assign sel1095 = and1094 ? 1'b1 : sel1091;
    assign sel1096 = and1094 ? 1'b1 : sel1092;
    assign sel1097 = and1094 ? 16'h4000 : sel1024;
    assign add1099 = proxy_execute_stalls360 + 32'h1;
    assign inv1101 = ~io_pe_ready;
    assign and1102 = and1055 & inv1101;
    assign proxy1103 = proxy349[351:320];
    assign sel1104 = and1102 ? add1099 : proxy1103;
    assign eq1106 = reg419 == 16'h4000;
    assign add1108 = reg70 + 20'h1;
    assign or1110 = eq1032 | eq981;
    assign or1111 = or1110 | eq934;
    assign or1112 = or1111 | eq897;
    assign or1113 = or1112 | eq836;
    assign or1114 = or1113 | eq754;
    assign or1115 = or1114 | eq721;
    assign or1116 = or1115 | eq631;
    assign or1117 = or1116 | eq611;
    assign or1118 = or1117 | eq573;
    assign or1119 = or1118 | eq511;
    assign or1120 = or1119 | eq477;
    assign or1121 = or1120 | eq437;
    assign or1122 = or1121 | eq424;
    assign inv1123 = ~or1122;
    assign and1124 = inv1123 & eq1106;
    assign sel1125 = and1124 ? add1108 : sel427;
    assign ne1126 = sel1125 != reg76;
    assign and1129 = reg70 & 20'hf;
    assign ne1132 = and1129 != 20'hf;
    assign and1135 = sel1125 & 20'hf;
    assign sll1138 = and1135 << 20'h5;
    assign srl1140 = reg322 >> sll1138;
    assign proxy1141 = srl1140;
    assign proxy1142 = proxy1141[19:0];
    assign and1143 = and1124 & ne1126;
    assign and1144 = and1143 & ne1132;
    assign sel1145 = and1144 ? proxy1142 : sel531;
    assign and1147 = sel1125 & 20'hf;
    assign sll1150 = and1147 << 20'h5;
    assign srl1152 = reg328 >> sll1150;
    assign proxy1153 = srl1152;
    assign proxy1154 = proxy1153[19:0];
    assign sel1155 = and1144 ? proxy1154 : sel1080;
    assign and1157 = sel1125 & 20'hf;
    assign ne1160 = and1157 != 20'hf;
    assign add1163 = sel1125 + 20'h1;
    assign and1166 = add1163 & 20'hf;
    assign sll1169 = and1166 << 20'h5;
    assign srl1171 = reg328 >> sll1169;
    assign proxy1172 = srl1171;
    assign proxy1173 = proxy1172[19:0];
    assign and1174 = and1144 & ne1160;
    assign sel1175 = and1174 ? proxy1173 : sel622;
    assign sel1176 = and1174 ? 16'h40 : sel1097;
    assign inv1177 = ~ne1160;
    assign and1178 = and1144 & inv1177;
    assign sel1179 = and1178 ? 16'h10 : sel1176;
    assign inv1180 = ~ne1132;
    assign and1181 = and1143 & inv1180;
    assign sel1182 = and1181 ? 16'h2 : sel1179;
    assign inv1184 = ~ne1126;
    assign and1185 = and1124 & inv1184;
    assign sel1186 = and1185 ? 16'h8000 : sel1182;
    assign eq1188 = reg419 == 16'h8000;
    assign or1189 = eq1106 | eq1032;
    assign or1190 = or1189 | eq981;
    assign or1191 = or1190 | eq934;
    assign or1192 = or1191 | eq897;
    assign or1193 = or1192 | eq836;
    assign or1194 = or1193 | eq754;
    assign or1195 = or1194 | eq721;
    assign or1196 = or1195 | eq631;
    assign or1197 = or1196 | eq611;
    assign or1198 = or1197 | eq573;
    assign or1199 = or1198 | eq511;
    assign or1200 = or1199 | eq477;
    assign or1201 = or1200 | eq437;
    assign or1202 = or1201 | eq424;
    assign inv1203 = ~or1202;
    assign and1204 = inv1203 & eq1188;
    assign sel1205 = and1204 ? 20'h0 : sel1057;
    assign sel1206 = and1204 ? 32'h0 : sel1068;
    assign sel1207 = and1204 ? 32'h0 : sel1071;
    assign sel1208 = and1204 ? 1'b1 : sel1074;
    assign sel1209 = and1204 ? 1'b1 : sel1075;
    assign sub1210 = io_ctrl_timer - reg347;
    assign proxy1211 = sub1210;
    assign proxy1212 = proxy1211[31:0];
    assign lt1213 = proxy_min_latency351 < proxy1212;
    assign sel1215 = lt1213 ? proxy_min_latency351 : proxy1212;
    assign eq1218 = proxy_min_latency351 == 32'h0;
    assign sel1220 = eq1218 ? proxy1212 : sel1215;
    assign and1222 = and1204 & io_pe_ready;
    assign proxy1223 = proxy349[63:32];
    assign sel1224 = and1222 ? sel1220 : proxy1223;
    assign gt1225 = proxy_min_latency351 > proxy1212;
    assign sel1227 = gt1225 ? proxy_min_latency351 : proxy1212;
    assign proxy1229 = proxy349[95:64];
    assign sel1230 = and1222 ? sel1227 : proxy1229;
    assign add1231 = proxy_total_latency353 + proxy1212;
    assign proxy1233 = proxy349[127:96];
    assign sel1234 = and1222 ? add1231 : proxy1233;
    assign add1236 = proxy_num_parts350 + 32'h1;
    assign proxy1238 = proxy349[31:0];
    assign sel1239 = and1222 ? add1236 : proxy1238;
    assign sel1240 = and1222 ? 16'h1 : sel1186;
    assign add1242 = proxy_execute_stalls360 + 32'h1;
    assign inv1244 = ~io_pe_ready;
    assign and1245 = and1204 & inv1244;
    assign sel1246 = and1245 ? add1242 : sel1104;

    assign io_ctrl_start_ready = io_ctrl_start_ready11;
    assign io_ctrl_stats = io_ctrl_stats17;
    assign io_lsu_rd_req_valid = sel953;
    assign io_lsu_rd_req_data = io_lsu_rd_req_data34;
    assign io_pe_valid = sel1209;
    assign io_pe_data = io_pe_data53;

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
    wire io_enq_valid2, io_enq_ready10, io_deq_valid13, io_deq_ready21, proxy26, proxy32, proxy48, sel49, proxy54, proxy60, proxy73, sel74, proxy78, proxy84, proxy97, sel98, proxy102;
    wire[20:0] io_enq_data5, io_deq_data16, ch_pipe_data_t23, ch_pipe_data_t28, proxy33, sel36, proxy45, ch_pipe_data_t56, proxy61, sel64, proxy70, ch_pipe_data_t80, proxy85, sel88, proxy94;
    reg[20:0] reg44, reg69, reg93;
    reg reg53, reg77, reg101;

    assign io_enq_valid2 = io_enq_valid;
    assign io_enq_data5 = io_enq_data;
    assign io_enq_ready10 = io_deq_ready21;
    assign io_deq_valid13 = proxy26;
    assign io_deq_data16 = ch_pipe_data_t23;
    assign io_deq_ready21 = io_deq_ready;
    assign ch_pipe_data_t23 = ch_pipe_data_t80;
    assign proxy26 = proxy84;
    assign ch_pipe_data_t28 = proxy45;
    assign proxy32 = proxy54;
    assign proxy33 = io_enq_data5;
    assign sel36 = io_deq_ready21 ? proxy33 : ch_pipe_data_t28;
    always @ (posedge clk)
    reg44 <= reset ? 21'b0 : sel36;
    assign proxy45 = reg44;
    assign proxy48 = io_enq_valid2;
    assign sel49 = io_deq_ready21 ? proxy48 : proxy32;
    always @ (posedge clk)
    reg53 <= reset ? 1'b0 : sel49;
    assign proxy54 = reg53;
    assign ch_pipe_data_t56 = proxy70;
    assign proxy60 = proxy78;
    assign proxy61 = ch_pipe_data_t28;
    assign sel64 = io_deq_ready21 ? proxy61 : ch_pipe_data_t56;
    always @ (posedge clk)
    reg69 <= reset ? 21'b0 : sel64;
    assign proxy70 = reg69;
    assign proxy73 = proxy32;
    assign sel74 = io_deq_ready21 ? proxy73 : proxy60;
    always @ (posedge clk)
    reg77 <= reset ? 1'b0 : sel74;
    assign proxy78 = reg77;
    assign ch_pipe_data_t80 = proxy94;
    assign proxy84 = proxy102;
    assign proxy85 = ch_pipe_data_t56;
    assign sel88 = io_deq_ready21 ? proxy85 : ch_pipe_data_t80;
    always @ (posedge clk)
    reg93 <= reset ? 21'b0 : sel88;
    assign proxy94 = reg93;
    assign proxy97 = proxy60;
    assign sel98 = io_deq_ready21 ? proxy97 : proxy84;
    always @ (posedge clk)
    reg101 <= reset ? 1'b0 : sel98;
    assign proxy102 = reg101;

    assign io_enq_ready = io_enq_ready10;
    assign io_deq_valid = io_deq_valid13;
    assign io_deq_data = io_deq_data16;

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
    wire[63:0] lit135 = 64'h0;
    wire[479:0] lit500 = 480'h0;
    wire[511:0] lit531 = 512'h0;
    wire[84:0] io_req_data5;
    wire[19:0] io_req_data_a_rowind6, proxy_a_rowind55, proxy_a_rowind80, and200, proxy201, and263, sel265, and274, proxy275, sll365, srl369, sel372, sll460, srl463, add467, sel469, srl491, sll494, srl497, sel499, srl505, and509, sll512;
    wire[31:0] io_req_data_a_value7, io_req_data_x_value8, proxy95, proxy_write_value_stalls129, proxy_write_mask_stalls130, proxy139, sel140, sll150, sll153, and164, and182, sel188, proxy192, proxy193, fmult194, fadd203, add220, sel222, sub224, sel228, inv241, and243, or245, sel248, inv249, and251, sel255, or256, sel260, sel278, or279, sel282, sel286, sel287, add381, proxy385, sel386, add476, sel480, add521, proxy525, sel526;
    wire io_req_data_is_end9, io_req_ready12, io_is_idle32, proxy35, bindin38, bindin40, bindin41, proxy48, bindout49, bindout52, proxy_is_end56, proxy59, bindin60, proxy62, bindin64, bindin65, bindin66, proxy_is_end70, bindout77, proxy_is_end81, proxy84, bindin85, inv155, eq158, or160, proxy161, inv162, eq167, and169, or171, proxy172, eq174, eq177, and179, proxy180, ne185, and190, proxy191, and196, proxy197, proxy205, eq207, and209, inv211, and213, inv215, and217, inv226, and227, inv229, and231, inv233, and235, ne237, and239, and247, inv253, and254, inv258, and259, eq267, inv268, and270, sel272, and281, and283, and285, eq291, inv359, and360, sel376, and378, inv383, and384, eq388, or455, inv456, and457, sel471, and473, inv478, and479, eq482, or484, or485, inv486, and487, sel517, and518, inv523, and524;
    wire[533:0] io_lsu_wr_req_data18;
    wire[63:0] io_stats27, proxy128, ch_pe_stats_t132;
    wire[20:0] proxy43, bindin46, proxy54, bindout57, proxy68, bindin71, proxy79, bindout82;
    reg[31:0] mem86[0:31];
    reg[31:0] reg93, reg99, reg105, reg111;
    wire[4:0] proxy115, proxy117, proxy202, proxy276, sel277, proxy295, proxy299, proxy303, proxy307, proxy311, proxy315, proxy319, proxy323, proxy327, proxy331, proxy335, proxy339, proxy343, proxy347, proxy351, proxy355, proxy392, proxy396, proxy400, proxy404, proxy408, proxy412, proxy416, proxy420, proxy424, proxy428, proxy432, proxy436, proxy440, proxy444, proxy448, proxy452;
    reg[19:0] reg126;
    reg[63:0] reg137;
    reg[3:0] reg147;
    wire[3:0] sel289, sel379, sel474, sel519;
    wire[511:0] proxy293, sel374, proxy390, sel470, proxy503, sll514, sel516;
    wire[1:0] sel362, sel458, sel488;
    wire[479:0] proxy501;

    assign io_req_data5 = io_req_data;
    assign io_req_data_a_rowind6 = io_req_data5[19:0];
    assign io_req_data_a_value7 = io_req_data5[51:20];
    assign io_req_data_x_value8 = io_req_data5[83:52];
    assign io_req_data_is_end9 = io_req_data5[84];
    assign io_req_ready12 = proxy48;
    assign io_lsu_wr_req_data18 = {sel516, sel499, sel488};
    assign io_stats27 = proxy128;
    assign io_is_idle32 = proxy180;
    assign proxy35 = proxy191;
    assign bindin38 = clk;
    assign bindin40 = reset;
    ch_pipe __module16__(.clk(bindin38), .reset(bindin40), .io_enq_valid(bindin41), .io_enq_data(bindin46), .io_deq_ready(bindin60), .io_enq_ready(bindout49), .io_deq_valid(bindout52), .io_deq_data(bindout57));
    assign bindin41 = proxy35;
    assign proxy43 = {io_req_data_is_end9, io_req_data_a_rowind6};
    assign bindin46 = proxy43;
    assign proxy48 = bindout49;
    assign proxy54 = bindout57;
    assign proxy_a_rowind55 = proxy54[19:0];
    assign proxy_is_end56 = proxy54[20];
    assign proxy59 = proxy172;
    assign bindin60 = proxy59;
    assign proxy62 = proxy197;
    assign bindin64 = clk;
    assign bindin65 = reset;
    ch_pipe __module17__(.clk(bindin64), .reset(bindin65), .io_enq_valid(bindin66), .io_enq_data(bindin71), .io_deq_ready(bindin85), .io_deq_valid(bindout77), .io_deq_data(bindout82));
    assign bindin66 = proxy62;
    assign proxy68 = {proxy_is_end56, proxy_a_rowind55};
    assign proxy_is_end70 = proxy68[20];
    assign bindin71 = proxy68;
    assign proxy79 = bindout82;
    assign proxy_a_rowind80 = proxy79[19:0];
    assign proxy_is_end81 = proxy79[20];
    assign proxy84 = proxy161;
    assign bindin85 = proxy84;
    always @(posedge clk)
    mem86[proxy117] = proxy139;
    always @ (posedge clk)
    reg93 <= reset ? 32'h0 : sel287;
    assign proxy95 = reg99;
    always @ (posedge clk)
    reg99 <= reset ? 32'h0 : sel286;
    always @ (posedge clk)
    reg105 <= reset ? 32'h0 : sel260;
    always @ (posedge clk)
    reg111 <= reset ? 32'h0 : sel228;
    assign proxy115 = proxy202;
    assign proxy117 = sel277;
    always @ (posedge clk)
    reg126 <= reset ? 20'h0 : sel265;
    assign proxy128 = reg137;
    assign proxy_write_value_stalls129 = proxy128[31:0];
    assign proxy_write_mask_stalls130 = proxy128[63:32];
    assign ch_pe_stats_t132 = {sel526, sel480};
    always @ (posedge clk)
    reg137 <= reset ? lit135 : ch_pe_stats_t132;
    assign proxy139 = sel140;
    assign sel140 = sel272 ? sel278 : mem86[proxy117];
    always @ (posedge clk)
    reg147 <= reset ? 4'h1 : sel519;
    assign sll150 = 32'h1 << proxy115;
    assign sll153 = 32'h1 << proxy117;
    assign inv155 = ~bindout77;
    assign eq158 = 4'h1 == reg147;
    assign or160 = eq158 | inv155;
    assign proxy161 = or160;
    assign inv162 = ~bindout52;
    assign and164 = reg105 & sll150;
    assign eq167 = 32'h0 == and164;
    assign and169 = proxy161 & eq167;
    assign or171 = and169 | inv162;
    assign proxy172 = or171;
    assign eq174 = 32'h0 == reg111;
    assign eq177 = reg147 == 4'h1;
    assign and179 = eq177 & eq174;
    assign proxy180 = and179;
    assign and182 = reg93 & sll150;
    assign ne185 = 32'h0 != and182;
    assign sel188 = ne185 ? mem86[proxy115] : 32'h0;
    assign and190 = io_req_valid & io_req_ready12;
    assign proxy191 = and190;
    assign proxy192 = io_req_data_x_value8;
    assign proxy193 = io_req_data_a_value7;
    fp_mult __fp_mult_194__(.clock(clk), .clk_en(proxy172), .dataa(proxy193), .datab(proxy192), .result(fmult194));
    assign and196 = bindout52 & proxy172;
    assign proxy197 = and196;
    assign and200 = proxy_a_rowind55 & 20'h1f;
    assign proxy201 = and200;
    assign proxy202 = proxy201[4:0];
    fp_add __fp_add_sub_203__(.clock(clk), .clk_en(proxy161), .dataa(fmult194), .datab(sel188), .result(fadd203));
    assign proxy205 = proxy35;
    assign eq207 = 4'h1 == reg147;
    assign and209 = eq207 & bindout77;
    assign inv211 = ~proxy205;
    assign and213 = inv211 & and209;
    assign inv215 = ~and209;
    assign and217 = proxy205 & inv215;
    assign add220 = reg111 + 32'h1;
    assign sel222 = and217 ? add220 : reg111;
    assign sub224 = reg111 - 32'h1;
    assign inv226 = ~and217;
    assign and227 = inv226 & and213;
    assign sel228 = and227 ? sub224 : sel222;
    assign inv229 = ~proxy_is_end70;
    assign and231 = proxy62 & inv229;
    assign inv233 = ~proxy_is_end81;
    assign and235 = and209 & inv233;
    assign ne237 = sll150 != sll153;
    assign and239 = and231 & ne237;
    assign inv241 = ~sll153;
    assign and243 = reg105 & inv241;
    assign or245 = and243 | sll150;
    assign and247 = and235 & and239;
    assign sel248 = and247 ? or245 : reg105;
    assign inv249 = ~sll153;
    assign and251 = reg105 & inv249;
    assign inv253 = ~and239;
    assign and254 = and235 & inv253;
    assign sel255 = and254 ? and251 : sel248;
    assign or256 = reg105 | sll150;
    assign inv258 = ~and235;
    assign and259 = inv258 & and231;
    assign sel260 = and259 ? or256 : sel255;
    assign and263 = proxy_a_rowind80 & 20'hfffe0;
    assign sel265 = and235 ? and263 : reg126;
    assign eq267 = reg147 == 4'h1;
    assign inv268 = ~proxy_is_end81;
    assign and270 = bindout77 & inv268;
    assign sel272 = eq267 ? and270 : 1'b0;
    assign and274 = proxy_a_rowind80 & 20'h1f;
    assign proxy275 = and274;
    assign proxy276 = proxy275[4:0];
    assign sel277 = eq267 ? proxy276 : 5'b0;
    assign sel278 = eq267 ? fadd203 : 32'h0;
    assign or279 = reg93 | sll153;
    assign and281 = eq267 & sel272;
    assign sel282 = and281 ? or279 : reg93;
    assign and283 = bindout77 & proxy_is_end81;
    assign and285 = eq267 & and283;
    assign sel286 = and285 ? reg93 : proxy95;
    assign sel287 = and285 ? 32'h0 : sel282;
    assign sel289 = and285 ? 4'h2 : reg147;
    assign eq291 = reg147 == 4'h2;
    assign proxy293 = {mem86[proxy355], mem86[proxy351], mem86[proxy347], mem86[proxy343], mem86[proxy339], mem86[proxy335], mem86[proxy331], mem86[proxy327], mem86[proxy323], mem86[proxy319], mem86[proxy315], mem86[proxy311], mem86[proxy307], mem86[proxy303], mem86[proxy299], mem86[proxy295]};
    assign proxy295 = 5'b0;
    assign proxy299 = 5'b1;
    assign proxy303 = 5'b10;
    assign proxy307 = 5'b11;
    assign proxy311 = 5'b100;
    assign proxy315 = 5'b101;
    assign proxy319 = 5'b110;
    assign proxy323 = 5'b111;
    assign proxy327 = 5'b1000;
    assign proxy331 = 5'b1001;
    assign proxy335 = 5'b1010;
    assign proxy339 = 5'b1011;
    assign proxy343 = 5'b1100;
    assign proxy347 = 5'b1101;
    assign proxy351 = 5'b1110;
    assign proxy355 = 5'b1111;
    assign inv359 = ~eq267;
    assign and360 = inv359 & eq291;
    assign sel362 = and360 ? 2'b0 : 2'b0;
    assign sll365 = reg126 << 20'h2;
    assign srl369 = sll365 >> 20'h6;
    assign sel372 = and360 ? srl369 : 20'h0;
    assign sel374 = and360 ? proxy293 : lit531;
    assign sel376 = and360 ? 1'b1 : 1'b0;
    assign and378 = and360 & io_lsu_wr_req_ready;
    assign sel379 = and378 ? 4'h4 : sel289;
    assign add381 = proxy_write_value_stalls129 + 32'h1;
    assign inv383 = ~io_lsu_wr_req_ready;
    assign and384 = and360 & inv383;
    assign proxy385 = proxy128[31:0];
    assign sel386 = and384 ? add381 : proxy385;
    assign eq388 = reg147 == 4'h4;
    assign proxy390 = {mem86[proxy452], mem86[proxy448], mem86[proxy444], mem86[proxy440], mem86[proxy436], mem86[proxy432], mem86[proxy428], mem86[proxy424], mem86[proxy420], mem86[proxy416], mem86[proxy412], mem86[proxy408], mem86[proxy404], mem86[proxy400], mem86[proxy396], mem86[proxy392]};
    assign proxy392 = 5'b10000;
    assign proxy396 = 5'b10001;
    assign proxy400 = 5'b10010;
    assign proxy404 = 5'b10011;
    assign proxy408 = 5'b10100;
    assign proxy412 = 5'b10101;
    assign proxy416 = 5'b10110;
    assign proxy420 = 5'b10111;
    assign proxy424 = 5'b11000;
    assign proxy428 = 5'b11001;
    assign proxy432 = 5'b11010;
    assign proxy436 = 5'b11011;
    assign proxy440 = 5'b11100;
    assign proxy444 = 5'b11101;
    assign proxy448 = 5'b11110;
    assign proxy452 = 5'b11111;
    assign or455 = eq291 | eq267;
    assign inv456 = ~or455;
    assign and457 = inv456 & eq388;
    assign sel458 = and457 ? 2'b0 : sel362;
    assign sll460 = reg126 << 20'h2;
    assign srl463 = sll460 >> 20'h6;
    assign add467 = srl463 + 20'h1;
    assign sel469 = and457 ? add467 : sel372;
    assign sel470 = and457 ? proxy390 : sel374;
    assign sel471 = and457 ? 1'b1 : sel376;
    assign and473 = and457 & io_lsu_wr_req_ready;
    assign sel474 = and473 ? 4'h8 : sel379;
    assign add476 = proxy_write_value_stalls129 + 32'h1;
    assign inv478 = ~io_lsu_wr_req_ready;
    assign and479 = and457 & inv478;
    assign sel480 = and479 ? add476 : sel386;
    assign eq482 = reg147 == 4'h8;
    assign or484 = eq388 | eq291;
    assign or485 = or484 | eq267;
    assign inv486 = ~or485;
    assign and487 = inv486 & eq482;
    assign sel488 = and487 ? 2'b1 : sel458;
    assign srl491 = reg126 >> 20'h5;
    assign sll494 = srl491 << 20'h2;
    assign srl497 = sll494 >> 20'h6;
    assign sel499 = and487 ? srl497 : sel469;
    assign proxy501 = lit500;
    assign proxy503 = {proxy501, proxy95};
    assign srl505 = reg126 >> 20'h5;
    assign and509 = srl505 & 20'hf;
    assign sll512 = and509 << 20'h5;
    assign sll514 = proxy503 << sll512;
    assign sel516 = and487 ? sll514 : sel470;
    assign sel517 = and487 ? 1'b1 : sel471;
    assign and518 = and487 & io_lsu_wr_req_ready;
    assign sel519 = and518 ? 4'h1 : sel474;
    assign add521 = proxy_write_mask_stalls130 + 32'h1;
    assign inv523 = ~io_lsu_wr_req_ready;
    assign and524 = and487 & inv523;
    assign proxy525 = proxy128[63:32];
    assign sel526 = and524 ? add521 : proxy525;

    assign io_req_ready = io_req_ready12;
    assign io_lsu_wr_req_valid = sel517;
    assign io_lsu_wr_req_data = io_lsu_wr_req_data18;
    assign io_stats = io_stats27;
    assign io_is_idle = io_is_idle32;

endmodule


module ch_hxbar(
    input wire[2:0] io_sel,
    input wire[71:0] io_in,
    output wire[23:0] io_out
);
    wire[2:0] io_sel2, proxy31;
    wire[71:0] io_in5;
    wire[23:0] proxy6, proxy7, proxy8, io_out23, sel41, sel43, sel45, proxy46;
    wire eq40, eq42, eq44;

    assign io_sel2 = io_sel;
    assign io_in5 = io_in;
    assign proxy6 = io_in5[71:48];
    assign proxy7 = io_in5[47:24];
    assign proxy8 = io_in5[23:0];
    assign io_out23 = proxy46;
    assign proxy31 = io_sel2;
    assign eq40 = proxy31 == 3'b100;
    assign sel41 = eq40 ? proxy6 : 24'h0;
    assign eq42 = proxy31 == 3'b10;
    assign sel43 = eq42 ? proxy7 : sel41;
    assign eq44 = proxy31 == 3'b1;
    assign sel45 = eq44 ? proxy8 : sel43;
    assign proxy46 = sel45;

    assign io_out = io_out23;

endmodule

module ch_rrArbiter(
    input wire clk,
    input wire reset,
    input wire[2:0] io_in,
    output wire[2:0] io_grant
);
    wire[2:0] io_in2, io_grant8, proxy68, proxy70, proxy72, proxy74;
    wire proxy3, proxy4, proxy5, proxy22, proxy28, proxy46, and75, proxy76, and78, proxy79, orr82, inv84, and86, proxy87, proxy89, inv90, proxy92, or93, and95, proxy96, proxy97, inv98, proxy100, or101, and103, proxy104, and105, proxy106, inv109, and111, proxy112, orr114, inv116, and118, proxy119, proxy121, inv122, proxy124, or125, and127, proxy128, inv130, and132, proxy133, inv135, and137, proxy138, orr140, inv142, and144, proxy145;
    reg reg24, reg30, reg48;

    assign io_in2 = io_in;
    assign proxy3 = io_in2[2];
    assign proxy4 = io_in2[1];
    assign proxy5 = io_in2[0];
    assign io_grant8 = proxy74;
    assign proxy22 = proxy96;
    always @ (posedge clk)
    reg24 <= reset ? 1'b0 : proxy22;
    assign proxy28 = proxy104;
    always @ (posedge clk)
    reg30 <= reset ? 1'b0 : proxy28;
    assign proxy46 = proxy128;
    always @ (posedge clk)
    reg48 <= reset ? 1'b0 : proxy46;
    assign proxy68 = {proxy133, proxy112, 1'b0};
    assign proxy70 = {proxy138, 1'b0, proxy76};
    assign proxy72 = {1'b0, proxy106, proxy79};
    assign proxy74 = {proxy145, proxy119, proxy87};
    assign and75 = reg24 & proxy5;
    assign proxy76 = and75;
    assign and78 = reg30 & proxy5;
    assign proxy79 = and78;
    assign orr82 = |proxy68;
    assign inv84 = ~orr82;
    assign and86 = proxy5 & inv84;
    assign proxy87 = and86;
    assign proxy89 = proxy74[0];
    assign inv90 = ~proxy89;
    assign proxy92 = proxy74[1];
    assign or93 = reg24 | proxy92;
    assign and95 = or93 & inv90;
    assign proxy96 = and95;
    assign proxy97 = proxy74[0];
    assign inv98 = ~proxy97;
    assign proxy100 = proxy74[2];
    assign or101 = reg30 | proxy100;
    assign and103 = or101 & inv98;
    assign proxy104 = and103;
    assign and105 = reg48 & proxy4;
    assign proxy106 = and105;
    assign inv109 = ~reg24;
    assign and111 = inv109 & proxy4;
    assign proxy112 = and111;
    assign orr114 = |proxy70;
    assign inv116 = ~orr114;
    assign and118 = proxy4 & inv116;
    assign proxy119 = and118;
    assign proxy121 = proxy74[1];
    assign inv122 = ~proxy121;
    assign proxy124 = proxy74[2];
    assign or125 = reg48 | proxy124;
    assign and127 = or125 & inv122;
    assign proxy128 = and127;
    assign inv130 = ~reg30;
    assign and132 = inv130 & proxy3;
    assign proxy133 = and132;
    assign inv135 = ~reg48;
    assign and137 = inv135 & proxy3;
    assign proxy138 = and137;
    assign orr140 = |proxy72;
    assign inv142 = ~orr140;
    assign and144 = proxy3 & inv142;
    assign proxy145 = and144;

    assign io_grant = io_grant8;

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
    wire io_in_0_valid2, io_in_0_ready10, io_in_1_valid13, io_in_1_ready21, io_in_2_valid24, io_in_2_ready32, io_out_valid35, proxy_valid73, bindin85, bindin87, eq111, and113, proxy114, eq117, and119, proxy120, eq123, and125, proxy126;
    wire[22:0] io_in_0_data5, io_in_1_data16, io_in_2_data27, io_out_data38, proxy_data74;
    wire[2:0] io_out_grant46, proxy49, bindin51, proxy79, bindin88, proxy90, bindout91;
    wire[71:0] proxy53, bindin69;
    wire[23:0] proxy71, proxy72, bindout77;

    assign io_in_0_valid2 = io_in_0_valid;
    assign io_in_0_data5 = io_in_0_data;
    assign io_in_0_ready10 = proxy114;
    assign io_in_1_valid13 = io_in_1_valid;
    assign io_in_1_data16 = io_in_1_data;
    assign io_in_1_ready21 = proxy120;
    assign io_in_2_valid24 = io_in_2_valid;
    assign io_in_2_data27 = io_in_2_data;
    assign io_in_2_ready32 = proxy126;
    assign io_out_valid35 = proxy_valid73;
    assign io_out_data38 = proxy_data74;
    assign io_out_grant46 = proxy90;
    assign proxy49 = proxy90;
    ch_hxbar __module23__(.io_sel(bindin51), .io_in(bindin69), .io_out(bindout77));
    assign bindin51 = proxy49;
    assign proxy53 = {io_in_2_data27, io_in_2_valid24, io_in_1_data16, io_in_1_valid13, io_in_0_data5, io_in_0_valid2};
    assign bindin69 = proxy53;
    assign proxy71 = bindout77;
    assign proxy72 = proxy71;
    assign proxy_valid73 = proxy72[0];
    assign proxy_data74 = proxy72[23:1];
    assign proxy79 = {io_in_2_valid24, io_in_1_valid13, io_in_0_valid2};
    assign bindin85 = clk;
    assign bindin87 = reset;
    ch_rrArbiter __module24__(.clk(bindin85), .reset(bindin87), .io_in(bindin88), .io_grant(bindout91));
    assign bindin88 = proxy79;
    assign proxy90 = bindout91;
    assign eq111 = proxy90 == 3'b1;
    assign and113 = io_out_ready & eq111;
    assign proxy114 = and113;
    assign eq117 = proxy90 == 3'b10;
    assign and119 = io_out_ready & eq117;
    assign proxy120 = and119;
    assign eq123 = proxy90 == 3'b100;
    assign and125 = io_out_ready & eq123;
    assign proxy126 = and125;

    assign io_in_0_ready = io_in_0_ready10;
    assign io_in_1_ready = io_in_1_ready21;
    assign io_in_2_ready = io_in_2_ready32;
    assign io_out_valid = io_out_valid35;
    assign io_out_data = io_out_data38;
    assign io_out_grant = io_out_grant46;

endmodule

module ch_hxbar_0(
    input wire[2:0] io_sel,
    input wire[1604:0] io_in,
    output wire[534:0] io_out
);
    wire[534:0] lit42 = 535'b0;
    wire[2:0] io_sel2, proxy35;
    wire[1604:0] io_in5;
    wire[534:0] proxy6, proxy7, proxy8, io_out26, sel45, sel47, sel49, proxy50;
    wire eq44, eq46, eq48;

    assign io_sel2 = io_sel;
    assign io_in5 = io_in;
    assign proxy6 = io_in5[1604:1070];
    assign proxy7 = io_in5[1069:535];
    assign proxy8 = io_in5[534:0];
    assign io_out26 = proxy50;
    assign proxy35 = io_sel2;
    assign eq44 = proxy35 == 3'b100;
    assign sel45 = eq44 ? proxy6 : lit42;
    assign eq46 = proxy35 == 3'b10;
    assign sel47 = eq46 ? proxy7 : sel45;
    assign eq48 = proxy35 == 3'b1;
    assign sel49 = eq48 ? proxy8 : sel47;
    assign proxy50 = sel49;

    assign io_out = io_out26;

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
    wire io_in_0_valid2, io_in_0_ready11, io_in_1_valid14, io_in_1_ready23, io_in_2_valid26, io_in_2_ready35, io_out_valid38, proxy_valid80, bindin93, bindin95, eq119, and121, proxy122, eq125, and127, proxy128, eq131, and133, proxy134;
    wire[533:0] io_in_0_data5, io_in_1_data17, io_in_2_data29, io_out_data41, proxy_data81;
    wire[2:0] io_out_grant50, proxy53, bindin55, proxy87, bindin96, proxy98, bindout99;
    wire[1604:0] proxy57, bindin76;
    wire[534:0] proxy78, proxy79, bindout85;

    assign io_in_0_valid2 = io_in_0_valid;
    assign io_in_0_data5 = io_in_0_data;
    assign io_in_0_ready11 = proxy122;
    assign io_in_1_valid14 = io_in_1_valid;
    assign io_in_1_data17 = io_in_1_data;
    assign io_in_1_ready23 = proxy128;
    assign io_in_2_valid26 = io_in_2_valid;
    assign io_in_2_data29 = io_in_2_data;
    assign io_in_2_ready35 = proxy134;
    assign io_out_valid38 = proxy_valid80;
    assign io_out_data41 = proxy_data81;
    assign io_out_grant50 = proxy98;
    assign proxy53 = proxy98;
    ch_hxbar_0 __module26__(.io_sel(bindin55), .io_in(bindin76), .io_out(bindout85));
    assign bindin55 = proxy53;
    assign proxy57 = {io_in_2_data29, io_in_2_valid26, io_in_1_data17, io_in_1_valid14, io_in_0_data5, io_in_0_valid2};
    assign bindin76 = proxy57;
    assign proxy78 = bindout85;
    assign proxy79 = proxy78;
    assign proxy_valid80 = proxy79[0];
    assign proxy_data81 = proxy79[534:1];
    assign proxy87 = {io_in_2_valid26, io_in_1_valid14, io_in_0_valid2};
    assign bindin93 = clk;
    assign bindin95 = reset;
    ch_rrArbiter __module27__(.clk(bindin93), .reset(bindin95), .io_in(bindin96), .io_grant(bindout99));
    assign bindin96 = proxy87;
    assign proxy98 = bindout99;
    assign eq119 = proxy98 == 3'b1;
    assign and121 = io_out_ready & eq119;
    assign proxy122 = and121;
    assign eq125 = proxy98 == 3'b10;
    assign and127 = io_out_ready & eq125;
    assign proxy128 = and127;
    assign eq131 = proxy98 == 3'b100;
    assign and133 = io_out_ready & eq131;
    assign proxy134 = and133;

    assign io_in_0_ready = io_in_0_ready11;
    assign io_in_1_ready = io_in_1_ready23;
    assign io_in_2_ready = io_in_2_ready35;
    assign io_out_valid = io_out_valid38;
    assign io_out_data = io_out_data41;
    assign io_out_grant = io_out_grant50;

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
    wire[533:0] lit91 = 534'b0;
    wire[511:0] lit394 = 512'h0;
    reg[21:0] mem1[0:1];
    reg[511:0] mem3[0:1];
    reg reg11, reg38, reg149, reg153, reg157, reg161, reg171;
    reg[19:0] reg18;
    wire proxy20, proxy22, io_enq_valid40, io_enq_ready49, proxy94, proxy95, proxy97, proxy98, proxy104, ne110, proxy112, eq116, and118, sel121, proxy122, proxy124, ne131, sel134, proxy135, proxy137, eq142, sel145, proxy146, proxy147, proxy150, proxy151, proxy154, proxy155, proxy158, proxy159, proxy162, eq164, proxy165, eq173, and174, sel175, ne181, eq183, and185, and187, sel188, sel189, inv204, and205, inv209, and210, and211, sel212, eq216, inv217, and218, and219, sel220, eq224, ne229, and231, and233, sel234, sel235, sel236, sel252, ne253, and255, sel256, inv259, and260, inv262, and263, sel264, sel265, sel266, sel274, ne275, and277, sel278, inv280, and281, eq284, or285, inv286, and287, sel288, eq291, and293, sel294, ne310, inv312, and313, and314, sel315, eq331, or332, or333, inv334, and335, sel336, sel345, and346, eq349, or350, or351, or352, inv353, and354, sel355, ne359, and361, sel367, add369, and371, sel372, eq374, and376, add379, inv381, and382, sel383, eq385, and387;
    wire[533:0] io_enq_data43, io_evict_data55, proxy82, entry_t99, sel206;
    wire[1:0] io_enq_data_owner44, proxy_owner83, entry_t_owner100, memport_owners106, memport_owners126, and128, memport_owners139, memport_owners176, and178, memport_owners193, or195, proxy196, memport_owners226, memport_owners240, or242, proxy243, memport_owners289, proxy301, memport_owners305, and307, inv316, memport_owners318, and320, proxy321, sel338, memport_owners356, sel362;
    wire[19:0] io_enq_data_tag45, proxy_tag84, entry_t_tag101, memport_tag115, memport_tag198, memport_tag223, memport_tag245, sel251, sel273, memport_tag296, memport_tag323, memport_tag340, sel342, memport_tag364, sel365;
    wire[511:0] io_enq_data_data46, proxy67, sel68, proxy_data85, or190, sel192, or237, sel239, sel267, sel344, sel366;
    wire[21:0] proxy72, sel73, tag_t200, sel203, tag_t247, sel250, tag_t269, sel272, tag_t298, sel302, tag_t325, sel328;
    reg[4:0] reg80;
    reg[533:0] reg93;
    wire[4:0] sel208, sel214, sel258, sel261, sel279, sel282, sel304, sel329, sel347, sel377, sel388;

    always @(posedge clk)
    mem1[proxy20] = proxy72;
    always @(posedge clk)
    mem3[proxy20] = proxy67;
    always @ (posedge clk)
    reg11 <= reset ? 1'b0 : sel274;
    always @ (posedge clk)
    reg18 <= reset ? 20'h0 : sel273;
    assign proxy20 = sel355;
    assign proxy22 = sel220;
    always @ (posedge clk)
    reg38 <= reset ? 1'b0 : sel383;
    assign io_enq_valid40 = io_enq_valid;
    assign io_enq_data43 = io_enq_data;
    assign io_enq_data_owner44 = io_enq_data43[1:0];
    assign io_enq_data_tag45 = io_enq_data43[21:2];
    assign io_enq_data_data46 = io_enq_data43[533:22];
    assign io_enq_ready49 = proxy165;
    assign io_evict_data55 = {sel366, sel365, sel362};
    assign proxy67 = sel68;
    assign sel68 = sel264 ? sel267 : mem3[proxy20];
    assign proxy72 = sel73;
    assign sel73 = sel315 ? sel328 : mem1[proxy20];
    always @ (posedge clk)
    reg80 <= reset ? 5'b1 : sel388;
    assign proxy82 = reg93;
    assign proxy_owner83 = proxy82[1:0];
    assign proxy_tag84 = proxy82[21:2];
    assign proxy_data85 = proxy82[533:22];
    always @ (posedge clk)
    reg93 <= reset ? lit91 : sel206;
    assign proxy94 = proxy150;
    assign proxy95 = proxy154;
    assign proxy97 = proxy158;
    assign proxy98 = proxy162;
    assign entry_t99 = io_enq_data43;
    assign entry_t_owner100 = entry_t99[1:0];
    assign entry_t_tag101 = entry_t99[21:2];
    assign proxy104 = 1'b1;
    assign memport_owners106 = mem1[proxy104][1:0];
    assign ne110 = memport_owners106 != 2'b0;
    assign proxy112 = 1'b1;
    assign memport_tag115 = mem1[proxy112][21:2];
    assign eq116 = memport_tag115 == entry_t_tag101;
    assign and118 = eq116 & ne110;
    assign sel121 = and118 ? 1'b1 : 1'b0;
    assign proxy122 = sel121;
    assign proxy124 = 1'b1;
    assign memport_owners126 = mem1[proxy124][1:0];
    assign and128 = memport_owners126 & entry_t_owner100;
    assign ne131 = and128 != 2'b0;
    assign sel134 = ne131 ? 1'b1 : 1'b0;
    assign proxy135 = sel134;
    assign proxy137 = 1'b0;
    assign memport_owners139 = mem1[proxy137][1:0];
    assign eq142 = memport_owners139 == 2'b0;
    assign sel145 = eq142 ? 1'b0 : 1'b1;
    assign proxy146 = sel145;
    assign proxy147 = proxy122;
    always @ (posedge clk)
    reg149 <= reset ? 1'b0 : proxy147;
    assign proxy150 = reg149;
    assign proxy151 = proxy135;
    always @ (posedge clk)
    reg153 <= reset ? 1'b0 : proxy151;
    assign proxy154 = reg153;
    assign proxy155 = proxy146;
    always @ (posedge clk)
    reg157 <= reset ? 1'b0 : proxy155;
    assign proxy158 = reg157;
    assign proxy159 = io_enq_valid40;
    always @ (posedge clk)
    reg161 <= reset ? 1'b0 : proxy159;
    assign proxy162 = reg161;
    assign eq164 = reg80 == 5'b1;
    assign proxy165 = eq164;
    always @ (posedge clk)
    reg171 <= reset ? 1'b0 : sel278;
    assign eq173 = reg80 == 5'b1;
    assign and174 = eq173 & io_enq_valid40;
    assign sel175 = and174 ? reg11 : 1'b0;
    assign memport_owners176 = mem1[proxy20][1:0];
    assign and178 = memport_owners176 & io_enq_data_owner44;
    assign ne181 = and178 != 2'b0;
    assign eq183 = io_enq_data_tag45 == reg18;
    assign and185 = eq183 & ne181;
    assign and187 = and174 & and185;
    assign sel188 = and187 ? 1'b1 : 1'b0;
    assign sel189 = and187 ? 1'b1 : 1'b0;
    assign or190 = mem3[proxy20] | io_enq_data_data46;
    assign sel192 = and187 ? or190 : lit394;
    assign memport_owners193 = mem1[proxy20][1:0];
    assign or195 = memport_owners193 | io_enq_data_owner44;
    assign proxy196 = or195;
    assign memport_tag198 = mem1[proxy20][21:2];
    assign tag_t200 = {memport_tag198, proxy196};
    assign sel203 = and187 ? tag_t200 : 22'b0;
    assign inv204 = ~and185;
    assign and205 = and174 & inv204;
    assign sel206 = and205 ? io_enq_data43 : proxy82;
    assign sel208 = and205 ? 5'b10 : reg80;
    assign inv209 = ~io_enq_valid40;
    assign and210 = eq173 & inv209;
    assign and211 = and210 & io_flush;
    assign sel212 = and211 ? 1'b0 : reg38;
    assign sel214 = and211 ? 5'b10000 : sel208;
    assign eq216 = reg80 == 5'b10;
    assign inv217 = ~eq173;
    assign and218 = inv217 & eq216;
    assign and219 = and218 & proxy98;
    assign sel220 = and219 ? proxy94 : 1'b0;
    assign memport_tag223 = mem1[proxy22][21:2];
    assign eq224 = memport_tag223 == proxy_tag84;
    assign memport_owners226 = mem1[proxy22][1:0];
    assign ne229 = memport_owners226 != 2'b0;
    assign and231 = ne229 & eq224;
    assign and233 = and219 & and231;
    assign sel234 = and233 ? 1'b1 : sel188;
    assign sel235 = and233 ? 1'b1 : sel189;
    assign sel236 = and233 ? proxy94 : sel175;
    assign or237 = mem3[proxy20] | proxy_data85;
    assign sel239 = and233 ? or237 : sel192;
    assign memport_owners240 = mem1[proxy20][1:0];
    assign or242 = memport_owners240 | proxy_owner83;
    assign proxy243 = or242;
    assign memport_tag245 = mem1[proxy20][21:2];
    assign tag_t247 = {memport_tag245, proxy243};
    assign sel250 = and233 ? tag_t247 : sel203;
    assign sel251 = and233 ? proxy_tag84 : reg18;
    assign sel252 = and233 ? proxy94 : reg11;
    assign ne253 = proxy94 != proxy95;
    assign and255 = and233 & ne253;
    assign sel256 = and255 ? proxy95 : reg171;
    assign sel258 = and255 ? 5'b100 : sel214;
    assign inv259 = ~ne253;
    assign and260 = and233 & inv259;
    assign sel261 = and260 ? 5'b1 : sel258;
    assign inv262 = ~and231;
    assign and263 = and219 & inv262;
    assign sel264 = and263 ? 1'b1 : sel234;
    assign sel265 = and263 ? 1'b1 : sel235;
    assign sel266 = and263 ? proxy97 : sel236;
    assign sel267 = and263 ? proxy_data85 : sel239;
    assign tag_t269 = {proxy_tag84, proxy_owner83};
    assign sel272 = and263 ? tag_t269 : sel250;
    assign sel273 = and263 ? proxy_tag84 : sel251;
    assign sel274 = and263 ? proxy97 : sel252;
    assign ne275 = proxy97 != proxy95;
    assign and277 = and263 & ne275;
    assign sel278 = and277 ? proxy95 : sel256;
    assign sel279 = and277 ? 5'b100 : sel261;
    assign inv280 = ~ne275;
    assign and281 = and263 & inv280;
    assign sel282 = and281 ? 5'b1 : sel279;
    assign eq284 = reg80 == 5'b100;
    assign or285 = eq216 | eq173;
    assign inv286 = ~or285;
    assign and287 = inv286 & eq284;
    assign sel288 = and287 ? reg171 : sel266;
    assign memport_owners289 = mem1[proxy20][1:0];
    assign eq291 = memport_owners289 == proxy_owner83;
    assign and293 = and287 & eq291;
    assign sel294 = and293 ? 1'b1 : sel265;
    assign memport_tag296 = mem1[proxy20][21:2];
    assign tag_t298 = {memport_tag296, proxy301};
    assign proxy301 = 2'b0;
    assign sel302 = and293 ? tag_t298 : sel272;
    assign sel304 = and293 ? 5'b1000 : sel282;
    assign memport_owners305 = mem1[proxy20][1:0];
    assign and307 = memport_owners305 & proxy_owner83;
    assign ne310 = and307 != 2'b0;
    assign inv312 = ~eq291;
    assign and313 = and287 & inv312;
    assign and314 = and313 & ne310;
    assign sel315 = and314 ? 1'b1 : sel294;
    assign inv316 = ~proxy_owner83;
    assign memport_owners318 = mem1[proxy20][1:0];
    assign and320 = memport_owners318 & inv316;
    assign proxy321 = and320;
    assign memport_tag323 = mem1[proxy20][21:2];
    assign tag_t325 = {memport_tag323, proxy321};
    assign sel328 = and314 ? tag_t325 : sel302;
    assign sel329 = and313 ? 5'b1 : sel304;
    assign eq331 = reg80 == 5'b1000;
    assign or332 = eq284 | eq216;
    assign or333 = or332 | eq173;
    assign inv334 = ~or333;
    assign and335 = inv334 & eq331;
    assign sel336 = and335 ? reg171 : sel288;
    assign sel338 = and335 ? proxy_owner83 : 2'b0;
    assign memport_tag340 = mem1[proxy20][21:2];
    assign sel342 = and335 ? memport_tag340 : 20'h0;
    assign sel344 = and335 ? mem3[proxy20] : lit394;
    assign sel345 = and335 ? 1'b1 : 1'b0;
    assign and346 = and335 & io_evict_ready;
    assign sel347 = and346 ? 5'b1 : sel329;
    assign eq349 = reg80 == 5'b10000;
    assign or350 = eq331 | eq284;
    assign or351 = or350 | eq216;
    assign or352 = or351 | eq173;
    assign inv353 = ~or352;
    assign and354 = inv353 & eq349;
    assign sel355 = and354 ? reg38 : sel336;
    assign memport_owners356 = mem1[proxy20][1:0];
    assign ne359 = memport_owners356 != 2'b0;
    assign and361 = and354 & ne359;
    assign sel362 = and361 ? 2'b0 : sel338;
    assign memport_tag364 = mem1[proxy20][21:2];
    assign sel365 = and361 ? memport_tag364 : sel342;
    assign sel366 = and361 ? mem3[proxy20] : sel344;
    assign sel367 = and361 ? 1'b1 : sel345;
    assign add369 = reg38 + 1'b1;
    assign and371 = and361 & io_evict_ready;
    assign sel372 = and371 ? add369 : sel212;
    assign eq374 = reg38 == 1'b1;
    assign and376 = and371 & eq374;
    assign sel377 = and376 ? 5'b1 : sel347;
    assign add379 = reg38 + 1'b1;
    assign inv381 = ~ne359;
    assign and382 = and354 & inv381;
    assign sel383 = and382 ? add379 : sel372;
    assign eq385 = reg38 == 1'b1;
    assign and387 = and382 & eq385;
    assign sel388 = and387 ? 5'b1 : sel377;

    assign io_enq_ready = io_enq_ready49;
    assign io_evict_valid = sel367;
    assign io_evict_data = io_evict_data55;

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
    wire[533:0] lit422 = 534'b0;
    wire[511:0] lit466 = 512'h0;
    wire[19:0] io_qpi_rd_req_addr5, io_qpi_wr_req_addr26, io_ctx_a_col_ptr53, io_ctx_a_col_ind54, io_ctx_a_row_ptr55, io_ctx_a_row_ind56, io_ctx_a_values57, io_ctx_x_values59, io_ctx_x_masks60, io_ctx_y_values62, io_ctx_y_masks63, io_ctx_stats64, proxy_addr207, proxy_addr260, proxy_tag290, proxy309, proxy311, sel328, sel334, sel341, sel349, sel358, sel368, add375, proxy376, proxy_addr415, proxy457, sel487, sel492, add495, sel498, sel520, sel525, add528, sel533, proxy563, sel564, sel605;
    wire[13:0] io_qpi_rd_req_mdata8, io_qpi_rd_rsp_mdata14, io_qpi_wr_req_mdata29, proxy316, proxy318, proxy385, proxy470, proxy503, sel504, proxy537, sel538;
    wire io_qpi_rd_req_valid11, io_qpi_wr_req_valid35, io_ctrl_rd_req_valid68, io_ctrl_rd_req_ready76, io_ctrl_wr_req_valid79, io_ctrl_wr_req_ready88, io_ctrl_rd_rsp_valid91, io_walkers_0_rd_req_valid102, io_walkers_0_rd_req_ready110, io_walkers_0_rd_rsp_valid113, io_walkers_1_rd_req_valid121, io_walkers_1_rd_req_ready129, io_walkers_1_rd_rsp_valid132, io_PEs_0_wr_req_valid140, io_PEs_0_wr_req_ready149, io_PEs_1_wr_req_valid152, io_PEs_1_wr_req_ready161, proxy164, bindin167, bindin169, bindin170, proxy177, bindout178, proxy180, bindin181, proxy188, bindout189, proxy191, bindin192, proxy199, bindout200, proxy202, bindout203, proxy210, bindin211, proxy216, bindin218, bindin219, bindin220, proxy228, bindout229, proxy231, bindin232, proxy240, bindout241, proxy243, bindin244, proxy252, bindout253, bindout256, proxy264, bindin265, bindin272, bindin273, bindin274, bindout283, bindout286, proxy294, bindin295, bindin298, inv299, proxy300, proxy302, proxy304, eq327, eq331, inv332, and333, eq337, or338, inv339, and340, eq344, or345, or346, inv347, and348, eq352, or353, or354, or355, inv356, and357, eq361, or362, or363, or364, or365, inv366, and367, eq403, eq406, proxy407, inv408, and410, proxy411, and431, or435, proxy451, eq476, eq486, eq489, inv490, and491, and497, proxy507, eq519, eq522, inv523, and524, inv530, and531, and532, eq541, inv542, inv545, and546, and547, sel548, eq561, and562, eq571, eq574, and577, and578, inv581, and582, inv585, and586, eq589, inv590, and591, sel592, and593, eq596, or599, inv600, and601, sel608, and609, eq612, or613, or614, inv615, and616, sel617, and619, eq622, or623, or624, or625, inv626, and627, and628, eq639, and641, proxy642, eq644, and646, proxy647, eq649, and651, proxy652;
    wire[511:0] io_qpi_rd_rsp_data17, io_qpi_wr_req_data32, io_ctx50, proxy_data261, proxy_data291, proxy_data416, proxy463, sel499, sel534, proxy567, sel568, sel607;
    wire[131:0] io_ctx_a51;
    wire[39:0] io_ctx_x58, io_ctx_y61;
    wire[22:0] io_ctrl_rd_req_data71, io_walkers_0_rd_req_data105, io_walkers_1_rd_req_data124, proxy172, bindin175, proxy183, bindin186, proxy194, bindin197, proxy205, bindout208;
    wire[533:0] io_ctrl_wr_req_data82, io_PEs_0_wr_req_data143, io_PEs_1_wr_req_data155, proxy222, bindin226, proxy234, bindin238, proxy246, bindin250, proxy258, bindout262, proxy276, bindin280, proxy288, bindout292, proxy413, ch_lsu_wr_req_t418;
    wire[514:0] io_ctrl_rd_rsp_data94, io_walkers_0_rd_rsp_data116, io_walkers_1_rd_rsp_data135;
    wire[31:0] io_ctrl_outstanding_writes99, sel441, sel442, proxy445, add550, sub552, sel554, sub558;
    wire[2:0] proxy_type206, proxy213, bindout214, bindout268, proxy322, proxy381, proxy426, proxy509, sel569, proxy_type636, proxy_owner637;
    wire[1:0] proxy_type259, proxy_owner289, proxy_type414, proxy481, sel506, proxy514, sel539, sel555, proxy565, sel566, proxy598, sel603;
    reg reg307, reg455;
    reg[19:0] reg314, reg461;
    reg[13:0] reg321, reg474;
    wire[5:0] ch_rd_mdata_t378, proxy635;
    wire[7:0] proxy383;
    reg[4:0] reg392;
    reg[1:0] reg399;
    reg[533:0] reg424;
    reg[2:0] reg430;
    reg[31:0] reg449;
    reg[511:0] reg468;
    wire[4:0] ch_wr_mdata_t478, ch_wr_mdata_t511, sel579, sel583, sel587, sel594, sel610, sel620, sel629;
    wire[8:0] proxy501, proxy535;

    assign io_qpi_rd_req_addr5 = proxy309;
    assign io_qpi_rd_req_mdata8 = proxy316;
    assign io_qpi_rd_req_valid11 = proxy302;
    assign io_qpi_rd_rsp_mdata14 = io_qpi_rd_rsp_mdata;
    assign io_qpi_rd_rsp_data17 = io_qpi_rd_rsp_data;
    assign io_qpi_wr_req_addr26 = proxy457;
    assign io_qpi_wr_req_mdata29 = proxy470;
    assign io_qpi_wr_req_data32 = proxy463;
    assign io_qpi_wr_req_valid35 = proxy451;
    assign io_ctx50 = io_ctx;
    assign io_ctx_a51 = io_ctx50[131:0];
    assign io_ctx_a_col_ptr53 = io_ctx_a51[51:32];
    assign io_ctx_a_col_ind54 = io_ctx_a51[71:52];
    assign io_ctx_a_row_ptr55 = io_ctx_a51[91:72];
    assign io_ctx_a_row_ind56 = io_ctx_a51[111:92];
    assign io_ctx_a_values57 = io_ctx_a51[131:112];
    assign io_ctx_x58 = io_ctx50[171:132];
    assign io_ctx_x_values59 = io_ctx_x58[19:0];
    assign io_ctx_x_masks60 = io_ctx_x58[39:20];
    assign io_ctx_y61 = io_ctx50[211:172];
    assign io_ctx_y_values62 = io_ctx_y61[19:0];
    assign io_ctx_y_masks63 = io_ctx_y61[39:20];
    assign io_ctx_stats64 = io_ctx50[231:212];
    assign io_ctrl_rd_req_valid68 = io_ctrl_rd_req_valid;
    assign io_ctrl_rd_req_data71 = io_ctrl_rd_req_data;
    assign io_ctrl_rd_req_ready76 = proxy199;
    assign io_ctrl_wr_req_valid79 = io_ctrl_wr_req_valid;
    assign io_ctrl_wr_req_data82 = io_ctrl_wr_req_data;
    assign io_ctrl_wr_req_ready88 = proxy252;
    assign io_ctrl_rd_rsp_valid91 = proxy642;
    assign io_ctrl_rd_rsp_data94 = {io_qpi_rd_rsp_data17, proxy_type636};
    assign io_ctrl_outstanding_writes99 = proxy445;
    assign io_walkers_0_rd_req_valid102 = io_walkers_0_rd_req_valid;
    assign io_walkers_0_rd_req_data105 = io_walkers_0_rd_req_data;
    assign io_walkers_0_rd_req_ready110 = proxy177;
    assign io_walkers_0_rd_rsp_valid113 = proxy647;
    assign io_walkers_0_rd_rsp_data116 = {io_qpi_rd_rsp_data17, proxy_type636};
    assign io_walkers_1_rd_req_valid121 = io_walkers_1_rd_req_valid;
    assign io_walkers_1_rd_req_data124 = io_walkers_1_rd_req_data;
    assign io_walkers_1_rd_req_ready129 = proxy188;
    assign io_walkers_1_rd_rsp_valid132 = proxy652;
    assign io_walkers_1_rd_rsp_data135 = {io_qpi_rd_rsp_data17, proxy_type636};
    assign io_PEs_0_wr_req_valid140 = io_PEs_0_wr_req_valid;
    assign io_PEs_0_wr_req_data143 = io_PEs_0_wr_req_data;
    assign io_PEs_0_wr_req_ready149 = proxy228;
    assign io_PEs_1_wr_req_valid152 = io_PEs_1_wr_req_valid;
    assign io_PEs_1_wr_req_data155 = io_PEs_1_wr_req_data;
    assign io_PEs_1_wr_req_ready161 = proxy240;
    assign proxy164 = io_walkers_0_rd_req_valid102;
    assign bindin167 = clk;
    assign bindin169 = reset;
    ch_xbar_switch __module22__(.clk(bindin167), .reset(bindin169), .io_in_0_valid(bindin170), .io_in_0_data(bindin175), .io_in_1_valid(bindin181), .io_in_1_data(bindin186), .io_in_2_valid(bindin192), .io_in_2_data(bindin197), .io_out_ready(bindin211), .io_in_0_ready(bindout178), .io_in_1_ready(bindout189), .io_in_2_ready(bindout200), .io_out_valid(bindout203), .io_out_data(bindout208), .io_out_grant(bindout214));
    assign bindin170 = proxy164;
    assign proxy172 = io_walkers_0_rd_req_data105;
    assign bindin175 = proxy172;
    assign proxy177 = bindout178;
    assign proxy180 = io_walkers_1_rd_req_valid121;
    assign bindin181 = proxy180;
    assign proxy183 = io_walkers_1_rd_req_data124;
    assign bindin186 = proxy183;
    assign proxy188 = bindout189;
    assign proxy191 = io_ctrl_rd_req_valid68;
    assign bindin192 = proxy191;
    assign proxy194 = io_ctrl_rd_req_data71;
    assign bindin197 = proxy194;
    assign proxy199 = bindout200;
    assign proxy202 = bindout203;
    assign proxy205 = bindout208;
    assign proxy_type206 = proxy205[2:0];
    assign proxy_addr207 = proxy205[22:3];
    assign proxy210 = proxy300;
    assign bindin211 = proxy210;
    assign proxy213 = bindout214;
    assign proxy216 = io_PEs_0_wr_req_valid140;
    assign bindin218 = clk;
    assign bindin219 = reset;
    ch_xbar_switch_0 __module25__(.clk(bindin218), .reset(bindin219), .io_in_0_valid(bindin220), .io_in_0_data(bindin226), .io_in_1_valid(bindin232), .io_in_1_data(bindin238), .io_in_2_valid(bindin244), .io_in_2_data(bindin250), .io_out_ready(bindin265), .io_in_0_ready(bindout229), .io_in_1_ready(bindout241), .io_in_2_ready(bindout253), .io_out_valid(bindout256), .io_out_data(bindout262), .io_out_grant(bindout268));
    assign bindin220 = proxy216;
    assign proxy222 = io_PEs_0_wr_req_data143;
    assign bindin226 = proxy222;
    assign proxy228 = bindout229;
    assign proxy231 = io_PEs_1_wr_req_valid152;
    assign bindin232 = proxy231;
    assign proxy234 = io_PEs_1_wr_req_data155;
    assign bindin238 = proxy234;
    assign proxy240 = bindout241;
    assign proxy243 = io_ctrl_wr_req_valid79;
    assign bindin244 = proxy243;
    assign proxy246 = io_ctrl_wr_req_data82;
    assign bindin250 = proxy246;
    assign proxy252 = bindout253;
    assign proxy258 = bindout262;
    assign proxy_type259 = proxy258[1:0];
    assign proxy_addr260 = proxy258[21:2];
    assign proxy_data261 = proxy258[533:22];
    assign proxy264 = proxy407;
    assign bindin265 = proxy264;
    assign bindin272 = clk;
    assign bindin273 = reset;
    spmv_write_cache __module28__(.clk(bindin272), .reset(bindin273), .io_enq_valid(bindin274), .io_enq_data(bindin280), .io_evict_ready(bindin295), .io_flush(bindin298), .io_enq_ready(bindout283), .io_evict_valid(bindout286), .io_evict_data(bindout292));
    assign bindin274 = sel608;
    assign proxy276 = {sel607, sel605, sel603};
    assign bindin280 = proxy276;
    assign proxy288 = bindout292;
    assign proxy_owner289 = proxy288[1:0];
    assign proxy_tag290 = proxy288[21:2];
    assign proxy_data291 = proxy288[533:22];
    assign proxy294 = proxy411;
    assign bindin295 = proxy294;
    assign bindin298 = sel617;
    assign inv299 = ~io_qpi_rd_req_almostfull;
    assign proxy300 = inv299;
    assign proxy302 = reg307;
    assign proxy304 = proxy202;
    always @ (posedge clk)
    reg307 <= reset ? 1'b0 : proxy304;
    assign proxy309 = reg314;
    assign proxy311 = proxy376;
    always @ (posedge clk)
    reg314 <= reset ? 20'h0 : proxy311;
    assign proxy316 = reg321;
    assign proxy318 = proxy385;
    always @ (posedge clk)
    reg321 <= reset ? 14'b0 : proxy318;
    assign proxy322 = proxy_type206;
    assign eq327 = proxy322 == 3'b0;
    assign sel328 = eq327 ? io_ctx_a_col_ptr53 : io_ctx_x_masks60;
    assign eq331 = proxy322 == 3'b1;
    assign inv332 = ~eq327;
    assign and333 = inv332 & eq331;
    assign sel334 = and333 ? io_ctx_a_col_ind54 : sel328;
    assign eq337 = proxy322 == 3'b10;
    assign or338 = eq331 | eq327;
    assign inv339 = ~or338;
    assign and340 = inv339 & eq337;
    assign sel341 = and340 ? io_ctx_a_row_ptr55 : sel334;
    assign eq344 = proxy322 == 3'b11;
    assign or345 = eq337 | eq331;
    assign or346 = or345 | eq327;
    assign inv347 = ~or346;
    assign and348 = inv347 & eq344;
    assign sel349 = and348 ? io_ctx_a_row_ind56 : sel341;
    assign eq352 = proxy322 == 3'b100;
    assign or353 = eq344 | eq337;
    assign or354 = or353 | eq331;
    assign or355 = or354 | eq327;
    assign inv356 = ~or355;
    assign and357 = inv356 & eq352;
    assign sel358 = and357 ? io_ctx_a_values57 : sel349;
    assign eq361 = proxy322 == 3'b101;
    assign or362 = eq352 | eq344;
    assign or363 = or362 | eq337;
    assign or364 = or363 | eq331;
    assign or365 = or364 | eq327;
    assign inv366 = ~or365;
    assign and367 = inv366 & eq361;
    assign sel368 = and367 ? io_ctx_x_values59 : sel358;
    assign add375 = sel368 + proxy_addr207;
    assign proxy376 = add375;
    assign ch_rd_mdata_t378 = {proxy381, proxy_type206};
    assign proxy381 = proxy213;
    assign proxy383 = 8'h0;
    assign proxy385 = {proxy383, ch_rd_mdata_t378};
    always @ (posedge clk)
    reg392 <= reset ? 5'b1 : sel629;
    always @ (posedge clk)
    reg399 <= reset ? 2'b1 : sel555;
    assign eq403 = reg399 == 2'b1;
    assign eq406 = reg392 == 5'b1;
    assign proxy407 = eq406;
    assign inv408 = ~sel592;
    assign and410 = eq403 & inv408;
    assign proxy411 = and410;
    assign proxy413 = reg424;
    assign proxy_type414 = proxy413[1:0];
    assign proxy_addr415 = proxy413[21:2];
    assign proxy_data416 = proxy413[533:22];
    assign ch_lsu_wr_req_t418 = {sel568, sel564, sel566};
    always @ (posedge clk)
    reg424 <= reset ? lit422 : ch_lsu_wr_req_t418;
    assign proxy426 = reg430;
    always @ (posedge clk)
    reg430 <= reset ? 3'b0 : sel569;
    assign and431 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
    assign or435 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
    assign sel441 = or435 ? 32'h1 : 32'h0;
    assign sel442 = and431 ? 32'h2 : sel441;
    assign proxy445 = reg449;
    always @ (posedge clk)
    reg449 <= reset ? 32'h0 : sel554;
    assign proxy451 = reg455;
    always @ (posedge clk)
    reg455 <= reset ? 1'b0 : sel548;
    assign proxy457 = reg461;
    always @ (posedge clk)
    reg461 <= reset ? 20'h0 : sel533;
    assign proxy463 = reg468;
    always @ (posedge clk)
    reg468 <= reset ? lit466 : sel534;
    assign proxy470 = reg474;
    always @ (posedge clk)
    reg474 <= reset ? 14'b0 : sel538;
    assign eq476 = reg399 == 2'b1;
    assign ch_wr_mdata_t478 = {proxy426, proxy_type414};
    assign proxy481 = proxy_type414;
    assign eq486 = proxy481 == 2'b0;
    assign sel487 = eq486 ? io_ctx_y_values62 : io_ctx_stats64;
    assign eq489 = proxy481 == 2'b1;
    assign inv490 = ~eq486;
    assign and491 = inv490 & eq489;
    assign sel492 = and491 ? io_ctx_y_masks63 : sel487;
    assign add495 = sel492 + proxy_addr415;
    assign and497 = eq476 & sel592;
    assign sel498 = and497 ? add495 : proxy457;
    assign sel499 = and497 ? proxy_data416 : proxy463;
    assign proxy501 = 9'b0;
    assign proxy503 = {proxy501, ch_wr_mdata_t478};
    assign sel504 = and497 ? proxy503 : proxy470;
    assign sel506 = and497 ? 2'b10 : reg399;
    assign proxy507 = 1'b0;
    assign proxy509 = {proxy507, proxy_owner289};
    assign ch_wr_mdata_t511 = {proxy509, proxy514};
    assign proxy514 = 2'b1;
    assign eq519 = 2'b1 == 2'b0;
    assign sel520 = eq519 ? io_ctx_y_values62 : io_ctx_stats64;
    assign eq522 = 2'b1 == 2'b1;
    assign inv523 = ~eq519;
    assign and524 = inv523 & eq522;
    assign sel525 = and524 ? io_ctx_y_masks63 : sel520;
    assign add528 = sel525 + proxy_tag290;
    assign inv530 = ~sel592;
    assign and531 = eq476 & inv530;
    assign and532 = and531 & bindout286;
    assign sel533 = and532 ? add528 : sel498;
    assign sel534 = and532 ? proxy_data291 : sel499;
    assign proxy535 = 9'b0;
    assign proxy537 = {proxy535, ch_wr_mdata_t511};
    assign sel538 = and532 ? proxy537 : sel504;
    assign sel539 = and532 ? 2'b10 : sel506;
    assign eq541 = reg399 == 2'b10;
    assign inv542 = ~io_qpi_wr_req_almostfull;
    assign inv545 = ~eq476;
    assign and546 = inv545 & eq541;
    assign and547 = and546 & inv542;
    assign sel548 = and547 ? 1'b1 : 1'b0;
    assign add550 = proxy445 + 32'h1;
    assign sub552 = add550 - sel442;
    assign sel554 = and547 ? sub552 : sub558;
    assign sel555 = and547 ? 2'b1 : sel539;
    assign sub558 = proxy445 - sel442;
    assign eq561 = reg392 == 5'b1;
    assign and562 = eq561 & bindout256;
    assign proxy563 = proxy413[21:2];
    assign sel564 = and562 ? proxy_addr260 : proxy563;
    assign proxy565 = proxy413[1:0];
    assign sel566 = and562 ? proxy_type259 : proxy565;
    assign proxy567 = proxy413[533:22];
    assign sel568 = and562 ? proxy_data261 : proxy567;
    assign sel569 = and562 ? bindout268 : proxy426;
    assign eq571 = proxy_type259 == 2'b1;
    assign eq574 = bindout268 == 3'b100;
    assign and577 = and562 & eq571;
    assign and578 = and577 & eq574;
    assign sel579 = and578 ? 5'b1000 : reg392;
    assign inv581 = ~eq574;
    assign and582 = and577 & inv581;
    assign sel583 = and582 ? 5'b100 : sel579;
    assign inv585 = ~eq571;
    assign and586 = and562 & inv585;
    assign sel587 = and586 ? 5'b10 : sel583;
    assign eq589 = reg392 == 5'b10;
    assign inv590 = ~eq561;
    assign and591 = inv590 & eq589;
    assign sel592 = and591 ? 1'b1 : 1'b0;
    assign and593 = and591 & eq403;
    assign sel594 = and593 ? 5'b1 : sel587;
    assign eq596 = reg392 == 5'b100;
    assign proxy598 = proxy426[1:0];
    assign or599 = eq589 | eq561;
    assign inv600 = ~or599;
    assign and601 = inv600 & eq596;
    assign sel603 = and601 ? proxy598 : 2'b0;
    assign sel605 = and601 ? proxy_addr415 : 20'h0;
    assign sel607 = and601 ? proxy_data416 : lit466;
    assign sel608 = and601 ? 1'b1 : 1'b0;
    assign and609 = and601 & bindout283;
    assign sel610 = and609 ? 5'b1 : sel594;
    assign eq612 = reg392 == 5'b1000;
    assign or613 = eq596 | eq589;
    assign or614 = or613 | eq561;
    assign inv615 = ~or614;
    assign and616 = inv615 & eq612;
    assign sel617 = and616 ? 1'b1 : 1'b0;
    assign and619 = and616 & bindout283;
    assign sel620 = and619 ? 5'b10000 : sel610;
    assign eq622 = reg392 == 5'b10000;
    assign or623 = eq612 | eq596;
    assign or624 = or623 | eq589;
    assign or625 = or624 | eq561;
    assign inv626 = ~or625;
    assign and627 = inv626 & eq622;
    assign and628 = and627 & bindout283;
    assign sel629 = and628 ? 5'b1 : sel620;
    assign proxy635 = io_qpi_rd_rsp_mdata14[5:0];
    assign proxy_type636 = proxy635[2:0];
    assign proxy_owner637 = proxy635[5:3];
    assign eq639 = proxy_owner637 == 3'b100;
    assign and641 = io_qpi_rd_rsp_valid & eq639;
    assign proxy642 = and641;
    assign eq644 = proxy_owner637 == 3'b1;
    assign and646 = io_qpi_rd_rsp_valid & eq644;
    assign proxy647 = and646;
    assign eq649 = proxy_owner637 == 3'b10;
    assign and651 = io_qpi_rd_rsp_valid & eq649;
    assign proxy652 = and651;

    assign io_qpi_rd_req_addr = io_qpi_rd_req_addr5;
    assign io_qpi_rd_req_mdata = io_qpi_rd_req_mdata8;
    assign io_qpi_rd_req_valid = io_qpi_rd_req_valid11;
    assign io_qpi_wr_req_addr = io_qpi_wr_req_addr26;
    assign io_qpi_wr_req_mdata = io_qpi_wr_req_mdata29;
    assign io_qpi_wr_req_data = io_qpi_wr_req_data32;
    assign io_qpi_wr_req_valid = io_qpi_wr_req_valid35;
    assign io_ctrl_rd_req_ready = io_ctrl_rd_req_ready76;
    assign io_ctrl_wr_req_ready = io_ctrl_wr_req_ready88;
    assign io_ctrl_rd_rsp_valid = io_ctrl_rd_rsp_valid91;
    assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data94;
    assign io_ctrl_outstanding_writes = io_ctrl_outstanding_writes99;
    assign io_walkers_0_rd_req_ready = io_walkers_0_rd_req_ready110;
    assign io_walkers_0_rd_rsp_valid = io_walkers_0_rd_rsp_valid113;
    assign io_walkers_0_rd_rsp_data = io_walkers_0_rd_rsp_data116;
    assign io_walkers_1_rd_req_ready = io_walkers_1_rd_req_ready129;
    assign io_walkers_1_rd_rsp_valid = io_walkers_1_rd_rsp_valid132;
    assign io_walkers_1_rd_rsp_data = io_walkers_1_rd_rsp_data135;
    assign io_PEs_0_wr_req_ready = io_PEs_0_wr_req_ready149;
    assign io_PEs_1_wr_req_ready = io_PEs_1_wr_req_ready161;

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
    wire io_enq_ready8, io_deq_valid11, and41, and43, ne61, proxy62, proxy63, proxy64, eq65, ne67, or69, proxy70;
    wire[511:0] io_deq_data14, proxy58, sel59;
    wire[2:0] io_size20, proxy23, proxy25, proxy32, proxy34, add47, sel49, proxy50, add52, sel54, proxy55, sub71, proxy72;
    reg[2:0] reg30, reg36;
    wire[1:0] proxy38, proxy40;
    reg[511:0] mem56[0:3];

    assign io_enq_ready8 = proxy70;
    assign io_deq_valid11 = proxy62;
    assign io_deq_data14 = mem56[proxy38];
    assign io_size20 = proxy72;
    assign proxy23 = reg30;
    assign proxy25 = proxy50;
    always @ (posedge clk)
    reg30 <= reset ? 3'b0 : proxy25;
    assign proxy32 = reg36;
    assign proxy34 = proxy55;
    always @ (posedge clk)
    reg36 <= reset ? 3'b0 : proxy34;
    assign proxy38 = proxy23[1:0];
    assign proxy40 = proxy32[1:0];
    assign and41 = io_deq_ready & io_deq_valid11;
    assign and43 = io_enq_valid & io_enq_ready8;
    assign add47 = proxy23 + 3'b1;
    assign sel49 = and41 ? add47 : proxy23;
    assign proxy50 = sel49;
    assign add52 = proxy32 + 3'b1;
    assign sel54 = and43 ? add52 : proxy32;
    assign proxy55 = sel54;
    always @(posedge clk)
    mem56[proxy40] = proxy58;
    assign proxy58 = sel59;
    assign sel59 = and43 ? io_enq_data : mem56[proxy40];
    assign ne61 = proxy32 != proxy23;
    assign proxy62 = ne61;
    assign proxy63 = proxy23[2];
    assign proxy64 = proxy32[2];
    assign eq65 = proxy64 == proxy63;
    assign ne67 = proxy40 != proxy38;
    assign or69 = ne67 | eq65;
    assign proxy70 = or69;
    assign sub71 = proxy32 - proxy23;
    assign proxy72 = sub71;

    assign io_enq_ready = io_enq_ready8;
    assign io_deq_valid = io_deq_valid11;
    assign io_deq_data = io_deq_data14;
    assign io_size = io_size20;

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
    wire[543:0] lit468 = 544'h0;
    wire[95:0] lit521 = 96'h0;
    wire[63:0] lit531 = 64'h0;
    wire[63:0] lit534 = 64'h1;
    wire[415:0] lit696 = 416'h0;
    wire[511:0] lit784 = 512'h0;
    wire[543:0] lit833 = 544'h20;
    wire io_qpi_rd_req_almostfull2, io_qpi_rd_req_valid11, io_qpi_rd_rsp_valid20, io_qpi_wr_req_almostfull23, io_qpi_wr_req_valid35, io_qpi_wr_rsp0_valid41, io_qpi_wr_rsp1_valid47, io_done71, bindin77, bindin79, bindin80, bindout89, proxy108, bindout109, proxy116, bindin117, proxy119, bindin120, proxy127, bindout128, proxy137, bindin138, bindin142, bindin143, bindin144, bindout153, proxy172, bindout173, proxy180, bindin181, proxy183, bindin184, proxy191, bindout192, proxy201, bindin202, proxy204, bindin206, bindin207, bindin208, proxy217, bindout218, proxy220, bindout221, proxy229, bindin230, bindout238, proxy240, bindin242, bindin243, bindin244, proxy253, bindout254, proxy256, bindout257, proxy265, bindin266, bindout274, proxy276, bindin278, bindin279, bindin280, proxy288, bindout289, proxy297, bindin298, proxy300, bindin301, proxy312, bindout313, proxy318, bindin319, proxy324, bindin325, bindin346, bindout354, bindin357, bindout366, bindout369, proxy379, bindin380, proxy387, bindout388, proxy390, bindout391, proxy398, bindin399, proxy406, bindout407, proxy409, bindout410, proxy417, bindin418, proxy426, bindout427, proxy429, bindin430, proxy438, bindout439, proxy441, bindin443, bindin444, bindin445, bindout454, proxy459, bindin460, proxy546, eq554, and556, proxy557, eq563, and565, and567, proxy568, and576, proxy577, and579, and581, proxy582, eq584, ne586, and588, and589, sel609, inv613, and614, sel615, eq617, inv618, and619, ne626, and628, sel629, and634, eq636, and639, inv644, and645, inv651, and652, eq655, eq656, and658, or661, inv662, and663, and664, eq667, or669, or670, inv671, and672, sel675, and677, eq680, or682, or683, or684, inv685, and686, eq745, eq747, sel752, and756, eq759, and762, eq765, eq767, or769, or770, or771, or772, inv773, and774, and775, sel777, eq792, and793, sel794, eq796, and799, inv812, and813, eq822, inv828, and829, and830, sel832, ne853, ne855, and857, and859, inv861, and862, inv864, and865, eq868, or874, inv875, and876, and877, sel879, ne898, ne900, and902, and904, inv906, and907, inv909, and910;
    wire[19:0] io_qpi_rd_req_addr5, io_qpi_wr_req_addr26, proxy282, bindout283, proxy303, bindout304, proxy525, proxy526, sel590, proxy607, sel608, sel623, add632, sel635, proxy691, proxy692, sel694, add844, sel846, add890, sel892;
    wire[13:0] io_qpi_rd_req_mdata8, io_qpi_rd_rsp_mdata14, io_qpi_wr_req_mdata29, io_qpi_wr_rsp0_mdata38, io_qpi_wr_rsp1_mdata44, proxy285, bindout286, proxy291, bindin292, proxy306, bindout307, proxy315, bindin316, proxy321, bindin322;
    wire[511:0] io_qpi_rd_rsp_data17, io_qpi_wr_req_data32, io_ctx50, proxy294, bindin295, proxy309, bindout310, proxy327, bindin343, proxy_data373, proxy447, bindin448, proxy456, bindout457, proxy699, proxy700, proxy721, proxy722, proxy743, proxy744, sel746, sel748, sel751, proxy800;
    wire[131:0] io_ctx_a51;
    wire[31:0] io_ctx_a_num_parts52, bindout377, proxy481, proxy_a_colptr_stalls513, proxy561, proxy571, add572, sub574, proxy575, add593, sll597, add601, srl605, proxy606, add642, proxy646, sel647, add649, sel653, proxy806, proxy807, sel808, proxy815, proxy816, sel817, proxy837, sel838, proxy841, sel842, proxy883, sel884, proxy887, sel888;
    wire[63:0] bindin86, proxy91, bindin92, bindin150, proxy155, bindin156, proxy232, bindout235, proxy268, bindout271, proxy528, proxy530, add536, proxy537, proxy823, proxy824, ch_dcsc_part_t825, sel831, proxy869, proxy870, ch_dcsc_part_t871, sel878;
    wire[351:0] proxy94, bindout106, proxy158, bindout170;
    wire[22:0] proxy111, bindout114, proxy175, bindout178, proxy348, bindin351, proxy382, bindin385, proxy401, bindin404;
    wire[514:0] proxy122, bindin125, proxy186, bindin189, proxy371, bindout374, proxy393, bindout396, proxy412, bindout415;
    wire[84:0] proxy130, bindout135, proxy194, bindout199, proxy210, bindin215, proxy246, bindin251;
    wire[533:0] proxy223, bindout227, proxy259, bindout263, proxy359, bindin363, proxy420, bindin424, proxy432, bindin436;
    wire[2:0] proxy_type349, proxy_type372, sel621;
    wire[543:0] proxy465, proxy467, srl835, proxy836, srl881, proxy882;
    reg[543:0] reg470;
    reg[4:0] reg477;
    reg[31:0] reg484;
    reg[19:0] reg491, reg497, reg503;
    wire[1:0] proxy505, sel674, sel687, proxy695, add754, sel757, sel820, sel860, sel863, sel866, sel905, sel908, sel911;
    reg[1:0] reg510, reg790;
    wire[95:0] proxy512, ch_ctrl_stats_t517, proxy719, proxy741;
    reg[95:0] reg523;
    reg[63:0] reg533;
    reg[5:0] reg544;
    reg reg551;
    wire[30:0] proxy559, proxy569;
    wire[5:0] sel611, sel640, sel665, sel678, sel763, sel776;
    wire[17:0] proxy689;
    wire[415:0] proxy697, ch_stats_t703, ch_stats_t725;
    wire[4:0] sel803, sel819, sub849, sel851, sub894, sel896;
    wire[479:0] proxy805, proxy809, proxy810, sel811, sel814, proxy839, sel840, proxy885, sel886;

    assign io_qpi_rd_req_almostfull2 = io_qpi_rd_req_almostfull;
    assign io_qpi_rd_req_addr5 = proxy282;
    assign io_qpi_rd_req_mdata8 = proxy285;
    assign io_qpi_rd_req_valid11 = proxy288;
    assign io_qpi_rd_rsp_mdata14 = io_qpi_rd_rsp_mdata;
    assign io_qpi_rd_rsp_data17 = io_qpi_rd_rsp_data;
    assign io_qpi_rd_rsp_valid20 = io_qpi_rd_rsp_valid;
    assign io_qpi_wr_req_almostfull23 = io_qpi_wr_req_almostfull;
    assign io_qpi_wr_req_addr26 = proxy303;
    assign io_qpi_wr_req_mdata29 = proxy306;
    assign io_qpi_wr_req_data32 = proxy309;
    assign io_qpi_wr_req_valid35 = proxy312;
    assign io_qpi_wr_rsp0_mdata38 = io_qpi_wr_rsp0_mdata;
    assign io_qpi_wr_rsp0_valid41 = io_qpi_wr_rsp0_valid;
    assign io_qpi_wr_rsp1_mdata44 = io_qpi_wr_rsp1_mdata;
    assign io_qpi_wr_rsp1_valid47 = io_qpi_wr_rsp1_valid;
    assign io_ctx50 = io_ctx;
    assign io_ctx_a51 = io_ctx50[131:0];
    assign io_ctx_a_num_parts52 = io_ctx_a51[31:0];
    assign io_done71 = proxy546;
    assign bindin77 = clk;
    assign bindin79 = reset;
    spmv_dcsc_walk __module1__(.clk(bindin77), .reset(bindin79), .io_ctrl_start_valid(bindin80), .io_ctrl_start_data(bindin86), .io_ctrl_timer(bindin92), .io_lsu_rd_req_ready(bindin117), .io_lsu_rd_rsp_valid(bindin120), .io_lsu_rd_rsp_data(bindin125), .io_pe_ready(bindin138), .io_ctrl_start_ready(bindout89), .io_ctrl_stats(bindout106), .io_lsu_rd_req_valid(bindout109), .io_lsu_rd_req_data(bindout114), .io_pe_valid(bindout128), .io_pe_data(bindout135));
    assign bindin80 = sel832;
    assign bindin86 = sel831;
    assign proxy91 = proxy528;
    assign bindin92 = proxy91;
    assign proxy94 = bindout106;
    assign proxy108 = bindout109;
    assign proxy111 = bindout114;
    assign proxy116 = proxy387;
    assign bindin117 = proxy116;
    assign proxy119 = proxy390;
    assign bindin120 = proxy119;
    assign proxy122 = proxy393;
    assign bindin125 = proxy122;
    assign proxy127 = bindout128;
    assign proxy130 = bindout135;
    assign proxy137 = proxy217;
    assign bindin138 = proxy137;
    assign bindin142 = clk;
    assign bindin143 = reset;
    spmv_dcsc_walk __module8__(.clk(bindin142), .reset(bindin143), .io_ctrl_start_valid(bindin144), .io_ctrl_start_data(bindin150), .io_ctrl_timer(bindin156), .io_lsu_rd_req_ready(bindin181), .io_lsu_rd_rsp_valid(bindin184), .io_lsu_rd_rsp_data(bindin189), .io_pe_ready(bindin202), .io_ctrl_start_ready(bindout153), .io_ctrl_stats(bindout170), .io_lsu_rd_req_valid(bindout173), .io_lsu_rd_req_data(bindout178), .io_pe_valid(bindout192), .io_pe_data(bindout199));
    assign bindin144 = sel879;
    assign bindin150 = sel878;
    assign proxy155 = proxy528;
    assign bindin156 = proxy155;
    assign proxy158 = bindout170;
    assign proxy172 = bindout173;
    assign proxy175 = bindout178;
    assign proxy180 = proxy406;
    assign bindin181 = proxy180;
    assign proxy183 = proxy409;
    assign bindin184 = proxy183;
    assign proxy186 = proxy412;
    assign bindin189 = proxy186;
    assign proxy191 = bindout192;
    assign proxy194 = bindout199;
    assign proxy201 = proxy253;
    assign bindin202 = proxy201;
    assign proxy204 = proxy127;
    assign bindin206 = clk;
    assign bindin207 = reset;
    spmv_pe __module15__(.clk(bindin206), .reset(bindin207), .io_req_valid(bindin208), .io_req_data(bindin215), .io_lsu_wr_req_ready(bindin230), .io_req_ready(bindout218), .io_lsu_wr_req_valid(bindout221), .io_lsu_wr_req_data(bindout227), .io_stats(bindout235), .io_is_idle(bindout238));
    assign bindin208 = proxy204;
    assign proxy210 = proxy130;
    assign bindin215 = proxy210;
    assign proxy217 = bindout218;
    assign proxy220 = bindout221;
    assign proxy223 = bindout227;
    assign proxy229 = proxy426;
    assign bindin230 = proxy229;
    assign proxy232 = bindout235;
    assign proxy240 = proxy191;
    assign bindin242 = clk;
    assign bindin243 = reset;
    spmv_pe __module18__(.clk(bindin242), .reset(bindin243), .io_req_valid(bindin244), .io_req_data(bindin251), .io_lsu_wr_req_ready(bindin266), .io_req_ready(bindout254), .io_lsu_wr_req_valid(bindout257), .io_lsu_wr_req_data(bindout263), .io_stats(bindout271), .io_is_idle(bindout274));
    assign bindin244 = proxy240;
    assign proxy246 = proxy194;
    assign bindin251 = proxy246;
    assign proxy253 = bindout254;
    assign proxy256 = bindout257;
    assign proxy259 = bindout263;
    assign proxy265 = proxy438;
    assign bindin266 = proxy265;
    assign proxy268 = bindout271;
    assign proxy276 = io_qpi_rd_req_almostfull2;
    assign bindin278 = clk;
    assign bindin279 = reset;
    spmv_lsu __module21__(.clk(bindin278), .reset(bindin279), .io_qpi_rd_req_almostfull(bindin280), .io_qpi_rd_rsp_mdata(bindin292), .io_qpi_rd_rsp_data(bindin295), .io_qpi_rd_rsp_valid(bindin298), .io_qpi_wr_req_almostfull(bindin301), .io_qpi_wr_rsp0_mdata(bindin316), .io_qpi_wr_rsp0_valid(bindin319), .io_qpi_wr_rsp1_mdata(bindin322), .io_qpi_wr_rsp1_valid(bindin325), .io_ctx(bindin343), .io_ctrl_rd_req_valid(bindin346), .io_ctrl_rd_req_data(bindin351), .io_ctrl_wr_req_valid(bindin357), .io_ctrl_wr_req_data(bindin363), .io_walkers_0_rd_req_valid(bindin380), .io_walkers_0_rd_req_data(bindin385), .io_walkers_1_rd_req_valid(bindin399), .io_walkers_1_rd_req_data(bindin404), .io_PEs_0_wr_req_valid(bindin418), .io_PEs_0_wr_req_data(bindin424), .io_PEs_1_wr_req_valid(bindin430), .io_PEs_1_wr_req_data(bindin436), .io_qpi_rd_req_addr(bindout283), .io_qpi_rd_req_mdata(bindout286), .io_qpi_rd_req_valid(bindout289), .io_qpi_wr_req_addr(bindout304), .io_qpi_wr_req_mdata(bindout307), .io_qpi_wr_req_data(bindout310), .io_qpi_wr_req_valid(bindout313), .io_ctrl_rd_req_ready(bindout354), .io_ctrl_wr_req_ready(bindout366), .io_ctrl_rd_rsp_valid(bindout369), .io_ctrl_rd_rsp_data(bindout374), .io_ctrl_outstanding_writes(bindout377), .io_walkers_0_rd_req_ready(bindout388), .io_walkers_0_rd_rsp_valid(bindout391), .io_walkers_0_rd_rsp_data(bindout396), .io_walkers_1_rd_req_ready(bindout407), .io_walkers_1_rd_rsp_valid(bindout410), .io_walkers_1_rd_rsp_data(bindout415), .io_PEs_0_wr_req_ready(bindout427), .io_PEs_1_wr_req_ready(bindout439));
    assign bindin280 = proxy276;
    assign proxy282 = bindout283;
    assign proxy285 = bindout286;
    assign proxy288 = bindout289;
    assign proxy291 = io_qpi_rd_rsp_mdata14;
    assign bindin292 = proxy291;
    assign proxy294 = io_qpi_rd_rsp_data17;
    assign bindin295 = proxy294;
    assign proxy297 = io_qpi_rd_rsp_valid20;
    assign bindin298 = proxy297;
    assign proxy300 = io_qpi_wr_req_almostfull23;
    assign bindin301 = proxy300;
    assign proxy303 = bindout304;
    assign proxy306 = bindout307;
    assign proxy309 = bindout310;
    assign proxy312 = bindout313;
    assign proxy315 = io_qpi_wr_rsp0_mdata38;
    assign bindin316 = proxy315;
    assign proxy318 = io_qpi_wr_rsp0_valid41;
    assign bindin319 = proxy318;
    assign proxy321 = io_qpi_wr_rsp1_mdata44;
    assign bindin322 = proxy321;
    assign proxy324 = io_qpi_wr_rsp1_valid47;
    assign bindin325 = proxy324;
    assign proxy327 = io_ctx50;
    assign bindin343 = proxy327;
    assign bindin346 = sel629;
    assign proxy348 = {sel623, sel621};
    assign proxy_type349 = proxy348[2:0];
    assign bindin351 = proxy348;
    assign bindin357 = sel752;
    assign proxy359 = {sel751, sel694, sel687};
    assign bindin363 = proxy359;
    assign proxy371 = bindout374;
    assign proxy_type372 = proxy371[2:0];
    assign proxy_data373 = proxy371[514:3];
    assign proxy379 = proxy108;
    assign bindin380 = proxy379;
    assign proxy382 = proxy111;
    assign bindin385 = proxy382;
    assign proxy387 = bindout388;
    assign proxy390 = bindout391;
    assign proxy393 = bindout396;
    assign proxy398 = proxy172;
    assign bindin399 = proxy398;
    assign proxy401 = proxy175;
    assign bindin404 = proxy401;
    assign proxy406 = bindout407;
    assign proxy409 = bindout410;
    assign proxy412 = bindout415;
    assign proxy417 = proxy220;
    assign bindin418 = proxy417;
    assign proxy420 = proxy223;
    assign bindin424 = proxy420;
    assign proxy426 = bindout427;
    assign proxy429 = proxy256;
    assign bindin430 = proxy429;
    assign proxy432 = proxy259;
    assign bindin436 = proxy432;
    assign proxy438 = bindout439;
    assign proxy441 = proxy557;
    assign bindin443 = clk;
    assign bindin444 = reset;
    ch_queue_1 __module29__(.clk(bindin443), .reset(bindin444), .io_enq_valid(bindin445), .io_enq_data(bindin448), .io_deq_ready(bindin460), .io_deq_valid(bindout454), .io_deq_data(bindout457));
    assign bindin445 = proxy441;
    assign proxy447 = proxy_data373;
    assign bindin448 = proxy447;
    assign proxy456 = bindout457;
    assign proxy459 = sel794;
    assign bindin460 = proxy459;
    assign proxy465 = reg470;
    assign proxy467 = {sel888, sel886, sel884};
    always @ (posedge clk)
    reg470 <= reset ? lit468 : proxy467;
    always @ (posedge clk)
    reg477 <= reset ? 5'b0 : sel896;
    assign proxy481 = proxy575;
    always @ (posedge clk)
    reg484 <= reset ? 32'h0 : proxy481;
    always @ (posedge clk)
    reg491 <= reset ? 20'h0 : sel635;
    always @ (posedge clk)
    reg497 <= reset ? 20'h0 : sel608;
    always @ (posedge clk)
    reg503 <= reset ? 20'h0 : sel892;
    assign proxy505 = reg510;
    always @ (posedge clk)
    reg510 <= reset ? 2'b0 : sel757;
    assign proxy512 = reg523;
    assign proxy_a_colptr_stalls513 = proxy512[31:0];
    assign ch_ctrl_stats_t517 = {proxy512[95:32], sel653};
    always @ (posedge clk)
    reg523 <= reset ? lit521 : ch_ctrl_stats_t517;
    assign proxy525 = proxy526;
    assign proxy526 = io_ctx_a_num_parts52[19:0];
    assign proxy528 = reg533;
    assign proxy530 = proxy537;
    always @ (posedge clk)
    reg533 <= reset ? lit531 : proxy530;
    assign add536 = proxy528 + lit534;
    assign proxy537 = add536;
    always @ (posedge clk)
    reg544 <= reset ? 6'b1 : sel776;
    assign proxy546 = reg551;
    always @ (posedge clk)
    reg551 <= reset ? 1'b0 : sel777;
    assign eq554 = proxy_type372 == 3'b0;
    assign and556 = bindout369 & eq554;
    assign proxy557 = and556;
    assign proxy559 = 31'b0;
    assign proxy561 = {proxy559, proxy459};
    assign eq563 = proxy_type349 == 3'b0;
    assign and565 = sel629 & bindout354;
    assign and567 = and565 & eq563;
    assign proxy568 = and567;
    assign proxy569 = 31'b0;
    assign proxy571 = {proxy569, proxy568};
    assign add572 = reg484 + proxy571;
    assign sub574 = add572 - proxy561;
    assign proxy575 = sub574;
    assign and576 = bindout89 & bindout238;
    assign proxy577 = proxy582;
    assign and579 = and576 & bindout153;
    assign and581 = and579 & bindout274;
    assign proxy582 = and581;
    assign eq584 = reg544 == 6'b1;
    assign ne586 = io_ctx_a_num_parts52 != 32'h0;
    assign and588 = eq584 & io_start;
    assign and589 = and588 & ne586;
    assign sel590 = and589 ? 20'h0 : reg491;
    assign add593 = io_ctx_a_num_parts52 + 32'h1;
    assign sll597 = add593 << 32'h2;
    assign add601 = sll597 + 32'h3f;
    assign srl605 = add601 >> 32'h6;
    assign proxy606 = srl605;
    assign proxy607 = proxy606[19:0];
    assign sel608 = and589 ? proxy607 : reg497;
    assign sel609 = and589 ? 1'b0 : proxy546;
    assign sel611 = and589 ? 6'b10 : reg544;
    assign inv613 = ~ne586;
    assign and614 = and588 & inv613;
    assign sel615 = and614 ? 1'b1 : sel609;
    assign eq617 = reg544 == 6'b10;
    assign inv618 = ~eq584;
    assign and619 = inv618 & eq617;
    assign sel621 = and619 ? 3'b0 : 3'b0;
    assign sel623 = and619 ? reg491 : 20'h0;
    assign ne626 = reg484 != 32'h4;
    assign and628 = and619 & ne626;
    assign sel629 = and628 ? 1'b1 : 1'b0;
    assign add632 = reg491 + 20'h1;
    assign and634 = and628 & bindout354;
    assign sel635 = and634 ? add632 : sel590;
    assign eq636 = sel635 == reg497;
    assign and639 = and634 & eq636;
    assign sel640 = and639 ? 6'b100 : sel611;
    assign add642 = proxy_a_colptr_stalls513 + 32'h1;
    assign inv644 = ~bindout354;
    assign and645 = and628 & inv644;
    assign proxy646 = proxy512[31:0];
    assign sel647 = and645 ? add642 : proxy646;
    assign add649 = proxy_a_colptr_stalls513 + 32'h1;
    assign inv651 = ~ne626;
    assign and652 = and619 & inv651;
    assign sel653 = and652 ? add649 : sel647;
    assign eq655 = reg544 == 6'b100;
    assign eq656 = reg503 == proxy525;
    assign and658 = eq656 & proxy577;
    assign or661 = eq617 | eq584;
    assign inv662 = ~or661;
    assign and663 = inv662 & eq655;
    assign and664 = and663 & and658;
    assign sel665 = and664 ? 6'b1000 : sel640;
    assign eq667 = reg544 == 6'b1000;
    assign or669 = eq655 | eq617;
    assign or670 = or669 | eq584;
    assign inv671 = ~or670;
    assign and672 = inv671 & eq667;
    assign sel674 = and672 ? 2'b1 : 2'b0;
    assign sel675 = and672 ? 1'b1 : 1'b0;
    assign and677 = and672 & bindout366;
    assign sel678 = and677 ? 6'b10000 : sel665;
    assign eq680 = reg544 == 6'b10000;
    assign or682 = eq667 | eq655;
    assign or683 = or682 | eq617;
    assign or684 = or683 | eq584;
    assign inv685 = ~or684;
    assign and686 = inv685 & eq680;
    assign sel687 = and686 ? 2'b10 : sel674;
    assign proxy689 = 18'b0;
    assign proxy691 = {proxy689, proxy505};
    assign proxy692 = proxy691;
    assign sel694 = and686 ? proxy692 : 20'h0;
    assign proxy695 = proxy505;
    assign proxy697 = lit696;
    assign proxy699 = {proxy697, proxy512};
    assign proxy700 = proxy699;
    assign ch_stats_t703 = {proxy232, proxy94};
    assign proxy719 = lit521;
    assign proxy721 = {proxy719, ch_stats_t703};
    assign proxy722 = proxy721;
    assign ch_stats_t725 = {proxy268, proxy158};
    assign proxy741 = lit521;
    assign proxy743 = {proxy741, ch_stats_t725};
    assign proxy744 = proxy743;
    assign eq745 = proxy695 == 2'b1;
    assign sel746 = eq745 ? proxy722 : proxy744;
    assign eq747 = proxy695 == 2'b0;
    assign sel748 = eq747 ? proxy700 : sel746;
    assign sel751 = and686 ? sel748 : lit784;
    assign sel752 = and686 ? 1'b1 : sel675;
    assign add754 = proxy505 + 2'b1;
    assign and756 = and686 & bindout366;
    assign sel757 = and756 ? add754 : proxy505;
    assign eq759 = proxy505 == 2'b10;
    assign and762 = and756 & eq759;
    assign sel763 = and762 ? 6'b100000 : sel678;
    assign eq765 = reg544 == 6'b100000;
    assign eq767 = bindout377 == 32'h0;
    assign or769 = eq680 | eq667;
    assign or770 = or769 | eq655;
    assign or771 = or770 | eq617;
    assign or772 = or771 | eq584;
    assign inv773 = ~or772;
    assign and774 = inv773 & eq765;
    assign and775 = and774 & eq767;
    assign sel776 = and775 ? 6'b1 : sel763;
    assign sel777 = and775 ? 1'b1 : sel615;
    always @ (posedge clk)
    reg790 <= reset ? 2'b0 : sel911;
    assign eq792 = reg790 == 2'b0;
    assign and793 = eq792 & bindout454;
    assign sel794 = and793 ? 1'b1 : 1'b0;
    assign eq796 = reg477 == 5'b0;
    assign and799 = and793 & eq796;
    assign proxy800 = proxy465[511:0];
    assign sel803 = and799 ? 5'b10000 : reg477;
    assign proxy805 = proxy456[479:0];
    assign proxy806 = proxy456[31:0];
    assign proxy807 = proxy800[31:0];
    assign sel808 = and799 ? proxy806 : proxy807;
    assign proxy809 = proxy456[511:32];
    assign proxy810 = proxy800[511:32];
    assign sel811 = and799 ? proxy809 : proxy810;
    assign inv812 = ~eq796;
    assign and813 = and793 & inv812;
    assign sel814 = and813 ? proxy805 : sel811;
    assign proxy815 = proxy456[511:480];
    assign proxy816 = proxy465[543:512];
    assign sel817 = and813 ? proxy815 : proxy816;
    assign sel819 = and813 ? 5'b10001 : sel803;
    assign sel820 = and793 ? 2'b1 : reg790;
    assign eq822 = reg790 == 2'b1;
    assign proxy823 = proxy465[63:0];
    assign proxy824 = proxy823;
    assign ch_dcsc_part_t825 = proxy824;
    assign inv828 = ~eq792;
    assign and829 = inv828 & eq822;
    assign and830 = and829 & bindout89;
    assign sel831 = and830 ? ch_dcsc_part_t825 : lit531;
    assign sel832 = and830 ? 1'b1 : 1'b0;
    assign srl835 = proxy465 >> lit833;
    assign proxy836 = srl835;
    assign proxy837 = proxy836[31:0];
    assign sel838 = and830 ? proxy837 : sel808;
    assign proxy839 = proxy836[511:32];
    assign sel840 = and830 ? proxy839 : sel814;
    assign proxy841 = proxy836[543:512];
    assign sel842 = and830 ? proxy841 : sel817;
    assign add844 = reg503 + 20'h1;
    assign sel846 = and830 ? add844 : reg503;
    assign sub849 = reg477 - 5'b1;
    assign sel851 = and830 ? sub849 : sel819;
    assign ne853 = sel896 != 5'b1;
    assign ne855 = sel892 != proxy525;
    assign and857 = ne855 & ne853;
    assign and859 = and830 & and857;
    assign sel860 = and859 ? 2'b10 : sel820;
    assign inv861 = ~and857;
    assign and862 = and830 & inv861;
    assign sel863 = and862 ? 2'b0 : sel860;
    assign inv864 = ~bindout89;
    assign and865 = and829 & inv864;
    assign sel866 = and865 ? 2'b10 : sel863;
    assign eq868 = reg790 == 2'b10;
    assign proxy869 = proxy465[63:0];
    assign proxy870 = proxy869;
    assign ch_dcsc_part_t871 = proxy870;
    assign or874 = eq822 | eq792;
    assign inv875 = ~or874;
    assign and876 = inv875 & eq868;
    assign and877 = and876 & bindout153;
    assign sel878 = and877 ? ch_dcsc_part_t871 : lit531;
    assign sel879 = and877 ? 1'b1 : 1'b0;
    assign srl881 = proxy465 >> lit833;
    assign proxy882 = srl881;
    assign proxy883 = proxy882[31:0];
    assign sel884 = and877 ? proxy883 : sel838;
    assign proxy885 = proxy882[511:32];
    assign sel886 = and877 ? proxy885 : sel840;
    assign proxy887 = proxy882[543:512];
    assign sel888 = and877 ? proxy887 : sel842;
    assign add890 = reg503 + 20'h1;
    assign sel892 = and877 ? add890 : sel846;
    assign sub894 = reg477 - 5'b1;
    assign sel896 = and877 ? sub894 : sel851;
    assign ne898 = sel896 != 5'b1;
    assign ne900 = sel892 != proxy525;
    assign and902 = ne900 & ne898;
    assign and904 = and877 & and902;
    assign sel905 = and904 ? 2'b1 : sel866;
    assign inv906 = ~and902;
    assign and907 = and877 & inv906;
    assign sel908 = and907 ? 2'b0 : sel905;
    assign inv909 = ~bindout153;
    assign and910 = and876 & inv909;
    assign sel911 = and910 ? 2'b1 : sel908;

    assign io_qpi_rd_req_addr = io_qpi_rd_req_addr5;
    assign io_qpi_rd_req_mdata = io_qpi_rd_req_mdata8;
    assign io_qpi_rd_req_valid = io_qpi_rd_req_valid11;
    assign io_qpi_wr_req_addr = io_qpi_wr_req_addr26;
    assign io_qpi_wr_req_mdata = io_qpi_wr_req_mdata29;
    assign io_qpi_wr_req_data = io_qpi_wr_req_data32;
    assign io_qpi_wr_req_valid = io_qpi_wr_req_valid35;
    assign io_done = io_done71;

endmodule
