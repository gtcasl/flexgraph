module ch_queue(
  input wire clk,
  input wire reset,
  input wire[511:0] io_enq_data,
  input wire io_enq_valid,
  output wire io_enq_ready,
  output wire[511:0] io_deq_data,
  output wire io_deq_valid,
  input wire io_deq_ready,
  output wire[1:0] io_size
);
  reg reg189; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg reg198; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[1:0] reg205; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg211; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg218; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl221; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl224; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire add228; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire sel230; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire add234; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire sel236; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire notl239; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl242; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire notl245; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl248; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[1:0] add253; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[1:0] sub257; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[1:0] sel259; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem260 [0:1]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport264; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq277; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl279; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl281; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel285; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl299; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl301; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel305; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire notl307; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire notl310; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg189 <= 1'h0;
    else
      reg189 <= sel230;
  end
  always @ (posedge clk) begin
    if (reset)
      reg198 <= 1'h0;
    else
      reg198 <= sel236;
  end
  always @ (posedge clk) begin
    if (reset)
      reg205 <= 2'h0;
    else
      reg205 <= sel259;
  end
  always @ (posedge clk) begin
    if (reset)
      reg211 <= 1'h0;
    else
      reg211 <= sel285;
  end
  always @ (posedge clk) begin
    if (reset)
      reg218 <= 1'h1;
    else
      reg218 <= sel305;
  end
  assign andl221 = io_deq_ready && notl307;
  assign andl224 = io_enq_valid && notl310;
  assign add228 = reg189 + 1'h1;
  assign sel230 = andl221 ? add228 : reg189;
  assign add234 = reg198 + 1'h1;
  assign sel236 = andl224 ? add234 : reg198;
  assign notl239 = !andl224;
  assign andl242 = andl221 && notl239;
  assign notl245 = !andl221;
  assign andl248 = andl224 && notl245;
  assign add253 = reg205 + 2'h1;
  assign sub257 = reg205 - 2'h1;
  always @(*) begin
    if (andl248)
      sel259 = add253;
    else if (andl242)
      sel259 = sub257;
    else
      sel259 = reg205;
  end
  assign mrport264 = mem260[reg189];
  always @ (posedge clk) begin
    if (andl224) begin
      mem260[reg198] <= io_enq_data;
    end
  end
  assign eq277 = reg205 == 2'h1;
  assign andl279 = eq277 && andl224;
  assign andl281 = andl279 && notl245;
  always @(*) begin
    if (andl281)
      sel285 = 1'h1;
    else if (andl242)
      sel285 = 1'h0;
    else
      sel285 = reg211;
  end
  assign andl299 = eq277 && andl221;
  assign andl301 = andl299 && notl239;
  always @(*) begin
    if (andl301)
      sel305 = 1'h1;
    else if (andl248)
      sel305 = 1'h0;
    else
      sel305 = reg218;
  end
  assign notl307 = !reg218;
  assign notl310 = !reg211;

  assign io_enq_ready = notl310;
  assign io_deq_data = mrport264;
  assign io_deq_valid = notl307;
  assign io_size = reg205;

endmodule


module ch_queue_0(
  input wire clk,
  input wire reset,
  input wire[511:0] io_enq_data,
  input wire io_enq_valid,
  output wire io_enq_ready,
  output wire[511:0] io_deq_data,
  output wire io_deq_valid,
  input wire io_deq_ready,
  output wire[5:0] io_size
);
  reg[4:0] reg523; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[4:0] reg532; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[5:0] reg539; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg546; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg553; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl556; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl559; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[4:0] add564; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[4:0] sel566; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[4:0] add570; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[4:0] sel572; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire notl575; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl578; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire notl581; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl584; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[5:0] add589; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[5:0] sub593; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[5:0] sel595; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem596 [0:31]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport600; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq614; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl616; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl618; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel622; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire eq634; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl636; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl638; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel642; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire notl644; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire notl647; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg523 <= 5'h0;
    else
      reg523 <= sel566;
  end
  always @ (posedge clk) begin
    if (reset)
      reg532 <= 5'h0;
    else
      reg532 <= sel572;
  end
  always @ (posedge clk) begin
    if (reset)
      reg539 <= 6'h0;
    else
      reg539 <= sel595;
  end
  always @ (posedge clk) begin
    if (reset)
      reg546 <= 1'h0;
    else
      reg546 <= sel622;
  end
  always @ (posedge clk) begin
    if (reset)
      reg553 <= 1'h1;
    else
      reg553 <= sel642;
  end
  assign andl556 = io_deq_ready && notl644;
  assign andl559 = io_enq_valid && notl647;
  assign add564 = reg523 + 5'h1;
  assign sel566 = andl556 ? add564 : reg523;
  assign add570 = reg532 + 5'h1;
  assign sel572 = andl559 ? add570 : reg532;
  assign notl575 = !andl559;
  assign andl578 = andl556 && notl575;
  assign notl581 = !andl556;
  assign andl584 = andl559 && notl581;
  assign add589 = reg539 + 6'h1;
  assign sub593 = reg539 - 6'h1;
  always @(*) begin
    if (andl584)
      sel595 = add589;
    else if (andl578)
      sel595 = sub593;
    else
      sel595 = reg539;
  end
  assign mrport600 = mem596[reg523];
  always @ (posedge clk) begin
    if (andl559) begin
      mem596[reg532] <= io_enq_data;
    end
  end
  assign eq614 = reg539 == 6'h1f;
  assign andl616 = eq614 && andl559;
  assign andl618 = andl616 && notl581;
  always @(*) begin
    if (andl618)
      sel622 = 1'h1;
    else if (andl578)
      sel622 = 1'h0;
    else
      sel622 = reg546;
  end
  assign eq634 = reg539 == 6'h1;
  assign andl636 = eq634 && andl556;
  assign andl638 = andl636 && notl575;
  always @(*) begin
    if (andl638)
      sel642 = 1'h1;
    else if (andl584)
      sel642 = 1'h0;
    else
      sel642 = reg553;
  end
  assign notl644 = !reg553;
  assign notl647 = !reg546;

  assign io_enq_ready = notl647;
  assign io_deq_data = mrport600;
  assign io_deq_valid = notl644;
  assign io_size = reg539;

endmodule




module spmv_dcsc_walk(
  input wire clk,
  input wire reset,
  input wire[63:0] io_ctrl_start_data,
  input wire io_ctrl_start_valid,
  output wire io_ctrl_start_ready,
  input wire[63:0] io_ctrl_timer,
  output wire[351:0] io_ctrl_stats,
  output wire[22:0] io_lsu_rd_req_data,
  output wire io_lsu_rd_req_valid,
  input wire io_lsu_rd_req_ready,
  input wire[514:0] io_lsu_rd_rsp_data,
  input wire io_lsu_rd_rsp_valid,
  output wire[84:0] io_pe_data,
  output wire io_pe_valid,
  input wire io_pe_ready
);
  wire[351:0] lit1244 = 352'h0;
  wire[22:0] io_lsu_rd_req_data75; // dcsc_walk.cpp(41)
  reg[19:0] reg101; // dcsc_walk.cpp(41)
  reg[19:0] reg108; // dcsc_walk.cpp(41)
  reg[19:0] reg113; // dcsc_walk.cpp(41)
  reg[19:0] reg118; // dcsc_walk.cpp(41)
  reg[19:0] reg123; // dcsc_walk.cpp(41)
  reg[19:0] reg128; // dcsc_walk.cpp(41)
  reg[19:0] reg135; // dcsc_walk.cpp(41)
  reg[19:0] reg142; // dcsc_walk.cpp(41)
  reg[19:0] reg147; // dcsc_walk.cpp(41)
  reg[19:0] reg152; // dcsc_walk.cpp(41)
  reg[19:0] reg157; // dcsc_walk.cpp(41)
  reg[5:0] reg162; // dcsc_walk.cpp(41)
  reg[31:0] reg167; // dcsc_walk.cpp(41)
  wire bindin315; // dcsc_walk.cpp(41)
  wire bindin316; // dcsc_walk.cpp(41)
  wire[511:0] bindin317; // dcsc_walk.cpp(41)
  wire bindin320; // dcsc_walk.cpp(41)
  wire[511:0] bindout326; // dcsc_walk.cpp(41)
  wire bindout329; // dcsc_walk.cpp(41)
  wire bindin332; // dcsc_walk.cpp(41)
  wire bindin482; // dcsc_walk.cpp(41)
  wire bindin483; // dcsc_walk.cpp(41)
  wire[511:0] bindin484; // dcsc_walk.cpp(41)
  wire bindin487; // dcsc_walk.cpp(41)
  wire[511:0] bindout493; // dcsc_walk.cpp(41)
  wire bindout496; // dcsc_walk.cpp(41)
  wire bindin499; // dcsc_walk.cpp(41)
  wire bindin652; // dcsc_walk.cpp(41)
  wire bindin653; // dcsc_walk.cpp(41)
  wire[511:0] bindin654; // dcsc_walk.cpp(41)
  wire bindin657; // dcsc_walk.cpp(41)
  wire[511:0] bindout663; // dcsc_walk.cpp(41)
  wire bindin669; // dcsc_walk.cpp(41)
  wire bindin822; // dcsc_walk.cpp(41)
  wire bindin823; // dcsc_walk.cpp(41)
  wire[511:0] bindin824; // dcsc_walk.cpp(41)
  wire bindin827; // dcsc_walk.cpp(41)
  wire[511:0] bindout833; // dcsc_walk.cpp(41)
  wire bindin839; // dcsc_walk.cpp(41)
  wire[5:0] bindout842; // dcsc_walk.cpp(41)
  wire bindin989; // dcsc_walk.cpp(41)
  wire bindin990; // dcsc_walk.cpp(41)
  wire[511:0] bindin991; // dcsc_walk.cpp(41)
  wire bindin994; // dcsc_walk.cpp(41)
  wire[511:0] bindout1000; // dcsc_walk.cpp(41)
  wire bindout1003; // dcsc_walk.cpp(41)
  wire bindin1006; // dcsc_walk.cpp(41)
  wire bindin1156; // dcsc_walk.cpp(41)
  wire bindin1157; // dcsc_walk.cpp(41)
  wire[511:0] bindin1158; // dcsc_walk.cpp(41)
  wire bindin1161; // dcsc_walk.cpp(41)
  wire[511:0] bindout1167; // dcsc_walk.cpp(41)
  wire bindout1170; // dcsc_walk.cpp(41)
  wire bindin1173; // dcsc_walk.cpp(41)
  reg[7:0] reg1182; // dcsc_walk.cpp(41)
  reg[7:0] reg1188; // dcsc_walk.cpp(41)
  reg[7:0] reg1194; // dcsc_walk.cpp(41)
  reg[7:0] reg1200; // dcsc_walk.cpp(41)
  reg[7:0] reg1206; // dcsc_walk.cpp(41)
  reg[7:0] reg1212; // dcsc_walk.cpp(41)
  reg[511:0] reg1217; // dcsc_walk.cpp(41)
  reg[511:0] reg1222; // dcsc_walk.cpp(41)
  reg[511:0] reg1227; // dcsc_walk.cpp(41)
  reg[511:0] reg1232; // dcsc_walk.cpp(41)
  reg[31:0] reg1237; // dcsc_walk.cpp(41)
  reg[63:0] reg1242; // dcsc_walk.cpp(41)
  wire[351:0] proxy1259; // dcsc_walk.cpp(41)
  reg[351:0] reg1260; // dcsc_walk.cpp(41)
  wire eq1287; // lsu.h(23)
  wire andl1290; // dcsc_walk.cpp(59)
  wire eq1295; // lsu.h(23)
  wire andl1298; // dcsc_walk.cpp(60)
  wire eq1303; // lsu.h(23)
  wire andl1306; // dcsc_walk.cpp(61)
  wire eq1311; // lsu.h(23)
  wire andl1314; // dcsc_walk.cpp(62)
  wire eq1319; // lsu.h(23)
  wire andl1322; // dcsc_walk.cpp(63)
  wire eq1327; // lsu.h(23)
  wire andl1330; // dcsc_walk.cpp(64)
  reg[22:0] reg1337; // dcsc_walk.cpp(71)
  wire eq1341; // dcsc_walk.cpp(6)
  wire eq1345; // lsu.h(23)
  wire andl1348; // dcsc_walk.cpp(78)
  wire andl1350; // dcsc_walk.cpp(78)
  wire notl1353; // dcsc_walk.cpp(82)
  wire andl1355; // dcsc_walk.cpp(82)
  wire notl1358; // dcsc_walk.cpp(79)
  wire andl1361; // dcsc_walk.cpp(79)
  wire[7:0] add1366; // dcsc_walk.cpp(80)
  wire[7:0] sub1370; // dcsc_walk.cpp(83)
  reg[7:0] sel1372; // dcsc_walk.cpp(79)
  wire eq1375; // lsu.h(23)
  wire andl1380; // dcsc_walk.cpp(78)
  wire notl1383; // dcsc_walk.cpp(82)
  wire andl1385; // dcsc_walk.cpp(82)
  wire notl1388; // dcsc_walk.cpp(79)
  wire andl1391; // dcsc_walk.cpp(79)
  wire[7:0] add1395; // dcsc_walk.cpp(80)
  wire[7:0] sub1399; // dcsc_walk.cpp(83)
  reg[7:0] sel1401; // dcsc_walk.cpp(79)
  wire eq1404; // lsu.h(23)
  wire andl1409; // dcsc_walk.cpp(78)
  wire notl1412; // dcsc_walk.cpp(82)
  wire andl1414; // dcsc_walk.cpp(82)
  wire notl1417; // dcsc_walk.cpp(79)
  wire andl1420; // dcsc_walk.cpp(79)
  wire[7:0] add1424; // dcsc_walk.cpp(80)
  wire[7:0] sub1428; // dcsc_walk.cpp(83)
  reg[7:0] sel1430; // dcsc_walk.cpp(79)
  wire eq1433; // lsu.h(23)
  wire andl1438; // dcsc_walk.cpp(78)
  wire notl1441; // dcsc_walk.cpp(82)
  wire andl1443; // dcsc_walk.cpp(82)
  wire andl1449; // dcsc_walk.cpp(79)
  wire[7:0] add1453; // dcsc_walk.cpp(80)
  wire[7:0] sub1457; // dcsc_walk.cpp(83)
  reg[7:0] sel1459; // dcsc_walk.cpp(79)
  wire eq1462; // lsu.h(23)
  wire andl1467; // dcsc_walk.cpp(78)
  wire notl1470; // dcsc_walk.cpp(82)
  wire andl1472; // dcsc_walk.cpp(82)
  wire notl1475; // dcsc_walk.cpp(79)
  wire andl1478; // dcsc_walk.cpp(79)
  wire[7:0] add1482; // dcsc_walk.cpp(80)
  wire[7:0] sub1486; // dcsc_walk.cpp(83)
  reg[7:0] sel1488; // dcsc_walk.cpp(79)
  wire eq1491; // lsu.h(23)
  wire andl1496; // dcsc_walk.cpp(78)
  wire notl1499; // dcsc_walk.cpp(82)
  wire andl1501; // dcsc_walk.cpp(82)
  wire notl1504; // dcsc_walk.cpp(79)
  wire andl1507; // dcsc_walk.cpp(79)
  wire[7:0] add1511; // dcsc_walk.cpp(80)
  wire[7:0] sub1515; // dcsc_walk.cpp(83)
  reg[7:0] sel1517; // dcsc_walk.cpp(79)
  reg reg1521; // dcsc_walk.cpp(110)
  reg reg1526; // dcsc_walk.cpp(111)
  reg reg1531; // dcsc_walk.cpp(112)
  reg reg1541; // dcsc_walk.cpp(114)
  reg reg1546; // dcsc_walk.cpp(115)
  wire[84:0] proxy1550; // dcsc_walk.cpp(118)
  reg[84:0] reg1551; // dcsc_walk.cpp(118)
  reg reg1564; // dcsc_walk.cpp(121)
  wire[19:0] sub1585; // dcsc_walk.cpp(144)
  wire[19:0] shl1593; // dcsc_walk.cpp(156)
  wire[19:0] shr1597; // dcsc_walk.cpp(156)
  wire ne1602; // dcsc_walk.cpp(157)
  wire[31:0] add1611; // dcsc_walk.cpp(164)
  wire ne1627; // dcsc_walk.cpp(175)
  wire[31:0] add1634; // dcsc_walk.cpp(183)
  wire andl1641; // dcsc_walk.cpp(192)
  wire[19:0] andb1647; // dcsc_walk.cpp(195)
  wire[19:0] shl1651; // dcsc_walk.cpp(195)
  wire[511:0] shr1653; // dcsc_walk.cpp(195)
  wire[511:0] shr1666; // dcsc_walk.cpp(200)
  wire ne1676; // dcsc_walk.cpp(204)
  wire[19:0] add1686; // dcsc_walk.cpp(214)
  wire[19:0] andb1688; // dcsc_walk.cpp(214)
  wire[19:0] shl1691; // dcsc_walk.cpp(214)
  wire[511:0] shr1693; // dcsc_walk.cpp(214)
  wire[19:0] shl1705; // dcsc_walk.cpp(221)
  wire[19:0] shr1708; // dcsc_walk.cpp(221)
  wire[19:0] sub1735; // dcsc_walk.cpp(253)
  wire[19:0] shr1739; // dcsc_walk.cpp(255)
  wire[19:0] shl1743; // dcsc_walk.cpp(256)
  wire[19:0] shr1746; // dcsc_walk.cpp(256)
  wire eq1749; // dcsc_walk.cpp(257)
  wire[19:0] andb1754; // dcsc_walk.cpp(259)
  wire[19:0] shl1757; // dcsc_walk.cpp(259)
  wire[511:0] shr1759; // dcsc_walk.cpp(259)
  wire[19:0] andb1770; // dcsc_walk.cpp(260)
  wire[31:0] shl1772; // dcsc_walk.cpp(260)
  wire[31:0] andb1775; // dcsc_walk.cpp(260)
  wire ne1777; // dcsc_walk.cpp(260)
  wire[19:0] shl1787; // dcsc_walk.cpp(276)
  wire[19:0] shr1790; // dcsc_walk.cpp(276)
  wire eq1793; // dcsc_walk.cpp(277)
  wire ne1802; // dcsc_walk.cpp(291)
  wire[31:0] add1809; // dcsc_walk.cpp(299)
  wire[511:0] shr1828; // dcsc_walk.cpp(314)
  wire[31:0] andb1842; // dcsc_walk.cpp(315)
  wire ne1844; // dcsc_walk.cpp(315)
  wire ne1862; // dcsc_walk.cpp(331)
  wire[31:0] add1868; // dcsc_walk.cpp(339)
  wire[19:0] shl1876; // dcsc_walk.cpp(348)
  wire[19:0] shr1879; // dcsc_walk.cpp(348)
  wire[19:0] shl1885; // dcsc_walk.cpp(349)
  wire[19:0] add1887; // dcsc_walk.cpp(349)
  wire[19:0] shr1890; // dcsc_walk.cpp(349)
  wire[19:0] sub1895; // dcsc_walk.cpp(355)
  wire[19:0] sub1901; // dcsc_walk.cpp(357)
  wire ne1909; // dcsc_walk.cpp(365)
  wire[31:0] add1916; // dcsc_walk.cpp(373)
  wire ne1925; // dcsc_walk.cpp(384)
  wire[19:0] add1930; // dcsc_walk.cpp(388)
  wire ne1933; // dcsc_walk.cpp(389)
  wire[31:0] add1940; // dcsc_walk.cpp(398)
  wire eq1947; // dcsc_walk.cpp(409)
  wire[19:0] andb1953; // dcsc_walk.cpp(414)
  wire[19:0] shl1956; // dcsc_walk.cpp(414)
  wire[511:0] shr1958; // dcsc_walk.cpp(414)
  wire[511:0] shr1970; // dcsc_walk.cpp(417)
  wire[19:0] andb1983; // dcsc_walk.cpp(428)
  wire[19:0] shl1986; // dcsc_walk.cpp(428)
  wire[511:0] shr1988; // dcsc_walk.cpp(428)
  wire[511:0] shr2000; // dcsc_walk.cpp(429)
  wire[19:0] add2008; // dcsc_walk.cpp(437)
  wire ne2011; // dcsc_walk.cpp(439)
  wire eq2018; // dcsc_walk.cpp(441)
  wire[31:0] add2029; // dcsc_walk.cpp(457)
  wire ne2037; // dcsc_walk.cpp(468)
  wire[511:0] shr2059; // dcsc_walk.cpp(484)
  wire[511:0] shr2071; // dcsc_walk.cpp(486)
  wire[63:0] sub2085; // dcsc_walk.cpp(498)
  wire lt2094; // /home/blaise/dev/cash/include/select.h(132)
  wire[31:0] sel2096; // dcsc_walk.cpp(509)
  wire eq2100; // dcsc_walk.cpp(509)
  wire[31:0] sel2102; // dcsc_walk.cpp(509)
  wire gt2105; // /home/blaise/dev/cash/include/select.h(137)
  wire[31:0] sel2107; // dcsc_walk.cpp(510)
  wire[31:0] add2110; // dcsc_walk.cpp(511)
  wire[31:0] add2114; // dcsc_walk.cpp(512)
  wire sel2121; // dcsc_walk.cpp(441)
  wire sel2122; // dcsc_walk.cpp(439)
  wire sel2123; // dcsc_walk.cpp(435)
  wire eq2124; // dcsc_walk.cpp(138)
  wire andb2125; // dcsc_walk.cpp(138)
  reg sel2126; // dcsc_walk.cpp(138)
  wire[19:0] sel2128; // dcsc_walk.cpp(138)
  wire[31:0] sel2130; // dcsc_walk.cpp(138)
  wire[31:0] sel2132; // dcsc_walk.cpp(138)
  reg sel2134; // dcsc_walk.cpp(138)
  wire[31:0] sel2135; // dcsc_walk.cpp(410)
  wire[31:0] sel2136; // dcsc_walk.cpp(409)
  wire eq2137; // dcsc_walk.cpp(138)
  wire andb2138; // dcsc_walk.cpp(138)
  wire sel2139; // dcsc_walk.cpp(410)
  wire andb2140; // dcsc_walk.cpp(138)
  wire andb2142; // dcsc_walk.cpp(138)
  wire[19:0] sel2143; // dcsc_walk.cpp(138)
  wire[31:0] sel2144; // dcsc_walk.cpp(138)
  wire[19:0] sel2145; // dcsc_walk.cpp(387)
  wire andb2146; // dcsc_walk.cpp(138)
  reg[19:0] sel2147; // dcsc_walk.cpp(138)
  wire sel2148; // dcsc_walk.cpp(308)
  wire eq2149; // dcsc_walk.cpp(138)
  wire andb2150; // dcsc_walk.cpp(138)
  wire sel2151; // dcsc_walk.cpp(157)
  wire sel2152; // dcsc_walk.cpp(175)
  wire sel2154; // dcsc_walk.cpp(291)
  wire sel2155; // dcsc_walk.cpp(331)
  wire sel2156; // dcsc_walk.cpp(365)
  wire sel2157; // dcsc_walk.cpp(384)
  reg sel2158; // dcsc_walk.cpp(138)
  wire[19:0] sel2159; // dcsc_walk.cpp(138)
  wire[22:0] sel2160; // dcsc_walk.cpp(141)
  wire[22:0] sel2161; // dcsc_walk.cpp(160)
  wire andb2162; // dcsc_walk.cpp(138)
  wire[22:0] sel2163; // dcsc_walk.cpp(178)
  wire andb2164; // dcsc_walk.cpp(138)
  wire[22:0] sel2165; // dcsc_walk.cpp(204)
  wire[22:0] sel2166; // dcsc_walk.cpp(192)
  wire[22:0] sel2167; // dcsc_walk.cpp(226)
  wire[22:0] sel2169; // dcsc_walk.cpp(240)
  wire[22:0] sel2170; // dcsc_walk.cpp(260)
  wire[22:0] sel2171; // dcsc_walk.cpp(257)
  wire[22:0] sel2172; // dcsc_walk.cpp(277)
  wire[22:0] sel2173; // dcsc_walk.cpp(294)
  wire andb2174; // dcsc_walk.cpp(138)
  wire[22:0] sel2175; // dcsc_walk.cpp(315)
  wire[22:0] sel2176; // dcsc_walk.cpp(308)
  wire[22:0] sel2177; // dcsc_walk.cpp(334)
  wire andb2178; // dcsc_walk.cpp(138)
  wire[22:0] sel2179; // dcsc_walk.cpp(368)
  wire andb2180; // dcsc_walk.cpp(138)
  wire[22:0] sel2181; // dcsc_walk.cpp(389)
  wire[22:0] sel2182; // dcsc_walk.cpp(387)
  wire[22:0] sel2184; // dcsc_walk.cpp(409)
  wire[22:0] sel2185; // dcsc_walk.cpp(441)
  wire[22:0] sel2186; // dcsc_walk.cpp(439)
  wire[22:0] sel2187; // dcsc_walk.cpp(435)
  wire[22:0] sel2188; // dcsc_walk.cpp(470)
  wire[22:0] sel2189; // dcsc_walk.cpp(468)
  wire[22:0] sel2191; // dcsc_walk.cpp(507)
  reg[22:0] sel2192; // dcsc_walk.cpp(138)
  reg[2:0] sel2193; // dcsc_walk.cpp(138)
  reg[19:0] sel2194; // dcsc_walk.cpp(138)
  wire[19:0] sel2195; // dcsc_walk.cpp(141)
  reg[19:0] sel2196; // dcsc_walk.cpp(138)
  wire[19:0] sel2197; // dcsc_walk.cpp(141)
  wire eq2198; // dcsc_walk.cpp(138)
  wire andb2199; // dcsc_walk.cpp(138)
  wire[511:0] sel2200; // dcsc_walk.cpp(410)
  wire[5:0] sel2204; // dcsc_walk.cpp(138)
  wire[19:0] sel2205; // dcsc_walk.cpp(277)
  wire[19:0] sel2206; // dcsc_walk.cpp(138)
  wire[31:0] sel2208; // dcsc_walk.cpp(507)
  wire eq2209; // dcsc_walk.cpp(138)
  wire andb2210; // dcsc_walk.cpp(138)
  wire[31:0] sel2212; // dcsc_walk.cpp(507)
  wire[31:0] sel2216; // dcsc_walk.cpp(507)
  wire[31:0] sel2220; // dcsc_walk.cpp(507)
  wire[31:0] sel2224; // dcsc_walk.cpp(160)
  wire[31:0] sel2225; // dcsc_walk.cpp(157)
  wire[31:0] sel2226; // dcsc_walk.cpp(138)
  wire[31:0] sel2228; // dcsc_walk.cpp(178)
  wire[31:0] sel2229; // dcsc_walk.cpp(175)
  wire[31:0] sel2232; // dcsc_walk.cpp(240)
  reg[31:0] sel2233; // dcsc_walk.cpp(138)
  wire[31:0] sel2235; // dcsc_walk.cpp(368)
  wire[31:0] sel2236; // dcsc_walk.cpp(365)
  wire[31:0] sel2237; // dcsc_walk.cpp(138)
  wire[31:0] sel2239; // dcsc_walk.cpp(387)
  wire[31:0] sel2240; // dcsc_walk.cpp(384)
  wire[31:0] sel2241; // dcsc_walk.cpp(409)
  reg[31:0] sel2242; // dcsc_walk.cpp(138)
  wire[31:0] sel2244; // dcsc_walk.cpp(334)
  wire[31:0] sel2245; // dcsc_walk.cpp(331)
  wire[31:0] sel2246; // dcsc_walk.cpp(138)
  wire[31:0] sel2248; // dcsc_walk.cpp(294)
  wire[31:0] sel2249; // dcsc_walk.cpp(291)
  wire[31:0] sel2250; // dcsc_walk.cpp(308)
  reg[31:0] sel2251; // dcsc_walk.cpp(138)
  wire[31:0] sel2253; // dcsc_walk.cpp(435)
  reg[31:0] sel2255; // dcsc_walk.cpp(138)
  wire[19:0] sel2256; // dcsc_walk.cpp(192)
  wire[19:0] sel2257; // dcsc_walk.cpp(435)
  reg[19:0] sel2258; // dcsc_walk.cpp(138)
  wire[511:0] sel2259; // dcsc_walk.cpp(192)
  wire eq2260; // dcsc_walk.cpp(138)
  wire andb2261; // dcsc_walk.cpp(138)
  wire[19:0] sel2262; // dcsc_walk.cpp(192)
  reg[19:0] sel2263; // dcsc_walk.cpp(138)
  wire[63:0] sel2264; // dcsc_walk.cpp(141)
  wire sel2267; // dcsc_walk.cpp(192)
  wire sel2270; // dcsc_walk.cpp(192)
  wire sel2271; // dcsc_walk.cpp(240)
  reg sel2272; // dcsc_walk.cpp(138)
  wire[19:0] sel2273; // dcsc_walk.cpp(138)
  wire[511:0] sel2279; // dcsc_walk.cpp(192)
  wire[19:0] sel2282; // dcsc_walk.cpp(240)
  reg[19:0] sel2283; // dcsc_walk.cpp(138)
  wire[511:0] sel2284; // dcsc_walk.cpp(308)
  wire[19:0] sel2287; // dcsc_walk.cpp(257)
  wire[19:0] sel2288; // dcsc_walk.cpp(138)

  assign io_lsu_rd_req_data75 = {sel2194, sel2193};
  always @ (posedge clk) begin
    reg101 <= sel2196;
  end
  always @ (posedge clk) begin
    reg108 <= sel2197;
  end
  always @ (posedge clk) begin
    reg113 <= sel2263;
  end
  always @ (posedge clk) begin
    reg118 <= sel2258;
  end
  always @ (posedge clk) begin
    reg123 <= sel2283;
  end
  always @ (posedge clk) begin
    reg128 <= sel2273;
  end
  always @ (posedge clk) begin
    if (reset)
      reg135 <= 20'hfffff;
    else
      reg135 <= sel2288;
  end
  always @ (posedge clk) begin
    if (reset)
      reg142 <= 20'hfffff;
    else
      reg142 <= sel2206;
  end
  always @ (posedge clk) begin
    reg147 <= sel2147;
  end
  always @ (posedge clk) begin
    reg152 <= sel2159;
  end
  always @ (posedge clk) begin
    reg157 <= sel2143;
  end
  always @ (posedge clk) begin
    reg162 <= sel2204;
  end
  always @ (posedge clk) begin
    reg167 <= sel2136;
  end
  assign bindin315 = clk;
  assign bindin316 = reset;
  ch_queue __module3__(.clk(bindin315), .reset(bindin316), .io_enq_data(bindin317), .io_enq_valid(bindin320), .io_deq_ready(bindin332), .io_deq_data(bindout326), .io_deq_valid(bindout329));
  assign bindin317 = io_lsu_rd_rsp_data[514:3];
  assign bindin320 = andl1290;
  assign bindin332 = reg1521;
  assign bindin482 = clk;
  assign bindin483 = reset;
  ch_queue __module4__(.clk(bindin482), .reset(bindin483), .io_enq_data(bindin484), .io_enq_valid(bindin487), .io_deq_ready(bindin499), .io_deq_data(bindout493), .io_deq_valid(bindout496));
  assign bindin484 = io_lsu_rd_rsp_data[514:3];
  assign bindin487 = andl1298;
  assign bindin499 = reg1526;
  assign bindin652 = clk;
  assign bindin653 = reset;
  ch_queue_0 __module5__(.clk(bindin652), .reset(bindin653), .io_enq_data(bindin654), .io_enq_valid(bindin657), .io_deq_ready(bindin669), .io_deq_data(bindout663));
  assign bindin654 = io_lsu_rd_rsp_data[514:3];
  assign bindin657 = andl1306;
  assign bindin669 = reg1531;
  assign bindin822 = clk;
  assign bindin823 = reset;
  ch_queue_0 __module6__(.clk(bindin822), .reset(bindin823), .io_enq_data(bindin824), .io_enq_valid(bindin827), .io_deq_ready(bindin839), .io_deq_data(bindout833), .io_size(bindout842));
  assign bindin824 = io_lsu_rd_rsp_data[514:3];
  assign bindin827 = andl1314;
  assign bindin839 = reg1531;
  assign bindin989 = clk;
  assign bindin990 = reset;
  ch_queue __module7__(.clk(bindin989), .reset(bindin990), .io_enq_data(bindin991), .io_enq_valid(bindin994), .io_deq_ready(bindin1006), .io_deq_data(bindout1000), .io_deq_valid(bindout1003));
  assign bindin991 = io_lsu_rd_rsp_data[514:3];
  assign bindin994 = andl1322;
  assign bindin1006 = reg1541;
  assign bindin1156 = clk;
  assign bindin1157 = reset;
  ch_queue __module8__(.clk(bindin1156), .reset(bindin1157), .io_enq_data(bindin1158), .io_enq_valid(bindin1161), .io_deq_ready(bindin1173), .io_deq_data(bindout1167), .io_deq_valid(bindout1170));
  assign bindin1158 = io_lsu_rd_rsp_data[514:3];
  assign bindin1161 = andl1330;
  assign bindin1173 = reg1546;
  always @ (posedge clk) begin
    if (reset)
      reg1182 <= 8'h0;
    else
      reg1182 <= sel1372;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1188 <= 8'h0;
    else
      reg1188 <= sel1401;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1194 <= 8'h0;
    else
      reg1194 <= sel1430;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1200 <= 8'h0;
    else
      reg1200 <= sel1459;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1206 <= 8'h0;
    else
      reg1206 <= sel1488;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1212 <= 8'h0;
    else
      reg1212 <= sel1517;
  end
  always @ (posedge clk) begin
    reg1217 <= sel2259;
  end
  always @ (posedge clk) begin
    reg1222 <= sel2279;
  end
  always @ (posedge clk) begin
    reg1227 <= sel2284;
  end
  always @ (posedge clk) begin
    reg1232 <= sel2200;
  end
  always @ (posedge clk) begin
    reg1237 <= sel2144;
  end
  always @ (posedge clk) begin
    reg1242 <= sel2264;
  end
  assign proxy1259 = {sel2255, sel2251, sel2246, sel2242, sel2237, sel2233, sel2226, sel2220, sel2216, sel2212, sel2208};
  always @ (posedge clk) begin
    if (reset)
      reg1260 <= lit1244;
    else
      reg1260 <= proxy1259;
  end
  assign eq1287 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign andl1290 = io_lsu_rd_rsp_valid && eq1287;
  assign eq1295 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign andl1298 = io_lsu_rd_rsp_valid && eq1295;
  assign eq1303 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign andl1306 = io_lsu_rd_rsp_valid && eq1303;
  assign eq1311 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign andl1314 = io_lsu_rd_rsp_valid && eq1311;
  assign eq1319 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  assign andl1322 = io_lsu_rd_rsp_valid && eq1319;
  assign eq1327 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign andl1330 = io_lsu_rd_rsp_valid && eq1327;
  always @ (posedge clk) begin
    if (reset)
      reg1337 <= 23'h1;
    else
      reg1337 <= sel2192;
  end
  assign eq1341 = reg1337 == 23'h1;
  assign eq1345 = sel2193 == 3'h1;
  assign andl1348 = sel2158 && io_lsu_rd_req_ready;
  assign andl1350 = andl1348 && eq1345;
  assign notl1353 = !andl1350;
  assign andl1355 = notl1353 && reg1521;
  assign notl1358 = !reg1521;
  assign andl1361 = andl1350 && notl1358;
  assign add1366 = reg1182 + 8'h1;
  assign sub1370 = reg1182 - 8'h1;
  always @(*) begin
    if (andl1361)
      sel1372 = add1366;
    else if (andl1355)
      sel1372 = sub1370;
    else
      sel1372 = reg1182;
  end
  assign eq1375 = sel2193 == 3'h2;
  assign andl1380 = andl1348 && eq1375;
  assign notl1383 = !andl1380;
  assign andl1385 = notl1383 && reg1526;
  assign notl1388 = !reg1526;
  assign andl1391 = andl1380 && notl1388;
  assign add1395 = reg1188 + 8'h1;
  assign sub1399 = reg1188 - 8'h1;
  always @(*) begin
    if (andl1391)
      sel1401 = add1395;
    else if (andl1385)
      sel1401 = sub1399;
    else
      sel1401 = reg1188;
  end
  assign eq1404 = sel2193 == 3'h3;
  assign andl1409 = andl1348 && eq1404;
  assign notl1412 = !andl1409;
  assign andl1414 = notl1412 && reg1531;
  assign notl1417 = !reg1531;
  assign andl1420 = andl1409 && notl1417;
  assign add1424 = reg1194 + 8'h1;
  assign sub1428 = reg1194 - 8'h1;
  always @(*) begin
    if (andl1420)
      sel1430 = add1424;
    else if (andl1414)
      sel1430 = sub1428;
    else
      sel1430 = reg1194;
  end
  assign eq1433 = sel2193 == 3'h4;
  assign andl1438 = andl1348 && eq1433;
  assign notl1441 = !andl1438;
  assign andl1443 = notl1441 && reg1531;
  assign andl1449 = andl1438 && notl1417;
  assign add1453 = reg1200 + 8'h1;
  assign sub1457 = reg1200 - 8'h1;
  always @(*) begin
    if (andl1449)
      sel1459 = add1453;
    else if (andl1443)
      sel1459 = sub1457;
    else
      sel1459 = reg1200;
  end
  assign eq1462 = sel2193 == 3'h5;
  assign andl1467 = andl1348 && eq1462;
  assign notl1470 = !andl1467;
  assign andl1472 = notl1470 && reg1541;
  assign notl1475 = !reg1541;
  assign andl1478 = andl1467 && notl1475;
  assign add1482 = reg1206 + 8'h1;
  assign sub1486 = reg1206 - 8'h1;
  always @(*) begin
    if (andl1478)
      sel1488 = add1482;
    else if (andl1472)
      sel1488 = sub1486;
    else
      sel1488 = reg1206;
  end
  assign eq1491 = sel2193 == 3'h6;
  assign andl1496 = andl1348 && eq1491;
  assign notl1499 = !andl1496;
  assign andl1501 = notl1499 && reg1546;
  assign notl1504 = !reg1546;
  assign andl1507 = andl1496 && notl1504;
  assign add1511 = reg1212 + 8'h1;
  assign sub1515 = reg1212 - 8'h1;
  always @(*) begin
    if (andl1507)
      sel1517 = add1511;
    else if (andl1501)
      sel1517 = sub1515;
    else
      sel1517 = reg1212;
  end
  always @ (posedge clk) begin
    reg1521 <= sel2267;
  end
  always @ (posedge clk) begin
    reg1526 <= sel2272;
  end
  always @ (posedge clk) begin
    reg1531 <= sel2123;
  end
  always @ (posedge clk) begin
    reg1541 <= sel2139;
  end
  always @ (posedge clk) begin
    reg1546 <= sel2148;
  end
  assign proxy1550 = {sel2134, sel2132, sel2130, sel2128};
  always @ (posedge clk) begin
    reg1551 <= proxy1550;
  end
  always @ (posedge clk) begin
    reg1564 <= sel2126;
  end
  assign sub1585 = io_ctrl_start_data[51:32] - 20'h1;
  assign shl1593 = reg101 << 32'h2;
  assign shr1597 = shl1593 >> 32'h6;
  assign ne1602 = reg1182 != 8'h2;
  assign add1611 = reg1260[159:128] + 32'h1;
  assign ne1627 = reg1188 != 8'h2;
  assign add1634 = reg1260[191:160] + 32'h1;
  assign andl1641 = bindout329 && bindout496;
  assign andb1647 = reg101 & 20'hf;
  assign shl1651 = andb1647 << 32'h5;
  assign shr1653 = bindout326 >> shl1651;
  assign shr1666 = bindout493 >> shl1651;
  assign ne1676 = andb1647 != 20'hf;
  assign add1686 = reg101 + 20'h1;
  assign andb1688 = add1686 & 20'hf;
  assign shl1691 = andb1688 << 32'h5;
  assign shr1693 = reg1222 >> shl1691;
  assign shl1705 = add1686 << 32'h2;
  assign shr1708 = shl1705 >> 32'h6;
  assign sub1735 = reg123 - 20'h1;
  assign shr1739 = reg113 >> 32'h5;
  assign shl1743 = shr1739 << 32'h2;
  assign shr1746 = shl1743 >> 32'h6;
  assign eq1749 = shr1746 == reg135;
  assign andb1754 = shr1739 & 20'hf;
  assign shl1757 = andb1754 << 32'h5;
  assign shr1759 = reg1227 >> shl1757;
  assign andb1770 = reg113 & 20'h1f;
  assign shl1772 = 32'h1 << andb1770;
  assign andb1775 = shr1759[31:0] & shl1772;
  assign ne1777 = andb1775 != 32'h0;
  assign shl1787 = reg113 << 32'h2;
  assign shr1790 = shl1787 >> 32'h6;
  assign eq1793 = shr1790 == reg142;
  assign ne1802 = reg1212 != 8'h2;
  assign add1809 = reg1260[319:288] + 32'h1;
  assign shr1828 = bindout1167 >> shl1757;
  assign andb1842 = shr1828[31:0] & shl1772;
  assign ne1844 = andb1842 != 32'h0;
  assign ne1862 = reg1206 != 8'h2;
  assign add1868 = reg1260[287:256] + 32'h1;
  assign shl1876 = reg118 << 32'h2;
  assign shr1879 = shl1876 >> 32'h6;
  assign shl1885 = reg123 << 32'h2;
  assign add1887 = shl1885 + 20'h3f;
  assign shr1890 = add1887 >> 32'h6;
  assign sub1895 = reg152 - reg147;
  assign sub1901 = reg152 - 20'h1;
  assign ne1909 = reg1194 != 8'h20;
  assign add1916 = reg1260[223:192] + 32'h1;
  assign ne1925 = reg1200 != 8'h20;
  assign add1930 = reg147 + 20'h1;
  assign ne1933 = reg147 != reg157;
  assign add1940 = reg1260[255:224] + 32'h1;
  assign eq1947 = bindout842 == reg162;
  assign andb1953 = reg113 & 20'hf;
  assign shl1956 = andb1953 << 32'h5;
  assign shr1958 = bindout1000 >> shl1956;
  assign shr1970 = reg1232 >> shl1956;
  assign andb1983 = reg118 & 20'hf;
  assign shl1986 = andb1983 << 32'h5;
  assign shr1988 = bindout663 >> shl1986;
  assign shr2000 = bindout833 >> shl1986;
  assign add2008 = reg118 + 20'h1;
  assign ne2011 = reg118 != reg128;
  assign eq2018 = andb1983 == 20'hf;
  assign add2029 = reg1260[351:320] + 32'h1;
  assign ne2037 = reg101 != reg108;
  assign shr2059 = reg1217 >> shl1651;
  assign shr2071 = reg1222 >> shl1651;
  assign sub2085 = io_ctrl_timer - reg1242;
  assign lt2094 = reg1260[63:32] < reg1237;
  assign sel2096 = lt2094 ? reg1260[63:32] : reg1237;
  assign eq2100 = reg1260[63:32] == 32'h0;
  assign sel2102 = eq2100 ? reg1237 : sel2096;
  assign gt2105 = reg1260[63:32] > reg1237;
  assign sel2107 = gt2105 ? reg1260[63:32] : reg1237;
  assign add2110 = reg1260[127:96] + reg1237;
  assign add2114 = reg1260[31:0] + 32'h1;
  assign sel2121 = eq2018 ? 1'h1 : 1'h0;
  assign sel2122 = ne2011 ? sel2121 : 1'h1;
  assign sel2123 = andb2125 ? sel2122 : 1'h0;
  assign eq2124 = reg1337 == 23'h20000;
  assign andb2125 = eq2124 & io_pe_ready;
  always @(*) begin
    case (reg1337)
      23'h020000: sel2126 = 1'h1;
      23'h400000: sel2126 = 1'h1;
      default: sel2126 = 1'h0;
    endcase
  end
  assign sel2128 = (reg1337 == 23'h20000) ? shr1988[19:0] : reg1551[19:0];
  assign sel2130 = (reg1337 == 23'h20000) ? shr2000[31:0] : reg1551[51:20];
  assign sel2132 = (reg1337 == 23'h20000) ? reg167 : reg1551[83:52];
  always @(*) begin
    case (reg1337)
      23'h020000: sel2134 = 1'h0;
      23'h400000: sel2134 = 1'h1;
      default: sel2134 = reg1551[84];
    endcase
  end
  assign sel2135 = bindout1003 ? shr1958[31:0] : shr1970[31:0];
  assign sel2136 = andb2138 ? sel2135 : reg167;
  assign eq2137 = reg1337 == 23'h10000;
  assign andb2138 = eq2137 & eq1947;
  assign sel2139 = andb2142 ? 1'h1 : 1'h0;
  assign andb2140 = eq1947 & bindout1003;
  assign andb2142 = eq2137 & andb2140;
  assign sel2143 = (reg1337 == 23'h2000) ? sub1901 : reg157;
  assign sel2144 = (reg1337 == 23'h200000) ? sub2085[31:0] : reg1237;
  assign sel2145 = andb2146 ? add1930 : reg147;
  assign andb2146 = ne1925 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg1337)
      23'h001000: sel2147 = shr1879;
      23'h008000: sel2147 = sel2145;
      default: sel2147 = reg147;
    endcase
  end
  assign sel2148 = andb2150 ? 1'h1 : 1'h0;
  assign eq2149 = reg1337 == 23'h400;
  assign andb2150 = eq2149 & bindout1170;
  assign sel2151 = ne1602 ? 1'h1 : 1'h0;
  assign sel2152 = ne1627 ? 1'h1 : 1'h0;
  assign sel2154 = ne1802 ? 1'h1 : 1'h0;
  assign sel2155 = ne1862 ? 1'h1 : 1'h0;
  assign sel2156 = ne1909 ? 1'h1 : 1'h0;
  assign sel2157 = ne1925 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1337)
      23'h000002: sel2158 = sel2151;
      23'h000004: sel2158 = sel2152;
      23'h000010: sel2158 = sel2152;
      23'h000200: sel2158 = sel2154;
      23'h000800: sel2158 = sel2155;
      23'h004000: sel2158 = sel2156;
      23'h008000: sel2158 = sel2157;
      default: sel2158 = 1'h0;
    endcase
  end
  assign sel2159 = (reg1337 == 23'h1000) ? shr1890 : reg152;
  assign sel2160 = io_ctrl_start_valid ? 23'h2 : reg1337;
  assign sel2161 = andb2162 ? 23'h4 : reg1337;
  assign andb2162 = ne1602 & io_lsu_rd_req_ready;
  assign sel2163 = andb2164 ? 23'h8 : reg1337;
  assign andb2164 = ne1627 & io_lsu_rd_req_ready;
  assign sel2165 = ne1676 ? 23'h40 : 23'h10;
  assign sel2166 = andl1641 ? sel2165 : reg1337;
  assign sel2167 = andb2164 ? 23'h20 : reg1337;
  assign sel2169 = bindout496 ? 23'h80 : reg1337;
  assign sel2170 = ne1777 ? 23'h100 : 23'h80000;
  assign sel2171 = eq1749 ? sel2170 : 23'h200;
  assign sel2172 = eq1793 ? 23'h1000 : 23'h800;
  assign sel2173 = andb2174 ? 23'h400 : reg1337;
  assign andb2174 = ne1802 & io_lsu_rd_req_ready;
  assign sel2175 = ne1844 ? 23'h100 : 23'h80000;
  assign sel2176 = bindout1170 ? sel2175 : reg1337;
  assign sel2177 = andb2178 ? 23'h1000 : reg1337;
  assign andb2178 = ne1862 & io_lsu_rd_req_ready;
  assign sel2179 = andb2180 ? 23'h8000 : reg1337;
  assign andb2180 = ne1909 & io_lsu_rd_req_ready;
  assign sel2181 = ne1933 ? 23'h4000 : 23'h10000;
  assign sel2182 = andb2146 ? sel2181 : reg1337;
  assign sel2184 = eq1947 ? 23'h20000 : reg1337;
  assign sel2185 = eq2018 ? 23'h40000 : reg1337;
  assign sel2186 = ne2011 ? sel2185 : 23'h80000;
  assign sel2187 = io_pe_ready ? sel2186 : reg1337;
  assign sel2188 = ne1676 ? 23'h100000 : 23'h2;
  assign sel2189 = ne2037 ? sel2188 : 23'h200000;
  assign sel2191 = io_pe_ready ? 23'h1 : reg1337;
  always @(*) begin
    case (reg1337)
      23'h000001: sel2192 = sel2160;
      23'h000002: sel2192 = sel2161;
      23'h000004: sel2192 = sel2163;
      23'h000008: sel2192 = sel2166;
      23'h000040: sel2192 = 23'h80;
      23'h000010: sel2192 = sel2167;
      23'h000020: sel2192 = sel2169;
      23'h000080: sel2192 = sel2171;
      23'h000100: sel2192 = sel2172;
      23'h000200: sel2192 = sel2173;
      23'h000400: sel2192 = sel2176;
      23'h000800: sel2192 = sel2177;
      23'h001000: sel2192 = 23'h2000;
      23'h002000: sel2192 = 23'h4000;
      23'h004000: sel2192 = sel2179;
      23'h008000: sel2192 = sel2182;
      23'h010000: sel2192 = sel2184;
      23'h020000: sel2192 = sel2187;
      23'h040000: sel2192 = 23'h20000;
      23'h080000: sel2192 = sel2189;
      23'h100000: sel2192 = sel2165;
      23'h200000: sel2192 = 23'h400000;
      23'h400000: sel2192 = sel2191;
      default: sel2192 = reg1337;
    endcase
  end
  always @(*) begin
    case (reg1337)
      23'h000002: sel2193 = 3'h1;
      23'h000004: sel2193 = 3'h2;
      23'h000010: sel2193 = 3'h2;
      23'h000200: sel2193 = 3'h6;
      23'h000800: sel2193 = 3'h5;
      23'h004000: sel2193 = 3'h3;
      23'h008000: sel2193 = 3'h4;
      default: sel2193 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg1337)
      23'h000002: sel2194 = shr1597;
      23'h000004: sel2194 = shr1597;
      23'h000010: sel2194 = shr1708;
      23'h000200: sel2194 = reg135;
      23'h000800: sel2194 = shr1790;
      23'h004000: sel2194 = reg147;
      23'h008000: sel2194 = reg147;
      default: sel2194 = 20'h0;
    endcase
  end
  assign sel2195 = io_ctrl_start_valid ? io_ctrl_start_data[19:0] : reg101;
  always @(*) begin
    case (reg1337)
      23'h000001: sel2196 = sel2195;
      23'h080000: sel2196 = add1686;
      default: sel2196 = reg101;
    endcase
  end
  assign sel2197 = andb2199 ? sub1585 : reg108;
  assign eq2198 = reg1337 == 23'h1;
  assign andb2199 = eq2198 & io_ctrl_start_valid;
  assign sel2200 = andb2142 ? bindout1000 : reg1232;
  assign sel2204 = (reg1337 == 23'h2000) ? sub1895[5:0] : reg162;
  assign sel2205 = eq1793 ? reg142 : shr1790;
  assign sel2206 = (reg1337 == 23'h100) ? sel2205 : reg142;
  assign sel2208 = andb2210 ? add2114 : reg1260[31:0];
  assign eq2209 = reg1337 == 23'h400000;
  assign andb2210 = eq2209 & io_pe_ready;
  assign sel2212 = andb2210 ? sel2102 : reg1260[63:32];
  assign sel2216 = andb2210 ? sel2107 : reg1260[95:64];
  assign sel2220 = andb2210 ? add2110 : reg1260[127:96];
  assign sel2224 = io_lsu_rd_req_ready ? reg1260[159:128] : add1611;
  assign sel2225 = ne1602 ? sel2224 : add1611;
  assign sel2226 = (reg1337 == 23'h2) ? sel2225 : reg1260[159:128];
  assign sel2228 = io_lsu_rd_req_ready ? reg1260[191:160] : add1634;
  assign sel2229 = ne1627 ? sel2228 : add1634;
  assign sel2232 = bindout496 ? reg1260[191:160] : add1634;
  always @(*) begin
    case (reg1337)
      23'h000004: sel2233 = sel2229;
      23'h000010: sel2233 = sel2229;
      23'h000020: sel2233 = sel2232;
      default: sel2233 = reg1260[191:160];
    endcase
  end
  assign sel2235 = io_lsu_rd_req_ready ? reg1260[223:192] : add1916;
  assign sel2236 = ne1909 ? sel2235 : add1916;
  assign sel2237 = (reg1337 == 23'h4000) ? sel2236 : reg1260[223:192];
  assign sel2239 = io_lsu_rd_req_ready ? reg1260[255:224] : add1940;
  assign sel2240 = ne1925 ? sel2239 : add1940;
  assign sel2241 = eq1947 ? reg1260[255:224] : add1940;
  always @(*) begin
    case (reg1337)
      23'h008000: sel2242 = sel2240;
      23'h010000: sel2242 = sel2241;
      default: sel2242 = reg1260[255:224];
    endcase
  end
  assign sel2244 = io_lsu_rd_req_ready ? reg1260[287:256] : add1868;
  assign sel2245 = ne1862 ? sel2244 : add1868;
  assign sel2246 = (reg1337 == 23'h800) ? sel2245 : reg1260[287:256];
  assign sel2248 = io_lsu_rd_req_ready ? reg1260[319:288] : add1809;
  assign sel2249 = ne1802 ? sel2248 : add1809;
  assign sel2250 = bindout1170 ? reg1260[319:288] : add1809;
  always @(*) begin
    case (reg1337)
      23'h000200: sel2251 = sel2249;
      23'h000400: sel2251 = sel2250;
      default: sel2251 = reg1260[319:288];
    endcase
  end
  assign sel2253 = io_pe_ready ? reg1260[351:320] : add2029;
  always @(*) begin
    case (reg1337)
      23'h020000: sel2255 = sel2253;
      23'h400000: sel2255 = sel2253;
      default: sel2255 = reg1260[351:320];
    endcase
  end
  assign sel2256 = andl1641 ? shr1666[19:0] : reg118;
  assign sel2257 = io_pe_ready ? add2008 : reg118;
  always @(*) begin
    case (reg1337)
      23'h000008: sel2258 = sel2256;
      23'h020000: sel2258 = sel2257;
      23'h100000: sel2258 = shr2071[19:0];
      default: sel2258 = reg118;
    endcase
  end
  assign sel2259 = andb2261 ? bindout326 : reg1217;
  assign eq2260 = reg1337 == 23'h8;
  assign andb2261 = eq2260 & andl1641;
  assign sel2262 = andl1641 ? shr1653[19:0] : reg113;
  always @(*) begin
    case (reg1337)
      23'h000008: sel2263 = sel2262;
      23'h100000: sel2263 = shr2059[19:0];
      default: sel2263 = reg113;
    endcase
  end
  assign sel2264 = andb2199 ? io_ctrl_timer : reg1242;
  assign sel2267 = andb2261 ? 1'h1 : 1'h0;
  assign sel2270 = andl1641 ? 1'h1 : 1'h0;
  assign sel2271 = bindout496 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1337)
      23'h000008: sel2272 = sel2270;
      23'h000020: sel2272 = sel2271;
      default: sel2272 = 1'h0;
    endcase
  end
  assign sel2273 = (reg1337 == 23'h80) ? sub1735 : reg128;
  assign sel2279 = andb2261 ? bindout493 : reg1222;
  assign sel2282 = bindout496 ? bindout493[19:0] : reg123;
  always @(*) begin
    case (reg1337)
      23'h000040: sel2283 = shr1693[19:0];
      23'h000020: sel2283 = sel2282;
      default: sel2283 = reg123;
    endcase
  end
  assign sel2284 = andb2150 ? bindout1167 : reg1227;
  assign sel2287 = eq1749 ? reg135 : shr1746;
  assign sel2288 = (reg1337 == 23'h80) ? sel2287 : reg135;

  assign io_ctrl_start_ready = eq1341;
  assign io_ctrl_stats = reg1260;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data75;
  assign io_lsu_rd_req_valid = sel2158;
  assign io_pe_data = reg1551;
  assign io_pe_valid = reg1564;

endmodule


module ch_pipe(
  input wire clk,
  input wire reset,
  input wire[20:0] io_enq_data,
  input wire io_enq_valid,
  output wire io_enq_ready,
  output wire[20:0] io_deq_data,
  output wire io_deq_valid,
  input wire io_deq_ready
);
  wire[2:0] proxy4737; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[2:0] reg4738; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[20:0] reg4746; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4755; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4764; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  wire inv4773; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orb4775; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4780; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orb4782; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4787; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orb4789; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire[20:0] sel4792; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andb4793; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4795; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4797; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andb4798; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4800; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4802; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andb4803; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4805; // /home/blaise/dev/cash/include/htl/pipe.h(38)

  assign proxy4737 = {sel4805, sel4800, sel4795};
  always @ (posedge clk) begin
    if (reset)
      reg4738 <= 3'h0;
    else
      reg4738 <= proxy4737;
  end
  always @ (posedge clk) begin
    reg4746 <= sel4792;
  end
  always @ (posedge clk) begin
    reg4755 <= sel4797;
  end
  always @ (posedge clk) begin
    reg4764 <= sel4802;
  end
  assign inv4773 = ~reg4738[2];
  assign orb4775 = inv4773 | io_deq_ready;
  assign inv4780 = ~reg4738[1];
  assign orb4782 = inv4780 | orb4775;
  assign inv4787 = ~reg4738[0];
  assign orb4789 = inv4787 | orb4782;
  assign sel4792 = andb4793 ? io_enq_data : reg4746;
  assign andb4793 = orb4789 & io_enq_valid;
  assign sel4795 = orb4789 ? io_enq_valid : reg4738[0];
  assign sel4797 = andb4798 ? reg4746 : reg4755;
  assign andb4798 = orb4782 & reg4738[0];
  assign sel4800 = orb4782 ? reg4738[0] : reg4738[1];
  assign sel4802 = andb4803 ? reg4755 : reg4764;
  assign andb4803 = orb4775 & reg4738[1];
  assign sel4805 = orb4775 ? reg4738[1] : reg4738[2];

  assign io_enq_ready = orb4789;
  assign io_deq_data = reg4764;
  assign io_deq_valid = reg4738[2];

endmodule


module spmv_pe(
  input wire clk,
  input wire reset,
  input wire[84:0] io_req_data,
  input wire io_req_valid,
  output wire io_req_ready,
  output wire[533:0] io_lsu_wr_req_data,
  output wire io_lsu_wr_req_valid,
  input wire io_lsu_wr_req_ready,
  output wire[63:0] io_stats,
  output wire io_is_idle
);
  wire[511:0] lit5178 = 512'h0;
  wire[533:0] io_lsu_wr_req_data4668; // pe.cpp(19)
  wire[20:0] proxy4807; // pe.cpp(19)
  wire bindin4813; // pe.cpp(19)
  wire bindin4815; // pe.cpp(19)
  wire[20:0] bindin4816; // pe.cpp(19)
  wire bindin4819; // pe.cpp(19)
  wire bindout4822; // pe.cpp(19)
  wire[20:0] bindout4827; // pe.cpp(19)
  wire bindout4830; // pe.cpp(19)
  wire bindin4833; // pe.cpp(19)
  wire bindin4960; // pe.cpp(19)
  wire bindin4961; // pe.cpp(19)
  wire[20:0] bindin4962; // pe.cpp(19)
  wire bindin4965; // pe.cpp(19)
  wire[20:0] bindout4973; // pe.cpp(19)
  wire bindout4976; // pe.cpp(19)
  wire bindin4979; // pe.cpp(19)
  reg[31:0] mem4980 [0:31]; // pe.cpp(19)
  reg[31:0] reg4986; // pe.cpp(19)
  reg[31:0] reg4991; // pe.cpp(19)
  reg[31:0] reg4997; // pe.cpp(19)
  reg[31:0] reg5003; // pe.cpp(19)
  reg[19:0] reg5018; // pe.cpp(19)
  wire[63:0] proxy5026; // pe.cpp(19)
  reg[63:0] reg5027; // pe.cpp(19)
  reg[1:0] reg5039; // pe.cpp(35)
  wire[31:0] shl5043; // pe.cpp(38)
  wire[31:0] shl5046; // pe.cpp(39)
  wire notl5049; // pe.cpp(43)
  wire eq5053; // pe.cpp(7)
  wire orl5055; // pe.cpp(7)
  wire notl5058; // pe.cpp(47)
  wire[31:0] andb5061; // pe.cpp(46)
  wire eq5064; // pe.cpp(46)
  wire andl5067; // pe.cpp(46)
  wire orl5069; // pe.cpp(46)
  wire eq5072; // pe.cpp(54)
  wire eq5076; // pe.cpp(7)
  wire andl5078; // pe.cpp(7)
  wire[31:0] mrport5080; // pe.cpp(57)
  wire[31:0] andb5083; // pe.cpp(57)
  wire ne5086; // pe.cpp(57)
  wire[31:0] sel5088; // pe.cpp(57)
  wire andl5091; // pe.cpp(62)
  wire[31:0] udfs5093; // pe.cpp(65)
  wire andl5096; // pe.cpp(70)
  wire[19:0] andb5101; // pe.cpp(72)
  wire[31:0] udfs5105; // pe.cpp(74)
  wire andl5111; // pe.cpp(7)
  wire notl5114; // pe.cpp(81)
  wire andl5116; // pe.cpp(81)
  wire notl5119; // pe.cpp(79)
  wire andl5122; // pe.cpp(79)
  wire[31:0] add5126; // pe.cpp(80)
  wire[31:0] sub5130; // pe.cpp(82)
  reg[31:0] sel5132; // pe.cpp(79)
  wire notl5134; // pe.cpp(87)
  wire andl5137; // pe.cpp(87)
  wire notl5140; // pe.cpp(88)
  wire andl5143; // pe.cpp(88)
  wire ne5146; // pe.cpp(90)
  wire andl5149; // pe.cpp(90)
  wire[31:0] inv5152; // pe.cpp(91)
  wire[31:0] andb5155; // pe.cpp(91)
  wire[31:0] orb5157; // pe.cpp(91)
  wire[31:0] orb5166; // pe.cpp(96)
  wire[31:0] sel5168; // pe.cpp(90)
  reg[31:0] sel5169; // pe.cpp(89)
  wire[19:0] andb5173; // pe.cpp(101)
  wire[19:0] sel5175; // pe.cpp(100)
  wire andl5190; // pe.cpp(119)
  wire[19:0] andb5194; // pe.cpp(120)
  wire[31:0] orb5199; // pe.cpp(125)
  wire andl5202; // pe.cpp(129)
  wire[511:0] proxy5208; // pe.cpp(138)
  wire[31:0] mrport5209; // pe.cpp(140)
  wire[31:0] mrport5213; // pe.cpp(140)
  wire[31:0] mrport5217; // pe.cpp(140)
  wire[31:0] mrport5221; // pe.cpp(140)
  wire[31:0] mrport5225; // pe.cpp(140)
  wire[31:0] mrport5229; // pe.cpp(140)
  wire[31:0] mrport5233; // pe.cpp(140)
  wire[31:0] mrport5237; // pe.cpp(140)
  wire[31:0] mrport5241; // pe.cpp(140)
  wire[31:0] mrport5245; // pe.cpp(140)
  wire[31:0] mrport5249; // pe.cpp(140)
  wire[31:0] mrport5253; // pe.cpp(140)
  wire[31:0] mrport5257; // pe.cpp(140)
  wire[31:0] mrport5261; // pe.cpp(140)
  wire[31:0] mrport5265; // pe.cpp(140)
  wire[31:0] mrport5269; // pe.cpp(140)
  wire[19:0] shl5276; // pe.cpp(143)
  wire[19:0] shr5280; // pe.cpp(143)
  wire[31:0] add5288; // pe.cpp(152)
  wire[511:0] proxy5291; // pe.cpp(157)
  wire[31:0] mrport5293; // pe.cpp(159)
  wire[31:0] mrport5297; // pe.cpp(159)
  wire[31:0] mrport5301; // pe.cpp(159)
  wire[31:0] mrport5305; // pe.cpp(159)
  wire[31:0] mrport5309; // pe.cpp(159)
  wire[31:0] mrport5313; // pe.cpp(159)
  wire[31:0] mrport5317; // pe.cpp(159)
  wire[31:0] mrport5321; // pe.cpp(159)
  wire[31:0] mrport5325; // pe.cpp(159)
  wire[31:0] mrport5329; // pe.cpp(159)
  wire[31:0] mrport5333; // pe.cpp(159)
  wire[31:0] mrport5337; // pe.cpp(159)
  wire[31:0] mrport5341; // pe.cpp(159)
  wire[31:0] mrport5345; // pe.cpp(159)
  wire[31:0] mrport5349; // pe.cpp(159)
  wire[31:0] mrport5353; // pe.cpp(159)
  wire[19:0] add5366; // pe.cpp(162)
  wire[19:0] shr5379; // pe.cpp(177)
  wire[19:0] shl5382; // pe.cpp(177)
  wire[19:0] shr5385; // pe.cpp(177)
  wire[511:0] pad5387; // pe.cpp(178)
  wire[19:0] andb5394; // pe.cpp(178)
  wire[19:0] shl5397; // pe.cpp(178)
  wire[511:0] shl5399; // pe.cpp(178)
  wire[31:0] add5405; // pe.cpp(186)
  wire[31:0] sel5408; // pe.cpp(147)
  reg[31:0] sel5410; // pe.cpp(116)
  wire[31:0] sel5412; // pe.cpp(181)
  wire[31:0] sel5413; // pe.cpp(116)
  reg sel5414; // pe.cpp(116)
  reg[1:0] sel5415; // pe.cpp(116)
  reg[19:0] sel5416; // pe.cpp(116)
  reg[511:0] sel5417; // pe.cpp(116)
  wire[4:0] sel5418; // pe.cpp(116)
  wire[1:0] sel5419; // pe.cpp(129)
  wire[1:0] sel5420; // pe.cpp(147)
  wire[1:0] sel5421; // pe.cpp(166)
  wire[1:0] sel5422; // pe.cpp(181)
  reg[1:0] sel5423; // pe.cpp(116)
  wire sel5424; // pe.cpp(116)
  wire[31:0] sel5425; // pe.cpp(116)
  wire[31:0] sel5426; // pe.cpp(124)
  wire[31:0] sel5427; // pe.cpp(129)
  wire[31:0] sel5428; // pe.cpp(116)
  wire[31:0] sel5429; // pe.cpp(129)
  wire eq5430; // pe.cpp(116)
  wire andb5431; // pe.cpp(116)

  assign io_lsu_wr_req_data4668 = {sel5417, sel5416, sel5415};
  assign proxy4807 = {io_req_data[84], io_req_data[19:0]};
  assign bindin4813 = clk;
  assign bindin4815 = reset;
  ch_pipe __module17__(.clk(bindin4813), .reset(bindin4815), .io_enq_data(bindin4816), .io_enq_valid(bindin4819), .io_deq_ready(bindin4833), .io_enq_ready(bindout4822), .io_deq_data(bindout4827), .io_deq_valid(bindout4830));
  assign bindin4816 = proxy4807;
  assign bindin4819 = andl5091;
  assign bindin4833 = orl5069;
  assign bindin4960 = clk;
  assign bindin4961 = reset;
  ch_pipe __module18__(.clk(bindin4960), .reset(bindin4961), .io_enq_data(bindin4962), .io_enq_valid(bindin4965), .io_deq_ready(bindin4979), .io_deq_data(bindout4973), .io_deq_valid(bindout4976));
  assign bindin4962 = bindout4827;
  assign bindin4965 = andl5096;
  assign bindin4979 = orl5055;
  assign mrport5080 = mem4980[andb5101[4:0]];
  assign mrport5209 = mem4980[5'h0];
  assign mrport5213 = mem4980[5'h1];
  assign mrport5217 = mem4980[5'h2];
  assign mrport5221 = mem4980[5'h3];
  assign mrport5225 = mem4980[5'h4];
  assign mrport5229 = mem4980[5'h5];
  assign mrport5233 = mem4980[5'h6];
  assign mrport5237 = mem4980[5'h7];
  assign mrport5241 = mem4980[5'h8];
  assign mrport5245 = mem4980[5'h9];
  assign mrport5249 = mem4980[5'ha];
  assign mrport5253 = mem4980[5'hb];
  assign mrport5257 = mem4980[5'hc];
  assign mrport5261 = mem4980[5'hd];
  assign mrport5265 = mem4980[5'he];
  assign mrport5269 = mem4980[5'hf];
  assign mrport5293 = mem4980[5'h10];
  assign mrport5297 = mem4980[5'h11];
  assign mrport5301 = mem4980[5'h12];
  assign mrport5305 = mem4980[5'h13];
  assign mrport5309 = mem4980[5'h14];
  assign mrport5313 = mem4980[5'h15];
  assign mrport5317 = mem4980[5'h16];
  assign mrport5321 = mem4980[5'h17];
  assign mrport5325 = mem4980[5'h18];
  assign mrport5329 = mem4980[5'h19];
  assign mrport5333 = mem4980[5'h1a];
  assign mrport5337 = mem4980[5'h1b];
  assign mrport5341 = mem4980[5'h1c];
  assign mrport5345 = mem4980[5'h1d];
  assign mrport5349 = mem4980[5'h1e];
  assign mrport5353 = mem4980[5'h1f];
  always @ (posedge clk) begin
    if (sel5424) begin
      mem4980[sel5418] <= sel5425;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg4986 <= 32'h0;
    else
      reg4986 <= sel5428;
  end
  always @ (posedge clk) begin
    reg4991 <= sel5429;
  end
  always @ (posedge clk) begin
    if (reset)
      reg4997 <= 32'h0;
    else
      reg4997 <= sel5169;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5003 <= 32'h0;
    else
      reg5003 <= sel5132;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5018 <= 20'h0;
    else
      reg5018 <= sel5175;
  end
  assign proxy5026 = {sel5413, sel5410};
  always @ (posedge clk) begin
    if (reset)
      reg5027 <= 64'h0;
    else
      reg5027 <= proxy5026;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5039 <= 2'h0;
    else
      reg5039 <= sel5423;
  end
  assign shl5043 = 32'h1 << andb5101[4:0];
  assign shl5046 = 32'h1 << sel5418;
  assign notl5049 = !bindout4976;
  assign eq5053 = 2'h0 == reg5039;
  assign orl5055 = eq5053 || notl5049;
  assign notl5058 = !bindout4830;
  assign andb5061 = reg4997 & shl5043;
  assign eq5064 = 32'h0 == andb5061;
  assign andl5067 = orl5055 && eq5064;
  assign orl5069 = andl5067 || notl5058;
  assign eq5072 = 32'h0 == reg5003;
  assign eq5076 = reg5039 == 2'h0;
  assign andl5078 = eq5076 && eq5072;
  assign andb5083 = reg4986 & shl5043;
  assign ne5086 = 32'h0 != andb5083;
  assign sel5088 = ne5086 ? mrport5080 : 32'h0;
  assign andl5091 = io_req_valid && bindout4822;
  fp_mult __fp_mult5093(.clock(clk), .clk_en(orl5069), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs5093));
  assign andl5096 = bindout4830 && orl5069;
  assign andb5101 = bindout4827[19:0] & 20'h1f;
  fp_add __fp_add5105(.clock(clk), .clk_en(orl5055), .dataa(udfs5093), .datab(sel5088), .result(udfs5105));
  assign andl5111 = eq5053 && bindout4976;
  assign notl5114 = !andl5091;
  assign andl5116 = notl5114 && andl5111;
  assign notl5119 = !andl5111;
  assign andl5122 = andl5091 && notl5119;
  assign add5126 = reg5003 + 32'h1;
  assign sub5130 = reg5003 - 32'h1;
  always @(*) begin
    if (andl5122)
      sel5132 = add5126;
    else if (andl5116)
      sel5132 = sub5130;
    else
      sel5132 = reg5003;
  end
  assign notl5134 = !bindout4827[20];
  assign andl5137 = andl5096 && notl5134;
  assign notl5140 = !bindout4973[20];
  assign andl5143 = andl5111 && notl5140;
  assign ne5146 = shl5043 != shl5046;
  assign andl5149 = andl5137 && ne5146;
  assign inv5152 = ~shl5046;
  assign andb5155 = reg4997 & inv5152;
  assign orb5157 = andb5155 | shl5043;
  assign orb5166 = reg4997 | shl5043;
  assign sel5168 = andl5149 ? orb5157 : andb5155;
  always @(*) begin
    if (andl5143)
      sel5169 = sel5168;
    else if (andl5137)
      sel5169 = orb5166;
    else
      sel5169 = reg4997;
  end
  assign andb5173 = bindout4973[19:0] & 20'hfffe0;
  assign sel5175 = andl5143 ? andb5173 : reg5018;
  assign andl5190 = bindout4976 && notl5140;
  assign andb5194 = bindout4973[19:0] & 20'h1f;
  assign orb5199 = reg4986 | shl5046;
  assign andl5202 = bindout4976 && bindout4973[20];
  assign proxy5208 = {mrport5269, mrport5265, mrport5261, mrport5257, mrport5253, mrport5249, mrport5245, mrport5241, mrport5237, mrport5233, mrport5229, mrport5225, mrport5221, mrport5217, mrport5213, mrport5209};
  assign shl5276 = reg5018 << 32'h2;
  assign shr5280 = shl5276 >> 32'h6;
  assign add5288 = reg5027[31:0] + 32'h1;
  assign proxy5291 = {mrport5353, mrport5349, mrport5345, mrport5341, mrport5337, mrport5333, mrport5329, mrport5325, mrport5321, mrport5317, mrport5313, mrport5309, mrport5305, mrport5301, mrport5297, mrport5293};
  assign add5366 = shr5280 + 20'h1;
  assign shr5379 = reg5018 >> 32'h5;
  assign shl5382 = shr5379 << 32'h2;
  assign shr5385 = shl5382 >> 32'h6;
  assign pad5387 = {{480{1'b0}}, reg4991};
  assign andb5394 = shr5379 & 20'hf;
  assign shl5397 = andb5394 << 32'h5;
  assign shl5399 = pad5387 << shl5397;
  assign add5405 = reg5027[63:32] + 32'h1;
  assign sel5408 = io_lsu_wr_req_ready ? reg5027[31:0] : add5288;
  always @(*) begin
    case (reg5039)
      2'h1: sel5410 = sel5408;
      2'h2: sel5410 = sel5408;
      default: sel5410 = reg5027[31:0];
    endcase
  end
  assign sel5412 = io_lsu_wr_req_ready ? reg5027[63:32] : add5405;
  assign sel5413 = (reg5039 == 2'h3) ? sel5412 : reg5027[63:32];
  always @(*) begin
    case (reg5039)
      2'h1: sel5414 = 1'h1;
      2'h2: sel5414 = 1'h1;
      2'h3: sel5414 = 1'h1;
      default: sel5414 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg5039)
      2'h1: sel5415 = 2'h0;
      2'h2: sel5415 = 2'h0;
      2'h3: sel5415 = 2'h1;
      default: sel5415 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg5039)
      2'h1: sel5416 = shr5280;
      2'h2: sel5416 = add5366;
      2'h3: sel5416 = shr5385;
      default: sel5416 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg5039)
      2'h1: sel5417 = proxy5208;
      2'h2: sel5417 = proxy5291;
      2'h3: sel5417 = shl5399;
      default: sel5417 = lit5178;
    endcase
  end
  assign sel5418 = (reg5039 == 2'h0) ? andb5194[4:0] : 5'h0;
  assign sel5419 = andl5202 ? 2'h1 : reg5039;
  assign sel5420 = io_lsu_wr_req_ready ? 2'h2 : reg5039;
  assign sel5421 = io_lsu_wr_req_ready ? 2'h3 : reg5039;
  assign sel5422 = io_lsu_wr_req_ready ? 2'h0 : reg5039;
  always @(*) begin
    case (reg5039)
      2'h0: sel5423 = sel5419;
      2'h1: sel5423 = sel5420;
      2'h2: sel5423 = sel5421;
      2'h3: sel5423 = sel5422;
      default: sel5423 = reg5039;
    endcase
  end
  assign sel5424 = (reg5039 == 2'h0) ? andl5190 : 1'h0;
  assign sel5425 = (reg5039 == 2'h0) ? udfs5105 : 32'h0;
  assign sel5426 = sel5424 ? orb5199 : reg4986;
  assign sel5427 = andl5202 ? 32'h0 : sel5426;
  assign sel5428 = (reg5039 == 2'h0) ? sel5427 : reg4986;
  assign sel5429 = andb5431 ? reg4986 : reg4991;
  assign eq5430 = reg5039 == 2'h0;
  assign andb5431 = eq5430 & andl5202;

  assign io_req_ready = bindout4822;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data4668;
  assign io_lsu_wr_req_valid = sel5414;
  assign io_stats = reg5027;
  assign io_is_idle = andl5078;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel6458; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6458 = io_in[47:24];
      3'h1: sel6458 = io_in[23:0];
      default: sel6458 = io_in[71:48];
    endcase
  end

  assign io_out = sel6458;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy6505; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  reg[8:0] reg6506; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  wire[2:0] proxy6512; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6514; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6516; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6518; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire andl6525; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire andl6531; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6534; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6536; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6539; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6543; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6548; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6550; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6559; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6561; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6566; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6569; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6577; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6580; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6582; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6585; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6589; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6594; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6596; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6601; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6604; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire inv6609; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6612; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire orr6617; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6619; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6622; // /home/blaise/dev/cash/include/htl/arbiter.h(30)

  assign proxy6505 = {reg6506[8:6], andl6596, reg6506[4:3], andl6561, andl6550, reg6506[0]};
  always @ (posedge clk) begin
    if (reset)
      reg6506 <= 9'h0;
    else
      reg6506 <= proxy6505;
  end
  assign proxy6512 = {andl6604, andl6569, 1'h0};
  assign proxy6514 = {andl6612, 1'h0, andl6525};
  assign proxy6516 = {1'h0, andl6577, andl6531};
  assign proxy6518 = {andl6622, andl6585, andl6539};
  assign andl6525 = io_in[0] && reg6506[1];
  assign andl6531 = io_in[0] && reg6506[2];
  assign orr6534 = |proxy6512;
  assign inv6536 = ~orr6534;
  assign andl6539 = io_in[0] && inv6536;
  assign inv6543 = ~andl6539;
  assign orl6548 = reg6506[1] || andl6585;
  assign andl6550 = orl6548 && inv6543;
  assign orl6559 = reg6506[2] || andl6622;
  assign andl6561 = orl6559 && inv6543;
  assign inv6566 = ~reg6506[1];
  assign andl6569 = io_in[1] && inv6566;
  assign andl6577 = io_in[1] && reg6506[5];
  assign orr6580 = |proxy6514;
  assign inv6582 = ~orr6580;
  assign andl6585 = io_in[1] && inv6582;
  assign inv6589 = ~andl6585;
  assign orl6594 = reg6506[5] || andl6622;
  assign andl6596 = orl6594 && inv6589;
  assign inv6601 = ~reg6506[2];
  assign andl6604 = io_in[2] && inv6601;
  assign inv6609 = ~reg6506[5];
  assign andl6612 = io_in[2] && inv6609;
  assign orr6617 = |proxy6516;
  assign inv6619 = ~orr6617;
  assign andl6622 = io_in[2] && inv6619;

  assign io_grant = proxy6518;

endmodule

module ch_xbar_switch(
  input wire clk,
  input wire reset,
  input wire[22:0] io_in_0_data,
  input wire io_in_0_valid,
  output wire io_in_0_ready,
  input wire[22:0] io_in_1_data,
  input wire io_in_1_valid,
  output wire io_in_1_ready,
  input wire[22:0] io_in_2_data,
  input wire io_in_2_valid,
  output wire io_in_2_ready,
  output wire[22:0] io_out_data,
  output wire io_out_valid,
  input wire io_out_ready,
  output wire[2:0] io_out_grant
);
  wire[2:0] bindin6467; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] proxy6469; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] bindin6485; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[23:0] bindout6493; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy6626; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6633; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6635; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindin6636; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindout6639; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq6670; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6673; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq6678; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6681; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq6686; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6689; // /home/blaise/dev/cash/include/htl/arbiter.h(64)

  ch_hxbar __module24__(.io_sel(bindin6467), .io_in(bindin6485), .io_out(bindout6493));
  assign bindin6467 = bindout6639;
  assign proxy6469 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin6485 = proxy6469;
  assign proxy6626 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin6633 = clk;
  assign bindin6635 = reset;
  ch_rrArbiter __module25__(.clk(bindin6633), .reset(bindin6635), .io_in(bindin6636), .io_grant(bindout6639));
  assign bindin6636 = proxy6626;
  assign eq6670 = bindout6639 == 3'h1;
  assign andl6673 = io_out_ready && eq6670;
  assign eq6678 = bindout6639 == 3'h2;
  assign andl6681 = io_out_ready && eq6678;
  assign eq6686 = bindout6639 == 3'h4;
  assign andl6689 = io_out_ready && eq6686;

  assign io_in_0_ready = andl6673;
  assign io_in_1_ready = andl6681;
  assign io_in_2_ready = andl6689;
  assign io_out_data = bindout6493[22:0];
  assign io_out_valid = bindout6493[23];
  assign io_out_grant = bindout6639;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  reg[534:0] sel6814; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6814 = io_in[1069:535];
      3'h1: sel6814 = io_in[534:0];
      default: sel6814 = io_in[1604:1070];
    endcase
  end

  assign io_out = sel6814;

endmodule


module ch_xbar_switch_0(
  input wire clk,
  input wire reset,
  input wire[533:0] io_in_0_data,
  input wire io_in_0_valid,
  output wire io_in_0_ready,
  input wire[533:0] io_in_1_data,
  input wire io_in_1_valid,
  output wire io_in_1_ready,
  input wire[533:0] io_in_2_data,
  input wire io_in_2_valid,
  output wire io_in_2_ready,
  output wire[533:0] io_out_data,
  output wire io_out_valid,
  input wire io_out_ready,
  output wire[2:0] io_out_grant
);
  wire[2:0] bindin6824; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] proxy6826; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] bindin6845; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[534:0] bindout6854; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy6987; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6994; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6996; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindin6997; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindout7000; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq7031; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7034; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq7039; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7042; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq7047; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7050; // /home/blaise/dev/cash/include/htl/arbiter.h(64)

  ch_hxbar_0 __module27__(.io_sel(bindin6824), .io_in(bindin6845), .io_out(bindout6854));
  assign bindin6824 = bindout7000;
  assign proxy6826 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin6845 = proxy6826;
  assign proxy6987 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin6994 = clk;
  assign bindin6996 = reset;
  ch_rrArbiter __module28__(.clk(bindin6994), .reset(bindin6996), .io_in(bindin6997), .io_grant(bindout7000));
  assign bindin6997 = proxy6987;
  assign eq7031 = bindout7000 == 3'h1;
  assign andl7034 = io_out_ready && eq7031;
  assign eq7039 = bindout7000 == 3'h2;
  assign andl7042 = io_out_ready && eq7039;
  assign eq7047 = bindout7000 == 3'h4;
  assign andl7050 = io_out_ready && eq7047;

  assign io_in_0_ready = andl7034;
  assign io_in_1_ready = andl7042;
  assign io_in_2_ready = andl7050;
  assign io_out_data = bindout6854[533:0];
  assign io_out_valid = bindout6854[534];
  assign io_out_grant = bindout7000;

endmodule

module spmv_write_cache(
  input wire clk,
  input wire reset,
  input wire[533:0] io_enq_data,
  input wire io_enq_valid,
  output wire io_enq_ready,
  output wire[533:0] io_evict_data,
  output wire io_evict_valid,
  input wire io_evict_ready,
  input wire io_flush
);
  wire[511:0] lit7290 = 512'h0;
  reg[21:0] mem7106 [0:1]; // wrcache.h(59)
  reg[511:0] mem7109 [0:1]; // wrcache.h(59)
  reg[1:0] reg7115; // wrcache.h(59)
  reg reg7121; // wrcache.h(59)
  reg[19:0] reg7126; // wrcache.h(59)
  reg reg7145; // wrcache.h(59)
  wire[533:0] io_evict_data7156; // wrcache.h(59)
  reg[2:0] reg7173; // wrcache.h(67)
  reg[533:0] reg7178; // wrcache.h(68)
  wire eq7194; // wrcache.h(15)
  wire[533:0] sel7196; // wrcache.h(79)
  wire[1:0] shl7205; // wrcache.h(81)
  wire[1:0] andb7208; // wrcache.h(81)
  wire ne7211; // wrcache.h(81)
  wire[21:0] mrport7214; // wrcache.h(82)
  wire eq7218; // wrcache.h(82)
  wire andl7221; // wrcache.h(82)
  wire sel7223; // wrcache.h(82)
  wire[1:0] andb7230; // wrcache.h(83)
  wire ne7232; // wrcache.h(83)
  wire andl7235; // wrcache.h(83)
  wire sel7237; // wrcache.h(83)
  wire notl7241; // wrcache.h(84)
  wire sel7243; // wrcache.h(84)
  reg reg7247; // wrcache.h(92)
  reg reg7251; // wrcache.h(93)
  reg reg7255; // wrcache.h(94)
  reg reg7260; // wrcache.h(95)
  wire add7265; // wrcache.h(101)
  wire eq7269; // wrcache.h(102)
  wire sel7273; // wrcache.h(100)
  wire[2:0] sel7274; // wrcache.h(102)
  wire andb7275; // wrcache.h(100)
  wire[1:0] sel7276; // wrcache.h(102)
  reg reg7285; // wrcache.h(112)
  wire[21:0] mrport7300; // wrcache.h(134)
  wire[1:0] andb7304; // wrcache.h(134)
  wire ne7307; // wrcache.h(134)
  wire eq7310; // wrcache.h(134)
  wire ne7314; // wrcache.h(134)
  wire andl7316; // wrcache.h(134)
  wire andl7318; // wrcache.h(134)
  wire[511:0] mrport7322; // wrcache.h(139)
  wire[511:0] orb7324; // wrcache.h(139)
  wire[1:0] orb7329; // wrcache.h(140)
  wire[21:0] tag_t7335; // wrcache.h(140)
  wire[21:0] mrport7343; // wrcache.h(159)
  wire eq7347; // wrcache.h(159)
  wire[1:0] shl7350; // wrcache.h(159)
  wire[1:0] andb7353; // wrcache.h(159)
  wire ne7356; // wrcache.h(159)
  wire andl7358; // wrcache.h(159)
  wire[511:0] orb7361; // wrcache.h(163)
  wire[1:0] orb7366; // wrcache.h(164)
  wire[21:0] tag_t7372; // wrcache.h(164)
  wire[1:0] shl7382; // wrcache.h(178)
  wire[1:0] orb7385; // wrcache.h(178)
  wire ne7388; // wrcache.h(181)
  wire eq7396; // wrcache.h(193)
  wire[21:0] tag_t7402; // wrcache.h(196)
  wire[1:0] inv7408; // wrcache.h(197)
  wire[1:0] andb7411; // wrcache.h(197)
  wire[1:0] andb7419; // wrcache.h(202)
  wire ne7421; // wrcache.h(202)
  wire[1:0] inv7425; // wrcache.h(205)
  wire[1:0] andb7430; // wrcache.h(205)
  wire[21:0] tag_t7436; // wrcache.h(205)
  wire ne7450; // wrcache.h(227)
  wire[1:0] sel7459; // wrcache.h(156)
  wire[1:0] sel7460; // wrcache.h(193)
  reg[1:0] sel7461; // wrcache.h(129)
  wire sel7462; // wrcache.h(156)
  wire eq7463; // wrcache.h(129)
  wire andb7464; // wrcache.h(129)
  wire sel7465; // wrcache.h(156)
  wire sel7468; // wrcache.h(147)
  wire sel7469; // wrcache.h(131)
  wire sel7470; // wrcache.h(129)
  wire[2:0] sel7471; // wrcache.h(134)
  wire[2:0] sel7472; // wrcache.h(147)
  wire[2:0] sel7473; // wrcache.h(131)
  wire[2:0] sel7474; // wrcache.h(181)
  wire[2:0] sel7475; // wrcache.h(156)
  wire[2:0] sel7476; // wrcache.h(193)
  wire[2:0] sel7477; // wrcache.h(219)
  reg[2:0] sel7478; // wrcache.h(129)
  wire[19:0] sel7479; // wrcache.h(156)
  wire sel7482; // wrcache.h(131)
  wire sel7483; // wrcache.h(159)
  wire sel7484; // wrcache.h(156)
  reg sel7485; // wrcache.h(129)
  wire sel7486; // wrcache.h(134)
  wire andb7487; // wrcache.h(129)
  wire sel7488; // wrcache.h(156)
  reg sel7489; // wrcache.h(129)
  wire sel7493; // wrcache.h(202)
  wire sel7494; // wrcache.h(193)
  reg sel7495; // wrcache.h(129)
  wire sel7496; // wrcache.h(227)
  reg sel7497; // wrcache.h(129)
  wire[511:0] sel7498; // wrcache.h(134)
  wire[511:0] sel7500; // wrcache.h(159)
  wire[511:0] sel7501; // wrcache.h(156)
  reg[511:0] sel7502; // wrcache.h(129)
  wire[21:0] sel7503; // wrcache.h(134)
  wire[21:0] sel7505; // wrcache.h(159)
  wire[21:0] sel7506; // wrcache.h(156)
  wire[21:0] sel7507; // wrcache.h(202)
  wire[21:0] sel7508; // wrcache.h(193)
  reg[21:0] sel7509; // wrcache.h(129)
  wire sel7510; // wrcache.h(233)
  wire sel7511; // wrcache.h(227)
  wire sel7512; // wrcache.h(129)
  wire[1:0] sel7513; // wrcache.h(227)
  reg[1:0] sel7514; // wrcache.h(129)
  wire[19:0] sel7515; // wrcache.h(227)
  reg[19:0] sel7516; // wrcache.h(129)
  wire[511:0] sel7517; // wrcache.h(227)
  reg[511:0] sel7518; // wrcache.h(129)
  wire sel7519; // wrcache.h(181)
  wire andb7520; // wrcache.h(129)
  wire andb7522; // wrcache.h(129)
  wire[533:0] sel7523; // wrcache.h(134)
  wire[533:0] sel7524; // wrcache.h(147)
  wire[533:0] sel7525; // wrcache.h(131)
  wire[533:0] sel7526; // wrcache.h(129)

  assign mrport7214 = mem7106[1'h1];
  assign mrport7300 = mem7106[sel7485];
  assign mrport7343 = mem7106[sel7462];
  always @ (posedge clk) begin
    if (sel7495) begin
      mem7106[sel7485] <= sel7509;
    end
  end
  assign mrport7322 = mem7109[sel7485];
  always @ (posedge clk) begin
    if (sel7489) begin
      mem7109[sel7485] <= sel7502;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg7115 <= 2'h0;
    else
      reg7115 <= sel7461;
  end
  always @ (posedge clk) begin
    reg7121 <= sel7465;
  end
  always @ (posedge clk) begin
    reg7126 <= sel7479;
  end
  always @ (posedge clk) begin
    reg7145 <= sel7470;
  end
  assign io_evict_data7156 = {sel7518, sel7516, sel7514};
  always @ (posedge clk) begin
    if (reset)
      reg7173 <= 3'h0;
    else
      reg7173 <= sel7478;
  end
  always @ (posedge clk) begin
    reg7178 <= sel7526;
  end
  assign eq7194 = reg7173 == 3'h0;
  assign sel7196 = eq7194 ? io_enq_data : reg7178;
  assign shl7205 = 2'h1 << 32'h1;
  assign andb7208 = reg7115 & shl7205;
  assign ne7211 = 2'h0 != andb7208;
  assign eq7218 = mrport7214[21:2] == sel7196[21:2];
  assign andl7221 = ne7211 && eq7218;
  assign sel7223 = andl7221 ? 1'h1 : 1'h0;
  assign andb7230 = mrport7214[1:0] & sel7196[1:0];
  assign ne7232 = andb7230 != 2'h0;
  assign andl7235 = ne7211 && ne7232;
  assign sel7237 = andl7235 ? 1'h1 : 1'h0;
  assign notl7241 = !ne7211;
  assign sel7243 = notl7241 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg7247 <= sel7223;
  end
  always @ (posedge clk) begin
    reg7251 <= sel7237;
  end
  always @ (posedge clk) begin
    reg7255 <= sel7243;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7260 <= 1'h0;
    else
      reg7260 <= io_enq_valid;
  end
  assign add7265 = reg7145 + 1'h1;
  assign eq7269 = reg7145 == 1'h1;
  assign sel7273 = sel7512 ? add7265 : reg7145;
  assign sel7274 = andb7275 ? 3'h0 : reg7173;
  assign andb7275 = sel7512 & eq7269;
  assign sel7276 = andb7275 ? 2'h0 : reg7115;
  always @ (posedge clk) begin
    reg7285 <= sel7519;
  end
  assign andb7304 = mrport7300[1:0] & io_enq_data[1:0];
  assign ne7307 = 2'h0 != andb7304;
  assign eq7310 = io_enq_data[21:2] == reg7126;
  assign ne7314 = reg7115 != 2'h0;
  assign andl7316 = ne7314 && eq7310;
  assign andl7318 = andl7316 && ne7307;
  assign orb7324 = mrport7322 | io_enq_data[533:22];
  assign orb7329 = mrport7300[1:0] | io_enq_data[1:0];
  assign tag_t7335 = {mrport7300[21:2], orb7329};
  assign eq7347 = mrport7343[21:2] == reg7178[21:2];
  assign shl7350 = 2'h1 << sel7462;
  assign andb7353 = reg7115 & shl7350;
  assign ne7356 = 2'h0 != andb7353;
  assign andl7358 = ne7356 && eq7347;
  assign orb7361 = mrport7322 | reg7178[533:22];
  assign orb7366 = mrport7300[1:0] | reg7178[1:0];
  assign tag_t7372 = {mrport7300[21:2], orb7366};
  assign shl7382 = 2'h1 << sel7485;
  assign orb7385 = reg7115 | shl7382;
  assign ne7388 = sel7485 != reg7251;
  assign eq7396 = mrport7300[1:0] == reg7178[1:0];
  assign tag_t7402 = {20'h0, 2'h0};
  assign inv7408 = ~shl7382;
  assign andb7411 = reg7115 & inv7408;
  assign andb7419 = mrport7300[1:0] & reg7178[1:0];
  assign ne7421 = andb7419 != 2'h0;
  assign inv7425 = ~reg7178[1:0];
  assign andb7430 = mrport7300[1:0] & inv7425;
  assign tag_t7436 = {mrport7300[21:2], andb7430};
  assign ne7450 = mrport7300[1:0] != 2'h0;
  assign sel7459 = reg7260 ? orb7385 : sel7276;
  assign sel7460 = eq7396 ? andb7411 : sel7276;
  always @(*) begin
    case (reg7173)
      3'h1: sel7461 = sel7459;
      3'h2: sel7461 = sel7460;
      default: sel7461 = sel7276;
    endcase
  end
  assign sel7462 = andb7464 ? reg7247 : 1'h0;
  assign eq7463 = reg7173 == 3'h1;
  assign andb7464 = eq7463 & reg7260;
  assign sel7465 = andb7464 ? sel7485 : reg7121;
  assign sel7468 = io_flush ? 1'h0 : sel7273;
  assign sel7469 = io_enq_valid ? sel7273 : sel7468;
  assign sel7470 = (reg7173 == 3'h0) ? sel7469 : sel7273;
  assign sel7471 = andl7318 ? sel7274 : 3'h1;
  assign sel7472 = io_flush ? 3'h4 : sel7274;
  assign sel7473 = io_enq_valid ? sel7471 : sel7472;
  assign sel7474 = ne7388 ? 3'h2 : 3'h0;
  assign sel7475 = reg7260 ? sel7474 : sel7274;
  assign sel7476 = eq7396 ? 3'h3 : 3'h0;
  assign sel7477 = io_evict_ready ? 3'h0 : sel7274;
  always @(*) begin
    case (reg7173)
      3'h0: sel7478 = sel7473;
      3'h1: sel7478 = sel7475;
      3'h2: sel7478 = sel7476;
      3'h3: sel7478 = sel7477;
      default: sel7478 = sel7274;
    endcase
  end
  assign sel7479 = andb7464 ? reg7178[21:2] : reg7126;
  assign sel7482 = io_enq_valid ? reg7121 : 1'h0;
  assign sel7483 = andl7358 ? reg7247 : reg7255;
  assign sel7484 = reg7260 ? sel7483 : 1'h0;
  always @(*) begin
    case (reg7173)
      3'h0: sel7485 = sel7482;
      3'h1: sel7485 = sel7484;
      3'h2: sel7485 = reg7285;
      3'h3: sel7485 = reg7285;
      3'h4: sel7485 = reg7145;
      default: sel7485 = 1'h0;
    endcase
  end
  assign sel7486 = andb7487 ? 1'h1 : 1'h0;
  assign andb7487 = io_enq_valid & andl7318;
  assign sel7488 = reg7260 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7173)
      3'h0: sel7489 = sel7486;
      3'h1: sel7489 = sel7488;
      default: sel7489 = 1'h0;
    endcase
  end
  assign sel7493 = ne7421 ? 1'h1 : 1'h0;
  assign sel7494 = eq7396 ? 1'h1 : sel7493;
  always @(*) begin
    case (reg7173)
      3'h0: sel7495 = sel7486;
      3'h1: sel7495 = sel7488;
      3'h2: sel7495 = sel7494;
      default: sel7495 = 1'h0;
    endcase
  end
  assign sel7496 = ne7450 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7173)
      3'h3: sel7497 = 1'h1;
      3'h4: sel7497 = sel7496;
      default: sel7497 = 1'h0;
    endcase
  end
  assign sel7498 = andb7487 ? orb7324 : lit7290;
  assign sel7500 = andl7358 ? orb7361 : reg7178[533:22];
  assign sel7501 = reg7260 ? sel7500 : lit7290;
  always @(*) begin
    case (reg7173)
      3'h0: sel7502 = sel7498;
      3'h1: sel7502 = sel7501;
      default: sel7502 = lit7290;
    endcase
  end
  assign sel7503 = andb7487 ? tag_t7335 : 22'h0;
  assign sel7505 = andl7358 ? tag_t7372 : reg7178[21:0];
  assign sel7506 = reg7260 ? sel7505 : 22'h0;
  assign sel7507 = ne7421 ? tag_t7436 : 22'h0;
  assign sel7508 = eq7396 ? tag_t7402 : sel7507;
  always @(*) begin
    case (reg7173)
      3'h0: sel7509 = sel7503;
      3'h1: sel7509 = sel7506;
      3'h2: sel7509 = sel7508;
      default: sel7509 = 22'h0;
    endcase
  end
  assign sel7510 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel7511 = ne7450 ? sel7510 : 1'h1;
  assign sel7512 = (reg7173 == 3'h4) ? sel7511 : 1'h0;
  assign sel7513 = ne7450 ? reg7178[1:0] : 2'h0;
  always @(*) begin
    case (reg7173)
      3'h3: sel7514 = reg7178[1:0];
      3'h4: sel7514 = sel7513;
      default: sel7514 = 2'h0;
    endcase
  end
  assign sel7515 = ne7450 ? mrport7300[21:2] : 20'h0;
  always @(*) begin
    case (reg7173)
      3'h3: sel7516 = mrport7300[21:2];
      3'h4: sel7516 = sel7515;
      default: sel7516 = 20'h0;
    endcase
  end
  assign sel7517 = ne7450 ? mrport7322 : lit7290;
  always @(*) begin
    case (reg7173)
      3'h3: sel7518 = mrport7322;
      3'h4: sel7518 = sel7517;
      default: sel7518 = lit7290;
    endcase
  end
  assign sel7519 = andb7522 ? reg7251 : reg7285;
  assign andb7520 = reg7260 & ne7388;
  assign andb7522 = eq7463 & andb7520;
  assign sel7523 = andl7318 ? reg7178 : io_enq_data;
  assign sel7524 = io_flush ? io_enq_data : reg7178;
  assign sel7525 = io_enq_valid ? sel7523 : sel7524;
  assign sel7526 = (reg7173 == 3'h0) ? sel7525 : reg7178;

  assign io_enq_ready = eq7194;
  assign io_evict_data = io_evict_data7156;
  assign io_evict_valid = sel7497;

endmodule

module spmv_lsu(
  input wire clk,
  input wire reset,
  input wire io_qpi_rd_req_almostfull,
  output wire[19:0] io_qpi_rd_req_addr,
  output wire[13:0] io_qpi_rd_req_mdata,
  output wire io_qpi_rd_req_valid,
  input wire[13:0] io_qpi_rd_rsp_mdata,
  input wire[511:0] io_qpi_rd_rsp_data,
  input wire io_qpi_rd_rsp_valid,
  input wire io_qpi_wr_req_almostfull,
  output wire[19:0] io_qpi_wr_req_addr,
  output wire[13:0] io_qpi_wr_req_mdata,
  output wire[511:0] io_qpi_wr_req_data,
  output wire io_qpi_wr_req_valid,
  input wire[13:0] io_qpi_wr_rsp0_mdata,
  input wire io_qpi_wr_rsp0_valid,
  input wire[13:0] io_qpi_wr_rsp1_mdata,
  input wire io_qpi_wr_rsp1_valid,
  input wire[511:0] io_ctx,
  input wire[22:0] io_ctrl_rd_req_data,
  input wire io_ctrl_rd_req_valid,
  output wire io_ctrl_rd_req_ready,
  input wire[533:0] io_ctrl_wr_req_data,
  input wire io_ctrl_wr_req_valid,
  output wire io_ctrl_wr_req_ready,
  output wire[514:0] io_ctrl_rd_rsp_data,
  output wire io_ctrl_rd_rsp_valid,
  output wire[31:0] io_ctrl_outstanding_writes,
  input wire[22:0] io_walkers_0_rd_req_data,
  input wire io_walkers_0_rd_req_valid,
  output wire io_walkers_0_rd_req_ready,
  output wire[514:0] io_walkers_0_rd_rsp_data,
  output wire io_walkers_0_rd_rsp_valid,
  input wire[22:0] io_walkers_1_rd_req_data,
  input wire io_walkers_1_rd_req_valid,
  output wire io_walkers_1_rd_req_ready,
  output wire[514:0] io_walkers_1_rd_rsp_data,
  output wire io_walkers_1_rd_rsp_valid,
  input wire[533:0] io_PEs_0_wr_req_data,
  input wire io_PEs_0_wr_req_valid,
  output wire io_PEs_0_wr_req_ready,
  input wire[533:0] io_PEs_1_wr_req_data,
  input wire io_PEs_1_wr_req_valid,
  output wire io_PEs_1_wr_req_ready
);
  wire[511:0] lit7741 = 512'h0;
  wire[514:0] io_ctrl_rd_rsp_data6340; // lsu.cpp(19)
  wire bindin6698; // lsu.cpp(19)
  wire bindin6700; // lsu.cpp(19)
  wire[22:0] bindin6701; // lsu.cpp(19)
  wire bindin6704; // lsu.cpp(19)
  wire bindout6707; // lsu.cpp(19)
  wire[22:0] bindin6712; // lsu.cpp(19)
  wire bindin6715; // lsu.cpp(19)
  wire bindout6718; // lsu.cpp(19)
  wire[22:0] bindin6723; // lsu.cpp(19)
  wire bindin6726; // lsu.cpp(19)
  wire bindout6729; // lsu.cpp(19)
  wire[22:0] bindout6734; // lsu.cpp(19)
  wire bindout6737; // lsu.cpp(19)
  wire bindin6740; // lsu.cpp(19)
  wire[2:0] bindout6743; // lsu.cpp(19)
  wire bindin7058; // lsu.cpp(19)
  wire bindin7059; // lsu.cpp(19)
  wire[533:0] bindin7060; // lsu.cpp(19)
  wire bindin7063; // lsu.cpp(19)
  wire bindout7066; // lsu.cpp(19)
  wire[533:0] bindin7072; // lsu.cpp(19)
  wire bindin7075; // lsu.cpp(19)
  wire bindout7078; // lsu.cpp(19)
  wire[533:0] bindin7084; // lsu.cpp(19)
  wire bindin7087; // lsu.cpp(19)
  wire bindout7090; // lsu.cpp(19)
  wire[533:0] bindout7096; // lsu.cpp(19)
  wire bindout7099; // lsu.cpp(19)
  wire bindin7102; // lsu.cpp(19)
  wire[2:0] bindout7105; // lsu.cpp(19)
  wire[533:0] proxy7528; // lsu.cpp(19)
  wire bindin7533; // lsu.cpp(19)
  wire bindin7534; // lsu.cpp(19)
  wire[533:0] bindin7535; // lsu.cpp(19)
  wire bindin7538; // lsu.cpp(19)
  wire bindout7541; // lsu.cpp(19)
  wire[1:0] proxy_owner7544; // lsu.cpp(19)
  wire[533:0] bindout7547; // lsu.cpp(19)
  wire bindout7550; // lsu.cpp(19)
  wire bindin7553; // lsu.cpp(19)
  wire bindin7556; // lsu.cpp(19)
  wire notl7558; // lsu.cpp(44)
  reg reg7566; // lsu.cpp(47)
  reg[19:0] reg7571; // lsu.cpp(48)
  reg[13:0] reg7576; // lsu.cpp(49)
  reg[19:0] sel7586; // lsu.cpp(258)
  wire[19:0] add7587; // lsu.cpp(257)
  wire[5:0] ch_rd_mdata_t7590; // lsu.cpp(55)
  wire[13:0] pad7593; // lsu.cpp(55)
  reg[2:0] reg7598; // lsu.cpp(70)
  reg reg7604; // lsu.cpp(71)
  wire eq7610; // lsu.cpp(14)
  wire eq7614; // lsu.cpp(6)
  wire notl7617; // lsu.cpp(79)
  wire andb7620; // lsu.cpp(79)
  reg[533:0] reg7625; // lsu.cpp(81)
  reg[2:0] reg7636; // lsu.cpp(82)
  wire andb7639; // lsu.cpp(87)
  wire orb7643; // lsu.cpp(88)
  reg[31:0] sel7647; // lsu.cpp(87)
  reg[31:0] reg7654; // lsu.cpp(91)
  reg reg7659; // lsu.cpp(94)
  reg[19:0] reg7664; // lsu.cpp(95)
  reg[511:0] reg7669; // lsu.cpp(96)
  reg[13:0] reg7674; // lsu.cpp(97)
  wire[31:0] sub7678; // lsu.cpp(101)
  wire[4:0] ch_wr_mdata_t7681; // lsu.cpp(107)
  wire[19:0] add7688; // lsu.cpp(270)
  wire[13:0] pad7690; // lsu.cpp(110)
  wire[2:0] pad7693; // lsu.cpp(116)
  wire[4:0] ch_wr_mdata_t7696; // lsu.cpp(117)
  wire[19:0] add7702; // lsu.cpp(270)
  wire[13:0] pad7704; // lsu.cpp(120)
  wire notl7707; // lsu.cpp(127)
  wire[31:0] add7712; // lsu.cpp(129)
  wire[31:0] sub7714; // lsu.cpp(129)
  wire[31:0] sel7717; // lsu.cpp(127)
  wire eq7718; // lsu.cpp(103)
  wire andb7719; // lsu.cpp(103)
  wire sel7720; // lsu.cpp(127)
  wire[19:0] sel7723; // lsu.cpp(114)
  wire[19:0] sel7724; // lsu.cpp(105)
  wire[19:0] sel7725; // lsu.cpp(103)
  reg[19:0] sel7726; // lsu.cpp(271)
  wire sel7727; // lsu.cpp(114)
  wire sel7728; // lsu.cpp(105)
  wire sel7729; // lsu.cpp(127)
  reg sel7730; // lsu.cpp(103)
  wire[13:0] sel7731; // lsu.cpp(114)
  wire[13:0] sel7732; // lsu.cpp(105)
  wire[13:0] sel7733; // lsu.cpp(103)
  wire[511:0] sel7734; // lsu.cpp(114)
  wire[511:0] sel7735; // lsu.cpp(105)
  wire[511:0] sel7736; // lsu.cpp(103)
  reg[19:0] sel7737; // lsu.cpp(271)
  wire eq7748; // lsu.h(33)
  wire eq7752; // lsu.cpp(164)
  wire sel7766; // lsu.cpp(158)
  wire sel7767; // lsu.cpp(158)
  wire[1:0] sel7768; // lsu.cpp(158)
  wire[19:0] sel7769; // lsu.cpp(158)
  wire[511:0] sel7770; // lsu.cpp(158)
  wire sel7771; // lsu.cpp(158)
  wire[2:0] sel7772; // lsu.cpp(164)
  wire[2:0] sel7773; // lsu.cpp(163)
  wire[2:0] sel7774; // lsu.cpp(160)
  wire[2:0] sel7775; // lsu.cpp(177)
  wire[2:0] sel7776; // lsu.cpp(189)
  wire[2:0] sel7777; // lsu.cpp(198)
  reg[2:0] sel7779; // lsu.cpp(158)
  wire[2:0] sel7780; // lsu.cpp(160)
  wire eq7781; // lsu.cpp(158)
  wire andb7782; // lsu.cpp(158)
  wire[533:0] sel7783; // lsu.cpp(160)
  wire eq7792; // lsu.cpp(230)
  wire andb7795; // lsu.cpp(230)
  wire eq7799; // lsu.cpp(236)
  wire andb7802; // lsu.cpp(236)
  wire eq7806; // lsu.cpp(236)
  wire andb7809; // lsu.cpp(236)

  assign io_ctrl_rd_rsp_data6340 = {io_qpi_rd_rsp_data, io_qpi_rd_rsp_mdata[2:0]};
  assign bindin6698 = clk;
  assign bindin6700 = reset;
  ch_xbar_switch __module23__(.clk(bindin6698), .reset(bindin6700), .io_in_0_data(bindin6701), .io_in_0_valid(bindin6704), .io_in_1_data(bindin6712), .io_in_1_valid(bindin6715), .io_in_2_data(bindin6723), .io_in_2_valid(bindin6726), .io_out_ready(bindin6740), .io_in_0_ready(bindout6707), .io_in_1_ready(bindout6718), .io_in_2_ready(bindout6729), .io_out_data(bindout6734), .io_out_valid(bindout6737), .io_out_grant(bindout6743));
  assign bindin6701 = io_walkers_0_rd_req_data;
  assign bindin6704 = io_walkers_0_rd_req_valid;
  assign bindin6712 = io_walkers_1_rd_req_data;
  assign bindin6715 = io_walkers_1_rd_req_valid;
  assign bindin6723 = io_ctrl_rd_req_data;
  assign bindin6726 = io_ctrl_rd_req_valid;
  assign bindin6740 = notl7558;
  assign bindin7058 = clk;
  assign bindin7059 = reset;
  ch_xbar_switch_0 __module26__(.clk(bindin7058), .reset(bindin7059), .io_in_0_data(bindin7060), .io_in_0_valid(bindin7063), .io_in_1_data(bindin7072), .io_in_1_valid(bindin7075), .io_in_2_data(bindin7084), .io_in_2_valid(bindin7087), .io_out_ready(bindin7102), .io_in_0_ready(bindout7066), .io_in_1_ready(bindout7078), .io_in_2_ready(bindout7090), .io_out_data(bindout7096), .io_out_valid(bindout7099), .io_out_grant(bindout7105));
  assign bindin7060 = io_PEs_0_wr_req_data;
  assign bindin7063 = io_PEs_0_wr_req_valid;
  assign bindin7072 = io_PEs_1_wr_req_data;
  assign bindin7075 = io_PEs_1_wr_req_valid;
  assign bindin7084 = io_ctrl_wr_req_data;
  assign bindin7087 = io_ctrl_wr_req_valid;
  assign bindin7102 = eq7614;
  assign proxy7528 = {sel7770, sel7769, sel7768};
  assign bindin7533 = clk;
  assign bindin7534 = reset;
  spmv_write_cache __module29__(.clk(bindin7533), .reset(bindin7534), .io_enq_data(bindin7535), .io_enq_valid(bindin7538), .io_evict_ready(bindin7553), .io_flush(bindin7556), .io_enq_ready(bindout7541), .io_evict_data(bindout7547), .io_evict_valid(bindout7550));
  assign bindin7535 = proxy7528;
  assign bindin7538 = sel7767;
  assign proxy_owner7544 = bindout7547[1:0];
  assign bindin7553 = andb7620;
  assign bindin7556 = sel7766;
  assign notl7558 = !io_qpi_rd_req_almostfull;
  always @ (posedge clk) begin
    if (reset)
      reg7566 <= 1'h0;
    else
      reg7566 <= bindout6737;
  end
  always @ (posedge clk) begin
    reg7571 <= add7587;
  end
  always @ (posedge clk) begin
    reg7576 <= pad7593;
  end
  always @(*) begin
    case (bindout6734[2:0])
      3'h0: sel7586 = io_ctx[51:32];
      3'h1: sel7586 = io_ctx[71:52];
      3'h2: sel7586 = io_ctx[91:72];
      3'h3: sel7586 = io_ctx[111:92];
      3'h4: sel7586 = io_ctx[131:112];
      3'h5: sel7586 = io_ctx[151:132];
      default: sel7586 = io_ctx[171:152];
    endcase
  end
  assign add7587 = sel7586 + bindout6734[22:3];
  assign ch_rd_mdata_t7590 = {bindout6743, bindout6734[2:0]};
  assign pad7593 = {{8{1'b0}}, ch_rd_mdata_t7590};
  always @ (posedge clk) begin
    if (reset)
      reg7598 <= 3'h0;
    else
      reg7598 <= sel7779;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7604 <= 1'h0;
    else
      reg7604 <= sel7730;
  end
  assign eq7610 = reg7604 == 1'h0;
  assign eq7614 = reg7598 == 3'h0;
  assign notl7617 = !sel7771;
  assign andb7620 = eq7610 & notl7617;
  always @ (posedge clk) begin
    reg7625 <= sel7783;
  end
  always @ (posedge clk) begin
    reg7636 <= sel7780;
  end
  assign andb7639 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign orb7643 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (orb7643)
      sel7647 = 32'h1;
    else if (andb7639)
      sel7647 = 32'h2;
    else
      sel7647 = 32'h0;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7654 <= 32'h0;
    else
      reg7654 <= sel7717;
  end
  always @ (posedge clk) begin
    reg7659 <= sel7720;
  end
  always @ (posedge clk) begin
    reg7664 <= sel7725;
  end
  always @ (posedge clk) begin
    reg7669 <= sel7736;
  end
  always @ (posedge clk) begin
    reg7674 <= sel7733;
  end
  assign sub7678 = reg7654 - sel7647;
  assign ch_wr_mdata_t7681 = {reg7636, reg7625[1:0]};
  assign add7688 = sel7726 + reg7625[21:2];
  assign pad7690 = {{9{1'b0}}, ch_wr_mdata_t7681};
  assign pad7693 = {{1{1'b0}}, proxy_owner7544};
  assign ch_wr_mdata_t7696 = {pad7693, 2'h1};
  assign add7702 = sel7737 + bindout7547[21:2];
  assign pad7704 = {{9{1'b0}}, ch_wr_mdata_t7696};
  assign notl7707 = !io_qpi_wr_req_almostfull;
  assign add7712 = reg7654 + 32'h1;
  assign sub7714 = add7712 - sel7647;
  assign sel7717 = andb7719 ? sub7714 : sub7678;
  assign eq7718 = reg7604 == 1'h1;
  assign andb7719 = eq7718 & notl7707;
  assign sel7720 = andb7719 ? 1'h1 : 1'h0;
  assign sel7723 = bindout7550 ? add7702 : reg7664;
  assign sel7724 = sel7771 ? add7688 : sel7723;
  assign sel7725 = (reg7604 == 1'h0) ? sel7724 : reg7664;
  always @(*) begin
    case (reg7625[1:0])
      2'h0: sel7726 = io_ctx[191:172];
      2'h1: sel7726 = io_ctx[211:192];
      default: sel7726 = io_ctx[231:212];
    endcase
  end
  assign sel7727 = bindout7550 ? 1'h1 : reg7604;
  assign sel7728 = sel7771 ? 1'h1 : sel7727;
  assign sel7729 = notl7707 ? 1'h0 : reg7604;
  always @(*) begin
    case (reg7604)
      1'h0: sel7730 = sel7728;
      1'h1: sel7730 = sel7729;
      default: sel7730 = reg7604;
    endcase
  end
  assign sel7731 = bindout7550 ? pad7704 : reg7674;
  assign sel7732 = sel7771 ? pad7690 : sel7731;
  assign sel7733 = (reg7604 == 1'h0) ? sel7732 : reg7674;
  assign sel7734 = bindout7550 ? bindout7547[533:22] : reg7669;
  assign sel7735 = sel7771 ? reg7625[533:22] : sel7734;
  assign sel7736 = (reg7604 == 1'h0) ? sel7735 : reg7669;
  always @(*) begin
    case (2'h1)
      2'h0: sel7737 = io_ctx[191:172];
      2'h1: sel7737 = io_ctx[211:192];
      default: sel7737 = io_ctx[231:212];
    endcase
  end
  assign eq7748 = bindout7096[1:0] == 2'h1;
  assign eq7752 = bindout7105 == 3'h4;
  assign sel7766 = (reg7598 == 3'h3) ? 1'h1 : 1'h0;
  assign sel7767 = (reg7598 == 3'h2) ? 1'h1 : 1'h0;
  assign sel7768 = (reg7598 == 3'h2) ? reg7636[1:0] : 2'h0;
  assign sel7769 = (reg7598 == 3'h2) ? reg7625[21:2] : 20'h0;
  assign sel7770 = (reg7598 == 3'h2) ? reg7625[533:22] : lit7741;
  assign sel7771 = (reg7598 == 3'h1) ? 1'h1 : 1'h0;
  assign sel7772 = eq7752 ? 3'h3 : 3'h2;
  assign sel7773 = eq7748 ? sel7772 : 3'h1;
  assign sel7774 = bindout7099 ? sel7773 : reg7598;
  assign sel7775 = eq7610 ? 3'h0 : reg7598;
  assign sel7776 = bindout7541 ? 3'h0 : reg7598;
  assign sel7777 = bindout7541 ? 3'h4 : reg7598;
  always @(*) begin
    case (reg7598)
      3'h0: sel7779 = sel7774;
      3'h1: sel7779 = sel7775;
      3'h2: sel7779 = sel7776;
      3'h3: sel7779 = sel7777;
      3'h4: sel7779 = sel7776;
      default: sel7779 = reg7598;
    endcase
  end
  assign sel7780 = andb7782 ? bindout7105 : reg7636;
  assign eq7781 = reg7598 == 3'h0;
  assign andb7782 = eq7781 & bindout7099;
  assign sel7783 = andb7782 ? bindout7096 : reg7625;
  assign eq7792 = io_qpi_rd_rsp_mdata[5:3] == 3'h4;
  assign andb7795 = io_qpi_rd_rsp_valid & eq7792;
  assign eq7799 = io_qpi_rd_rsp_mdata[5:3] == 3'h1;
  assign andb7802 = io_qpi_rd_rsp_valid & eq7799;
  assign eq7806 = io_qpi_rd_rsp_mdata[5:3] == 3'h2;
  assign andb7809 = io_qpi_rd_rsp_valid & eq7806;

  assign io_qpi_rd_req_addr = reg7571;
  assign io_qpi_rd_req_mdata = reg7576;
  assign io_qpi_rd_req_valid = reg7566;
  assign io_qpi_wr_req_addr = reg7664;
  assign io_qpi_wr_req_mdata = reg7674;
  assign io_qpi_wr_req_data = reg7669;
  assign io_qpi_wr_req_valid = reg7659;
  assign io_ctrl_rd_req_ready = bindout6729;
  assign io_ctrl_wr_req_ready = bindout7090;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data6340;
  assign io_ctrl_rd_rsp_valid = andb7795;
  assign io_ctrl_outstanding_writes = reg7654;
  assign io_walkers_0_rd_req_ready = bindout6707;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data6340;
  assign io_walkers_0_rd_rsp_valid = andb7802;
  assign io_walkers_1_rd_req_ready = bindout6718;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data6340;
  assign io_walkers_1_rd_rsp_valid = andb7809;
  assign io_PEs_0_wr_req_ready = bindout7066;
  assign io_PEs_1_wr_req_ready = bindout7078;

endmodule

module ch_queue_1(
  input wire clk,
  input wire reset,
  input wire[511:0] io_enq_data,
  input wire io_enq_valid,
  output wire io_enq_ready,
  output wire[511:0] io_deq_data,
  output wire io_deq_valid,
  input wire io_deq_ready,
  output wire[2:0] io_size
);
  reg[1:0] reg7996; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[1:0] reg8005; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[2:0] reg8012; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg8019; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg8026; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl8029; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl8032; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[1:0] add8037; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] sel8039; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] add8043; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[1:0] sel8045; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire notl8048; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl8051; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire notl8054; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl8057; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[2:0] add8062; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[2:0] sub8066; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[2:0] sel8068; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem8069 [0:3]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport8073; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq8087; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl8089; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl8091; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel8095; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire eq8107; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl8109; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl8111; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel8115; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire notl8117; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire notl8120; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg7996 <= 2'h0;
    else
      reg7996 <= sel8039;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8005 <= 2'h0;
    else
      reg8005 <= sel8045;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8012 <= 3'h0;
    else
      reg8012 <= sel8068;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8019 <= 1'h0;
    else
      reg8019 <= sel8095;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8026 <= 1'h1;
    else
      reg8026 <= sel8115;
  end
  assign andl8029 = io_deq_ready && notl8117;
  assign andl8032 = io_enq_valid && notl8120;
  assign add8037 = reg7996 + 2'h1;
  assign sel8039 = andl8029 ? add8037 : reg7996;
  assign add8043 = reg8005 + 2'h1;
  assign sel8045 = andl8032 ? add8043 : reg8005;
  assign notl8048 = !andl8032;
  assign andl8051 = andl8029 && notl8048;
  assign notl8054 = !andl8029;
  assign andl8057 = andl8032 && notl8054;
  assign add8062 = reg8012 + 3'h1;
  assign sub8066 = reg8012 - 3'h1;
  always @(*) begin
    if (andl8057)
      sel8068 = add8062;
    else if (andl8051)
      sel8068 = sub8066;
    else
      sel8068 = reg8012;
  end
  assign mrport8073 = mem8069[reg7996];
  always @ (posedge clk) begin
    if (andl8032) begin
      mem8069[reg8005] <= io_enq_data;
    end
  end
  assign eq8087 = reg8012 == 3'h3;
  assign andl8089 = eq8087 && andl8032;
  assign andl8091 = andl8089 && notl8054;
  always @(*) begin
    if (andl8091)
      sel8095 = 1'h1;
    else if (andl8051)
      sel8095 = 1'h0;
    else
      sel8095 = reg8019;
  end
  assign eq8107 = reg8012 == 3'h1;
  assign andl8109 = eq8107 && andl8029;
  assign andl8111 = andl8109 && notl8048;
  always @(*) begin
    if (andl8111)
      sel8115 = 1'h1;
    else if (andl8057)
      sel8115 = 1'h0;
    else
      sel8115 = reg8026;
  end
  assign notl8117 = !reg8026;
  assign notl8120 = !reg8019;

  assign io_enq_ready = notl8120;
  assign io_deq_data = mrport8073;
  assign io_deq_valid = notl8117;
  assign io_size = reg8012;

endmodule

module spmv_device(
  input wire clk,
  input wire reset,
  input wire io_qpi_rd_req_almostfull,
  output wire[19:0] io_qpi_rd_req_addr,
  output wire[13:0] io_qpi_rd_req_mdata,
  output wire io_qpi_rd_req_valid,
  input wire[13:0] io_qpi_rd_rsp_mdata,
  input wire[511:0] io_qpi_rd_rsp_data,
  input wire io_qpi_rd_rsp_valid,
  input wire io_qpi_wr_req_almostfull,
  output wire[19:0] io_qpi_wr_req_addr,
  output wire[13:0] io_qpi_wr_req_mdata,
  output wire[511:0] io_qpi_wr_req_data,
  output wire io_qpi_wr_req_valid,
  input wire[13:0] io_qpi_wr_rsp0_mdata,
  input wire io_qpi_wr_rsp0_valid,
  input wire[13:0] io_qpi_wr_rsp1_mdata,
  input wire io_qpi_wr_rsp1_valid,
  input wire[511:0] io_ctx,
  input wire io_start,
  output wire io_done
);
  wire[95:0] lit8197 = 96'h0;
  wire[511:0] lit8304 = 512'h0;
  wire bindin2297; // /usr/include/c++/7/array(94)
  wire bindin2299; // /usr/include/c++/7/array(94)
  wire[63:0] bindin2300; // /usr/include/c++/7/array(94)
  wire bindin2303; // /usr/include/c++/7/array(94)
  wire bindout2306; // /usr/include/c++/7/array(94)
  wire[63:0] bindin2309; // /usr/include/c++/7/array(94)
  wire[351:0] bindout2323; // /usr/include/c++/7/array(94)
  wire[22:0] bindout2328; // /usr/include/c++/7/array(94)
  wire bindout2331; // /usr/include/c++/7/array(94)
  wire bindin2334; // /usr/include/c++/7/array(94)
  wire[514:0] bindin2339; // /usr/include/c++/7/array(94)
  wire bindin2342; // /usr/include/c++/7/array(94)
  wire[84:0] bindout2349; // /usr/include/c++/7/array(94)
  wire bindout2352; // /usr/include/c++/7/array(94)
  wire bindin2355; // /usr/include/c++/7/array(94)
  wire bindin4600; // /usr/include/c++/7/array(94)
  wire bindin4601; // /usr/include/c++/7/array(94)
  wire[63:0] bindin4602; // /usr/include/c++/7/array(94)
  wire bindin4605; // /usr/include/c++/7/array(94)
  wire bindout4608; // /usr/include/c++/7/array(94)
  wire[63:0] bindin4611; // /usr/include/c++/7/array(94)
  wire[351:0] bindout4625; // /usr/include/c++/7/array(94)
  wire[22:0] bindout4630; // /usr/include/c++/7/array(94)
  wire bindout4633; // /usr/include/c++/7/array(94)
  wire bindin4636; // /usr/include/c++/7/array(94)
  wire[514:0] bindin4641; // /usr/include/c++/7/array(94)
  wire bindin4644; // /usr/include/c++/7/array(94)
  wire[84:0] bindout4651; // /usr/include/c++/7/array(94)
  wire bindout4654; // /usr/include/c++/7/array(94)
  wire bindin4657; // /usr/include/c++/7/array(94)
  wire bindin5439; // /usr/include/c++/7/array(94)
  wire bindin5440; // /usr/include/c++/7/array(94)
  wire[84:0] bindin5441; // /usr/include/c++/7/array(94)
  wire bindin5444; // /usr/include/c++/7/array(94)
  wire bindout5447; // /usr/include/c++/7/array(94)
  wire[533:0] bindout5453; // /usr/include/c++/7/array(94)
  wire bindout5456; // /usr/include/c++/7/array(94)
  wire bindin5459; // /usr/include/c++/7/array(94)
  wire[63:0] bindout5464; // /usr/include/c++/7/array(94)
  wire bindout5467; // /usr/include/c++/7/array(94)
  wire bindin6249; // /usr/include/c++/7/array(94)
  wire bindin6250; // /usr/include/c++/7/array(94)
  wire[84:0] bindin6251; // /usr/include/c++/7/array(94)
  wire bindin6254; // /usr/include/c++/7/array(94)
  wire bindout6257; // /usr/include/c++/7/array(94)
  wire[533:0] bindout6263; // /usr/include/c++/7/array(94)
  wire bindout6266; // /usr/include/c++/7/array(94)
  wire bindin6269; // /usr/include/c++/7/array(94)
  wire[63:0] bindout6274; // /usr/include/c++/7/array(94)
  wire bindout6277; // /usr/include/c++/7/array(94)
  wire bindin7814; // spmv.cpp(23)
  wire bindin7815; // spmv.cpp(23)
  wire bindin7816; // spmv.cpp(23)
  wire[19:0] bindout7819; // spmv.cpp(23)
  wire[13:0] bindout7822; // spmv.cpp(23)
  wire bindout7825; // spmv.cpp(23)
  wire[13:0] bindin7828; // spmv.cpp(23)
  wire[511:0] bindin7831; // spmv.cpp(23)
  wire bindin7834; // spmv.cpp(23)
  wire bindin7837; // spmv.cpp(23)
  wire[19:0] bindout7840; // spmv.cpp(23)
  wire[13:0] bindout7843; // spmv.cpp(23)
  wire[511:0] bindout7846; // spmv.cpp(23)
  wire bindout7849; // spmv.cpp(23)
  wire[13:0] bindin7852; // spmv.cpp(23)
  wire bindin7855; // spmv.cpp(23)
  wire[13:0] bindin7858; // spmv.cpp(23)
  wire bindin7861; // spmv.cpp(23)
  wire[511:0] bindin7879; // spmv.cpp(23)
  wire[22:0] proxy7881; // spmv.cpp(23)
  wire[22:0] bindin7884; // spmv.cpp(23)
  wire bindin7887; // spmv.cpp(23)
  wire bindout7890; // spmv.cpp(23)
  wire[533:0] proxy7892; // spmv.cpp(23)
  wire[533:0] bindin7896; // spmv.cpp(23)
  wire bindin7899; // spmv.cpp(23)
  wire bindout7902; // spmv.cpp(23)
  wire[514:0] bindout7907; // spmv.cpp(23)
  wire bindout7910; // spmv.cpp(23)
  wire[31:0] bindout7913; // spmv.cpp(23)
  wire[22:0] bindin7918; // spmv.cpp(23)
  wire bindin7921; // spmv.cpp(23)
  wire bindout7924; // spmv.cpp(23)
  wire[514:0] bindout7929; // spmv.cpp(23)
  wire bindout7932; // spmv.cpp(23)
  wire[22:0] bindin7937; // spmv.cpp(23)
  wire bindin7940; // spmv.cpp(23)
  wire bindout7943; // spmv.cpp(23)
  wire[514:0] bindout7948; // spmv.cpp(23)
  wire bindout7951; // spmv.cpp(23)
  wire[533:0] bindin7957; // spmv.cpp(23)
  wire bindin7960; // spmv.cpp(23)
  wire bindout7963; // spmv.cpp(23)
  wire[533:0] bindin7969; // spmv.cpp(23)
  wire bindin7972; // spmv.cpp(23)
  wire bindout7975; // spmv.cpp(23)
  wire bindin8125; // spmv.cpp(23)
  wire bindin8126; // spmv.cpp(23)
  wire[511:0] bindin8127; // spmv.cpp(23)
  wire bindin8130; // spmv.cpp(23)
  wire[511:0] bindout8136; // spmv.cpp(23)
  wire bindout8139; // spmv.cpp(23)
  wire bindin8142; // spmv.cpp(23)
  wire[543:0] proxy8148; // spmv.cpp(23)
  reg[543:0] reg8149; // spmv.cpp(23)
  reg[4:0] reg8156; // spmv.cpp(23)
  reg[31:0] reg8163; // spmv.cpp(23)
  reg[19:0] reg8170; // spmv.cpp(23)
  reg[19:0] reg8175; // spmv.cpp(23)
  reg[1:0] reg8182; // spmv.cpp(23)
  reg[19:0] reg8190; // spmv.cpp(23)
  reg[19:0] reg8195; // spmv.cpp(23)
  wire[95:0] proxy8204; // spmv.cpp(23)
  reg[95:0] reg8205; // spmv.cpp(23)
  wire[19:0] sub8218; // spmv.cpp(41)
  reg[63:0] reg8225; // spmv.cpp(44)
  wire[63:0] add8230; // spmv.cpp(45)
  reg[2:0] reg8237; // spmv.cpp(62)
  reg reg8245; // spmv.cpp(65)
  wire eq8249; // lsu.h(23)
  wire andl8252; // spmv.cpp(70)
  wire[31:0] pad8254; // spmv.cpp(77)
  wire eq8257; // lsu.h(23)
  wire andl8260; // spmv.cpp(75)
  wire andl8262; // spmv.cpp(75)
  wire[31:0] pad8264; // spmv.cpp(76)
  wire[31:0] add8266; // spmv.cpp(76)
  wire[31:0] sub8268; // spmv.cpp(76)
  wire andl8271; // spmv.cpp(80)
  wire andl8274; // spmv.cpp(82)
  wire andl8276; // spmv.cpp(82)
  wire[31:0] add8285; // spmv.cpp(92)
  wire[31:0] shl8289; // spmv.cpp(92)
  wire[31:0] add8291; // spmv.cpp(92)
  wire[31:0] shr8295; // spmv.cpp(92)
  wire[19:0] sub8299; // spmv.cpp(92)
  wire ne8309; // spmv.cpp(107)
  wire ne8320; // spmv.cpp(119)
  wire[19:0] add8325; // spmv.cpp(123)
  wire eq8328; // spmv.cpp(124)
  wire[31:0] add8334; // spmv.cpp(130)
  wire eq8341; // spmv.cpp(139)
  wire andl8343; // spmv.cpp(139)
  wire[19:0] pad8354; // spmv.cpp(157)
  wire[511:0] pad8355; // spmv.cpp(267)
  wire[415:0] ch_cu_stats_t8357; // spmv.cpp(269)
  wire[511:0] pad8373; // spmv.cpp(270)
  wire[415:0] ch_cu_stats_t8375; // spmv.cpp(272)
  wire[511:0] pad8391; // spmv.cpp(273)
  reg[511:0] sel8392; // spmv.cpp(267)
  wire[1:0] add8397; // spmv.cpp(162)
  wire eq8401; // spmv.cpp(163)
  wire eq8407; // spmv.cpp(171)
  reg sel8411; // spmv.cpp(104)
  wire[1:0] sel8412; // spmv.cpp(161)
  wire eq8413; // spmv.cpp(104)
  wire andb8414; // spmv.cpp(104)
  wire[19:0] sel8415; // spmv.cpp(107)
  wire andb8416; // spmv.cpp(104)
  wire[19:0] sel8417; // spmv.cpp(122)
  wire andb8418; // spmv.cpp(104)
  reg[19:0] sel8419; // spmv.cpp(104)
  wire sel8420; // spmv.cpp(119)
  wire eq8421; // spmv.cpp(104)
  wire andb8422; // spmv.cpp(104)
  wire[31:0] sel8424; // spmv.cpp(122)
  wire[31:0] sel8425; // spmv.cpp(119)
  wire[31:0] sel8426; // spmv.cpp(104)
  wire sel8427; // spmv.cpp(107)
  wire sel8428; // spmv.cpp(106)
  wire sel8429; // spmv.cpp(171)
  reg sel8430; // spmv.cpp(104)
  wire[2:0] sel8431; // spmv.cpp(107)
  wire[2:0] sel8433; // spmv.cpp(124)
  wire andb8434; // spmv.cpp(104)
  wire andb8435; // spmv.cpp(104)
  wire[2:0] sel8436; // spmv.cpp(139)
  wire[2:0] sel8437; // spmv.cpp(149)
  wire[2:0] sel8438; // spmv.cpp(163)
  wire andb8439; // spmv.cpp(104)
  wire[2:0] sel8440; // spmv.cpp(171)
  reg[2:0] sel8441; // spmv.cpp(104)
  reg[1:0] sel8442; // spmv.cpp(104)
  wire[19:0] sel8443; // spmv.cpp(104)
  wire[511:0] sel8444; // spmv.cpp(104)
  reg[1:0] reg8449; // spmv.cpp(189)
  wire eq8458; // spmv.cpp(205)
  wire[543:0] shr8479; // spmv.cpp(229)
  wire[19:0] add8486; // spmv.cpp(230)
  wire[4:0] sub8491; // spmv.cpp(231)
  wire ne8496; // spmv.cpp(241)
  wire ne8499; // spmv.cpp(241)
  wire andl8501; // spmv.cpp(241)
  wire sel8538; // spmv.cpp(222)
  wire eq8539; // spmv.cpp(200)
  wire andb8540; // spmv.cpp(200)
  wire[19:0] sel8541; // spmv.cpp(222)
  wire[19:0] sel8542; // spmv.cpp(222)
  reg[19:0] sel8543; // spmv.cpp(200)
  wire sel8544; // spmv.cpp(222)
  wire eq8545; // spmv.cpp(200)
  wire andb8546; // spmv.cpp(200)
  wire[63:0] sel8547; // spmv.cpp(222)
  wire[1:0] sel8550; // spmv.cpp(203)
  wire[1:0] sel8551; // spmv.cpp(241)
  wire[1:0] sel8552; // spmv.cpp(222)
  wire[1:0] sel8553; // spmv.cpp(241)
  wire[1:0] sel8554; // spmv.cpp(222)
  reg[1:0] sel8555; // spmv.cpp(200)
  wire[63:0] sel8556; // spmv.cpp(222)
  wire[4:0] sel8559; // spmv.cpp(205)
  wire[4:0] sel8560; // spmv.cpp(203)
  wire[4:0] sel8561; // spmv.cpp(222)
  wire[4:0] sel8562; // spmv.cpp(222)
  reg[4:0] sel8563; // spmv.cpp(200)
  wire[31:0] sel8565; // spmv.cpp(205)
  wire andb8566; // spmv.cpp(200)
  wire[31:0] sel8567; // spmv.cpp(222)
  wire[31:0] sel8568; // spmv.cpp(222)
  reg[31:0] sel8569; // spmv.cpp(200)
  wire[479:0] sel8571; // spmv.cpp(205)
  wire[479:0] sel8572; // spmv.cpp(203)
  wire[479:0] sel8573; // spmv.cpp(222)
  wire[479:0] sel8574; // spmv.cpp(222)
  reg[479:0] sel8575; // spmv.cpp(200)
  wire[31:0] sel8577; // spmv.cpp(205)
  wire[31:0] sel8578; // spmv.cpp(203)
  wire[31:0] sel8579; // spmv.cpp(222)
  wire[31:0] sel8580; // spmv.cpp(222)
  reg[31:0] sel8581; // spmv.cpp(200)
  wire sel8582; // spmv.cpp(203)
  wire eq8583; // spmv.cpp(200)
  wire andb8584; // spmv.cpp(200)

  assign bindin2297 = clk;
  assign bindin2299 = reset;
  spmv_dcsc_walk __module2__(.clk(bindin2297), .reset(bindin2299), .io_ctrl_start_data(bindin2300), .io_ctrl_start_valid(bindin2303), .io_ctrl_timer(bindin2309), .io_lsu_rd_req_ready(bindin2334), .io_lsu_rd_rsp_data(bindin2339), .io_lsu_rd_rsp_valid(bindin2342), .io_pe_ready(bindin2355), .io_ctrl_start_ready(bindout2306), .io_ctrl_stats(bindout2323), .io_lsu_rd_req_data(bindout2328), .io_lsu_rd_req_valid(bindout2331), .io_pe_data(bindout2349), .io_pe_valid(bindout2352));
  assign bindin2300 = sel8547;
  assign bindin2303 = sel8544;
  assign bindin2309 = reg8225;
  assign bindin2334 = bindout7924;
  assign bindin2339 = bindout7929;
  assign bindin2342 = bindout7932;
  assign bindin2355 = bindout5447;
  assign bindin4600 = clk;
  assign bindin4601 = reset;
  spmv_dcsc_walk __module9__(.clk(bindin4600), .reset(bindin4601), .io_ctrl_start_data(bindin4602), .io_ctrl_start_valid(bindin4605), .io_ctrl_timer(bindin4611), .io_lsu_rd_req_ready(bindin4636), .io_lsu_rd_rsp_data(bindin4641), .io_lsu_rd_rsp_valid(bindin4644), .io_pe_ready(bindin4657), .io_ctrl_start_ready(bindout4608), .io_ctrl_stats(bindout4625), .io_lsu_rd_req_data(bindout4630), .io_lsu_rd_req_valid(bindout4633), .io_pe_data(bindout4651), .io_pe_valid(bindout4654));
  assign bindin4602 = sel8556;
  assign bindin4605 = sel8538;
  assign bindin4611 = reg8225;
  assign bindin4636 = bindout7943;
  assign bindin4641 = bindout7948;
  assign bindin4644 = bindout7951;
  assign bindin4657 = bindout6257;
  assign bindin5439 = clk;
  assign bindin5440 = reset;
  spmv_pe __module16__(.clk(bindin5439), .reset(bindin5440), .io_req_data(bindin5441), .io_req_valid(bindin5444), .io_lsu_wr_req_ready(bindin5459), .io_req_ready(bindout5447), .io_lsu_wr_req_data(bindout5453), .io_lsu_wr_req_valid(bindout5456), .io_stats(bindout5464), .io_is_idle(bindout5467));
  assign bindin5441 = bindout2349;
  assign bindin5444 = bindout2352;
  assign bindin5459 = bindout7963;
  assign bindin6249 = clk;
  assign bindin6250 = reset;
  spmv_pe __module19__(.clk(bindin6249), .reset(bindin6250), .io_req_data(bindin6251), .io_req_valid(bindin6254), .io_lsu_wr_req_ready(bindin6269), .io_req_ready(bindout6257), .io_lsu_wr_req_data(bindout6263), .io_lsu_wr_req_valid(bindout6266), .io_stats(bindout6274), .io_is_idle(bindout6277));
  assign bindin6251 = bindout4651;
  assign bindin6254 = bindout4654;
  assign bindin6269 = bindout7975;
  assign bindin7814 = clk;
  assign bindin7815 = reset;
  spmv_lsu __module22__(.clk(bindin7814), .reset(bindin7815), .io_qpi_rd_req_almostfull(bindin7816), .io_qpi_rd_rsp_mdata(bindin7828), .io_qpi_rd_rsp_data(bindin7831), .io_qpi_rd_rsp_valid(bindin7834), .io_qpi_wr_req_almostfull(bindin7837), .io_qpi_wr_rsp0_mdata(bindin7852), .io_qpi_wr_rsp0_valid(bindin7855), .io_qpi_wr_rsp1_mdata(bindin7858), .io_qpi_wr_rsp1_valid(bindin7861), .io_ctx(bindin7879), .io_ctrl_rd_req_data(bindin7884), .io_ctrl_rd_req_valid(bindin7887), .io_ctrl_wr_req_data(bindin7896), .io_ctrl_wr_req_valid(bindin7899), .io_walkers_0_rd_req_data(bindin7918), .io_walkers_0_rd_req_valid(bindin7921), .io_walkers_1_rd_req_data(bindin7937), .io_walkers_1_rd_req_valid(bindin7940), .io_PEs_0_wr_req_data(bindin7957), .io_PEs_0_wr_req_valid(bindin7960), .io_PEs_1_wr_req_data(bindin7969), .io_PEs_1_wr_req_valid(bindin7972), .io_qpi_rd_req_addr(bindout7819), .io_qpi_rd_req_mdata(bindout7822), .io_qpi_rd_req_valid(bindout7825), .io_qpi_wr_req_addr(bindout7840), .io_qpi_wr_req_mdata(bindout7843), .io_qpi_wr_req_data(bindout7846), .io_qpi_wr_req_valid(bindout7849), .io_ctrl_rd_req_ready(bindout7890), .io_ctrl_wr_req_ready(bindout7902), .io_ctrl_rd_rsp_data(bindout7907), .io_ctrl_rd_rsp_valid(bindout7910), .io_ctrl_outstanding_writes(bindout7913), .io_walkers_0_rd_req_ready(bindout7924), .io_walkers_0_rd_rsp_data(bindout7929), .io_walkers_0_rd_rsp_valid(bindout7932), .io_walkers_1_rd_req_ready(bindout7943), .io_walkers_1_rd_rsp_data(bindout7948), .io_walkers_1_rd_rsp_valid(bindout7951), .io_PEs_0_wr_req_ready(bindout7963), .io_PEs_1_wr_req_ready(bindout7975));
  assign bindin7816 = io_qpi_rd_req_almostfull;
  assign bindin7828 = io_qpi_rd_rsp_mdata;
  assign bindin7831 = io_qpi_rd_rsp_data;
  assign bindin7834 = io_qpi_rd_rsp_valid;
  assign bindin7837 = io_qpi_wr_req_almostfull;
  assign bindin7852 = io_qpi_wr_rsp0_mdata;
  assign bindin7855 = io_qpi_wr_rsp0_valid;
  assign bindin7858 = io_qpi_wr_rsp1_mdata;
  assign bindin7861 = io_qpi_wr_rsp1_valid;
  assign bindin7879 = io_ctx;
  assign proxy7881 = {reg8170, 3'h0};
  assign bindin7884 = proxy7881;
  assign bindin7887 = sel8420;
  assign proxy7892 = {sel8444, sel8443, sel8442};
  assign bindin7896 = proxy7892;
  assign bindin7899 = sel8411;
  assign bindin7918 = bindout2328;
  assign bindin7921 = bindout2331;
  assign bindin7937 = bindout4630;
  assign bindin7940 = bindout4633;
  assign bindin7957 = bindout5453;
  assign bindin7960 = bindout5456;
  assign bindin7969 = bindout6263;
  assign bindin7972 = bindout6266;
  assign bindin8125 = clk;
  assign bindin8126 = reset;
  ch_queue_1 __module30__(.clk(bindin8125), .reset(bindin8126), .io_enq_data(bindin8127), .io_enq_valid(bindin8130), .io_deq_ready(bindin8142), .io_deq_data(bindout8136), .io_deq_valid(bindout8139));
  assign bindin8127 = bindout7907[514:3];
  assign bindin8130 = andl8252;
  assign bindin8142 = sel8582;
  assign proxy8148 = {sel8581, sel8575, sel8569};
  always @ (posedge clk) begin
    reg8149 <= proxy8148;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8156 <= 5'h0;
    else
      reg8156 <= sel8563;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8163 <= 32'h0;
    else
      reg8163 <= sub8268;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8170 <= 20'h0;
    else
      reg8170 <= sel8419;
  end
  always @ (posedge clk) begin
    reg8175 <= sub8299;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8182 <= 2'h0;
    else
      reg8182 <= sel8412;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8190 <= 20'h0;
    else
      reg8190 <= sel8543;
  end
  always @ (posedge clk) begin
    reg8195 <= sub8218;
  end
  assign proxy8204 = {reg8205[95:32], sel8426};
  always @ (posedge clk) begin
    if (reset)
      reg8205 <= lit8197;
    else
      reg8205 <= proxy8204;
  end
  assign sub8218 = io_ctx[19:0] - 20'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8225 <= 64'h0;
    else
      reg8225 <= add8230;
  end
  assign add8230 = reg8225 + 64'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8237 <= 3'h0;
    else
      reg8237 <= sel8441;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8245 <= 1'h0;
    else
      reg8245 <= sel8430;
  end
  assign eq8249 = bindout7907[2:0] == 3'h0;
  assign andl8252 = bindout7910 && eq8249;
  assign pad8254 = {{31{1'b0}}, sel8582};
  assign eq8257 = 3'h0 == 3'h0;
  assign andl8260 = sel8420 && bindout7890;
  assign andl8262 = andl8260 && eq8257;
  assign pad8264 = {{31{1'b0}}, andl8262};
  assign add8266 = reg8163 + pad8264;
  assign sub8268 = add8266 - pad8254;
  assign andl8271 = bindout2306 && bindout5467;
  assign andl8274 = andl8271 && bindout4608;
  assign andl8276 = andl8274 && bindout6277;
  assign add8285 = io_ctx[31:0] + 32'h1;
  assign shl8289 = add8285 << 32'h2;
  assign add8291 = shl8289 + 32'h3f;
  assign shr8295 = add8291 >> 32'h6;
  assign sub8299 = shr8295[19:0] - 20'h1;
  assign ne8309 = io_ctx[31:0] != 32'h0;
  assign ne8320 = reg8163 != 32'h4;
  assign add8325 = reg8170 + 20'h1;
  assign eq8328 = reg8170 == reg8175;
  assign add8334 = reg8205[31:0] + 32'h1;
  assign eq8341 = reg8190 == io_ctx[19:0];
  assign andl8343 = eq8341 && andl8276;
  assign pad8354 = {{18{1'b0}}, reg8182};
  assign pad8355 = {{416{1'b0}}, reg8205};
  assign ch_cu_stats_t8357 = {bindout5464, bindout2323};
  assign pad8373 = {{96{1'b0}}, ch_cu_stats_t8357};
  assign ch_cu_stats_t8375 = {bindout6274, bindout4625};
  assign pad8391 = {{96{1'b0}}, ch_cu_stats_t8375};
  always @(*) begin
    case (reg8182)
      2'h1: sel8392 = pad8373;
      2'h0: sel8392 = pad8355;
      default: sel8392 = pad8391;
    endcase
  end
  assign add8397 = reg8182 + 2'h1;
  assign eq8401 = reg8182 == 2'h2;
  assign eq8407 = bindout7913 == 32'h0;
  always @(*) begin
    case (reg8237)
      3'h3: sel8411 = 1'h1;
      3'h4: sel8411 = 1'h1;
      default: sel8411 = 1'h0;
    endcase
  end
  assign sel8412 = andb8414 ? add8397 : reg8182;
  assign eq8413 = reg8237 == 3'h4;
  assign andb8414 = eq8413 & bindout7902;
  assign sel8415 = andb8416 ? 20'h0 : reg8170;
  assign andb8416 = io_start & ne8309;
  assign sel8417 = andb8418 ? add8325 : reg8170;
  assign andb8418 = ne8320 & bindout7890;
  always @(*) begin
    case (reg8237)
      3'h0: sel8419 = sel8415;
      3'h1: sel8419 = sel8417;
      default: sel8419 = reg8170;
    endcase
  end
  assign sel8420 = andb8422 ? 1'h1 : 1'h0;
  assign eq8421 = reg8237 == 3'h1;
  assign andb8422 = eq8421 & ne8320;
  assign sel8424 = bindout7890 ? reg8205[31:0] : add8334;
  assign sel8425 = ne8320 ? sel8424 : add8334;
  assign sel8426 = (reg8237 == 3'h1) ? sel8425 : reg8205[31:0];
  assign sel8427 = ne8309 ? 1'h0 : 1'h1;
  assign sel8428 = io_start ? sel8427 : reg8245;
  assign sel8429 = eq8407 ? 1'h1 : reg8245;
  always @(*) begin
    case (reg8237)
      3'h0: sel8430 = sel8428;
      3'h5: sel8430 = sel8429;
      default: sel8430 = reg8245;
    endcase
  end
  assign sel8431 = andb8416 ? 3'h1 : reg8237;
  assign sel8433 = andb8435 ? 3'h2 : reg8237;
  assign andb8434 = bindout7890 & eq8328;
  assign andb8435 = ne8320 & andb8434;
  assign sel8436 = andl8343 ? 3'h3 : reg8237;
  assign sel8437 = bindout7902 ? 3'h4 : reg8237;
  assign sel8438 = andb8439 ? 3'h5 : reg8237;
  assign andb8439 = bindout7902 & eq8401;
  assign sel8440 = eq8407 ? 3'h0 : reg8237;
  always @(*) begin
    case (reg8237)
      3'h0: sel8441 = sel8431;
      3'h1: sel8441 = sel8433;
      3'h2: sel8441 = sel8436;
      3'h3: sel8441 = sel8437;
      3'h4: sel8441 = sel8438;
      3'h5: sel8441 = sel8440;
      default: sel8441 = reg8237;
    endcase
  end
  always @(*) begin
    case (reg8237)
      3'h3: sel8442 = 2'h1;
      3'h4: sel8442 = 2'h2;
      default: sel8442 = 2'h0;
    endcase
  end
  assign sel8443 = (reg8237 == 3'h4) ? pad8354 : 20'h0;
  assign sel8444 = (reg8237 == 3'h4) ? sel8392 : lit8304;
  always @ (posedge clk) begin
    if (reset)
      reg8449 <= 2'h0;
    else
      reg8449 <= sel8555;
  end
  assign eq8458 = 5'h0 == reg8156;
  assign shr8479 = reg8149 >> 32'h20;
  assign add8486 = reg8190 + 20'h1;
  assign sub8491 = reg8156 - 5'h1;
  assign ne8496 = reg8156 != 5'h2;
  assign ne8499 = reg8190 != reg8195;
  assign andl8501 = ne8499 && ne8496;
  assign sel8538 = andb8540 ? 1'h1 : 1'h0;
  assign eq8539 = reg8449 == 2'h2;
  assign andb8540 = eq8539 & bindout4608;
  assign sel8541 = bindout2306 ? add8486 : reg8190;
  assign sel8542 = bindout4608 ? add8486 : reg8190;
  always @(*) begin
    case (reg8449)
      2'h1: sel8543 = sel8541;
      2'h2: sel8543 = sel8542;
      default: sel8543 = reg8190;
    endcase
  end
  assign sel8544 = andb8546 ? 1'h1 : 1'h0;
  assign eq8545 = reg8449 == 2'h1;
  assign andb8546 = eq8545 & bindout2306;
  assign sel8547 = andb8546 ? reg8149[63:0] : 64'h0;
  assign sel8550 = bindout8139 ? 2'h1 : reg8449;
  assign sel8551 = andl8501 ? 2'h2 : 2'h0;
  assign sel8552 = bindout2306 ? sel8551 : 2'h2;
  assign sel8553 = andl8501 ? 2'h1 : 2'h0;
  assign sel8554 = bindout4608 ? sel8553 : 2'h1;
  always @(*) begin
    case (reg8449)
      2'h0: sel8555 = sel8550;
      2'h1: sel8555 = sel8552;
      2'h2: sel8555 = sel8554;
      default: sel8555 = reg8449;
    endcase
  end
  assign sel8556 = andb8540 ? reg8149[63:0] : 64'h0;
  assign sel8559 = eq8458 ? 5'h10 : 5'h11;
  assign sel8560 = bindout8139 ? sel8559 : reg8156;
  assign sel8561 = bindout2306 ? sub8491 : reg8156;
  assign sel8562 = bindout4608 ? sub8491 : reg8156;
  always @(*) begin
    case (reg8449)
      2'h0: sel8563 = sel8560;
      2'h1: sel8563 = sel8561;
      2'h2: sel8563 = sel8562;
      default: sel8563 = reg8156;
    endcase
  end
  assign sel8565 = andb8566 ? bindout8136[31:0] : reg8149[31:0];
  assign andb8566 = bindout8139 & eq8458;
  assign sel8567 = bindout2306 ? shr8479[31:0] : reg8149[31:0];
  assign sel8568 = bindout4608 ? shr8479[31:0] : reg8149[31:0];
  always @(*) begin
    case (reg8449)
      2'h0: sel8569 = sel8565;
      2'h1: sel8569 = sel8567;
      2'h2: sel8569 = sel8568;
      default: sel8569 = reg8149[31:0];
    endcase
  end
  assign sel8571 = eq8458 ? bindout8136[511:32] : bindout8136[479:0];
  assign sel8572 = bindout8139 ? sel8571 : reg8149[511:32];
  assign sel8573 = bindout2306 ? shr8479[511:32] : reg8149[511:32];
  assign sel8574 = bindout4608 ? shr8479[511:32] : reg8149[511:32];
  always @(*) begin
    case (reg8449)
      2'h0: sel8575 = sel8572;
      2'h1: sel8575 = sel8573;
      2'h2: sel8575 = sel8574;
      default: sel8575 = reg8149[511:32];
    endcase
  end
  assign sel8577 = eq8458 ? reg8149[543:512] : bindout8136[511:480];
  assign sel8578 = bindout8139 ? sel8577 : reg8149[543:512];
  assign sel8579 = bindout2306 ? shr8479[543:512] : reg8149[543:512];
  assign sel8580 = bindout4608 ? shr8479[543:512] : reg8149[543:512];
  always @(*) begin
    case (reg8449)
      2'h0: sel8581 = sel8578;
      2'h1: sel8581 = sel8579;
      2'h2: sel8581 = sel8580;
      default: sel8581 = reg8149[543:512];
    endcase
  end
  assign sel8582 = andb8584 ? 1'h1 : 1'h0;
  assign eq8583 = reg8449 == 2'h0;
  assign andb8584 = eq8583 & bindout8139;

  assign io_qpi_rd_req_addr = bindout7819;
  assign io_qpi_rd_req_mdata = bindout7822;
  assign io_qpi_rd_req_valid = bindout7825;
  assign io_qpi_wr_req_addr = bindout7840;
  assign io_qpi_wr_req_mdata = bindout7843;
  assign io_qpi_wr_req_data = bindout7846;
  assign io_qpi_wr_req_valid = bindout7849;
  assign io_done = reg8245;

endmodule
