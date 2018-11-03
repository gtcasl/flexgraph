module ch_llqueue(
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
  wire andl185; // /home/blaise/dev/cash/include/htl/queue.h(102)
  wire andl188; // /home/blaise/dev/cash/include/htl/queue.h(103)
  reg[1:0] reg195; // /home/blaise/dev/cash/include/htl/queue.h(124)
  reg[2:0] reg205; // /home/blaise/dev/cash/include/htl/queue.h(125)
  wire notl208; // /home/blaise/dev/cash/include/htl/queue.h(130)
  wire andl211; // /home/blaise/dev/cash/include/htl/queue.h(130)
  wire notl214; // /home/blaise/dev/cash/include/htl/queue.h(127)
  wire andl217; // /home/blaise/dev/cash/include/htl/queue.h(127)
  wire[1:0] add222; // /home/blaise/dev/cash/include/htl/queue.h(128)
  wire[2:0] proxy227; // /home/blaise/dev/cash/include/htl/queue.h(129)
  wire[1:0] sub233; // /home/blaise/dev/cash/include/htl/queue.h(131)
  wire[2:0] proxy238; // /home/blaise/dev/cash/include/htl/queue.h(132)
  reg[2:0] sel241; // /home/blaise/dev/cash/include/htl/queue.h(127)
  reg[1:0] sel242; // /home/blaise/dev/cash/include/htl/queue.h(127)
  wire andb250; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb253; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb261; // /home/blaise/dev/cash/include/htl/queue.h(138)
  wire andb267; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb270; // /home/blaise/dev/cash/include/htl/queue.h(137)
  reg[511:0] reg284; // /usr/include/c++/7/array(94)
  reg[511:0] reg289; // /usr/include/c++/7/array(94)
  wire[511:0] sel292; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel295; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel298; // /home/blaise/dev/cash/include/htl/queue.h(145)
  wire notl302; // /home/blaise/dev/cash/include/htl/queue.h(148)
  wire notl306; // /home/blaise/dev/cash/include/htl/queue.h(149)

  assign andl185 = io_deq_ready && notl302;
  assign andl188 = io_enq_valid && notl306;
  always @ (posedge clk) begin
    if (reset)
      reg195 <= 2'h0;
    else
      reg195 <= sel242;
  end
  always @ (posedge clk) begin
    if (reset)
      reg205 <= 3'h1;
    else
      reg205 <= sel241;
  end
  assign notl208 = !andl188;
  assign andl211 = andl185 && notl208;
  assign notl214 = !andl185;
  assign andl217 = andl188 && notl214;
  assign add222 = reg195 + 2'h1;
  assign proxy227 = {reg205[1:0], 1'h0};
  assign sub233 = reg195 - 2'h1;
  assign proxy238 = {1'h0, reg205[2:1]};
  always @(*) begin
    if (andl217)
      sel241 = proxy227;
    else if (andl211)
      sel241 = proxy238;
    else
      sel241 = reg205;
  end
  always @(*) begin
    if (andl217)
      sel242 = add222;
    else if (andl211)
      sel242 = sub233;
    else
      sel242 = reg195;
  end
  assign andb250 = andl188 & reg205[0];
  assign orb253 = andl185 | andb250;
  assign orb261 = notl214 | reg205[1];
  assign andb267 = andl188 & reg205[1];
  assign orb270 = andl185 | andb267;
  always @ (posedge clk) begin
    reg284 <= sel295;
  end
  always @ (posedge clk) begin
    reg289 <= sel298;
  end
  assign sel292 = orb261 ? io_enq_data : reg289;
  assign sel295 = orb253 ? sel292 : reg284;
  assign sel298 = orb270 ? io_enq_data : reg289;
  assign notl302 = !reg205[0];
  assign notl306 = !reg205[2];

  assign io_enq_ready = notl306;
  assign io_deq_data = reg284;
  assign io_deq_valid = notl302;
  assign io_size = reg195;

endmodule


module ch_queue(
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
  wire andl511; // /home/blaise/dev/cash/include/htl/queue.h(25)
  wire andl514; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[5:0] reg521; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire notl527; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire andl530; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire notl533; // /home/blaise/dev/cash/include/htl/queue.h(29)
  wire andl536; // /home/blaise/dev/cash/include/htl/queue.h(29)
  wire[5:0] add541; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire[5:0] sub545; // /home/blaise/dev/cash/include/htl/queue.h(32)
  reg[5:0] sel547; // /home/blaise/dev/cash/include/htl/queue.h(29)
  reg reg553; // /home/blaise/dev/cash/include/htl/queue.h(35)
  wire eq566; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl568; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl570; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg sel575; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg reg580; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire eq594; // /home/blaise/dev/cash/include/htl/queue.h(43)
  wire andl596; // /home/blaise/dev/cash/include/htl/queue.h(43)
  wire andl598; // /home/blaise/dev/cash/include/htl/queue.h(43)
  reg sel602; // /home/blaise/dev/cash/include/htl/queue.h(43)
  reg[4:0] reg608; // /home/blaise/dev/cash/include/htl/queue.h(49)
  wire[4:0] add613; // /home/blaise/dev/cash/include/htl/queue.h(51)
  wire[4:0] sel615; // /home/blaise/dev/cash/include/htl/queue.h(50)
  reg[511:0] mem616 [0:31]; // /home/blaise/dev/cash/include/htl/queue.h(54)
  reg[4:0] reg624; // /home/blaise/dev/cash/include/htl/queue.h(65)
  reg[4:0] reg630; // /home/blaise/dev/cash/include/htl/queue.h(65)
  wire[4:0] add635; // /home/blaise/dev/cash/include/htl/queue.h(69)
  wire[4:0] sel637; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire[4:0] sel638; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire eq640; // /home/blaise/dev/cash/include/htl/queue.h(76)
  wire andl642; // /home/blaise/dev/cash/include/htl/queue.h(76)
  wire orl645; // /home/blaise/dev/cash/include/htl/queue.h(76)
  wire andl648; // /home/blaise/dev/cash/include/htl/queue.h(76)
  reg reg652; // /home/blaise/dev/cash/include/htl/queue.h(76)
  reg[511:0] reg655; // /home/blaise/dev/cash/include/htl/queue.h(77)
  wire[511:0] marport659; // /home/blaise/dev/cash/include/htl/queue.h(78)
  reg[511:0] reg662; // /home/blaise/dev/cash/include/htl/queue.h(78)
  wire[511:0] sel664; // /home/blaise/dev/cash/include/htl/queue.h(79)
  wire notl667; // /home/blaise/dev/cash/include/htl/queue.h(83)
  wire notl670; // /home/blaise/dev/cash/include/htl/queue.h(84)

  assign andl511 = io_deq_ready && notl667;
  assign andl514 = io_enq_valid && notl670;
  always @ (posedge clk) begin
    if (reset)
      reg521 <= 6'h0;
    else
      reg521 <= sel547;
  end
  assign notl527 = !andl514;
  assign andl530 = andl511 && notl527;
  assign notl533 = !andl511;
  assign andl536 = andl514 && notl533;
  assign add541 = reg521 + 6'h1;
  assign sub545 = reg521 - 6'h1;
  always @(*) begin
    if (andl536)
      sel547 = add541;
    else if (andl530)
      sel547 = sub545;
    else
      sel547 = reg521;
  end
  always @ (posedge clk) begin
    if (reset)
      reg553 <= 1'h1;
    else
      reg553 <= sel575;
  end
  assign eq566 = reg521 == 6'h1;
  assign andl568 = eq566 && andl511;
  assign andl570 = andl568 && notl527;
  always @(*) begin
    if (andl570)
      sel575 = 1'h1;
    else if (andl536)
      sel575 = 1'h0;
    else
      sel575 = reg553;
  end
  always @ (posedge clk) begin
    if (reset)
      reg580 <= 1'h0;
    else
      reg580 <= sel602;
  end
  assign eq594 = reg521 == 6'h1f;
  assign andl596 = eq594 && andl514;
  assign andl598 = andl596 && notl533;
  always @(*) begin
    if (andl598)
      sel602 = 1'h1;
    else if (andl530)
      sel602 = 1'h0;
    else
      sel602 = reg580;
  end
  always @ (posedge clk) begin
    if (reset)
      reg608 <= 5'h0;
    else
      reg608 <= sel615;
  end
  assign add613 = reg608 + 5'h1;
  assign sel615 = andl514 ? add613 : reg608;
  assign marport659 = mem616[sel638];
  always @ (posedge clk) begin
    if (andl514) begin
      mem616[reg608] <= io_enq_data;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg624 <= 5'h0;
    else
      reg624 <= sel638;
  end
  always @ (posedge clk) begin
    if (reset)
      reg630 <= 5'h1;
    else
      reg630 <= sel637;
  end
  assign add635 = reg624 + 5'h2;
  assign sel637 = andl511 ? add635 : reg630;
  assign sel638 = andl511 ? reg630 : reg624;
  assign eq640 = 6'h1 == reg521;
  assign andl642 = eq640 && andl511;
  assign orl645 = reg553 || andl642;
  assign andl648 = andl514 && orl645;
  always @ (posedge clk) begin
    if (reset)
      reg652 <= 1'h0;
    else
      reg652 <= andl648;
  end
  always @ (posedge clk) begin
    reg655 <= io_enq_data;
  end
  always @ (posedge clk) begin
    reg662 <= marport659;
  end
  assign sel664 = reg652 ? reg655 : reg662;
  assign notl667 = !reg553;
  assign notl670 = !reg580;

  assign io_enq_ready = notl670;
  assign io_deq_data = sel664;
  assign io_deq_valid = notl667;
  assign io_size = reg521;

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
  wire[351:0] lit1290 = 352'h0;
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
  wire ch_llqueue310_clk; // dcsc_walk.cpp(41)
  wire ch_llqueue310_reset; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue310_io_enq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue310_io_enq_valid; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue310_io_deq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue310_io_deq_valid; // dcsc_walk.cpp(41)
  wire ch_llqueue310_io_deq_ready; // dcsc_walk.cpp(41)
  wire ch_llqueue473_clk; // dcsc_walk.cpp(41)
  wire ch_llqueue473_reset; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue473_io_enq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue473_io_enq_valid; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue473_io_deq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue473_io_deq_valid; // dcsc_walk.cpp(41)
  wire ch_llqueue473_io_deq_ready; // dcsc_walk.cpp(41)
  wire ch_queue674_clk; // dcsc_walk.cpp(41)
  wire ch_queue674_reset; // dcsc_walk.cpp(41)
  wire[511:0] ch_queue674_io_enq_data; // dcsc_walk.cpp(41)
  wire ch_queue674_io_enq_valid; // dcsc_walk.cpp(41)
  wire[511:0] ch_queue674_io_deq_data; // dcsc_walk.cpp(41)
  wire ch_queue674_io_deq_ready; // dcsc_walk.cpp(41)
  wire ch_queue875_clk; // dcsc_walk.cpp(41)
  wire ch_queue875_reset; // dcsc_walk.cpp(41)
  wire[511:0] ch_queue875_io_enq_data; // dcsc_walk.cpp(41)
  wire ch_queue875_io_enq_valid; // dcsc_walk.cpp(41)
  wire[511:0] ch_queue875_io_deq_data; // dcsc_walk.cpp(41)
  wire ch_queue875_io_deq_ready; // dcsc_walk.cpp(41)
  wire[5:0] ch_queue875_io_size; // dcsc_walk.cpp(41)
  wire ch_llqueue1038_clk; // dcsc_walk.cpp(41)
  wire ch_llqueue1038_reset; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue1038_io_enq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue1038_io_enq_valid; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue1038_io_deq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue1038_io_deq_valid; // dcsc_walk.cpp(41)
  wire ch_llqueue1038_io_deq_ready; // dcsc_walk.cpp(41)
  wire ch_llqueue1201_clk; // dcsc_walk.cpp(41)
  wire ch_llqueue1201_reset; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue1201_io_enq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue1201_io_enq_valid; // dcsc_walk.cpp(41)
  wire[511:0] ch_llqueue1201_io_deq_data; // dcsc_walk.cpp(41)
  wire ch_llqueue1201_io_deq_valid; // dcsc_walk.cpp(41)
  wire ch_llqueue1201_io_deq_ready; // dcsc_walk.cpp(41)
  reg[7:0] reg1228; // dcsc_walk.cpp(41)
  reg[7:0] reg1234; // dcsc_walk.cpp(41)
  reg[7:0] reg1240; // dcsc_walk.cpp(41)
  reg[7:0] reg1246; // dcsc_walk.cpp(41)
  reg[7:0] reg1252; // dcsc_walk.cpp(41)
  reg[7:0] reg1258; // dcsc_walk.cpp(41)
  reg[511:0] reg1263; // dcsc_walk.cpp(41)
  reg[511:0] reg1268; // dcsc_walk.cpp(41)
  reg[511:0] reg1273; // dcsc_walk.cpp(41)
  reg[511:0] reg1278; // dcsc_walk.cpp(41)
  reg[31:0] reg1283; // dcsc_walk.cpp(41)
  reg[63:0] reg1288; // dcsc_walk.cpp(41)
  wire[351:0] proxy1305; // dcsc_walk.cpp(41)
  reg[351:0] reg1306; // dcsc_walk.cpp(41)
  wire eq1333; // lsu.h(23)
  wire andl1336; // dcsc_walk.cpp(59)
  wire eq1341; // lsu.h(23)
  wire andl1344; // dcsc_walk.cpp(60)
  wire eq1349; // lsu.h(23)
  wire andl1352; // dcsc_walk.cpp(61)
  wire eq1357; // lsu.h(23)
  wire andl1360; // dcsc_walk.cpp(62)
  wire eq1365; // lsu.h(23)
  wire andl1368; // dcsc_walk.cpp(63)
  wire eq1373; // lsu.h(23)
  wire andl1376; // dcsc_walk.cpp(64)
  reg[22:0] reg1383; // dcsc_walk.cpp(71)
  wire eq1387; // dcsc_walk.cpp(6)
  wire eq1391; // lsu.h(23)
  wire andl1394; // dcsc_walk.cpp(78)
  wire andl1396; // dcsc_walk.cpp(78)
  wire notl1399; // dcsc_walk.cpp(82)
  wire andl1401; // dcsc_walk.cpp(82)
  wire notl1404; // dcsc_walk.cpp(79)
  wire andl1407; // dcsc_walk.cpp(79)
  wire[7:0] add1412; // dcsc_walk.cpp(80)
  wire[7:0] sub1416; // dcsc_walk.cpp(83)
  reg[7:0] sel1418; // dcsc_walk.cpp(79)
  wire eq1421; // lsu.h(23)
  wire andl1426; // dcsc_walk.cpp(78)
  wire notl1429; // dcsc_walk.cpp(82)
  wire andl1431; // dcsc_walk.cpp(82)
  wire notl1434; // dcsc_walk.cpp(79)
  wire andl1437; // dcsc_walk.cpp(79)
  wire[7:0] add1441; // dcsc_walk.cpp(80)
  wire[7:0] sub1445; // dcsc_walk.cpp(83)
  reg[7:0] sel1447; // dcsc_walk.cpp(79)
  wire eq1450; // lsu.h(23)
  wire andl1455; // dcsc_walk.cpp(78)
  wire notl1458; // dcsc_walk.cpp(82)
  wire andl1460; // dcsc_walk.cpp(82)
  wire notl1463; // dcsc_walk.cpp(79)
  wire andl1466; // dcsc_walk.cpp(79)
  wire[7:0] add1470; // dcsc_walk.cpp(80)
  wire[7:0] sub1474; // dcsc_walk.cpp(83)
  reg[7:0] sel1476; // dcsc_walk.cpp(79)
  wire eq1479; // lsu.h(23)
  wire andl1484; // dcsc_walk.cpp(78)
  wire notl1487; // dcsc_walk.cpp(82)
  wire andl1489; // dcsc_walk.cpp(82)
  wire andl1495; // dcsc_walk.cpp(79)
  wire[7:0] add1499; // dcsc_walk.cpp(80)
  wire[7:0] sub1503; // dcsc_walk.cpp(83)
  reg[7:0] sel1505; // dcsc_walk.cpp(79)
  wire eq1508; // lsu.h(23)
  wire andl1513; // dcsc_walk.cpp(78)
  wire notl1516; // dcsc_walk.cpp(82)
  wire andl1518; // dcsc_walk.cpp(82)
  wire notl1521; // dcsc_walk.cpp(79)
  wire andl1524; // dcsc_walk.cpp(79)
  wire[7:0] add1528; // dcsc_walk.cpp(80)
  wire[7:0] sub1532; // dcsc_walk.cpp(83)
  reg[7:0] sel1534; // dcsc_walk.cpp(79)
  wire eq1537; // lsu.h(23)
  wire andl1542; // dcsc_walk.cpp(78)
  wire notl1545; // dcsc_walk.cpp(82)
  wire andl1547; // dcsc_walk.cpp(82)
  wire notl1550; // dcsc_walk.cpp(79)
  wire andl1553; // dcsc_walk.cpp(79)
  wire[7:0] add1557; // dcsc_walk.cpp(80)
  wire[7:0] sub1561; // dcsc_walk.cpp(83)
  reg[7:0] sel1563; // dcsc_walk.cpp(79)
  reg reg1567; // dcsc_walk.cpp(110)
  reg reg1572; // dcsc_walk.cpp(111)
  reg reg1577; // dcsc_walk.cpp(112)
  reg reg1587; // dcsc_walk.cpp(114)
  reg reg1592; // dcsc_walk.cpp(115)
  wire[84:0] proxy1596; // dcsc_walk.cpp(118)
  reg[84:0] reg1597; // dcsc_walk.cpp(118)
  reg reg1610; // dcsc_walk.cpp(121)
  wire[19:0] sub1631; // dcsc_walk.cpp(144)
  wire[19:0] shl1639; // dcsc_walk.cpp(156)
  wire[19:0] shr1643; // dcsc_walk.cpp(156)
  wire ne1648; // dcsc_walk.cpp(157)
  wire[31:0] add1657; // dcsc_walk.cpp(164)
  wire ne1673; // dcsc_walk.cpp(175)
  wire[31:0] add1680; // dcsc_walk.cpp(183)
  wire andl1687; // dcsc_walk.cpp(192)
  wire[19:0] andb1693; // dcsc_walk.cpp(195)
  wire[19:0] shl1697; // dcsc_walk.cpp(195)
  wire[511:0] shr1699; // dcsc_walk.cpp(195)
  wire[511:0] shr1712; // dcsc_walk.cpp(200)
  wire ne1722; // dcsc_walk.cpp(204)
  wire[19:0] add1732; // dcsc_walk.cpp(214)
  wire[19:0] andb1734; // dcsc_walk.cpp(214)
  wire[19:0] shl1737; // dcsc_walk.cpp(214)
  wire[511:0] shr1739; // dcsc_walk.cpp(214)
  wire[19:0] shl1751; // dcsc_walk.cpp(221)
  wire[19:0] shr1754; // dcsc_walk.cpp(221)
  wire[19:0] sub1781; // dcsc_walk.cpp(253)
  wire[19:0] shr1785; // dcsc_walk.cpp(255)
  wire[19:0] shl1789; // dcsc_walk.cpp(256)
  wire[19:0] shr1792; // dcsc_walk.cpp(256)
  wire eq1795; // dcsc_walk.cpp(257)
  wire[19:0] andb1800; // dcsc_walk.cpp(259)
  wire[19:0] shl1803; // dcsc_walk.cpp(259)
  wire[511:0] shr1805; // dcsc_walk.cpp(259)
  wire[19:0] andb1816; // dcsc_walk.cpp(260)
  wire[31:0] shl1818; // dcsc_walk.cpp(260)
  wire[31:0] andb1821; // dcsc_walk.cpp(260)
  wire ne1823; // dcsc_walk.cpp(260)
  wire[19:0] shl1833; // dcsc_walk.cpp(276)
  wire[19:0] shr1836; // dcsc_walk.cpp(276)
  wire eq1839; // dcsc_walk.cpp(277)
  wire ne1848; // dcsc_walk.cpp(291)
  wire[31:0] add1855; // dcsc_walk.cpp(299)
  wire[511:0] shr1874; // dcsc_walk.cpp(314)
  wire[31:0] andb1888; // dcsc_walk.cpp(315)
  wire ne1890; // dcsc_walk.cpp(315)
  wire ne1908; // dcsc_walk.cpp(331)
  wire[31:0] add1914; // dcsc_walk.cpp(339)
  wire[19:0] shl1922; // dcsc_walk.cpp(348)
  wire[19:0] shr1925; // dcsc_walk.cpp(348)
  wire[19:0] shl1931; // dcsc_walk.cpp(349)
  wire[19:0] add1933; // dcsc_walk.cpp(349)
  wire[19:0] shr1936; // dcsc_walk.cpp(349)
  wire[19:0] sub1941; // dcsc_walk.cpp(355)
  wire[19:0] sub1947; // dcsc_walk.cpp(357)
  wire ne1955; // dcsc_walk.cpp(365)
  wire[31:0] add1962; // dcsc_walk.cpp(373)
  wire ne1971; // dcsc_walk.cpp(384)
  wire[19:0] add1976; // dcsc_walk.cpp(388)
  wire ne1979; // dcsc_walk.cpp(389)
  wire[31:0] add1986; // dcsc_walk.cpp(398)
  wire eq1993; // dcsc_walk.cpp(409)
  wire[19:0] andb1999; // dcsc_walk.cpp(414)
  wire[19:0] shl2002; // dcsc_walk.cpp(414)
  wire[511:0] shr2004; // dcsc_walk.cpp(414)
  wire[511:0] shr2016; // dcsc_walk.cpp(417)
  wire[19:0] andb2029; // dcsc_walk.cpp(428)
  wire[19:0] shl2032; // dcsc_walk.cpp(428)
  wire[511:0] shr2034; // dcsc_walk.cpp(428)
  wire[511:0] shr2046; // dcsc_walk.cpp(429)
  wire[19:0] add2054; // dcsc_walk.cpp(437)
  wire ne2057; // dcsc_walk.cpp(439)
  wire eq2064; // dcsc_walk.cpp(441)
  wire[31:0] add2075; // dcsc_walk.cpp(457)
  wire ne2083; // dcsc_walk.cpp(468)
  wire[511:0] shr2105; // dcsc_walk.cpp(484)
  wire[511:0] shr2117; // dcsc_walk.cpp(486)
  wire[63:0] sub2131; // dcsc_walk.cpp(498)
  wire lt2140; // /home/blaise/dev/cash/include/select.h(132)
  wire[31:0] sel2142; // dcsc_walk.cpp(509)
  wire eq2146; // dcsc_walk.cpp(509)
  wire[31:0] sel2148; // dcsc_walk.cpp(509)
  wire gt2151; // /home/blaise/dev/cash/include/select.h(137)
  wire[31:0] sel2153; // dcsc_walk.cpp(510)
  wire[31:0] add2156; // dcsc_walk.cpp(511)
  wire[31:0] add2160; // dcsc_walk.cpp(512)
  wire sel2167; // dcsc_walk.cpp(441)
  wire sel2168; // dcsc_walk.cpp(439)
  wire sel2169; // dcsc_walk.cpp(435)
  wire eq2170; // dcsc_walk.cpp(138)
  wire andb2171; // dcsc_walk.cpp(138)
  wire[19:0] sel2172; // dcsc_walk.cpp(138)
  wire[5:0] sel2173; // dcsc_walk.cpp(138)
  wire[19:0] sel2174; // dcsc_walk.cpp(138)
  wire[19:0] sel2176; // dcsc_walk.cpp(138)
  wire[31:0] sel2178; // dcsc_walk.cpp(138)
  wire[31:0] sel2180; // dcsc_walk.cpp(138)
  reg sel2182; // dcsc_walk.cpp(138)
  wire[19:0] sel2183; // dcsc_walk.cpp(387)
  wire andb2184; // dcsc_walk.cpp(138)
  reg[19:0] sel2185; // dcsc_walk.cpp(138)
  wire sel2186; // dcsc_walk.cpp(308)
  wire eq2187; // dcsc_walk.cpp(138)
  wire andb2188; // dcsc_walk.cpp(138)
  wire[511:0] sel2189; // dcsc_walk.cpp(308)
  wire[31:0] sel2192; // dcsc_walk.cpp(410)
  wire[31:0] sel2193; // dcsc_walk.cpp(409)
  wire eq2194; // dcsc_walk.cpp(138)
  wire andb2195; // dcsc_walk.cpp(138)
  wire sel2196; // dcsc_walk.cpp(157)
  wire sel2197; // dcsc_walk.cpp(175)
  wire sel2199; // dcsc_walk.cpp(291)
  wire sel2200; // dcsc_walk.cpp(331)
  wire sel2201; // dcsc_walk.cpp(365)
  wire sel2202; // dcsc_walk.cpp(384)
  reg sel2203; // dcsc_walk.cpp(138)
  wire[31:0] sel2205; // dcsc_walk.cpp(507)
  wire eq2206; // dcsc_walk.cpp(138)
  wire andb2207; // dcsc_walk.cpp(138)
  wire[31:0] sel2209; // dcsc_walk.cpp(507)
  wire[31:0] sel2213; // dcsc_walk.cpp(507)
  wire[31:0] sel2217; // dcsc_walk.cpp(507)
  wire[31:0] sel2221; // dcsc_walk.cpp(160)
  wire[31:0] sel2222; // dcsc_walk.cpp(157)
  wire[31:0] sel2223; // dcsc_walk.cpp(138)
  wire[31:0] sel2225; // dcsc_walk.cpp(178)
  wire[31:0] sel2226; // dcsc_walk.cpp(175)
  wire[31:0] sel2229; // dcsc_walk.cpp(240)
  reg[31:0] sel2230; // dcsc_walk.cpp(138)
  wire[31:0] sel2232; // dcsc_walk.cpp(368)
  wire[31:0] sel2233; // dcsc_walk.cpp(365)
  wire[31:0] sel2234; // dcsc_walk.cpp(138)
  wire[31:0] sel2236; // dcsc_walk.cpp(387)
  wire[31:0] sel2237; // dcsc_walk.cpp(384)
  wire[31:0] sel2238; // dcsc_walk.cpp(409)
  reg[31:0] sel2239; // dcsc_walk.cpp(138)
  wire[31:0] sel2241; // dcsc_walk.cpp(334)
  wire[31:0] sel2242; // dcsc_walk.cpp(331)
  wire[31:0] sel2243; // dcsc_walk.cpp(138)
  wire[31:0] sel2245; // dcsc_walk.cpp(294)
  wire[31:0] sel2246; // dcsc_walk.cpp(291)
  wire[31:0] sel2247; // dcsc_walk.cpp(308)
  reg[31:0] sel2248; // dcsc_walk.cpp(138)
  wire[31:0] sel2250; // dcsc_walk.cpp(435)
  reg[31:0] sel2252; // dcsc_walk.cpp(138)
  wire sel2253; // dcsc_walk.cpp(410)
  wire andb2254; // dcsc_walk.cpp(138)
  wire andb2256; // dcsc_walk.cpp(138)
  reg[2:0] sel2257; // dcsc_walk.cpp(138)
  reg[19:0] sel2258; // dcsc_walk.cpp(138)
  wire[19:0] sel2259; // dcsc_walk.cpp(141)
  wire andb2261; // dcsc_walk.cpp(138)
  wire[19:0] sel2262; // dcsc_walk.cpp(192)
  reg[19:0] sel2263; // dcsc_walk.cpp(138)
  wire sel2269; // dcsc_walk.cpp(192)
  wire eq2270; // dcsc_walk.cpp(138)
  wire andb2271; // dcsc_walk.cpp(138)
  wire[511:0] sel2272; // dcsc_walk.cpp(410)
  wire[19:0] sel2276; // dcsc_walk.cpp(192)
  wire[19:0] sel2277; // dcsc_walk.cpp(435)
  reg[19:0] sel2278; // dcsc_walk.cpp(138)
  wire[19:0] sel2279; // dcsc_walk.cpp(240)
  reg[19:0] sel2280; // dcsc_walk.cpp(138)
  reg sel2281; // dcsc_walk.cpp(138)
  wire[19:0] sel2282; // dcsc_walk.cpp(138)
  wire[19:0] sel2283; // dcsc_walk.cpp(257)
  wire[19:0] sel2284; // dcsc_walk.cpp(138)
  wire[22:0] sel2285; // dcsc_walk.cpp(141)
  wire[22:0] sel2286; // dcsc_walk.cpp(160)
  wire andb2287; // dcsc_walk.cpp(138)
  wire[22:0] sel2288; // dcsc_walk.cpp(178)
  wire andb2289; // dcsc_walk.cpp(138)
  wire[22:0] sel2290; // dcsc_walk.cpp(204)
  wire[22:0] sel2291; // dcsc_walk.cpp(192)
  wire[22:0] sel2292; // dcsc_walk.cpp(226)
  wire[22:0] sel2294; // dcsc_walk.cpp(240)
  wire[22:0] sel2295; // dcsc_walk.cpp(260)
  wire[22:0] sel2296; // dcsc_walk.cpp(257)
  wire[22:0] sel2297; // dcsc_walk.cpp(277)
  wire[22:0] sel2298; // dcsc_walk.cpp(294)
  wire andb2299; // dcsc_walk.cpp(138)
  wire[22:0] sel2300; // dcsc_walk.cpp(315)
  wire[22:0] sel2301; // dcsc_walk.cpp(308)
  wire[22:0] sel2302; // dcsc_walk.cpp(334)
  wire andb2303; // dcsc_walk.cpp(138)
  wire[22:0] sel2304; // dcsc_walk.cpp(368)
  wire andb2305; // dcsc_walk.cpp(138)
  wire[22:0] sel2306; // dcsc_walk.cpp(389)
  wire[22:0] sel2307; // dcsc_walk.cpp(387)
  wire[22:0] sel2309; // dcsc_walk.cpp(409)
  wire[22:0] sel2310; // dcsc_walk.cpp(441)
  wire[22:0] sel2311; // dcsc_walk.cpp(439)
  wire[22:0] sel2312; // dcsc_walk.cpp(435)
  wire[22:0] sel2313; // dcsc_walk.cpp(470)
  wire[22:0] sel2314; // dcsc_walk.cpp(468)
  wire[22:0] sel2316; // dcsc_walk.cpp(507)
  reg[22:0] sel2317; // dcsc_walk.cpp(138)
  wire[63:0] sel2318; // dcsc_walk.cpp(141)
  wire[19:0] sel2321; // dcsc_walk.cpp(277)
  wire[19:0] sel2322; // dcsc_walk.cpp(138)
  wire[19:0] sel2323; // dcsc_walk.cpp(141)
  reg[19:0] sel2324; // dcsc_walk.cpp(138)
  wire[511:0] sel2325; // dcsc_walk.cpp(192)
  wire[31:0] sel2328; // dcsc_walk.cpp(138)
  wire[511:0] sel2329; // dcsc_walk.cpp(192)
  wire sel2332; // dcsc_walk.cpp(192)
  wire sel2333; // dcsc_walk.cpp(240)
  reg sel2334; // dcsc_walk.cpp(138)

  assign io_lsu_rd_req_data75 = {sel2258, sel2257};
  always @ (posedge clk) begin
    reg101 <= sel2324;
  end
  always @ (posedge clk) begin
    reg108 <= sel2259;
  end
  always @ (posedge clk) begin
    reg113 <= sel2263;
  end
  always @ (posedge clk) begin
    reg118 <= sel2278;
  end
  always @ (posedge clk) begin
    reg123 <= sel2280;
  end
  always @ (posedge clk) begin
    reg128 <= sel2282;
  end
  always @ (posedge clk) begin
    if (reset)
      reg135 <= 20'hfffff;
    else
      reg135 <= sel2284;
  end
  always @ (posedge clk) begin
    if (reset)
      reg142 <= 20'hfffff;
    else
      reg142 <= sel2322;
  end
  always @ (posedge clk) begin
    reg147 <= sel2185;
  end
  always @ (posedge clk) begin
    reg152 <= sel2174;
  end
  always @ (posedge clk) begin
    reg157 <= sel2172;
  end
  always @ (posedge clk) begin
    reg162 <= sel2173;
  end
  always @ (posedge clk) begin
    reg167 <= sel2193;
  end
  assign ch_llqueue310_clk = clk;
  assign ch_llqueue310_reset = reset;
  ch_llqueue ch_llqueue310(.clk(ch_llqueue310_clk), .reset(ch_llqueue310_reset), .io_enq_data(ch_llqueue310_io_enq_data), .io_enq_valid(ch_llqueue310_io_enq_valid), .io_deq_ready(ch_llqueue310_io_deq_ready), .io_deq_data(ch_llqueue310_io_deq_data), .io_deq_valid(ch_llqueue310_io_deq_valid));
  assign ch_llqueue310_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue310_io_enq_valid = andl1336;
  assign ch_llqueue310_io_deq_ready = reg1567;
  assign ch_llqueue473_clk = clk;
  assign ch_llqueue473_reset = reset;
  ch_llqueue ch_llqueue473(.clk(ch_llqueue473_clk), .reset(ch_llqueue473_reset), .io_enq_data(ch_llqueue473_io_enq_data), .io_enq_valid(ch_llqueue473_io_enq_valid), .io_deq_ready(ch_llqueue473_io_deq_ready), .io_deq_data(ch_llqueue473_io_deq_data), .io_deq_valid(ch_llqueue473_io_deq_valid));
  assign ch_llqueue473_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue473_io_enq_valid = andl1344;
  assign ch_llqueue473_io_deq_ready = reg1572;
  assign ch_queue674_clk = clk;
  assign ch_queue674_reset = reset;
  ch_queue ch_queue674(.clk(ch_queue674_clk), .reset(ch_queue674_reset), .io_enq_data(ch_queue674_io_enq_data), .io_enq_valid(ch_queue674_io_enq_valid), .io_deq_ready(ch_queue674_io_deq_ready), .io_deq_data(ch_queue674_io_deq_data));
  assign ch_queue674_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_queue674_io_enq_valid = andl1352;
  assign ch_queue674_io_deq_ready = reg1577;
  assign ch_queue875_clk = clk;
  assign ch_queue875_reset = reset;
  ch_queue ch_queue875(.clk(ch_queue875_clk), .reset(ch_queue875_reset), .io_enq_data(ch_queue875_io_enq_data), .io_enq_valid(ch_queue875_io_enq_valid), .io_deq_ready(ch_queue875_io_deq_ready), .io_deq_data(ch_queue875_io_deq_data), .io_size(ch_queue875_io_size));
  assign ch_queue875_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_queue875_io_enq_valid = andl1360;
  assign ch_queue875_io_deq_ready = reg1577;
  assign ch_llqueue1038_clk = clk;
  assign ch_llqueue1038_reset = reset;
  ch_llqueue ch_llqueue1038(.clk(ch_llqueue1038_clk), .reset(ch_llqueue1038_reset), .io_enq_data(ch_llqueue1038_io_enq_data), .io_enq_valid(ch_llqueue1038_io_enq_valid), .io_deq_ready(ch_llqueue1038_io_deq_ready), .io_deq_data(ch_llqueue1038_io_deq_data), .io_deq_valid(ch_llqueue1038_io_deq_valid));
  assign ch_llqueue1038_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue1038_io_enq_valid = andl1368;
  assign ch_llqueue1038_io_deq_ready = reg1587;
  assign ch_llqueue1201_clk = clk;
  assign ch_llqueue1201_reset = reset;
  ch_llqueue ch_llqueue1201(.clk(ch_llqueue1201_clk), .reset(ch_llqueue1201_reset), .io_enq_data(ch_llqueue1201_io_enq_data), .io_enq_valid(ch_llqueue1201_io_enq_valid), .io_deq_ready(ch_llqueue1201_io_deq_ready), .io_deq_data(ch_llqueue1201_io_deq_data), .io_deq_valid(ch_llqueue1201_io_deq_valid));
  assign ch_llqueue1201_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue1201_io_enq_valid = andl1376;
  assign ch_llqueue1201_io_deq_ready = reg1592;
  always @ (posedge clk) begin
    if (reset)
      reg1228 <= 8'h0;
    else
      reg1228 <= sel1418;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1234 <= 8'h0;
    else
      reg1234 <= sel1447;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1240 <= 8'h0;
    else
      reg1240 <= sel1476;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1246 <= 8'h0;
    else
      reg1246 <= sel1505;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1252 <= 8'h0;
    else
      reg1252 <= sel1534;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1258 <= 8'h0;
    else
      reg1258 <= sel1563;
  end
  always @ (posedge clk) begin
    reg1263 <= sel2325;
  end
  always @ (posedge clk) begin
    reg1268 <= sel2329;
  end
  always @ (posedge clk) begin
    reg1273 <= sel2189;
  end
  always @ (posedge clk) begin
    reg1278 <= sel2272;
  end
  always @ (posedge clk) begin
    reg1283 <= sel2328;
  end
  always @ (posedge clk) begin
    reg1288 <= sel2318;
  end
  assign proxy1305 = {sel2252, sel2248, sel2243, sel2239, sel2234, sel2230, sel2223, sel2217, sel2213, sel2209, sel2205};
  always @ (posedge clk) begin
    if (reset)
      reg1306 <= lit1290;
    else
      reg1306 <= proxy1305;
  end
  assign eq1333 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign andl1336 = io_lsu_rd_rsp_valid && eq1333;
  assign eq1341 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign andl1344 = io_lsu_rd_rsp_valid && eq1341;
  assign eq1349 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign andl1352 = io_lsu_rd_rsp_valid && eq1349;
  assign eq1357 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign andl1360 = io_lsu_rd_rsp_valid && eq1357;
  assign eq1365 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  assign andl1368 = io_lsu_rd_rsp_valid && eq1365;
  assign eq1373 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign andl1376 = io_lsu_rd_rsp_valid && eq1373;
  always @ (posedge clk) begin
    if (reset)
      reg1383 <= 23'h1;
    else
      reg1383 <= sel2317;
  end
  assign eq1387 = reg1383 == 23'h1;
  assign eq1391 = sel2257 == 3'h1;
  assign andl1394 = sel2203 && io_lsu_rd_req_ready;
  assign andl1396 = andl1394 && eq1391;
  assign notl1399 = !andl1396;
  assign andl1401 = notl1399 && reg1567;
  assign notl1404 = !reg1567;
  assign andl1407 = andl1396 && notl1404;
  assign add1412 = reg1228 + 8'h1;
  assign sub1416 = reg1228 - 8'h1;
  always @(*) begin
    if (andl1407)
      sel1418 = add1412;
    else if (andl1401)
      sel1418 = sub1416;
    else
      sel1418 = reg1228;
  end
  assign eq1421 = sel2257 == 3'h2;
  assign andl1426 = andl1394 && eq1421;
  assign notl1429 = !andl1426;
  assign andl1431 = notl1429 && reg1572;
  assign notl1434 = !reg1572;
  assign andl1437 = andl1426 && notl1434;
  assign add1441 = reg1234 + 8'h1;
  assign sub1445 = reg1234 - 8'h1;
  always @(*) begin
    if (andl1437)
      sel1447 = add1441;
    else if (andl1431)
      sel1447 = sub1445;
    else
      sel1447 = reg1234;
  end
  assign eq1450 = sel2257 == 3'h3;
  assign andl1455 = andl1394 && eq1450;
  assign notl1458 = !andl1455;
  assign andl1460 = notl1458 && reg1577;
  assign notl1463 = !reg1577;
  assign andl1466 = andl1455 && notl1463;
  assign add1470 = reg1240 + 8'h1;
  assign sub1474 = reg1240 - 8'h1;
  always @(*) begin
    if (andl1466)
      sel1476 = add1470;
    else if (andl1460)
      sel1476 = sub1474;
    else
      sel1476 = reg1240;
  end
  assign eq1479 = sel2257 == 3'h4;
  assign andl1484 = andl1394 && eq1479;
  assign notl1487 = !andl1484;
  assign andl1489 = notl1487 && reg1577;
  assign andl1495 = andl1484 && notl1463;
  assign add1499 = reg1246 + 8'h1;
  assign sub1503 = reg1246 - 8'h1;
  always @(*) begin
    if (andl1495)
      sel1505 = add1499;
    else if (andl1489)
      sel1505 = sub1503;
    else
      sel1505 = reg1246;
  end
  assign eq1508 = sel2257 == 3'h5;
  assign andl1513 = andl1394 && eq1508;
  assign notl1516 = !andl1513;
  assign andl1518 = notl1516 && reg1587;
  assign notl1521 = !reg1587;
  assign andl1524 = andl1513 && notl1521;
  assign add1528 = reg1252 + 8'h1;
  assign sub1532 = reg1252 - 8'h1;
  always @(*) begin
    if (andl1524)
      sel1534 = add1528;
    else if (andl1518)
      sel1534 = sub1532;
    else
      sel1534 = reg1252;
  end
  assign eq1537 = sel2257 == 3'h6;
  assign andl1542 = andl1394 && eq1537;
  assign notl1545 = !andl1542;
  assign andl1547 = notl1545 && reg1592;
  assign notl1550 = !reg1592;
  assign andl1553 = andl1542 && notl1550;
  assign add1557 = reg1258 + 8'h1;
  assign sub1561 = reg1258 - 8'h1;
  always @(*) begin
    if (andl1553)
      sel1563 = add1557;
    else if (andl1547)
      sel1563 = sub1561;
    else
      sel1563 = reg1258;
  end
  always @ (posedge clk) begin
    reg1567 <= sel2269;
  end
  always @ (posedge clk) begin
    reg1572 <= sel2334;
  end
  always @ (posedge clk) begin
    reg1577 <= sel2169;
  end
  always @ (posedge clk) begin
    reg1587 <= sel2253;
  end
  always @ (posedge clk) begin
    reg1592 <= sel2186;
  end
  assign proxy1596 = {sel2182, sel2180, sel2178, sel2176};
  always @ (posedge clk) begin
    reg1597 <= proxy1596;
  end
  always @ (posedge clk) begin
    reg1610 <= sel2281;
  end
  assign sub1631 = io_ctrl_start_data[51:32] - 20'h1;
  assign shl1639 = reg101 << 32'h2;
  assign shr1643 = shl1639 >> 32'h6;
  assign ne1648 = reg1228 != 8'h2;
  assign add1657 = reg1306[159:128] + 32'h1;
  assign ne1673 = reg1234 != 8'h2;
  assign add1680 = reg1306[191:160] + 32'h1;
  assign andl1687 = ch_llqueue310_io_deq_valid && ch_llqueue473_io_deq_valid;
  assign andb1693 = reg101 & 20'hf;
  assign shl1697 = andb1693 << 32'h5;
  assign shr1699 = ch_llqueue310_io_deq_data >> shl1697;
  assign shr1712 = ch_llqueue473_io_deq_data >> shl1697;
  assign ne1722 = andb1693 != 20'hf;
  assign add1732 = reg101 + 20'h1;
  assign andb1734 = add1732 & 20'hf;
  assign shl1737 = andb1734 << 32'h5;
  assign shr1739 = reg1268 >> shl1737;
  assign shl1751 = add1732 << 32'h2;
  assign shr1754 = shl1751 >> 32'h6;
  assign sub1781 = reg123 - 20'h1;
  assign shr1785 = reg113 >> 32'h5;
  assign shl1789 = shr1785 << 32'h2;
  assign shr1792 = shl1789 >> 32'h6;
  assign eq1795 = shr1792 == reg135;
  assign andb1800 = shr1785 & 20'hf;
  assign shl1803 = andb1800 << 32'h5;
  assign shr1805 = reg1273 >> shl1803;
  assign andb1816 = reg113 & 20'h1f;
  assign shl1818 = 32'h1 << andb1816;
  assign andb1821 = shr1805[31:0] & shl1818;
  assign ne1823 = andb1821 != 32'h0;
  assign shl1833 = reg113 << 32'h2;
  assign shr1836 = shl1833 >> 32'h6;
  assign eq1839 = shr1836 == reg142;
  assign ne1848 = reg1258 != 8'h2;
  assign add1855 = reg1306[319:288] + 32'h1;
  assign shr1874 = ch_llqueue1201_io_deq_data >> shl1803;
  assign andb1888 = shr1874[31:0] & shl1818;
  assign ne1890 = andb1888 != 32'h0;
  assign ne1908 = reg1252 != 8'h2;
  assign add1914 = reg1306[287:256] + 32'h1;
  assign shl1922 = reg118 << 32'h2;
  assign shr1925 = shl1922 >> 32'h6;
  assign shl1931 = reg123 << 32'h2;
  assign add1933 = shl1931 + 20'h3f;
  assign shr1936 = add1933 >> 32'h6;
  assign sub1941 = reg152 - reg147;
  assign sub1947 = reg152 - 20'h1;
  assign ne1955 = reg1240 != 8'h20;
  assign add1962 = reg1306[223:192] + 32'h1;
  assign ne1971 = reg1246 != 8'h20;
  assign add1976 = reg147 + 20'h1;
  assign ne1979 = reg147 != reg157;
  assign add1986 = reg1306[255:224] + 32'h1;
  assign eq1993 = ch_queue875_io_size == reg162;
  assign andb1999 = reg113 & 20'hf;
  assign shl2002 = andb1999 << 32'h5;
  assign shr2004 = ch_llqueue1038_io_deq_data >> shl2002;
  assign shr2016 = reg1278 >> shl2002;
  assign andb2029 = reg118 & 20'hf;
  assign shl2032 = andb2029 << 32'h5;
  assign shr2034 = ch_queue674_io_deq_data >> shl2032;
  assign shr2046 = ch_queue875_io_deq_data >> shl2032;
  assign add2054 = reg118 + 20'h1;
  assign ne2057 = reg118 != reg128;
  assign eq2064 = andb2029 == 20'hf;
  assign add2075 = reg1306[351:320] + 32'h1;
  assign ne2083 = reg101 != reg108;
  assign shr2105 = reg1263 >> shl1697;
  assign shr2117 = reg1268 >> shl1697;
  assign sub2131 = io_ctrl_timer - reg1288;
  assign lt2140 = reg1306[63:32] < reg1283;
  assign sel2142 = lt2140 ? reg1306[63:32] : reg1283;
  assign eq2146 = reg1306[63:32] == 32'h0;
  assign sel2148 = eq2146 ? reg1283 : sel2142;
  assign gt2151 = reg1306[63:32] > reg1283;
  assign sel2153 = gt2151 ? reg1306[63:32] : reg1283;
  assign add2156 = reg1306[127:96] + reg1283;
  assign add2160 = reg1306[31:0] + 32'h1;
  assign sel2167 = eq2064 ? 1'h1 : 1'h0;
  assign sel2168 = ne2057 ? sel2167 : 1'h1;
  assign sel2169 = andb2171 ? sel2168 : 1'h0;
  assign eq2170 = reg1383 == 23'h20000;
  assign andb2171 = eq2170 & io_pe_ready;
  assign sel2172 = (reg1383 == 23'h2000) ? sub1947 : reg157;
  assign sel2173 = (reg1383 == 23'h2000) ? sub1941[5:0] : reg162;
  assign sel2174 = (reg1383 == 23'h1000) ? shr1936 : reg152;
  assign sel2176 = (reg1383 == 23'h20000) ? shr2034[19:0] : reg1597[19:0];
  assign sel2178 = (reg1383 == 23'h20000) ? shr2046[31:0] : reg1597[51:20];
  assign sel2180 = (reg1383 == 23'h20000) ? reg167 : reg1597[83:52];
  always @(*) begin
    case (reg1383)
      23'h020000: sel2182 = 1'h0;
      23'h400000: sel2182 = 1'h1;
      default: sel2182 = reg1597[84];
    endcase
  end
  assign sel2183 = andb2184 ? add1976 : reg147;
  assign andb2184 = ne1971 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg1383)
      23'h001000: sel2185 = shr1925;
      23'h008000: sel2185 = sel2183;
      default: sel2185 = reg147;
    endcase
  end
  assign sel2186 = andb2188 ? 1'h1 : 1'h0;
  assign eq2187 = reg1383 == 23'h400;
  assign andb2188 = eq2187 & ch_llqueue1201_io_deq_valid;
  assign sel2189 = andb2188 ? ch_llqueue1201_io_deq_data : reg1273;
  assign sel2192 = ch_llqueue1038_io_deq_valid ? shr2004[31:0] : shr2016[31:0];
  assign sel2193 = andb2195 ? sel2192 : reg167;
  assign eq2194 = reg1383 == 23'h10000;
  assign andb2195 = eq2194 & eq1993;
  assign sel2196 = ne1648 ? 1'h1 : 1'h0;
  assign sel2197 = ne1673 ? 1'h1 : 1'h0;
  assign sel2199 = ne1848 ? 1'h1 : 1'h0;
  assign sel2200 = ne1908 ? 1'h1 : 1'h0;
  assign sel2201 = ne1955 ? 1'h1 : 1'h0;
  assign sel2202 = ne1971 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1383)
      23'h000002: sel2203 = sel2196;
      23'h000004: sel2203 = sel2197;
      23'h000010: sel2203 = sel2197;
      23'h000200: sel2203 = sel2199;
      23'h000800: sel2203 = sel2200;
      23'h004000: sel2203 = sel2201;
      23'h008000: sel2203 = sel2202;
      default: sel2203 = 1'h0;
    endcase
  end
  assign sel2205 = andb2207 ? add2160 : reg1306[31:0];
  assign eq2206 = reg1383 == 23'h400000;
  assign andb2207 = eq2206 & io_pe_ready;
  assign sel2209 = andb2207 ? sel2148 : reg1306[63:32];
  assign sel2213 = andb2207 ? sel2153 : reg1306[95:64];
  assign sel2217 = andb2207 ? add2156 : reg1306[127:96];
  assign sel2221 = io_lsu_rd_req_ready ? reg1306[159:128] : add1657;
  assign sel2222 = ne1648 ? sel2221 : add1657;
  assign sel2223 = (reg1383 == 23'h2) ? sel2222 : reg1306[159:128];
  assign sel2225 = io_lsu_rd_req_ready ? reg1306[191:160] : add1680;
  assign sel2226 = ne1673 ? sel2225 : add1680;
  assign sel2229 = ch_llqueue473_io_deq_valid ? reg1306[191:160] : add1680;
  always @(*) begin
    case (reg1383)
      23'h000004: sel2230 = sel2226;
      23'h000010: sel2230 = sel2226;
      23'h000020: sel2230 = sel2229;
      default: sel2230 = reg1306[191:160];
    endcase
  end
  assign sel2232 = io_lsu_rd_req_ready ? reg1306[223:192] : add1962;
  assign sel2233 = ne1955 ? sel2232 : add1962;
  assign sel2234 = (reg1383 == 23'h4000) ? sel2233 : reg1306[223:192];
  assign sel2236 = io_lsu_rd_req_ready ? reg1306[255:224] : add1986;
  assign sel2237 = ne1971 ? sel2236 : add1986;
  assign sel2238 = eq1993 ? reg1306[255:224] : add1986;
  always @(*) begin
    case (reg1383)
      23'h008000: sel2239 = sel2237;
      23'h010000: sel2239 = sel2238;
      default: sel2239 = reg1306[255:224];
    endcase
  end
  assign sel2241 = io_lsu_rd_req_ready ? reg1306[287:256] : add1914;
  assign sel2242 = ne1908 ? sel2241 : add1914;
  assign sel2243 = (reg1383 == 23'h800) ? sel2242 : reg1306[287:256];
  assign sel2245 = io_lsu_rd_req_ready ? reg1306[319:288] : add1855;
  assign sel2246 = ne1848 ? sel2245 : add1855;
  assign sel2247 = ch_llqueue1201_io_deq_valid ? reg1306[319:288] : add1855;
  always @(*) begin
    case (reg1383)
      23'h000200: sel2248 = sel2246;
      23'h000400: sel2248 = sel2247;
      default: sel2248 = reg1306[319:288];
    endcase
  end
  assign sel2250 = io_pe_ready ? reg1306[351:320] : add2075;
  always @(*) begin
    case (reg1383)
      23'h020000: sel2252 = sel2250;
      23'h400000: sel2252 = sel2250;
      default: sel2252 = reg1306[351:320];
    endcase
  end
  assign sel2253 = andb2256 ? 1'h1 : 1'h0;
  assign andb2254 = eq1993 & ch_llqueue1038_io_deq_valid;
  assign andb2256 = eq2194 & andb2254;
  always @(*) begin
    case (reg1383)
      23'h000002: sel2257 = 3'h1;
      23'h000004: sel2257 = 3'h2;
      23'h000010: sel2257 = 3'h2;
      23'h000200: sel2257 = 3'h6;
      23'h000800: sel2257 = 3'h5;
      23'h004000: sel2257 = 3'h3;
      23'h008000: sel2257 = 3'h4;
      default: sel2257 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg1383)
      23'h000002: sel2258 = shr1643;
      23'h000004: sel2258 = shr1643;
      23'h000010: sel2258 = shr1754;
      23'h000200: sel2258 = reg135;
      23'h000800: sel2258 = shr1836;
      23'h004000: sel2258 = reg147;
      23'h008000: sel2258 = reg147;
      default: sel2258 = 20'h0;
    endcase
  end
  assign sel2259 = andb2261 ? sub1631 : reg108;
  assign andb2261 = eq1387 & io_ctrl_start_valid;
  assign sel2262 = andl1687 ? shr1699[19:0] : reg113;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2263 = sel2262;
      23'h100000: sel2263 = shr2105[19:0];
      default: sel2263 = reg113;
    endcase
  end
  assign sel2269 = andb2271 ? 1'h1 : 1'h0;
  assign eq2270 = reg1383 == 23'h8;
  assign andb2271 = eq2270 & andl1687;
  assign sel2272 = andb2256 ? ch_llqueue1038_io_deq_data : reg1278;
  assign sel2276 = andl1687 ? shr1712[19:0] : reg118;
  assign sel2277 = io_pe_ready ? add2054 : reg118;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2278 = sel2276;
      23'h020000: sel2278 = sel2277;
      23'h100000: sel2278 = shr2117[19:0];
      default: sel2278 = reg118;
    endcase
  end
  assign sel2279 = ch_llqueue473_io_deq_valid ? ch_llqueue473_io_deq_data[19:0] : reg123;
  always @(*) begin
    case (reg1383)
      23'h000040: sel2280 = shr1739[19:0];
      23'h000020: sel2280 = sel2279;
      default: sel2280 = reg123;
    endcase
  end
  always @(*) begin
    case (reg1383)
      23'h020000: sel2281 = 1'h1;
      23'h400000: sel2281 = 1'h1;
      default: sel2281 = 1'h0;
    endcase
  end
  assign sel2282 = (reg1383 == 23'h80) ? sub1781 : reg128;
  assign sel2283 = eq1795 ? reg135 : shr1792;
  assign sel2284 = (reg1383 == 23'h80) ? sel2283 : reg135;
  assign sel2285 = io_ctrl_start_valid ? 23'h2 : reg1383;
  assign sel2286 = andb2287 ? 23'h4 : reg1383;
  assign andb2287 = ne1648 & io_lsu_rd_req_ready;
  assign sel2288 = andb2289 ? 23'h8 : reg1383;
  assign andb2289 = ne1673 & io_lsu_rd_req_ready;
  assign sel2290 = ne1722 ? 23'h40 : 23'h10;
  assign sel2291 = andl1687 ? sel2290 : reg1383;
  assign sel2292 = andb2289 ? 23'h20 : reg1383;
  assign sel2294 = ch_llqueue473_io_deq_valid ? 23'h80 : reg1383;
  assign sel2295 = ne1823 ? 23'h100 : 23'h80000;
  assign sel2296 = eq1795 ? sel2295 : 23'h200;
  assign sel2297 = eq1839 ? 23'h1000 : 23'h800;
  assign sel2298 = andb2299 ? 23'h400 : reg1383;
  assign andb2299 = ne1848 & io_lsu_rd_req_ready;
  assign sel2300 = ne1890 ? 23'h100 : 23'h80000;
  assign sel2301 = ch_llqueue1201_io_deq_valid ? sel2300 : reg1383;
  assign sel2302 = andb2303 ? 23'h1000 : reg1383;
  assign andb2303 = ne1908 & io_lsu_rd_req_ready;
  assign sel2304 = andb2305 ? 23'h8000 : reg1383;
  assign andb2305 = ne1955 & io_lsu_rd_req_ready;
  assign sel2306 = ne1979 ? 23'h4000 : 23'h10000;
  assign sel2307 = andb2184 ? sel2306 : reg1383;
  assign sel2309 = eq1993 ? 23'h20000 : reg1383;
  assign sel2310 = eq2064 ? 23'h40000 : reg1383;
  assign sel2311 = ne2057 ? sel2310 : 23'h80000;
  assign sel2312 = io_pe_ready ? sel2311 : reg1383;
  assign sel2313 = ne1722 ? 23'h100000 : 23'h2;
  assign sel2314 = ne2083 ? sel2313 : 23'h200000;
  assign sel2316 = io_pe_ready ? 23'h1 : reg1383;
  always @(*) begin
    case (reg1383)
      23'h000001: sel2317 = sel2285;
      23'h000002: sel2317 = sel2286;
      23'h000004: sel2317 = sel2288;
      23'h000008: sel2317 = sel2291;
      23'h000040: sel2317 = 23'h80;
      23'h000010: sel2317 = sel2292;
      23'h000020: sel2317 = sel2294;
      23'h000080: sel2317 = sel2296;
      23'h000100: sel2317 = sel2297;
      23'h000200: sel2317 = sel2298;
      23'h000400: sel2317 = sel2301;
      23'h000800: sel2317 = sel2302;
      23'h001000: sel2317 = 23'h2000;
      23'h002000: sel2317 = 23'h4000;
      23'h004000: sel2317 = sel2304;
      23'h008000: sel2317 = sel2307;
      23'h010000: sel2317 = sel2309;
      23'h020000: sel2317 = sel2312;
      23'h040000: sel2317 = 23'h20000;
      23'h080000: sel2317 = sel2314;
      23'h100000: sel2317 = sel2290;
      23'h200000: sel2317 = 23'h400000;
      23'h400000: sel2317 = sel2316;
      default: sel2317 = reg1383;
    endcase
  end
  assign sel2318 = andb2261 ? io_ctrl_timer : reg1288;
  assign sel2321 = eq1839 ? reg142 : shr1836;
  assign sel2322 = (reg1383 == 23'h100) ? sel2321 : reg142;
  assign sel2323 = io_ctrl_start_valid ? io_ctrl_start_data[19:0] : reg101;
  always @(*) begin
    case (reg1383)
      23'h000001: sel2324 = sel2323;
      23'h080000: sel2324 = add1732;
      default: sel2324 = reg101;
    endcase
  end
  assign sel2325 = andb2271 ? ch_llqueue310_io_deq_data : reg1263;
  assign sel2328 = (reg1383 == 23'h200000) ? sub2131[31:0] : reg1283;
  assign sel2329 = andb2271 ? ch_llqueue473_io_deq_data : reg1268;
  assign sel2332 = andl1687 ? 1'h1 : 1'h0;
  assign sel2333 = ch_llqueue473_io_deq_valid ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2334 = sel2332;
      23'h000020: sel2334 = sel2333;
      default: sel2334 = 1'h0;
    endcase
  end

  assign io_ctrl_start_ready = eq1387;
  assign io_ctrl_stats = reg1306;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data75;
  assign io_lsu_rd_req_valid = sel2203;
  assign io_pe_data = reg1597;
  assign io_pe_valid = reg1610;

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
  wire[2:0] proxy4829; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[2:0] reg4830; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[20:0] reg4838; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4847; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4856; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  wire inv4865; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orb4867; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4872; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orb4874; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4879; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orb4881; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire[20:0] sel4884; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andb4885; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4887; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4889; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andb4890; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4892; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4894; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andb4895; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4897; // /home/blaise/dev/cash/include/htl/pipe.h(38)

  assign proxy4829 = {sel4897, sel4892, sel4887};
  always @ (posedge clk) begin
    if (reset)
      reg4830 <= 3'h0;
    else
      reg4830 <= proxy4829;
  end
  always @ (posedge clk) begin
    reg4838 <= sel4884;
  end
  always @ (posedge clk) begin
    reg4847 <= sel4889;
  end
  always @ (posedge clk) begin
    reg4856 <= sel4894;
  end
  assign inv4865 = ~reg4830[2];
  assign orb4867 = inv4865 | io_deq_ready;
  assign inv4872 = ~reg4830[1];
  assign orb4874 = inv4872 | orb4867;
  assign inv4879 = ~reg4830[0];
  assign orb4881 = inv4879 | orb4874;
  assign sel4884 = andb4885 ? io_enq_data : reg4838;
  assign andb4885 = orb4881 & io_enq_valid;
  assign sel4887 = orb4881 ? io_enq_valid : reg4830[0];
  assign sel4889 = andb4890 ? reg4838 : reg4847;
  assign andb4890 = orb4874 & reg4830[0];
  assign sel4892 = orb4874 ? reg4830[0] : reg4830[1];
  assign sel4894 = andb4895 ? reg4847 : reg4856;
  assign andb4895 = orb4867 & reg4830[1];
  assign sel4897 = orb4867 ? reg4830[1] : reg4830[2];

  assign io_enq_ready = orb4881;
  assign io_deq_data = reg4856;
  assign io_deq_valid = reg4830[2];

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
  wire[511:0] lit5270 = 512'h0;
  wire[533:0] io_lsu_wr_req_data4760; // pe.cpp(19)
  wire[20:0] proxy4899; // pe.cpp(19)
  wire ch_pipe4902_clk; // pe.cpp(19)
  wire ch_pipe4902_reset; // pe.cpp(19)
  wire[20:0] ch_pipe4902_io_enq_data; // pe.cpp(19)
  wire ch_pipe4902_io_enq_valid; // pe.cpp(19)
  wire ch_pipe4902_io_enq_ready; // pe.cpp(19)
  wire[20:0] ch_pipe4902_io_deq_data; // pe.cpp(19)
  wire ch_pipe4902_io_deq_valid; // pe.cpp(19)
  wire ch_pipe4902_io_deq_ready; // pe.cpp(19)
  wire ch_pipe5051_clk; // pe.cpp(19)
  wire ch_pipe5051_reset; // pe.cpp(19)
  wire[20:0] ch_pipe5051_io_enq_data; // pe.cpp(19)
  wire ch_pipe5051_io_enq_valid; // pe.cpp(19)
  wire[20:0] ch_pipe5051_io_deq_data; // pe.cpp(19)
  wire ch_pipe5051_io_deq_valid; // pe.cpp(19)
  wire ch_pipe5051_io_deq_ready; // pe.cpp(19)
  reg[31:0] mem5072 [0:31]; // pe.cpp(19)
  reg[31:0] reg5078; // pe.cpp(19)
  reg[31:0] reg5083; // pe.cpp(19)
  reg[31:0] reg5089; // pe.cpp(19)
  reg[31:0] reg5095; // pe.cpp(19)
  reg[19:0] reg5110; // pe.cpp(19)
  wire[63:0] proxy5118; // pe.cpp(19)
  reg[63:0] reg5119; // pe.cpp(19)
  reg[1:0] reg5131; // pe.cpp(35)
  wire[31:0] shl5135; // pe.cpp(38)
  wire[31:0] shl5138; // pe.cpp(39)
  wire notl5141; // pe.cpp(43)
  wire eq5145; // pe.cpp(7)
  wire orl5147; // pe.cpp(7)
  wire notl5150; // pe.cpp(47)
  wire[31:0] andb5153; // pe.cpp(46)
  wire eq5156; // pe.cpp(46)
  wire andl5159; // pe.cpp(46)
  wire orl5161; // pe.cpp(46)
  wire eq5164; // pe.cpp(54)
  wire eq5168; // pe.cpp(7)
  wire andl5170; // pe.cpp(7)
  wire[31:0] marport5172; // pe.cpp(57)
  wire[31:0] andb5175; // pe.cpp(57)
  wire ne5178; // pe.cpp(57)
  wire[31:0] sel5180; // pe.cpp(57)
  wire andl5183; // pe.cpp(62)
  wire[31:0] udfs5185; // pe.cpp(65)
  wire andl5188; // pe.cpp(70)
  wire[19:0] andb5193; // pe.cpp(72)
  wire[31:0] udfs5197; // pe.cpp(74)
  wire andl5203; // pe.cpp(7)
  wire notl5206; // pe.cpp(81)
  wire andl5208; // pe.cpp(81)
  wire notl5211; // pe.cpp(79)
  wire andl5214; // pe.cpp(79)
  wire[31:0] add5218; // pe.cpp(80)
  wire[31:0] sub5222; // pe.cpp(82)
  reg[31:0] sel5224; // pe.cpp(79)
  wire notl5226; // pe.cpp(87)
  wire andl5229; // pe.cpp(87)
  wire notl5232; // pe.cpp(88)
  wire andl5235; // pe.cpp(88)
  wire ne5238; // pe.cpp(90)
  wire andl5241; // pe.cpp(90)
  wire[31:0] inv5244; // pe.cpp(91)
  wire[31:0] andb5247; // pe.cpp(91)
  wire[31:0] orb5249; // pe.cpp(91)
  wire[31:0] orb5258; // pe.cpp(96)
  wire[31:0] sel5260; // pe.cpp(90)
  reg[31:0] sel5261; // pe.cpp(89)
  wire[19:0] andb5265; // pe.cpp(101)
  wire[19:0] sel5267; // pe.cpp(100)
  wire andl5282; // pe.cpp(119)
  wire[19:0] andb5286; // pe.cpp(120)
  wire[31:0] orb5291; // pe.cpp(125)
  wire andl5294; // pe.cpp(129)
  wire[511:0] proxy5300; // pe.cpp(138)
  wire[31:0] marport5301; // pe.cpp(140)
  wire[31:0] marport5305; // pe.cpp(140)
  wire[31:0] marport5309; // pe.cpp(140)
  wire[31:0] marport5313; // pe.cpp(140)
  wire[31:0] marport5317; // pe.cpp(140)
  wire[31:0] marport5321; // pe.cpp(140)
  wire[31:0] marport5325; // pe.cpp(140)
  wire[31:0] marport5329; // pe.cpp(140)
  wire[31:0] marport5333; // pe.cpp(140)
  wire[31:0] marport5337; // pe.cpp(140)
  wire[31:0] marport5341; // pe.cpp(140)
  wire[31:0] marport5345; // pe.cpp(140)
  wire[31:0] marport5349; // pe.cpp(140)
  wire[31:0] marport5353; // pe.cpp(140)
  wire[31:0] marport5357; // pe.cpp(140)
  wire[31:0] marport5361; // pe.cpp(140)
  wire[19:0] shl5368; // pe.cpp(143)
  wire[19:0] shr5372; // pe.cpp(143)
  wire[31:0] add5380; // pe.cpp(152)
  wire[511:0] proxy5383; // pe.cpp(157)
  wire[31:0] marport5385; // pe.cpp(159)
  wire[31:0] marport5389; // pe.cpp(159)
  wire[31:0] marport5393; // pe.cpp(159)
  wire[31:0] marport5397; // pe.cpp(159)
  wire[31:0] marport5401; // pe.cpp(159)
  wire[31:0] marport5405; // pe.cpp(159)
  wire[31:0] marport5409; // pe.cpp(159)
  wire[31:0] marport5413; // pe.cpp(159)
  wire[31:0] marport5417; // pe.cpp(159)
  wire[31:0] marport5421; // pe.cpp(159)
  wire[31:0] marport5425; // pe.cpp(159)
  wire[31:0] marport5429; // pe.cpp(159)
  wire[31:0] marport5433; // pe.cpp(159)
  wire[31:0] marport5437; // pe.cpp(159)
  wire[31:0] marport5441; // pe.cpp(159)
  wire[31:0] marport5445; // pe.cpp(159)
  wire[19:0] add5458; // pe.cpp(162)
  wire[19:0] shr5471; // pe.cpp(177)
  wire[19:0] shl5474; // pe.cpp(177)
  wire[19:0] shr5477; // pe.cpp(177)
  wire[511:0] pad5479; // pe.cpp(178)
  wire[19:0] andb5486; // pe.cpp(178)
  wire[19:0] shl5489; // pe.cpp(178)
  wire[511:0] shl5491; // pe.cpp(178)
  wire[31:0] add5497; // pe.cpp(186)
  wire[31:0] sel5500; // pe.cpp(147)
  reg[31:0] sel5502; // pe.cpp(116)
  wire[31:0] sel5504; // pe.cpp(181)
  wire[31:0] sel5505; // pe.cpp(116)
  reg[1:0] sel5506; // pe.cpp(116)
  reg[19:0] sel5507; // pe.cpp(116)
  reg[511:0] sel5508; // pe.cpp(116)
  wire[4:0] sel5509; // pe.cpp(116)
  wire sel5510; // pe.cpp(116)
  wire[31:0] sel5511; // pe.cpp(116)
  wire[31:0] sel5512; // pe.cpp(124)
  wire[31:0] sel5513; // pe.cpp(129)
  wire[31:0] sel5514; // pe.cpp(116)
  reg sel5515; // pe.cpp(116)
  wire[31:0] sel5516; // pe.cpp(129)
  wire andb5518; // pe.cpp(116)
  wire[1:0] sel5519; // pe.cpp(129)
  wire[1:0] sel5520; // pe.cpp(147)
  wire[1:0] sel5521; // pe.cpp(166)
  wire[1:0] sel5522; // pe.cpp(181)
  reg[1:0] sel5523; // pe.cpp(116)

  assign io_lsu_wr_req_data4760 = {sel5508, sel5507, sel5506};
  assign proxy4899 = {io_req_data[84], io_req_data[19:0]};
  assign ch_pipe4902_clk = clk;
  assign ch_pipe4902_reset = reset;
  ch_pipe ch_pipe4902(.clk(ch_pipe4902_clk), .reset(ch_pipe4902_reset), .io_enq_data(ch_pipe4902_io_enq_data), .io_enq_valid(ch_pipe4902_io_enq_valid), .io_deq_ready(ch_pipe4902_io_deq_ready), .io_enq_ready(ch_pipe4902_io_enq_ready), .io_deq_data(ch_pipe4902_io_deq_data), .io_deq_valid(ch_pipe4902_io_deq_valid));
  assign ch_pipe4902_io_enq_data = proxy4899;
  assign ch_pipe4902_io_enq_valid = andl5183;
  assign ch_pipe4902_io_deq_ready = orl5161;
  assign ch_pipe5051_clk = clk;
  assign ch_pipe5051_reset = reset;
  ch_pipe ch_pipe5051(.clk(ch_pipe5051_clk), .reset(ch_pipe5051_reset), .io_enq_data(ch_pipe5051_io_enq_data), .io_enq_valid(ch_pipe5051_io_enq_valid), .io_deq_ready(ch_pipe5051_io_deq_ready), .io_deq_data(ch_pipe5051_io_deq_data), .io_deq_valid(ch_pipe5051_io_deq_valid));
  assign ch_pipe5051_io_enq_data = ch_pipe4902_io_deq_data;
  assign ch_pipe5051_io_enq_valid = andl5188;
  assign ch_pipe5051_io_deq_ready = orl5147;
  assign marport5172 = mem5072[andb5193[4:0]];
  assign marport5301 = mem5072[5'h0];
  assign marport5305 = mem5072[5'h1];
  assign marport5309 = mem5072[5'h2];
  assign marport5313 = mem5072[5'h3];
  assign marport5317 = mem5072[5'h4];
  assign marport5321 = mem5072[5'h5];
  assign marport5325 = mem5072[5'h6];
  assign marport5329 = mem5072[5'h7];
  assign marport5333 = mem5072[5'h8];
  assign marport5337 = mem5072[5'h9];
  assign marport5341 = mem5072[5'ha];
  assign marport5345 = mem5072[5'hb];
  assign marport5349 = mem5072[5'hc];
  assign marport5353 = mem5072[5'hd];
  assign marport5357 = mem5072[5'he];
  assign marport5361 = mem5072[5'hf];
  assign marport5385 = mem5072[5'h10];
  assign marport5389 = mem5072[5'h11];
  assign marport5393 = mem5072[5'h12];
  assign marport5397 = mem5072[5'h13];
  assign marport5401 = mem5072[5'h14];
  assign marport5405 = mem5072[5'h15];
  assign marport5409 = mem5072[5'h16];
  assign marport5413 = mem5072[5'h17];
  assign marport5417 = mem5072[5'h18];
  assign marport5421 = mem5072[5'h19];
  assign marport5425 = mem5072[5'h1a];
  assign marport5429 = mem5072[5'h1b];
  assign marport5433 = mem5072[5'h1c];
  assign marport5437 = mem5072[5'h1d];
  assign marport5441 = mem5072[5'h1e];
  assign marport5445 = mem5072[5'h1f];
  always @ (posedge clk) begin
    if (sel5510) begin
      mem5072[sel5509] <= sel5511;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg5078 <= 32'h0;
    else
      reg5078 <= sel5514;
  end
  always @ (posedge clk) begin
    reg5083 <= sel5516;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5089 <= 32'h0;
    else
      reg5089 <= sel5261;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5095 <= 32'h0;
    else
      reg5095 <= sel5224;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5110 <= 20'h0;
    else
      reg5110 <= sel5267;
  end
  assign proxy5118 = {sel5505, sel5502};
  always @ (posedge clk) begin
    if (reset)
      reg5119 <= 64'h0;
    else
      reg5119 <= proxy5118;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5131 <= 2'h0;
    else
      reg5131 <= sel5523;
  end
  assign shl5135 = 32'h1 << andb5193[4:0];
  assign shl5138 = 32'h1 << sel5509;
  assign notl5141 = !ch_pipe5051_io_deq_valid;
  assign eq5145 = 2'h0 == reg5131;
  assign orl5147 = eq5145 || notl5141;
  assign notl5150 = !ch_pipe4902_io_deq_valid;
  assign andb5153 = reg5089 & shl5135;
  assign eq5156 = 32'h0 == andb5153;
  assign andl5159 = orl5147 && eq5156;
  assign orl5161 = andl5159 || notl5150;
  assign eq5164 = 32'h0 == reg5095;
  assign eq5168 = reg5131 == 2'h0;
  assign andl5170 = eq5168 && eq5164;
  assign andb5175 = reg5078 & shl5135;
  assign ne5178 = 32'h0 != andb5175;
  assign sel5180 = ne5178 ? marport5172 : 32'h0;
  assign andl5183 = io_req_valid && ch_pipe4902_io_enq_ready;
  fp_mult __fp_mult5185(.clock(clk), .clk_en(orl5161), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs5185));
  assign andl5188 = ch_pipe4902_io_deq_valid && orl5161;
  assign andb5193 = ch_pipe4902_io_deq_data[19:0] & 20'h1f;
  fp_add __fp_add5197(.clock(clk), .clk_en(orl5147), .dataa(udfs5185), .datab(sel5180), .result(udfs5197));
  assign andl5203 = eq5145 && ch_pipe5051_io_deq_valid;
  assign notl5206 = !andl5183;
  assign andl5208 = notl5206 && andl5203;
  assign notl5211 = !andl5203;
  assign andl5214 = andl5183 && notl5211;
  assign add5218 = reg5095 + 32'h1;
  assign sub5222 = reg5095 - 32'h1;
  always @(*) begin
    if (andl5214)
      sel5224 = add5218;
    else if (andl5208)
      sel5224 = sub5222;
    else
      sel5224 = reg5095;
  end
  assign notl5226 = !ch_pipe4902_io_deq_data[20];
  assign andl5229 = andl5188 && notl5226;
  assign notl5232 = !ch_pipe5051_io_deq_data[20];
  assign andl5235 = andl5203 && notl5232;
  assign ne5238 = shl5135 != shl5138;
  assign andl5241 = andl5229 && ne5238;
  assign inv5244 = ~shl5138;
  assign andb5247 = reg5089 & inv5244;
  assign orb5249 = andb5247 | shl5135;
  assign orb5258 = reg5089 | shl5135;
  assign sel5260 = andl5241 ? orb5249 : andb5247;
  always @(*) begin
    if (andl5235)
      sel5261 = sel5260;
    else if (andl5229)
      sel5261 = orb5258;
    else
      sel5261 = reg5089;
  end
  assign andb5265 = ch_pipe5051_io_deq_data[19:0] & 20'hfffe0;
  assign sel5267 = andl5235 ? andb5265 : reg5110;
  assign andl5282 = ch_pipe5051_io_deq_valid && notl5232;
  assign andb5286 = ch_pipe5051_io_deq_data[19:0] & 20'h1f;
  assign orb5291 = reg5078 | shl5138;
  assign andl5294 = ch_pipe5051_io_deq_valid && ch_pipe5051_io_deq_data[20];
  assign proxy5300 = {marport5361, marport5357, marport5353, marport5349, marport5345, marport5341, marport5337, marport5333, marport5329, marport5325, marport5321, marport5317, marport5313, marport5309, marport5305, marport5301};
  assign shl5368 = reg5110 << 32'h2;
  assign shr5372 = shl5368 >> 32'h6;
  assign add5380 = reg5119[31:0] + 32'h1;
  assign proxy5383 = {marport5445, marport5441, marport5437, marport5433, marport5429, marport5425, marport5421, marport5417, marport5413, marport5409, marport5405, marport5401, marport5397, marport5393, marport5389, marport5385};
  assign add5458 = shr5372 + 20'h1;
  assign shr5471 = reg5110 >> 32'h5;
  assign shl5474 = shr5471 << 32'h2;
  assign shr5477 = shl5474 >> 32'h6;
  assign pad5479 = {{480{1'b0}}, reg5083};
  assign andb5486 = shr5471 & 20'hf;
  assign shl5489 = andb5486 << 32'h5;
  assign shl5491 = pad5479 << shl5489;
  assign add5497 = reg5119[63:32] + 32'h1;
  assign sel5500 = io_lsu_wr_req_ready ? reg5119[31:0] : add5380;
  always @(*) begin
    case (reg5131)
      2'h1: sel5502 = sel5500;
      2'h2: sel5502 = sel5500;
      default: sel5502 = reg5119[31:0];
    endcase
  end
  assign sel5504 = io_lsu_wr_req_ready ? reg5119[63:32] : add5497;
  assign sel5505 = (reg5131 == 2'h3) ? sel5504 : reg5119[63:32];
  always @(*) begin
    case (reg5131)
      2'h1: sel5506 = 2'h0;
      2'h2: sel5506 = 2'h0;
      2'h3: sel5506 = 2'h1;
      default: sel5506 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg5131)
      2'h1: sel5507 = shr5372;
      2'h2: sel5507 = add5458;
      2'h3: sel5507 = shr5477;
      default: sel5507 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg5131)
      2'h1: sel5508 = proxy5300;
      2'h2: sel5508 = proxy5383;
      2'h3: sel5508 = shl5491;
      default: sel5508 = lit5270;
    endcase
  end
  assign sel5509 = (reg5131 == 2'h0) ? andb5286[4:0] : 5'h0;
  assign sel5510 = (reg5131 == 2'h0) ? andl5282 : 1'h0;
  assign sel5511 = (reg5131 == 2'h0) ? udfs5197 : 32'h0;
  assign sel5512 = sel5510 ? orb5291 : reg5078;
  assign sel5513 = andl5294 ? 32'h0 : sel5512;
  assign sel5514 = (reg5131 == 2'h0) ? sel5513 : reg5078;
  always @(*) begin
    case (reg5131)
      2'h1: sel5515 = 1'h1;
      2'h2: sel5515 = 1'h1;
      2'h3: sel5515 = 1'h1;
      default: sel5515 = 1'h0;
    endcase
  end
  assign sel5516 = andb5518 ? reg5078 : reg5083;
  assign andb5518 = eq5168 & andl5294;
  assign sel5519 = andl5294 ? 2'h1 : reg5131;
  assign sel5520 = io_lsu_wr_req_ready ? 2'h2 : reg5131;
  assign sel5521 = io_lsu_wr_req_ready ? 2'h3 : reg5131;
  assign sel5522 = io_lsu_wr_req_ready ? 2'h0 : reg5131;
  always @(*) begin
    case (reg5131)
      2'h0: sel5523 = sel5519;
      2'h1: sel5523 = sel5520;
      2'h2: sel5523 = sel5521;
      2'h3: sel5523 = sel5522;
      default: sel5523 = reg5131;
    endcase
  end

  assign io_req_ready = ch_pipe4902_io_enq_ready;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data4760;
  assign io_lsu_wr_req_valid = sel5515;
  assign io_stats = reg5119;
  assign io_is_idle = andl5170;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel6550; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6550 = io_in[47:24];
      3'h1: sel6550 = io_in[23:0];
      default: sel6550 = io_in[71:48];
    endcase
  end

  assign io_out = sel6550;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy6597; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  reg[8:0] reg6598; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  wire[2:0] proxy6604; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6606; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6608; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6610; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire andl6617; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire andl6623; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6626; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6628; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6631; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6635; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6640; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6642; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6651; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6653; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6658; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6661; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6669; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6672; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6674; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6677; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6681; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6686; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6688; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6693; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6696; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire inv6701; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6704; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire orr6709; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6711; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6714; // /home/blaise/dev/cash/include/htl/arbiter.h(30)

  assign proxy6597 = {reg6598[8:6], andl6688, reg6598[4:3], andl6653, andl6642, reg6598[0]};
  always @ (posedge clk) begin
    if (reset)
      reg6598 <= 9'h0;
    else
      reg6598 <= proxy6597;
  end
  assign proxy6604 = {andl6696, andl6661, 1'h0};
  assign proxy6606 = {andl6704, 1'h0, andl6617};
  assign proxy6608 = {1'h0, andl6669, andl6623};
  assign proxy6610 = {andl6714, andl6677, andl6631};
  assign andl6617 = io_in[0] && reg6598[1];
  assign andl6623 = io_in[0] && reg6598[2];
  assign orr6626 = |proxy6604;
  assign inv6628 = ~orr6626;
  assign andl6631 = io_in[0] && inv6628;
  assign inv6635 = ~andl6631;
  assign orl6640 = reg6598[1] || andl6677;
  assign andl6642 = orl6640 && inv6635;
  assign orl6651 = reg6598[2] || andl6714;
  assign andl6653 = orl6651 && inv6635;
  assign inv6658 = ~reg6598[1];
  assign andl6661 = io_in[1] && inv6658;
  assign andl6669 = io_in[1] && reg6598[5];
  assign orr6672 = |proxy6606;
  assign inv6674 = ~orr6672;
  assign andl6677 = io_in[1] && inv6674;
  assign inv6681 = ~andl6677;
  assign orl6686 = reg6598[5] || andl6714;
  assign andl6688 = orl6686 && inv6681;
  assign inv6693 = ~reg6598[2];
  assign andl6696 = io_in[2] && inv6693;
  assign inv6701 = ~reg6598[5];
  assign andl6704 = io_in[2] && inv6701;
  assign orr6709 = |proxy6608;
  assign inv6711 = ~orr6709;
  assign andl6714 = io_in[2] && inv6711;

  assign io_grant = proxy6610;

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
  wire[2:0] ch_hxbar6558_io_sel; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] proxy6561; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] ch_hxbar6558_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[23:0] ch_hxbar6558_io_out; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy6718; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire ch_rrArbiter6722_clk; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire ch_rrArbiter6722_reset; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] ch_rrArbiter6722_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] ch_rrArbiter6722_io_grant; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq6768; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire andl6771; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq6776; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire andl6779; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq6784; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire andl6787; // /home/blaise/dev/cash/include/htl/arbiter.h(63)

  ch_hxbar ch_hxbar6558(.io_sel(ch_hxbar6558_io_sel), .io_in(ch_hxbar6558_io_in), .io_out(ch_hxbar6558_io_out));
  assign ch_hxbar6558_io_sel = ch_rrArbiter6722_io_grant;
  assign proxy6561 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign ch_hxbar6558_io_in = proxy6561;
  assign proxy6718 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign ch_rrArbiter6722_clk = clk;
  assign ch_rrArbiter6722_reset = reset;
  ch_rrArbiter ch_rrArbiter6722(.clk(ch_rrArbiter6722_clk), .reset(ch_rrArbiter6722_reset), .io_in(ch_rrArbiter6722_io_in), .io_grant(ch_rrArbiter6722_io_grant));
  assign ch_rrArbiter6722_io_in = proxy6718;
  assign eq6768 = ch_rrArbiter6722_io_grant == 3'h1;
  assign andl6771 = io_out_ready && eq6768;
  assign eq6776 = ch_rrArbiter6722_io_grant == 3'h2;
  assign andl6779 = io_out_ready && eq6776;
  assign eq6784 = ch_rrArbiter6722_io_grant == 3'h4;
  assign andl6787 = io_out_ready && eq6784;

  assign io_in_0_ready = andl6771;
  assign io_in_1_ready = andl6779;
  assign io_in_2_ready = andl6787;
  assign io_out_data = ch_hxbar6558_io_out[22:0];
  assign io_out_valid = ch_hxbar6558_io_out[23];
  assign io_out_grant = ch_rrArbiter6722_io_grant;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  reg[534:0] sel6912; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6912 = io_in[1069:535];
      3'h1: sel6912 = io_in[534:0];
      default: sel6912 = io_in[1604:1070];
    endcase
  end

  assign io_out = sel6912;

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
  wire[2:0] ch_hxbar_06921_io_sel; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] proxy6924; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] ch_hxbar_06921_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[534:0] ch_hxbar_06921_io_out; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy7085; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire ch_rrArbiter7089_clk; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire ch_rrArbiter7089_reset; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] ch_rrArbiter7089_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] ch_rrArbiter7089_io_grant; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq7135; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire andl7138; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq7143; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire andl7146; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire eq7151; // /home/blaise/dev/cash/include/htl/arbiter.h(63)
  wire andl7154; // /home/blaise/dev/cash/include/htl/arbiter.h(63)

  ch_hxbar_0 ch_hxbar_06921(.io_sel(ch_hxbar_06921_io_sel), .io_in(ch_hxbar_06921_io_in), .io_out(ch_hxbar_06921_io_out));
  assign ch_hxbar_06921_io_sel = ch_rrArbiter7089_io_grant;
  assign proxy6924 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign ch_hxbar_06921_io_in = proxy6924;
  assign proxy7085 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign ch_rrArbiter7089_clk = clk;
  assign ch_rrArbiter7089_reset = reset;
  ch_rrArbiter ch_rrArbiter7089(.clk(ch_rrArbiter7089_clk), .reset(ch_rrArbiter7089_reset), .io_in(ch_rrArbiter7089_io_in), .io_grant(ch_rrArbiter7089_io_grant));
  assign ch_rrArbiter7089_io_in = proxy7085;
  assign eq7135 = ch_rrArbiter7089_io_grant == 3'h1;
  assign andl7138 = io_out_ready && eq7135;
  assign eq7143 = ch_rrArbiter7089_io_grant == 3'h2;
  assign andl7146 = io_out_ready && eq7143;
  assign eq7151 = ch_rrArbiter7089_io_grant == 3'h4;
  assign andl7154 = io_out_ready && eq7151;

  assign io_in_0_ready = andl7138;
  assign io_in_1_ready = andl7146;
  assign io_in_2_ready = andl7154;
  assign io_out_data = ch_hxbar_06921_io_out[533:0];
  assign io_out_valid = ch_hxbar_06921_io_out[534];
  assign io_out_grant = ch_rrArbiter7089_io_grant;

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
  wire[511:0] lit7398 = 512'h0;
  reg[21:0] mem7210 [0:1]; // wrcache.h(63)
  reg[511:0] mem7211 [0:1]; // wrcache.h(63)
  reg[1:0] reg7217; // wrcache.h(63)
  reg reg7227; // wrcache.h(63)
  reg[19:0] reg7234; // wrcache.h(63)
  reg reg7254; // wrcache.h(63)
  wire[533:0] io_evict_data7265; // wrcache.h(63)
  reg[2:0] reg7282; // wrcache.h(71)
  reg[533:0] reg7287; // wrcache.h(72)
  wire eq7302; // wrcache.h(15)
  wire[533:0] sel7304; // wrcache.h(83)
  wire[1:0] shl7313; // wrcache.h(85)
  wire[1:0] andb7316; // wrcache.h(85)
  wire ne7319; // wrcache.h(85)
  wire[21:0] marport7322; // wrcache.h(86)
  wire eq7326; // wrcache.h(86)
  wire andl7329; // wrcache.h(86)
  wire sel7331; // wrcache.h(86)
  wire[1:0] andb7338; // wrcache.h(87)
  wire ne7340; // wrcache.h(87)
  wire andl7343; // wrcache.h(87)
  wire sel7345; // wrcache.h(87)
  wire notl7349; // wrcache.h(88)
  wire sel7351; // wrcache.h(88)
  reg reg7355; // wrcache.h(96)
  reg reg7359; // wrcache.h(97)
  reg reg7363; // wrcache.h(98)
  reg reg7368; // wrcache.h(99)
  wire add7373; // wrcache.h(105)
  wire eq7377; // wrcache.h(106)
  wire[2:0] sel7381; // wrcache.h(106)
  wire andb7382; // wrcache.h(104)
  wire sel7383; // wrcache.h(104)
  wire[1:0] sel7384; // wrcache.h(106)
  reg reg7394; // wrcache.h(116)
  wire[21:0] marport7408; // wrcache.h(138)
  wire[1:0] andb7412; // wrcache.h(138)
  wire ne7415; // wrcache.h(138)
  wire eq7418; // wrcache.h(138)
  wire ne7422; // wrcache.h(138)
  wire andl7424; // wrcache.h(138)
  wire andl7426; // wrcache.h(138)
  wire[511:0] marport7430; // wrcache.h(143)
  wire[511:0] orb7432; // wrcache.h(143)
  wire[1:0] orb7437; // wrcache.h(144)
  wire[21:0] tag_t7443; // wrcache.h(144)
  wire[21:0] marport7451; // wrcache.h(163)
  wire eq7455; // wrcache.h(163)
  wire[1:0] shl7458; // wrcache.h(163)
  wire[1:0] andb7461; // wrcache.h(163)
  wire ne7464; // wrcache.h(163)
  wire andl7466; // wrcache.h(163)
  wire[511:0] orb7469; // wrcache.h(167)
  wire[1:0] orb7474; // wrcache.h(168)
  wire[21:0] tag_t7480; // wrcache.h(168)
  wire[1:0] shl7490; // wrcache.h(182)
  wire[1:0] orb7493; // wrcache.h(182)
  wire ne7496; // wrcache.h(185)
  wire eq7504; // wrcache.h(197)
  wire[21:0] tag_t7510; // wrcache.h(200)
  wire[1:0] inv7516; // wrcache.h(201)
  wire[1:0] andb7519; // wrcache.h(201)
  wire[1:0] andb7527; // wrcache.h(206)
  wire ne7529; // wrcache.h(206)
  wire[1:0] inv7533; // wrcache.h(209)
  wire[1:0] andb7538; // wrcache.h(209)
  wire[21:0] tag_t7544; // wrcache.h(209)
  wire ne7558; // wrcache.h(231)
  wire sel7567; // wrcache.h(237)
  wire sel7568; // wrcache.h(231)
  wire sel7569; // wrcache.h(133)
  wire sel7570; // wrcache.h(231)
  reg sel7571; // wrcache.h(133)
  wire[1:0] sel7572; // wrcache.h(231)
  reg[1:0] sel7573; // wrcache.h(133)
  wire[19:0] sel7574; // wrcache.h(231)
  reg[19:0] sel7575; // wrcache.h(133)
  wire[511:0] sel7576; // wrcache.h(231)
  reg[511:0] sel7577; // wrcache.h(133)
  wire sel7578; // wrcache.h(185)
  wire andb7579; // wrcache.h(133)
  wire eq7580; // wrcache.h(133)
  wire andb7581; // wrcache.h(133)
  wire[1:0] sel7582; // wrcache.h(160)
  wire[1:0] sel7583; // wrcache.h(197)
  reg[1:0] sel7584; // wrcache.h(133)
  wire[19:0] sel7585; // wrcache.h(160)
  wire andb7587; // wrcache.h(133)
  wire sel7588; // wrcache.h(160)
  wire[2:0] sel7591; // wrcache.h(138)
  wire[2:0] sel7592; // wrcache.h(151)
  wire[2:0] sel7593; // wrcache.h(135)
  wire[2:0] sel7594; // wrcache.h(185)
  wire[2:0] sel7595; // wrcache.h(160)
  wire[2:0] sel7596; // wrcache.h(197)
  wire[2:0] sel7597; // wrcache.h(223)
  reg[2:0] sel7598; // wrcache.h(133)
  wire sel7599; // wrcache.h(135)
  wire sel7600; // wrcache.h(163)
  wire sel7601; // wrcache.h(160)
  reg sel7602; // wrcache.h(133)
  wire sel7603; // wrcache.h(151)
  wire sel7604; // wrcache.h(135)
  wire sel7605; // wrcache.h(133)
  wire[533:0] sel7606; // wrcache.h(138)
  wire[533:0] sel7607; // wrcache.h(151)
  wire[533:0] sel7608; // wrcache.h(135)
  wire[533:0] sel7609; // wrcache.h(133)
  wire sel7610; // wrcache.h(138)
  wire andb7611; // wrcache.h(133)
  wire sel7612; // wrcache.h(160)
  reg sel7613; // wrcache.h(133)
  wire sel7617; // wrcache.h(206)
  wire sel7618; // wrcache.h(197)
  reg sel7619; // wrcache.h(133)
  wire[511:0] sel7620; // wrcache.h(138)
  wire[511:0] sel7622; // wrcache.h(163)
  wire[511:0] sel7623; // wrcache.h(160)
  reg[511:0] sel7624; // wrcache.h(133)
  wire sel7625; // wrcache.h(160)
  wire[21:0] sel7628; // wrcache.h(138)
  wire[21:0] sel7630; // wrcache.h(163)
  wire[21:0] sel7631; // wrcache.h(160)
  wire[21:0] sel7632; // wrcache.h(206)
  wire[21:0] sel7633; // wrcache.h(197)
  reg[21:0] sel7634; // wrcache.h(133)

  assign marport7322 = mem7210[1'h1];
  assign marport7408 = mem7210[sel7602];
  assign marport7451 = mem7210[sel7625];
  always @ (posedge clk) begin
    if (sel7619) begin
      mem7210[sel7602] <= sel7634;
    end
  end
  assign marport7430 = mem7211[sel7602];
  always @ (posedge clk) begin
    if (sel7613) begin
      mem7211[sel7602] <= sel7624;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg7217 <= 2'h0;
    else
      reg7217 <= sel7584;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7227 <= 1'h0;
    else
      reg7227 <= sel7588;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7234 <= 20'h0;
    else
      reg7234 <= sel7585;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7254 <= 1'h0;
    else
      reg7254 <= sel7605;
  end
  assign io_evict_data7265 = {sel7577, sel7575, sel7573};
  always @ (posedge clk) begin
    if (reset)
      reg7282 <= 3'h0;
    else
      reg7282 <= sel7598;
  end
  always @ (posedge clk) begin
    reg7287 <= sel7609;
  end
  assign eq7302 = reg7282 == 3'h0;
  assign sel7304 = eq7302 ? io_enq_data : reg7287;
  assign shl7313 = 2'h1 << 32'h1;
  assign andb7316 = reg7217 & shl7313;
  assign ne7319 = 2'h0 != andb7316;
  assign eq7326 = marport7322[21:2] == sel7304[21:2];
  assign andl7329 = ne7319 && eq7326;
  assign sel7331 = andl7329 ? 1'h1 : 1'h0;
  assign andb7338 = marport7322[1:0] & sel7304[1:0];
  assign ne7340 = andb7338 != 2'h0;
  assign andl7343 = ne7319 && ne7340;
  assign sel7345 = andl7343 ? 1'h1 : 1'h0;
  assign notl7349 = !ne7319;
  assign sel7351 = notl7349 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg7355 <= sel7331;
  end
  always @ (posedge clk) begin
    reg7359 <= sel7345;
  end
  always @ (posedge clk) begin
    reg7363 <= sel7351;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7368 <= 1'h0;
    else
      reg7368 <= io_enq_valid;
  end
  assign add7373 = reg7254 + 1'h1;
  assign eq7377 = reg7254 == 1'h1;
  assign sel7381 = andb7382 ? 3'h0 : reg7282;
  assign andb7382 = sel7569 & eq7377;
  assign sel7383 = sel7569 ? add7373 : reg7254;
  assign sel7384 = andb7382 ? 2'h0 : reg7217;
  always @ (posedge clk) begin
    if (reset)
      reg7394 <= 1'h0;
    else
      reg7394 <= sel7578;
  end
  assign andb7412 = marport7408[1:0] & io_enq_data[1:0];
  assign ne7415 = 2'h0 != andb7412;
  assign eq7418 = io_enq_data[21:2] == reg7234;
  assign ne7422 = reg7217 != 2'h0;
  assign andl7424 = ne7422 && eq7418;
  assign andl7426 = andl7424 && ne7415;
  assign orb7432 = marport7430 | io_enq_data[533:22];
  assign orb7437 = marport7408[1:0] | io_enq_data[1:0];
  assign tag_t7443 = {marport7408[21:2], orb7437};
  assign eq7455 = marport7451[21:2] == reg7287[21:2];
  assign shl7458 = 2'h1 << sel7625;
  assign andb7461 = reg7217 & shl7458;
  assign ne7464 = 2'h0 != andb7461;
  assign andl7466 = ne7464 && eq7455;
  assign orb7469 = marport7430 | reg7287[533:22];
  assign orb7474 = marport7408[1:0] | reg7287[1:0];
  assign tag_t7480 = {marport7408[21:2], orb7474};
  assign shl7490 = 2'h1 << sel7602;
  assign orb7493 = reg7217 | shl7490;
  assign ne7496 = sel7602 != reg7359;
  assign eq7504 = marport7408[1:0] == reg7287[1:0];
  assign tag_t7510 = {20'h0, 2'h0};
  assign inv7516 = ~shl7490;
  assign andb7519 = reg7217 & inv7516;
  assign andb7527 = marport7408[1:0] & reg7287[1:0];
  assign ne7529 = andb7527 != 2'h0;
  assign inv7533 = ~reg7287[1:0];
  assign andb7538 = marport7408[1:0] & inv7533;
  assign tag_t7544 = {marport7408[21:2], andb7538};
  assign ne7558 = marport7408[1:0] != 2'h0;
  assign sel7567 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel7568 = ne7558 ? sel7567 : 1'h1;
  assign sel7569 = (reg7282 == 3'h4) ? sel7568 : 1'h0;
  assign sel7570 = ne7558 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7282)
      3'h3: sel7571 = 1'h1;
      3'h4: sel7571 = sel7570;
      default: sel7571 = 1'h0;
    endcase
  end
  assign sel7572 = ne7558 ? reg7287[1:0] : 2'h0;
  always @(*) begin
    case (reg7282)
      3'h3: sel7573 = reg7287[1:0];
      3'h4: sel7573 = sel7572;
      default: sel7573 = 2'h0;
    endcase
  end
  assign sel7574 = ne7558 ? marport7408[21:2] : 20'h0;
  always @(*) begin
    case (reg7282)
      3'h3: sel7575 = marport7408[21:2];
      3'h4: sel7575 = sel7574;
      default: sel7575 = 20'h0;
    endcase
  end
  assign sel7576 = ne7558 ? marport7430 : lit7398;
  always @(*) begin
    case (reg7282)
      3'h3: sel7577 = marport7430;
      3'h4: sel7577 = sel7576;
      default: sel7577 = lit7398;
    endcase
  end
  assign sel7578 = andb7581 ? reg7359 : reg7394;
  assign andb7579 = reg7368 & ne7496;
  assign eq7580 = reg7282 == 3'h1;
  assign andb7581 = eq7580 & andb7579;
  assign sel7582 = reg7368 ? orb7493 : sel7384;
  assign sel7583 = eq7504 ? andb7519 : sel7384;
  always @(*) begin
    case (reg7282)
      3'h1: sel7584 = sel7582;
      3'h2: sel7584 = sel7583;
      default: sel7584 = sel7384;
    endcase
  end
  assign sel7585 = andb7587 ? reg7287[21:2] : reg7234;
  assign andb7587 = eq7580 & reg7368;
  assign sel7588 = andb7587 ? sel7602 : reg7227;
  assign sel7591 = andl7426 ? sel7381 : 3'h1;
  assign sel7592 = io_flush ? 3'h4 : sel7381;
  assign sel7593 = io_enq_valid ? sel7591 : sel7592;
  assign sel7594 = ne7496 ? 3'h2 : 3'h0;
  assign sel7595 = reg7368 ? sel7594 : sel7381;
  assign sel7596 = eq7504 ? 3'h3 : 3'h0;
  assign sel7597 = io_evict_ready ? 3'h0 : sel7381;
  always @(*) begin
    case (reg7282)
      3'h0: sel7598 = sel7593;
      3'h1: sel7598 = sel7595;
      3'h2: sel7598 = sel7596;
      3'h3: sel7598 = sel7597;
      default: sel7598 = sel7381;
    endcase
  end
  assign sel7599 = io_enq_valid ? reg7227 : 1'h0;
  assign sel7600 = andl7466 ? reg7355 : reg7363;
  assign sel7601 = reg7368 ? sel7600 : 1'h0;
  always @(*) begin
    case (reg7282)
      3'h0: sel7602 = sel7599;
      3'h1: sel7602 = sel7601;
      3'h2: sel7602 = reg7394;
      3'h3: sel7602 = reg7394;
      3'h4: sel7602 = reg7254;
      default: sel7602 = 1'h0;
    endcase
  end
  assign sel7603 = io_flush ? 1'h0 : sel7383;
  assign sel7604 = io_enq_valid ? sel7383 : sel7603;
  assign sel7605 = (reg7282 == 3'h0) ? sel7604 : sel7383;
  assign sel7606 = andl7426 ? reg7287 : io_enq_data;
  assign sel7607 = io_flush ? io_enq_data : reg7287;
  assign sel7608 = io_enq_valid ? sel7606 : sel7607;
  assign sel7609 = (reg7282 == 3'h0) ? sel7608 : reg7287;
  assign sel7610 = andb7611 ? 1'h1 : 1'h0;
  assign andb7611 = io_enq_valid & andl7426;
  assign sel7612 = reg7368 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7282)
      3'h0: sel7613 = sel7610;
      3'h1: sel7613 = sel7612;
      default: sel7613 = 1'h0;
    endcase
  end
  assign sel7617 = ne7529 ? 1'h1 : 1'h0;
  assign sel7618 = eq7504 ? 1'h1 : sel7617;
  always @(*) begin
    case (reg7282)
      3'h0: sel7619 = sel7610;
      3'h1: sel7619 = sel7612;
      3'h2: sel7619 = sel7618;
      default: sel7619 = 1'h0;
    endcase
  end
  assign sel7620 = andb7611 ? orb7432 : lit7398;
  assign sel7622 = andl7466 ? orb7469 : reg7287[533:22];
  assign sel7623 = reg7368 ? sel7622 : lit7398;
  always @(*) begin
    case (reg7282)
      3'h0: sel7624 = sel7620;
      3'h1: sel7624 = sel7623;
      default: sel7624 = lit7398;
    endcase
  end
  assign sel7625 = andb7587 ? reg7355 : 1'h0;
  assign sel7628 = andb7611 ? tag_t7443 : 22'h0;
  assign sel7630 = andl7466 ? tag_t7480 : reg7287[21:0];
  assign sel7631 = reg7368 ? sel7630 : 22'h0;
  assign sel7632 = ne7529 ? tag_t7544 : 22'h0;
  assign sel7633 = eq7504 ? tag_t7510 : sel7632;
  always @(*) begin
    case (reg7282)
      3'h0: sel7634 = sel7628;
      3'h1: sel7634 = sel7631;
      3'h2: sel7634 = sel7633;
      default: sel7634 = 22'h0;
    endcase
  end

  assign io_enq_ready = eq7302;
  assign io_evict_data = io_evict_data7265;
  assign io_evict_valid = sel7571;

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
  wire[511:0] lit7849 = 512'h0;
  wire[514:0] io_ctrl_rd_rsp_data6432; // lsu.cpp(19)
  wire ch_xbar_switch6793_clk; // lsu.cpp(19)
  wire ch_xbar_switch6793_reset; // lsu.cpp(19)
  wire[22:0] ch_xbar_switch6793_io_in_0_data; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_in_0_valid; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_in_0_ready; // lsu.cpp(19)
  wire[22:0] ch_xbar_switch6793_io_in_1_data; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_in_1_valid; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_in_1_ready; // lsu.cpp(19)
  wire[22:0] ch_xbar_switch6793_io_in_2_data; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_in_2_valid; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_in_2_ready; // lsu.cpp(19)
  wire[22:0] ch_xbar_switch6793_io_out_data; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_out_valid; // lsu.cpp(19)
  wire ch_xbar_switch6793_io_out_ready; // lsu.cpp(19)
  wire[2:0] ch_xbar_switch6793_io_out_grant; // lsu.cpp(19)
  wire ch_xbar_switch_07161_clk; // lsu.cpp(19)
  wire ch_xbar_switch_07161_reset; // lsu.cpp(19)
  wire[533:0] ch_xbar_switch_07161_io_in_0_data; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_in_0_valid; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_in_0_ready; // lsu.cpp(19)
  wire[533:0] ch_xbar_switch_07161_io_in_1_data; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_in_1_valid; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_in_1_ready; // lsu.cpp(19)
  wire[533:0] ch_xbar_switch_07161_io_in_2_data; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_in_2_valid; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_in_2_ready; // lsu.cpp(19)
  wire[533:0] ch_xbar_switch_07161_io_out_data; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_out_valid; // lsu.cpp(19)
  wire ch_xbar_switch_07161_io_out_ready; // lsu.cpp(19)
  wire[2:0] ch_xbar_switch_07161_io_out_grant; // lsu.cpp(19)
  wire[533:0] proxy7636; // lsu.cpp(19)
  wire spmv_write_cache7640_clk; // lsu.cpp(19)
  wire spmv_write_cache7640_reset; // lsu.cpp(19)
  wire[533:0] spmv_write_cache7640_io_enq_data; // lsu.cpp(19)
  wire spmv_write_cache7640_io_enq_valid; // lsu.cpp(19)
  wire spmv_write_cache7640_io_enq_ready; // lsu.cpp(19)
  wire[1:0] proxy_owner7652; // lsu.cpp(19)
  wire[533:0] spmv_write_cache7640_io_evict_data; // lsu.cpp(19)
  wire spmv_write_cache7640_io_evict_valid; // lsu.cpp(19)
  wire spmv_write_cache7640_io_evict_ready; // lsu.cpp(19)
  wire spmv_write_cache7640_io_flush; // lsu.cpp(19)
  wire notl7666; // lsu.cpp(44)
  reg reg7674; // lsu.cpp(47)
  reg[19:0] reg7679; // lsu.cpp(48)
  reg[13:0] reg7684; // lsu.cpp(49)
  reg[19:0] sel7694; // lsu.cpp(258)
  wire[19:0] add7695; // lsu.cpp(257)
  wire[5:0] ch_rd_mdata_t7698; // lsu.cpp(55)
  wire[13:0] pad7701; // lsu.cpp(55)
  reg[2:0] reg7706; // lsu.cpp(70)
  reg reg7712; // lsu.cpp(71)
  wire eq7718; // lsu.cpp(14)
  wire eq7722; // lsu.cpp(6)
  wire notl7725; // lsu.cpp(79)
  wire andb7728; // lsu.cpp(79)
  reg[533:0] reg7733; // lsu.cpp(81)
  reg[2:0] reg7744; // lsu.cpp(82)
  wire andb7747; // lsu.cpp(87)
  wire orb7751; // lsu.cpp(88)
  reg[31:0] sel7755; // lsu.cpp(87)
  reg[31:0] reg7762; // lsu.cpp(91)
  reg reg7767; // lsu.cpp(94)
  reg[19:0] reg7772; // lsu.cpp(95)
  reg[511:0] reg7777; // lsu.cpp(96)
  reg[13:0] reg7782; // lsu.cpp(97)
  wire[31:0] sub7786; // lsu.cpp(101)
  wire[4:0] ch_wr_mdata_t7789; // lsu.cpp(107)
  wire[19:0] add7796; // lsu.cpp(270)
  wire[13:0] pad7798; // lsu.cpp(110)
  wire[2:0] pad7801; // lsu.cpp(116)
  wire[4:0] ch_wr_mdata_t7804; // lsu.cpp(117)
  wire[19:0] add7810; // lsu.cpp(270)
  wire[13:0] pad7812; // lsu.cpp(120)
  wire notl7815; // lsu.cpp(127)
  wire[31:0] add7820; // lsu.cpp(129)
  wire[31:0] sub7822; // lsu.cpp(129)
  wire[31:0] sel7825; // lsu.cpp(127)
  wire eq7826; // lsu.cpp(103)
  wire andb7827; // lsu.cpp(103)
  wire sel7828; // lsu.cpp(127)
  wire[19:0] sel7831; // lsu.cpp(114)
  wire[19:0] sel7832; // lsu.cpp(105)
  wire[19:0] sel7833; // lsu.cpp(103)
  reg[19:0] sel7834; // lsu.cpp(271)
  wire[511:0] sel7835; // lsu.cpp(114)
  wire[511:0] sel7836; // lsu.cpp(105)
  wire[511:0] sel7837; // lsu.cpp(103)
  wire sel7838; // lsu.cpp(114)
  wire sel7839; // lsu.cpp(105)
  wire sel7840; // lsu.cpp(127)
  reg sel7841; // lsu.cpp(103)
  wire[13:0] sel7842; // lsu.cpp(114)
  wire[13:0] sel7843; // lsu.cpp(105)
  wire[13:0] sel7844; // lsu.cpp(103)
  reg[19:0] sel7845; // lsu.cpp(271)
  wire eq7856; // lsu.h(33)
  wire eq7860; // lsu.cpp(164)
  wire sel7874; // lsu.cpp(158)
  wire sel7875; // lsu.cpp(158)
  wire[1:0] sel7876; // lsu.cpp(158)
  wire[19:0] sel7877; // lsu.cpp(158)
  wire[511:0] sel7878; // lsu.cpp(158)
  wire sel7879; // lsu.cpp(158)
  wire[2:0] sel7880; // lsu.cpp(164)
  wire[2:0] sel7881; // lsu.cpp(163)
  wire[2:0] sel7882; // lsu.cpp(160)
  wire[2:0] sel7883; // lsu.cpp(177)
  wire[2:0] sel7884; // lsu.cpp(189)
  wire[2:0] sel7885; // lsu.cpp(198)
  reg[2:0] sel7887; // lsu.cpp(158)
  wire[2:0] sel7888; // lsu.cpp(160)
  wire andb7890; // lsu.cpp(158)
  wire[533:0] sel7891; // lsu.cpp(160)
  wire eq7900; // lsu.cpp(230)
  wire andb7903; // lsu.cpp(230)
  wire eq7907; // lsu.cpp(236)
  wire andb7910; // lsu.cpp(236)
  wire eq7914; // lsu.cpp(236)
  wire andb7917; // lsu.cpp(236)

  assign io_ctrl_rd_rsp_data6432 = {io_qpi_rd_rsp_data, io_qpi_rd_rsp_mdata[2:0]};
  assign ch_xbar_switch6793_clk = clk;
  assign ch_xbar_switch6793_reset = reset;
  ch_xbar_switch ch_xbar_switch6793(.clk(ch_xbar_switch6793_clk), .reset(ch_xbar_switch6793_reset), .io_in_0_data(ch_xbar_switch6793_io_in_0_data), .io_in_0_valid(ch_xbar_switch6793_io_in_0_valid), .io_in_1_data(ch_xbar_switch6793_io_in_1_data), .io_in_1_valid(ch_xbar_switch6793_io_in_1_valid), .io_in_2_data(ch_xbar_switch6793_io_in_2_data), .io_in_2_valid(ch_xbar_switch6793_io_in_2_valid), .io_out_ready(ch_xbar_switch6793_io_out_ready), .io_in_0_ready(ch_xbar_switch6793_io_in_0_ready), .io_in_1_ready(ch_xbar_switch6793_io_in_1_ready), .io_in_2_ready(ch_xbar_switch6793_io_in_2_ready), .io_out_data(ch_xbar_switch6793_io_out_data), .io_out_valid(ch_xbar_switch6793_io_out_valid), .io_out_grant(ch_xbar_switch6793_io_out_grant));
  assign ch_xbar_switch6793_io_in_0_data = io_walkers_0_rd_req_data;
  assign ch_xbar_switch6793_io_in_0_valid = io_walkers_0_rd_req_valid;
  assign ch_xbar_switch6793_io_in_1_data = io_walkers_1_rd_req_data;
  assign ch_xbar_switch6793_io_in_1_valid = io_walkers_1_rd_req_valid;
  assign ch_xbar_switch6793_io_in_2_data = io_ctrl_rd_req_data;
  assign ch_xbar_switch6793_io_in_2_valid = io_ctrl_rd_req_valid;
  assign ch_xbar_switch6793_io_out_ready = notl7666;
  assign ch_xbar_switch_07161_clk = clk;
  assign ch_xbar_switch_07161_reset = reset;
  ch_xbar_switch_0 ch_xbar_switch_07161(.clk(ch_xbar_switch_07161_clk), .reset(ch_xbar_switch_07161_reset), .io_in_0_data(ch_xbar_switch_07161_io_in_0_data), .io_in_0_valid(ch_xbar_switch_07161_io_in_0_valid), .io_in_1_data(ch_xbar_switch_07161_io_in_1_data), .io_in_1_valid(ch_xbar_switch_07161_io_in_1_valid), .io_in_2_data(ch_xbar_switch_07161_io_in_2_data), .io_in_2_valid(ch_xbar_switch_07161_io_in_2_valid), .io_out_ready(ch_xbar_switch_07161_io_out_ready), .io_in_0_ready(ch_xbar_switch_07161_io_in_0_ready), .io_in_1_ready(ch_xbar_switch_07161_io_in_1_ready), .io_in_2_ready(ch_xbar_switch_07161_io_in_2_ready), .io_out_data(ch_xbar_switch_07161_io_out_data), .io_out_valid(ch_xbar_switch_07161_io_out_valid), .io_out_grant(ch_xbar_switch_07161_io_out_grant));
  assign ch_xbar_switch_07161_io_in_0_data = io_PEs_0_wr_req_data;
  assign ch_xbar_switch_07161_io_in_0_valid = io_PEs_0_wr_req_valid;
  assign ch_xbar_switch_07161_io_in_1_data = io_PEs_1_wr_req_data;
  assign ch_xbar_switch_07161_io_in_1_valid = io_PEs_1_wr_req_valid;
  assign ch_xbar_switch_07161_io_in_2_data = io_ctrl_wr_req_data;
  assign ch_xbar_switch_07161_io_in_2_valid = io_ctrl_wr_req_valid;
  assign ch_xbar_switch_07161_io_out_ready = eq7722;
  assign proxy7636 = {sel7878, sel7877, sel7876};
  assign spmv_write_cache7640_clk = clk;
  assign spmv_write_cache7640_reset = reset;
  spmv_write_cache spmv_write_cache7640(.clk(spmv_write_cache7640_clk), .reset(spmv_write_cache7640_reset), .io_enq_data(spmv_write_cache7640_io_enq_data), .io_enq_valid(spmv_write_cache7640_io_enq_valid), .io_evict_ready(spmv_write_cache7640_io_evict_ready), .io_flush(spmv_write_cache7640_io_flush), .io_enq_ready(spmv_write_cache7640_io_enq_ready), .io_evict_data(spmv_write_cache7640_io_evict_data), .io_evict_valid(spmv_write_cache7640_io_evict_valid));
  assign spmv_write_cache7640_io_enq_data = proxy7636;
  assign spmv_write_cache7640_io_enq_valid = sel7875;
  assign proxy_owner7652 = spmv_write_cache7640_io_evict_data[1:0];
  assign spmv_write_cache7640_io_evict_ready = andb7728;
  assign spmv_write_cache7640_io_flush = sel7874;
  assign notl7666 = !io_qpi_rd_req_almostfull;
  always @ (posedge clk) begin
    if (reset)
      reg7674 <= 1'h0;
    else
      reg7674 <= ch_xbar_switch6793_io_out_valid;
  end
  always @ (posedge clk) begin
    reg7679 <= add7695;
  end
  always @ (posedge clk) begin
    reg7684 <= pad7701;
  end
  always @(*) begin
    case (ch_xbar_switch6793_io_out_data[2:0])
      3'h0: sel7694 = io_ctx[51:32];
      3'h1: sel7694 = io_ctx[71:52];
      3'h2: sel7694 = io_ctx[91:72];
      3'h3: sel7694 = io_ctx[111:92];
      3'h4: sel7694 = io_ctx[131:112];
      3'h5: sel7694 = io_ctx[151:132];
      default: sel7694 = io_ctx[171:152];
    endcase
  end
  assign add7695 = sel7694 + ch_xbar_switch6793_io_out_data[22:3];
  assign ch_rd_mdata_t7698 = {ch_xbar_switch6793_io_out_grant, ch_xbar_switch6793_io_out_data[2:0]};
  assign pad7701 = {{8{1'b0}}, ch_rd_mdata_t7698};
  always @ (posedge clk) begin
    if (reset)
      reg7706 <= 3'h0;
    else
      reg7706 <= sel7887;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7712 <= 1'h0;
    else
      reg7712 <= sel7841;
  end
  assign eq7718 = reg7712 == 1'h0;
  assign eq7722 = reg7706 == 3'h0;
  assign notl7725 = !sel7879;
  assign andb7728 = eq7718 & notl7725;
  always @ (posedge clk) begin
    reg7733 <= sel7891;
  end
  always @ (posedge clk) begin
    reg7744 <= sel7888;
  end
  assign andb7747 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign orb7751 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (orb7751)
      sel7755 = 32'h1;
    else if (andb7747)
      sel7755 = 32'h2;
    else
      sel7755 = 32'h0;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7762 <= 32'h0;
    else
      reg7762 <= sel7825;
  end
  always @ (posedge clk) begin
    reg7767 <= sel7828;
  end
  always @ (posedge clk) begin
    reg7772 <= sel7833;
  end
  always @ (posedge clk) begin
    reg7777 <= sel7837;
  end
  always @ (posedge clk) begin
    reg7782 <= sel7844;
  end
  assign sub7786 = reg7762 - sel7755;
  assign ch_wr_mdata_t7789 = {reg7744, reg7733[1:0]};
  assign add7796 = sel7834 + reg7733[21:2];
  assign pad7798 = {{9{1'b0}}, ch_wr_mdata_t7789};
  assign pad7801 = {{1{1'b0}}, proxy_owner7652};
  assign ch_wr_mdata_t7804 = {pad7801, 2'h1};
  assign add7810 = sel7845 + spmv_write_cache7640_io_evict_data[21:2];
  assign pad7812 = {{9{1'b0}}, ch_wr_mdata_t7804};
  assign notl7815 = !io_qpi_wr_req_almostfull;
  assign add7820 = reg7762 + 32'h1;
  assign sub7822 = add7820 - sel7755;
  assign sel7825 = andb7827 ? sub7822 : sub7786;
  assign eq7826 = reg7712 == 1'h1;
  assign andb7827 = eq7826 & notl7815;
  assign sel7828 = andb7827 ? 1'h1 : 1'h0;
  assign sel7831 = spmv_write_cache7640_io_evict_valid ? add7810 : reg7772;
  assign sel7832 = sel7879 ? add7796 : sel7831;
  assign sel7833 = (reg7712 == 1'h0) ? sel7832 : reg7772;
  always @(*) begin
    case (reg7733[1:0])
      2'h0: sel7834 = io_ctx[191:172];
      2'h1: sel7834 = io_ctx[211:192];
      default: sel7834 = io_ctx[231:212];
    endcase
  end
  assign sel7835 = spmv_write_cache7640_io_evict_valid ? spmv_write_cache7640_io_evict_data[533:22] : reg7777;
  assign sel7836 = sel7879 ? reg7733[533:22] : sel7835;
  assign sel7837 = (reg7712 == 1'h0) ? sel7836 : reg7777;
  assign sel7838 = spmv_write_cache7640_io_evict_valid ? 1'h1 : reg7712;
  assign sel7839 = sel7879 ? 1'h1 : sel7838;
  assign sel7840 = notl7815 ? 1'h0 : reg7712;
  always @(*) begin
    case (reg7712)
      1'h0: sel7841 = sel7839;
      1'h1: sel7841 = sel7840;
      default: sel7841 = reg7712;
    endcase
  end
  assign sel7842 = spmv_write_cache7640_io_evict_valid ? pad7812 : reg7782;
  assign sel7843 = sel7879 ? pad7798 : sel7842;
  assign sel7844 = (reg7712 == 1'h0) ? sel7843 : reg7782;
  always @(*) begin
    case (2'h1)
      2'h0: sel7845 = io_ctx[191:172];
      2'h1: sel7845 = io_ctx[211:192];
      default: sel7845 = io_ctx[231:212];
    endcase
  end
  assign eq7856 = ch_xbar_switch_07161_io_out_data[1:0] == 2'h1;
  assign eq7860 = ch_xbar_switch_07161_io_out_grant == 3'h4;
  assign sel7874 = (reg7706 == 3'h3) ? 1'h1 : 1'h0;
  assign sel7875 = (reg7706 == 3'h2) ? 1'h1 : 1'h0;
  assign sel7876 = (reg7706 == 3'h2) ? reg7744[1:0] : 2'h0;
  assign sel7877 = (reg7706 == 3'h2) ? reg7733[21:2] : 20'h0;
  assign sel7878 = (reg7706 == 3'h2) ? reg7733[533:22] : lit7849;
  assign sel7879 = (reg7706 == 3'h1) ? 1'h1 : 1'h0;
  assign sel7880 = eq7860 ? 3'h3 : 3'h2;
  assign sel7881 = eq7856 ? sel7880 : 3'h1;
  assign sel7882 = ch_xbar_switch_07161_io_out_valid ? sel7881 : reg7706;
  assign sel7883 = eq7718 ? 3'h0 : reg7706;
  assign sel7884 = spmv_write_cache7640_io_enq_ready ? 3'h0 : reg7706;
  assign sel7885 = spmv_write_cache7640_io_enq_ready ? 3'h4 : reg7706;
  always @(*) begin
    case (reg7706)
      3'h0: sel7887 = sel7882;
      3'h1: sel7887 = sel7883;
      3'h2: sel7887 = sel7884;
      3'h3: sel7887 = sel7885;
      3'h4: sel7887 = sel7884;
      default: sel7887 = reg7706;
    endcase
  end
  assign sel7888 = andb7890 ? ch_xbar_switch_07161_io_out_grant : reg7744;
  assign andb7890 = eq7722 & ch_xbar_switch_07161_io_out_valid;
  assign sel7891 = andb7890 ? ch_xbar_switch_07161_io_out_data : reg7733;
  assign eq7900 = io_qpi_rd_rsp_mdata[5:3] == 3'h4;
  assign andb7903 = io_qpi_rd_rsp_valid & eq7900;
  assign eq7907 = io_qpi_rd_rsp_mdata[5:3] == 3'h1;
  assign andb7910 = io_qpi_rd_rsp_valid & eq7907;
  assign eq7914 = io_qpi_rd_rsp_mdata[5:3] == 3'h2;
  assign andb7917 = io_qpi_rd_rsp_valid & eq7914;

  assign io_qpi_rd_req_addr = reg7679;
  assign io_qpi_rd_req_mdata = reg7684;
  assign io_qpi_rd_req_valid = reg7674;
  assign io_qpi_wr_req_addr = reg7772;
  assign io_qpi_wr_req_mdata = reg7782;
  assign io_qpi_wr_req_data = reg7777;
  assign io_qpi_wr_req_valid = reg7767;
  assign io_ctrl_rd_req_ready = ch_xbar_switch6793_io_in_2_ready;
  assign io_ctrl_wr_req_ready = ch_xbar_switch_07161_io_in_2_ready;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data6432;
  assign io_ctrl_rd_rsp_valid = andb7903;
  assign io_ctrl_outstanding_writes = reg7762;
  assign io_walkers_0_rd_req_ready = ch_xbar_switch6793_io_in_0_ready;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data6432;
  assign io_walkers_0_rd_rsp_valid = andb7910;
  assign io_walkers_1_rd_req_ready = ch_xbar_switch6793_io_in_1_ready;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data6432;
  assign io_walkers_1_rd_rsp_valid = andb7917;
  assign io_PEs_0_wr_req_ready = ch_xbar_switch_07161_io_in_0_ready;
  assign io_PEs_1_wr_req_ready = ch_xbar_switch_07161_io_in_1_ready;

endmodule

module ch_llqueue_0(
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
  wire andl8100; // /home/blaise/dev/cash/include/htl/queue.h(102)
  wire andl8103; // /home/blaise/dev/cash/include/htl/queue.h(103)
  reg[2:0] reg8110; // /home/blaise/dev/cash/include/htl/queue.h(124)
  reg[4:0] reg8120; // /home/blaise/dev/cash/include/htl/queue.h(125)
  wire notl8123; // /home/blaise/dev/cash/include/htl/queue.h(130)
  wire andl8126; // /home/blaise/dev/cash/include/htl/queue.h(130)
  wire notl8129; // /home/blaise/dev/cash/include/htl/queue.h(127)
  wire andl8132; // /home/blaise/dev/cash/include/htl/queue.h(127)
  wire[2:0] add8137; // /home/blaise/dev/cash/include/htl/queue.h(128)
  wire[4:0] proxy8142; // /home/blaise/dev/cash/include/htl/queue.h(129)
  wire[2:0] sub8148; // /home/blaise/dev/cash/include/htl/queue.h(131)
  wire[4:0] proxy8153; // /home/blaise/dev/cash/include/htl/queue.h(132)
  reg[4:0] sel8156; // /home/blaise/dev/cash/include/htl/queue.h(127)
  reg[2:0] sel8157; // /home/blaise/dev/cash/include/htl/queue.h(127)
  wire andb8165; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8168; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8176; // /home/blaise/dev/cash/include/htl/queue.h(138)
  wire andb8182; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8185; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8193; // /home/blaise/dev/cash/include/htl/queue.h(138)
  wire andb8199; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8202; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8210; // /home/blaise/dev/cash/include/htl/queue.h(138)
  wire andb8216; // /home/blaise/dev/cash/include/htl/queue.h(137)
  wire orb8219; // /home/blaise/dev/cash/include/htl/queue.h(137)
  reg[511:0] reg8233; // /usr/include/c++/7/array(94)
  reg[511:0] reg8238; // /usr/include/c++/7/array(94)
  reg[511:0] reg8243; // /usr/include/c++/7/array(94)
  reg[511:0] reg8248; // /usr/include/c++/7/array(94)
  wire[511:0] sel8251; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel8254; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel8257; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel8260; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel8263; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel8266; // /home/blaise/dev/cash/include/htl/queue.h(143)
  wire[511:0] sel8269; // /home/blaise/dev/cash/include/htl/queue.h(145)
  wire notl8273; // /home/blaise/dev/cash/include/htl/queue.h(148)
  wire notl8277; // /home/blaise/dev/cash/include/htl/queue.h(149)

  assign andl8100 = io_deq_ready && notl8273;
  assign andl8103 = io_enq_valid && notl8277;
  always @ (posedge clk) begin
    if (reset)
      reg8110 <= 3'h0;
    else
      reg8110 <= sel8157;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8120 <= 5'h1;
    else
      reg8120 <= sel8156;
  end
  assign notl8123 = !andl8103;
  assign andl8126 = andl8100 && notl8123;
  assign notl8129 = !andl8100;
  assign andl8132 = andl8103 && notl8129;
  assign add8137 = reg8110 + 3'h1;
  assign proxy8142 = {reg8120[3:0], 1'h0};
  assign sub8148 = reg8110 - 3'h1;
  assign proxy8153 = {1'h0, reg8120[4:1]};
  always @(*) begin
    if (andl8132)
      sel8156 = proxy8142;
    else if (andl8126)
      sel8156 = proxy8153;
    else
      sel8156 = reg8120;
  end
  always @(*) begin
    if (andl8132)
      sel8157 = add8137;
    else if (andl8126)
      sel8157 = sub8148;
    else
      sel8157 = reg8110;
  end
  assign andb8165 = andl8103 & reg8120[0];
  assign orb8168 = andl8100 | andb8165;
  assign orb8176 = notl8129 | reg8120[1];
  assign andb8182 = andl8103 & reg8120[1];
  assign orb8185 = andl8100 | andb8182;
  assign orb8193 = notl8129 | reg8120[2];
  assign andb8199 = andl8103 & reg8120[2];
  assign orb8202 = andl8100 | andb8199;
  assign orb8210 = notl8129 | reg8120[3];
  assign andb8216 = andl8103 & reg8120[3];
  assign orb8219 = andl8100 | andb8216;
  always @ (posedge clk) begin
    reg8233 <= sel8254;
  end
  always @ (posedge clk) begin
    reg8238 <= sel8260;
  end
  always @ (posedge clk) begin
    reg8243 <= sel8266;
  end
  always @ (posedge clk) begin
    reg8248 <= sel8269;
  end
  assign sel8251 = orb8176 ? io_enq_data : reg8238;
  assign sel8254 = orb8168 ? sel8251 : reg8233;
  assign sel8257 = orb8193 ? io_enq_data : reg8243;
  assign sel8260 = orb8185 ? sel8257 : reg8238;
  assign sel8263 = orb8210 ? io_enq_data : reg8248;
  assign sel8266 = orb8202 ? sel8263 : reg8243;
  assign sel8269 = orb8219 ? io_enq_data : reg8248;
  assign notl8273 = !reg8120[0];
  assign notl8277 = !reg8120[4];

  assign io_enq_ready = notl8277;
  assign io_deq_data = reg8233;
  assign io_deq_valid = notl8273;
  assign io_size = reg8110;

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
  wire[95:0] lit8354 = 96'h0;
  wire[511:0] lit8461 = 512'h0;
  wire spmv_dcsc_walk2340_clk; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_reset; // /usr/include/c++/7/array(94)
  wire[63:0] spmv_dcsc_walk2340_io_ctrl_start_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_ctrl_start_valid; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_ctrl_start_ready; // /usr/include/c++/7/array(94)
  wire[63:0] spmv_dcsc_walk2340_io_ctrl_timer; // /usr/include/c++/7/array(94)
  wire[351:0] spmv_dcsc_walk2340_io_ctrl_stats; // /usr/include/c++/7/array(94)
  wire[22:0] spmv_dcsc_walk2340_io_lsu_rd_req_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_lsu_rd_req_valid; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_lsu_rd_req_ready; // /usr/include/c++/7/array(94)
  wire[514:0] spmv_dcsc_walk2340_io_lsu_rd_rsp_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_lsu_rd_rsp_valid; // /usr/include/c++/7/array(94)
  wire[84:0] spmv_dcsc_walk2340_io_pe_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_pe_valid; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk2340_io_pe_ready; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_clk; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_reset; // /usr/include/c++/7/array(94)
  wire[63:0] spmv_dcsc_walk4691_io_ctrl_start_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_ctrl_start_valid; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_ctrl_start_ready; // /usr/include/c++/7/array(94)
  wire[63:0] spmv_dcsc_walk4691_io_ctrl_timer; // /usr/include/c++/7/array(94)
  wire[351:0] spmv_dcsc_walk4691_io_ctrl_stats; // /usr/include/c++/7/array(94)
  wire[22:0] spmv_dcsc_walk4691_io_lsu_rd_req_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_lsu_rd_req_valid; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_lsu_rd_req_ready; // /usr/include/c++/7/array(94)
  wire[514:0] spmv_dcsc_walk4691_io_lsu_rd_rsp_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_lsu_rd_rsp_valid; // /usr/include/c++/7/array(94)
  wire[84:0] spmv_dcsc_walk4691_io_pe_data; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_pe_valid; // /usr/include/c++/7/array(94)
  wire spmv_dcsc_walk4691_io_pe_ready; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_clk; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_reset; // /usr/include/c++/7/array(94)
  wire[84:0] spmv_pe5530_io_req_data; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_io_req_valid; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_io_req_ready; // /usr/include/c++/7/array(94)
  wire[533:0] spmv_pe5530_io_lsu_wr_req_data; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_io_lsu_wr_req_valid; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_io_lsu_wr_req_ready; // /usr/include/c++/7/array(94)
  wire[63:0] spmv_pe5530_io_stats; // /usr/include/c++/7/array(94)
  wire spmv_pe5530_io_is_idle; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_clk; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_reset; // /usr/include/c++/7/array(94)
  wire[84:0] spmv_pe6340_io_req_data; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_io_req_valid; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_io_req_ready; // /usr/include/c++/7/array(94)
  wire[533:0] spmv_pe6340_io_lsu_wr_req_data; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_io_lsu_wr_req_valid; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_io_lsu_wr_req_ready; // /usr/include/c++/7/array(94)
  wire[63:0] spmv_pe6340_io_stats; // /usr/include/c++/7/array(94)
  wire spmv_pe6340_io_is_idle; // /usr/include/c++/7/array(94)
  wire spmv_lsu7921_clk; // spmv.cpp(23)
  wire spmv_lsu7921_reset; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_rd_req_almostfull; // spmv.cpp(23)
  wire[19:0] spmv_lsu7921_io_qpi_rd_req_addr; // spmv.cpp(23)
  wire[13:0] spmv_lsu7921_io_qpi_rd_req_mdata; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_rd_req_valid; // spmv.cpp(23)
  wire[13:0] spmv_lsu7921_io_qpi_rd_rsp_mdata; // spmv.cpp(23)
  wire[511:0] spmv_lsu7921_io_qpi_rd_rsp_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_rd_rsp_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_wr_req_almostfull; // spmv.cpp(23)
  wire[19:0] spmv_lsu7921_io_qpi_wr_req_addr; // spmv.cpp(23)
  wire[13:0] spmv_lsu7921_io_qpi_wr_req_mdata; // spmv.cpp(23)
  wire[511:0] spmv_lsu7921_io_qpi_wr_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_wr_req_valid; // spmv.cpp(23)
  wire[13:0] spmv_lsu7921_io_qpi_wr_rsp0_mdata; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_wr_rsp0_valid; // spmv.cpp(23)
  wire[13:0] spmv_lsu7921_io_qpi_wr_rsp1_mdata; // spmv.cpp(23)
  wire spmv_lsu7921_io_qpi_wr_rsp1_valid; // spmv.cpp(23)
  wire[511:0] spmv_lsu7921_io_ctx; // spmv.cpp(23)
  wire[22:0] proxy7989; // spmv.cpp(23)
  wire[22:0] spmv_lsu7921_io_ctrl_rd_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_ctrl_rd_req_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_ctrl_rd_req_ready; // spmv.cpp(23)
  wire[533:0] proxy8000; // spmv.cpp(23)
  wire[533:0] spmv_lsu7921_io_ctrl_wr_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_ctrl_wr_req_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_ctrl_wr_req_ready; // spmv.cpp(23)
  wire[514:0] spmv_lsu7921_io_ctrl_rd_rsp_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_ctrl_rd_rsp_valid; // spmv.cpp(23)
  wire[31:0] spmv_lsu7921_io_ctrl_outstanding_writes; // spmv.cpp(23)
  wire[22:0] spmv_lsu7921_io_walkers_0_rd_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_walkers_0_rd_req_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_walkers_0_rd_req_ready; // spmv.cpp(23)
  wire[514:0] spmv_lsu7921_io_walkers_0_rd_rsp_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_walkers_0_rd_rsp_valid; // spmv.cpp(23)
  wire[22:0] spmv_lsu7921_io_walkers_1_rd_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_walkers_1_rd_req_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_walkers_1_rd_req_ready; // spmv.cpp(23)
  wire[514:0] spmv_lsu7921_io_walkers_1_rd_rsp_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_walkers_1_rd_rsp_valid; // spmv.cpp(23)
  wire[533:0] spmv_lsu7921_io_PEs_0_wr_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_PEs_0_wr_req_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_PEs_0_wr_req_ready; // spmv.cpp(23)
  wire[533:0] spmv_lsu7921_io_PEs_1_wr_req_data; // spmv.cpp(23)
  wire spmv_lsu7921_io_PEs_1_wr_req_valid; // spmv.cpp(23)
  wire spmv_lsu7921_io_PEs_1_wr_req_ready; // spmv.cpp(23)
  wire ch_llqueue_08281_clk; // spmv.cpp(23)
  wire ch_llqueue_08281_reset; // spmv.cpp(23)
  wire[511:0] ch_llqueue_08281_io_enq_data; // spmv.cpp(23)
  wire ch_llqueue_08281_io_enq_valid; // spmv.cpp(23)
  wire[511:0] ch_llqueue_08281_io_deq_data; // spmv.cpp(23)
  wire ch_llqueue_08281_io_deq_valid; // spmv.cpp(23)
  wire ch_llqueue_08281_io_deq_ready; // spmv.cpp(23)
  wire[543:0] proxy8305; // spmv.cpp(23)
  reg[543:0] reg8306; // spmv.cpp(23)
  reg[4:0] reg8313; // spmv.cpp(23)
  reg[31:0] reg8320; // spmv.cpp(23)
  reg[19:0] reg8327; // spmv.cpp(23)
  reg[19:0] reg8332; // spmv.cpp(23)
  reg[1:0] reg8339; // spmv.cpp(23)
  reg[19:0] reg8347; // spmv.cpp(23)
  reg[19:0] reg8352; // spmv.cpp(23)
  wire[95:0] proxy8361; // spmv.cpp(23)
  reg[95:0] reg8362; // spmv.cpp(23)
  wire[19:0] sub8375; // spmv.cpp(41)
  reg[63:0] reg8382; // spmv.cpp(44)
  wire[63:0] add8387; // spmv.cpp(45)
  reg[2:0] reg8394; // spmv.cpp(62)
  reg reg8402; // spmv.cpp(65)
  wire eq8406; // lsu.h(23)
  wire andl8409; // spmv.cpp(70)
  wire[31:0] pad8411; // spmv.cpp(77)
  wire eq8414; // lsu.h(23)
  wire andl8417; // spmv.cpp(75)
  wire andl8419; // spmv.cpp(75)
  wire[31:0] pad8421; // spmv.cpp(76)
  wire[31:0] add8423; // spmv.cpp(76)
  wire[31:0] sub8425; // spmv.cpp(76)
  wire andl8428; // spmv.cpp(80)
  wire andl8431; // spmv.cpp(82)
  wire andl8433; // spmv.cpp(82)
  wire[31:0] add8442; // spmv.cpp(92)
  wire[31:0] shl8446; // spmv.cpp(92)
  wire[31:0] add8448; // spmv.cpp(92)
  wire[31:0] shr8452; // spmv.cpp(92)
  wire[19:0] sub8456; // spmv.cpp(92)
  wire ne8466; // spmv.cpp(107)
  wire ne8477; // spmv.cpp(119)
  wire[19:0] add8482; // spmv.cpp(123)
  wire eq8485; // spmv.cpp(124)
  wire[31:0] add8491; // spmv.cpp(130)
  wire eq8498; // spmv.cpp(139)
  wire andl8500; // spmv.cpp(139)
  wire[19:0] pad8511; // spmv.cpp(157)
  wire[511:0] pad8512; // spmv.cpp(267)
  wire[415:0] ch_cu_stats_t8514; // spmv.cpp(269)
  wire[511:0] pad8530; // spmv.cpp(270)
  wire[415:0] ch_cu_stats_t8532; // spmv.cpp(272)
  wire[511:0] pad8548; // spmv.cpp(273)
  reg[511:0] sel8549; // spmv.cpp(267)
  wire[1:0] add8554; // spmv.cpp(162)
  wire eq8558; // spmv.cpp(163)
  wire eq8564; // spmv.cpp(171)
  wire[1:0] sel8568; // spmv.cpp(161)
  wire eq8569; // spmv.cpp(104)
  wire andb8570; // spmv.cpp(104)
  reg sel8571; // spmv.cpp(104)
  wire sel8572; // spmv.cpp(107)
  wire sel8573; // spmv.cpp(106)
  wire sel8574; // spmv.cpp(171)
  reg sel8575; // spmv.cpp(104)
  wire[19:0] sel8576; // spmv.cpp(107)
  wire andb8577; // spmv.cpp(104)
  wire[19:0] sel8578; // spmv.cpp(122)
  wire andb8579; // spmv.cpp(104)
  reg[19:0] sel8580; // spmv.cpp(104)
  wire[2:0] sel8581; // spmv.cpp(107)
  wire[2:0] sel8583; // spmv.cpp(124)
  wire andb8584; // spmv.cpp(104)
  wire andb8585; // spmv.cpp(104)
  wire[2:0] sel8586; // spmv.cpp(139)
  wire[2:0] sel8587; // spmv.cpp(149)
  wire[2:0] sel8588; // spmv.cpp(163)
  wire andb8589; // spmv.cpp(104)
  wire[2:0] sel8590; // spmv.cpp(171)
  reg[2:0] sel8591; // spmv.cpp(104)
  wire sel8592; // spmv.cpp(119)
  wire eq8593; // spmv.cpp(104)
  wire andb8594; // spmv.cpp(104)
  wire[31:0] sel8596; // spmv.cpp(122)
  wire[31:0] sel8597; // spmv.cpp(119)
  wire[31:0] sel8598; // spmv.cpp(104)
  reg[1:0] sel8599; // spmv.cpp(104)
  wire[19:0] sel8600; // spmv.cpp(104)
  wire[511:0] sel8601; // spmv.cpp(104)
  reg[1:0] reg8606; // spmv.cpp(189)
  wire eq8615; // spmv.cpp(205)
  wire[543:0] shr8636; // spmv.cpp(229)
  wire[19:0] add8643; // spmv.cpp(230)
  wire[4:0] sub8648; // spmv.cpp(231)
  wire ne8653; // spmv.cpp(241)
  wire ne8656; // spmv.cpp(241)
  wire andl8658; // spmv.cpp(241)
  wire[19:0] sel8695; // spmv.cpp(222)
  wire[19:0] sel8696; // spmv.cpp(222)
  reg[19:0] sel8697; // spmv.cpp(200)
  wire sel8698; // spmv.cpp(222)
  wire eq8699; // spmv.cpp(200)
  wire andb8700; // spmv.cpp(200)
  wire[63:0] sel8701; // spmv.cpp(222)
  wire sel8704; // spmv.cpp(222)
  wire eq8705; // spmv.cpp(200)
  wire andb8706; // spmv.cpp(200)
  wire[1:0] sel8707; // spmv.cpp(203)
  wire[1:0] sel8708; // spmv.cpp(241)
  wire[1:0] sel8709; // spmv.cpp(222)
  wire[1:0] sel8710; // spmv.cpp(241)
  wire[1:0] sel8711; // spmv.cpp(222)
  reg[1:0] sel8712; // spmv.cpp(200)
  wire[63:0] sel8713; // spmv.cpp(222)
  wire[31:0] sel8717; // spmv.cpp(205)
  wire andb8718; // spmv.cpp(200)
  wire[31:0] sel8719; // spmv.cpp(222)
  wire[31:0] sel8720; // spmv.cpp(222)
  reg[31:0] sel8721; // spmv.cpp(200)
  wire[479:0] sel8723; // spmv.cpp(205)
  wire[479:0] sel8724; // spmv.cpp(203)
  wire[479:0] sel8725; // spmv.cpp(222)
  wire[479:0] sel8726; // spmv.cpp(222)
  reg[479:0] sel8727; // spmv.cpp(200)
  wire[31:0] sel8729; // spmv.cpp(205)
  wire[31:0] sel8730; // spmv.cpp(203)
  wire[31:0] sel8731; // spmv.cpp(222)
  wire[31:0] sel8732; // spmv.cpp(222)
  reg[31:0] sel8733; // spmv.cpp(200)
  wire[4:0] sel8734; // spmv.cpp(205)
  wire[4:0] sel8735; // spmv.cpp(203)
  wire[4:0] sel8736; // spmv.cpp(222)
  wire[4:0] sel8737; // spmv.cpp(222)
  reg[4:0] sel8738; // spmv.cpp(200)
  wire sel8739; // spmv.cpp(203)
  wire eq8740; // spmv.cpp(200)
  wire andb8741; // spmv.cpp(200)

  assign spmv_dcsc_walk2340_clk = clk;
  assign spmv_dcsc_walk2340_reset = reset;
  spmv_dcsc_walk spmv_dcsc_walk2340(.clk(spmv_dcsc_walk2340_clk), .reset(spmv_dcsc_walk2340_reset), .io_ctrl_start_data(spmv_dcsc_walk2340_io_ctrl_start_data), .io_ctrl_start_valid(spmv_dcsc_walk2340_io_ctrl_start_valid), .io_ctrl_timer(spmv_dcsc_walk2340_io_ctrl_timer), .io_lsu_rd_req_ready(spmv_dcsc_walk2340_io_lsu_rd_req_ready), .io_lsu_rd_rsp_data(spmv_dcsc_walk2340_io_lsu_rd_rsp_data), .io_lsu_rd_rsp_valid(spmv_dcsc_walk2340_io_lsu_rd_rsp_valid), .io_pe_ready(spmv_dcsc_walk2340_io_pe_ready), .io_ctrl_start_ready(spmv_dcsc_walk2340_io_ctrl_start_ready), .io_ctrl_stats(spmv_dcsc_walk2340_io_ctrl_stats), .io_lsu_rd_req_data(spmv_dcsc_walk2340_io_lsu_rd_req_data), .io_lsu_rd_req_valid(spmv_dcsc_walk2340_io_lsu_rd_req_valid), .io_pe_data(spmv_dcsc_walk2340_io_pe_data), .io_pe_valid(spmv_dcsc_walk2340_io_pe_valid));
  assign spmv_dcsc_walk2340_io_ctrl_start_data = sel8701;
  assign spmv_dcsc_walk2340_io_ctrl_start_valid = sel8698;
  assign spmv_dcsc_walk2340_io_ctrl_timer = reg8382;
  assign spmv_dcsc_walk2340_io_lsu_rd_req_ready = spmv_lsu7921_io_walkers_0_rd_req_ready;
  assign spmv_dcsc_walk2340_io_lsu_rd_rsp_data = spmv_lsu7921_io_walkers_0_rd_rsp_data;
  assign spmv_dcsc_walk2340_io_lsu_rd_rsp_valid = spmv_lsu7921_io_walkers_0_rd_rsp_valid;
  assign spmv_dcsc_walk2340_io_pe_ready = spmv_pe5530_io_req_ready;
  assign spmv_dcsc_walk4691_clk = clk;
  assign spmv_dcsc_walk4691_reset = reset;
  spmv_dcsc_walk spmv_dcsc_walk4691(.clk(spmv_dcsc_walk4691_clk), .reset(spmv_dcsc_walk4691_reset), .io_ctrl_start_data(spmv_dcsc_walk4691_io_ctrl_start_data), .io_ctrl_start_valid(spmv_dcsc_walk4691_io_ctrl_start_valid), .io_ctrl_timer(spmv_dcsc_walk4691_io_ctrl_timer), .io_lsu_rd_req_ready(spmv_dcsc_walk4691_io_lsu_rd_req_ready), .io_lsu_rd_rsp_data(spmv_dcsc_walk4691_io_lsu_rd_rsp_data), .io_lsu_rd_rsp_valid(spmv_dcsc_walk4691_io_lsu_rd_rsp_valid), .io_pe_ready(spmv_dcsc_walk4691_io_pe_ready), .io_ctrl_start_ready(spmv_dcsc_walk4691_io_ctrl_start_ready), .io_ctrl_stats(spmv_dcsc_walk4691_io_ctrl_stats), .io_lsu_rd_req_data(spmv_dcsc_walk4691_io_lsu_rd_req_data), .io_lsu_rd_req_valid(spmv_dcsc_walk4691_io_lsu_rd_req_valid), .io_pe_data(spmv_dcsc_walk4691_io_pe_data), .io_pe_valid(spmv_dcsc_walk4691_io_pe_valid));
  assign spmv_dcsc_walk4691_io_ctrl_start_data = sel8713;
  assign spmv_dcsc_walk4691_io_ctrl_start_valid = sel8704;
  assign spmv_dcsc_walk4691_io_ctrl_timer = reg8382;
  assign spmv_dcsc_walk4691_io_lsu_rd_req_ready = spmv_lsu7921_io_walkers_1_rd_req_ready;
  assign spmv_dcsc_walk4691_io_lsu_rd_rsp_data = spmv_lsu7921_io_walkers_1_rd_rsp_data;
  assign spmv_dcsc_walk4691_io_lsu_rd_rsp_valid = spmv_lsu7921_io_walkers_1_rd_rsp_valid;
  assign spmv_dcsc_walk4691_io_pe_ready = spmv_pe6340_io_req_ready;
  assign spmv_pe5530_clk = clk;
  assign spmv_pe5530_reset = reset;
  spmv_pe spmv_pe5530(.clk(spmv_pe5530_clk), .reset(spmv_pe5530_reset), .io_req_data(spmv_pe5530_io_req_data), .io_req_valid(spmv_pe5530_io_req_valid), .io_lsu_wr_req_ready(spmv_pe5530_io_lsu_wr_req_ready), .io_req_ready(spmv_pe5530_io_req_ready), .io_lsu_wr_req_data(spmv_pe5530_io_lsu_wr_req_data), .io_lsu_wr_req_valid(spmv_pe5530_io_lsu_wr_req_valid), .io_stats(spmv_pe5530_io_stats), .io_is_idle(spmv_pe5530_io_is_idle));
  assign spmv_pe5530_io_req_data = spmv_dcsc_walk2340_io_pe_data;
  assign spmv_pe5530_io_req_valid = spmv_dcsc_walk2340_io_pe_valid;
  assign spmv_pe5530_io_lsu_wr_req_ready = spmv_lsu7921_io_PEs_0_wr_req_ready;
  assign spmv_pe6340_clk = clk;
  assign spmv_pe6340_reset = reset;
  spmv_pe spmv_pe6340(.clk(spmv_pe6340_clk), .reset(spmv_pe6340_reset), .io_req_data(spmv_pe6340_io_req_data), .io_req_valid(spmv_pe6340_io_req_valid), .io_lsu_wr_req_ready(spmv_pe6340_io_lsu_wr_req_ready), .io_req_ready(spmv_pe6340_io_req_ready), .io_lsu_wr_req_data(spmv_pe6340_io_lsu_wr_req_data), .io_lsu_wr_req_valid(spmv_pe6340_io_lsu_wr_req_valid), .io_stats(spmv_pe6340_io_stats), .io_is_idle(spmv_pe6340_io_is_idle));
  assign spmv_pe6340_io_req_data = spmv_dcsc_walk4691_io_pe_data;
  assign spmv_pe6340_io_req_valid = spmv_dcsc_walk4691_io_pe_valid;
  assign spmv_pe6340_io_lsu_wr_req_ready = spmv_lsu7921_io_PEs_1_wr_req_ready;
  assign spmv_lsu7921_clk = clk;
  assign spmv_lsu7921_reset = reset;
  spmv_lsu spmv_lsu7921(.clk(spmv_lsu7921_clk), .reset(spmv_lsu7921_reset), .io_qpi_rd_req_almostfull(spmv_lsu7921_io_qpi_rd_req_almostfull), .io_qpi_rd_rsp_mdata(spmv_lsu7921_io_qpi_rd_rsp_mdata), .io_qpi_rd_rsp_data(spmv_lsu7921_io_qpi_rd_rsp_data), .io_qpi_rd_rsp_valid(spmv_lsu7921_io_qpi_rd_rsp_valid), .io_qpi_wr_req_almostfull(spmv_lsu7921_io_qpi_wr_req_almostfull), .io_qpi_wr_rsp0_mdata(spmv_lsu7921_io_qpi_wr_rsp0_mdata), .io_qpi_wr_rsp0_valid(spmv_lsu7921_io_qpi_wr_rsp0_valid), .io_qpi_wr_rsp1_mdata(spmv_lsu7921_io_qpi_wr_rsp1_mdata), .io_qpi_wr_rsp1_valid(spmv_lsu7921_io_qpi_wr_rsp1_valid), .io_ctx(spmv_lsu7921_io_ctx), .io_ctrl_rd_req_data(spmv_lsu7921_io_ctrl_rd_req_data), .io_ctrl_rd_req_valid(spmv_lsu7921_io_ctrl_rd_req_valid), .io_ctrl_wr_req_data(spmv_lsu7921_io_ctrl_wr_req_data), .io_ctrl_wr_req_valid(spmv_lsu7921_io_ctrl_wr_req_valid), .io_walkers_0_rd_req_data(spmv_lsu7921_io_walkers_0_rd_req_data), .io_walkers_0_rd_req_valid(spmv_lsu7921_io_walkers_0_rd_req_valid), .io_walkers_1_rd_req_data(spmv_lsu7921_io_walkers_1_rd_req_data), .io_walkers_1_rd_req_valid(spmv_lsu7921_io_walkers_1_rd_req_valid), .io_PEs_0_wr_req_data(spmv_lsu7921_io_PEs_0_wr_req_data), .io_PEs_0_wr_req_valid(spmv_lsu7921_io_PEs_0_wr_req_valid), .io_PEs_1_wr_req_data(spmv_lsu7921_io_PEs_1_wr_req_data), .io_PEs_1_wr_req_valid(spmv_lsu7921_io_PEs_1_wr_req_valid), .io_qpi_rd_req_addr(spmv_lsu7921_io_qpi_rd_req_addr), .io_qpi_rd_req_mdata(spmv_lsu7921_io_qpi_rd_req_mdata), .io_qpi_rd_req_valid(spmv_lsu7921_io_qpi_rd_req_valid), .io_qpi_wr_req_addr(spmv_lsu7921_io_qpi_wr_req_addr), .io_qpi_wr_req_mdata(spmv_lsu7921_io_qpi_wr_req_mdata), .io_qpi_wr_req_data(spmv_lsu7921_io_qpi_wr_req_data), .io_qpi_wr_req_valid(spmv_lsu7921_io_qpi_wr_req_valid), .io_ctrl_rd_req_ready(spmv_lsu7921_io_ctrl_rd_req_ready), .io_ctrl_wr_req_ready(spmv_lsu7921_io_ctrl_wr_req_ready), .io_ctrl_rd_rsp_data(spmv_lsu7921_io_ctrl_rd_rsp_data), .io_ctrl_rd_rsp_valid(spmv_lsu7921_io_ctrl_rd_rsp_valid), .io_ctrl_outstanding_writes(spmv_lsu7921_io_ctrl_outstanding_writes), .io_walkers_0_rd_req_ready(spmv_lsu7921_io_walkers_0_rd_req_ready), .io_walkers_0_rd_rsp_data(spmv_lsu7921_io_walkers_0_rd_rsp_data), .io_walkers_0_rd_rsp_valid(spmv_lsu7921_io_walkers_0_rd_rsp_valid), .io_walkers_1_rd_req_ready(spmv_lsu7921_io_walkers_1_rd_req_ready), .io_walkers_1_rd_rsp_data(spmv_lsu7921_io_walkers_1_rd_rsp_data), .io_walkers_1_rd_rsp_valid(spmv_lsu7921_io_walkers_1_rd_rsp_valid), .io_PEs_0_wr_req_ready(spmv_lsu7921_io_PEs_0_wr_req_ready), .io_PEs_1_wr_req_ready(spmv_lsu7921_io_PEs_1_wr_req_ready));
  assign spmv_lsu7921_io_qpi_rd_req_almostfull = io_qpi_rd_req_almostfull;
  assign spmv_lsu7921_io_qpi_rd_rsp_mdata = io_qpi_rd_rsp_mdata;
  assign spmv_lsu7921_io_qpi_rd_rsp_data = io_qpi_rd_rsp_data;
  assign spmv_lsu7921_io_qpi_rd_rsp_valid = io_qpi_rd_rsp_valid;
  assign spmv_lsu7921_io_qpi_wr_req_almostfull = io_qpi_wr_req_almostfull;
  assign spmv_lsu7921_io_qpi_wr_rsp0_mdata = io_qpi_wr_rsp0_mdata;
  assign spmv_lsu7921_io_qpi_wr_rsp0_valid = io_qpi_wr_rsp0_valid;
  assign spmv_lsu7921_io_qpi_wr_rsp1_mdata = io_qpi_wr_rsp1_mdata;
  assign spmv_lsu7921_io_qpi_wr_rsp1_valid = io_qpi_wr_rsp1_valid;
  assign spmv_lsu7921_io_ctx = io_ctx;
  assign proxy7989 = {reg8327, 3'h0};
  assign spmv_lsu7921_io_ctrl_rd_req_data = proxy7989;
  assign spmv_lsu7921_io_ctrl_rd_req_valid = sel8592;
  assign proxy8000 = {sel8601, sel8600, sel8599};
  assign spmv_lsu7921_io_ctrl_wr_req_data = proxy8000;
  assign spmv_lsu7921_io_ctrl_wr_req_valid = sel8571;
  assign spmv_lsu7921_io_walkers_0_rd_req_data = spmv_dcsc_walk2340_io_lsu_rd_req_data;
  assign spmv_lsu7921_io_walkers_0_rd_req_valid = spmv_dcsc_walk2340_io_lsu_rd_req_valid;
  assign spmv_lsu7921_io_walkers_1_rd_req_data = spmv_dcsc_walk4691_io_lsu_rd_req_data;
  assign spmv_lsu7921_io_walkers_1_rd_req_valid = spmv_dcsc_walk4691_io_lsu_rd_req_valid;
  assign spmv_lsu7921_io_PEs_0_wr_req_data = spmv_pe5530_io_lsu_wr_req_data;
  assign spmv_lsu7921_io_PEs_0_wr_req_valid = spmv_pe5530_io_lsu_wr_req_valid;
  assign spmv_lsu7921_io_PEs_1_wr_req_data = spmv_pe6340_io_lsu_wr_req_data;
  assign spmv_lsu7921_io_PEs_1_wr_req_valid = spmv_pe6340_io_lsu_wr_req_valid;
  assign ch_llqueue_08281_clk = clk;
  assign ch_llqueue_08281_reset = reset;
  ch_llqueue_0 ch_llqueue_08281(.clk(ch_llqueue_08281_clk), .reset(ch_llqueue_08281_reset), .io_enq_data(ch_llqueue_08281_io_enq_data), .io_enq_valid(ch_llqueue_08281_io_enq_valid), .io_deq_ready(ch_llqueue_08281_io_deq_ready), .io_deq_data(ch_llqueue_08281_io_deq_data), .io_deq_valid(ch_llqueue_08281_io_deq_valid));
  assign ch_llqueue_08281_io_enq_data = spmv_lsu7921_io_ctrl_rd_rsp_data[514:3];
  assign ch_llqueue_08281_io_enq_valid = andl8409;
  assign ch_llqueue_08281_io_deq_ready = sel8739;
  assign proxy8305 = {sel8733, sel8727, sel8721};
  always @ (posedge clk) begin
    reg8306 <= proxy8305;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8313 <= 5'h0;
    else
      reg8313 <= sel8738;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8320 <= 32'h0;
    else
      reg8320 <= sub8425;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8327 <= 20'h0;
    else
      reg8327 <= sel8580;
  end
  always @ (posedge clk) begin
    reg8332 <= sub8456;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8339 <= 2'h0;
    else
      reg8339 <= sel8568;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8347 <= 20'h0;
    else
      reg8347 <= sel8697;
  end
  always @ (posedge clk) begin
    reg8352 <= sub8375;
  end
  assign proxy8361 = {reg8362[95:32], sel8598};
  always @ (posedge clk) begin
    if (reset)
      reg8362 <= lit8354;
    else
      reg8362 <= proxy8361;
  end
  assign sub8375 = io_ctx[19:0] - 20'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8382 <= 64'h0;
    else
      reg8382 <= add8387;
  end
  assign add8387 = reg8382 + 64'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8394 <= 3'h0;
    else
      reg8394 <= sel8591;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8402 <= 1'h0;
    else
      reg8402 <= sel8575;
  end
  assign eq8406 = spmv_lsu7921_io_ctrl_rd_rsp_data[2:0] == 3'h0;
  assign andl8409 = spmv_lsu7921_io_ctrl_rd_rsp_valid && eq8406;
  assign pad8411 = {{31{1'b0}}, sel8739};
  assign eq8414 = 3'h0 == 3'h0;
  assign andl8417 = sel8592 && spmv_lsu7921_io_ctrl_rd_req_ready;
  assign andl8419 = andl8417 && eq8414;
  assign pad8421 = {{31{1'b0}}, andl8419};
  assign add8423 = reg8320 + pad8421;
  assign sub8425 = add8423 - pad8411;
  assign andl8428 = spmv_dcsc_walk2340_io_ctrl_start_ready && spmv_pe5530_io_is_idle;
  assign andl8431 = andl8428 && spmv_dcsc_walk4691_io_ctrl_start_ready;
  assign andl8433 = andl8431 && spmv_pe6340_io_is_idle;
  assign add8442 = io_ctx[31:0] + 32'h1;
  assign shl8446 = add8442 << 32'h2;
  assign add8448 = shl8446 + 32'h3f;
  assign shr8452 = add8448 >> 32'h6;
  assign sub8456 = shr8452[19:0] - 20'h1;
  assign ne8466 = io_ctx[31:0] != 32'h0;
  assign ne8477 = reg8320 != 32'h4;
  assign add8482 = reg8327 + 20'h1;
  assign eq8485 = reg8327 == reg8332;
  assign add8491 = reg8362[31:0] + 32'h1;
  assign eq8498 = reg8347 == io_ctx[19:0];
  assign andl8500 = eq8498 && andl8433;
  assign pad8511 = {{18{1'b0}}, reg8339};
  assign pad8512 = {{416{1'b0}}, reg8362};
  assign ch_cu_stats_t8514 = {spmv_pe5530_io_stats, spmv_dcsc_walk2340_io_ctrl_stats};
  assign pad8530 = {{96{1'b0}}, ch_cu_stats_t8514};
  assign ch_cu_stats_t8532 = {spmv_pe6340_io_stats, spmv_dcsc_walk4691_io_ctrl_stats};
  assign pad8548 = {{96{1'b0}}, ch_cu_stats_t8532};
  always @(*) begin
    case (reg8339)
      2'h1: sel8549 = pad8530;
      2'h0: sel8549 = pad8512;
      default: sel8549 = pad8548;
    endcase
  end
  assign add8554 = reg8339 + 2'h1;
  assign eq8558 = reg8339 == 2'h2;
  assign eq8564 = spmv_lsu7921_io_ctrl_outstanding_writes == 32'h0;
  assign sel8568 = andb8570 ? add8554 : reg8339;
  assign eq8569 = reg8394 == 3'h4;
  assign andb8570 = eq8569 & spmv_lsu7921_io_ctrl_wr_req_ready;
  always @(*) begin
    case (reg8394)
      3'h3: sel8571 = 1'h1;
      3'h4: sel8571 = 1'h1;
      default: sel8571 = 1'h0;
    endcase
  end
  assign sel8572 = ne8466 ? 1'h0 : 1'h1;
  assign sel8573 = io_start ? sel8572 : reg8402;
  assign sel8574 = eq8564 ? 1'h1 : reg8402;
  always @(*) begin
    case (reg8394)
      3'h0: sel8575 = sel8573;
      3'h5: sel8575 = sel8574;
      default: sel8575 = reg8402;
    endcase
  end
  assign sel8576 = andb8577 ? 20'h0 : reg8327;
  assign andb8577 = io_start & ne8466;
  assign sel8578 = andb8579 ? add8482 : reg8327;
  assign andb8579 = ne8477 & spmv_lsu7921_io_ctrl_rd_req_ready;
  always @(*) begin
    case (reg8394)
      3'h0: sel8580 = sel8576;
      3'h1: sel8580 = sel8578;
      default: sel8580 = reg8327;
    endcase
  end
  assign sel8581 = andb8577 ? 3'h1 : reg8394;
  assign sel8583 = andb8585 ? 3'h2 : reg8394;
  assign andb8584 = spmv_lsu7921_io_ctrl_rd_req_ready & eq8485;
  assign andb8585 = ne8477 & andb8584;
  assign sel8586 = andl8500 ? 3'h3 : reg8394;
  assign sel8587 = spmv_lsu7921_io_ctrl_wr_req_ready ? 3'h4 : reg8394;
  assign sel8588 = andb8589 ? 3'h5 : reg8394;
  assign andb8589 = spmv_lsu7921_io_ctrl_wr_req_ready & eq8558;
  assign sel8590 = eq8564 ? 3'h0 : reg8394;
  always @(*) begin
    case (reg8394)
      3'h0: sel8591 = sel8581;
      3'h1: sel8591 = sel8583;
      3'h2: sel8591 = sel8586;
      3'h3: sel8591 = sel8587;
      3'h4: sel8591 = sel8588;
      3'h5: sel8591 = sel8590;
      default: sel8591 = reg8394;
    endcase
  end
  assign sel8592 = andb8594 ? 1'h1 : 1'h0;
  assign eq8593 = reg8394 == 3'h1;
  assign andb8594 = eq8593 & ne8477;
  assign sel8596 = spmv_lsu7921_io_ctrl_rd_req_ready ? reg8362[31:0] : add8491;
  assign sel8597 = ne8477 ? sel8596 : add8491;
  assign sel8598 = (reg8394 == 3'h1) ? sel8597 : reg8362[31:0];
  always @(*) begin
    case (reg8394)
      3'h3: sel8599 = 2'h1;
      3'h4: sel8599 = 2'h2;
      default: sel8599 = 2'h0;
    endcase
  end
  assign sel8600 = (reg8394 == 3'h4) ? pad8511 : 20'h0;
  assign sel8601 = (reg8394 == 3'h4) ? sel8549 : lit8461;
  always @ (posedge clk) begin
    if (reset)
      reg8606 <= 2'h0;
    else
      reg8606 <= sel8712;
  end
  assign eq8615 = 5'h0 == reg8313;
  assign shr8636 = reg8306 >> 32'h20;
  assign add8643 = reg8347 + 20'h1;
  assign sub8648 = reg8313 - 5'h1;
  assign ne8653 = reg8313 != 5'h2;
  assign ne8656 = reg8347 != reg8352;
  assign andl8658 = ne8656 && ne8653;
  assign sel8695 = spmv_dcsc_walk2340_io_ctrl_start_ready ? add8643 : reg8347;
  assign sel8696 = spmv_dcsc_walk4691_io_ctrl_start_ready ? add8643 : reg8347;
  always @(*) begin
    case (reg8606)
      2'h1: sel8697 = sel8695;
      2'h2: sel8697 = sel8696;
      default: sel8697 = reg8347;
    endcase
  end
  assign sel8698 = andb8700 ? 1'h1 : 1'h0;
  assign eq8699 = reg8606 == 2'h1;
  assign andb8700 = eq8699 & spmv_dcsc_walk2340_io_ctrl_start_ready;
  assign sel8701 = andb8700 ? reg8306[63:0] : 64'h0;
  assign sel8704 = andb8706 ? 1'h1 : 1'h0;
  assign eq8705 = reg8606 == 2'h2;
  assign andb8706 = eq8705 & spmv_dcsc_walk4691_io_ctrl_start_ready;
  assign sel8707 = ch_llqueue_08281_io_deq_valid ? 2'h1 : reg8606;
  assign sel8708 = andl8658 ? 2'h2 : 2'h0;
  assign sel8709 = spmv_dcsc_walk2340_io_ctrl_start_ready ? sel8708 : 2'h2;
  assign sel8710 = andl8658 ? 2'h1 : 2'h0;
  assign sel8711 = spmv_dcsc_walk4691_io_ctrl_start_ready ? sel8710 : 2'h1;
  always @(*) begin
    case (reg8606)
      2'h0: sel8712 = sel8707;
      2'h1: sel8712 = sel8709;
      2'h2: sel8712 = sel8711;
      default: sel8712 = reg8606;
    endcase
  end
  assign sel8713 = andb8706 ? reg8306[63:0] : 64'h0;
  assign sel8717 = andb8718 ? ch_llqueue_08281_io_deq_data[31:0] : reg8306[31:0];
  assign andb8718 = ch_llqueue_08281_io_deq_valid & eq8615;
  assign sel8719 = spmv_dcsc_walk2340_io_ctrl_start_ready ? shr8636[31:0] : reg8306[31:0];
  assign sel8720 = spmv_dcsc_walk4691_io_ctrl_start_ready ? shr8636[31:0] : reg8306[31:0];
  always @(*) begin
    case (reg8606)
      2'h0: sel8721 = sel8717;
      2'h1: sel8721 = sel8719;
      2'h2: sel8721 = sel8720;
      default: sel8721 = reg8306[31:0];
    endcase
  end
  assign sel8723 = eq8615 ? ch_llqueue_08281_io_deq_data[511:32] : ch_llqueue_08281_io_deq_data[479:0];
  assign sel8724 = ch_llqueue_08281_io_deq_valid ? sel8723 : reg8306[511:32];
  assign sel8725 = spmv_dcsc_walk2340_io_ctrl_start_ready ? shr8636[511:32] : reg8306[511:32];
  assign sel8726 = spmv_dcsc_walk4691_io_ctrl_start_ready ? shr8636[511:32] : reg8306[511:32];
  always @(*) begin
    case (reg8606)
      2'h0: sel8727 = sel8724;
      2'h1: sel8727 = sel8725;
      2'h2: sel8727 = sel8726;
      default: sel8727 = reg8306[511:32];
    endcase
  end
  assign sel8729 = eq8615 ? reg8306[543:512] : ch_llqueue_08281_io_deq_data[511:480];
  assign sel8730 = ch_llqueue_08281_io_deq_valid ? sel8729 : reg8306[543:512];
  assign sel8731 = spmv_dcsc_walk2340_io_ctrl_start_ready ? shr8636[543:512] : reg8306[543:512];
  assign sel8732 = spmv_dcsc_walk4691_io_ctrl_start_ready ? shr8636[543:512] : reg8306[543:512];
  always @(*) begin
    case (reg8606)
      2'h0: sel8733 = sel8730;
      2'h1: sel8733 = sel8731;
      2'h2: sel8733 = sel8732;
      default: sel8733 = reg8306[543:512];
    endcase
  end
  assign sel8734 = eq8615 ? 5'h10 : 5'h11;
  assign sel8735 = ch_llqueue_08281_io_deq_valid ? sel8734 : reg8313;
  assign sel8736 = spmv_dcsc_walk2340_io_ctrl_start_ready ? sub8648 : reg8313;
  assign sel8737 = spmv_dcsc_walk4691_io_ctrl_start_ready ? sub8648 : reg8313;
  always @(*) begin
    case (reg8606)
      2'h0: sel8738 = sel8735;
      2'h1: sel8738 = sel8736;
      2'h2: sel8738 = sel8737;
      default: sel8738 = reg8313;
    endcase
  end
  assign sel8739 = andb8741 ? 1'h1 : 1'h0;
  assign eq8740 = reg8606 == 2'h0;
  assign andb8741 = eq8740 & ch_llqueue_08281_io_deq_valid;

  assign io_qpi_rd_req_addr = spmv_lsu7921_io_qpi_rd_req_addr;
  assign io_qpi_rd_req_mdata = spmv_lsu7921_io_qpi_rd_req_mdata;
  assign io_qpi_rd_req_valid = spmv_lsu7921_io_qpi_rd_req_valid;
  assign io_qpi_wr_req_addr = spmv_lsu7921_io_qpi_wr_req_addr;
  assign io_qpi_wr_req_mdata = spmv_lsu7921_io_qpi_wr_req_mdata;
  assign io_qpi_wr_req_data = spmv_lsu7921_io_qpi_wr_req_data;
  assign io_qpi_wr_req_valid = spmv_lsu7921_io_qpi_wr_req_valid;
  assign io_done = reg8402;

endmodule
