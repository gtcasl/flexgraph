

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
  reg reg191; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg reg200; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[1:0] reg207; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg213; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg219; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl222; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl225; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire add229; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire sel231; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire add235; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire sel237; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire eq241; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl244; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire eq248; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl251; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[1:0] add256; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[1:0] sub260; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[1:0] sel262; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem263 [0:1]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport267; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq282; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl284; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl286; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel290; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl306; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl308; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel312; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire eq315; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire eq319; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg191 <= 1'h0;
    else
      reg191 <= sel231;
  end
  always @ (posedge clk) begin
    if (reset)
      reg200 <= 1'h0;
    else
      reg200 <= sel237;
  end
  always @ (posedge clk) begin
    if (reset)
      reg207 <= 2'h0;
    else
      reg207 <= sel262;
  end
  always @ (posedge clk) begin
    if (reset)
      reg213 <= 1'h0;
    else
      reg213 <= sel290;
  end
  always @ (posedge clk) begin
    if (reset)
      reg219 <= 1'h1;
    else
      reg219 <= sel312;
  end
  assign andl222 = io_deq_ready & eq315;
  assign andl225 = io_enq_valid & eq319;
  assign add229 = reg191 + 1'h1;
  assign sel231 = andl222 ? add229 : reg191;
  assign add235 = reg200 + 1'h1;
  assign sel237 = andl225 ? add235 : reg200;
  assign eq241 = andl225 == 1'h0;
  assign andl244 = andl222 & eq241;
  assign eq248 = andl222 == 1'h0;
  assign andl251 = andl225 & eq248;
  assign add256 = reg207 + 2'h1;
  assign sub260 = reg207 - 2'h1;
  always @(*) begin
    if (andl251)
      sel262 = add256;
    else if (andl244)
      sel262 = sub260;
    else
      sel262 = reg207;
  end
  always @ (posedge clk) begin
    if (andl225) begin
      mem263[reg200] <= io_enq_data;
    end
  end
  assign mrport267 = mem263[reg191];
  assign eq282 = reg207 == 2'h1;
  assign andl284 = eq282 & andl225;
  assign andl286 = andl284 & eq248;
  always @(*) begin
    if (andl286)
      sel290 = 1'h1;
    else if (andl244)
      sel290 = 1'h0;
    else
      sel290 = reg213;
  end
  assign andl306 = eq282 & andl222;
  assign andl308 = andl306 & eq241;
  always @(*) begin
    if (andl308)
      sel312 = 1'h1;
    else if (andl251)
      sel312 = 1'h0;
    else
      sel312 = reg219;
  end
  assign eq315 = reg219 == 1'h0;
  assign eq319 = reg213 == 1'h0;

  assign io_enq_ready = eq319;
  assign io_deq_data = mrport267;
  assign io_deq_valid = eq315;
  assign io_size = reg207;

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
  reg[4:0] reg541; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[4:0] reg550; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[5:0] reg557; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg564; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg570; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl573; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl576; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[4:0] add581; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[4:0] sel583; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[4:0] add587; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[4:0] sel589; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire eq593; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl596; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire eq600; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl603; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[5:0] add608; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[5:0] sub612; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[5:0] sel614; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem615 [0:31]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport619; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq635; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl637; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl639; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel643; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire eq657; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl659; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl661; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel665; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire eq668; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire eq672; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg541 <= 5'h0;
    else
      reg541 <= sel583;
  end
  always @ (posedge clk) begin
    if (reset)
      reg550 <= 5'h0;
    else
      reg550 <= sel589;
  end
  always @ (posedge clk) begin
    if (reset)
      reg557 <= 6'h0;
    else
      reg557 <= sel614;
  end
  always @ (posedge clk) begin
    if (reset)
      reg564 <= 1'h0;
    else
      reg564 <= sel643;
  end
  always @ (posedge clk) begin
    if (reset)
      reg570 <= 1'h1;
    else
      reg570 <= sel665;
  end
  assign andl573 = io_deq_ready & eq668;
  assign andl576 = io_enq_valid & eq672;
  assign add581 = reg541 + 5'h1;
  assign sel583 = andl573 ? add581 : reg541;
  assign add587 = reg550 + 5'h1;
  assign sel589 = andl576 ? add587 : reg550;
  assign eq593 = andl576 == 1'h0;
  assign andl596 = andl573 & eq593;
  assign eq600 = andl573 == 1'h0;
  assign andl603 = andl576 & eq600;
  assign add608 = reg557 + 6'h1;
  assign sub612 = reg557 - 6'h1;
  always @(*) begin
    if (andl603)
      sel614 = add608;
    else if (andl596)
      sel614 = sub612;
    else
      sel614 = reg557;
  end
  always @ (posedge clk) begin
    if (andl576) begin
      mem615[reg550] <= io_enq_data;
    end
  end
  assign mrport619 = mem615[reg541];
  assign eq635 = reg557 == 6'h1f;
  assign andl637 = eq635 & andl576;
  assign andl639 = andl637 & eq600;
  always @(*) begin
    if (andl639)
      sel643 = 1'h1;
    else if (andl596)
      sel643 = 1'h0;
    else
      sel643 = reg564;
  end
  assign eq657 = reg557 == 6'h1;
  assign andl659 = eq657 & andl573;
  assign andl661 = andl659 & eq593;
  always @(*) begin
    if (andl661)
      sel665 = 1'h1;
    else if (andl603)
      sel665 = 1'h0;
    else
      sel665 = reg570;
  end
  assign eq668 = reg570 == 1'h0;
  assign eq672 = reg564 == 1'h0;

  assign io_enq_ready = eq672;
  assign io_deq_data = mrport619;
  assign io_deq_valid = eq668;
  assign io_size = reg557;

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
  wire[351:0] lit1293 = 352'h0;
  wire[22:0] io_lsu_rd_req_data75; // dcsc_walk.cpp(41)
  wire[2:0] io_lsu_rd_req_data_type76; // dcsc_walk.cpp(41)
  reg[19:0] reg102; // dcsc_walk.cpp(41)
  reg[19:0] reg109; // dcsc_walk.cpp(41)
  reg[19:0] reg114; // dcsc_walk.cpp(41)
  reg[19:0] reg119; // dcsc_walk.cpp(41)
  reg[19:0] reg124; // dcsc_walk.cpp(41)
  reg[19:0] reg129; // dcsc_walk.cpp(41)
  reg[19:0] reg136; // dcsc_walk.cpp(41)
  reg[19:0] reg143; // dcsc_walk.cpp(41)
  reg[19:0] reg148; // dcsc_walk.cpp(41)
  reg[19:0] reg153; // dcsc_walk.cpp(41)
  reg[19:0] reg158; // dcsc_walk.cpp(41)
  reg[5:0] reg163; // dcsc_walk.cpp(41)
  reg[31:0] reg168; // dcsc_walk.cpp(41)
  wire bindin324; // dcsc_walk.cpp(41)
  wire bindin325; // dcsc_walk.cpp(41)
  wire[511:0] bindin326; // dcsc_walk.cpp(41)
  wire bindin329; // dcsc_walk.cpp(41)
  wire[511:0] bindout335; // dcsc_walk.cpp(41)
  wire bindout338; // dcsc_walk.cpp(41)
  wire bindin341; // dcsc_walk.cpp(41)
  wire bindin499; // dcsc_walk.cpp(41)
  wire bindin500; // dcsc_walk.cpp(41)
  wire[511:0] bindin501; // dcsc_walk.cpp(41)
  wire bindin504; // dcsc_walk.cpp(41)
  wire[511:0] bindout510; // dcsc_walk.cpp(41)
  wire bindout513; // dcsc_walk.cpp(41)
  wire bindin516; // dcsc_walk.cpp(41)
  wire bindin677; // dcsc_walk.cpp(41)
  wire bindin678; // dcsc_walk.cpp(41)
  wire[511:0] bindin679; // dcsc_walk.cpp(41)
  wire bindin682; // dcsc_walk.cpp(41)
  wire[511:0] bindout688; // dcsc_walk.cpp(41)
  wire bindin694; // dcsc_walk.cpp(41)
  wire bindin855; // dcsc_walk.cpp(41)
  wire bindin856; // dcsc_walk.cpp(41)
  wire[511:0] bindin857; // dcsc_walk.cpp(41)
  wire bindin860; // dcsc_walk.cpp(41)
  wire[511:0] bindout866; // dcsc_walk.cpp(41)
  wire bindin872; // dcsc_walk.cpp(41)
  wire[5:0] bindout875; // dcsc_walk.cpp(41)
  wire bindin1030; // dcsc_walk.cpp(41)
  wire bindin1031; // dcsc_walk.cpp(41)
  wire[511:0] bindin1032; // dcsc_walk.cpp(41)
  wire bindin1035; // dcsc_walk.cpp(41)
  wire[511:0] bindout1041; // dcsc_walk.cpp(41)
  wire bindout1044; // dcsc_walk.cpp(41)
  wire bindin1047; // dcsc_walk.cpp(41)
  wire bindin1205; // dcsc_walk.cpp(41)
  wire bindin1206; // dcsc_walk.cpp(41)
  wire[511:0] bindin1207; // dcsc_walk.cpp(41)
  wire bindin1210; // dcsc_walk.cpp(41)
  wire[511:0] bindout1216; // dcsc_walk.cpp(41)
  wire bindout1219; // dcsc_walk.cpp(41)
  wire bindin1222; // dcsc_walk.cpp(41)
  reg[7:0] reg1231; // dcsc_walk.cpp(41)
  reg[7:0] reg1237; // dcsc_walk.cpp(41)
  reg[7:0] reg1243; // dcsc_walk.cpp(41)
  reg[7:0] reg1249; // dcsc_walk.cpp(41)
  reg[7:0] reg1255; // dcsc_walk.cpp(41)
  reg[7:0] reg1261; // dcsc_walk.cpp(41)
  reg[511:0] reg1266; // dcsc_walk.cpp(41)
  reg[511:0] reg1271; // dcsc_walk.cpp(41)
  reg[511:0] reg1276; // dcsc_walk.cpp(41)
  reg[511:0] reg1281; // dcsc_walk.cpp(41)
  reg[31:0] reg1286; // dcsc_walk.cpp(41)
  reg[63:0] reg1291; // dcsc_walk.cpp(41)
  wire[351:0] proxy1308; // dcsc_walk.cpp(41)
  reg[351:0] reg1309; // dcsc_walk.cpp(41)
  wire eq1336; // lsu.h(23)
  wire andl1339; // dcsc_walk.cpp(59)
  wire eq1344; // lsu.h(23)
  wire andl1347; // dcsc_walk.cpp(60)
  wire eq1352; // lsu.h(23)
  wire andl1355; // dcsc_walk.cpp(61)
  wire eq1360; // lsu.h(23)
  wire andl1363; // dcsc_walk.cpp(62)
  wire eq1368; // lsu.h(23)
  wire andl1371; // dcsc_walk.cpp(63)
  wire eq1376; // lsu.h(23)
  wire andl1379; // dcsc_walk.cpp(64)
  reg[22:0] reg1386; // dcsc_walk.cpp(71)
  wire eq1390; // dcsc_walk.cpp(6)
  wire eq1394; // lsu.h(23)
  wire andl1397; // dcsc_walk.cpp(78)
  wire andl1399; // dcsc_walk.cpp(78)
  wire eq1404; // dcsc_walk.cpp(82)
  wire andl1406; // dcsc_walk.cpp(82)
  wire eq1410; // dcsc_walk.cpp(79)
  wire andl1413; // dcsc_walk.cpp(79)
  wire[7:0] add1418; // dcsc_walk.cpp(80)
  wire[7:0] sub1422; // dcsc_walk.cpp(83)
  reg[7:0] sel1424; // dcsc_walk.cpp(79)
  wire eq1427; // lsu.h(23)
  wire andl1432; // dcsc_walk.cpp(78)
  wire eq1436; // dcsc_walk.cpp(82)
  wire andl1438; // dcsc_walk.cpp(82)
  wire eq1442; // dcsc_walk.cpp(79)
  wire andl1445; // dcsc_walk.cpp(79)
  wire[7:0] add1449; // dcsc_walk.cpp(80)
  wire[7:0] sub1453; // dcsc_walk.cpp(83)
  reg[7:0] sel1455; // dcsc_walk.cpp(79)
  wire eq1458; // lsu.h(23)
  wire andl1463; // dcsc_walk.cpp(78)
  wire eq1467; // dcsc_walk.cpp(82)
  wire andl1469; // dcsc_walk.cpp(82)
  wire eq1473; // dcsc_walk.cpp(79)
  wire andl1476; // dcsc_walk.cpp(79)
  wire[7:0] add1480; // dcsc_walk.cpp(80)
  wire[7:0] sub1484; // dcsc_walk.cpp(83)
  reg[7:0] sel1486; // dcsc_walk.cpp(79)
  wire eq1489; // lsu.h(23)
  wire andl1494; // dcsc_walk.cpp(78)
  wire eq1498; // dcsc_walk.cpp(82)
  wire andl1500; // dcsc_walk.cpp(82)
  wire andl1507; // dcsc_walk.cpp(79)
  wire[7:0] add1511; // dcsc_walk.cpp(80)
  wire[7:0] sub1515; // dcsc_walk.cpp(83)
  reg[7:0] sel1517; // dcsc_walk.cpp(79)
  wire eq1520; // lsu.h(23)
  wire andl1525; // dcsc_walk.cpp(78)
  wire eq1529; // dcsc_walk.cpp(82)
  wire andl1531; // dcsc_walk.cpp(82)
  wire eq1535; // dcsc_walk.cpp(79)
  wire andl1538; // dcsc_walk.cpp(79)
  wire[7:0] add1542; // dcsc_walk.cpp(80)
  wire[7:0] sub1546; // dcsc_walk.cpp(83)
  reg[7:0] sel1548; // dcsc_walk.cpp(79)
  wire eq1551; // lsu.h(23)
  wire andl1556; // dcsc_walk.cpp(78)
  wire eq1560; // dcsc_walk.cpp(82)
  wire andl1562; // dcsc_walk.cpp(82)
  wire eq1566; // dcsc_walk.cpp(79)
  wire andl1569; // dcsc_walk.cpp(79)
  wire[7:0] add1573; // dcsc_walk.cpp(80)
  wire[7:0] sub1577; // dcsc_walk.cpp(83)
  reg[7:0] sel1579; // dcsc_walk.cpp(79)
  reg reg1583; // dcsc_walk.cpp(110)
  reg reg1588; // dcsc_walk.cpp(111)
  reg reg1593; // dcsc_walk.cpp(112)
  reg reg1603; // dcsc_walk.cpp(114)
  reg reg1608; // dcsc_walk.cpp(115)
  wire[84:0] proxy1612; // dcsc_walk.cpp(118)
  reg[84:0] reg1613; // dcsc_walk.cpp(118)
  reg reg1626; // dcsc_walk.cpp(121)
  wire[19:0] sub1646; // dcsc_walk.cpp(144)
  wire[19:0] shl1654; // dcsc_walk.cpp(156)
  wire[19:0] shr1658; // dcsc_walk.cpp(156)
  wire ne1663; // dcsc_walk.cpp(157)
  wire[31:0] add1671; // dcsc_walk.cpp(164)
  wire ne1687; // dcsc_walk.cpp(175)
  wire[31:0] add1694; // dcsc_walk.cpp(183)
  wire andl1701; // dcsc_walk.cpp(192)
  wire[19:0] andl1707; // dcsc_walk.cpp(195)
  wire[19:0] shl1711; // dcsc_walk.cpp(195)
  wire[511:0] shr1713; // dcsc_walk.cpp(195)
  wire[511:0] shr1726; // dcsc_walk.cpp(200)
  wire ne1736; // dcsc_walk.cpp(204)
  wire[19:0] add1746; // dcsc_walk.cpp(214)
  wire[19:0] andl1748; // dcsc_walk.cpp(214)
  wire[19:0] shl1751; // dcsc_walk.cpp(214)
  wire[511:0] shr1753; // dcsc_walk.cpp(214)
  wire[19:0] shl1765; // dcsc_walk.cpp(221)
  wire[19:0] shr1768; // dcsc_walk.cpp(221)
  wire[19:0] sub1795; // dcsc_walk.cpp(253)
  wire[19:0] shr1799; // dcsc_walk.cpp(255)
  wire[19:0] shl1803; // dcsc_walk.cpp(256)
  wire[19:0] shr1806; // dcsc_walk.cpp(256)
  wire eq1809; // dcsc_walk.cpp(257)
  wire[19:0] andl1814; // dcsc_walk.cpp(259)
  wire[19:0] shl1817; // dcsc_walk.cpp(259)
  wire[511:0] shr1819; // dcsc_walk.cpp(259)
  wire[19:0] andl1830; // dcsc_walk.cpp(260)
  wire[31:0] shl1832; // dcsc_walk.cpp(260)
  wire[31:0] andl1835; // dcsc_walk.cpp(260)
  wire ne1837; // dcsc_walk.cpp(260)
  wire[19:0] shl1847; // dcsc_walk.cpp(276)
  wire[19:0] shr1850; // dcsc_walk.cpp(276)
  wire eq1853; // dcsc_walk.cpp(277)
  wire ne1862; // dcsc_walk.cpp(291)
  wire[31:0] add1869; // dcsc_walk.cpp(299)
  wire[511:0] shr1888; // dcsc_walk.cpp(314)
  wire[31:0] andl1902; // dcsc_walk.cpp(315)
  wire ne1904; // dcsc_walk.cpp(315)
  wire ne1922; // dcsc_walk.cpp(331)
  wire[31:0] add1928; // dcsc_walk.cpp(339)
  wire[19:0] shl1936; // dcsc_walk.cpp(348)
  wire[19:0] shr1939; // dcsc_walk.cpp(348)
  wire[19:0] shl1945; // dcsc_walk.cpp(349)
  wire[19:0] add1947; // dcsc_walk.cpp(349)
  wire[19:0] shr1950; // dcsc_walk.cpp(349)
  wire[19:0] sub1955; // dcsc_walk.cpp(355)
  wire[19:0] sub1961; // dcsc_walk.cpp(357)
  wire ne1969; // dcsc_walk.cpp(365)
  wire[31:0] add1976; // dcsc_walk.cpp(373)
  wire ne1985; // dcsc_walk.cpp(384)
  wire[19:0] add1990; // dcsc_walk.cpp(388)
  wire ne1993; // dcsc_walk.cpp(389)
  wire[31:0] add2000; // dcsc_walk.cpp(398)
  wire eq2007; // dcsc_walk.cpp(409)
  wire[19:0] andl2013; // dcsc_walk.cpp(414)
  wire[19:0] shl2016; // dcsc_walk.cpp(414)
  wire[511:0] shr2018; // dcsc_walk.cpp(414)
  wire[511:0] shr2030; // dcsc_walk.cpp(417)
  wire[19:0] andl2043; // dcsc_walk.cpp(428)
  wire[19:0] shl2046; // dcsc_walk.cpp(428)
  wire[511:0] shr2048; // dcsc_walk.cpp(428)
  wire[511:0] shr2060; // dcsc_walk.cpp(429)
  wire[19:0] add2068; // dcsc_walk.cpp(437)
  wire ne2071; // dcsc_walk.cpp(439)
  wire eq2078; // dcsc_walk.cpp(441)
  wire[31:0] add2089; // dcsc_walk.cpp(457)
  wire ne2097; // dcsc_walk.cpp(468)
  wire[511:0] shr2119; // dcsc_walk.cpp(484)
  wire[511:0] shr2131; // dcsc_walk.cpp(486)
  wire[63:0] sub2145; // dcsc_walk.cpp(498)
  wire lt2153; // /home/blaise/dev/cash/include/select.h(132)
  wire[31:0] sel2155; // dcsc_walk.cpp(509)
  wire eq2159; // dcsc_walk.cpp(509)
  wire[31:0] sel2161; // dcsc_walk.cpp(509)
  wire gt2164; // /home/blaise/dev/cash/include/select.h(137)
  wire[31:0] sel2166; // dcsc_walk.cpp(510)
  wire[31:0] add2169; // dcsc_walk.cpp(511)
  wire[31:0] add2173; // dcsc_walk.cpp(512)
  wire[31:0] sel2180; // dcsc_walk.cpp(138)
  wire[511:0] sel2181; // dcsc_walk.cpp(410)
  wire andl2182; // dcsc_walk.cpp(138)
  wire eq2183; // dcsc_walk.cpp(138)
  wire andl2184; // dcsc_walk.cpp(138)
  wire[19:0] sel2185; // dcsc_walk.cpp(387)
  wire andl2186; // dcsc_walk.cpp(138)
  reg[19:0] sel2187; // dcsc_walk.cpp(138)
  wire[511:0] sel2188; // dcsc_walk.cpp(308)
  wire eq2189; // dcsc_walk.cpp(138)
  wire andl2190; // dcsc_walk.cpp(138)
  wire[31:0] sel2191; // dcsc_walk.cpp(410)
  wire[31:0] sel2192; // dcsc_walk.cpp(409)
  wire andl2194; // dcsc_walk.cpp(138)
  wire[19:0] sel2195; // dcsc_walk.cpp(277)
  wire[19:0] sel2196; // dcsc_walk.cpp(138)
  wire[19:0] sel2197; // dcsc_walk.cpp(138)
  wire[63:0] sel2198; // dcsc_walk.cpp(141)
  wire eq2199; // dcsc_walk.cpp(138)
  wire andl2200; // dcsc_walk.cpp(138)
  wire sel2201; // dcsc_walk.cpp(192)
  wire sel2202; // dcsc_walk.cpp(240)
  reg sel2203; // dcsc_walk.cpp(138)
  wire[19:0] sel2204; // dcsc_walk.cpp(138)
  wire sel2205; // dcsc_walk.cpp(157)
  wire sel2206; // dcsc_walk.cpp(175)
  wire sel2208; // dcsc_walk.cpp(291)
  wire sel2209; // dcsc_walk.cpp(331)
  wire sel2210; // dcsc_walk.cpp(365)
  wire sel2211; // dcsc_walk.cpp(384)
  reg sel2212; // dcsc_walk.cpp(138)
  wire[22:0] sel2213; // dcsc_walk.cpp(141)
  wire[22:0] sel2214; // dcsc_walk.cpp(160)
  wire andl2215; // dcsc_walk.cpp(138)
  wire[22:0] sel2216; // dcsc_walk.cpp(178)
  wire andl2217; // dcsc_walk.cpp(138)
  wire[22:0] sel2218; // dcsc_walk.cpp(204)
  wire[22:0] sel2219; // dcsc_walk.cpp(192)
  wire[22:0] sel2220; // dcsc_walk.cpp(226)
  wire[22:0] sel2222; // dcsc_walk.cpp(240)
  wire[22:0] sel2223; // dcsc_walk.cpp(260)
  wire[22:0] sel2224; // dcsc_walk.cpp(257)
  wire[22:0] sel2225; // dcsc_walk.cpp(277)
  wire[22:0] sel2226; // dcsc_walk.cpp(294)
  wire andl2227; // dcsc_walk.cpp(138)
  wire[22:0] sel2228; // dcsc_walk.cpp(315)
  wire[22:0] sel2229; // dcsc_walk.cpp(308)
  wire[22:0] sel2230; // dcsc_walk.cpp(334)
  wire andl2231; // dcsc_walk.cpp(138)
  wire[22:0] sel2232; // dcsc_walk.cpp(368)
  wire andl2233; // dcsc_walk.cpp(138)
  wire[22:0] sel2234; // dcsc_walk.cpp(389)
  wire[22:0] sel2235; // dcsc_walk.cpp(387)
  wire[22:0] sel2237; // dcsc_walk.cpp(409)
  wire[22:0] sel2238; // dcsc_walk.cpp(441)
  wire[22:0] sel2239; // dcsc_walk.cpp(439)
  wire[22:0] sel2240; // dcsc_walk.cpp(435)
  wire[22:0] sel2241; // dcsc_walk.cpp(470)
  wire[22:0] sel2242; // dcsc_walk.cpp(468)
  wire[22:0] sel2244; // dcsc_walk.cpp(507)
  reg[22:0] sel2245; // dcsc_walk.cpp(138)
  wire[19:0] sel2246; // dcsc_walk.cpp(141)
  reg[19:0] sel2247; // dcsc_walk.cpp(138)
  reg[2:0] sel2248; // dcsc_walk.cpp(138)
  reg[19:0] sel2249; // dcsc_walk.cpp(138)
  wire sel2250; // dcsc_walk.cpp(441)
  wire sel2251; // dcsc_walk.cpp(439)
  wire sel2252; // dcsc_walk.cpp(435)
  wire eq2253; // dcsc_walk.cpp(138)
  wire andl2254; // dcsc_walk.cpp(138)
  wire[19:0] sel2255; // dcsc_walk.cpp(141)
  wire[31:0] sel2259; // dcsc_walk.cpp(507)
  wire eq2260; // dcsc_walk.cpp(138)
  wire andl2261; // dcsc_walk.cpp(138)
  wire[31:0] sel2263; // dcsc_walk.cpp(507)
  wire[31:0] sel2267; // dcsc_walk.cpp(507)
  wire[31:0] sel2271; // dcsc_walk.cpp(507)
  wire[31:0] sel2275; // dcsc_walk.cpp(160)
  wire[31:0] sel2276; // dcsc_walk.cpp(157)
  wire[31:0] sel2277; // dcsc_walk.cpp(138)
  wire[31:0] sel2279; // dcsc_walk.cpp(178)
  wire[31:0] sel2280; // dcsc_walk.cpp(175)
  wire[31:0] sel2283; // dcsc_walk.cpp(240)
  reg[31:0] sel2284; // dcsc_walk.cpp(138)
  wire[31:0] sel2286; // dcsc_walk.cpp(368)
  wire[31:0] sel2287; // dcsc_walk.cpp(365)
  wire[31:0] sel2288; // dcsc_walk.cpp(138)
  wire[31:0] sel2290; // dcsc_walk.cpp(387)
  wire[31:0] sel2291; // dcsc_walk.cpp(384)
  wire[31:0] sel2292; // dcsc_walk.cpp(409)
  reg[31:0] sel2293; // dcsc_walk.cpp(138)
  wire[31:0] sel2295; // dcsc_walk.cpp(334)
  wire[31:0] sel2296; // dcsc_walk.cpp(331)
  wire[31:0] sel2297; // dcsc_walk.cpp(138)
  wire[31:0] sel2299; // dcsc_walk.cpp(294)
  wire[31:0] sel2300; // dcsc_walk.cpp(291)
  wire[31:0] sel2301; // dcsc_walk.cpp(308)
  reg[31:0] sel2302; // dcsc_walk.cpp(138)
  wire[31:0] sel2304; // dcsc_walk.cpp(435)
  reg[31:0] sel2306; // dcsc_walk.cpp(138)
  reg sel2307; // dcsc_walk.cpp(138)
  wire sel2308; // dcsc_walk.cpp(192)
  wire eq2309; // dcsc_walk.cpp(138)
  wire andl2310; // dcsc_walk.cpp(138)
  wire[511:0] sel2311; // dcsc_walk.cpp(192)
  wire[19:0] sel2319; // dcsc_walk.cpp(192)
  reg[19:0] sel2320; // dcsc_walk.cpp(138)
  wire[511:0] sel2321; // dcsc_walk.cpp(192)
  wire sel2324; // dcsc_walk.cpp(410)
  wire[19:0] sel2328; // dcsc_walk.cpp(192)
  wire[19:0] sel2329; // dcsc_walk.cpp(435)
  reg[19:0] sel2330; // dcsc_walk.cpp(138)
  wire[5:0] sel2331; // dcsc_walk.cpp(138)
  wire[19:0] sel2332; // dcsc_walk.cpp(257)
  wire[19:0] sel2333; // dcsc_walk.cpp(138)
  wire sel2334; // dcsc_walk.cpp(308)
  wire[19:0] sel2337; // dcsc_walk.cpp(240)
  reg[19:0] sel2338; // dcsc_walk.cpp(138)
  wire[19:0] sel2340; // dcsc_walk.cpp(138)
  wire[31:0] sel2342; // dcsc_walk.cpp(138)
  wire[31:0] sel2344; // dcsc_walk.cpp(138)
  reg sel2346; // dcsc_walk.cpp(138)
  wire[19:0] sel2347; // dcsc_walk.cpp(138)

  assign io_lsu_rd_req_data75 = {sel2249, sel2248};
  assign io_lsu_rd_req_data_type76 = io_lsu_rd_req_data75[2:0];
  always @ (posedge clk) begin
    reg102 <= sel2247;
  end
  always @ (posedge clk) begin
    reg109 <= sel2255;
  end
  always @ (posedge clk) begin
    reg114 <= sel2320;
  end
  always @ (posedge clk) begin
    reg119 <= sel2330;
  end
  always @ (posedge clk) begin
    reg124 <= sel2338;
  end
  always @ (posedge clk) begin
    reg129 <= sel2347;
  end
  always @ (posedge clk) begin
    if (reset)
      reg136 <= 20'hfffff;
    else
      reg136 <= sel2333;
  end
  always @ (posedge clk) begin
    if (reset)
      reg143 <= 20'hfffff;
    else
      reg143 <= sel2196;
  end
  always @ (posedge clk) begin
    reg148 <= sel2187;
  end
  always @ (posedge clk) begin
    reg153 <= sel2197;
  end
  always @ (posedge clk) begin
    reg158 <= sel2204;
  end
  always @ (posedge clk) begin
    reg163 <= sel2331;
  end
  always @ (posedge clk) begin
    reg168 <= sel2192;
  end
  assign bindin324 = clk;
  assign bindin325 = reset;
  ch_queue __module3__(.clk(bindin324), .reset(bindin325), .io_enq_data(bindin326), .io_enq_valid(bindin329), .io_deq_ready(bindin341), .io_deq_data(bindout335), .io_deq_valid(bindout338));
  assign bindin326 = io_lsu_rd_rsp_data[514:3];
  assign bindin329 = andl1339;
  assign bindin341 = reg1583;
  assign bindin499 = clk;
  assign bindin500 = reset;
  ch_queue __module4__(.clk(bindin499), .reset(bindin500), .io_enq_data(bindin501), .io_enq_valid(bindin504), .io_deq_ready(bindin516), .io_deq_data(bindout510), .io_deq_valid(bindout513));
  assign bindin501 = io_lsu_rd_rsp_data[514:3];
  assign bindin504 = andl1347;
  assign bindin516 = reg1588;
  assign bindin677 = clk;
  assign bindin678 = reset;
  ch_queue_0 __module5__(.clk(bindin677), .reset(bindin678), .io_enq_data(bindin679), .io_enq_valid(bindin682), .io_deq_ready(bindin694), .io_deq_data(bindout688));
  assign bindin679 = io_lsu_rd_rsp_data[514:3];
  assign bindin682 = andl1355;
  assign bindin694 = reg1593;
  assign bindin855 = clk;
  assign bindin856 = reset;
  ch_queue_0 __module6__(.clk(bindin855), .reset(bindin856), .io_enq_data(bindin857), .io_enq_valid(bindin860), .io_deq_ready(bindin872), .io_deq_data(bindout866), .io_size(bindout875));
  assign bindin857 = io_lsu_rd_rsp_data[514:3];
  assign bindin860 = andl1363;
  assign bindin872 = reg1593;
  assign bindin1030 = clk;
  assign bindin1031 = reset;
  ch_queue __module7__(.clk(bindin1030), .reset(bindin1031), .io_enq_data(bindin1032), .io_enq_valid(bindin1035), .io_deq_ready(bindin1047), .io_deq_data(bindout1041), .io_deq_valid(bindout1044));
  assign bindin1032 = io_lsu_rd_rsp_data[514:3];
  assign bindin1035 = andl1371;
  assign bindin1047 = reg1603;
  assign bindin1205 = clk;
  assign bindin1206 = reset;
  ch_queue __module8__(.clk(bindin1205), .reset(bindin1206), .io_enq_data(bindin1207), .io_enq_valid(bindin1210), .io_deq_ready(bindin1222), .io_deq_data(bindout1216), .io_deq_valid(bindout1219));
  assign bindin1207 = io_lsu_rd_rsp_data[514:3];
  assign bindin1210 = andl1379;
  assign bindin1222 = reg1608;
  always @ (posedge clk) begin
    if (reset)
      reg1231 <= 8'h0;
    else
      reg1231 <= sel1424;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1237 <= 8'h0;
    else
      reg1237 <= sel1455;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1243 <= 8'h0;
    else
      reg1243 <= sel1486;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1249 <= 8'h0;
    else
      reg1249 <= sel1517;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1255 <= 8'h0;
    else
      reg1255 <= sel1548;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1261 <= 8'h0;
    else
      reg1261 <= sel1579;
  end
  always @ (posedge clk) begin
    reg1266 <= sel2311;
  end
  always @ (posedge clk) begin
    reg1271 <= sel2321;
  end
  always @ (posedge clk) begin
    reg1276 <= sel2188;
  end
  always @ (posedge clk) begin
    reg1281 <= sel2181;
  end
  always @ (posedge clk) begin
    reg1286 <= sel2180;
  end
  always @ (posedge clk) begin
    reg1291 <= sel2198;
  end
  assign proxy1308 = {sel2306, sel2302, sel2297, sel2293, sel2288, sel2284, sel2277, sel2271, sel2267, sel2263, sel2259};
  always @ (posedge clk) begin
    if (reset)
      reg1309 <= lit1293;
    else
      reg1309 <= proxy1308;
  end
  assign eq1336 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign andl1339 = io_lsu_rd_rsp_valid & eq1336;
  assign eq1344 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign andl1347 = io_lsu_rd_rsp_valid & eq1344;
  assign eq1352 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign andl1355 = io_lsu_rd_rsp_valid & eq1352;
  assign eq1360 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign andl1363 = io_lsu_rd_rsp_valid & eq1360;
  assign eq1368 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  assign andl1371 = io_lsu_rd_rsp_valid & eq1368;
  assign eq1376 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign andl1379 = io_lsu_rd_rsp_valid & eq1376;
  always @ (posedge clk) begin
    if (reset)
      reg1386 <= 23'h1;
    else
      reg1386 <= sel2245;
  end
  assign eq1390 = reg1386 == 23'h1;
  assign eq1394 = io_lsu_rd_req_data_type76 == 3'h1;
  assign andl1397 = sel2212 & io_lsu_rd_req_ready;
  assign andl1399 = andl1397 & eq1394;
  assign eq1404 = andl1399 == 1'h0;
  assign andl1406 = eq1404 & reg1583;
  assign eq1410 = reg1583 == 1'h0;
  assign andl1413 = andl1399 & eq1410;
  assign add1418 = reg1231 + 8'h1;
  assign sub1422 = reg1231 - 8'h1;
  always @(*) begin
    if (andl1413)
      sel1424 = add1418;
    else if (andl1406)
      sel1424 = sub1422;
    else
      sel1424 = reg1231;
  end
  assign eq1427 = io_lsu_rd_req_data_type76 == 3'h2;
  assign andl1432 = andl1397 & eq1427;
  assign eq1436 = andl1432 == 1'h0;
  assign andl1438 = eq1436 & reg1588;
  assign eq1442 = reg1588 == 1'h0;
  assign andl1445 = andl1432 & eq1442;
  assign add1449 = reg1237 + 8'h1;
  assign sub1453 = reg1237 - 8'h1;
  always @(*) begin
    if (andl1445)
      sel1455 = add1449;
    else if (andl1438)
      sel1455 = sub1453;
    else
      sel1455 = reg1237;
  end
  assign eq1458 = io_lsu_rd_req_data_type76 == 3'h3;
  assign andl1463 = andl1397 & eq1458;
  assign eq1467 = andl1463 == 1'h0;
  assign andl1469 = eq1467 & reg1593;
  assign eq1473 = reg1593 == 1'h0;
  assign andl1476 = andl1463 & eq1473;
  assign add1480 = reg1243 + 8'h1;
  assign sub1484 = reg1243 - 8'h1;
  always @(*) begin
    if (andl1476)
      sel1486 = add1480;
    else if (andl1469)
      sel1486 = sub1484;
    else
      sel1486 = reg1243;
  end
  assign eq1489 = io_lsu_rd_req_data_type76 == 3'h4;
  assign andl1494 = andl1397 & eq1489;
  assign eq1498 = andl1494 == 1'h0;
  assign andl1500 = eq1498 & reg1593;
  assign andl1507 = andl1494 & eq1473;
  assign add1511 = reg1249 + 8'h1;
  assign sub1515 = reg1249 - 8'h1;
  always @(*) begin
    if (andl1507)
      sel1517 = add1511;
    else if (andl1500)
      sel1517 = sub1515;
    else
      sel1517 = reg1249;
  end
  assign eq1520 = io_lsu_rd_req_data_type76 == 3'h5;
  assign andl1525 = andl1397 & eq1520;
  assign eq1529 = andl1525 == 1'h0;
  assign andl1531 = eq1529 & reg1603;
  assign eq1535 = reg1603 == 1'h0;
  assign andl1538 = andl1525 & eq1535;
  assign add1542 = reg1255 + 8'h1;
  assign sub1546 = reg1255 - 8'h1;
  always @(*) begin
    if (andl1538)
      sel1548 = add1542;
    else if (andl1531)
      sel1548 = sub1546;
    else
      sel1548 = reg1255;
  end
  assign eq1551 = io_lsu_rd_req_data_type76 == 3'h6;
  assign andl1556 = andl1397 & eq1551;
  assign eq1560 = andl1556 == 1'h0;
  assign andl1562 = eq1560 & reg1608;
  assign eq1566 = reg1608 == 1'h0;
  assign andl1569 = andl1556 & eq1566;
  assign add1573 = reg1261 + 8'h1;
  assign sub1577 = reg1261 - 8'h1;
  always @(*) begin
    if (andl1569)
      sel1579 = add1573;
    else if (andl1562)
      sel1579 = sub1577;
    else
      sel1579 = reg1261;
  end
  always @ (posedge clk) begin
    reg1583 <= sel2308;
  end
  always @ (posedge clk) begin
    reg1588 <= sel2203;
  end
  always @ (posedge clk) begin
    reg1593 <= sel2252;
  end
  always @ (posedge clk) begin
    reg1603 <= sel2324;
  end
  always @ (posedge clk) begin
    reg1608 <= sel2334;
  end
  assign proxy1612 = {sel2346, sel2344, sel2342, sel2340};
  always @ (posedge clk) begin
    reg1613 <= proxy1612;
  end
  always @ (posedge clk) begin
    reg1626 <= sel2307;
  end
  assign sub1646 = io_ctrl_start_data[51:32] - 20'h1;
  assign shl1654 = reg102 << 32'h2;
  assign shr1658 = shl1654 >> 32'h6;
  assign ne1663 = reg1231 != 8'h2;
  assign add1671 = reg1309[159:128] + 32'h1;
  assign ne1687 = reg1237 != 8'h2;
  assign add1694 = reg1309[191:160] + 32'h1;
  assign andl1701 = bindout338 & bindout513;
  assign andl1707 = reg102 & 20'hf;
  assign shl1711 = andl1707 << 32'h5;
  assign shr1713 = bindout335 >> shl1711;
  assign shr1726 = bindout510 >> shl1711;
  assign ne1736 = andl1707 != 20'hf;
  assign add1746 = reg102 + 20'h1;
  assign andl1748 = add1746 & 20'hf;
  assign shl1751 = andl1748 << 32'h5;
  assign shr1753 = reg1271 >> shl1751;
  assign shl1765 = add1746 << 32'h2;
  assign shr1768 = shl1765 >> 32'h6;
  assign sub1795 = reg124 - 20'h1;
  assign shr1799 = reg114 >> 32'h5;
  assign shl1803 = shr1799 << 32'h2;
  assign shr1806 = shl1803 >> 32'h6;
  assign eq1809 = shr1806 == reg136;
  assign andl1814 = shr1799 & 20'hf;
  assign shl1817 = andl1814 << 32'h5;
  assign shr1819 = reg1276 >> shl1817;
  assign andl1830 = reg114 & 20'h1f;
  assign shl1832 = 32'h1 << andl1830;
  assign andl1835 = shr1819[31:0] & shl1832;
  assign ne1837 = andl1835 != 32'h0;
  assign shl1847 = reg114 << 32'h2;
  assign shr1850 = shl1847 >> 32'h6;
  assign eq1853 = shr1850 == reg143;
  assign ne1862 = reg1261 != 8'h2;
  assign add1869 = reg1309[319:288] + 32'h1;
  assign shr1888 = bindout1216 >> shl1817;
  assign andl1902 = shr1888[31:0] & shl1832;
  assign ne1904 = andl1902 != 32'h0;
  assign ne1922 = reg1255 != 8'h2;
  assign add1928 = reg1309[287:256] + 32'h1;
  assign shl1936 = reg119 << 32'h2;
  assign shr1939 = shl1936 >> 32'h6;
  assign shl1945 = reg124 << 32'h2;
  assign add1947 = shl1945 + 20'h3f;
  assign shr1950 = add1947 >> 32'h6;
  assign sub1955 = reg153 - reg148;
  assign sub1961 = reg153 - 20'h1;
  assign ne1969 = reg1243 != 8'h20;
  assign add1976 = reg1309[223:192] + 32'h1;
  assign ne1985 = reg1249 != 8'h20;
  assign add1990 = reg148 + 20'h1;
  assign ne1993 = reg148 != reg158;
  assign add2000 = reg1309[255:224] + 32'h1;
  assign eq2007 = bindout875 == reg163;
  assign andl2013 = reg114 & 20'hf;
  assign shl2016 = andl2013 << 32'h5;
  assign shr2018 = bindout1041 >> shl2016;
  assign shr2030 = reg1281 >> shl2016;
  assign andl2043 = reg119 & 20'hf;
  assign shl2046 = andl2043 << 32'h5;
  assign shr2048 = bindout688 >> shl2046;
  assign shr2060 = bindout866 >> shl2046;
  assign add2068 = reg119 + 20'h1;
  assign ne2071 = reg119 != reg129;
  assign eq2078 = andl2043 == 20'hf;
  assign add2089 = reg1309[351:320] + 32'h1;
  assign ne2097 = reg102 != reg109;
  assign shr2119 = reg1266 >> shl1711;
  assign shr2131 = reg1271 >> shl1711;
  assign sub2145 = io_ctrl_timer - reg1291;
  assign lt2153 = reg1309[63:32] < reg1286;
  assign sel2155 = lt2153 ? reg1309[63:32] : reg1286;
  assign eq2159 = reg1309[63:32] == 32'h0;
  assign sel2161 = eq2159 ? reg1286 : sel2155;
  assign gt2164 = reg1309[63:32] > reg1286;
  assign sel2166 = gt2164 ? reg1309[63:32] : reg1286;
  assign add2169 = reg1309[127:96] + reg1286;
  assign add2173 = reg1309[31:0] + 32'h1;
  assign sel2180 = (reg1386 == 23'h200000) ? sub2145[31:0] : reg1286;
  assign sel2181 = andl2184 ? bindout1041 : reg1281;
  assign andl2182 = eq2007 & bindout1044;
  assign eq2183 = reg1386 == 23'h10000;
  assign andl2184 = eq2183 & andl2182;
  assign sel2185 = andl2186 ? add1990 : reg148;
  assign andl2186 = ne1985 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg1386)
      23'h001000: sel2187 = shr1939;
      23'h008000: sel2187 = sel2185;
      default: sel2187 = reg148;
    endcase
  end
  assign sel2188 = andl2190 ? bindout1216 : reg1276;
  assign eq2189 = reg1386 == 23'h400;
  assign andl2190 = eq2189 & bindout1219;
  assign sel2191 = bindout1044 ? shr2018[31:0] : shr2030[31:0];
  assign sel2192 = andl2194 ? sel2191 : reg168;
  assign andl2194 = eq2183 & eq2007;
  assign sel2195 = eq1853 ? reg143 : shr1850;
  assign sel2196 = (reg1386 == 23'h100) ? sel2195 : reg143;
  assign sel2197 = (reg1386 == 23'h1000) ? shr1950 : reg153;
  assign sel2198 = andl2200 ? io_ctrl_timer : reg1291;
  assign eq2199 = reg1386 == 23'h1;
  assign andl2200 = eq2199 & io_ctrl_start_valid;
  assign sel2201 = andl1701 ? 1'h1 : 1'h0;
  assign sel2202 = bindout513 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1386)
      23'h000008: sel2203 = sel2201;
      23'h000020: sel2203 = sel2202;
      default: sel2203 = 1'h0;
    endcase
  end
  assign sel2204 = (reg1386 == 23'h2000) ? sub1961 : reg158;
  assign sel2205 = ne1663 ? 1'h1 : 1'h0;
  assign sel2206 = ne1687 ? 1'h1 : 1'h0;
  assign sel2208 = ne1862 ? 1'h1 : 1'h0;
  assign sel2209 = ne1922 ? 1'h1 : 1'h0;
  assign sel2210 = ne1969 ? 1'h1 : 1'h0;
  assign sel2211 = ne1985 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1386)
      23'h000002: sel2212 = sel2205;
      23'h000004: sel2212 = sel2206;
      23'h000010: sel2212 = sel2206;
      23'h000200: sel2212 = sel2208;
      23'h000800: sel2212 = sel2209;
      23'h004000: sel2212 = sel2210;
      23'h008000: sel2212 = sel2211;
      default: sel2212 = 1'h0;
    endcase
  end
  assign sel2213 = io_ctrl_start_valid ? 23'h2 : reg1386;
  assign sel2214 = andl2215 ? 23'h4 : reg1386;
  assign andl2215 = ne1663 & io_lsu_rd_req_ready;
  assign sel2216 = andl2217 ? 23'h8 : reg1386;
  assign andl2217 = ne1687 & io_lsu_rd_req_ready;
  assign sel2218 = ne1736 ? 23'h40 : 23'h10;
  assign sel2219 = andl1701 ? sel2218 : reg1386;
  assign sel2220 = andl2217 ? 23'h20 : reg1386;
  assign sel2222 = bindout513 ? 23'h80 : reg1386;
  assign sel2223 = ne1837 ? 23'h100 : 23'h80000;
  assign sel2224 = eq1809 ? sel2223 : 23'h200;
  assign sel2225 = eq1853 ? 23'h1000 : 23'h800;
  assign sel2226 = andl2227 ? 23'h400 : reg1386;
  assign andl2227 = ne1862 & io_lsu_rd_req_ready;
  assign sel2228 = ne1904 ? 23'h100 : 23'h80000;
  assign sel2229 = bindout1219 ? sel2228 : reg1386;
  assign sel2230 = andl2231 ? 23'h1000 : reg1386;
  assign andl2231 = ne1922 & io_lsu_rd_req_ready;
  assign sel2232 = andl2233 ? 23'h8000 : reg1386;
  assign andl2233 = ne1969 & io_lsu_rd_req_ready;
  assign sel2234 = ne1993 ? 23'h4000 : 23'h10000;
  assign sel2235 = andl2186 ? sel2234 : reg1386;
  assign sel2237 = eq2007 ? 23'h20000 : reg1386;
  assign sel2238 = eq2078 ? 23'h40000 : reg1386;
  assign sel2239 = ne2071 ? sel2238 : 23'h80000;
  assign sel2240 = io_pe_ready ? sel2239 : reg1386;
  assign sel2241 = ne1736 ? 23'h100000 : 23'h2;
  assign sel2242 = ne2097 ? sel2241 : 23'h200000;
  assign sel2244 = io_pe_ready ? 23'h1 : reg1386;
  always @(*) begin
    case (reg1386)
      23'h000001: sel2245 = sel2213;
      23'h000002: sel2245 = sel2214;
      23'h000004: sel2245 = sel2216;
      23'h000008: sel2245 = sel2219;
      23'h000040: sel2245 = 23'h80;
      23'h000010: sel2245 = sel2220;
      23'h000020: sel2245 = sel2222;
      23'h000080: sel2245 = sel2224;
      23'h000100: sel2245 = sel2225;
      23'h000200: sel2245 = sel2226;
      23'h000400: sel2245 = sel2229;
      23'h000800: sel2245 = sel2230;
      23'h001000: sel2245 = 23'h2000;
      23'h002000: sel2245 = 23'h4000;
      23'h004000: sel2245 = sel2232;
      23'h008000: sel2245 = sel2235;
      23'h010000: sel2245 = sel2237;
      23'h020000: sel2245 = sel2240;
      23'h040000: sel2245 = 23'h20000;
      23'h080000: sel2245 = sel2242;
      23'h100000: sel2245 = sel2218;
      23'h200000: sel2245 = 23'h400000;
      23'h400000: sel2245 = sel2244;
      default: sel2245 = reg1386;
    endcase
  end
  assign sel2246 = io_ctrl_start_valid ? io_ctrl_start_data[19:0] : reg102;
  always @(*) begin
    case (reg1386)
      23'h000001: sel2247 = sel2246;
      23'h080000: sel2247 = add1746;
      default: sel2247 = reg102;
    endcase
  end
  always @(*) begin
    case (reg1386)
      23'h000002: sel2248 = 3'h1;
      23'h000004: sel2248 = 3'h2;
      23'h000010: sel2248 = 3'h2;
      23'h000200: sel2248 = 3'h6;
      23'h000800: sel2248 = 3'h5;
      23'h004000: sel2248 = 3'h3;
      23'h008000: sel2248 = 3'h4;
      default: sel2248 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg1386)
      23'h000002: sel2249 = shr1658;
      23'h000004: sel2249 = shr1658;
      23'h000010: sel2249 = shr1768;
      23'h000200: sel2249 = reg136;
      23'h000800: sel2249 = shr1850;
      23'h004000: sel2249 = reg148;
      23'h008000: sel2249 = reg148;
      default: sel2249 = 20'h0;
    endcase
  end
  assign sel2250 = eq2078 ? 1'h1 : 1'h0;
  assign sel2251 = ne2071 ? sel2250 : 1'h1;
  assign sel2252 = andl2254 ? sel2251 : 1'h0;
  assign eq2253 = reg1386 == 23'h20000;
  assign andl2254 = eq2253 & io_pe_ready;
  assign sel2255 = andl2200 ? sub1646 : reg109;
  assign sel2259 = andl2261 ? add2173 : reg1309[31:0];
  assign eq2260 = reg1386 == 23'h400000;
  assign andl2261 = eq2260 & io_pe_ready;
  assign sel2263 = andl2261 ? sel2161 : reg1309[63:32];
  assign sel2267 = andl2261 ? sel2166 : reg1309[95:64];
  assign sel2271 = andl2261 ? add2169 : reg1309[127:96];
  assign sel2275 = io_lsu_rd_req_ready ? reg1309[159:128] : add1671;
  assign sel2276 = ne1663 ? sel2275 : add1671;
  assign sel2277 = (reg1386 == 23'h2) ? sel2276 : reg1309[159:128];
  assign sel2279 = io_lsu_rd_req_ready ? reg1309[191:160] : add1694;
  assign sel2280 = ne1687 ? sel2279 : add1694;
  assign sel2283 = bindout513 ? reg1309[191:160] : add1694;
  always @(*) begin
    case (reg1386)
      23'h000004: sel2284 = sel2280;
      23'h000010: sel2284 = sel2280;
      23'h000020: sel2284 = sel2283;
      default: sel2284 = reg1309[191:160];
    endcase
  end
  assign sel2286 = io_lsu_rd_req_ready ? reg1309[223:192] : add1976;
  assign sel2287 = ne1969 ? sel2286 : add1976;
  assign sel2288 = (reg1386 == 23'h4000) ? sel2287 : reg1309[223:192];
  assign sel2290 = io_lsu_rd_req_ready ? reg1309[255:224] : add2000;
  assign sel2291 = ne1985 ? sel2290 : add2000;
  assign sel2292 = eq2007 ? reg1309[255:224] : add2000;
  always @(*) begin
    case (reg1386)
      23'h008000: sel2293 = sel2291;
      23'h010000: sel2293 = sel2292;
      default: sel2293 = reg1309[255:224];
    endcase
  end
  assign sel2295 = io_lsu_rd_req_ready ? reg1309[287:256] : add1928;
  assign sel2296 = ne1922 ? sel2295 : add1928;
  assign sel2297 = (reg1386 == 23'h800) ? sel2296 : reg1309[287:256];
  assign sel2299 = io_lsu_rd_req_ready ? reg1309[319:288] : add1869;
  assign sel2300 = ne1862 ? sel2299 : add1869;
  assign sel2301 = bindout1219 ? reg1309[319:288] : add1869;
  always @(*) begin
    case (reg1386)
      23'h000200: sel2302 = sel2300;
      23'h000400: sel2302 = sel2301;
      default: sel2302 = reg1309[319:288];
    endcase
  end
  assign sel2304 = io_pe_ready ? reg1309[351:320] : add2089;
  always @(*) begin
    case (reg1386)
      23'h020000: sel2306 = sel2304;
      23'h400000: sel2306 = sel2304;
      default: sel2306 = reg1309[351:320];
    endcase
  end
  always @(*) begin
    case (reg1386)
      23'h020000: sel2307 = 1'h1;
      23'h400000: sel2307 = 1'h1;
      default: sel2307 = 1'h0;
    endcase
  end
  assign sel2308 = andl2310 ? 1'h1 : 1'h0;
  assign eq2309 = reg1386 == 23'h8;
  assign andl2310 = eq2309 & andl1701;
  assign sel2311 = andl2310 ? bindout335 : reg1266;
  assign sel2319 = andl1701 ? shr1713[19:0] : reg114;
  always @(*) begin
    case (reg1386)
      23'h000008: sel2320 = sel2319;
      23'h100000: sel2320 = shr2119[19:0];
      default: sel2320 = reg114;
    endcase
  end
  assign sel2321 = andl2310 ? bindout510 : reg1271;
  assign sel2324 = andl2184 ? 1'h1 : 1'h0;
  assign sel2328 = andl1701 ? shr1726[19:0] : reg119;
  assign sel2329 = io_pe_ready ? add2068 : reg119;
  always @(*) begin
    case (reg1386)
      23'h000008: sel2330 = sel2328;
      23'h020000: sel2330 = sel2329;
      23'h100000: sel2330 = shr2131[19:0];
      default: sel2330 = reg119;
    endcase
  end
  assign sel2331 = (reg1386 == 23'h2000) ? sub1955[5:0] : reg163;
  assign sel2332 = eq1809 ? reg136 : shr1806;
  assign sel2333 = (reg1386 == 23'h80) ? sel2332 : reg136;
  assign sel2334 = andl2190 ? 1'h1 : 1'h0;
  assign sel2337 = bindout513 ? bindout510[19:0] : reg124;
  always @(*) begin
    case (reg1386)
      23'h000040: sel2338 = shr1753[19:0];
      23'h000020: sel2338 = sel2337;
      default: sel2338 = reg124;
    endcase
  end
  assign sel2340 = (reg1386 == 23'h20000) ? shr2048[19:0] : reg1613[19:0];
  assign sel2342 = (reg1386 == 23'h20000) ? shr2060[31:0] : reg1613[51:20];
  assign sel2344 = (reg1386 == 23'h20000) ? reg168 : reg1613[83:52];
  always @(*) begin
    case (reg1386)
      23'h020000: sel2346 = 1'h0;
      23'h400000: sel2346 = 1'h1;
      default: sel2346 = reg1613[84];
    endcase
  end
  assign sel2347 = (reg1386 == 23'h80) ? sub1795 : reg129;

  assign io_ctrl_start_ready = eq1390;
  assign io_ctrl_stats = reg1309;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data75;
  assign io_lsu_rd_req_valid = sel2212;
  assign io_pe_data = reg1613;
  assign io_pe_valid = reg1626;

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
  wire[2:0] proxy4855; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[2:0] reg4857; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[20:0] reg4865; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4874; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4883; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  wire inv4891; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orl4893; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4897; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orl4899; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4903; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orl4905; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire[20:0] sel4908; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andl4909; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4911; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4913; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andl4914; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4916; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4918; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andl4919; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4921; // /home/blaise/dev/cash/include/htl/pipe.h(38)

  assign proxy4855 = {sel4921, sel4916, sel4911};
  always @ (posedge clk) begin
    if (reset)
      reg4857 <= 3'h0;
    else
      reg4857 <= proxy4855;
  end
  always @ (posedge clk) begin
    reg4865 <= sel4908;
  end
  always @ (posedge clk) begin
    reg4874 <= sel4913;
  end
  always @ (posedge clk) begin
    reg4883 <= sel4918;
  end
  assign inv4891 = ~reg4857[2];
  assign orl4893 = inv4891 | io_deq_ready;
  assign inv4897 = ~reg4857[1];
  assign orl4899 = inv4897 | orl4893;
  assign inv4903 = ~reg4857[0];
  assign orl4905 = inv4903 | orl4899;
  assign sel4908 = andl4909 ? io_enq_data : reg4865;
  assign andl4909 = orl4905 & io_enq_valid;
  assign sel4911 = orl4905 ? io_enq_valid : reg4857[0];
  assign sel4913 = andl4914 ? reg4865 : reg4874;
  assign andl4914 = orl4899 & reg4857[0];
  assign sel4916 = orl4899 ? reg4857[0] : reg4857[1];
  assign sel4918 = andl4919 ? reg4874 : reg4883;
  assign andl4919 = orl4893 & reg4857[1];
  assign sel4921 = orl4893 ? reg4857[1] : reg4857[2];

  assign io_enq_ready = orl4905;
  assign io_deq_data = reg4883;
  assign io_deq_valid = reg4857[2];

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
  wire[511:0] lit5299 = 512'h0;
  wire[533:0] io_lsu_wr_req_data4786; // pe.cpp(19)
  wire[20:0] proxy4923; // pe.cpp(19)
  wire bindin4929; // pe.cpp(19)
  wire bindin4931; // pe.cpp(19)
  wire[20:0] bindin4932; // pe.cpp(19)
  wire bindin4935; // pe.cpp(19)
  wire bindout4938; // pe.cpp(19)
  wire[20:0] bindout4943; // pe.cpp(19)
  wire bindout4946; // pe.cpp(19)
  wire bindin4949; // pe.cpp(19)
  wire[20:0] proxy5070; // pe.cpp(19)
  wire proxy_is_end5072; // pe.cpp(19)
  wire bindin5074; // pe.cpp(19)
  wire bindin5075; // pe.cpp(19)
  wire[20:0] bindin5076; // pe.cpp(19)
  wire bindin5079; // pe.cpp(19)
  wire[20:0] bindout5087; // pe.cpp(19)
  wire bindout5090; // pe.cpp(19)
  wire bindin5093; // pe.cpp(19)
  reg[31:0] mem5094 [0:31]; // pe.cpp(19)
  reg[31:0] reg5101; // pe.cpp(19)
  reg[31:0] reg5106; // pe.cpp(19)
  reg[31:0] reg5112; // pe.cpp(19)
  reg[31:0] reg5118; // pe.cpp(19)
  reg[19:0] reg5133; // pe.cpp(19)
  wire[63:0] proxy5141; // pe.cpp(19)
  reg[63:0] reg5142; // pe.cpp(19)
  reg[1:0] reg5154; // pe.cpp(35)
  wire[31:0] shl5158; // pe.cpp(38)
  wire[31:0] shl5161; // pe.cpp(39)
  wire eq5166; // pe.cpp(43)
  wire eq5170; // pe.cpp(7)
  wire orl5172; // pe.cpp(7)
  wire eq5176; // pe.cpp(47)
  wire[31:0] andl5179; // pe.cpp(46)
  wire eq5182; // pe.cpp(46)
  wire andl5185; // pe.cpp(46)
  wire orl5187; // pe.cpp(46)
  wire eq5190; // pe.cpp(54)
  wire eq5194; // pe.cpp(7)
  wire andl5196; // pe.cpp(7)
  wire[31:0] mrport5198; // pe.cpp(57)
  wire[31:0] andl5201; // pe.cpp(57)
  wire ne5204; // pe.cpp(57)
  wire[31:0] sel5206; // pe.cpp(57)
  wire andl5209; // pe.cpp(62)
  wire[31:0] udfs5211; // pe.cpp(65)
  wire andl5214; // pe.cpp(70)
  wire[19:0] andl5219; // pe.cpp(72)
  wire[31:0] udfs5222; // pe.cpp(74)
  wire andl5228; // pe.cpp(7)
  wire eq5232; // pe.cpp(81)
  wire andl5234; // pe.cpp(81)
  wire eq5238; // pe.cpp(79)
  wire andl5241; // pe.cpp(79)
  wire[31:0] add5245; // pe.cpp(80)
  wire[31:0] sub5249; // pe.cpp(82)
  reg[31:0] sel5251; // pe.cpp(79)
  wire eq5254; // pe.cpp(87)
  wire andl5257; // pe.cpp(87)
  wire eq5261; // pe.cpp(88)
  wire andl5264; // pe.cpp(88)
  wire ne5267; // pe.cpp(90)
  wire andl5270; // pe.cpp(90)
  wire[31:0] inv5273; // pe.cpp(91)
  wire[31:0] andl5276; // pe.cpp(91)
  wire[31:0] orl5278; // pe.cpp(91)
  wire[31:0] orl5287; // pe.cpp(96)
  wire[31:0] sel5289; // pe.cpp(90)
  reg[31:0] sel5290; // pe.cpp(89)
  wire[19:0] andl5294; // pe.cpp(101)
  wire[19:0] sel5296; // pe.cpp(100)
  wire andl5311; // pe.cpp(119)
  wire[19:0] andl5315; // pe.cpp(120)
  wire[31:0] orl5319; // pe.cpp(125)
  wire andl5322; // pe.cpp(129)
  wire[511:0] proxy5328; // pe.cpp(138)
  wire[31:0] mrport5329; // pe.cpp(140)
  wire[31:0] mrport5333; // pe.cpp(140)
  wire[31:0] mrport5337; // pe.cpp(140)
  wire[31:0] mrport5341; // pe.cpp(140)
  wire[31:0] mrport5345; // pe.cpp(140)
  wire[31:0] mrport5349; // pe.cpp(140)
  wire[31:0] mrport5353; // pe.cpp(140)
  wire[31:0] mrport5357; // pe.cpp(140)
  wire[31:0] mrport5361; // pe.cpp(140)
  wire[31:0] mrport5365; // pe.cpp(140)
  wire[31:0] mrport5369; // pe.cpp(140)
  wire[31:0] mrport5373; // pe.cpp(140)
  wire[31:0] mrport5377; // pe.cpp(140)
  wire[31:0] mrport5381; // pe.cpp(140)
  wire[31:0] mrport5385; // pe.cpp(140)
  wire[31:0] mrport5389; // pe.cpp(140)
  wire[19:0] shl5396; // pe.cpp(143)
  wire[19:0] shr5400; // pe.cpp(143)
  wire[31:0] add5407; // pe.cpp(152)
  wire[511:0] proxy5410; // pe.cpp(157)
  wire[31:0] mrport5412; // pe.cpp(159)
  wire[31:0] mrport5416; // pe.cpp(159)
  wire[31:0] mrport5420; // pe.cpp(159)
  wire[31:0] mrport5424; // pe.cpp(159)
  wire[31:0] mrport5428; // pe.cpp(159)
  wire[31:0] mrport5432; // pe.cpp(159)
  wire[31:0] mrport5436; // pe.cpp(159)
  wire[31:0] mrport5440; // pe.cpp(159)
  wire[31:0] mrport5444; // pe.cpp(159)
  wire[31:0] mrport5448; // pe.cpp(159)
  wire[31:0] mrport5452; // pe.cpp(159)
  wire[31:0] mrport5456; // pe.cpp(159)
  wire[31:0] mrport5460; // pe.cpp(159)
  wire[31:0] mrport5464; // pe.cpp(159)
  wire[31:0] mrport5468; // pe.cpp(159)
  wire[31:0] mrport5472; // pe.cpp(159)
  wire[19:0] add5485; // pe.cpp(162)
  wire[19:0] shr5498; // pe.cpp(177)
  wire[19:0] shl5501; // pe.cpp(177)
  wire[19:0] shr5504; // pe.cpp(177)
  wire[511:0] pad5506; // pe.cpp(178)
  wire[19:0] andl5514; // pe.cpp(178)
  wire[19:0] shl5517; // pe.cpp(178)
  wire[511:0] shl5519; // pe.cpp(178)
  wire[31:0] add5525; // pe.cpp(186)
  reg[1:0] sel5527; // pe.cpp(116)
  reg[19:0] sel5528; // pe.cpp(116)
  reg[511:0] sel5529; // pe.cpp(116)
  wire[4:0] sel5530; // pe.cpp(116)
  reg sel5531; // pe.cpp(116)
  wire sel5532; // pe.cpp(116)
  wire[31:0] sel5533; // pe.cpp(116)
  wire[31:0] sel5534; // pe.cpp(124)
  wire[31:0] sel5535; // pe.cpp(129)
  wire[31:0] sel5536; // pe.cpp(116)
  wire[31:0] sel5538; // pe.cpp(147)
  reg[31:0] sel5540; // pe.cpp(116)
  wire[31:0] sel5542; // pe.cpp(181)
  wire[31:0] sel5543; // pe.cpp(116)
  wire[31:0] sel5544; // pe.cpp(129)
  wire eq5545; // pe.cpp(116)
  wire andl5546; // pe.cpp(116)
  wire[1:0] sel5547; // pe.cpp(129)
  wire[1:0] sel5548; // pe.cpp(147)
  wire[1:0] sel5549; // pe.cpp(166)
  wire[1:0] sel5550; // pe.cpp(181)
  reg[1:0] sel5551; // pe.cpp(116)

  assign io_lsu_wr_req_data4786 = {sel5529, sel5528, sel5527};
  assign proxy4923 = {io_req_data[84], io_req_data[19:0]};
  assign bindin4929 = clk;
  assign bindin4931 = reset;
  ch_pipe __module17__(.clk(bindin4929), .reset(bindin4931), .io_enq_data(bindin4932), .io_enq_valid(bindin4935), .io_deq_ready(bindin4949), .io_enq_ready(bindout4938), .io_deq_data(bindout4943), .io_deq_valid(bindout4946));
  assign bindin4932 = proxy4923;
  assign bindin4935 = andl5209;
  assign bindin4949 = orl5187;
  assign proxy5070 = {bindout4943[20], bindout4943[19:0]};
  assign proxy_is_end5072 = proxy5070[20];
  assign bindin5074 = clk;
  assign bindin5075 = reset;
  ch_pipe __module18__(.clk(bindin5074), .reset(bindin5075), .io_enq_data(bindin5076), .io_enq_valid(bindin5079), .io_deq_ready(bindin5093), .io_deq_data(bindout5087), .io_deq_valid(bindout5090));
  assign bindin5076 = proxy5070;
  assign bindin5079 = andl5214;
  assign bindin5093 = orl5172;
  always @ (posedge clk) begin
    if (sel5532) begin
      mem5094[sel5530] <= sel5533;
    end
  end
  assign mrport5198 = mem5094[andl5219[4:0]];
  assign mrport5329 = mem5094[5'h0];
  assign mrport5333 = mem5094[5'h1];
  assign mrport5337 = mem5094[5'h2];
  assign mrport5341 = mem5094[5'h3];
  assign mrport5345 = mem5094[5'h4];
  assign mrport5349 = mem5094[5'h5];
  assign mrport5353 = mem5094[5'h6];
  assign mrport5357 = mem5094[5'h7];
  assign mrport5361 = mem5094[5'h8];
  assign mrport5365 = mem5094[5'h9];
  assign mrport5369 = mem5094[5'ha];
  assign mrport5373 = mem5094[5'hb];
  assign mrport5377 = mem5094[5'hc];
  assign mrport5381 = mem5094[5'hd];
  assign mrport5385 = mem5094[5'he];
  assign mrport5389 = mem5094[5'hf];
  assign mrport5412 = mem5094[5'h10];
  assign mrport5416 = mem5094[5'h11];
  assign mrport5420 = mem5094[5'h12];
  assign mrport5424 = mem5094[5'h13];
  assign mrport5428 = mem5094[5'h14];
  assign mrport5432 = mem5094[5'h15];
  assign mrport5436 = mem5094[5'h16];
  assign mrport5440 = mem5094[5'h17];
  assign mrport5444 = mem5094[5'h18];
  assign mrport5448 = mem5094[5'h19];
  assign mrport5452 = mem5094[5'h1a];
  assign mrport5456 = mem5094[5'h1b];
  assign mrport5460 = mem5094[5'h1c];
  assign mrport5464 = mem5094[5'h1d];
  assign mrport5468 = mem5094[5'h1e];
  assign mrport5472 = mem5094[5'h1f];
  always @ (posedge clk) begin
    if (reset)
      reg5101 <= 32'h0;
    else
      reg5101 <= sel5536;
  end
  always @ (posedge clk) begin
    reg5106 <= sel5544;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5112 <= 32'h0;
    else
      reg5112 <= sel5290;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5118 <= 32'h0;
    else
      reg5118 <= sel5251;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5133 <= 20'h0;
    else
      reg5133 <= sel5296;
  end
  assign proxy5141 = {sel5543, sel5540};
  always @ (posedge clk) begin
    if (reset)
      reg5142 <= 64'h0;
    else
      reg5142 <= proxy5141;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5154 <= 2'h0;
    else
      reg5154 <= sel5551;
  end
  assign shl5158 = 32'h1 << andl5219[4:0];
  assign shl5161 = 32'h1 << sel5530;
  assign eq5166 = bindout5090 == 1'h0;
  assign eq5170 = 2'h0 == reg5154;
  assign orl5172 = eq5170 | eq5166;
  assign eq5176 = bindout4946 == 1'h0;
  assign andl5179 = reg5112 & shl5158;
  assign eq5182 = 32'h0 == andl5179;
  assign andl5185 = orl5172 & eq5182;
  assign orl5187 = andl5185 | eq5176;
  assign eq5190 = 32'h0 == reg5118;
  assign eq5194 = reg5154 == 2'h0;
  assign andl5196 = eq5194 & eq5190;
  assign andl5201 = reg5101 & shl5158;
  assign ne5204 = 32'h0 != andl5201;
  assign sel5206 = ne5204 ? mrport5198 : 32'h0;
  assign andl5209 = io_req_valid & bindout4938;
  fp_mult __fp_mult5211(.clock(clk), .clk_en(orl5187), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs5211));
  assign andl5214 = bindout4946 & orl5187;
  assign andl5219 = bindout4943[19:0] & 20'h1f;
  fp_add __fp_add5222(.clock(clk), .clk_en(orl5172), .dataa(udfs5211), .datab(sel5206), .result(udfs5222));
  assign andl5228 = eq5170 & bindout5090;
  assign eq5232 = andl5209 == 1'h0;
  assign andl5234 = eq5232 & andl5228;
  assign eq5238 = andl5228 == 1'h0;
  assign andl5241 = andl5209 & eq5238;
  assign add5245 = reg5118 + 32'h1;
  assign sub5249 = reg5118 - 32'h1;
  always @(*) begin
    if (andl5241)
      sel5251 = add5245;
    else if (andl5234)
      sel5251 = sub5249;
    else
      sel5251 = reg5118;
  end
  assign eq5254 = proxy_is_end5072 == 1'h0;
  assign andl5257 = andl5214 & eq5254;
  assign eq5261 = bindout5087[20] == 1'h0;
  assign andl5264 = andl5228 & eq5261;
  assign ne5267 = shl5158 != shl5161;
  assign andl5270 = andl5257 & ne5267;
  assign inv5273 = ~shl5161;
  assign andl5276 = reg5112 & inv5273;
  assign orl5278 = andl5276 | shl5158;
  assign orl5287 = reg5112 | shl5158;
  assign sel5289 = andl5270 ? orl5278 : andl5276;
  always @(*) begin
    if (andl5264)
      sel5290 = sel5289;
    else if (andl5257)
      sel5290 = orl5287;
    else
      sel5290 = reg5112;
  end
  assign andl5294 = bindout5087[19:0] & 20'hfffe0;
  assign sel5296 = andl5264 ? andl5294 : reg5133;
  assign andl5311 = bindout5090 & eq5261;
  assign andl5315 = bindout5087[19:0] & 20'h1f;
  assign orl5319 = reg5101 | shl5161;
  assign andl5322 = bindout5090 & bindout5087[20];
  assign proxy5328 = {mrport5389, mrport5385, mrport5381, mrport5377, mrport5373, mrport5369, mrport5365, mrport5361, mrport5357, mrport5353, mrport5349, mrport5345, mrport5341, mrport5337, mrport5333, mrport5329};
  assign shl5396 = reg5133 << 32'h2;
  assign shr5400 = shl5396 >> 32'h6;
  assign add5407 = reg5142[31:0] + 32'h1;
  assign proxy5410 = {mrport5472, mrport5468, mrport5464, mrport5460, mrport5456, mrport5452, mrport5448, mrport5444, mrport5440, mrport5436, mrport5432, mrport5428, mrport5424, mrport5420, mrport5416, mrport5412};
  assign add5485 = shr5400 + 20'h1;
  assign shr5498 = reg5133 >> 32'h5;
  assign shl5501 = shr5498 << 32'h2;
  assign shr5504 = shl5501 >> 32'h6;
  assign pad5506 = {{480{1'b0}}, reg5106};
  assign andl5514 = shr5498 & 20'hf;
  assign shl5517 = andl5514 << 32'h5;
  assign shl5519 = pad5506 << shl5517;
  assign add5525 = reg5142[63:32] + 32'h1;
  always @(*) begin
    case (reg5154)
      2'h1: sel5527 = 2'h0;
      2'h2: sel5527 = 2'h0;
      2'h3: sel5527 = 2'h1;
      default: sel5527 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg5154)
      2'h1: sel5528 = shr5400;
      2'h2: sel5528 = add5485;
      2'h3: sel5528 = shr5504;
      default: sel5528 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg5154)
      2'h1: sel5529 = proxy5328;
      2'h2: sel5529 = proxy5410;
      2'h3: sel5529 = shl5519;
      default: sel5529 = lit5299;
    endcase
  end
  assign sel5530 = (reg5154 == 2'h0) ? andl5315[4:0] : 5'h0;
  always @(*) begin
    case (reg5154)
      2'h1: sel5531 = 1'h1;
      2'h2: sel5531 = 1'h1;
      2'h3: sel5531 = 1'h1;
      default: sel5531 = 1'h0;
    endcase
  end
  assign sel5532 = (reg5154 == 2'h0) ? andl5311 : 1'h0;
  assign sel5533 = (reg5154 == 2'h0) ? udfs5222 : 32'h0;
  assign sel5534 = sel5532 ? orl5319 : reg5101;
  assign sel5535 = andl5322 ? 32'h0 : sel5534;
  assign sel5536 = (reg5154 == 2'h0) ? sel5535 : reg5101;
  assign sel5538 = io_lsu_wr_req_ready ? reg5142[31:0] : add5407;
  always @(*) begin
    case (reg5154)
      2'h1: sel5540 = sel5538;
      2'h2: sel5540 = sel5538;
      default: sel5540 = reg5142[31:0];
    endcase
  end
  assign sel5542 = io_lsu_wr_req_ready ? reg5142[63:32] : add5525;
  assign sel5543 = (reg5154 == 2'h3) ? sel5542 : reg5142[63:32];
  assign sel5544 = andl5546 ? reg5101 : reg5106;
  assign eq5545 = reg5154 == 2'h0;
  assign andl5546 = eq5545 & andl5322;
  assign sel5547 = andl5322 ? 2'h1 : reg5154;
  assign sel5548 = io_lsu_wr_req_ready ? 2'h2 : reg5154;
  assign sel5549 = io_lsu_wr_req_ready ? 2'h3 : reg5154;
  assign sel5550 = io_lsu_wr_req_ready ? 2'h0 : reg5154;
  always @(*) begin
    case (reg5154)
      2'h0: sel5551 = sel5547;
      2'h1: sel5551 = sel5548;
      2'h2: sel5551 = sel5549;
      2'h3: sel5551 = sel5550;
      default: sel5551 = reg5154;
    endcase
  end

  assign io_req_ready = bindout4938;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data4786;
  assign io_lsu_wr_req_valid = sel5531;
  assign io_stats = reg5142;
  assign io_is_idle = andl5196;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel6579; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6579 = io_in[47:24];
      3'h1: sel6579 = io_in[23:0];
      default: sel6579 = io_in[71:48];
    endcase
  end

  assign io_out = sel6579;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy6626; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  reg[8:0] reg6628; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  wire[2:0] proxy6634; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6636; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6638; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6640; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire andl6646; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire andl6651; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6654; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6656; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6659; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire proxy6662; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6663; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire proxy6665; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6667; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6669; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire proxy6675; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6677; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6679; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6683; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6686; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6693; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6696; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6698; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6701; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6705; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6709; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6711; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6715; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6718; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire inv6722; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6725; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire orr6730; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6732; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6735; // /home/blaise/dev/cash/include/htl/arbiter.h(30)

  assign proxy6626 = {reg6628[8:6], andl6711, reg6628[4:3], andl6679, andl6669, reg6628[0]};
  always @ (posedge clk) begin
    if (reset)
      reg6628 <= 9'h0;
    else
      reg6628 <= proxy6626;
  end
  assign proxy6634 = {andl6718, andl6686, 1'h0};
  assign proxy6636 = {andl6725, 1'h0, andl6646};
  assign proxy6638 = {1'h0, andl6693, andl6651};
  assign proxy6640 = {andl6735, andl6701, andl6659};
  assign andl6646 = io_in[0] & reg6628[1];
  assign andl6651 = io_in[0] & reg6628[2];
  assign orr6654 = |proxy6634;
  assign inv6656 = ~orr6654;
  assign andl6659 = io_in[0] & inv6656;
  assign proxy6662 = proxy6640[0];
  assign inv6663 = ~proxy6662;
  assign proxy6665 = proxy6640[1];
  assign orl6667 = reg6628[1] | proxy6665;
  assign andl6669 = orl6667 & inv6663;
  assign proxy6675 = proxy6640[2];
  assign orl6677 = reg6628[2] | proxy6675;
  assign andl6679 = orl6677 & inv6663;
  assign inv6683 = ~reg6628[1];
  assign andl6686 = io_in[1] & inv6683;
  assign andl6693 = io_in[1] & reg6628[5];
  assign orr6696 = |proxy6636;
  assign inv6698 = ~orr6696;
  assign andl6701 = io_in[1] & inv6698;
  assign inv6705 = ~proxy6665;
  assign orl6709 = reg6628[5] | proxy6675;
  assign andl6711 = orl6709 & inv6705;
  assign inv6715 = ~reg6628[2];
  assign andl6718 = io_in[2] & inv6715;
  assign inv6722 = ~reg6628[5];
  assign andl6725 = io_in[2] & inv6722;
  assign orr6730 = |proxy6638;
  assign inv6732 = ~orr6730;
  assign andl6735 = io_in[2] & inv6732;

  assign io_grant = proxy6640;

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
  wire[2:0] bindin6588; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] proxy6590; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] bindin6606; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[23:0] bindout6614; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy6739; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6746; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6748; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindin6749; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindout6752; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq6784; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6787; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq6792; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6795; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq6800; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6803; // /home/blaise/dev/cash/include/htl/arbiter.h(64)

  ch_hxbar __module24__(.io_sel(bindin6588), .io_in(bindin6606), .io_out(bindout6614));
  assign bindin6588 = bindout6752;
  assign proxy6590 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin6606 = proxy6590;
  assign proxy6739 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin6746 = clk;
  assign bindin6748 = reset;
  ch_rrArbiter __module25__(.clk(bindin6746), .reset(bindin6748), .io_in(bindin6749), .io_grant(bindout6752));
  assign bindin6749 = proxy6739;
  assign eq6784 = bindout6752 == 3'h1;
  assign andl6787 = io_out_ready & eq6784;
  assign eq6792 = bindout6752 == 3'h2;
  assign andl6795 = io_out_ready & eq6792;
  assign eq6800 = bindout6752 == 3'h4;
  assign andl6803 = io_out_ready & eq6800;

  assign io_in_0_ready = andl6787;
  assign io_in_1_ready = andl6795;
  assign io_in_2_ready = andl6803;
  assign io_out_data = bindout6614[22:0];
  assign io_out_valid = bindout6614[23];
  assign io_out_grant = bindout6752;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  reg[534:0] sel6927; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6927 = io_in[1069:535];
      3'h1: sel6927 = io_in[534:0];
      default: sel6927 = io_in[1604:1070];
    endcase
  end

  assign io_out = sel6927;

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
  wire[2:0] bindin6937; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] proxy6939; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] bindin6958; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[534:0] bindout6967; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy7092; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin7099; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin7101; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindin7102; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindout7105; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq7137; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7140; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq7145; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7148; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq7153; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7156; // /home/blaise/dev/cash/include/htl/arbiter.h(64)

  ch_hxbar_0 __module27__(.io_sel(bindin6937), .io_in(bindin6958), .io_out(bindout6967));
  assign bindin6937 = bindout7105;
  assign proxy6939 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin6958 = proxy6939;
  assign proxy7092 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin7099 = clk;
  assign bindin7101 = reset;
  ch_rrArbiter __module28__(.clk(bindin7099), .reset(bindin7101), .io_in(bindin7102), .io_grant(bindout7105));
  assign bindin7102 = proxy7092;
  assign eq7137 = bindout7105 == 3'h1;
  assign andl7140 = io_out_ready & eq7137;
  assign eq7145 = bindout7105 == 3'h2;
  assign andl7148 = io_out_ready & eq7145;
  assign eq7153 = bindout7105 == 3'h4;
  assign andl7156 = io_out_ready & eq7153;

  assign io_in_0_ready = andl7140;
  assign io_in_1_ready = andl7148;
  assign io_in_2_ready = andl7156;
  assign io_out_data = bindout6967[533:0];
  assign io_out_valid = bindout6967[534];
  assign io_out_grant = bindout7105;

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
  wire[511:0] lit7397 = 512'h0;
  reg[21:0] mem7212 [0:1]; // wrcache.h(59)
  reg[511:0] mem7215 [0:1]; // wrcache.h(59)
  reg[1:0] reg7222; // wrcache.h(59)
  reg reg7228; // wrcache.h(59)
  reg[19:0] reg7233; // wrcache.h(59)
  reg reg7252; // wrcache.h(59)
  wire[533:0] io_evict_data7263; // wrcache.h(59)
  reg[2:0] reg7280; // wrcache.h(67)
  reg[533:0] reg7285; // wrcache.h(68)
  wire eq7300; // wrcache.h(15)
  wire[533:0] sel7302; // wrcache.h(79)
  wire[1:0] shl7311; // wrcache.h(81)
  wire[1:0] andl7314; // wrcache.h(81)
  wire ne7317; // wrcache.h(81)
  wire[21:0] mrport7320; // wrcache.h(82)
  wire eq7324; // wrcache.h(82)
  wire andl7327; // wrcache.h(82)
  wire sel7329; // wrcache.h(82)
  wire[1:0] andl7336; // wrcache.h(83)
  wire ne7338; // wrcache.h(83)
  wire andl7341; // wrcache.h(83)
  wire sel7343; // wrcache.h(83)
  wire eq7348; // wrcache.h(84)
  wire sel7350; // wrcache.h(84)
  reg reg7354; // wrcache.h(92)
  reg reg7358; // wrcache.h(93)
  reg reg7362; // wrcache.h(94)
  reg reg7367; // wrcache.h(95)
  wire add7372; // wrcache.h(101)
  wire eq7376; // wrcache.h(102)
  wire[2:0] sel7380; // wrcache.h(102)
  wire andl7381; // wrcache.h(100)
  wire sel7382; // wrcache.h(100)
  wire[1:0] sel7383; // wrcache.h(102)
  reg reg7392; // wrcache.h(112)
  wire[21:0] mrport7407; // wrcache.h(134)
  wire[1:0] andl7411; // wrcache.h(134)
  wire ne7414; // wrcache.h(134)
  wire eq7417; // wrcache.h(134)
  wire ne7421; // wrcache.h(134)
  wire andl7423; // wrcache.h(134)
  wire andl7425; // wrcache.h(134)
  wire[511:0] mrport7429; // wrcache.h(139)
  wire[511:0] orl7431; // wrcache.h(139)
  wire[1:0] orl7436; // wrcache.h(140)
  wire[21:0] tag_t7442; // wrcache.h(140)
  wire[21:0] mrport7450; // wrcache.h(159)
  wire eq7454; // wrcache.h(159)
  wire[1:0] shl7457; // wrcache.h(159)
  wire[1:0] andl7460; // wrcache.h(159)
  wire ne7463; // wrcache.h(159)
  wire andl7465; // wrcache.h(159)
  wire[511:0] orl7468; // wrcache.h(163)
  wire[1:0] orl7473; // wrcache.h(164)
  wire[21:0] tag_t7479; // wrcache.h(164)
  wire[21:0] tag_t7483; // wrcache.h(169)
  wire[1:0] shl7489; // wrcache.h(178)
  wire[1:0] orl7492; // wrcache.h(178)
  wire ne7495; // wrcache.h(181)
  wire eq7503; // wrcache.h(193)
  wire[21:0] tag_t7509; // wrcache.h(196)
  wire[1:0] inv7515; // wrcache.h(197)
  wire[1:0] andl7518; // wrcache.h(197)
  wire[1:0] andl7526; // wrcache.h(202)
  wire ne7528; // wrcache.h(202)
  wire[1:0] inv7532; // wrcache.h(205)
  wire[1:0] andl7537; // wrcache.h(205)
  wire[21:0] tag_t7543; // wrcache.h(205)
  wire ne7557; // wrcache.h(227)
  wire sel7566; // wrcache.h(233)
  wire sel7567; // wrcache.h(227)
  wire sel7568; // wrcache.h(129)
  wire[1:0] sel7569; // wrcache.h(156)
  wire[1:0] sel7570; // wrcache.h(193)
  reg[1:0] sel7571; // wrcache.h(129)
  wire sel7572; // wrcache.h(156)
  wire eq7573; // wrcache.h(129)
  wire andl7574; // wrcache.h(129)
  wire[19:0] sel7575; // wrcache.h(156)
  wire sel7578; // wrcache.h(147)
  wire sel7579; // wrcache.h(131)
  wire sel7580; // wrcache.h(129)
  wire sel7581; // wrcache.h(156)
  wire[2:0] sel7584; // wrcache.h(134)
  wire[2:0] sel7585; // wrcache.h(147)
  wire[2:0] sel7586; // wrcache.h(131)
  wire[2:0] sel7587; // wrcache.h(181)
  wire[2:0] sel7588; // wrcache.h(156)
  wire[2:0] sel7589; // wrcache.h(193)
  wire[2:0] sel7590; // wrcache.h(219)
  reg[2:0] sel7591; // wrcache.h(129)
  wire sel7592; // wrcache.h(131)
  wire sel7593; // wrcache.h(159)
  wire sel7594; // wrcache.h(156)
  reg sel7595; // wrcache.h(129)
  wire[511:0] sel7596; // wrcache.h(134)
  wire andl7597; // wrcache.h(129)
  wire[511:0] sel7598; // wrcache.h(159)
  wire[511:0] sel7599; // wrcache.h(156)
  reg[511:0] sel7600; // wrcache.h(129)
  wire sel7601; // wrcache.h(227)
  reg sel7602; // wrcache.h(129)
  wire sel7603; // wrcache.h(134)
  wire sel7605; // wrcache.h(156)
  wire sel7606; // wrcache.h(202)
  wire sel7607; // wrcache.h(193)
  reg sel7608; // wrcache.h(129)
  reg sel7612; // wrcache.h(129)
  wire[1:0] sel7613; // wrcache.h(227)
  reg[1:0] sel7614; // wrcache.h(129)
  wire[19:0] sel7615; // wrcache.h(227)
  reg[19:0] sel7616; // wrcache.h(129)
  wire[511:0] sel7617; // wrcache.h(227)
  reg[511:0] sel7618; // wrcache.h(129)
  wire sel7619; // wrcache.h(181)
  wire andl7620; // wrcache.h(129)
  wire andl7622; // wrcache.h(129)
  wire[21:0] sel7623; // wrcache.h(134)
  wire[21:0] sel7625; // wrcache.h(159)
  wire[21:0] sel7626; // wrcache.h(156)
  wire[21:0] sel7627; // wrcache.h(202)
  wire[21:0] sel7628; // wrcache.h(193)
  reg[21:0] sel7629; // wrcache.h(129)
  wire[533:0] sel7630; // wrcache.h(134)
  wire[533:0] sel7631; // wrcache.h(147)
  wire[533:0] sel7632; // wrcache.h(131)
  wire[533:0] sel7633; // wrcache.h(129)

  always @ (posedge clk) begin
    if (sel7608) begin
      mem7212[sel7595] <= sel7629;
    end
  end
  assign mrport7320 = mem7212[1'h1];
  assign mrport7407 = mem7212[sel7595];
  assign mrport7450 = mem7212[sel7581];
  always @ (posedge clk) begin
    if (sel7612) begin
      mem7215[sel7595] <= sel7600;
    end
  end
  assign mrport7429 = mem7215[sel7595];
  always @ (posedge clk) begin
    if (reset)
      reg7222 <= 2'h0;
    else
      reg7222 <= sel7571;
  end
  always @ (posedge clk) begin
    reg7228 <= sel7572;
  end
  always @ (posedge clk) begin
    reg7233 <= sel7575;
  end
  always @ (posedge clk) begin
    reg7252 <= sel7580;
  end
  assign io_evict_data7263 = {sel7618, sel7616, sel7614};
  always @ (posedge clk) begin
    if (reset)
      reg7280 <= 3'h0;
    else
      reg7280 <= sel7591;
  end
  always @ (posedge clk) begin
    reg7285 <= sel7633;
  end
  assign eq7300 = reg7280 == 3'h0;
  assign sel7302 = eq7300 ? io_enq_data : reg7285;
  assign shl7311 = 2'h1 << 32'h1;
  assign andl7314 = reg7222 & shl7311;
  assign ne7317 = 2'h0 != andl7314;
  assign eq7324 = mrport7320[21:2] == sel7302[21:2];
  assign andl7327 = ne7317 & eq7324;
  assign sel7329 = andl7327 ? 1'h1 : 1'h0;
  assign andl7336 = mrport7320[1:0] & sel7302[1:0];
  assign ne7338 = andl7336 != 2'h0;
  assign andl7341 = ne7317 & ne7338;
  assign sel7343 = andl7341 ? 1'h1 : 1'h0;
  assign eq7348 = ne7317 == 1'h0;
  assign sel7350 = eq7348 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg7354 <= sel7329;
  end
  always @ (posedge clk) begin
    reg7358 <= sel7343;
  end
  always @ (posedge clk) begin
    reg7362 <= sel7350;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7367 <= 1'h0;
    else
      reg7367 <= io_enq_valid;
  end
  assign add7372 = reg7252 + 1'h1;
  assign eq7376 = reg7252 == 1'h1;
  assign sel7380 = andl7381 ? 3'h0 : reg7280;
  assign andl7381 = sel7568 & eq7376;
  assign sel7382 = sel7568 ? add7372 : reg7252;
  assign sel7383 = andl7381 ? 2'h0 : reg7222;
  always @ (posedge clk) begin
    reg7392 <= sel7619;
  end
  assign andl7411 = mrport7407[1:0] & io_enq_data[1:0];
  assign ne7414 = 2'h0 != andl7411;
  assign eq7417 = io_enq_data[21:2] == reg7233;
  assign ne7421 = reg7222 != 2'h0;
  assign andl7423 = ne7421 & eq7417;
  assign andl7425 = andl7423 & ne7414;
  assign orl7431 = mrport7429 | io_enq_data[533:22];
  assign orl7436 = mrport7407[1:0] | io_enq_data[1:0];
  assign tag_t7442 = {mrport7407[21:2], orl7436};
  assign eq7454 = mrport7450[21:2] == reg7285[21:2];
  assign shl7457 = 2'h1 << sel7581;
  assign andl7460 = reg7222 & shl7457;
  assign ne7463 = 2'h0 != andl7460;
  assign andl7465 = ne7463 & eq7454;
  assign orl7468 = mrport7429 | reg7285[533:22];
  assign orl7473 = mrport7407[1:0] | reg7285[1:0];
  assign tag_t7479 = {mrport7407[21:2], orl7473};
  assign tag_t7483 = {reg7285[21:2], reg7285[1:0]};
  assign shl7489 = 2'h1 << sel7595;
  assign orl7492 = reg7222 | shl7489;
  assign ne7495 = sel7595 != reg7358;
  assign eq7503 = mrport7407[1:0] == reg7285[1:0];
  assign tag_t7509 = {20'h0, 2'h0};
  assign inv7515 = ~shl7489;
  assign andl7518 = reg7222 & inv7515;
  assign andl7526 = mrport7407[1:0] & reg7285[1:0];
  assign ne7528 = andl7526 != 2'h0;
  assign inv7532 = ~reg7285[1:0];
  assign andl7537 = mrport7407[1:0] & inv7532;
  assign tag_t7543 = {mrport7407[21:2], andl7537};
  assign ne7557 = mrport7407[1:0] != 2'h0;
  assign sel7566 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel7567 = ne7557 ? sel7566 : 1'h1;
  assign sel7568 = (reg7280 == 3'h4) ? sel7567 : 1'h0;
  assign sel7569 = reg7367 ? orl7492 : sel7383;
  assign sel7570 = eq7503 ? andl7518 : sel7383;
  always @(*) begin
    case (reg7280)
      3'h1: sel7571 = sel7569;
      3'h2: sel7571 = sel7570;
      default: sel7571 = sel7383;
    endcase
  end
  assign sel7572 = andl7574 ? sel7595 : reg7228;
  assign eq7573 = reg7280 == 3'h1;
  assign andl7574 = eq7573 & reg7367;
  assign sel7575 = andl7574 ? reg7285[21:2] : reg7233;
  assign sel7578 = io_flush ? 1'h0 : sel7382;
  assign sel7579 = io_enq_valid ? sel7382 : sel7578;
  assign sel7580 = (reg7280 == 3'h0) ? sel7579 : sel7382;
  assign sel7581 = andl7574 ? reg7354 : 1'h0;
  assign sel7584 = andl7425 ? sel7380 : 3'h1;
  assign sel7585 = io_flush ? 3'h4 : sel7380;
  assign sel7586 = io_enq_valid ? sel7584 : sel7585;
  assign sel7587 = ne7495 ? 3'h2 : 3'h0;
  assign sel7588 = reg7367 ? sel7587 : sel7380;
  assign sel7589 = eq7503 ? 3'h3 : 3'h0;
  assign sel7590 = io_evict_ready ? 3'h0 : sel7380;
  always @(*) begin
    case (reg7280)
      3'h0: sel7591 = sel7586;
      3'h1: sel7591 = sel7588;
      3'h2: sel7591 = sel7589;
      3'h3: sel7591 = sel7590;
      default: sel7591 = sel7380;
    endcase
  end
  assign sel7592 = io_enq_valid ? reg7228 : 1'h0;
  assign sel7593 = andl7465 ? reg7354 : reg7362;
  assign sel7594 = reg7367 ? sel7593 : 1'h0;
  always @(*) begin
    case (reg7280)
      3'h0: sel7595 = sel7592;
      3'h1: sel7595 = sel7594;
      3'h2: sel7595 = reg7392;
      3'h3: sel7595 = reg7392;
      3'h4: sel7595 = reg7252;
      default: sel7595 = 1'h0;
    endcase
  end
  assign sel7596 = andl7597 ? orl7431 : lit7397;
  assign andl7597 = io_enq_valid & andl7425;
  assign sel7598 = andl7465 ? orl7468 : reg7285[533:22];
  assign sel7599 = reg7367 ? sel7598 : lit7397;
  always @(*) begin
    case (reg7280)
      3'h0: sel7600 = sel7596;
      3'h1: sel7600 = sel7599;
      default: sel7600 = lit7397;
    endcase
  end
  assign sel7601 = ne7557 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7280)
      3'h3: sel7602 = 1'h1;
      3'h4: sel7602 = sel7601;
      default: sel7602 = 1'h0;
    endcase
  end
  assign sel7603 = andl7597 ? 1'h1 : 1'h0;
  assign sel7605 = reg7367 ? 1'h1 : 1'h0;
  assign sel7606 = ne7528 ? 1'h1 : 1'h0;
  assign sel7607 = eq7503 ? 1'h1 : sel7606;
  always @(*) begin
    case (reg7280)
      3'h0: sel7608 = sel7603;
      3'h1: sel7608 = sel7605;
      3'h2: sel7608 = sel7607;
      default: sel7608 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg7280)
      3'h0: sel7612 = sel7603;
      3'h1: sel7612 = sel7605;
      default: sel7612 = 1'h0;
    endcase
  end
  assign sel7613 = ne7557 ? reg7285[1:0] : 2'h0;
  always @(*) begin
    case (reg7280)
      3'h3: sel7614 = reg7285[1:0];
      3'h4: sel7614 = sel7613;
      default: sel7614 = 2'h0;
    endcase
  end
  assign sel7615 = ne7557 ? mrport7407[21:2] : 20'h0;
  always @(*) begin
    case (reg7280)
      3'h3: sel7616 = mrport7407[21:2];
      3'h4: sel7616 = sel7615;
      default: sel7616 = 20'h0;
    endcase
  end
  assign sel7617 = ne7557 ? mrport7429 : lit7397;
  always @(*) begin
    case (reg7280)
      3'h3: sel7618 = mrport7429;
      3'h4: sel7618 = sel7617;
      default: sel7618 = lit7397;
    endcase
  end
  assign sel7619 = andl7622 ? reg7358 : reg7392;
  assign andl7620 = reg7367 & ne7495;
  assign andl7622 = eq7573 & andl7620;
  assign sel7623 = andl7597 ? tag_t7442 : 22'h0;
  assign sel7625 = andl7465 ? tag_t7479 : tag_t7483;
  assign sel7626 = reg7367 ? sel7625 : 22'h0;
  assign sel7627 = ne7528 ? tag_t7543 : 22'h0;
  assign sel7628 = eq7503 ? tag_t7509 : sel7627;
  always @(*) begin
    case (reg7280)
      3'h0: sel7629 = sel7623;
      3'h1: sel7629 = sel7626;
      3'h2: sel7629 = sel7628;
      default: sel7629 = 22'h0;
    endcase
  end
  assign sel7630 = andl7425 ? reg7285 : io_enq_data;
  assign sel7631 = io_flush ? io_enq_data : reg7285;
  assign sel7632 = io_enq_valid ? sel7630 : sel7631;
  assign sel7633 = (reg7280 == 3'h0) ? sel7632 : reg7285;

  assign io_enq_ready = eq7300;
  assign io_evict_data = io_evict_data7263;
  assign io_evict_valid = sel7602;

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
  wire[511:0] lit7855 = 512'h0;
  wire[514:0] io_ctrl_rd_rsp_data6462; // lsu.cpp(19)
  wire bindin6812; // lsu.cpp(19)
  wire bindin6814; // lsu.cpp(19)
  wire[22:0] bindin6815; // lsu.cpp(19)
  wire bindin6818; // lsu.cpp(19)
  wire bindout6821; // lsu.cpp(19)
  wire[22:0] bindin6826; // lsu.cpp(19)
  wire bindin6829; // lsu.cpp(19)
  wire bindout6832; // lsu.cpp(19)
  wire[22:0] bindin6837; // lsu.cpp(19)
  wire bindin6840; // lsu.cpp(19)
  wire bindout6843; // lsu.cpp(19)
  wire[22:0] bindout6848; // lsu.cpp(19)
  wire bindout6851; // lsu.cpp(19)
  wire bindin6854; // lsu.cpp(19)
  wire[2:0] bindout6857; // lsu.cpp(19)
  wire bindin7164; // lsu.cpp(19)
  wire bindin7165; // lsu.cpp(19)
  wire[533:0] bindin7166; // lsu.cpp(19)
  wire bindin7169; // lsu.cpp(19)
  wire bindout7172; // lsu.cpp(19)
  wire[533:0] bindin7178; // lsu.cpp(19)
  wire bindin7181; // lsu.cpp(19)
  wire bindout7184; // lsu.cpp(19)
  wire[533:0] bindin7190; // lsu.cpp(19)
  wire bindin7193; // lsu.cpp(19)
  wire bindout7196; // lsu.cpp(19)
  wire[533:0] bindout7202; // lsu.cpp(19)
  wire bindout7205; // lsu.cpp(19)
  wire bindin7208; // lsu.cpp(19)
  wire[2:0] bindout7211; // lsu.cpp(19)
  wire[533:0] proxy7635; // lsu.cpp(19)
  wire bindin7640; // lsu.cpp(19)
  wire bindin7641; // lsu.cpp(19)
  wire[533:0] bindin7642; // lsu.cpp(19)
  wire bindin7645; // lsu.cpp(19)
  wire bindout7648; // lsu.cpp(19)
  wire[1:0] proxy_owner7651; // lsu.cpp(19)
  wire[533:0] bindout7654; // lsu.cpp(19)
  wire bindout7657; // lsu.cpp(19)
  wire bindin7660; // lsu.cpp(19)
  wire bindin7663; // lsu.cpp(19)
  wire eq7667; // lsu.cpp(44)
  reg reg7675; // lsu.cpp(47)
  reg[19:0] reg7680; // lsu.cpp(48)
  reg[13:0] reg7685; // lsu.cpp(49)
  reg[19:0] sel7695; // lsu.cpp(258)
  wire[19:0] add7696; // lsu.cpp(257)
  wire[5:0] ch_rd_mdata_t7699; // lsu.cpp(55)
  wire[13:0] pad7702; // lsu.cpp(55)
  reg[2:0] reg7708; // lsu.cpp(70)
  reg reg7714; // lsu.cpp(71)
  wire eq7720; // lsu.cpp(14)
  wire eq7724; // lsu.cpp(6)
  wire eq7728; // lsu.cpp(79)
  wire andl7731; // lsu.cpp(79)
  reg[533:0] reg7736; // lsu.cpp(81)
  reg[2:0] reg7747; // lsu.cpp(82)
  wire andl7750; // lsu.cpp(87)
  wire orl7754; // lsu.cpp(88)
  reg[31:0] sel7758; // lsu.cpp(87)
  reg[31:0] reg7765; // lsu.cpp(91)
  reg reg7770; // lsu.cpp(94)
  reg[19:0] reg7775; // lsu.cpp(95)
  reg[511:0] reg7780; // lsu.cpp(96)
  reg[13:0] reg7785; // lsu.cpp(97)
  wire[31:0] sub7789; // lsu.cpp(101)
  wire[4:0] ch_wr_mdata_t7792; // lsu.cpp(107)
  wire[19:0] add7799; // lsu.cpp(270)
  wire[13:0] pad7801; // lsu.cpp(110)
  wire[2:0] pad7804; // lsu.cpp(116)
  wire[4:0] ch_wr_mdata_t7808; // lsu.cpp(117)
  wire[19:0] add7814; // lsu.cpp(270)
  wire[13:0] pad7816; // lsu.cpp(120)
  wire eq7821; // lsu.cpp(127)
  wire[31:0] add7826; // lsu.cpp(129)
  wire[31:0] sub7828; // lsu.cpp(129)
  wire[19:0] sel7831; // lsu.cpp(114)
  wire[19:0] sel7832; // lsu.cpp(105)
  wire[19:0] sel7833; // lsu.cpp(103)
  reg[19:0] sel7834; // lsu.cpp(271)
  wire sel7835; // lsu.cpp(127)
  wire eq7836; // lsu.cpp(103)
  wire andl7837; // lsu.cpp(103)
  wire[511:0] sel7838; // lsu.cpp(114)
  wire[511:0] sel7839; // lsu.cpp(105)
  wire[511:0] sel7840; // lsu.cpp(103)
  wire[13:0] sel7841; // lsu.cpp(114)
  wire[13:0] sel7842; // lsu.cpp(105)
  wire[13:0] sel7843; // lsu.cpp(103)
  wire[31:0] sel7844; // lsu.cpp(127)
  wire sel7847; // lsu.cpp(114)
  wire sel7848; // lsu.cpp(105)
  wire sel7849; // lsu.cpp(127)
  reg sel7850; // lsu.cpp(103)
  reg[19:0] sel7851; // lsu.cpp(271)
  wire eq7862; // lsu.h(33)
  wire eq7866; // lsu.cpp(164)
  wire sel7880; // lsu.cpp(158)
  wire[1:0] sel7881; // lsu.cpp(158)
  wire[19:0] sel7882; // lsu.cpp(158)
  wire[511:0] sel7883; // lsu.cpp(158)
  wire[2:0] sel7884; // lsu.cpp(164)
  wire[2:0] sel7885; // lsu.cpp(163)
  wire[2:0] sel7886; // lsu.cpp(160)
  wire[2:0] sel7887; // lsu.cpp(177)
  wire[2:0] sel7888; // lsu.cpp(189)
  wire[2:0] sel7889; // lsu.cpp(198)
  reg[2:0] sel7891; // lsu.cpp(158)
  wire sel7892; // lsu.cpp(158)
  wire[2:0] sel7893; // lsu.cpp(160)
  wire eq7894; // lsu.cpp(158)
  wire andl7895; // lsu.cpp(158)
  wire sel7896; // lsu.cpp(158)
  wire[533:0] sel7897; // lsu.cpp(160)
  wire[5:0] proxy7901; // lsu.cpp(227)
  wire eq7906; // lsu.cpp(230)
  wire andl7909; // lsu.cpp(230)
  wire eq7913; // lsu.cpp(236)
  wire andl7916; // lsu.cpp(236)
  wire eq7920; // lsu.cpp(236)
  wire andl7923; // lsu.cpp(236)

  assign io_ctrl_rd_rsp_data6462 = {io_qpi_rd_rsp_data, proxy7901[2:0]};
  assign bindin6812 = clk;
  assign bindin6814 = reset;
  ch_xbar_switch __module23__(.clk(bindin6812), .reset(bindin6814), .io_in_0_data(bindin6815), .io_in_0_valid(bindin6818), .io_in_1_data(bindin6826), .io_in_1_valid(bindin6829), .io_in_2_data(bindin6837), .io_in_2_valid(bindin6840), .io_out_ready(bindin6854), .io_in_0_ready(bindout6821), .io_in_1_ready(bindout6832), .io_in_2_ready(bindout6843), .io_out_data(bindout6848), .io_out_valid(bindout6851), .io_out_grant(bindout6857));
  assign bindin6815 = io_walkers_0_rd_req_data;
  assign bindin6818 = io_walkers_0_rd_req_valid;
  assign bindin6826 = io_walkers_1_rd_req_data;
  assign bindin6829 = io_walkers_1_rd_req_valid;
  assign bindin6837 = io_ctrl_rd_req_data;
  assign bindin6840 = io_ctrl_rd_req_valid;
  assign bindin6854 = eq7667;
  assign bindin7164 = clk;
  assign bindin7165 = reset;
  ch_xbar_switch_0 __module26__(.clk(bindin7164), .reset(bindin7165), .io_in_0_data(bindin7166), .io_in_0_valid(bindin7169), .io_in_1_data(bindin7178), .io_in_1_valid(bindin7181), .io_in_2_data(bindin7190), .io_in_2_valid(bindin7193), .io_out_ready(bindin7208), .io_in_0_ready(bindout7172), .io_in_1_ready(bindout7184), .io_in_2_ready(bindout7196), .io_out_data(bindout7202), .io_out_valid(bindout7205), .io_out_grant(bindout7211));
  assign bindin7166 = io_PEs_0_wr_req_data;
  assign bindin7169 = io_PEs_0_wr_req_valid;
  assign bindin7178 = io_PEs_1_wr_req_data;
  assign bindin7181 = io_PEs_1_wr_req_valid;
  assign bindin7190 = io_ctrl_wr_req_data;
  assign bindin7193 = io_ctrl_wr_req_valid;
  assign bindin7208 = eq7724;
  assign proxy7635 = {sel7883, sel7882, sel7881};
  assign bindin7640 = clk;
  assign bindin7641 = reset;
  spmv_write_cache __module29__(.clk(bindin7640), .reset(bindin7641), .io_enq_data(bindin7642), .io_enq_valid(bindin7645), .io_evict_ready(bindin7660), .io_flush(bindin7663), .io_enq_ready(bindout7648), .io_evict_data(bindout7654), .io_evict_valid(bindout7657));
  assign bindin7642 = proxy7635;
  assign bindin7645 = sel7896;
  assign proxy_owner7651 = bindout7654[1:0];
  assign bindin7660 = andl7731;
  assign bindin7663 = sel7880;
  assign eq7667 = io_qpi_rd_req_almostfull == 1'h0;
  always @ (posedge clk) begin
    if (reset)
      reg7675 <= 1'h0;
    else
      reg7675 <= bindout6851;
  end
  always @ (posedge clk) begin
    reg7680 <= add7696;
  end
  always @ (posedge clk) begin
    reg7685 <= pad7702;
  end
  always @(*) begin
    case (bindout6848[2:0])
      3'h0: sel7695 = io_ctx[51:32];
      3'h1: sel7695 = io_ctx[71:52];
      3'h2: sel7695 = io_ctx[91:72];
      3'h3: sel7695 = io_ctx[111:92];
      3'h4: sel7695 = io_ctx[131:112];
      3'h5: sel7695 = io_ctx[151:132];
      default: sel7695 = io_ctx[171:152];
    endcase
  end
  assign add7696 = sel7695 + bindout6848[22:3];
  assign ch_rd_mdata_t7699 = {bindout6857, bindout6848[2:0]};
  assign pad7702 = {{8{1'b0}}, ch_rd_mdata_t7699};
  always @ (posedge clk) begin
    if (reset)
      reg7708 <= 3'h0;
    else
      reg7708 <= sel7891;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7714 <= 1'h0;
    else
      reg7714 <= sel7850;
  end
  assign eq7720 = reg7714 == 1'h0;
  assign eq7724 = reg7708 == 3'h0;
  assign eq7728 = sel7892 == 1'h0;
  assign andl7731 = eq7720 & eq7728;
  always @ (posedge clk) begin
    reg7736 <= sel7897;
  end
  always @ (posedge clk) begin
    reg7747 <= sel7893;
  end
  assign andl7750 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign orl7754 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (orl7754)
      sel7758 = 32'h1;
    else if (andl7750)
      sel7758 = 32'h2;
    else
      sel7758 = 32'h0;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7765 <= 32'h0;
    else
      reg7765 <= sel7844;
  end
  always @ (posedge clk) begin
    reg7770 <= sel7835;
  end
  always @ (posedge clk) begin
    reg7775 <= sel7833;
  end
  always @ (posedge clk) begin
    reg7780 <= sel7840;
  end
  always @ (posedge clk) begin
    reg7785 <= sel7843;
  end
  assign sub7789 = reg7765 - sel7758;
  assign ch_wr_mdata_t7792 = {reg7747, reg7736[1:0]};
  assign add7799 = sel7834 + reg7736[21:2];
  assign pad7801 = {{9{1'b0}}, ch_wr_mdata_t7792};
  assign pad7804 = {{1{1'b0}}, proxy_owner7651};
  assign ch_wr_mdata_t7808 = {pad7804, 2'h1};
  assign add7814 = sel7851 + bindout7654[21:2];
  assign pad7816 = {{9{1'b0}}, ch_wr_mdata_t7808};
  assign eq7821 = io_qpi_wr_req_almostfull == 1'h0;
  assign add7826 = reg7765 + 32'h1;
  assign sub7828 = add7826 - sel7758;
  assign sel7831 = bindout7657 ? add7814 : reg7775;
  assign sel7832 = sel7892 ? add7799 : sel7831;
  assign sel7833 = (reg7714 == 1'h0) ? sel7832 : reg7775;
  always @(*) begin
    case (reg7736[1:0])
      2'h0: sel7834 = io_ctx[191:172];
      2'h1: sel7834 = io_ctx[211:192];
      default: sel7834 = io_ctx[231:212];
    endcase
  end
  assign sel7835 = andl7837 ? 1'h1 : 1'h0;
  assign eq7836 = reg7714 == 1'h1;
  assign andl7837 = eq7836 & eq7821;
  assign sel7838 = bindout7657 ? bindout7654[533:22] : reg7780;
  assign sel7839 = sel7892 ? reg7736[533:22] : sel7838;
  assign sel7840 = (reg7714 == 1'h0) ? sel7839 : reg7780;
  assign sel7841 = bindout7657 ? pad7816 : reg7785;
  assign sel7842 = sel7892 ? pad7801 : sel7841;
  assign sel7843 = (reg7714 == 1'h0) ? sel7842 : reg7785;
  assign sel7844 = andl7837 ? sub7828 : sub7789;
  assign sel7847 = bindout7657 ? 1'h1 : reg7714;
  assign sel7848 = sel7892 ? 1'h1 : sel7847;
  assign sel7849 = eq7821 ? 1'h0 : reg7714;
  always @(*) begin
    case (reg7714)
      1'h0: sel7850 = sel7848;
      1'h1: sel7850 = sel7849;
      default: sel7850 = reg7714;
    endcase
  end
  always @(*) begin
    case (2'h1)
      2'h0: sel7851 = io_ctx[191:172];
      2'h1: sel7851 = io_ctx[211:192];
      default: sel7851 = io_ctx[231:212];
    endcase
  end
  assign eq7862 = bindout7202[1:0] == 2'h1;
  assign eq7866 = bindout7211 == 3'h4;
  assign sel7880 = (reg7708 == 3'h3) ? 1'h1 : 1'h0;
  assign sel7881 = (reg7708 == 3'h2) ? reg7747[1:0] : 2'h0;
  assign sel7882 = (reg7708 == 3'h2) ? reg7736[21:2] : 20'h0;
  assign sel7883 = (reg7708 == 3'h2) ? reg7736[533:22] : lit7855;
  assign sel7884 = eq7866 ? 3'h3 : 3'h2;
  assign sel7885 = eq7862 ? sel7884 : 3'h1;
  assign sel7886 = bindout7205 ? sel7885 : reg7708;
  assign sel7887 = eq7720 ? 3'h0 : reg7708;
  assign sel7888 = bindout7648 ? 3'h0 : reg7708;
  assign sel7889 = bindout7648 ? 3'h4 : reg7708;
  always @(*) begin
    case (reg7708)
      3'h0: sel7891 = sel7886;
      3'h1: sel7891 = sel7887;
      3'h2: sel7891 = sel7888;
      3'h3: sel7891 = sel7889;
      3'h4: sel7891 = sel7888;
      default: sel7891 = reg7708;
    endcase
  end
  assign sel7892 = (reg7708 == 3'h1) ? 1'h1 : 1'h0;
  assign sel7893 = andl7895 ? bindout7211 : reg7747;
  assign eq7894 = reg7708 == 3'h0;
  assign andl7895 = eq7894 & bindout7205;
  assign sel7896 = (reg7708 == 3'h2) ? 1'h1 : 1'h0;
  assign sel7897 = andl7895 ? bindout7202 : reg7736;
  assign proxy7901 = io_qpi_rd_rsp_mdata[5:0];
  assign eq7906 = io_qpi_rd_rsp_mdata[5:3] == 3'h4;
  assign andl7909 = io_qpi_rd_rsp_valid & eq7906;
  assign eq7913 = io_qpi_rd_rsp_mdata[5:3] == 3'h1;
  assign andl7916 = io_qpi_rd_rsp_valid & eq7913;
  assign eq7920 = io_qpi_rd_rsp_mdata[5:3] == 3'h2;
  assign andl7923 = io_qpi_rd_rsp_valid & eq7920;

  assign io_qpi_rd_req_addr = reg7680;
  assign io_qpi_rd_req_mdata = reg7685;
  assign io_qpi_rd_req_valid = reg7675;
  assign io_qpi_wr_req_addr = reg7775;
  assign io_qpi_wr_req_mdata = reg7785;
  assign io_qpi_wr_req_data = reg7780;
  assign io_qpi_wr_req_valid = reg7770;
  assign io_ctrl_rd_req_ready = bindout6843;
  assign io_ctrl_wr_req_ready = bindout7196;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data6462;
  assign io_ctrl_rd_rsp_valid = andl7909;
  assign io_ctrl_outstanding_writes = reg7765;
  assign io_walkers_0_rd_req_ready = bindout6821;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data6462;
  assign io_walkers_0_rd_rsp_valid = andl7916;
  assign io_walkers_1_rd_req_ready = bindout6832;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data6462;
  assign io_walkers_1_rd_rsp_valid = andl7923;
  assign io_PEs_0_wr_req_ready = bindout7172;
  assign io_PEs_1_wr_req_ready = bindout7184;

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
  reg[1:0] reg8111; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[1:0] reg8120; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[2:0] reg8127; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg8134; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg8140; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl8143; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl8146; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[1:0] add8151; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] sel8153; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] add8157; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[1:0] sel8159; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire eq8163; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl8166; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire eq8170; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl8173; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[2:0] add8178; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[2:0] sub8182; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[2:0] sel8184; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem8185 [0:3]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport8189; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq8205; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl8207; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl8209; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel8213; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire eq8227; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl8229; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl8231; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel8235; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire eq8238; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire eq8242; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg8111 <= 2'h0;
    else
      reg8111 <= sel8153;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8120 <= 2'h0;
    else
      reg8120 <= sel8159;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8127 <= 3'h0;
    else
      reg8127 <= sel8184;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8134 <= 1'h0;
    else
      reg8134 <= sel8213;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8140 <= 1'h1;
    else
      reg8140 <= sel8235;
  end
  assign andl8143 = io_deq_ready & eq8238;
  assign andl8146 = io_enq_valid & eq8242;
  assign add8151 = reg8111 + 2'h1;
  assign sel8153 = andl8143 ? add8151 : reg8111;
  assign add8157 = reg8120 + 2'h1;
  assign sel8159 = andl8146 ? add8157 : reg8120;
  assign eq8163 = andl8146 == 1'h0;
  assign andl8166 = andl8143 & eq8163;
  assign eq8170 = andl8143 == 1'h0;
  assign andl8173 = andl8146 & eq8170;
  assign add8178 = reg8127 + 3'h1;
  assign sub8182 = reg8127 - 3'h1;
  always @(*) begin
    if (andl8173)
      sel8184 = add8178;
    else if (andl8166)
      sel8184 = sub8182;
    else
      sel8184 = reg8127;
  end
  always @ (posedge clk) begin
    if (andl8146) begin
      mem8185[reg8120] <= io_enq_data;
    end
  end
  assign mrport8189 = mem8185[reg8111];
  assign eq8205 = reg8127 == 3'h3;
  assign andl8207 = eq8205 & andl8146;
  assign andl8209 = andl8207 & eq8170;
  always @(*) begin
    if (andl8209)
      sel8213 = 1'h1;
    else if (andl8166)
      sel8213 = 1'h0;
    else
      sel8213 = reg8134;
  end
  assign eq8227 = reg8127 == 3'h1;
  assign andl8229 = eq8227 & andl8143;
  assign andl8231 = andl8229 & eq8163;
  always @(*) begin
    if (andl8231)
      sel8235 = 1'h1;
    else if (andl8173)
      sel8235 = 1'h0;
    else
      sel8235 = reg8140;
  end
  assign eq8238 = reg8140 == 1'h0;
  assign eq8242 = reg8134 == 1'h0;

  assign io_enq_ready = eq8242;
  assign io_deq_data = mrport8189;
  assign io_deq_valid = eq8238;
  assign io_size = reg8127;

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
  wire[95:0] lit8320 = 96'h0;
  wire[511:0] lit8429 = 512'h0;
  wire bindin2356; // /usr/include/c++/7/array(94)
  wire bindin2358; // /usr/include/c++/7/array(94)
  wire[63:0] bindin2359; // /usr/include/c++/7/array(94)
  wire bindin2362; // /usr/include/c++/7/array(94)
  wire bindout2365; // /usr/include/c++/7/array(94)
  wire[63:0] bindin2368; // /usr/include/c++/7/array(94)
  wire[351:0] bindout2382; // /usr/include/c++/7/array(94)
  wire[22:0] bindout2387; // /usr/include/c++/7/array(94)
  wire bindout2390; // /usr/include/c++/7/array(94)
  wire bindin2393; // /usr/include/c++/7/array(94)
  wire[514:0] bindin2398; // /usr/include/c++/7/array(94)
  wire bindin2401; // /usr/include/c++/7/array(94)
  wire[84:0] bindout2408; // /usr/include/c++/7/array(94)
  wire bindout2411; // /usr/include/c++/7/array(94)
  wire bindin2414; // /usr/include/c++/7/array(94)
  wire bindin4718; // /usr/include/c++/7/array(94)
  wire bindin4719; // /usr/include/c++/7/array(94)
  wire[63:0] bindin4720; // /usr/include/c++/7/array(94)
  wire bindin4723; // /usr/include/c++/7/array(94)
  wire bindout4726; // /usr/include/c++/7/array(94)
  wire[63:0] bindin4729; // /usr/include/c++/7/array(94)
  wire[351:0] bindout4743; // /usr/include/c++/7/array(94)
  wire[22:0] bindout4748; // /usr/include/c++/7/array(94)
  wire bindout4751; // /usr/include/c++/7/array(94)
  wire bindin4754; // /usr/include/c++/7/array(94)
  wire[514:0] bindin4759; // /usr/include/c++/7/array(94)
  wire bindin4762; // /usr/include/c++/7/array(94)
  wire[84:0] bindout4769; // /usr/include/c++/7/array(94)
  wire bindout4772; // /usr/include/c++/7/array(94)
  wire bindin4775; // /usr/include/c++/7/array(94)
  wire bindin5559; // /usr/include/c++/7/array(94)
  wire bindin5560; // /usr/include/c++/7/array(94)
  wire[84:0] bindin5561; // /usr/include/c++/7/array(94)
  wire bindin5564; // /usr/include/c++/7/array(94)
  wire bindout5567; // /usr/include/c++/7/array(94)
  wire[533:0] bindout5573; // /usr/include/c++/7/array(94)
  wire bindout5576; // /usr/include/c++/7/array(94)
  wire bindin5579; // /usr/include/c++/7/array(94)
  wire[63:0] bindout5584; // /usr/include/c++/7/array(94)
  wire bindout5587; // /usr/include/c++/7/array(94)
  wire bindin6371; // /usr/include/c++/7/array(94)
  wire bindin6372; // /usr/include/c++/7/array(94)
  wire[84:0] bindin6373; // /usr/include/c++/7/array(94)
  wire bindin6376; // /usr/include/c++/7/array(94)
  wire bindout6379; // /usr/include/c++/7/array(94)
  wire[533:0] bindout6385; // /usr/include/c++/7/array(94)
  wire bindout6388; // /usr/include/c++/7/array(94)
  wire bindin6391; // /usr/include/c++/7/array(94)
  wire[63:0] bindout6396; // /usr/include/c++/7/array(94)
  wire bindout6399; // /usr/include/c++/7/array(94)
  wire bindin7928; // spmv.cpp(23)
  wire bindin7929; // spmv.cpp(23)
  wire bindin7930; // spmv.cpp(23)
  wire[19:0] bindout7933; // spmv.cpp(23)
  wire[13:0] bindout7936; // spmv.cpp(23)
  wire bindout7939; // spmv.cpp(23)
  wire[13:0] bindin7942; // spmv.cpp(23)
  wire[511:0] bindin7945; // spmv.cpp(23)
  wire bindin7948; // spmv.cpp(23)
  wire bindin7951; // spmv.cpp(23)
  wire[19:0] bindout7954; // spmv.cpp(23)
  wire[13:0] bindout7957; // spmv.cpp(23)
  wire[511:0] bindout7960; // spmv.cpp(23)
  wire bindout7963; // spmv.cpp(23)
  wire[13:0] bindin7966; // spmv.cpp(23)
  wire bindin7969; // spmv.cpp(23)
  wire[13:0] bindin7972; // spmv.cpp(23)
  wire bindin7975; // spmv.cpp(23)
  wire[511:0] bindin7993; // spmv.cpp(23)
  wire[22:0] proxy7995; // spmv.cpp(23)
  wire[2:0] proxy_type7996; // spmv.cpp(23)
  wire[22:0] bindin7998; // spmv.cpp(23)
  wire bindin8001; // spmv.cpp(23)
  wire bindout8004; // spmv.cpp(23)
  wire[533:0] proxy8006; // spmv.cpp(23)
  wire[533:0] bindin8010; // spmv.cpp(23)
  wire bindin8013; // spmv.cpp(23)
  wire bindout8016; // spmv.cpp(23)
  wire[514:0] bindout8021; // spmv.cpp(23)
  wire bindout8024; // spmv.cpp(23)
  wire[31:0] bindout8027; // spmv.cpp(23)
  wire[22:0] bindin8032; // spmv.cpp(23)
  wire bindin8035; // spmv.cpp(23)
  wire bindout8038; // spmv.cpp(23)
  wire[514:0] bindout8043; // spmv.cpp(23)
  wire bindout8046; // spmv.cpp(23)
  wire[22:0] bindin8051; // spmv.cpp(23)
  wire bindin8054; // spmv.cpp(23)
  wire bindout8057; // spmv.cpp(23)
  wire[514:0] bindout8062; // spmv.cpp(23)
  wire bindout8065; // spmv.cpp(23)
  wire[533:0] bindin8071; // spmv.cpp(23)
  wire bindin8074; // spmv.cpp(23)
  wire bindout8077; // spmv.cpp(23)
  wire[533:0] bindin8083; // spmv.cpp(23)
  wire bindin8086; // spmv.cpp(23)
  wire bindout8089; // spmv.cpp(23)
  wire bindin8247; // spmv.cpp(23)
  wire bindin8248; // spmv.cpp(23)
  wire[511:0] bindin8249; // spmv.cpp(23)
  wire bindin8252; // spmv.cpp(23)
  wire[511:0] bindout8258; // spmv.cpp(23)
  wire bindout8261; // spmv.cpp(23)
  wire bindin8264; // spmv.cpp(23)
  wire[543:0] proxy8270; // spmv.cpp(23)
  reg[543:0] reg8272; // spmv.cpp(23)
  reg[4:0] reg8279; // spmv.cpp(23)
  reg[31:0] reg8286; // spmv.cpp(23)
  reg[19:0] reg8293; // spmv.cpp(23)
  reg[19:0] reg8298; // spmv.cpp(23)
  reg[1:0] reg8305; // spmv.cpp(23)
  reg[19:0] reg8313; // spmv.cpp(23)
  reg[19:0] reg8318; // spmv.cpp(23)
  wire[95:0] proxy8327; // spmv.cpp(23)
  reg[95:0] reg8328; // spmv.cpp(23)
  wire[19:0] sub8341; // spmv.cpp(41)
  reg[63:0] reg8348; // spmv.cpp(44)
  wire[63:0] add8353; // spmv.cpp(45)
  reg[2:0] reg8360; // spmv.cpp(62)
  reg reg8368; // spmv.cpp(65)
  wire eq8372; // lsu.h(23)
  wire andl8375; // spmv.cpp(70)
  wire[31:0] pad8377; // spmv.cpp(77)
  wire eq8381; // lsu.h(23)
  wire andl8384; // spmv.cpp(75)
  wire andl8386; // spmv.cpp(75)
  wire[31:0] pad8388; // spmv.cpp(76)
  wire[31:0] add8391; // spmv.cpp(76)
  wire[31:0] sub8393; // spmv.cpp(76)
  wire andl8396; // spmv.cpp(80)
  wire andl8399; // spmv.cpp(82)
  wire andl8401; // spmv.cpp(82)
  wire[31:0] add8410; // spmv.cpp(92)
  wire[31:0] shl8414; // spmv.cpp(92)
  wire[31:0] add8416; // spmv.cpp(92)
  wire[31:0] shr8420; // spmv.cpp(92)
  wire[19:0] sub8424; // spmv.cpp(92)
  wire ne8434; // spmv.cpp(107)
  wire ne8444; // spmv.cpp(119)
  wire[19:0] add8449; // spmv.cpp(123)
  wire eq8452; // spmv.cpp(124)
  wire[31:0] add8458; // spmv.cpp(130)
  wire eq8465; // spmv.cpp(139)
  wire andl8467; // spmv.cpp(139)
  wire[19:0] pad8478; // spmv.cpp(157)
  wire[511:0] pad8480; // spmv.cpp(267)
  wire[415:0] ch_cu_stats_t8483; // spmv.cpp(269)
  wire[511:0] pad8499; // spmv.cpp(270)
  wire[415:0] ch_cu_stats_t8502; // spmv.cpp(272)
  wire[511:0] pad8518; // spmv.cpp(273)
  reg[511:0] sel8520; // spmv.cpp(267)
  wire[1:0] add8525; // spmv.cpp(162)
  wire eq8529; // spmv.cpp(163)
  wire eq8535; // spmv.cpp(171)
  wire[1:0] sel8539; // spmv.cpp(161)
  wire eq8540; // spmv.cpp(104)
  wire andl8541; // spmv.cpp(104)
  reg sel8542; // spmv.cpp(104)
  wire sel8543; // spmv.cpp(107)
  wire sel8544; // spmv.cpp(106)
  wire sel8545; // spmv.cpp(171)
  reg sel8546; // spmv.cpp(104)
  wire sel8547; // spmv.cpp(119)
  wire eq8548; // spmv.cpp(104)
  wire andl8549; // spmv.cpp(104)
  wire[31:0] sel8551; // spmv.cpp(122)
  wire[31:0] sel8552; // spmv.cpp(119)
  wire[31:0] sel8553; // spmv.cpp(104)
  wire[19:0] sel8554; // spmv.cpp(107)
  wire andl8555; // spmv.cpp(104)
  wire[19:0] sel8556; // spmv.cpp(122)
  wire andl8557; // spmv.cpp(104)
  reg[19:0] sel8558; // spmv.cpp(104)
  wire[2:0] sel8559; // spmv.cpp(107)
  wire[2:0] sel8561; // spmv.cpp(124)
  wire andl8562; // spmv.cpp(104)
  wire andl8563; // spmv.cpp(104)
  wire[2:0] sel8564; // spmv.cpp(139)
  wire[2:0] sel8565; // spmv.cpp(149)
  wire[2:0] sel8566; // spmv.cpp(163)
  wire andl8567; // spmv.cpp(104)
  wire[2:0] sel8568; // spmv.cpp(171)
  reg[2:0] sel8569; // spmv.cpp(104)
  reg[1:0] sel8570; // spmv.cpp(104)
  wire[19:0] sel8571; // spmv.cpp(104)
  wire[511:0] sel8572; // spmv.cpp(104)
  reg[1:0] reg8577; // spmv.cpp(189)
  wire eq8586; // spmv.cpp(205)
  wire[543:0] shr8607; // spmv.cpp(229)
  wire[19:0] add8614; // spmv.cpp(230)
  wire[4:0] sub8619; // spmv.cpp(231)
  wire ne8624; // spmv.cpp(241)
  wire ne8627; // spmv.cpp(241)
  wire andl8629; // spmv.cpp(241)
  wire sel8666; // spmv.cpp(222)
  wire eq8667; // spmv.cpp(200)
  wire andl8668; // spmv.cpp(200)
  wire[63:0] sel8669; // spmv.cpp(222)
  wire[19:0] sel8672; // spmv.cpp(222)
  wire[19:0] sel8673; // spmv.cpp(222)
  reg[19:0] sel8674; // spmv.cpp(200)
  wire sel8675; // spmv.cpp(222)
  wire eq8676; // spmv.cpp(200)
  wire andl8677; // spmv.cpp(200)
  wire[63:0] sel8678; // spmv.cpp(222)
  wire[1:0] sel8681; // spmv.cpp(203)
  wire[1:0] sel8682; // spmv.cpp(241)
  wire[1:0] sel8683; // spmv.cpp(222)
  wire[1:0] sel8684; // spmv.cpp(241)
  wire[1:0] sel8685; // spmv.cpp(222)
  reg[1:0] sel8686; // spmv.cpp(200)
  wire[4:0] sel8687; // spmv.cpp(205)
  wire[4:0] sel8688; // spmv.cpp(203)
  wire[4:0] sel8689; // spmv.cpp(222)
  wire[4:0] sel8690; // spmv.cpp(222)
  reg[4:0] sel8691; // spmv.cpp(200)
  wire[31:0] sel8693; // spmv.cpp(205)
  wire andl8694; // spmv.cpp(200)
  wire[31:0] sel8695; // spmv.cpp(222)
  wire[31:0] sel8696; // spmv.cpp(222)
  reg[31:0] sel8697; // spmv.cpp(200)
  wire[479:0] sel8699; // spmv.cpp(205)
  wire[479:0] sel8700; // spmv.cpp(203)
  wire[479:0] sel8701; // spmv.cpp(222)
  wire[479:0] sel8702; // spmv.cpp(222)
  reg[479:0] sel8703; // spmv.cpp(200)
  wire[31:0] sel8705; // spmv.cpp(205)
  wire[31:0] sel8706; // spmv.cpp(203)
  wire[31:0] sel8707; // spmv.cpp(222)
  wire[31:0] sel8708; // spmv.cpp(222)
  reg[31:0] sel8709; // spmv.cpp(200)
  wire sel8710; // spmv.cpp(203)
  wire eq8711; // spmv.cpp(200)
  wire andl8712; // spmv.cpp(200)

  assign bindin2356 = clk;
  assign bindin2358 = reset;
  spmv_dcsc_walk __module2__(.clk(bindin2356), .reset(bindin2358), .io_ctrl_start_data(bindin2359), .io_ctrl_start_valid(bindin2362), .io_ctrl_timer(bindin2368), .io_lsu_rd_req_ready(bindin2393), .io_lsu_rd_rsp_data(bindin2398), .io_lsu_rd_rsp_valid(bindin2401), .io_pe_ready(bindin2414), .io_ctrl_start_ready(bindout2365), .io_ctrl_stats(bindout2382), .io_lsu_rd_req_data(bindout2387), .io_lsu_rd_req_valid(bindout2390), .io_pe_data(bindout2408), .io_pe_valid(bindout2411));
  assign bindin2359 = sel8678;
  assign bindin2362 = sel8675;
  assign bindin2368 = reg8348;
  assign bindin2393 = bindout8038;
  assign bindin2398 = bindout8043;
  assign bindin2401 = bindout8046;
  assign bindin2414 = bindout5567;
  assign bindin4718 = clk;
  assign bindin4719 = reset;
  spmv_dcsc_walk __module9__(.clk(bindin4718), .reset(bindin4719), .io_ctrl_start_data(bindin4720), .io_ctrl_start_valid(bindin4723), .io_ctrl_timer(bindin4729), .io_lsu_rd_req_ready(bindin4754), .io_lsu_rd_rsp_data(bindin4759), .io_lsu_rd_rsp_valid(bindin4762), .io_pe_ready(bindin4775), .io_ctrl_start_ready(bindout4726), .io_ctrl_stats(bindout4743), .io_lsu_rd_req_data(bindout4748), .io_lsu_rd_req_valid(bindout4751), .io_pe_data(bindout4769), .io_pe_valid(bindout4772));
  assign bindin4720 = sel8669;
  assign bindin4723 = sel8666;
  assign bindin4729 = reg8348;
  assign bindin4754 = bindout8057;
  assign bindin4759 = bindout8062;
  assign bindin4762 = bindout8065;
  assign bindin4775 = bindout6379;
  assign bindin5559 = clk;
  assign bindin5560 = reset;
  spmv_pe __module16__(.clk(bindin5559), .reset(bindin5560), .io_req_data(bindin5561), .io_req_valid(bindin5564), .io_lsu_wr_req_ready(bindin5579), .io_req_ready(bindout5567), .io_lsu_wr_req_data(bindout5573), .io_lsu_wr_req_valid(bindout5576), .io_stats(bindout5584), .io_is_idle(bindout5587));
  assign bindin5561 = bindout2408;
  assign bindin5564 = bindout2411;
  assign bindin5579 = bindout8077;
  assign bindin6371 = clk;
  assign bindin6372 = reset;
  spmv_pe __module19__(.clk(bindin6371), .reset(bindin6372), .io_req_data(bindin6373), .io_req_valid(bindin6376), .io_lsu_wr_req_ready(bindin6391), .io_req_ready(bindout6379), .io_lsu_wr_req_data(bindout6385), .io_lsu_wr_req_valid(bindout6388), .io_stats(bindout6396), .io_is_idle(bindout6399));
  assign bindin6373 = bindout4769;
  assign bindin6376 = bindout4772;
  assign bindin6391 = bindout8089;
  assign bindin7928 = clk;
  assign bindin7929 = reset;
  spmv_lsu __module22__(.clk(bindin7928), .reset(bindin7929), .io_qpi_rd_req_almostfull(bindin7930), .io_qpi_rd_rsp_mdata(bindin7942), .io_qpi_rd_rsp_data(bindin7945), .io_qpi_rd_rsp_valid(bindin7948), .io_qpi_wr_req_almostfull(bindin7951), .io_qpi_wr_rsp0_mdata(bindin7966), .io_qpi_wr_rsp0_valid(bindin7969), .io_qpi_wr_rsp1_mdata(bindin7972), .io_qpi_wr_rsp1_valid(bindin7975), .io_ctx(bindin7993), .io_ctrl_rd_req_data(bindin7998), .io_ctrl_rd_req_valid(bindin8001), .io_ctrl_wr_req_data(bindin8010), .io_ctrl_wr_req_valid(bindin8013), .io_walkers_0_rd_req_data(bindin8032), .io_walkers_0_rd_req_valid(bindin8035), .io_walkers_1_rd_req_data(bindin8051), .io_walkers_1_rd_req_valid(bindin8054), .io_PEs_0_wr_req_data(bindin8071), .io_PEs_0_wr_req_valid(bindin8074), .io_PEs_1_wr_req_data(bindin8083), .io_PEs_1_wr_req_valid(bindin8086), .io_qpi_rd_req_addr(bindout7933), .io_qpi_rd_req_mdata(bindout7936), .io_qpi_rd_req_valid(bindout7939), .io_qpi_wr_req_addr(bindout7954), .io_qpi_wr_req_mdata(bindout7957), .io_qpi_wr_req_data(bindout7960), .io_qpi_wr_req_valid(bindout7963), .io_ctrl_rd_req_ready(bindout8004), .io_ctrl_wr_req_ready(bindout8016), .io_ctrl_rd_rsp_data(bindout8021), .io_ctrl_rd_rsp_valid(bindout8024), .io_ctrl_outstanding_writes(bindout8027), .io_walkers_0_rd_req_ready(bindout8038), .io_walkers_0_rd_rsp_data(bindout8043), .io_walkers_0_rd_rsp_valid(bindout8046), .io_walkers_1_rd_req_ready(bindout8057), .io_walkers_1_rd_rsp_data(bindout8062), .io_walkers_1_rd_rsp_valid(bindout8065), .io_PEs_0_wr_req_ready(bindout8077), .io_PEs_1_wr_req_ready(bindout8089));
  assign bindin7930 = io_qpi_rd_req_almostfull;
  assign bindin7942 = io_qpi_rd_rsp_mdata;
  assign bindin7945 = io_qpi_rd_rsp_data;
  assign bindin7948 = io_qpi_rd_rsp_valid;
  assign bindin7951 = io_qpi_wr_req_almostfull;
  assign bindin7966 = io_qpi_wr_rsp0_mdata;
  assign bindin7969 = io_qpi_wr_rsp0_valid;
  assign bindin7972 = io_qpi_wr_rsp1_mdata;
  assign bindin7975 = io_qpi_wr_rsp1_valid;
  assign bindin7993 = io_ctx;
  assign proxy7995 = {reg8293, 3'h0};
  assign proxy_type7996 = proxy7995[2:0];
  assign bindin7998 = proxy7995;
  assign bindin8001 = sel8547;
  assign proxy8006 = {sel8572, sel8571, sel8570};
  assign bindin8010 = proxy8006;
  assign bindin8013 = sel8542;
  assign bindin8032 = bindout2387;
  assign bindin8035 = bindout2390;
  assign bindin8051 = bindout4748;
  assign bindin8054 = bindout4751;
  assign bindin8071 = bindout5573;
  assign bindin8074 = bindout5576;
  assign bindin8083 = bindout6385;
  assign bindin8086 = bindout6388;
  assign bindin8247 = clk;
  assign bindin8248 = reset;
  ch_queue_1 __module30__(.clk(bindin8247), .reset(bindin8248), .io_enq_data(bindin8249), .io_enq_valid(bindin8252), .io_deq_ready(bindin8264), .io_deq_data(bindout8258), .io_deq_valid(bindout8261));
  assign bindin8249 = bindout8021[514:3];
  assign bindin8252 = andl8375;
  assign bindin8264 = sel8710;
  assign proxy8270 = {sel8709, sel8703, sel8697};
  always @ (posedge clk) begin
    reg8272 <= proxy8270;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8279 <= 5'h0;
    else
      reg8279 <= sel8691;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8286 <= 32'h0;
    else
      reg8286 <= sub8393;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8293 <= 20'h0;
    else
      reg8293 <= sel8558;
  end
  always @ (posedge clk) begin
    reg8298 <= sub8424;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8305 <= 2'h0;
    else
      reg8305 <= sel8539;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8313 <= 20'h0;
    else
      reg8313 <= sel8674;
  end
  always @ (posedge clk) begin
    reg8318 <= sub8341;
  end
  assign proxy8327 = {reg8328[95:32], sel8553};
  always @ (posedge clk) begin
    if (reset)
      reg8328 <= lit8320;
    else
      reg8328 <= proxy8327;
  end
  assign sub8341 = io_ctx[19:0] - 20'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8348 <= 64'h0;
    else
      reg8348 <= add8353;
  end
  assign add8353 = reg8348 + 64'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8360 <= 3'h0;
    else
      reg8360 <= sel8569;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8368 <= 1'h0;
    else
      reg8368 <= sel8546;
  end
  assign eq8372 = bindout8021[2:0] == 3'h0;
  assign andl8375 = bindout8024 & eq8372;
  assign pad8377 = {{31{1'b0}}, sel8710};
  assign eq8381 = proxy_type7996 == 3'h0;
  assign andl8384 = sel8547 & bindout8004;
  assign andl8386 = andl8384 & eq8381;
  assign pad8388 = {{31{1'b0}}, andl8386};
  assign add8391 = reg8286 + pad8388;
  assign sub8393 = add8391 - pad8377;
  assign andl8396 = bindout2365 & bindout5587;
  assign andl8399 = andl8396 & bindout4726;
  assign andl8401 = andl8399 & bindout6399;
  assign add8410 = io_ctx[31:0] + 32'h1;
  assign shl8414 = add8410 << 32'h2;
  assign add8416 = shl8414 + 32'h3f;
  assign shr8420 = add8416 >> 32'h6;
  assign sub8424 = shr8420[19:0] - 20'h1;
  assign ne8434 = io_ctx[31:0] != 32'h0;
  assign ne8444 = reg8286 != 32'h4;
  assign add8449 = reg8293 + 20'h1;
  assign eq8452 = reg8293 == reg8298;
  assign add8458 = reg8328[31:0] + 32'h1;
  assign eq8465 = reg8313 == io_ctx[19:0];
  assign andl8467 = eq8465 & andl8401;
  assign pad8478 = {{18{1'b0}}, reg8305};
  assign pad8480 = {{416{1'b0}}, reg8328};
  assign ch_cu_stats_t8483 = {bindout5584, bindout2382};
  assign pad8499 = {{96{1'b0}}, ch_cu_stats_t8483};
  assign ch_cu_stats_t8502 = {bindout6396, bindout4743};
  assign pad8518 = {{96{1'b0}}, ch_cu_stats_t8502};
  always @(*) begin
    case (reg8305)
      2'h1: sel8520 = pad8499;
      2'h0: sel8520 = pad8480;
      default: sel8520 = pad8518;
    endcase
  end
  assign add8525 = reg8305 + 2'h1;
  assign eq8529 = reg8305 == 2'h2;
  assign eq8535 = bindout8027 == 32'h0;
  assign sel8539 = andl8541 ? add8525 : reg8305;
  assign eq8540 = reg8360 == 3'h4;
  assign andl8541 = eq8540 & bindout8016;
  always @(*) begin
    case (reg8360)
      3'h3: sel8542 = 1'h1;
      3'h4: sel8542 = 1'h1;
      default: sel8542 = 1'h0;
    endcase
  end
  assign sel8543 = ne8434 ? 1'h0 : 1'h1;
  assign sel8544 = io_start ? sel8543 : reg8368;
  assign sel8545 = eq8535 ? 1'h1 : reg8368;
  always @(*) begin
    case (reg8360)
      3'h0: sel8546 = sel8544;
      3'h5: sel8546 = sel8545;
      default: sel8546 = reg8368;
    endcase
  end
  assign sel8547 = andl8549 ? 1'h1 : 1'h0;
  assign eq8548 = reg8360 == 3'h1;
  assign andl8549 = eq8548 & ne8444;
  assign sel8551 = bindout8004 ? reg8328[31:0] : add8458;
  assign sel8552 = ne8444 ? sel8551 : add8458;
  assign sel8553 = (reg8360 == 3'h1) ? sel8552 : reg8328[31:0];
  assign sel8554 = andl8555 ? 20'h0 : reg8293;
  assign andl8555 = io_start & ne8434;
  assign sel8556 = andl8557 ? add8449 : reg8293;
  assign andl8557 = ne8444 & bindout8004;
  always @(*) begin
    case (reg8360)
      3'h0: sel8558 = sel8554;
      3'h1: sel8558 = sel8556;
      default: sel8558 = reg8293;
    endcase
  end
  assign sel8559 = andl8555 ? 3'h1 : reg8360;
  assign sel8561 = andl8563 ? 3'h2 : reg8360;
  assign andl8562 = bindout8004 & eq8452;
  assign andl8563 = ne8444 & andl8562;
  assign sel8564 = andl8467 ? 3'h3 : reg8360;
  assign sel8565 = bindout8016 ? 3'h4 : reg8360;
  assign sel8566 = andl8567 ? 3'h5 : reg8360;
  assign andl8567 = bindout8016 & eq8529;
  assign sel8568 = eq8535 ? 3'h0 : reg8360;
  always @(*) begin
    case (reg8360)
      3'h0: sel8569 = sel8559;
      3'h1: sel8569 = sel8561;
      3'h2: sel8569 = sel8564;
      3'h3: sel8569 = sel8565;
      3'h4: sel8569 = sel8566;
      3'h5: sel8569 = sel8568;
      default: sel8569 = reg8360;
    endcase
  end
  always @(*) begin
    case (reg8360)
      3'h3: sel8570 = 2'h1;
      3'h4: sel8570 = 2'h2;
      default: sel8570 = 2'h0;
    endcase
  end
  assign sel8571 = (reg8360 == 3'h4) ? pad8478 : 20'h0;
  assign sel8572 = (reg8360 == 3'h4) ? sel8520 : lit8429;
  always @ (posedge clk) begin
    if (reset)
      reg8577 <= 2'h0;
    else
      reg8577 <= sel8686;
  end
  assign eq8586 = 5'h0 == reg8279;
  assign shr8607 = reg8272 >> 32'h20;
  assign add8614 = reg8313 + 20'h1;
  assign sub8619 = reg8279 - 5'h1;
  assign ne8624 = reg8279 != 5'h2;
  assign ne8627 = reg8313 != reg8318;
  assign andl8629 = ne8627 & ne8624;
  assign sel8666 = andl8668 ? 1'h1 : 1'h0;
  assign eq8667 = reg8577 == 2'h2;
  assign andl8668 = eq8667 & bindout4726;
  assign sel8669 = andl8668 ? reg8272[63:0] : 64'h0;
  assign sel8672 = bindout2365 ? add8614 : reg8313;
  assign sel8673 = bindout4726 ? add8614 : reg8313;
  always @(*) begin
    case (reg8577)
      2'h1: sel8674 = sel8672;
      2'h2: sel8674 = sel8673;
      default: sel8674 = reg8313;
    endcase
  end
  assign sel8675 = andl8677 ? 1'h1 : 1'h0;
  assign eq8676 = reg8577 == 2'h1;
  assign andl8677 = eq8676 & bindout2365;
  assign sel8678 = andl8677 ? reg8272[63:0] : 64'h0;
  assign sel8681 = bindout8261 ? 2'h1 : reg8577;
  assign sel8682 = andl8629 ? 2'h2 : 2'h0;
  assign sel8683 = bindout2365 ? sel8682 : 2'h2;
  assign sel8684 = andl8629 ? 2'h1 : 2'h0;
  assign sel8685 = bindout4726 ? sel8684 : 2'h1;
  always @(*) begin
    case (reg8577)
      2'h0: sel8686 = sel8681;
      2'h1: sel8686 = sel8683;
      2'h2: sel8686 = sel8685;
      default: sel8686 = reg8577;
    endcase
  end
  assign sel8687 = eq8586 ? 5'h10 : 5'h11;
  assign sel8688 = bindout8261 ? sel8687 : reg8279;
  assign sel8689 = bindout2365 ? sub8619 : reg8279;
  assign sel8690 = bindout4726 ? sub8619 : reg8279;
  always @(*) begin
    case (reg8577)
      2'h0: sel8691 = sel8688;
      2'h1: sel8691 = sel8689;
      2'h2: sel8691 = sel8690;
      default: sel8691 = reg8279;
    endcase
  end
  assign sel8693 = andl8694 ? bindout8258[31:0] : reg8272[31:0];
  assign andl8694 = bindout8261 & eq8586;
  assign sel8695 = bindout2365 ? shr8607[31:0] : reg8272[31:0];
  assign sel8696 = bindout4726 ? shr8607[31:0] : reg8272[31:0];
  always @(*) begin
    case (reg8577)
      2'h0: sel8697 = sel8693;
      2'h1: sel8697 = sel8695;
      2'h2: sel8697 = sel8696;
      default: sel8697 = reg8272[31:0];
    endcase
  end
  assign sel8699 = eq8586 ? bindout8258[511:32] : bindout8258[479:0];
  assign sel8700 = bindout8261 ? sel8699 : reg8272[511:32];
  assign sel8701 = bindout2365 ? shr8607[511:32] : reg8272[511:32];
  assign sel8702 = bindout4726 ? shr8607[511:32] : reg8272[511:32];
  always @(*) begin
    case (reg8577)
      2'h0: sel8703 = sel8700;
      2'h1: sel8703 = sel8701;
      2'h2: sel8703 = sel8702;
      default: sel8703 = reg8272[511:32];
    endcase
  end
  assign sel8705 = eq8586 ? reg8272[543:512] : bindout8258[511:480];
  assign sel8706 = bindout8261 ? sel8705 : reg8272[543:512];
  assign sel8707 = bindout2365 ? shr8607[543:512] : reg8272[543:512];
  assign sel8708 = bindout4726 ? shr8607[543:512] : reg8272[543:512];
  always @(*) begin
    case (reg8577)
      2'h0: sel8709 = sel8706;
      2'h1: sel8709 = sel8707;
      2'h2: sel8709 = sel8708;
      default: sel8709 = reg8272[543:512];
    endcase
  end
  assign sel8710 = andl8712 ? 1'h1 : 1'h0;
  assign eq8711 = reg8577 == 2'h0;
  assign andl8712 = eq8711 & bindout8261;

  assign io_qpi_rd_req_addr = bindout7933;
  assign io_qpi_rd_req_mdata = bindout7936;
  assign io_qpi_rd_req_valid = bindout7939;
  assign io_qpi_wr_req_addr = bindout7954;
  assign io_qpi_wr_req_mdata = bindout7957;
  assign io_qpi_wr_req_data = bindout7960;
  assign io_qpi_wr_req_valid = bindout7963;
  assign io_done = reg8368;

endmodule
