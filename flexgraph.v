

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
  reg[1:0] reg22, reg30;
  wire proxy34, and38, and41, ne61, eq65, ne68, or70;
  wire[1:0] add46, sel48, add52, sel54, sub73;
  reg[511:0] mem56[0:1];

  always @ (posedge clk) begin
    reg22 <= reset ? 2'h0 : sel48;
  end
  always @ (posedge clk) begin
    reg30 <= reset ? 2'h0 : sel54;
  end
  assign proxy34 = reg22[0];
  assign and38 = io_deq_ready & ne61;
  assign and41 = io_enq_valid & or70;
  assign add46 = reg22 + 2'h1;
  assign sel48 = and38 ? add46 : reg22;
  assign add52 = reg30 + 2'h1;
  assign sel54 = and41 ? add52 : reg30;
  always @(posedge clk) begin
    if (and41) begin
      mem56[reg30[0]] = io_enq_data;
    end
  end
  assign ne61 = reg30 != reg22;
  assign eq65 = reg30[1] == reg22[1];
  assign ne68 = reg30[0] != proxy34;
  assign or70 = ne68 | eq65;
  assign sub73 = reg30 - reg22;

  assign io_enq_ready = or70;
  assign io_deq_data = mem56[proxy34];
  assign io_deq_valid = ne61;
  assign io_size = sub73;

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
  reg[5:0] reg22, reg30;
  wire[4:0] proxy34;
  wire and38, and41, ne61, eq65, ne68, or70;
  wire[5:0] add46, sel48, add52, sel54, sub73;
  reg[511:0] mem56[0:31];

  always @ (posedge clk) begin
    reg22 <= reset ? 6'h0 : sel48;
  end
  always @ (posedge clk) begin
    reg30 <= reset ? 6'h0 : sel54;
  end
  assign proxy34 = reg22[4:0];
  assign and38 = io_deq_ready & ne61;
  assign and41 = io_enq_valid & or70;
  assign add46 = reg22 + 6'h1;
  assign sel48 = and38 ? add46 : reg22;
  assign add52 = reg30 + 6'h1;
  assign sel54 = and41 ? add52 : reg30;
  always @(posedge clk) begin
    if (and41) begin
      mem56[reg30[4:0]] = io_enq_data;
    end
  end
  assign ne61 = reg30 != reg22;
  assign eq65 = reg30[5] == reg22[5];
  assign ne68 = reg30[4:0] != proxy34;
  assign or70 = ne68 | eq65;
  assign sub73 = reg30 - reg22;

  assign io_enq_ready = or70;
  assign io_deq_data = mem56[proxy34];
  assign io_deq_valid = ne61;
  assign io_size = sub73;

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
  wire[351:0] lit312 = 352'h0;
  wire[31:0] io_ctrl_start_data_part_start4, io_ctrl_start_data_part_end5, add681, add704, sll842, and845, add879, and912, add938, add986, add1010, add1099, sel1165, sel1171, sel1180, add1183, add1187, sel1194, sel1203, sel1205, sel1208, sel1209, sel1293, sel1297, sel1301, sel1305, sel1309, sel1310, sel1311, sel1313, sel1314, sel1317, sel1320, sel1321, sel1322, sel1324, sel1325, sel1326, sel1329, sel1330, sel1331, sel1333, sel1334, sel1335, sel1338;
  wire[22:0] io_lsu_rd_req_data28, sel1255, sel1256, sel1258, sel1260, sel1261, sel1262, sel1264, sel1265, sel1266, sel1267, sel1268, sel1270, sel1271, sel1272, sel1274, sel1276, sel1277, sel1279, sel1280, sel1281, sel1282, sel1283, sel1284, sel1286;
  wire[2:0] io_lsu_rd_req_data_type29;
  reg[19:0] reg56, reg62, reg66, reg70, reg74, reg78, reg84, reg90, reg94, reg98, reg102, sel1223, sel1230, sel1248, sel1342, sel1356, sel1361;
  reg[5:0] reg106;
  reg[31:0] reg110, reg305, reg1174, sel1318, sel1327, sel1336, sel1340;
  wire bindin116, bindin117, bindin121, bindout130, bindin133, bindin140, bindin141, bindin145, bindout154, bindin157, bindin164, bindin165, bindin169, bindin181, bindin188, bindin189, bindin193, bindin205, bindin212, bindin213, bindin217, bindout226, bindin229, bindin236, bindin237, bindin241, bindout250, bindin253, eq354, and357, eq362, and365, eq370, and373, eq378, and381, eq386, and389, eq394, and397, eq407, eq411, and414, and416, eq421, and423, eq427, and430, eq444, and449, eq453, and455, eq459, and462, eq475, and480, eq484, and486, eq490, and493, eq506, and511, eq515, and517, and524, eq537, and542, eq546, and548, eq552, and555, eq568, and573, eq577, and579, eq583, and586, ne672, ne697, and711, ne746, eq819, ne847, eq863, ne872, ne914, ne932, ne979, ne995, ne1003, eq1017, ne1081, eq1088, ne1107, lt1163, eq1169, gt1178, sel1195, sel1196, sel1197, eq1198, and1199, eq1210, and1211, sel1212, and1213, and1215, and1222, sel1224, eq1225, and1226, sel1231, sel1232, sel1234, sel1235, sel1237, sel1238, sel1239, sel1240, eq1244, and1245, and1257, and1259, and1269, and1273, and1275, eq1289, and1290, eq1294, and1295, sel1343;
  wire[511:0] bindin118, bindout127, bindin142, bindout151, bindin166, bindout175, bindin190, bindout199, bindin214, bindout223, bindin238, bindout247, srl723, srl736, srl763, srl829, srl898, srl1028, srl1040, srl1058, srl1070, srl1129, srl1141, sel1216, sel1288, sel1351, sel1357;
  wire[5:0] bindout208, sel1220;
  reg[7:0] reg260, reg265, reg270, reg275, reg280, reg285, sel441, sel472, sel503, sel534, sel565, sel596;
  reg[511:0] reg289, reg293, reg297, reg301;
  reg[63:0] reg309;
  wire[351:0] proxy325;
  reg[351:0] reg326;
  reg[22:0] reg402, sel1287;
  wire[7:0] add435, sub439, add466, sub470, add497, sub501, add528, sub532, add559, sub563, add590, sub594;
  reg reg598, reg602, reg606, reg614, reg618, reg634, sel1207, sel1233, sel1241, sel1254;
  wire[84:0] proxy621;
  reg[84:0] reg622;
  wire[19:0] proxy650, proxy654, sub655, sll663, srl667, and717, sll721, add756, and758, sll761, sll775, srl778, sub805, srl809, sll813, srl816, and824, sll827, and840, sll857, srl860, sll946, srl949, sll955, add957, srl960, sub965, sub971, add1000, and1023, sll1026, and1053, sll1056, add1078, sel1201, sel1221, sel1227, sel1228, sel1242, sel1246, sel1247, sel1249, sel1250, sel1251, sel1291, sel1341, sel1354, sel1355, sel1360;
  wire[63:0] sub1155, sel1243;
  reg[2:0] sel1229;

  assign io_ctrl_start_data_part_start4 = io_ctrl_start_data[31:0];
  assign io_ctrl_start_data_part_end5 = io_ctrl_start_data[63:32];
  assign io_lsu_rd_req_data28 = {sel1230, sel1229};
  assign io_lsu_rd_req_data_type29 = io_lsu_rd_req_data28[2:0];
  always @ (posedge clk) begin
    reg56 <= sel1248;
  end
  always @ (posedge clk) begin
    reg62 <= sel1251;
  end
  always @ (posedge clk) begin
    reg66 <= sel1342;
  end
  always @ (posedge clk) begin
    reg70 <= sel1356;
  end
  always @ (posedge clk) begin
    reg74 <= sel1361;
  end
  always @ (posedge clk) begin
    reg78 <= sel1242;
  end
  always @ (posedge clk) begin
    reg84 <= reset ? 20'hfffff : sel1250;
  end
  always @ (posedge clk) begin
    reg90 <= reset ? 20'hfffff : sel1228;
  end
  always @ (posedge clk) begin
    reg94 <= sel1223;
  end
  always @ (posedge clk) begin
    reg98 <= sel1246;
  end
  always @ (posedge clk) begin
    reg102 <= sel1291;
  end
  always @ (posedge clk) begin
    reg106 <= sel1220;
  end
  always @ (posedge clk) begin
    reg110 <= sel1209;
  end
  assign bindin116 = clk;
  assign bindin117 = reset;
  ch_queue __module2__(.clk(bindin116), .reset(bindin117), .io_enq_data(bindin118), .io_enq_valid(bindin121), .io_deq_ready(bindin133), .io_deq_data(bindout127), .io_deq_valid(bindout130));
  assign bindin118 = io_lsu_rd_rsp_data[514:3];
  assign bindin121 = and357;
  assign bindin133 = reg598;
  assign bindin140 = clk;
  assign bindin141 = reset;
  ch_queue __module3__(.clk(bindin140), .reset(bindin141), .io_enq_data(bindin142), .io_enq_valid(bindin145), .io_deq_ready(bindin157), .io_deq_data(bindout151), .io_deq_valid(bindout154));
  assign bindin142 = io_lsu_rd_rsp_data[514:3];
  assign bindin145 = and365;
  assign bindin157 = reg602;
  assign bindin164 = clk;
  assign bindin165 = reset;
  ch_queue_0 __module4__(.clk(bindin164), .reset(bindin165), .io_enq_data(bindin166), .io_enq_valid(bindin169), .io_deq_ready(bindin181), .io_deq_data(bindout175));
  assign bindin166 = io_lsu_rd_rsp_data[514:3];
  assign bindin169 = and373;
  assign bindin181 = reg606;
  assign bindin188 = clk;
  assign bindin189 = reset;
  ch_queue_0 __module5__(.clk(bindin188), .reset(bindin189), .io_enq_data(bindin190), .io_enq_valid(bindin193), .io_deq_ready(bindin205), .io_deq_data(bindout199), .io_size(bindout208));
  assign bindin190 = io_lsu_rd_rsp_data[514:3];
  assign bindin193 = and381;
  assign bindin205 = reg606;
  assign bindin212 = clk;
  assign bindin213 = reset;
  ch_queue __module6__(.clk(bindin212), .reset(bindin213), .io_enq_data(bindin214), .io_enq_valid(bindin217), .io_deq_ready(bindin229), .io_deq_data(bindout223), .io_deq_valid(bindout226));
  assign bindin214 = io_lsu_rd_rsp_data[514:3];
  assign bindin217 = and389;
  assign bindin229 = reg614;
  assign bindin236 = clk;
  assign bindin237 = reset;
  ch_queue __module7__(.clk(bindin236), .reset(bindin237), .io_enq_data(bindin238), .io_enq_valid(bindin241), .io_deq_ready(bindin253), .io_deq_data(bindout247), .io_deq_valid(bindout250));
  assign bindin238 = io_lsu_rd_rsp_data[514:3];
  assign bindin241 = and397;
  assign bindin253 = reg618;
  always @ (posedge clk) begin
    reg260 <= reset ? 8'h0 : sel441;
  end
  always @ (posedge clk) begin
    reg265 <= reset ? 8'h0 : sel472;
  end
  always @ (posedge clk) begin
    reg270 <= reset ? 8'h0 : sel503;
  end
  always @ (posedge clk) begin
    reg275 <= reset ? 8'h0 : sel534;
  end
  always @ (posedge clk) begin
    reg280 <= reset ? 8'h0 : sel565;
  end
  always @ (posedge clk) begin
    reg285 <= reset ? 8'h0 : sel596;
  end
  always @ (posedge clk) begin
    reg289 <= sel1288;
  end
  always @ (posedge clk) begin
    reg293 <= sel1351;
  end
  always @ (posedge clk) begin
    reg297 <= sel1357;
  end
  always @ (posedge clk) begin
    reg301 <= sel1216;
  end
  always @ (posedge clk) begin
    reg305 <= sel1194;
  end
  always @ (posedge clk) begin
    reg309 <= sel1243;
  end
  assign proxy325 = {sel1340, sel1336, sel1331, sel1327, sel1322, sel1318, sel1311, sel1305, sel1301, sel1297, sel1293};
  always @ (posedge clk) begin
    reg326 <= reset ? lit312 : proxy325;
  end
  assign eq354 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign and357 = io_lsu_rd_rsp_valid & eq354;
  assign eq362 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign and365 = io_lsu_rd_rsp_valid & eq362;
  assign eq370 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign and373 = io_lsu_rd_rsp_valid & eq370;
  assign eq378 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign and381 = io_lsu_rd_rsp_valid & eq378;
  assign eq386 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  assign and389 = io_lsu_rd_rsp_valid & eq386;
  assign eq394 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign and397 = io_lsu_rd_rsp_valid & eq394;
  always @ (posedge clk) begin
    reg402 <= reset ? 23'h1 : sel1287;
  end
  assign eq407 = reg402 == 23'h1;
  assign eq411 = io_lsu_rd_req_data_type29 == 3'h1;
  assign and414 = sel1241 & io_lsu_rd_req_ready;
  assign and416 = and414 & eq411;
  assign eq421 = and416 == 1'h0;
  assign and423 = eq421 & reg598;
  assign eq427 = reg598 == 1'h0;
  assign and430 = and416 & eq427;
  assign add435 = reg260 + 8'h1;
  assign sub439 = reg260 - 8'h1;
  always @(*) begin
    if (and430)
      sel441 = add435;
    else if (and423)
      sel441 = sub439;
    else
      sel441 = reg260;
  end
  assign eq444 = io_lsu_rd_req_data_type29 == 3'h2;
  assign and449 = and414 & eq444;
  assign eq453 = and449 == 1'h0;
  assign and455 = eq453 & reg602;
  assign eq459 = reg602 == 1'h0;
  assign and462 = and449 & eq459;
  assign add466 = reg265 + 8'h1;
  assign sub470 = reg265 - 8'h1;
  always @(*) begin
    if (and462)
      sel472 = add466;
    else if (and455)
      sel472 = sub470;
    else
      sel472 = reg265;
  end
  assign eq475 = io_lsu_rd_req_data_type29 == 3'h3;
  assign and480 = and414 & eq475;
  assign eq484 = and480 == 1'h0;
  assign and486 = eq484 & reg606;
  assign eq490 = reg606 == 1'h0;
  assign and493 = and480 & eq490;
  assign add497 = reg270 + 8'h1;
  assign sub501 = reg270 - 8'h1;
  always @(*) begin
    if (and493)
      sel503 = add497;
    else if (and486)
      sel503 = sub501;
    else
      sel503 = reg270;
  end
  assign eq506 = io_lsu_rd_req_data_type29 == 3'h4;
  assign and511 = and414 & eq506;
  assign eq515 = and511 == 1'h0;
  assign and517 = eq515 & reg606;
  assign and524 = and511 & eq490;
  assign add528 = reg275 + 8'h1;
  assign sub532 = reg275 - 8'h1;
  always @(*) begin
    if (and524)
      sel534 = add528;
    else if (and517)
      sel534 = sub532;
    else
      sel534 = reg275;
  end
  assign eq537 = io_lsu_rd_req_data_type29 == 3'h5;
  assign and542 = and414 & eq537;
  assign eq546 = and542 == 1'h0;
  assign and548 = eq546 & reg614;
  assign eq552 = reg614 == 1'h0;
  assign and555 = and542 & eq552;
  assign add559 = reg280 + 8'h1;
  assign sub563 = reg280 - 8'h1;
  always @(*) begin
    if (and555)
      sel565 = add559;
    else if (and548)
      sel565 = sub563;
    else
      sel565 = reg280;
  end
  assign eq568 = io_lsu_rd_req_data_type29 == 3'h6;
  assign and573 = and414 & eq568;
  assign eq577 = and573 == 1'h0;
  assign and579 = eq577 & reg618;
  assign eq583 = reg618 == 1'h0;
  assign and586 = and573 & eq583;
  assign add590 = reg285 + 8'h1;
  assign sub594 = reg285 - 8'h1;
  always @(*) begin
    if (and586)
      sel596 = add590;
    else if (and579)
      sel596 = sub594;
    else
      sel596 = reg285;
  end
  always @ (posedge clk) begin
    reg598 <= sel1343;
  end
  always @ (posedge clk) begin
    reg602 <= sel1233;
  end
  always @ (posedge clk) begin
    reg606 <= sel1197;
  end
  always @ (posedge clk) begin
    reg614 <= sel1212;
  end
  always @ (posedge clk) begin
    reg618 <= sel1224;
  end
  assign proxy621 = {sel1207, sel1205, sel1203, sel1201};
  always @ (posedge clk) begin
    reg622 <= proxy621;
  end
  always @ (posedge clk) begin
    reg634 <= sel1254;
  end
  assign proxy650 = io_ctrl_start_data_part_start4[19:0];
  assign proxy654 = io_ctrl_start_data_part_end5[19:0];
  assign sub655 = proxy654 - 20'h1;
  assign sll663 = reg56 << 32'h2;
  assign srl667 = sll663 >> 32'h6;
  assign ne672 = reg260 != 8'h2;
  assign add681 = reg326[159:128] + 32'h1;
  assign ne697 = reg265 != 8'h2;
  assign add704 = reg326[191:160] + 32'h1;
  assign and711 = bindout130 & bindout154;
  assign and717 = reg56 & 20'hf;
  assign sll721 = and717 << 32'h5;
  assign srl723 = bindout127 >> sll721;
  assign srl736 = bindout151 >> sll721;
  assign ne746 = and717 != 20'hf;
  assign add756 = reg56 + 20'h1;
  assign and758 = add756 & 20'hf;
  assign sll761 = and758 << 32'h5;
  assign srl763 = reg293 >> sll761;
  assign sll775 = add756 << 32'h2;
  assign srl778 = sll775 >> 32'h6;
  assign sub805 = reg74 - 20'h1;
  assign srl809 = reg66 >> 32'h5;
  assign sll813 = srl809 << 32'h2;
  assign srl816 = sll813 >> 32'h6;
  assign eq819 = srl816 == reg84;
  assign and824 = srl809 & 20'hf;
  assign sll827 = and824 << 32'h5;
  assign srl829 = reg297 >> sll827;
  assign and840 = reg66 & 20'h1f;
  assign sll842 = 32'h1 << and840;
  assign and845 = srl829[31:0] & sll842;
  assign ne847 = and845 != 32'h0;
  assign sll857 = reg66 << 32'h2;
  assign srl860 = sll857 >> 32'h6;
  assign eq863 = srl860 == reg90;
  assign ne872 = reg285 != 8'h2;
  assign add879 = reg326[319:288] + 32'h1;
  assign srl898 = bindout247 >> sll827;
  assign and912 = srl898[31:0] & sll842;
  assign ne914 = and912 != 32'h0;
  assign ne932 = reg280 != 8'h2;
  assign add938 = reg326[287:256] + 32'h1;
  assign sll946 = reg70 << 32'h2;
  assign srl949 = sll946 >> 32'h6;
  assign sll955 = reg74 << 32'h2;
  assign add957 = sll955 + 20'h3f;
  assign srl960 = add957 >> 32'h6;
  assign sub965 = reg98 - reg94;
  assign sub971 = reg98 - 20'h1;
  assign ne979 = reg270 != 8'h20;
  assign add986 = reg326[223:192] + 32'h1;
  assign ne995 = reg275 != 8'h20;
  assign add1000 = reg94 + 20'h1;
  assign ne1003 = reg94 != reg102;
  assign add1010 = reg326[255:224] + 32'h1;
  assign eq1017 = bindout208 == reg106;
  assign and1023 = reg66 & 20'hf;
  assign sll1026 = and1023 << 32'h5;
  assign srl1028 = bindout223 >> sll1026;
  assign srl1040 = reg301 >> sll1026;
  assign and1053 = reg70 & 20'hf;
  assign sll1056 = and1053 << 32'h5;
  assign srl1058 = bindout175 >> sll1056;
  assign srl1070 = bindout199 >> sll1056;
  assign add1078 = reg70 + 20'h1;
  assign ne1081 = reg70 != reg78;
  assign eq1088 = and1053 == 20'hf;
  assign add1099 = reg326[351:320] + 32'h1;
  assign ne1107 = reg56 != reg62;
  assign srl1129 = reg289 >> sll721;
  assign srl1141 = reg293 >> sll721;
  assign sub1155 = io_ctrl_timer - reg309;
  assign lt1163 = reg326[63:32] < reg305;
  assign sel1165 = lt1163 ? reg326[63:32] : reg305;
  assign eq1169 = reg326[63:32] == 32'h0;
  assign sel1171 = eq1169 ? reg305 : sel1165;
  always @ (posedge clk) begin
    reg1174 <= reset ? sel1171 : reg1174;
  end
  assign gt1178 = reg326[63:32] > reg305;
  assign sel1180 = gt1178 ? reg326[63:32] : reg305;
  assign add1183 = reg326[127:96] + reg305;
  assign add1187 = reg326[31:0] + 32'h1;
  assign sel1194 = (reg402 == 23'h400000) ? sub1155[31:0] : reg305;
  assign sel1195 = eq1088 ? 1'h1 : 1'h0;
  assign sel1196 = ne1081 ? sel1195 : 1'h1;
  assign sel1197 = and1199 ? sel1196 : 1'h0;
  assign eq1198 = reg402 == 23'h40000;
  assign and1199 = eq1198 & io_pe_ready;
  assign sel1201 = (reg402 == 23'h40000) ? srl1058[19:0] : reg622[19:0];
  assign sel1203 = (reg402 == 23'h40000) ? srl1070[31:0] : reg622[51:20];
  assign sel1205 = (reg402 == 23'h40000) ? reg110 : reg622[83:52];
  always @(*) begin
    case (reg402)
      23'h040000: sel1207 = 1'h0;
      23'h800000: sel1207 = 1'h1;
      default: sel1207 = reg622[84];
    endcase
  end
  assign sel1208 = bindout226 ? srl1028[31:0] : srl1040[31:0];
  assign sel1209 = and1211 ? sel1208 : reg110;
  assign eq1210 = reg402 == 23'h20000;
  assign and1211 = eq1210 & eq1017;
  assign sel1212 = and1215 ? 1'h1 : 1'h0;
  assign and1213 = eq1017 & bindout226;
  assign and1215 = eq1210 & and1213;
  assign sel1216 = and1215 ? bindout223 : reg301;
  assign sel1220 = (reg402 == 23'h4000) ? sub965[5:0] : reg106;
  assign sel1221 = and1222 ? add1000 : reg94;
  assign and1222 = ne995 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg402)
      23'h002000: sel1223 = srl949;
      23'h010000: sel1223 = sel1221;
      default: sel1223 = reg94;
    endcase
  end
  assign sel1224 = and1226 ? 1'h1 : 1'h0;
  assign eq1225 = reg402 == 23'h800;
  assign and1226 = eq1225 & bindout250;
  assign sel1227 = eq863 ? reg90 : srl860;
  assign sel1228 = (reg402 == 23'h200) ? sel1227 : reg90;
  always @(*) begin
    case (reg402)
      23'h000002: sel1229 = 3'h1;
      23'h000004: sel1229 = 3'h2;
      23'h000020: sel1229 = 3'h2;
      23'h000400: sel1229 = 3'h6;
      23'h001000: sel1229 = 3'h5;
      23'h008000: sel1229 = 3'h3;
      23'h010000: sel1229 = 3'h4;
      default: sel1229 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg402)
      23'h000002: sel1230 = srl667;
      23'h000004: sel1230 = srl667;
      23'h000020: sel1230 = srl778;
      23'h000400: sel1230 = reg84;
      23'h001000: sel1230 = srl860;
      23'h008000: sel1230 = reg94;
      23'h010000: sel1230 = reg94;
      default: sel1230 = 20'h0;
    endcase
  end
  assign sel1231 = and711 ? 1'h1 : 1'h0;
  assign sel1232 = bindout154 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg402)
      23'h000010: sel1233 = sel1231;
      23'h000040: sel1233 = sel1232;
      default: sel1233 = 1'h0;
    endcase
  end
  assign sel1234 = ne672 ? 1'h1 : 1'h0;
  assign sel1235 = ne697 ? 1'h1 : 1'h0;
  assign sel1237 = ne872 ? 1'h1 : 1'h0;
  assign sel1238 = ne932 ? 1'h1 : 1'h0;
  assign sel1239 = ne979 ? 1'h1 : 1'h0;
  assign sel1240 = ne995 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg402)
      23'h000002: sel1241 = sel1234;
      23'h000004: sel1241 = sel1235;
      23'h000020: sel1241 = sel1235;
      23'h000400: sel1241 = sel1237;
      23'h001000: sel1241 = sel1238;
      23'h008000: sel1241 = sel1239;
      23'h010000: sel1241 = sel1240;
      default: sel1241 = 1'h0;
    endcase
  end
  assign sel1242 = (reg402 == 23'h100) ? sub805 : reg78;
  assign sel1243 = and1245 ? io_ctrl_timer : reg309;
  assign eq1244 = reg402 == 23'h1;
  assign and1245 = eq1244 & io_ctrl_start_valid;
  assign sel1246 = (reg402 == 23'h2000) ? srl960 : reg98;
  assign sel1247 = io_ctrl_start_valid ? proxy650 : reg56;
  always @(*) begin
    case (reg402)
      23'h000001: sel1248 = sel1247;
      23'h100000: sel1248 = add756;
      default: sel1248 = reg56;
    endcase
  end
  assign sel1249 = eq819 ? reg84 : srl816;
  assign sel1250 = (reg402 == 23'h100) ? sel1249 : reg84;
  assign sel1251 = and1245 ? sub655 : reg62;
  always @(*) begin
    case (reg402)
      23'h040000: sel1254 = 1'h1;
      23'h800000: sel1254 = 1'h1;
      default: sel1254 = 1'h0;
    endcase
  end
  assign sel1255 = io_ctrl_start_valid ? 23'h2 : reg402;
  assign sel1256 = and1257 ? 23'h4 : reg402;
  assign and1257 = ne672 & io_lsu_rd_req_ready;
  assign sel1258 = and1259 ? 23'h10 : reg402;
  assign and1259 = ne697 & io_lsu_rd_req_ready;
  assign sel1260 = ne746 ? 23'h80 : 23'h20;
  assign sel1261 = and711 ? sel1260 : reg402;
  assign sel1262 = and1259 ? 23'h40 : reg402;
  assign sel1264 = bindout154 ? 23'h100 : reg402;
  assign sel1265 = ne847 ? 23'h200 : 23'h100000;
  assign sel1266 = eq819 ? sel1265 : 23'h400;
  assign sel1267 = eq863 ? 23'h2000 : 23'h1000;
  assign sel1268 = and1269 ? 23'h800 : reg402;
  assign and1269 = ne872 & io_lsu_rd_req_ready;
  assign sel1270 = ne914 ? 23'h200 : 23'h100000;
  assign sel1271 = bindout250 ? sel1270 : reg402;
  assign sel1272 = and1273 ? 23'h2000 : reg402;
  assign and1273 = ne932 & io_lsu_rd_req_ready;
  assign sel1274 = and1275 ? 23'h10000 : reg402;
  assign and1275 = ne979 & io_lsu_rd_req_ready;
  assign sel1276 = ne1003 ? 23'h8000 : 23'h20000;
  assign sel1277 = and1222 ? sel1276 : reg402;
  assign sel1279 = eq1017 ? 23'h40000 : reg402;
  assign sel1280 = eq1088 ? 23'h80000 : reg402;
  assign sel1281 = ne1081 ? sel1280 : 23'h100000;
  assign sel1282 = io_pe_ready ? sel1281 : reg402;
  assign sel1283 = ne746 ? 23'h200000 : 23'h2;
  assign sel1284 = ne1107 ? sel1283 : 23'h400000;
  assign sel1286 = io_pe_ready ? 23'h1 : reg402;
  always @(*) begin
    case (reg402)
      23'h000001: sel1287 = sel1255;
      23'h000002: sel1287 = sel1256;
      23'h000004: sel1287 = sel1258;
      23'h000010: sel1287 = sel1261;
      23'h000080: sel1287 = 23'h100;
      23'h000020: sel1287 = sel1262;
      23'h000040: sel1287 = sel1264;
      23'h000100: sel1287 = sel1266;
      23'h000200: sel1287 = sel1267;
      23'h000400: sel1287 = sel1268;
      23'h000800: sel1287 = sel1271;
      23'h001000: sel1287 = sel1272;
      23'h002000: sel1287 = 23'h4000;
      23'h004000: sel1287 = 23'h8000;
      23'h008000: sel1287 = sel1274;
      23'h010000: sel1287 = sel1277;
      23'h020000: sel1287 = sel1279;
      23'h040000: sel1287 = sel1282;
      23'h080000: sel1287 = 23'h40000;
      23'h100000: sel1287 = sel1284;
      23'h200000: sel1287 = sel1260;
      23'h400000: sel1287 = 23'h800000;
      23'h800000: sel1287 = sel1286;
      default: sel1287 = reg402;
    endcase
  end
  assign sel1288 = and1290 ? bindout127 : reg289;
  assign eq1289 = reg402 == 23'h10;
  assign and1290 = eq1289 & and711;
  assign sel1291 = (reg402 == 23'h4000) ? sub971 : reg102;
  assign sel1293 = and1295 ? add1187 : reg326[31:0];
  assign eq1294 = reg402 == 23'h800000;
  assign and1295 = eq1294 & io_pe_ready;
  assign sel1297 = and1295 ? reg1174 : reg326[63:32];
  assign sel1301 = and1295 ? sel1180 : reg326[95:64];
  assign sel1305 = and1295 ? add1183 : reg326[127:96];
  assign sel1309 = io_lsu_rd_req_ready ? reg326[159:128] : add681;
  assign sel1310 = ne672 ? sel1309 : add681;
  assign sel1311 = (reg402 == 23'h2) ? sel1310 : reg326[159:128];
  assign sel1313 = io_lsu_rd_req_ready ? reg326[191:160] : add704;
  assign sel1314 = ne697 ? sel1313 : add704;
  assign sel1317 = bindout154 ? reg326[191:160] : add704;
  always @(*) begin
    case (reg402)
      23'h000004: sel1318 = sel1314;
      23'h000020: sel1318 = sel1314;
      23'h000040: sel1318 = sel1317;
      default: sel1318 = reg326[191:160];
    endcase
  end
  assign sel1320 = io_lsu_rd_req_ready ? reg326[223:192] : add986;
  assign sel1321 = ne979 ? sel1320 : add986;
  assign sel1322 = (reg402 == 23'h8000) ? sel1321 : reg326[223:192];
  assign sel1324 = io_lsu_rd_req_ready ? reg326[255:224] : add1010;
  assign sel1325 = ne995 ? sel1324 : add1010;
  assign sel1326 = eq1017 ? reg326[255:224] : add1010;
  always @(*) begin
    case (reg402)
      23'h010000: sel1327 = sel1325;
      23'h020000: sel1327 = sel1326;
      default: sel1327 = reg326[255:224];
    endcase
  end
  assign sel1329 = io_lsu_rd_req_ready ? reg326[287:256] : add938;
  assign sel1330 = ne932 ? sel1329 : add938;
  assign sel1331 = (reg402 == 23'h1000) ? sel1330 : reg326[287:256];
  assign sel1333 = io_lsu_rd_req_ready ? reg326[319:288] : add879;
  assign sel1334 = ne872 ? sel1333 : add879;
  assign sel1335 = bindout250 ? reg326[319:288] : add879;
  always @(*) begin
    case (reg402)
      23'h000400: sel1336 = sel1334;
      23'h000800: sel1336 = sel1335;
      default: sel1336 = reg326[319:288];
    endcase
  end
  assign sel1338 = io_pe_ready ? reg326[351:320] : add1099;
  always @(*) begin
    case (reg402)
      23'h040000: sel1340 = sel1338;
      23'h800000: sel1340 = sel1338;
      default: sel1340 = reg326[351:320];
    endcase
  end
  assign sel1341 = and711 ? srl723[19:0] : reg66;
  always @(*) begin
    case (reg402)
      23'h000010: sel1342 = sel1341;
      23'h200000: sel1342 = srl1129[19:0];
      default: sel1342 = reg66;
    endcase
  end
  assign sel1343 = and1290 ? 1'h1 : 1'h0;
  assign sel1351 = and1290 ? bindout151 : reg293;
  assign sel1354 = and711 ? srl736[19:0] : reg70;
  assign sel1355 = io_pe_ready ? add1078 : reg70;
  always @(*) begin
    case (reg402)
      23'h000010: sel1356 = sel1354;
      23'h040000: sel1356 = sel1355;
      23'h200000: sel1356 = srl1141[19:0];
      default: sel1356 = reg70;
    endcase
  end
  assign sel1357 = and1226 ? bindout247 : reg297;
  assign sel1360 = bindout154 ? bindout151[19:0] : reg74;
  always @(*) begin
    case (reg402)
      23'h000080: sel1361 = srl763[19:0];
      23'h000040: sel1361 = sel1360;
      default: sel1361 = reg74;
    endcase
  end

  assign io_ctrl_start_ready = eq407;
  assign io_ctrl_stats = reg326;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data28;
  assign io_lsu_rd_req_valid = sel1241;
  assign io_pe_data = reg622;
  assign io_pe_valid = reg634;

endmodule


module ch_pipe(
  input wire clk,
  input wire reset,
  input wire[20:0] io_enq_data,
  input wire io_enq_valid,
  input wire io_deq_ready,
  output wire io_enq_ready,
  output wire[20:0] io_deq_data,
  output wire io_deq_valid
);
  wire[20:0] sel33, sel74, sel111;
  reg[20:0] reg41, reg82, reg119;
  wire sel54, sel93, sel130;
  reg reg60, reg98, reg135;

  assign sel33 = io_deq_ready ? io_enq_data : reg41;
  always @ (posedge clk) begin
    reg41 <= sel33;
  end
  assign sel54 = io_deq_ready ? io_enq_valid : reg60;
  always @ (posedge clk) begin
    reg60 <= reset ? 1'h0 : sel54;
  end
  assign sel74 = io_deq_ready ? reg41 : reg82;
  always @ (posedge clk) begin
    reg82 <= sel74;
  end
  assign sel93 = io_deq_ready ? reg60 : reg98;
  always @ (posedge clk) begin
    reg98 <= reset ? 1'h0 : sel93;
  end
  assign sel111 = io_deq_ready ? reg82 : reg119;
  always @ (posedge clk) begin
    reg119 <= sel111;
  end
  assign sel130 = io_deq_ready ? reg98 : reg135;
  always @ (posedge clk) begin
    reg135 <= reset ? 1'h0 : sel130;
  end

  assign io_enq_ready = io_deq_ready;
  assign io_deq_data = reg119;
  assign io_deq_valid = reg135;

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
  wire[511:0] lit282 = 512'h0;
  wire[19:0] io_req_data_a_rowind3, proxy_a_rowind50, and201, and277, sel279, and298, sll379, srl383, add469, srl482, sll485, srl488, and498, sll501;
  wire io_req_data_is_end6, bindin38, bindin40, bindin44, bindout47, proxy_is_end51, bindout55, bindin58, proxy_is_end62, bindin64, bindin65, bindin69, bindout80, bindin83, eq148, eq152, or154, eq158, eq164, and167, or169, eq172, eq176, and178, ne186, and191, and196, and211, eq215, and217, eq221, and224, eq237, and240, eq244, and247, ne250, and253, and294, and305, sel519, eq529, and530;
  wire[533:0] io_lsu_wr_req_data13;
  wire[20:0] proxy32, bindin41, bindout52, proxy60, bindin66, bindout77;
  reg[31:0] mem84[0:31];
  reg[31:0] reg88, reg92, reg97, reg102, sel234, sel273, sel514;
  reg[19:0] reg116, sel526;
  wire[63:0] proxy123;
  reg[63:0] reg124;
  reg[1:0] reg135, sel525, sel535;
  wire[31:0] sll140, sll143, and161, and183, sel188, udfs193, udfs204, add228, sub232, inv256, and259, or261, or270, sel272, or302, add391, add509, sel512, sel516, sel517, sel521, sel522, sel523, sel524, sel528;
  wire[4:0] proxy203, sel520;
  wire[511:0] proxy311, proxy394, pad490, sll503;
  reg sel518;
  reg[511:0] sel527;
  wire[1:0] sel531, sel532, sel533, sel534;

  assign io_req_data_a_rowind3 = io_req_data[19:0];
  assign io_req_data_is_end6 = io_req_data[84];
  assign io_lsu_wr_req_data13 = {sel527, sel526, sel525};
  assign proxy32 = {io_req_data_is_end6, io_req_data_a_rowind3};
  assign bindin38 = clk;
  assign bindin40 = reset;
  ch_pipe __module16__(.clk(bindin38), .reset(bindin40), .io_enq_data(bindin41), .io_enq_valid(bindin44), .io_deq_ready(bindin58), .io_enq_ready(bindout47), .io_deq_data(bindout52), .io_deq_valid(bindout55));
  assign bindin41 = proxy32;
  assign bindin44 = and191;
  assign proxy_a_rowind50 = bindout52[19:0];
  assign proxy_is_end51 = bindout52[20];
  assign bindin58 = or169;
  assign proxy60 = {proxy_is_end51, proxy_a_rowind50};
  assign proxy_is_end62 = proxy60[20];
  assign bindin64 = clk;
  assign bindin65 = reset;
  ch_pipe __module17__(.clk(bindin64), .reset(bindin65), .io_enq_data(bindin66), .io_enq_valid(bindin69), .io_deq_ready(bindin83), .io_deq_data(bindout77), .io_deq_valid(bindout80));
  assign bindin66 = proxy60;
  assign bindin69 = and196;
  assign bindin83 = or154;
  always @(posedge clk) begin
    if (sel519) begin
      mem84[sel520] = sel521;
    end
  end
  always @ (posedge clk) begin
    reg88 <= reset ? 32'h0 : sel524;
  end
  always @ (posedge clk) begin
    reg92 <= sel528;
  end
  always @ (posedge clk) begin
    reg97 <= reset ? 32'h0 : sel273;
  end
  always @ (posedge clk) begin
    reg102 <= reset ? 32'h0 : sel234;
  end
  always @ (posedge clk) begin
    reg116 <= reset ? 20'h0 : sel279;
  end
  assign proxy123 = {sel517, sel514};
  always @ (posedge clk) begin
    reg124 <= reset ? 64'h0 : proxy123;
  end
  always @ (posedge clk) begin
    reg135 <= reset ? 2'h0 : sel535;
  end
  assign sll140 = 32'h1 << proxy203;
  assign sll143 = 32'h1 << sel520;
  assign eq148 = bindout80 == 1'h0;
  assign eq152 = 2'h0 == reg135;
  assign or154 = eq152 | eq148;
  assign eq158 = bindout55 == 1'h0;
  assign and161 = reg97 & sll140;
  assign eq164 = 32'h0 == and161;
  assign and167 = or154 & eq164;
  assign or169 = and167 | eq158;
  assign eq172 = 32'h0 == reg102;
  assign eq176 = reg135 == 2'h0;
  assign and178 = eq176 & eq172;
  assign and183 = reg88 & sll140;
  assign ne186 = 32'h0 != and183;
  assign sel188 = ne186 ? mem84[proxy203] : 32'h0;
  assign and191 = io_req_valid & bindout47;
  fp_mult __fp_mult193(.clock(clk), .clk_en(or169), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs193));
  assign and196 = bindout55 & or169;
  assign and201 = proxy_a_rowind50 & 20'h1f;
  assign proxy203 = and201[4:0];
  fp_add __fp_add204(.clock(clk), .clk_en(or154), .dataa(udfs193), .datab(sel188), .result(udfs204));
  assign and211 = eq152 & bindout80;
  assign eq215 = and191 == 1'h0;
  assign and217 = eq215 & and211;
  assign eq221 = and211 == 1'h0;
  assign and224 = and191 & eq221;
  assign add228 = reg102 + 32'h1;
  assign sub232 = reg102 - 32'h1;
  always @(*) begin
    if (and224)
      sel234 = add228;
    else if (and217)
      sel234 = sub232;
    else
      sel234 = reg102;
  end
  assign eq237 = proxy_is_end62 == 1'h0;
  assign and240 = and196 & eq237;
  assign eq244 = bindout77[20] == 1'h0;
  assign and247 = and211 & eq244;
  assign ne250 = sll140 != sll143;
  assign and253 = and240 & ne250;
  assign inv256 = ~sll143;
  assign and259 = reg97 & inv256;
  assign or261 = and259 | sll140;
  assign or270 = reg97 | sll140;
  assign sel272 = and253 ? or261 : and259;
  always @(*) begin
    if (and247)
      sel273 = sel272;
    else if (and240)
      sel273 = or270;
    else
      sel273 = reg97;
  end
  assign and277 = bindout77[19:0] & 20'hfffe0;
  assign sel279 = and247 ? and277 : reg116;
  assign and294 = bindout80 & eq244;
  assign and298 = bindout77[19:0] & 20'h1f;
  assign or302 = reg88 | sll143;
  assign and305 = bindout80 & bindout77[20];
  assign proxy311 = {mem84[5'h71], mem84[5'h70], mem84[5'h61], mem84[5'h60], mem84[5'h51], mem84[5'h50], mem84[5'h41], mem84[5'h40], mem84[5'h31], mem84[5'h30], mem84[5'h21], mem84[5'h20], mem84[5'h11], mem84[5'h10], mem84[5'h1], mem84[5'h0]};
  assign sll379 = reg116 << 32'h2;
  assign srl383 = sll379 >> 32'h6;
  assign add391 = reg124[31:0] + 32'h1;
  assign proxy394 = {mem84[5'hf1], mem84[5'hf0], mem84[5'he1], mem84[5'he0], mem84[5'hd1], mem84[5'hd0], mem84[5'hc1], mem84[5'hc0], mem84[5'hb1], mem84[5'hb0], mem84[5'ha1], mem84[5'ha0], mem84[5'h91], mem84[5'h90], mem84[5'h81], mem84[5'h80]};
  assign add469 = srl383 + 20'h1;
  assign srl482 = reg116 >> 32'h5;
  assign sll485 = srl482 << 32'h2;
  assign srl488 = sll485 >> 32'h6;
  assign pad490 = {{480{1'b0}}, reg92};
  assign and498 = srl482 & 20'hf;
  assign sll501 = and498 << 32'h5;
  assign sll503 = pad490 << sll501;
  assign add509 = reg124[63:32] + 32'h1;
  assign sel512 = io_lsu_wr_req_ready ? reg124[31:0] : add391;
  always @(*) begin
    case (reg135)
      2'h1: sel514 = sel512;
      2'h2: sel514 = sel512;
      default: sel514 = reg124[31:0];
    endcase
  end
  assign sel516 = io_lsu_wr_req_ready ? reg124[63:32] : add509;
  assign sel517 = (reg135 == 2'h3) ? sel516 : reg124[63:32];
  always @(*) begin
    case (reg135)
      2'h1: sel518 = 1'h1;
      2'h2: sel518 = 1'h1;
      2'h3: sel518 = 1'h1;
      default: sel518 = 1'h0;
    endcase
  end
  assign sel519 = (reg135 == 2'h0) ? and294 : 1'h0;
  assign sel520 = (reg135 == 2'h0) ? and298[4:0] : 5'h0;
  assign sel521 = (reg135 == 2'h0) ? udfs204 : 32'h0;
  assign sel522 = sel519 ? or302 : reg88;
  assign sel523 = and305 ? 32'h0 : sel522;
  assign sel524 = (reg135 == 2'h0) ? sel523 : reg88;
  always @(*) begin
    case (reg135)
      2'h1: sel525 = 2'h0;
      2'h2: sel525 = 2'h0;
      2'h3: sel525 = 2'h1;
      default: sel525 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg135)
      2'h1: sel526 = srl383;
      2'h2: sel526 = add469;
      2'h3: sel526 = srl488;
      default: sel526 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg135)
      2'h1: sel527 = proxy311;
      2'h2: sel527 = proxy394;
      2'h3: sel527 = sll503;
      default: sel527 = lit282;
    endcase
  end
  assign sel528 = and530 ? reg88 : reg92;
  assign eq529 = reg135 == 2'h0;
  assign and530 = eq529 & and305;
  assign sel531 = and305 ? 2'h1 : reg135;
  assign sel532 = io_lsu_wr_req_ready ? 2'h2 : reg135;
  assign sel533 = io_lsu_wr_req_ready ? 2'h3 : reg135;
  assign sel534 = io_lsu_wr_req_ready ? 2'h0 : reg135;
  always @(*) begin
    case (reg135)
      2'h0: sel535 = sel531;
      2'h1: sel535 = sel532;
      2'h2: sel535 = sel533;
      2'h3: sel535 = sel534;
      default: sel535 = reg135;
    endcase
  end

  assign io_req_ready = bindout47;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data13;
  assign io_lsu_wr_req_valid = sel518;
  assign io_stats = reg124;
  assign io_is_idle = and178;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel31;

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
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy11;
  reg[8:0] reg12;
  wire[2:0] proxy19, proxy21, proxy23, proxy25;
  wire and31, and36, orr39, inv41, and44, proxy47, inv48, proxy50, or52, and54, proxy60, or62, and64, inv68, and71, and78, orr81, inv83, and86, inv90, or94, and96, inv100, and103, inv107, and110, orr115, inv117, and120;

  assign proxy11 = {reg12[8:6], and96, reg12[4:3], and64, and54, reg12[0]};
  always @ (posedge clk) begin
    reg12 <= reset ? 9'h0 : proxy11;
  end
  assign proxy19 = {and103, and71, 1'h0};
  assign proxy21 = {and110, 1'h0, and31};
  assign proxy23 = {1'h0, and78, and36};
  assign proxy25 = {and120, and86, and44};
  assign and31 = io_in[0] & reg12[1];
  assign and36 = io_in[0] & reg12[2];
  assign orr39 = |proxy19;
  assign inv41 = ~orr39;
  assign and44 = io_in[0] & inv41;
  assign proxy47 = proxy25[0];
  assign inv48 = ~proxy47;
  assign proxy50 = proxy25[1];
  assign or52 = reg12[1] | proxy50;
  assign and54 = or52 & inv48;
  assign proxy60 = proxy25[2];
  assign or62 = reg12[2] | proxy60;
  assign and64 = or62 & inv48;
  assign inv68 = ~reg12[1];
  assign and71 = io_in[1] & inv68;
  assign and78 = io_in[1] & reg12[5];
  assign orr81 = |proxy21;
  assign inv83 = ~orr81;
  assign and86 = io_in[1] & inv83;
  assign inv90 = ~proxy50;
  assign or94 = reg12[5] | proxy60;
  assign and96 = or94 & inv90;
  assign inv100 = ~reg12[2];
  assign and103 = io_in[2] & inv100;
  assign inv107 = ~reg12[5];
  assign and110 = io_in[2] & inv107;
  assign orr115 = |proxy23;
  assign inv117 = ~orr115;
  assign and120 = io_in[2] & inv117;

  assign io_grant = proxy25;

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
  wire[2:0] bindin44, proxy72, bindin82, bindout85;
  wire[71:0] proxy46, bindin62;
  wire[23:0] bindout70;
  wire bindin79, bindin81, eq105, and108, eq113, and116, eq121, and124;

  ch_hxbar __module23__(.io_sel(bindin44), .io_in(bindin62), .io_out(bindout70));
  assign bindin44 = bindout85;
  assign proxy46 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin62 = proxy46;
  assign proxy72 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin79 = clk;
  assign bindin81 = reset;
  ch_rrArbiter __module24__(.clk(bindin79), .reset(bindin81), .io_in(bindin82), .io_grant(bindout85));
  assign bindin82 = proxy72;
  assign eq105 = bindout85 == 3'h1;
  assign and108 = io_out_ready & eq105;
  assign eq113 = bindout85 == 3'h2;
  assign and116 = io_out_ready & eq113;
  assign eq121 = bindout85 == 3'h4;
  assign and124 = io_out_ready & eq121;

  assign io_in_0_ready = and108;
  assign io_in_1_ready = and116;
  assign io_in_2_ready = and124;
  assign io_out_data = bindout70[22:0];
  assign io_out_valid = bindout70[23];
  assign io_out_grant = bindout85;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  reg[534:0] sel35;

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
  wire[2:0] bindin48, proxy80, bindin90, bindout93;
  wire[1604:0] proxy50, bindin69;
  wire[534:0] bindout78;
  wire bindin87, bindin89, eq113, and116, eq121, and124, eq129, and132;

  ch_hxbar_0 __module26__(.io_sel(bindin48), .io_in(bindin69), .io_out(bindout78));
  assign bindin48 = bindout93;
  assign proxy50 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin69 = proxy50;
  assign proxy80 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin87 = clk;
  assign bindin89 = reset;
  ch_rrArbiter __module27__(.clk(bindin87), .reset(bindin89), .io_in(bindin90), .io_grant(bindout93));
  assign bindin90 = proxy80;
  assign eq113 = bindout93 == 3'h1;
  assign and116 = io_out_ready & eq113;
  assign eq121 = bindout93 == 3'h2;
  assign and124 = io_out_ready & eq121;
  assign eq129 = bindout93 == 3'h4;
  assign and132 = io_out_ready & eq129;

  assign io_in_0_ready = and116;
  assign io_in_1_ready = and124;
  assign io_in_2_ready = and132;
  assign io_out_data = bindout78[533:0];
  assign io_out_valid = bindout78[534];
  assign io_out_grant = bindout93;

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
  wire[511:0] lit190 = 512'h0;
  reg[21:0] mem1[0:1];
  reg[511:0] mem4[0:1];
  reg[1:0] reg8, sel365, sel376;
  reg reg13, reg35, reg137, reg144, reg151, reg159, reg184, sel363, sel386, sel405, sel419;
  reg[19:0] reg17, sel367;
  wire[533:0] io_evict_data49, sel412, sel413, sel414, sel415;
  reg[2:0] reg66, sel394;
  reg[533:0] reg70;
  wire[1:0] proxy_owner72, sll93, and96, proxy_owners116, and118, sel177, proxy_owners202, and204, or229, sll250, and253, or266, sll282, or285, inv308, and311, and319, inv325, and330, sel364, sel374, sel375;
  wire[19:0] proxy_tag73, proxy_tag105, proxy_tag233, proxy_tag246, sel366, sel409;
  wire ne99, eq106, and109, sel111, ne120, and123, sel125, eq130, sel132, add166, eq170, and175, sel176, eq181, ne207, eq210, ne214, and216, and218, eq247, ne256, and258, ne288, eq296, ne321, ne350, sel359, sel360, sel361, sel362, sel370, and371, eq372, and373, sel377, and379, sel380, sel381, sel382, sel383, and384, sel385, sel403, sel404, sel406, sel416, sel417, sel418;
  wire[2:0] sel174, sel387, sel388, sel389, sel390, sel391, sel392, sel393;
  wire[511:0] or224, or261, sel368, sel395, sel397, sel398;
  wire[21:0] tag_t235, tag_t272, tag_t276, tag_t302, tag_t336, sel420, sel422, sel423, sel424, sel425;
  reg[511:0] sel369, sel399;
  reg[21:0] sel426;

  always @(posedge clk) begin
    if (sel405) begin
      mem1[sel419] = sel426;
    end
  end
  always @(posedge clk) begin
    if (sel386) begin
      mem4[sel419] = sel399;
    end
  end
  always @ (posedge clk) begin
    reg8 <= reset ? 2'h0 : sel376;
  end
  always @ (posedge clk) begin
    reg13 <= sel406;
  end
  always @ (posedge clk) begin
    reg17 <= sel409;
  end
  always @ (posedge clk) begin
    reg35 <= sel382;
  end
  assign io_evict_data49 = {sel369, sel367, sel365};
  always @ (posedge clk) begin
    reg66 <= reset ? 3'h0 : sel394;
  end
  always @ (posedge clk) begin
    reg70 <= sel415;
  end
  assign proxy_owner72 = reg70[1:0];
  assign proxy_tag73 = reg70[21:2];
  assign sll93 = 2'h1 << 32'h1;
  assign and96 = reg8 & sll93;
  assign ne99 = 2'h0 != and96;
  assign proxy_tag105 = mem1[1'h1][21:2];
  assign eq106 = proxy_tag105 == io_enq_data[21:2];
  assign and109 = ne99 & eq106;
  assign sel111 = and109 ? 1'h1 : 1'h0;
  assign proxy_owners116 = mem1[1'h1][1:0];
  assign and118 = proxy_owners116 & io_enq_data[1:0];
  assign ne120 = and118 != 2'h0;
  assign and123 = ne99 & ne120;
  assign sel125 = and123 ? 1'h1 : 1'h0;
  assign eq130 = ne99 == 1'h0;
  assign sel132 = eq130 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg137 <= sel111;
  end
  always @ (posedge clk) begin
    reg144 <= sel125;
  end
  always @ (posedge clk) begin
    reg151 <= sel132;
  end
  always @ (posedge clk) begin
    reg159 <= reset ? 1'h0 : io_enq_valid;
  end
  assign add166 = reg35 + 1'h1;
  assign eq170 = reg35 == 1'h1;
  assign sel174 = and175 ? 3'h0 : reg66;
  assign and175 = sel361 & eq170;
  assign sel176 = sel361 ? add166 : reg35;
  assign sel177 = and175 ? 2'h0 : reg8;
  assign eq181 = reg66 == 3'h0;
  always @ (posedge clk) begin
    reg184 <= sel370;
  end
  assign proxy_owners202 = mem1[sel419][1:0];
  assign and204 = proxy_owners202 & io_enq_data[1:0];
  assign ne207 = 2'h0 != and204;
  assign eq210 = io_enq_data[21:2] == reg17;
  assign ne214 = reg8 != 2'h0;
  assign and216 = ne214 & eq210;
  assign and218 = and216 & ne207;
  assign or224 = mem4[sel419] | io_enq_data[533:22];
  assign or229 = proxy_owners202 | io_enq_data[1:0];
  assign proxy_tag233 = mem1[sel419][21:2];
  assign tag_t235 = {proxy_tag233, or229};
  assign proxy_tag246 = mem1[sel377][21:2];
  assign eq247 = proxy_tag246 == proxy_tag73;
  assign sll250 = 2'h1 << sel377;
  assign and253 = reg8 & sll250;
  assign ne256 = 2'h0 != and253;
  assign and258 = ne256 & eq247;
  assign or261 = mem4[sel419] | reg70[533:22];
  assign or266 = proxy_owners202 | proxy_owner72;
  assign tag_t272 = {proxy_tag233, or266};
  assign tag_t276 = {proxy_tag73, proxy_owner72};
  assign sll282 = 2'h1 << sel419;
  assign or285 = reg8 | sll282;
  assign ne288 = sel419 != reg144;
  assign eq296 = proxy_owners202 == proxy_owner72;
  assign tag_t302 = {20'h0, 2'h0};
  assign inv308 = ~sll282;
  assign and311 = reg8 & inv308;
  assign and319 = proxy_owners202 & proxy_owner72;
  assign ne321 = and319 != 2'h0;
  assign inv325 = ~proxy_owner72;
  assign and330 = proxy_owners202 & inv325;
  assign tag_t336 = {proxy_tag233, and330};
  assign ne350 = proxy_owners202 != 2'h0;
  assign sel359 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel360 = ne350 ? sel359 : 1'h1;
  assign sel361 = (reg66 == 3'h4) ? sel360 : 1'h0;
  assign sel362 = ne350 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg66)
      3'h3: sel363 = 1'h1;
      3'h4: sel363 = sel362;
      default: sel363 = 1'h0;
    endcase
  end
  assign sel364 = ne350 ? proxy_owner72 : 2'h0;
  always @(*) begin
    case (reg66)
      3'h3: sel365 = proxy_owner72;
      3'h4: sel365 = sel364;
      default: sel365 = 2'h0;
    endcase
  end
  assign sel366 = ne350 ? proxy_tag233 : 20'h0;
  always @(*) begin
    case (reg66)
      3'h3: sel367 = proxy_tag233;
      3'h4: sel367 = sel366;
      default: sel367 = 20'h0;
    endcase
  end
  assign sel368 = ne350 ? mem4[sel419] : lit190;
  always @(*) begin
    case (reg66)
      3'h3: sel369 = mem4[sel419];
      3'h4: sel369 = sel368;
      default: sel369 = lit190;
    endcase
  end
  assign sel370 = and373 ? reg144 : reg184;
  assign and371 = reg159 & ne288;
  assign eq372 = reg66 == 3'h1;
  assign and373 = eq372 & and371;
  assign sel374 = reg159 ? or285 : sel177;
  assign sel375 = eq296 ? and311 : sel177;
  always @(*) begin
    case (reg66)
      3'h1: sel376 = sel374;
      3'h2: sel376 = sel375;
      default: sel376 = sel177;
    endcase
  end
  assign sel377 = and379 ? reg137 : 1'h0;
  assign and379 = eq372 & reg159;
  assign sel380 = io_flush ? 1'h0 : sel176;
  assign sel381 = io_enq_valid ? sel176 : sel380;
  assign sel382 = (reg66 == 3'h0) ? sel381 : sel176;
  assign sel383 = and384 ? 1'h1 : 1'h0;
  assign and384 = io_enq_valid & and218;
  assign sel385 = reg159 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg66)
      3'h0: sel386 = sel383;
      3'h1: sel386 = sel385;
      default: sel386 = 1'h0;
    endcase
  end
  assign sel387 = and218 ? sel174 : 3'h1;
  assign sel388 = io_flush ? 3'h4 : sel174;
  assign sel389 = io_enq_valid ? sel387 : sel388;
  assign sel390 = ne288 ? 3'h2 : 3'h0;
  assign sel391 = reg159 ? sel390 : sel174;
  assign sel392 = eq296 ? 3'h3 : 3'h0;
  assign sel393 = io_evict_ready ? 3'h0 : sel174;
  always @(*) begin
    case (reg66)
      3'h0: sel394 = sel389;
      3'h1: sel394 = sel391;
      3'h2: sel394 = sel392;
      3'h3: sel394 = sel393;
      default: sel394 = sel174;
    endcase
  end
  assign sel395 = and384 ? or224 : lit190;
  assign sel397 = and258 ? or261 : reg70[533:22];
  assign sel398 = reg159 ? sel397 : lit190;
  always @(*) begin
    case (reg66)
      3'h0: sel399 = sel395;
      3'h1: sel399 = sel398;
      default: sel399 = lit190;
    endcase
  end
  assign sel403 = ne321 ? 1'h1 : 1'h0;
  assign sel404 = eq296 ? 1'h1 : sel403;
  always @(*) begin
    case (reg66)
      3'h0: sel405 = sel383;
      3'h1: sel405 = sel385;
      3'h2: sel405 = sel404;
      default: sel405 = 1'h0;
    endcase
  end
  assign sel406 = and379 ? sel419 : reg13;
  assign sel409 = and379 ? proxy_tag73 : reg17;
  assign sel412 = and218 ? reg70 : io_enq_data;
  assign sel413 = io_flush ? io_enq_data : reg70;
  assign sel414 = io_enq_valid ? sel412 : sel413;
  assign sel415 = (reg66 == 3'h0) ? sel414 : reg70;
  assign sel416 = io_enq_valid ? reg13 : 1'h0;
  assign sel417 = and258 ? reg137 : reg151;
  assign sel418 = reg159 ? sel417 : 1'h0;
  always @(*) begin
    case (reg66)
      3'h0: sel419 = sel416;
      3'h1: sel419 = sel418;
      3'h2: sel419 = reg184;
      3'h3: sel419 = reg184;
      3'h4: sel419 = reg35;
      default: sel419 = 1'h0;
    endcase
  end
  assign sel420 = and384 ? tag_t235 : 22'h0;
  assign sel422 = and258 ? tag_t272 : tag_t276;
  assign sel423 = reg159 ? sel422 : 22'h0;
  assign sel424 = ne321 ? tag_t336 : 22'h0;
  assign sel425 = eq296 ? tag_t302 : sel424;
  always @(*) begin
    case (reg66)
      3'h0: sel426 = sel420;
      3'h1: sel426 = sel423;
      3'h2: sel426 = sel425;
      default: sel426 = 22'h0;
    endcase
  end

  assign io_enq_ready = eq181;
  assign io_evict_data = io_evict_data49;
  assign io_evict_valid = sel363;

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
  wire[511:0] lit457 = 512'h0;
  wire[131:0] io_ctx_a42;
  wire[19:0] io_ctx_a_col_ptr44, io_ctx_a_col_ind45, io_ctx_a_row_ptr46, io_ctx_a_row_ind47, io_ctx_a_values48, io_ctx_x_values50, io_ctx_x_masks51, io_ctx_y_values53, io_ctx_y_masks54, add306, add400, add416, sel439, sel440, sel441, sel485;
  wire[39:0] io_ctx_x49, io_ctx_y52;
  wire[514:0] io_ctrl_rd_rsp_data77;
  wire bindin148, bindin150, bindin154, bindout157, bindin165, bindout168, bindin176, bindout179, bindout187, bindin190, bindin200, bindin201, bindin205, bindout208, bindin217, bindout220, bindin229, bindout232, bindout241, bindin244, bindin254, bindin255, bindin259, bindout262, bindout271, bindin274, bindin277, eq281, eq328, eq332, eq336, and339, and356, or360, eq423, eq434, and435, sel436, sel450, sel451, sel452, eq464, eq468, sel482, sel483, sel487, eq497, and498, eq508, and511, eq515, and518, eq522, and525;
  wire[22:0] bindin151, bindin162, bindin173, bindout184;
  wire[2:0] proxy_type182, bindout193, bindout247, pad406, sel488, sel489, sel490, sel491, sel492, sel493, sel496, proxy_type504, proxy_owner505;
  wire[533:0] bindin202, bindin214, bindin226, bindout238, proxy249, bindin256, bindout268, sel499;
  wire[1:0] proxy_owner265, proxy_type344, sel484;
  reg reg286, reg321, reg373, sel453;
  reg[19:0] reg290, sel305, reg377, sel442, sel443;
  reg[13:0] reg294, reg385;
  wire[5:0] ch_rd_mdata_t309, proxy503;
  wire[13:0] pad312, pad402, pad418, sel444, sel445, sel446;
  reg[2:0] reg316, reg352, sel495;
  reg[533:0] reg342;
  reg[31:0] sel364, reg369;
  reg[511:0] reg381;
  wire[31:0] sub390, add428, sub430, sel433;
  wire[4:0] ch_wr_mdata_t393, ch_wr_mdata_t410;
  wire[511:0] sel447, sel448, sel449, sel486;

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
  assign io_ctrl_rd_rsp_data77 = {io_qpi_rd_rsp_data, proxy_type504};
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
  assign bindin244 = eq332;
  assign proxy249 = {sel486, sel485, sel484};
  assign bindin254 = clk;
  assign bindin255 = reset;
  spmv_write_cache __module28__(.clk(bindin254), .reset(bindin255), .io_enq_data(bindin256), .io_enq_valid(bindin259), .io_evict_ready(bindin274), .io_flush(bindin277), .io_enq_ready(bindout262), .io_evict_data(bindout268), .io_evict_valid(bindout271));
  assign bindin256 = proxy249;
  assign bindin259 = sel483;
  assign proxy_owner265 = bindout268[1:0];
  assign bindin274 = and339;
  assign bindin277 = sel482;
  assign eq281 = io_qpi_rd_req_almostfull == 1'h0;
  always @ (posedge clk) begin
    reg286 <= reset ? 1'h0 : bindout187;
  end
  always @ (posedge clk) begin
    reg290 <= add306;
  end
  always @ (posedge clk) begin
    reg294 <= pad312;
  end
  always @(*) begin
    case (proxy_type182)
      3'h0: sel305 = io_ctx_a_col_ptr44;
      3'h1: sel305 = io_ctx_a_col_ind45;
      3'h2: sel305 = io_ctx_a_row_ptr46;
      3'h3: sel305 = io_ctx_a_row_ind47;
      3'h4: sel305 = io_ctx_a_values48;
      3'h5: sel305 = io_ctx_x_values50;
      default: sel305 = io_ctx_x_masks51;
    endcase
  end
  assign add306 = sel305 + bindout184[22:3];
  assign ch_rd_mdata_t309 = {bindout193, proxy_type182};
  assign pad312 = {{8{1'b0}}, ch_rd_mdata_t309};
  always @ (posedge clk) begin
    reg316 <= reset ? 3'h0 : sel495;
  end
  always @ (posedge clk) begin
    reg321 <= reset ? 1'h0 : sel453;
  end
  assign eq328 = reg321 == 1'h0;
  assign eq332 = reg316 == 3'h0;
  assign eq336 = sel487 == 1'h0;
  assign and339 = eq328 & eq336;
  always @ (posedge clk) begin
    reg342 <= sel499;
  end
  assign proxy_type344 = reg342[1:0];
  always @ (posedge clk) begin
    reg352 <= sel496;
  end
  assign and356 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign or360 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (or360)
      sel364 = 32'h1;
    else if (and356)
      sel364 = 32'h2;
    else
      sel364 = 32'h0;
  end
  always @ (posedge clk) begin
    reg369 <= reset ? 32'h0 : sel433;
  end
  always @ (posedge clk) begin
    reg373 <= sel436;
  end
  always @ (posedge clk) begin
    reg377 <= sel441;
  end
  always @ (posedge clk) begin
    reg381 <= sel449;
  end
  always @ (posedge clk) begin
    reg385 <= sel446;
  end
  assign sub390 = reg369 - sel364;
  assign ch_wr_mdata_t393 = {reg352, proxy_type344};
  assign add400 = sel442 + reg342[21:2];
  assign pad402 = {{9{1'b0}}, ch_wr_mdata_t393};
  assign pad406 = {{1{1'b0}}, proxy_owner265};
  assign ch_wr_mdata_t410 = {pad406, 2'h1};
  assign add416 = sel443 + bindout268[21:2];
  assign pad418 = {{9{1'b0}}, ch_wr_mdata_t410};
  assign eq423 = io_qpi_wr_req_almostfull == 1'h0;
  assign add428 = reg369 + 32'h1;
  assign sub430 = add428 - sel364;
  assign sel433 = and435 ? sub430 : sub390;
  assign eq434 = reg321 == 1'h1;
  assign and435 = eq434 & eq423;
  assign sel436 = and435 ? 1'h1 : 1'h0;
  assign sel439 = bindout271 ? add416 : reg377;
  assign sel440 = sel487 ? add400 : sel439;
  assign sel441 = (reg321 == 1'h0) ? sel440 : reg377;
  always @(*) begin
    case (proxy_type344)
      2'h0: sel442 = io_ctx_y_values53;
      2'h1: sel442 = io_ctx_y_masks54;
      default: sel442 = io_ctx[231:212];
    endcase
  end
  always @(*) begin
    case (2'h1)
      2'h0: sel443 = io_ctx_y_values53;
      2'h1: sel443 = io_ctx_y_masks54;
      default: sel443 = io_ctx[231:212];
    endcase
  end
  assign sel444 = bindout271 ? pad418 : reg385;
  assign sel445 = sel487 ? pad402 : sel444;
  assign sel446 = (reg321 == 1'h0) ? sel445 : reg385;
  assign sel447 = bindout271 ? bindout268[533:22] : reg381;
  assign sel448 = sel487 ? reg342[533:22] : sel447;
  assign sel449 = (reg321 == 1'h0) ? sel448 : reg381;
  assign sel450 = bindout271 ? 1'h1 : reg321;
  assign sel451 = sel487 ? 1'h1 : sel450;
  assign sel452 = eq423 ? 1'h0 : reg321;
  always @(*) begin
    case (reg321)
      1'h0: sel453 = sel451;
      1'h1: sel453 = sel452;
      default: sel453 = reg321;
    endcase
  end
  assign eq464 = bindout238[1:0] == 2'h1;
  assign eq468 = bindout247 == 3'h4;
  assign sel482 = (reg316 == 3'h3) ? 1'h1 : 1'h0;
  assign sel483 = (reg316 == 3'h2) ? 1'h1 : 1'h0;
  assign sel484 = (reg316 == 3'h2) ? reg352[1:0] : 2'h0;
  assign sel485 = (reg316 == 3'h2) ? reg342[21:2] : 20'h0;
  assign sel486 = (reg316 == 3'h2) ? reg342[533:22] : lit457;
  assign sel487 = (reg316 == 3'h1) ? 1'h1 : 1'h0;
  assign sel488 = eq468 ? 3'h3 : 3'h2;
  assign sel489 = eq464 ? sel488 : 3'h1;
  assign sel490 = bindout241 ? sel489 : reg316;
  assign sel491 = eq328 ? 3'h0 : reg316;
  assign sel492 = bindout262 ? 3'h0 : reg316;
  assign sel493 = bindout262 ? 3'h4 : reg316;
  always @(*) begin
    case (reg316)
      3'h0: sel495 = sel490;
      3'h1: sel495 = sel491;
      3'h2: sel495 = sel492;
      3'h3: sel495 = sel493;
      3'h4: sel495 = sel492;
      default: sel495 = reg316;
    endcase
  end
  assign sel496 = and498 ? bindout247 : reg352;
  assign eq497 = reg316 == 3'h0;
  assign and498 = eq497 & bindout241;
  assign sel499 = and498 ? bindout238 : reg342;
  assign proxy503 = io_qpi_rd_rsp_mdata[5:0];
  assign proxy_type504 = proxy503[2:0];
  assign proxy_owner505 = proxy503[5:3];
  assign eq508 = proxy_owner505 == 3'h4;
  assign and511 = io_qpi_rd_rsp_valid & eq508;
  assign eq515 = proxy_owner505 == 3'h1;
  assign and518 = io_qpi_rd_rsp_valid & eq515;
  assign eq522 = proxy_owner505 == 3'h2;
  assign and525 = io_qpi_rd_rsp_valid & eq522;

  assign io_qpi_rd_req_addr = reg290;
  assign io_qpi_rd_req_mdata = reg294;
  assign io_qpi_rd_req_valid = reg286;
  assign io_qpi_wr_req_addr = reg377;
  assign io_qpi_wr_req_mdata = reg385;
  assign io_qpi_wr_req_data = reg381;
  assign io_qpi_wr_req_valid = reg373;
  assign io_ctrl_rd_req_ready = bindout179;
  assign io_ctrl_wr_req_ready = bindout232;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data77;
  assign io_ctrl_rd_rsp_valid = and511;
  assign io_ctrl_outstanding_writes = reg369;
  assign io_walkers_0_rd_req_ready = bindout157;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data77;
  assign io_walkers_0_rd_rsp_valid = and518;
  assign io_walkers_1_rd_req_ready = bindout168;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data77;
  assign io_walkers_1_rd_rsp_valid = and525;
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
  reg[2:0] reg22, reg30;
  wire[1:0] proxy34;
  wire and38, and41, ne61, eq65, ne68, or70;
  wire[2:0] add46, sel48, add52, sel54, sub73;
  reg[511:0] mem56[0:3];

  always @ (posedge clk) begin
    reg22 <= reset ? 3'h0 : sel48;
  end
  always @ (posedge clk) begin
    reg30 <= reset ? 3'h0 : sel54;
  end
  assign proxy34 = reg22[1:0];
  assign and38 = io_deq_ready & ne61;
  assign and41 = io_enq_valid & or70;
  assign add46 = reg22 + 3'h1;
  assign sel48 = and38 ? add46 : reg22;
  assign add52 = reg30 + 3'h1;
  assign sel54 = and41 ? add52 : reg30;
  always @(posedge clk) begin
    if (and41) begin
      mem56[reg30[1:0]] = io_enq_data;
    end
  end
  assign ne61 = reg30 != reg22;
  assign eq65 = reg30[2] == reg22[2];
  assign ne68 = reg30[1:0] != proxy34;
  assign or70 = ne68 | eq65;
  assign sub73 = reg30 - reg22;

  assign io_enq_ready = or70;
  assign io_deq_data = mem56[proxy34];
  assign io_deq_valid = ne61;
  assign io_size = sub73;

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
  wire[95:0] lit497 = 96'h0;
  wire[511:0] lit602 = 512'h0;
  wire[131:0] io_ctx_a42;
  wire[31:0] io_ctx_a_num_parts43, bindout367, pad550, pad561, add564, sub566, add583, sll587, add589, srl593, add632, sel744, sel745, sel746, sel863, sel865, sel866, sel875, sel876, sel877, sel878;
  wire bindin70, bindin72, bindin76, bindout79, bindout104, bindin107, bindin115, bindout125, bindin128, bindin135, bindin136, bindin140, bindout143, bindout168, bindin171, bindin179, bindout189, bindin192, bindin200, bindin201, bindin205, bindout208, bindout217, bindin220, bindout228, bindin236, bindin237, bindin241, bindout244, bindout253, bindin256, bindout264, bindin268, bindin269, bindin270, bindout279, bindin288, bindin291, bindout303, bindin309, bindin315, bindin341, bindout344, bindin353, bindout356, bindout364, bindin375, bindout378, bindout386, bindin394, bindout397, bindout405, bindin414, bindout417, bindin426, bindout429, bindin433, bindin434, bindin438, bindout447, bindin450, eq545, and548, eq554, and557, and559, and569, and572, and574, ne607, ne618, eq626, eq639, and641, eq703, eq709, eq714, and715, and718, and720, and725, and726, and730, sel733, eq734, and735, sel736, sel737, sel738, eq759, ne797, ne800, and802, eq840, and841, sel845, eq846, and847, and864, sel880, sel883, eq884, and885;
  wire[63:0] bindin73, bindin82, bindin137, bindin146, bindout225, bindout261, add528, sel839, sel848;
  wire[351:0] bindout96, bindout160;
  wire[22:0] bindout101, bindout165, proxy335, bindin338, bindin372, bindin391;
  wire[514:0] bindin112, bindin176, bindout361, bindout383, bindout402;
  wire[84:0] bindout122, bindout186, bindin202, bindin238;
  wire[533:0] bindout214, bindout250, proxy346, bindin350, bindin411, bindin423;
  wire[19:0] bindout273, bindout294, proxy513, sub517, sub597, add623, pad652, sel717, sel719, sel741, add787, sel842, sel843;
  wire[13:0] bindout276, bindin282, bindout297, bindin306, bindin312;
  wire[511:0] bindin285, bindout300, bindin333, bindin435, bindout444, pad654, pad673, pad692, sel742;
  wire[2:0] proxy_type336, sel722, sel724, sel727, sel728, sel729, sel731;
  wire[543:0] proxy454, srl780;
  reg[543:0] reg455;
  reg[4:0] reg461, sel861;
  reg[31:0] reg467, sel867, sel879;
  reg[19:0] reg473, reg477, reg490, reg494, sel721, sel844;
  reg[1:0] reg483, sel740, reg749, sel856;
  wire[95:0] proxy502;
  reg[95:0] reg503;
  reg[63:0] reg522;
  reg[2:0] reg533, sel732;
  reg reg540, sel716, sel739;
  wire[415:0] ch_cu_stats_t657, ch_cu_stats_t676;
  reg[511:0] sel694;
  wire[1:0] add699, sel713, sel851, sel852, sel853, sel854, sel855;
  wire[4:0] sub792, sel857, sel858, sel859, sel860;
  wire[479:0] sel869, sel870, sel871, sel872;
  reg[479:0] sel873;

  assign io_ctx_a42 = io_ctx[131:0];
  assign io_ctx_a_num_parts43 = io_ctx_a42[31:0];
  assign bindin70 = clk;
  assign bindin72 = reset;
  spmv_dcsc_walk __module1__(.clk(bindin70), .reset(bindin72), .io_ctrl_start_data(bindin73), .io_ctrl_start_valid(bindin76), .io_ctrl_timer(bindin82), .io_lsu_rd_req_ready(bindin107), .io_lsu_rd_rsp_data(bindin112), .io_lsu_rd_rsp_valid(bindin115), .io_pe_ready(bindin128), .io_ctrl_start_ready(bindout79), .io_ctrl_stats(bindout96), .io_lsu_rd_req_data(bindout101), .io_lsu_rd_req_valid(bindout104), .io_pe_data(bindout122), .io_pe_valid(bindout125));
  assign bindin73 = sel848;
  assign bindin76 = sel845;
  assign bindin82 = reg522;
  assign bindin107 = bindout378;
  assign bindin112 = bindout383;
  assign bindin115 = bindout386;
  assign bindin128 = bindout208;
  assign bindin135 = clk;
  assign bindin136 = reset;
  spmv_dcsc_walk __module8__(.clk(bindin135), .reset(bindin136), .io_ctrl_start_data(bindin137), .io_ctrl_start_valid(bindin140), .io_ctrl_timer(bindin146), .io_lsu_rd_req_ready(bindin171), .io_lsu_rd_rsp_data(bindin176), .io_lsu_rd_rsp_valid(bindin179), .io_pe_ready(bindin192), .io_ctrl_start_ready(bindout143), .io_ctrl_stats(bindout160), .io_lsu_rd_req_data(bindout165), .io_lsu_rd_req_valid(bindout168), .io_pe_data(bindout186), .io_pe_valid(bindout189));
  assign bindin137 = sel839;
  assign bindin140 = sel880;
  assign bindin146 = reg522;
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
  assign proxy335 = {reg473, 3'h0};
  assign proxy_type336 = proxy335[2:0];
  assign bindin338 = proxy335;
  assign bindin341 = sel733;
  assign proxy346 = {sel742, sel741, sel740};
  assign bindin350 = proxy346;
  assign bindin353 = sel716;
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
  assign bindin438 = and548;
  assign bindin450 = sel883;
  assign proxy454 = {sel879, sel873, sel867};
  always @ (posedge clk) begin
    reg455 <= proxy454;
  end
  always @ (posedge clk) begin
    reg461 <= reset ? 5'h0 : sel861;
  end
  always @ (posedge clk) begin
    reg467 <= reset ? 32'h0 : sub566;
  end
  always @ (posedge clk) begin
    reg473 <= reset ? 20'h0 : sel721;
  end
  always @ (posedge clk) begin
    reg477 <= sub597;
  end
  always @ (posedge clk) begin
    reg483 <= reset ? 2'h0 : sel713;
  end
  always @ (posedge clk) begin
    reg490 <= reset ? 20'h0 : sel844;
  end
  always @ (posedge clk) begin
    reg494 <= sub517;
  end
  assign proxy502 = {reg503[95:32], sel746};
  always @ (posedge clk) begin
    reg503 <= reset ? lit497 : proxy502;
  end
  assign proxy513 = io_ctx_a_num_parts43[19:0];
  assign sub517 = proxy513 - 20'h1;
  always @ (posedge clk) begin
    reg522 <= reset ? 64'h0 : add528;
  end
  assign add528 = reg522 + 64'h1;
  always @ (posedge clk) begin
    reg533 <= reset ? 3'h0 : sel732;
  end
  always @ (posedge clk) begin
    reg540 <= reset ? 1'h0 : sel739;
  end
  assign eq545 = bindout361[2:0] == 3'h0;
  assign and548 = bindout364 & eq545;
  assign pad550 = {{31{1'b0}}, sel883};
  assign eq554 = proxy_type336 == 3'h0;
  assign and557 = sel733 & bindout344;
  assign and559 = and557 & eq554;
  assign pad561 = {{31{1'b0}}, and559};
  assign add564 = reg467 + pad561;
  assign sub566 = add564 - pad550;
  assign and569 = bindout79 & bindout228;
  assign and572 = and569 & bindout143;
  assign and574 = and572 & bindout264;
  assign add583 = io_ctx_a_num_parts43 + 32'h1;
  assign sll587 = add583 << 32'h2;
  assign add589 = sll587 + 32'h3f;
  assign srl593 = add589 >> 32'h6;
  assign sub597 = srl593[19:0] - 20'h1;
  assign ne607 = io_ctx_a_num_parts43 != 32'h0;
  assign ne618 = reg467 != 32'h4;
  assign add623 = reg473 + 20'h1;
  assign eq626 = reg473 == reg477;
  assign add632 = reg503[31:0] + 32'h1;
  assign eq639 = reg490 == proxy513;
  assign and641 = eq639 & and574;
  assign pad652 = {{18{1'b0}}, reg483};
  assign pad654 = {{416{1'b0}}, reg503};
  assign ch_cu_stats_t657 = {bindout225, bindout96};
  assign pad673 = {{96{1'b0}}, ch_cu_stats_t657};
  assign ch_cu_stats_t676 = {bindout261, bindout160};
  assign pad692 = {{96{1'b0}}, ch_cu_stats_t676};
  always @(*) begin
    case (reg483)
      2'h1: sel694 = pad673;
      2'h0: sel694 = pad654;
      default: sel694 = pad692;
    endcase
  end
  assign add699 = reg483 + 2'h1;
  assign eq703 = reg483 == 2'h2;
  assign eq709 = bindout367 == 32'h0;
  assign sel713 = and715 ? add699 : reg483;
  assign eq714 = reg533 == 3'h4;
  assign and715 = eq714 & bindout356;
  always @(*) begin
    case (reg533)
      3'h3: sel716 = 1'h1;
      3'h4: sel716 = 1'h1;
      default: sel716 = 1'h0;
    endcase
  end
  assign sel717 = and718 ? 20'h0 : reg473;
  assign and718 = io_start & ne607;
  assign sel719 = and720 ? add623 : reg473;
  assign and720 = ne618 & bindout344;
  always @(*) begin
    case (reg533)
      3'h0: sel721 = sel717;
      3'h1: sel721 = sel719;
      default: sel721 = reg473;
    endcase
  end
  assign sel722 = and718 ? 3'h1 : reg533;
  assign sel724 = and726 ? 3'h2 : reg533;
  assign and725 = bindout344 & eq626;
  assign and726 = ne618 & and725;
  assign sel727 = and641 ? 3'h3 : reg533;
  assign sel728 = bindout356 ? 3'h4 : reg533;
  assign sel729 = and730 ? 3'h5 : reg533;
  assign and730 = bindout356 & eq703;
  assign sel731 = eq709 ? 3'h0 : reg533;
  always @(*) begin
    case (reg533)
      3'h0: sel732 = sel722;
      3'h1: sel732 = sel724;
      3'h2: sel732 = sel727;
      3'h3: sel732 = sel728;
      3'h4: sel732 = sel729;
      3'h5: sel732 = sel731;
      default: sel732 = reg533;
    endcase
  end
  assign sel733 = and735 ? 1'h1 : 1'h0;
  assign eq734 = reg533 == 3'h1;
  assign and735 = eq734 & ne618;
  assign sel736 = ne607 ? 1'h0 : 1'h1;
  assign sel737 = io_start ? sel736 : reg540;
  assign sel738 = eq709 ? 1'h1 : reg540;
  always @(*) begin
    case (reg533)
      3'h0: sel739 = sel737;
      3'h5: sel739 = sel738;
      default: sel739 = reg540;
    endcase
  end
  always @(*) begin
    case (reg533)
      3'h3: sel740 = 2'h1;
      3'h4: sel740 = 2'h2;
      default: sel740 = 2'h0;
    endcase
  end
  assign sel741 = (reg533 == 3'h4) ? pad652 : 20'h0;
  assign sel742 = (reg533 == 3'h4) ? sel694 : lit602;
  assign sel744 = bindout344 ? reg503[31:0] : add632;
  assign sel745 = ne618 ? sel744 : add632;
  assign sel746 = (reg533 == 3'h1) ? sel745 : reg503[31:0];
  always @ (posedge clk) begin
    reg749 <= reset ? 2'h0 : sel856;
  end
  assign eq759 = 5'h0 == reg461;
  assign srl780 = reg455 >> 32'h20;
  assign add787 = reg490 + 20'h1;
  assign sub792 = reg461 - 5'h1;
  assign ne797 = reg461 != 5'h10;
  assign ne800 = reg490 != reg494;
  assign and802 = ne800 & ne797;
  assign sel839 = and841 ? reg455[63:0] : 64'h0;
  assign eq840 = reg749 == 2'h2;
  assign and841 = eq840 & bindout143;
  assign sel842 = bindout79 ? add787 : reg490;
  assign sel843 = bindout143 ? add787 : reg490;
  always @(*) begin
    case (reg749)
      2'h1: sel844 = sel842;
      2'h2: sel844 = sel843;
      default: sel844 = reg490;
    endcase
  end
  assign sel845 = and847 ? 1'h1 : 1'h0;
  assign eq846 = reg749 == 2'h1;
  assign and847 = eq846 & bindout79;
  assign sel848 = and847 ? reg455[63:0] : 64'h0;
  assign sel851 = bindout447 ? 2'h1 : reg749;
  assign sel852 = and802 ? 2'h2 : 2'h0;
  assign sel853 = bindout79 ? sel852 : 2'h2;
  assign sel854 = and802 ? 2'h1 : 2'h0;
  assign sel855 = bindout143 ? sel854 : 2'h1;
  always @(*) begin
    case (reg749)
      2'h0: sel856 = sel851;
      2'h1: sel856 = sel853;
      2'h2: sel856 = sel855;
      default: sel856 = reg749;
    endcase
  end
  assign sel857 = eq759 ? 5'h80 : 5'h81;
  assign sel858 = bindout447 ? sel857 : reg461;
  assign sel859 = bindout79 ? sub792 : reg461;
  assign sel860 = bindout143 ? sub792 : reg461;
  always @(*) begin
    case (reg749)
      2'h0: sel861 = sel858;
      2'h1: sel861 = sel859;
      2'h2: sel861 = sel860;
      default: sel861 = reg461;
    endcase
  end
  assign sel863 = and864 ? bindout444[31:0] : reg455[31:0];
  assign and864 = bindout447 & eq759;
  assign sel865 = bindout79 ? srl780[31:0] : reg455[31:0];
  assign sel866 = bindout143 ? srl780[31:0] : reg455[31:0];
  always @(*) begin
    case (reg749)
      2'h0: sel867 = sel863;
      2'h1: sel867 = sel865;
      2'h2: sel867 = sel866;
      default: sel867 = reg455[31:0];
    endcase
  end
  assign sel869 = eq759 ? bindout444[511:32] : bindout444[479:0];
  assign sel870 = bindout447 ? sel869 : reg455[511:32];
  assign sel871 = bindout79 ? srl780[511:32] : reg455[511:32];
  assign sel872 = bindout143 ? srl780[511:32] : reg455[511:32];
  always @(*) begin
    case (reg749)
      2'h0: sel873 = sel870;
      2'h1: sel873 = sel871;
      2'h2: sel873 = sel872;
      default: sel873 = reg455[511:32];
    endcase
  end
  assign sel875 = eq759 ? reg455[543:512] : bindout444[511:480];
  assign sel876 = bindout447 ? sel875 : reg455[543:512];
  assign sel877 = bindout79 ? srl780[543:512] : reg455[543:512];
  assign sel878 = bindout143 ? srl780[543:512] : reg455[543:512];
  always @(*) begin
    case (reg749)
      2'h0: sel879 = sel876;
      2'h1: sel879 = sel877;
      2'h2: sel879 = sel878;
      default: sel879 = reg455[543:512];
    endcase
  end
  assign sel880 = and841 ? 1'h1 : 1'h0;
  assign sel883 = and885 ? 1'h1 : 1'h0;
  assign eq884 = reg749 == 2'h0;
  assign and885 = eq884 & bindout447;

  assign io_qpi_rd_req_addr = bindout273;
  assign io_qpi_rd_req_mdata = bindout276;
  assign io_qpi_rd_req_valid = bindout279;
  assign io_qpi_wr_req_addr = bindout294;
  assign io_qpi_wr_req_mdata = bindout297;
  assign io_qpi_wr_req_data = bindout300;
  assign io_qpi_wr_req_valid = bindout303;
  assign io_done = reg540;

endmodule
