

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
  wire lt2154; // /home/blaise/dev/cash/include/select.h(132)
  wire[31:0] sel2156; // dcsc_walk.cpp(509)
  wire eq2160; // dcsc_walk.cpp(509)
  wire[31:0] sel2162; // dcsc_walk.cpp(509)
  wire gt2165; // /home/blaise/dev/cash/include/select.h(137)
  wire[31:0] sel2167; // dcsc_walk.cpp(510)
  wire[31:0] add2170; // dcsc_walk.cpp(511)
  wire[31:0] add2174; // dcsc_walk.cpp(512)
  wire[31:0] sel2181; // dcsc_walk.cpp(138)
  wire[511:0] sel2182; // dcsc_walk.cpp(410)
  wire andl2183; // dcsc_walk.cpp(138)
  wire eq2184; // dcsc_walk.cpp(138)
  wire andl2185; // dcsc_walk.cpp(138)
  wire[19:0] sel2186; // dcsc_walk.cpp(387)
  wire andl2187; // dcsc_walk.cpp(138)
  reg[19:0] sel2188; // dcsc_walk.cpp(138)
  wire[511:0] sel2189; // dcsc_walk.cpp(308)
  wire eq2190; // dcsc_walk.cpp(138)
  wire andl2191; // dcsc_walk.cpp(138)
  wire[31:0] sel2192; // dcsc_walk.cpp(410)
  wire[31:0] sel2193; // dcsc_walk.cpp(409)
  wire andl2195; // dcsc_walk.cpp(138)
  wire[19:0] sel2196; // dcsc_walk.cpp(277)
  wire[19:0] sel2197; // dcsc_walk.cpp(138)
  wire[19:0] sel2198; // dcsc_walk.cpp(138)
  wire[63:0] sel2199; // dcsc_walk.cpp(141)
  wire eq2200; // dcsc_walk.cpp(138)
  wire andl2201; // dcsc_walk.cpp(138)
  wire sel2202; // dcsc_walk.cpp(192)
  wire sel2203; // dcsc_walk.cpp(240)
  reg sel2204; // dcsc_walk.cpp(138)
  wire[19:0] sel2205; // dcsc_walk.cpp(138)
  wire sel2206; // dcsc_walk.cpp(157)
  wire sel2207; // dcsc_walk.cpp(175)
  wire sel2209; // dcsc_walk.cpp(291)
  wire sel2210; // dcsc_walk.cpp(331)
  wire sel2211; // dcsc_walk.cpp(365)
  wire sel2212; // dcsc_walk.cpp(384)
  reg sel2213; // dcsc_walk.cpp(138)
  wire[22:0] sel2214; // dcsc_walk.cpp(141)
  wire[22:0] sel2215; // dcsc_walk.cpp(160)
  wire andl2216; // dcsc_walk.cpp(138)
  wire[22:0] sel2217; // dcsc_walk.cpp(178)
  wire andl2218; // dcsc_walk.cpp(138)
  wire[22:0] sel2219; // dcsc_walk.cpp(204)
  wire[22:0] sel2220; // dcsc_walk.cpp(192)
  wire[22:0] sel2221; // dcsc_walk.cpp(226)
  wire[22:0] sel2223; // dcsc_walk.cpp(240)
  wire[22:0] sel2224; // dcsc_walk.cpp(260)
  wire[22:0] sel2225; // dcsc_walk.cpp(257)
  wire[22:0] sel2226; // dcsc_walk.cpp(277)
  wire[22:0] sel2227; // dcsc_walk.cpp(294)
  wire andl2228; // dcsc_walk.cpp(138)
  wire[22:0] sel2229; // dcsc_walk.cpp(315)
  wire[22:0] sel2230; // dcsc_walk.cpp(308)
  wire[22:0] sel2231; // dcsc_walk.cpp(334)
  wire andl2232; // dcsc_walk.cpp(138)
  wire[22:0] sel2233; // dcsc_walk.cpp(368)
  wire andl2234; // dcsc_walk.cpp(138)
  wire[22:0] sel2235; // dcsc_walk.cpp(389)
  wire[22:0] sel2236; // dcsc_walk.cpp(387)
  wire[22:0] sel2238; // dcsc_walk.cpp(409)
  wire[22:0] sel2239; // dcsc_walk.cpp(441)
  wire[22:0] sel2240; // dcsc_walk.cpp(439)
  wire[22:0] sel2241; // dcsc_walk.cpp(435)
  wire[22:0] sel2242; // dcsc_walk.cpp(470)
  wire[22:0] sel2243; // dcsc_walk.cpp(468)
  wire[22:0] sel2245; // dcsc_walk.cpp(507)
  reg[22:0] sel2246; // dcsc_walk.cpp(138)
  wire[19:0] sel2247; // dcsc_walk.cpp(141)
  reg[19:0] sel2248; // dcsc_walk.cpp(138)
  reg[2:0] sel2249; // dcsc_walk.cpp(138)
  reg[19:0] sel2250; // dcsc_walk.cpp(138)
  wire sel2251; // dcsc_walk.cpp(441)
  wire sel2252; // dcsc_walk.cpp(439)
  wire sel2253; // dcsc_walk.cpp(435)
  wire eq2254; // dcsc_walk.cpp(138)
  wire andl2255; // dcsc_walk.cpp(138)
  wire[19:0] sel2256; // dcsc_walk.cpp(141)
  wire[31:0] sel2260; // dcsc_walk.cpp(507)
  wire eq2261; // dcsc_walk.cpp(138)
  wire andl2262; // dcsc_walk.cpp(138)
  wire[31:0] sel2264; // dcsc_walk.cpp(507)
  wire[31:0] sel2268; // dcsc_walk.cpp(507)
  wire[31:0] sel2272; // dcsc_walk.cpp(507)
  wire[31:0] sel2276; // dcsc_walk.cpp(160)
  wire[31:0] sel2277; // dcsc_walk.cpp(157)
  wire[31:0] sel2278; // dcsc_walk.cpp(138)
  wire[31:0] sel2280; // dcsc_walk.cpp(178)
  wire[31:0] sel2281; // dcsc_walk.cpp(175)
  wire[31:0] sel2284; // dcsc_walk.cpp(240)
  reg[31:0] sel2285; // dcsc_walk.cpp(138)
  wire[31:0] sel2287; // dcsc_walk.cpp(368)
  wire[31:0] sel2288; // dcsc_walk.cpp(365)
  wire[31:0] sel2289; // dcsc_walk.cpp(138)
  wire[31:0] sel2291; // dcsc_walk.cpp(387)
  wire[31:0] sel2292; // dcsc_walk.cpp(384)
  wire[31:0] sel2293; // dcsc_walk.cpp(409)
  reg[31:0] sel2294; // dcsc_walk.cpp(138)
  wire[31:0] sel2296; // dcsc_walk.cpp(334)
  wire[31:0] sel2297; // dcsc_walk.cpp(331)
  wire[31:0] sel2298; // dcsc_walk.cpp(138)
  wire[31:0] sel2300; // dcsc_walk.cpp(294)
  wire[31:0] sel2301; // dcsc_walk.cpp(291)
  wire[31:0] sel2302; // dcsc_walk.cpp(308)
  reg[31:0] sel2303; // dcsc_walk.cpp(138)
  wire[31:0] sel2305; // dcsc_walk.cpp(435)
  reg[31:0] sel2307; // dcsc_walk.cpp(138)
  reg sel2308; // dcsc_walk.cpp(138)
  wire sel2309; // dcsc_walk.cpp(192)
  wire eq2310; // dcsc_walk.cpp(138)
  wire andl2311; // dcsc_walk.cpp(138)
  wire[511:0] sel2312; // dcsc_walk.cpp(192)
  wire[19:0] sel2320; // dcsc_walk.cpp(192)
  reg[19:0] sel2321; // dcsc_walk.cpp(138)
  wire[511:0] sel2322; // dcsc_walk.cpp(192)
  wire sel2325; // dcsc_walk.cpp(410)
  wire[19:0] sel2329; // dcsc_walk.cpp(192)
  wire[19:0] sel2330; // dcsc_walk.cpp(435)
  reg[19:0] sel2331; // dcsc_walk.cpp(138)
  wire[5:0] sel2332; // dcsc_walk.cpp(138)
  wire[19:0] sel2333; // dcsc_walk.cpp(257)
  wire[19:0] sel2334; // dcsc_walk.cpp(138)
  wire sel2335; // dcsc_walk.cpp(308)
  wire[19:0] sel2338; // dcsc_walk.cpp(240)
  reg[19:0] sel2339; // dcsc_walk.cpp(138)
  wire[19:0] sel2341; // dcsc_walk.cpp(138)
  wire[31:0] sel2343; // dcsc_walk.cpp(138)
  wire[31:0] sel2345; // dcsc_walk.cpp(138)
  reg sel2347; // dcsc_walk.cpp(138)
  wire[19:0] sel2348; // dcsc_walk.cpp(138)

  assign io_lsu_rd_req_data75 = {sel2250, sel2249};
  assign io_lsu_rd_req_data_type76 = io_lsu_rd_req_data75[2:0];
  always @ (posedge clk) begin
    reg102 <= sel2248;
  end
  always @ (posedge clk) begin
    reg109 <= sel2256;
  end
  always @ (posedge clk) begin
    reg114 <= sel2321;
  end
  always @ (posedge clk) begin
    reg119 <= sel2331;
  end
  always @ (posedge clk) begin
    reg124 <= sel2339;
  end
  always @ (posedge clk) begin
    reg129 <= sel2348;
  end
  always @ (posedge clk) begin
    if (reset)
      reg136 <= 20'hfffff;
    else
      reg136 <= sel2334;
  end
  always @ (posedge clk) begin
    if (reset)
      reg143 <= 20'hfffff;
    else
      reg143 <= sel2197;
  end
  always @ (posedge clk) begin
    reg148 <= sel2188;
  end
  always @ (posedge clk) begin
    reg153 <= sel2198;
  end
  always @ (posedge clk) begin
    reg158 <= sel2205;
  end
  always @ (posedge clk) begin
    reg163 <= sel2332;
  end
  always @ (posedge clk) begin
    reg168 <= sel2193;
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
    reg1266 <= sel2312;
  end
  always @ (posedge clk) begin
    reg1271 <= sel2322;
  end
  always @ (posedge clk) begin
    reg1276 <= sel2189;
  end
  always @ (posedge clk) begin
    reg1281 <= sel2182;
  end
  always @ (posedge clk) begin
    reg1286 <= sel2181;
  end
  always @ (posedge clk) begin
    reg1291 <= sel2199;
  end
  assign proxy1308 = {sel2307, sel2303, sel2298, sel2294, sel2289, sel2285, sel2278, sel2272, sel2268, sel2264, sel2260};
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
      reg1386 <= sel2246;
  end
  assign eq1390 = reg1386 == 23'h1;
  assign eq1394 = io_lsu_rd_req_data_type76 == 3'h1;
  assign andl1397 = sel2213 & io_lsu_rd_req_ready;
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
    reg1583 <= sel2309;
  end
  always @ (posedge clk) begin
    reg1588 <= sel2204;
  end
  always @ (posedge clk) begin
    reg1593 <= sel2253;
  end
  always @ (posedge clk) begin
    reg1603 <= sel2325;
  end
  always @ (posedge clk) begin
    reg1608 <= sel2335;
  end
  assign proxy1612 = {sel2347, sel2345, sel2343, sel2341};
  always @ (posedge clk) begin
    reg1613 <= proxy1612;
  end
  always @ (posedge clk) begin
    reg1626 <= sel2308;
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
  assign lt2154 = reg1309[63:32] < reg1286;
  assign sel2156 = lt2154 ? reg1309[63:32] : reg1286;
  assign eq2160 = reg1309[63:32] == 32'h0;
  assign sel2162 = eq2160 ? reg1286 : sel2156;
  assign gt2165 = reg1309[63:32] > reg1286;
  assign sel2167 = gt2165 ? reg1309[63:32] : reg1286;
  assign add2170 = reg1309[127:96] + reg1286;
  assign add2174 = reg1309[31:0] + 32'h1;
  assign sel2181 = (reg1386 == 23'h200000) ? sub2145[31:0] : reg1286;
  assign sel2182 = andl2185 ? bindout1041 : reg1281;
  assign andl2183 = eq2007 & bindout1044;
  assign eq2184 = reg1386 == 23'h10000;
  assign andl2185 = eq2184 & andl2183;
  assign sel2186 = andl2187 ? add1990 : reg148;
  assign andl2187 = ne1985 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg1386)
      23'h001000: sel2188 = shr1939;
      23'h008000: sel2188 = sel2186;
      default: sel2188 = reg148;
    endcase
  end
  assign sel2189 = andl2191 ? bindout1216 : reg1276;
  assign eq2190 = reg1386 == 23'h400;
  assign andl2191 = eq2190 & bindout1219;
  assign sel2192 = bindout1044 ? shr2018[31:0] : shr2030[31:0];
  assign sel2193 = andl2195 ? sel2192 : reg168;
  assign andl2195 = eq2184 & eq2007;
  assign sel2196 = eq1853 ? reg143 : shr1850;
  assign sel2197 = (reg1386 == 23'h100) ? sel2196 : reg143;
  assign sel2198 = (reg1386 == 23'h1000) ? shr1950 : reg153;
  assign sel2199 = andl2201 ? io_ctrl_timer : reg1291;
  assign eq2200 = reg1386 == 23'h1;
  assign andl2201 = eq2200 & io_ctrl_start_valid;
  assign sel2202 = andl1701 ? 1'h1 : 1'h0;
  assign sel2203 = bindout513 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1386)
      23'h000008: sel2204 = sel2202;
      23'h000020: sel2204 = sel2203;
      default: sel2204 = 1'h0;
    endcase
  end
  assign sel2205 = (reg1386 == 23'h2000) ? sub1961 : reg158;
  assign sel2206 = ne1663 ? 1'h1 : 1'h0;
  assign sel2207 = ne1687 ? 1'h1 : 1'h0;
  assign sel2209 = ne1862 ? 1'h1 : 1'h0;
  assign sel2210 = ne1922 ? 1'h1 : 1'h0;
  assign sel2211 = ne1969 ? 1'h1 : 1'h0;
  assign sel2212 = ne1985 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1386)
      23'h000002: sel2213 = sel2206;
      23'h000004: sel2213 = sel2207;
      23'h000010: sel2213 = sel2207;
      23'h000200: sel2213 = sel2209;
      23'h000800: sel2213 = sel2210;
      23'h004000: sel2213 = sel2211;
      23'h008000: sel2213 = sel2212;
      default: sel2213 = 1'h0;
    endcase
  end
  assign sel2214 = io_ctrl_start_valid ? 23'h2 : reg1386;
  assign sel2215 = andl2216 ? 23'h4 : reg1386;
  assign andl2216 = ne1663 & io_lsu_rd_req_ready;
  assign sel2217 = andl2218 ? 23'h8 : reg1386;
  assign andl2218 = ne1687 & io_lsu_rd_req_ready;
  assign sel2219 = ne1736 ? 23'h40 : 23'h10;
  assign sel2220 = andl1701 ? sel2219 : reg1386;
  assign sel2221 = andl2218 ? 23'h20 : reg1386;
  assign sel2223 = bindout513 ? 23'h80 : reg1386;
  assign sel2224 = ne1837 ? 23'h100 : 23'h80000;
  assign sel2225 = eq1809 ? sel2224 : 23'h200;
  assign sel2226 = eq1853 ? 23'h1000 : 23'h800;
  assign sel2227 = andl2228 ? 23'h400 : reg1386;
  assign andl2228 = ne1862 & io_lsu_rd_req_ready;
  assign sel2229 = ne1904 ? 23'h100 : 23'h80000;
  assign sel2230 = bindout1219 ? sel2229 : reg1386;
  assign sel2231 = andl2232 ? 23'h1000 : reg1386;
  assign andl2232 = ne1922 & io_lsu_rd_req_ready;
  assign sel2233 = andl2234 ? 23'h8000 : reg1386;
  assign andl2234 = ne1969 & io_lsu_rd_req_ready;
  assign sel2235 = ne1993 ? 23'h4000 : 23'h10000;
  assign sel2236 = andl2187 ? sel2235 : reg1386;
  assign sel2238 = eq2007 ? 23'h20000 : reg1386;
  assign sel2239 = eq2078 ? 23'h40000 : reg1386;
  assign sel2240 = ne2071 ? sel2239 : 23'h80000;
  assign sel2241 = io_pe_ready ? sel2240 : reg1386;
  assign sel2242 = ne1736 ? 23'h100000 : 23'h2;
  assign sel2243 = ne2097 ? sel2242 : 23'h200000;
  assign sel2245 = io_pe_ready ? 23'h1 : reg1386;
  always @(*) begin
    case (reg1386)
      23'h000001: sel2246 = sel2214;
      23'h000002: sel2246 = sel2215;
      23'h000004: sel2246 = sel2217;
      23'h000008: sel2246 = sel2220;
      23'h000040: sel2246 = 23'h80;
      23'h000010: sel2246 = sel2221;
      23'h000020: sel2246 = sel2223;
      23'h000080: sel2246 = sel2225;
      23'h000100: sel2246 = sel2226;
      23'h000200: sel2246 = sel2227;
      23'h000400: sel2246 = sel2230;
      23'h000800: sel2246 = sel2231;
      23'h001000: sel2246 = 23'h2000;
      23'h002000: sel2246 = 23'h4000;
      23'h004000: sel2246 = sel2233;
      23'h008000: sel2246 = sel2236;
      23'h010000: sel2246 = sel2238;
      23'h020000: sel2246 = sel2241;
      23'h040000: sel2246 = 23'h20000;
      23'h080000: sel2246 = sel2243;
      23'h100000: sel2246 = sel2219;
      23'h200000: sel2246 = 23'h400000;
      23'h400000: sel2246 = sel2245;
      default: sel2246 = reg1386;
    endcase
  end
  assign sel2247 = io_ctrl_start_valid ? io_ctrl_start_data[19:0] : reg102;
  always @(*) begin
    case (reg1386)
      23'h000001: sel2248 = sel2247;
      23'h080000: sel2248 = add1746;
      default: sel2248 = reg102;
    endcase
  end
  always @(*) begin
    case (reg1386)
      23'h000002: sel2249 = 3'h1;
      23'h000004: sel2249 = 3'h2;
      23'h000010: sel2249 = 3'h2;
      23'h000200: sel2249 = 3'h6;
      23'h000800: sel2249 = 3'h5;
      23'h004000: sel2249 = 3'h3;
      23'h008000: sel2249 = 3'h4;
      default: sel2249 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg1386)
      23'h000002: sel2250 = shr1658;
      23'h000004: sel2250 = shr1658;
      23'h000010: sel2250 = shr1768;
      23'h000200: sel2250 = reg136;
      23'h000800: sel2250 = shr1850;
      23'h004000: sel2250 = reg148;
      23'h008000: sel2250 = reg148;
      default: sel2250 = 20'h0;
    endcase
  end
  assign sel2251 = eq2078 ? 1'h1 : 1'h0;
  assign sel2252 = ne2071 ? sel2251 : 1'h1;
  assign sel2253 = andl2255 ? sel2252 : 1'h0;
  assign eq2254 = reg1386 == 23'h20000;
  assign andl2255 = eq2254 & io_pe_ready;
  assign sel2256 = andl2201 ? sub1646 : reg109;
  assign sel2260 = andl2262 ? add2174 : reg1309[31:0];
  assign eq2261 = reg1386 == 23'h400000;
  assign andl2262 = eq2261 & io_pe_ready;
  assign sel2264 = andl2262 ? sel2162 : reg1309[63:32];
  assign sel2268 = andl2262 ? sel2167 : reg1309[95:64];
  assign sel2272 = andl2262 ? add2170 : reg1309[127:96];
  assign sel2276 = io_lsu_rd_req_ready ? reg1309[159:128] : add1671;
  assign sel2277 = ne1663 ? sel2276 : add1671;
  assign sel2278 = (reg1386 == 23'h2) ? sel2277 : reg1309[159:128];
  assign sel2280 = io_lsu_rd_req_ready ? reg1309[191:160] : add1694;
  assign sel2281 = ne1687 ? sel2280 : add1694;
  assign sel2284 = bindout513 ? reg1309[191:160] : add1694;
  always @(*) begin
    case (reg1386)
      23'h000004: sel2285 = sel2281;
      23'h000010: sel2285 = sel2281;
      23'h000020: sel2285 = sel2284;
      default: sel2285 = reg1309[191:160];
    endcase
  end
  assign sel2287 = io_lsu_rd_req_ready ? reg1309[223:192] : add1976;
  assign sel2288 = ne1969 ? sel2287 : add1976;
  assign sel2289 = (reg1386 == 23'h4000) ? sel2288 : reg1309[223:192];
  assign sel2291 = io_lsu_rd_req_ready ? reg1309[255:224] : add2000;
  assign sel2292 = ne1985 ? sel2291 : add2000;
  assign sel2293 = eq2007 ? reg1309[255:224] : add2000;
  always @(*) begin
    case (reg1386)
      23'h008000: sel2294 = sel2292;
      23'h010000: sel2294 = sel2293;
      default: sel2294 = reg1309[255:224];
    endcase
  end
  assign sel2296 = io_lsu_rd_req_ready ? reg1309[287:256] : add1928;
  assign sel2297 = ne1922 ? sel2296 : add1928;
  assign sel2298 = (reg1386 == 23'h800) ? sel2297 : reg1309[287:256];
  assign sel2300 = io_lsu_rd_req_ready ? reg1309[319:288] : add1869;
  assign sel2301 = ne1862 ? sel2300 : add1869;
  assign sel2302 = bindout1219 ? reg1309[319:288] : add1869;
  always @(*) begin
    case (reg1386)
      23'h000200: sel2303 = sel2301;
      23'h000400: sel2303 = sel2302;
      default: sel2303 = reg1309[319:288];
    endcase
  end
  assign sel2305 = io_pe_ready ? reg1309[351:320] : add2089;
  always @(*) begin
    case (reg1386)
      23'h020000: sel2307 = sel2305;
      23'h400000: sel2307 = sel2305;
      default: sel2307 = reg1309[351:320];
    endcase
  end
  always @(*) begin
    case (reg1386)
      23'h020000: sel2308 = 1'h1;
      23'h400000: sel2308 = 1'h1;
      default: sel2308 = 1'h0;
    endcase
  end
  assign sel2309 = andl2311 ? 1'h1 : 1'h0;
  assign eq2310 = reg1386 == 23'h8;
  assign andl2311 = eq2310 & andl1701;
  assign sel2312 = andl2311 ? bindout335 : reg1266;
  assign sel2320 = andl1701 ? shr1713[19:0] : reg114;
  always @(*) begin
    case (reg1386)
      23'h000008: sel2321 = sel2320;
      23'h100000: sel2321 = shr2119[19:0];
      default: sel2321 = reg114;
    endcase
  end
  assign sel2322 = andl2311 ? bindout510 : reg1271;
  assign sel2325 = andl2185 ? 1'h1 : 1'h0;
  assign sel2329 = andl1701 ? shr1726[19:0] : reg119;
  assign sel2330 = io_pe_ready ? add2068 : reg119;
  always @(*) begin
    case (reg1386)
      23'h000008: sel2331 = sel2329;
      23'h020000: sel2331 = sel2330;
      23'h100000: sel2331 = shr2131[19:0];
      default: sel2331 = reg119;
    endcase
  end
  assign sel2332 = (reg1386 == 23'h2000) ? sub1955[5:0] : reg163;
  assign sel2333 = eq1809 ? reg136 : shr1806;
  assign sel2334 = (reg1386 == 23'h80) ? sel2333 : reg136;
  assign sel2335 = andl2191 ? 1'h1 : 1'h0;
  assign sel2338 = bindout513 ? bindout510[19:0] : reg124;
  always @(*) begin
    case (reg1386)
      23'h000040: sel2339 = shr1753[19:0];
      23'h000020: sel2339 = sel2338;
      default: sel2339 = reg124;
    endcase
  end
  assign sel2341 = (reg1386 == 23'h20000) ? shr2048[19:0] : reg1613[19:0];
  assign sel2343 = (reg1386 == 23'h20000) ? shr2060[31:0] : reg1613[51:20];
  assign sel2345 = (reg1386 == 23'h20000) ? reg168 : reg1613[83:52];
  always @(*) begin
    case (reg1386)
      23'h020000: sel2347 = 1'h0;
      23'h400000: sel2347 = 1'h1;
      default: sel2347 = reg1613[84];
    endcase
  end
  assign sel2348 = (reg1386 == 23'h80) ? sub1795 : reg129;

  assign io_ctrl_start_ready = eq1390;
  assign io_ctrl_stats = reg1309;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data75;
  assign io_lsu_rd_req_valid = sel2213;
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
  wire[2:0] proxy4857; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[2:0] reg4859; // /home/blaise/dev/cash/include/htl/pipe.h(24)
  reg[20:0] reg4867; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4876; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  reg[20:0] reg4885; // /home/blaise/dev/cash/include/htl/pipe.h(25)
  wire inv4893; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orl4895; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4899; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orl4901; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire inv4905; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire orl4907; // /home/blaise/dev/cash/include/htl/pipe.h(34)
  wire[20:0] sel4910; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andl4911; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4913; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4915; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andl4916; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4918; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire[20:0] sel4920; // /home/blaise/dev/cash/include/htl/pipe.h(40)
  wire andl4921; // /home/blaise/dev/cash/include/htl/pipe.h(38)
  wire sel4923; // /home/blaise/dev/cash/include/htl/pipe.h(38)

  assign proxy4857 = {sel4923, sel4918, sel4913};
  always @ (posedge clk) begin
    if (reset)
      reg4859 <= 3'h0;
    else
      reg4859 <= proxy4857;
  end
  always @ (posedge clk) begin
    reg4867 <= sel4910;
  end
  always @ (posedge clk) begin
    reg4876 <= sel4915;
  end
  always @ (posedge clk) begin
    reg4885 <= sel4920;
  end
  assign inv4893 = ~reg4859[2];
  assign orl4895 = inv4893 | io_deq_ready;
  assign inv4899 = ~reg4859[1];
  assign orl4901 = inv4899 | orl4895;
  assign inv4905 = ~reg4859[0];
  assign orl4907 = inv4905 | orl4901;
  assign sel4910 = andl4911 ? io_enq_data : reg4867;
  assign andl4911 = orl4907 & io_enq_valid;
  assign sel4913 = orl4907 ? io_enq_valid : reg4859[0];
  assign sel4915 = andl4916 ? reg4867 : reg4876;
  assign andl4916 = orl4901 & reg4859[0];
  assign sel4918 = orl4901 ? reg4859[0] : reg4859[1];
  assign sel4920 = andl4921 ? reg4876 : reg4885;
  assign andl4921 = orl4895 & reg4859[1];
  assign sel4923 = orl4895 ? reg4859[1] : reg4859[2];

  assign io_enq_ready = orl4907;
  assign io_deq_data = reg4885;
  assign io_deq_valid = reg4859[2];

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
  wire[511:0] lit5302 = 512'h0;
  wire[533:0] io_lsu_wr_req_data4788; // pe.cpp(19)
  wire[20:0] proxy4925; // pe.cpp(19)
  wire bindin4931; // pe.cpp(19)
  wire bindin4933; // pe.cpp(19)
  wire[20:0] bindin4934; // pe.cpp(19)
  wire bindin4937; // pe.cpp(19)
  wire bindout4940; // pe.cpp(19)
  wire[20:0] bindout4945; // pe.cpp(19)
  wire bindout4948; // pe.cpp(19)
  wire bindin4951; // pe.cpp(19)
  wire[20:0] proxy5072; // pe.cpp(19)
  wire proxy_is_end5074; // pe.cpp(19)
  wire bindin5076; // pe.cpp(19)
  wire bindin5077; // pe.cpp(19)
  wire[20:0] bindin5078; // pe.cpp(19)
  wire bindin5081; // pe.cpp(19)
  wire[20:0] bindout5089; // pe.cpp(19)
  wire bindout5092; // pe.cpp(19)
  wire bindin5095; // pe.cpp(19)
  reg[31:0] mem5096 [0:31]; // pe.cpp(19)
  reg[31:0] reg5103; // pe.cpp(19)
  reg[31:0] reg5108; // pe.cpp(19)
  reg[31:0] reg5114; // pe.cpp(19)
  reg[31:0] reg5120; // pe.cpp(19)
  reg[19:0] reg5135; // pe.cpp(19)
  wire[63:0] proxy5143; // pe.cpp(19)
  reg[63:0] reg5144; // pe.cpp(19)
  reg[1:0] reg5156; // pe.cpp(35)
  wire[31:0] shl5160; // pe.cpp(38)
  wire[31:0] shl5163; // pe.cpp(39)
  wire eq5168; // pe.cpp(43)
  wire eq5172; // pe.cpp(7)
  wire orl5174; // pe.cpp(7)
  wire eq5178; // pe.cpp(47)
  wire[31:0] andl5181; // pe.cpp(46)
  wire eq5184; // pe.cpp(46)
  wire andl5187; // pe.cpp(46)
  wire orl5189; // pe.cpp(46)
  wire eq5192; // pe.cpp(54)
  wire eq5196; // pe.cpp(7)
  wire andl5198; // pe.cpp(7)
  wire[31:0] mrport5200; // pe.cpp(57)
  wire[31:0] andl5203; // pe.cpp(57)
  wire ne5206; // pe.cpp(57)
  wire[31:0] sel5208; // pe.cpp(57)
  wire andl5211; // pe.cpp(62)
  wire[31:0] udfs5213; // pe.cpp(65)
  wire andl5216; // pe.cpp(70)
  wire[19:0] andl5221; // pe.cpp(72)
  wire[31:0] udfs5225; // pe.cpp(74)
  wire andl5231; // pe.cpp(7)
  wire eq5235; // pe.cpp(81)
  wire andl5237; // pe.cpp(81)
  wire eq5241; // pe.cpp(79)
  wire andl5244; // pe.cpp(79)
  wire[31:0] add5248; // pe.cpp(80)
  wire[31:0] sub5252; // pe.cpp(82)
  reg[31:0] sel5254; // pe.cpp(79)
  wire eq5257; // pe.cpp(87)
  wire andl5260; // pe.cpp(87)
  wire eq5264; // pe.cpp(88)
  wire andl5267; // pe.cpp(88)
  wire ne5270; // pe.cpp(90)
  wire andl5273; // pe.cpp(90)
  wire[31:0] inv5276; // pe.cpp(91)
  wire[31:0] andl5279; // pe.cpp(91)
  wire[31:0] orl5281; // pe.cpp(91)
  wire[31:0] orl5290; // pe.cpp(96)
  wire[31:0] sel5292; // pe.cpp(90)
  reg[31:0] sel5293; // pe.cpp(89)
  wire[19:0] andl5297; // pe.cpp(101)
  wire[19:0] sel5299; // pe.cpp(100)
  wire andl5314; // pe.cpp(119)
  wire[19:0] andl5318; // pe.cpp(120)
  wire[31:0] orl5323; // pe.cpp(125)
  wire andl5326; // pe.cpp(129)
  wire[511:0] proxy5332; // pe.cpp(138)
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
  wire[31:0] mrport5393; // pe.cpp(140)
  wire[19:0] shl5400; // pe.cpp(143)
  wire[19:0] shr5404; // pe.cpp(143)
  wire[31:0] add5411; // pe.cpp(152)
  wire[511:0] proxy5414; // pe.cpp(157)
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
  wire[31:0] mrport5476; // pe.cpp(159)
  wire[19:0] add5489; // pe.cpp(162)
  wire[19:0] shr5502; // pe.cpp(177)
  wire[19:0] shl5505; // pe.cpp(177)
  wire[19:0] shr5508; // pe.cpp(177)
  wire[511:0] pad5510; // pe.cpp(178)
  wire[19:0] andl5517; // pe.cpp(178)
  wire[19:0] shl5520; // pe.cpp(178)
  wire[511:0] shl5522; // pe.cpp(178)
  wire[31:0] add5528; // pe.cpp(186)
  wire[31:0] sel5531; // pe.cpp(147)
  reg[31:0] sel5533; // pe.cpp(116)
  wire[31:0] sel5535; // pe.cpp(181)
  wire[31:0] sel5536; // pe.cpp(116)
  reg sel5537; // pe.cpp(116)
  reg[1:0] sel5538; // pe.cpp(116)
  reg[19:0] sel5539; // pe.cpp(116)
  reg[511:0] sel5540; // pe.cpp(116)
  wire[31:0] sel5541; // pe.cpp(116)
  wire sel5542; // pe.cpp(116)
  wire[31:0] sel5543; // pe.cpp(124)
  wire[31:0] sel5544; // pe.cpp(129)
  wire[31:0] sel5545; // pe.cpp(116)
  wire[31:0] sel5546; // pe.cpp(129)
  wire eq5547; // pe.cpp(116)
  wire andl5548; // pe.cpp(116)
  wire[4:0] sel5549; // pe.cpp(116)
  wire[1:0] sel5550; // pe.cpp(129)
  wire[1:0] sel5551; // pe.cpp(147)
  wire[1:0] sel5552; // pe.cpp(166)
  wire[1:0] sel5553; // pe.cpp(181)
  reg[1:0] sel5554; // pe.cpp(116)

  assign io_lsu_wr_req_data4788 = {sel5540, sel5539, sel5538};
  assign proxy4925 = {io_req_data[84], io_req_data[19:0]};
  assign bindin4931 = clk;
  assign bindin4933 = reset;
  ch_pipe __module17__(.clk(bindin4931), .reset(bindin4933), .io_enq_data(bindin4934), .io_enq_valid(bindin4937), .io_deq_ready(bindin4951), .io_enq_ready(bindout4940), .io_deq_data(bindout4945), .io_deq_valid(bindout4948));
  assign bindin4934 = proxy4925;
  assign bindin4937 = andl5211;
  assign bindin4951 = orl5189;
  assign proxy5072 = {bindout4945[20], bindout4945[19:0]};
  assign proxy_is_end5074 = proxy5072[20];
  assign bindin5076 = clk;
  assign bindin5077 = reset;
  ch_pipe __module18__(.clk(bindin5076), .reset(bindin5077), .io_enq_data(bindin5078), .io_enq_valid(bindin5081), .io_deq_ready(bindin5095), .io_deq_data(bindout5089), .io_deq_valid(bindout5092));
  assign bindin5078 = proxy5072;
  assign bindin5081 = andl5216;
  assign bindin5095 = orl5174;
  always @ (posedge clk) begin
    if (sel5542) begin
      mem5096[sel5549] <= sel5541;
    end
  end
  assign mrport5200 = mem5096[andl5221[4:0]];
  assign mrport5333 = mem5096[5'h0];
  assign mrport5337 = mem5096[5'h1];
  assign mrport5341 = mem5096[5'h2];
  assign mrport5345 = mem5096[5'h3];
  assign mrport5349 = mem5096[5'h4];
  assign mrport5353 = mem5096[5'h5];
  assign mrport5357 = mem5096[5'h6];
  assign mrport5361 = mem5096[5'h7];
  assign mrport5365 = mem5096[5'h8];
  assign mrport5369 = mem5096[5'h9];
  assign mrport5373 = mem5096[5'ha];
  assign mrport5377 = mem5096[5'hb];
  assign mrport5381 = mem5096[5'hc];
  assign mrport5385 = mem5096[5'hd];
  assign mrport5389 = mem5096[5'he];
  assign mrport5393 = mem5096[5'hf];
  assign mrport5416 = mem5096[5'h10];
  assign mrport5420 = mem5096[5'h11];
  assign mrport5424 = mem5096[5'h12];
  assign mrport5428 = mem5096[5'h13];
  assign mrport5432 = mem5096[5'h14];
  assign mrport5436 = mem5096[5'h15];
  assign mrport5440 = mem5096[5'h16];
  assign mrport5444 = mem5096[5'h17];
  assign mrport5448 = mem5096[5'h18];
  assign mrport5452 = mem5096[5'h19];
  assign mrport5456 = mem5096[5'h1a];
  assign mrport5460 = mem5096[5'h1b];
  assign mrport5464 = mem5096[5'h1c];
  assign mrport5468 = mem5096[5'h1d];
  assign mrport5472 = mem5096[5'h1e];
  assign mrport5476 = mem5096[5'h1f];
  always @ (posedge clk) begin
    if (reset)
      reg5103 <= 32'h0;
    else
      reg5103 <= sel5545;
  end
  always @ (posedge clk) begin
    reg5108 <= sel5546;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5114 <= 32'h0;
    else
      reg5114 <= sel5293;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5120 <= 32'h0;
    else
      reg5120 <= sel5254;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5135 <= 20'h0;
    else
      reg5135 <= sel5299;
  end
  assign proxy5143 = {sel5536, sel5533};
  always @ (posedge clk) begin
    if (reset)
      reg5144 <= 64'h0;
    else
      reg5144 <= proxy5143;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5156 <= 2'h0;
    else
      reg5156 <= sel5554;
  end
  assign shl5160 = 32'h1 << andl5221[4:0];
  assign shl5163 = 32'h1 << sel5549;
  assign eq5168 = bindout5092 == 1'h0;
  assign eq5172 = 2'h0 == reg5156;
  assign orl5174 = eq5172 | eq5168;
  assign eq5178 = bindout4948 == 1'h0;
  assign andl5181 = reg5114 & shl5160;
  assign eq5184 = 32'h0 == andl5181;
  assign andl5187 = orl5174 & eq5184;
  assign orl5189 = andl5187 | eq5178;
  assign eq5192 = 32'h0 == reg5120;
  assign eq5196 = reg5156 == 2'h0;
  assign andl5198 = eq5196 & eq5192;
  assign andl5203 = reg5103 & shl5160;
  assign ne5206 = 32'h0 != andl5203;
  assign sel5208 = ne5206 ? mrport5200 : 32'h0;
  assign andl5211 = io_req_valid & bindout4940;
  fp_mult __fp_mult5213(.clock(clk), .clk_en(orl5189), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs5213));
  assign andl5216 = bindout4948 & orl5189;
  assign andl5221 = bindout4945[19:0] & 20'h1f;
  fp_add __fp_add5225(.clock(clk), .clk_en(orl5174), .dataa(udfs5213), .datab(sel5208), .result(udfs5225));
  assign andl5231 = eq5172 & bindout5092;
  assign eq5235 = andl5211 == 1'h0;
  assign andl5237 = eq5235 & andl5231;
  assign eq5241 = andl5231 == 1'h0;
  assign andl5244 = andl5211 & eq5241;
  assign add5248 = reg5120 + 32'h1;
  assign sub5252 = reg5120 - 32'h1;
  always @(*) begin
    if (andl5244)
      sel5254 = add5248;
    else if (andl5237)
      sel5254 = sub5252;
    else
      sel5254 = reg5120;
  end
  assign eq5257 = proxy_is_end5074 == 1'h0;
  assign andl5260 = andl5216 & eq5257;
  assign eq5264 = bindout5089[20] == 1'h0;
  assign andl5267 = andl5231 & eq5264;
  assign ne5270 = shl5160 != shl5163;
  assign andl5273 = andl5260 & ne5270;
  assign inv5276 = ~shl5163;
  assign andl5279 = reg5114 & inv5276;
  assign orl5281 = andl5279 | shl5160;
  assign orl5290 = reg5114 | shl5160;
  assign sel5292 = andl5273 ? orl5281 : andl5279;
  always @(*) begin
    if (andl5267)
      sel5293 = sel5292;
    else if (andl5260)
      sel5293 = orl5290;
    else
      sel5293 = reg5114;
  end
  assign andl5297 = bindout5089[19:0] & 20'hfffe0;
  assign sel5299 = andl5267 ? andl5297 : reg5135;
  assign andl5314 = bindout5092 & eq5264;
  assign andl5318 = bindout5089[19:0] & 20'h1f;
  assign orl5323 = reg5103 | shl5163;
  assign andl5326 = bindout5092 & bindout5089[20];
  assign proxy5332 = {mrport5393, mrport5389, mrport5385, mrport5381, mrport5377, mrport5373, mrport5369, mrport5365, mrport5361, mrport5357, mrport5353, mrport5349, mrport5345, mrport5341, mrport5337, mrport5333};
  assign shl5400 = reg5135 << 32'h2;
  assign shr5404 = shl5400 >> 32'h6;
  assign add5411 = reg5144[31:0] + 32'h1;
  assign proxy5414 = {mrport5476, mrport5472, mrport5468, mrport5464, mrport5460, mrport5456, mrport5452, mrport5448, mrport5444, mrport5440, mrport5436, mrport5432, mrport5428, mrport5424, mrport5420, mrport5416};
  assign add5489 = shr5404 + 20'h1;
  assign shr5502 = reg5135 >> 32'h5;
  assign shl5505 = shr5502 << 32'h2;
  assign shr5508 = shl5505 >> 32'h6;
  assign pad5510 = {{480{1'b0}}, reg5108};
  assign andl5517 = shr5502 & 20'hf;
  assign shl5520 = andl5517 << 32'h5;
  assign shl5522 = pad5510 << shl5520;
  assign add5528 = reg5144[63:32] + 32'h1;
  assign sel5531 = io_lsu_wr_req_ready ? reg5144[31:0] : add5411;
  always @(*) begin
    case (reg5156)
      2'h1: sel5533 = sel5531;
      2'h2: sel5533 = sel5531;
      default: sel5533 = reg5144[31:0];
    endcase
  end
  assign sel5535 = io_lsu_wr_req_ready ? reg5144[63:32] : add5528;
  assign sel5536 = (reg5156 == 2'h3) ? sel5535 : reg5144[63:32];
  always @(*) begin
    case (reg5156)
      2'h1: sel5537 = 1'h1;
      2'h2: sel5537 = 1'h1;
      2'h3: sel5537 = 1'h1;
      default: sel5537 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg5156)
      2'h1: sel5538 = 2'h0;
      2'h2: sel5538 = 2'h0;
      2'h3: sel5538 = 2'h1;
      default: sel5538 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg5156)
      2'h1: sel5539 = shr5404;
      2'h2: sel5539 = add5489;
      2'h3: sel5539 = shr5508;
      default: sel5539 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg5156)
      2'h1: sel5540 = proxy5332;
      2'h2: sel5540 = proxy5414;
      2'h3: sel5540 = shl5522;
      default: sel5540 = lit5302;
    endcase
  end
  assign sel5541 = (reg5156 == 2'h0) ? udfs5225 : 32'h0;
  assign sel5542 = (reg5156 == 2'h0) ? andl5314 : 1'h0;
  assign sel5543 = sel5542 ? orl5323 : reg5103;
  assign sel5544 = andl5326 ? 32'h0 : sel5543;
  assign sel5545 = (reg5156 == 2'h0) ? sel5544 : reg5103;
  assign sel5546 = andl5548 ? reg5103 : reg5108;
  assign eq5547 = reg5156 == 2'h0;
  assign andl5548 = eq5547 & andl5326;
  assign sel5549 = (reg5156 == 2'h0) ? andl5318[4:0] : 5'h0;
  assign sel5550 = andl5326 ? 2'h1 : reg5156;
  assign sel5551 = io_lsu_wr_req_ready ? 2'h2 : reg5156;
  assign sel5552 = io_lsu_wr_req_ready ? 2'h3 : reg5156;
  assign sel5553 = io_lsu_wr_req_ready ? 2'h0 : reg5156;
  always @(*) begin
    case (reg5156)
      2'h0: sel5554 = sel5550;
      2'h1: sel5554 = sel5551;
      2'h2: sel5554 = sel5552;
      2'h3: sel5554 = sel5553;
      default: sel5554 = reg5156;
    endcase
  end

  assign io_req_ready = bindout4940;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data4788;
  assign io_lsu_wr_req_valid = sel5537;
  assign io_stats = reg5144;
  assign io_is_idle = andl5198;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel6584; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6584 = io_in[47:24];
      3'h1: sel6584 = io_in[23:0];
      default: sel6584 = io_in[71:48];
    endcase
  end

  assign io_out = sel6584;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy6631; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  reg[8:0] reg6633; // /home/blaise/dev/cash/include/htl/arbiter.h(20)
  wire[2:0] proxy6639; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6641; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6643; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire[2:0] proxy6645; // /home/blaise/dev/cash/include/htl/arbiter.h(21)
  wire andl6651; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire andl6656; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6659; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6661; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6664; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire proxy6667; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6668; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire proxy6670; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6672; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6674; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire proxy6680; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6682; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6684; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6688; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6691; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6698; // /home/blaise/dev/cash/include/htl/arbiter.h(28)
  wire orr6701; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6703; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6706; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6710; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire orl6714; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire andl6716; // /home/blaise/dev/cash/include/htl/arbiter.h(32)
  wire inv6720; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6723; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire inv6727; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire andl6730; // /home/blaise/dev/cash/include/htl/arbiter.h(24)
  wire orr6735; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire inv6737; // /home/blaise/dev/cash/include/htl/arbiter.h(30)
  wire andl6740; // /home/blaise/dev/cash/include/htl/arbiter.h(30)

  assign proxy6631 = {reg6633[8:6], andl6716, reg6633[4:3], andl6684, andl6674, reg6633[0]};
  always @ (posedge clk) begin
    if (reset)
      reg6633 <= 9'h0;
    else
      reg6633 <= proxy6631;
  end
  assign proxy6639 = {andl6723, andl6691, 1'h0};
  assign proxy6641 = {andl6730, 1'h0, andl6651};
  assign proxy6643 = {1'h0, andl6698, andl6656};
  assign proxy6645 = {andl6740, andl6706, andl6664};
  assign andl6651 = io_in[0] & reg6633[1];
  assign andl6656 = io_in[0] & reg6633[2];
  assign orr6659 = |proxy6639;
  assign inv6661 = ~orr6659;
  assign andl6664 = io_in[0] & inv6661;
  assign proxy6667 = proxy6645[0];
  assign inv6668 = ~proxy6667;
  assign proxy6670 = proxy6645[1];
  assign orl6672 = reg6633[1] | proxy6670;
  assign andl6674 = orl6672 & inv6668;
  assign proxy6680 = proxy6645[2];
  assign orl6682 = reg6633[2] | proxy6680;
  assign andl6684 = orl6682 & inv6668;
  assign inv6688 = ~reg6633[1];
  assign andl6691 = io_in[1] & inv6688;
  assign andl6698 = io_in[1] & reg6633[5];
  assign orr6701 = |proxy6641;
  assign inv6703 = ~orr6701;
  assign andl6706 = io_in[1] & inv6703;
  assign inv6710 = ~proxy6670;
  assign orl6714 = reg6633[5] | proxy6680;
  assign andl6716 = orl6714 & inv6710;
  assign inv6720 = ~reg6633[2];
  assign andl6723 = io_in[2] & inv6720;
  assign inv6727 = ~reg6633[5];
  assign andl6730 = io_in[2] & inv6727;
  assign orr6735 = |proxy6643;
  assign inv6737 = ~orr6735;
  assign andl6740 = io_in[2] & inv6737;

  assign io_grant = proxy6645;

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
  wire[2:0] bindin6593; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] proxy6595; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[71:0] bindin6611; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[23:0] bindout6619; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy6744; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6751; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin6753; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindin6754; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindout6757; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq6789; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6792; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq6797; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6800; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq6805; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl6808; // /home/blaise/dev/cash/include/htl/arbiter.h(64)

  ch_hxbar __module24__(.io_sel(bindin6593), .io_in(bindin6611), .io_out(bindout6619));
  assign bindin6593 = bindout6757;
  assign proxy6595 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin6611 = proxy6595;
  assign proxy6744 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin6751 = clk;
  assign bindin6753 = reset;
  ch_rrArbiter __module25__(.clk(bindin6751), .reset(bindin6753), .io_in(bindin6754), .io_grant(bindout6757));
  assign bindin6754 = proxy6744;
  assign eq6789 = bindout6757 == 3'h1;
  assign andl6792 = io_out_ready & eq6789;
  assign eq6797 = bindout6757 == 3'h2;
  assign andl6800 = io_out_ready & eq6797;
  assign eq6805 = bindout6757 == 3'h4;
  assign andl6808 = io_out_ready & eq6805;

  assign io_in_0_ready = andl6792;
  assign io_in_1_ready = andl6800;
  assign io_in_2_ready = andl6808;
  assign io_out_data = bindout6619[22:0];
  assign io_out_valid = bindout6619[23];
  assign io_out_grant = bindout6757;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  reg[534:0] sel6933; // /home/blaise/dev/cash/include/htl/mux.h(29)

  always @(*) begin
    case (io_sel)
      3'h2: sel6933 = io_in[1069:535];
      3'h1: sel6933 = io_in[534:0];
      default: sel6933 = io_in[1604:1070];
    endcase
  end

  assign io_out = sel6933;

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
  wire[2:0] bindin6943; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] proxy6945; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[1604:0] bindin6964; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[534:0] bindout6973; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] proxy7098; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin7105; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire bindin7107; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindin7108; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire[2:0] bindout7111; // /home/blaise/dev/cash/include/htl/arbiter.h(40)
  wire eq7143; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7146; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq7151; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7154; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire eq7159; // /home/blaise/dev/cash/include/htl/arbiter.h(64)
  wire andl7162; // /home/blaise/dev/cash/include/htl/arbiter.h(64)

  ch_hxbar_0 __module27__(.io_sel(bindin6943), .io_in(bindin6964), .io_out(bindout6973));
  assign bindin6943 = bindout7111;
  assign proxy6945 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign bindin6964 = proxy6945;
  assign proxy7098 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign bindin7105 = clk;
  assign bindin7107 = reset;
  ch_rrArbiter __module28__(.clk(bindin7105), .reset(bindin7107), .io_in(bindin7108), .io_grant(bindout7111));
  assign bindin7108 = proxy7098;
  assign eq7143 = bindout7111 == 3'h1;
  assign andl7146 = io_out_ready & eq7143;
  assign eq7151 = bindout7111 == 3'h2;
  assign andl7154 = io_out_ready & eq7151;
  assign eq7159 = bindout7111 == 3'h4;
  assign andl7162 = io_out_ready & eq7159;

  assign io_in_0_ready = andl7146;
  assign io_in_1_ready = andl7154;
  assign io_in_2_ready = andl7162;
  assign io_out_data = bindout6973[533:0];
  assign io_out_valid = bindout6973[534];
  assign io_out_grant = bindout7111;

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
  wire[511:0] lit7403 = 512'h0;
  reg[21:0] mem7218 [0:1]; // wrcache.h(59)
  reg[511:0] mem7221 [0:1]; // wrcache.h(59)
  reg[1:0] reg7228; // wrcache.h(59)
  reg reg7234; // wrcache.h(59)
  reg[19:0] reg7239; // wrcache.h(59)
  reg reg7258; // wrcache.h(59)
  wire[533:0] io_evict_data7269; // wrcache.h(59)
  reg[2:0] reg7286; // wrcache.h(67)
  reg[533:0] reg7291; // wrcache.h(68)
  wire eq7306; // wrcache.h(15)
  wire[533:0] sel7308; // wrcache.h(79)
  wire[1:0] shl7317; // wrcache.h(81)
  wire[1:0] andl7320; // wrcache.h(81)
  wire ne7323; // wrcache.h(81)
  wire[21:0] mrport7326; // wrcache.h(82)
  wire eq7330; // wrcache.h(82)
  wire andl7333; // wrcache.h(82)
  wire sel7335; // wrcache.h(82)
  wire[1:0] andl7342; // wrcache.h(83)
  wire ne7344; // wrcache.h(83)
  wire andl7347; // wrcache.h(83)
  wire sel7349; // wrcache.h(83)
  wire eq7354; // wrcache.h(84)
  wire sel7356; // wrcache.h(84)
  reg reg7360; // wrcache.h(92)
  reg reg7364; // wrcache.h(93)
  reg reg7368; // wrcache.h(94)
  reg reg7373; // wrcache.h(95)
  wire add7378; // wrcache.h(101)
  wire eq7382; // wrcache.h(102)
  wire[2:0] sel7386; // wrcache.h(102)
  wire andl7387; // wrcache.h(100)
  wire sel7388; // wrcache.h(100)
  wire[1:0] sel7389; // wrcache.h(102)
  reg reg7398; // wrcache.h(112)
  wire[21:0] mrport7413; // wrcache.h(134)
  wire[1:0] andl7417; // wrcache.h(134)
  wire ne7420; // wrcache.h(134)
  wire eq7423; // wrcache.h(134)
  wire ne7427; // wrcache.h(134)
  wire andl7429; // wrcache.h(134)
  wire andl7431; // wrcache.h(134)
  wire[511:0] mrport7435; // wrcache.h(139)
  wire[511:0] orl7437; // wrcache.h(139)
  wire[1:0] orl7442; // wrcache.h(140)
  wire[21:0] tag_t7448; // wrcache.h(140)
  wire[21:0] mrport7456; // wrcache.h(159)
  wire eq7460; // wrcache.h(159)
  wire[1:0] shl7463; // wrcache.h(159)
  wire[1:0] andl7466; // wrcache.h(159)
  wire ne7469; // wrcache.h(159)
  wire andl7471; // wrcache.h(159)
  wire[511:0] orl7474; // wrcache.h(163)
  wire[1:0] orl7479; // wrcache.h(164)
  wire[21:0] tag_t7485; // wrcache.h(164)
  wire[21:0] tag_t7489; // wrcache.h(169)
  wire[1:0] shl7495; // wrcache.h(178)
  wire[1:0] orl7498; // wrcache.h(178)
  wire ne7501; // wrcache.h(181)
  wire eq7509; // wrcache.h(193)
  wire[21:0] tag_t7515; // wrcache.h(196)
  wire[1:0] inv7521; // wrcache.h(197)
  wire[1:0] andl7524; // wrcache.h(197)
  wire[1:0] andl7532; // wrcache.h(202)
  wire ne7534; // wrcache.h(202)
  wire[1:0] inv7538; // wrcache.h(205)
  wire[1:0] andl7543; // wrcache.h(205)
  wire[21:0] tag_t7549; // wrcache.h(205)
  wire ne7563; // wrcache.h(227)
  wire sel7572; // wrcache.h(227)
  reg sel7573; // wrcache.h(129)
  wire[1:0] sel7574; // wrcache.h(227)
  reg[1:0] sel7575; // wrcache.h(129)
  wire[19:0] sel7576; // wrcache.h(227)
  reg[19:0] sel7577; // wrcache.h(129)
  wire[511:0] sel7578; // wrcache.h(227)
  reg[511:0] sel7579; // wrcache.h(129)
  wire sel7580; // wrcache.h(156)
  wire eq7581; // wrcache.h(129)
  wire andl7582; // wrcache.h(129)
  wire sel7583; // wrcache.h(233)
  wire sel7584; // wrcache.h(227)
  wire sel7585; // wrcache.h(129)
  wire[19:0] sel7586; // wrcache.h(156)
  wire sel7589; // wrcache.h(156)
  wire sel7592; // wrcache.h(181)
  wire andl7593; // wrcache.h(129)
  wire andl7595; // wrcache.h(129)
  wire sel7596; // wrcache.h(147)
  wire sel7597; // wrcache.h(131)
  wire sel7598; // wrcache.h(129)
  wire[2:0] sel7599; // wrcache.h(134)
  wire[2:0] sel7600; // wrcache.h(147)
  wire[2:0] sel7601; // wrcache.h(131)
  wire[2:0] sel7602; // wrcache.h(181)
  wire[2:0] sel7603; // wrcache.h(156)
  wire[2:0] sel7604; // wrcache.h(193)
  wire[2:0] sel7605; // wrcache.h(219)
  reg[2:0] sel7606; // wrcache.h(129)
  wire sel7607; // wrcache.h(131)
  wire sel7608; // wrcache.h(159)
  wire sel7609; // wrcache.h(156)
  reg sel7610; // wrcache.h(129)
  wire sel7611; // wrcache.h(134)
  wire andl7612; // wrcache.h(129)
  wire sel7613; // wrcache.h(156)
  reg sel7614; // wrcache.h(129)
  wire[1:0] sel7615; // wrcache.h(156)
  wire[1:0] sel7616; // wrcache.h(193)
  reg[1:0] sel7617; // wrcache.h(129)
  wire sel7621; // wrcache.h(202)
  wire sel7622; // wrcache.h(193)
  reg sel7623; // wrcache.h(129)
  wire[511:0] sel7624; // wrcache.h(134)
  wire[511:0] sel7626; // wrcache.h(159)
  wire[511:0] sel7627; // wrcache.h(156)
  reg[511:0] sel7628; // wrcache.h(129)
  wire[21:0] sel7629; // wrcache.h(134)
  wire[21:0] sel7631; // wrcache.h(159)
  wire[21:0] sel7632; // wrcache.h(156)
  wire[21:0] sel7633; // wrcache.h(202)
  wire[21:0] sel7634; // wrcache.h(193)
  reg[21:0] sel7635; // wrcache.h(129)
  wire[533:0] sel7636; // wrcache.h(134)
  wire[533:0] sel7637; // wrcache.h(147)
  wire[533:0] sel7638; // wrcache.h(131)
  wire[533:0] sel7639; // wrcache.h(129)

  always @ (posedge clk) begin
    if (sel7623) begin
      mem7218[sel7610] <= sel7635;
    end
  end
  assign mrport7326 = mem7218[1'h1];
  assign mrport7413 = mem7218[sel7610];
  assign mrport7456 = mem7218[sel7589];
  always @ (posedge clk) begin
    if (sel7614) begin
      mem7221[sel7610] <= sel7628;
    end
  end
  assign mrport7435 = mem7221[sel7610];
  always @ (posedge clk) begin
    if (reset)
      reg7228 <= 2'h0;
    else
      reg7228 <= sel7617;
  end
  always @ (posedge clk) begin
    reg7234 <= sel7580;
  end
  always @ (posedge clk) begin
    reg7239 <= sel7586;
  end
  always @ (posedge clk) begin
    reg7258 <= sel7598;
  end
  assign io_evict_data7269 = {sel7579, sel7577, sel7575};
  always @ (posedge clk) begin
    if (reset)
      reg7286 <= 3'h0;
    else
      reg7286 <= sel7606;
  end
  always @ (posedge clk) begin
    reg7291 <= sel7639;
  end
  assign eq7306 = reg7286 == 3'h0;
  assign sel7308 = eq7306 ? io_enq_data : reg7291;
  assign shl7317 = 2'h1 << 32'h1;
  assign andl7320 = reg7228 & shl7317;
  assign ne7323 = 2'h0 != andl7320;
  assign eq7330 = mrport7326[21:2] == sel7308[21:2];
  assign andl7333 = ne7323 & eq7330;
  assign sel7335 = andl7333 ? 1'h1 : 1'h0;
  assign andl7342 = mrport7326[1:0] & sel7308[1:0];
  assign ne7344 = andl7342 != 2'h0;
  assign andl7347 = ne7323 & ne7344;
  assign sel7349 = andl7347 ? 1'h1 : 1'h0;
  assign eq7354 = ne7323 == 1'h0;
  assign sel7356 = eq7354 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg7360 <= sel7335;
  end
  always @ (posedge clk) begin
    reg7364 <= sel7349;
  end
  always @ (posedge clk) begin
    reg7368 <= sel7356;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7373 <= 1'h0;
    else
      reg7373 <= io_enq_valid;
  end
  assign add7378 = reg7258 + 1'h1;
  assign eq7382 = reg7258 == 1'h1;
  assign sel7386 = andl7387 ? 3'h0 : reg7286;
  assign andl7387 = sel7585 & eq7382;
  assign sel7388 = sel7585 ? add7378 : reg7258;
  assign sel7389 = andl7387 ? 2'h0 : reg7228;
  always @ (posedge clk) begin
    reg7398 <= sel7592;
  end
  assign andl7417 = mrport7413[1:0] & io_enq_data[1:0];
  assign ne7420 = 2'h0 != andl7417;
  assign eq7423 = io_enq_data[21:2] == reg7239;
  assign ne7427 = reg7228 != 2'h0;
  assign andl7429 = ne7427 & eq7423;
  assign andl7431 = andl7429 & ne7420;
  assign orl7437 = mrport7435 | io_enq_data[533:22];
  assign orl7442 = mrport7413[1:0] | io_enq_data[1:0];
  assign tag_t7448 = {mrport7413[21:2], orl7442};
  assign eq7460 = mrport7456[21:2] == reg7291[21:2];
  assign shl7463 = 2'h1 << sel7589;
  assign andl7466 = reg7228 & shl7463;
  assign ne7469 = 2'h0 != andl7466;
  assign andl7471 = ne7469 & eq7460;
  assign orl7474 = mrport7435 | reg7291[533:22];
  assign orl7479 = mrport7413[1:0] | reg7291[1:0];
  assign tag_t7485 = {mrport7413[21:2], orl7479};
  assign tag_t7489 = {reg7291[21:2], reg7291[1:0]};
  assign shl7495 = 2'h1 << sel7610;
  assign orl7498 = reg7228 | shl7495;
  assign ne7501 = sel7610 != reg7364;
  assign eq7509 = mrport7413[1:0] == reg7291[1:0];
  assign tag_t7515 = {20'h0, 2'h0};
  assign inv7521 = ~shl7495;
  assign andl7524 = reg7228 & inv7521;
  assign andl7532 = mrport7413[1:0] & reg7291[1:0];
  assign ne7534 = andl7532 != 2'h0;
  assign inv7538 = ~reg7291[1:0];
  assign andl7543 = mrport7413[1:0] & inv7538;
  assign tag_t7549 = {mrport7413[21:2], andl7543};
  assign ne7563 = mrport7413[1:0] != 2'h0;
  assign sel7572 = ne7563 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7286)
      3'h3: sel7573 = 1'h1;
      3'h4: sel7573 = sel7572;
      default: sel7573 = 1'h0;
    endcase
  end
  assign sel7574 = ne7563 ? reg7291[1:0] : 2'h0;
  always @(*) begin
    case (reg7286)
      3'h3: sel7575 = reg7291[1:0];
      3'h4: sel7575 = sel7574;
      default: sel7575 = 2'h0;
    endcase
  end
  assign sel7576 = ne7563 ? mrport7413[21:2] : 20'h0;
  always @(*) begin
    case (reg7286)
      3'h3: sel7577 = mrport7413[21:2];
      3'h4: sel7577 = sel7576;
      default: sel7577 = 20'h0;
    endcase
  end
  assign sel7578 = ne7563 ? mrport7435 : lit7403;
  always @(*) begin
    case (reg7286)
      3'h3: sel7579 = mrport7435;
      3'h4: sel7579 = sel7578;
      default: sel7579 = lit7403;
    endcase
  end
  assign sel7580 = andl7582 ? sel7610 : reg7234;
  assign eq7581 = reg7286 == 3'h1;
  assign andl7582 = eq7581 & reg7373;
  assign sel7583 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel7584 = ne7563 ? sel7583 : 1'h1;
  assign sel7585 = (reg7286 == 3'h4) ? sel7584 : 1'h0;
  assign sel7586 = andl7582 ? reg7291[21:2] : reg7239;
  assign sel7589 = andl7582 ? reg7360 : 1'h0;
  assign sel7592 = andl7595 ? reg7364 : reg7398;
  assign andl7593 = reg7373 & ne7501;
  assign andl7595 = eq7581 & andl7593;
  assign sel7596 = io_flush ? 1'h0 : sel7388;
  assign sel7597 = io_enq_valid ? sel7388 : sel7596;
  assign sel7598 = (reg7286 == 3'h0) ? sel7597 : sel7388;
  assign sel7599 = andl7431 ? sel7386 : 3'h1;
  assign sel7600 = io_flush ? 3'h4 : sel7386;
  assign sel7601 = io_enq_valid ? sel7599 : sel7600;
  assign sel7602 = ne7501 ? 3'h2 : 3'h0;
  assign sel7603 = reg7373 ? sel7602 : sel7386;
  assign sel7604 = eq7509 ? 3'h3 : 3'h0;
  assign sel7605 = io_evict_ready ? 3'h0 : sel7386;
  always @(*) begin
    case (reg7286)
      3'h0: sel7606 = sel7601;
      3'h1: sel7606 = sel7603;
      3'h2: sel7606 = sel7604;
      3'h3: sel7606 = sel7605;
      default: sel7606 = sel7386;
    endcase
  end
  assign sel7607 = io_enq_valid ? reg7234 : 1'h0;
  assign sel7608 = andl7471 ? reg7360 : reg7368;
  assign sel7609 = reg7373 ? sel7608 : 1'h0;
  always @(*) begin
    case (reg7286)
      3'h0: sel7610 = sel7607;
      3'h1: sel7610 = sel7609;
      3'h2: sel7610 = reg7398;
      3'h3: sel7610 = reg7398;
      3'h4: sel7610 = reg7258;
      default: sel7610 = 1'h0;
    endcase
  end
  assign sel7611 = andl7612 ? 1'h1 : 1'h0;
  assign andl7612 = io_enq_valid & andl7431;
  assign sel7613 = reg7373 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7286)
      3'h0: sel7614 = sel7611;
      3'h1: sel7614 = sel7613;
      default: sel7614 = 1'h0;
    endcase
  end
  assign sel7615 = reg7373 ? orl7498 : sel7389;
  assign sel7616 = eq7509 ? andl7524 : sel7389;
  always @(*) begin
    case (reg7286)
      3'h1: sel7617 = sel7615;
      3'h2: sel7617 = sel7616;
      default: sel7617 = sel7389;
    endcase
  end
  assign sel7621 = ne7534 ? 1'h1 : 1'h0;
  assign sel7622 = eq7509 ? 1'h1 : sel7621;
  always @(*) begin
    case (reg7286)
      3'h0: sel7623 = sel7611;
      3'h1: sel7623 = sel7613;
      3'h2: sel7623 = sel7622;
      default: sel7623 = 1'h0;
    endcase
  end
  assign sel7624 = andl7612 ? orl7437 : lit7403;
  assign sel7626 = andl7471 ? orl7474 : reg7291[533:22];
  assign sel7627 = reg7373 ? sel7626 : lit7403;
  always @(*) begin
    case (reg7286)
      3'h0: sel7628 = sel7624;
      3'h1: sel7628 = sel7627;
      default: sel7628 = lit7403;
    endcase
  end
  assign sel7629 = andl7612 ? tag_t7448 : 22'h0;
  assign sel7631 = andl7471 ? tag_t7485 : tag_t7489;
  assign sel7632 = reg7373 ? sel7631 : 22'h0;
  assign sel7633 = ne7534 ? tag_t7549 : 22'h0;
  assign sel7634 = eq7509 ? tag_t7515 : sel7633;
  always @(*) begin
    case (reg7286)
      3'h0: sel7635 = sel7629;
      3'h1: sel7635 = sel7632;
      3'h2: sel7635 = sel7634;
      default: sel7635 = 22'h0;
    endcase
  end
  assign sel7636 = andl7431 ? reg7291 : io_enq_data;
  assign sel7637 = io_flush ? io_enq_data : reg7291;
  assign sel7638 = io_enq_valid ? sel7636 : sel7637;
  assign sel7639 = (reg7286 == 3'h0) ? sel7638 : reg7291;

  assign io_enq_ready = eq7306;
  assign io_evict_data = io_evict_data7269;
  assign io_evict_valid = sel7573;

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
  wire[511:0] lit7857 = 512'h0;
  wire[514:0] io_ctrl_rd_rsp_data6466; // lsu.cpp(19)
  wire bindin6817; // lsu.cpp(19)
  wire bindin6819; // lsu.cpp(19)
  wire[22:0] bindin6820; // lsu.cpp(19)
  wire bindin6823; // lsu.cpp(19)
  wire bindout6826; // lsu.cpp(19)
  wire[22:0] bindin6831; // lsu.cpp(19)
  wire bindin6834; // lsu.cpp(19)
  wire bindout6837; // lsu.cpp(19)
  wire[22:0] bindin6842; // lsu.cpp(19)
  wire bindin6845; // lsu.cpp(19)
  wire bindout6848; // lsu.cpp(19)
  wire[22:0] bindout6853; // lsu.cpp(19)
  wire bindout6856; // lsu.cpp(19)
  wire bindin6859; // lsu.cpp(19)
  wire[2:0] bindout6862; // lsu.cpp(19)
  wire bindin7170; // lsu.cpp(19)
  wire bindin7171; // lsu.cpp(19)
  wire[533:0] bindin7172; // lsu.cpp(19)
  wire bindin7175; // lsu.cpp(19)
  wire bindout7178; // lsu.cpp(19)
  wire[533:0] bindin7184; // lsu.cpp(19)
  wire bindin7187; // lsu.cpp(19)
  wire bindout7190; // lsu.cpp(19)
  wire[533:0] bindin7196; // lsu.cpp(19)
  wire bindin7199; // lsu.cpp(19)
  wire bindout7202; // lsu.cpp(19)
  wire[533:0] bindout7208; // lsu.cpp(19)
  wire bindout7211; // lsu.cpp(19)
  wire bindin7214; // lsu.cpp(19)
  wire[2:0] bindout7217; // lsu.cpp(19)
  wire[533:0] proxy7641; // lsu.cpp(19)
  wire bindin7646; // lsu.cpp(19)
  wire bindin7647; // lsu.cpp(19)
  wire[533:0] bindin7648; // lsu.cpp(19)
  wire bindin7651; // lsu.cpp(19)
  wire bindout7654; // lsu.cpp(19)
  wire[1:0] proxy_owner7657; // lsu.cpp(19)
  wire[533:0] bindout7660; // lsu.cpp(19)
  wire bindout7663; // lsu.cpp(19)
  wire bindin7666; // lsu.cpp(19)
  wire bindin7669; // lsu.cpp(19)
  wire eq7673; // lsu.cpp(44)
  reg reg7681; // lsu.cpp(47)
  reg[19:0] reg7686; // lsu.cpp(48)
  reg[13:0] reg7691; // lsu.cpp(49)
  reg[19:0] sel7701; // lsu.cpp(258)
  wire[19:0] add7702; // lsu.cpp(257)
  wire[5:0] ch_rd_mdata_t7705; // lsu.cpp(55)
  wire[13:0] pad7708; // lsu.cpp(55)
  reg[2:0] reg7713; // lsu.cpp(70)
  reg reg7719; // lsu.cpp(71)
  wire eq7725; // lsu.cpp(14)
  wire eq7729; // lsu.cpp(6)
  wire eq7733; // lsu.cpp(79)
  wire andl7736; // lsu.cpp(79)
  reg[533:0] reg7741; // lsu.cpp(81)
  reg[2:0] reg7752; // lsu.cpp(82)
  wire andl7755; // lsu.cpp(87)
  wire orl7759; // lsu.cpp(88)
  reg[31:0] sel7763; // lsu.cpp(87)
  reg[31:0] reg7770; // lsu.cpp(91)
  reg reg7775; // lsu.cpp(94)
  reg[19:0] reg7780; // lsu.cpp(95)
  reg[511:0] reg7785; // lsu.cpp(96)
  reg[13:0] reg7790; // lsu.cpp(97)
  wire[31:0] sub7794; // lsu.cpp(101)
  wire[4:0] ch_wr_mdata_t7797; // lsu.cpp(107)
  wire[19:0] add7804; // lsu.cpp(270)
  wire[13:0] pad7806; // lsu.cpp(110)
  wire[2:0] pad7808; // lsu.cpp(116)
  wire[4:0] ch_wr_mdata_t7811; // lsu.cpp(117)
  wire[19:0] add7817; // lsu.cpp(270)
  wire[13:0] pad7819; // lsu.cpp(120)
  wire eq7823; // lsu.cpp(127)
  wire[31:0] add7828; // lsu.cpp(129)
  wire[31:0] sub7830; // lsu.cpp(129)
  wire[31:0] sel7833; // lsu.cpp(127)
  wire eq7834; // lsu.cpp(103)
  wire andl7835; // lsu.cpp(103)
  wire sel7836; // lsu.cpp(127)
  wire[19:0] sel7839; // lsu.cpp(114)
  wire[19:0] sel7840; // lsu.cpp(105)
  wire[19:0] sel7841; // lsu.cpp(103)
  reg[19:0] sel7842; // lsu.cpp(271)
  wire[511:0] sel7843; // lsu.cpp(114)
  wire[511:0] sel7844; // lsu.cpp(105)
  wire[511:0] sel7845; // lsu.cpp(103)
  wire[13:0] sel7846; // lsu.cpp(114)
  wire[13:0] sel7847; // lsu.cpp(105)
  wire[13:0] sel7848; // lsu.cpp(103)
  wire sel7849; // lsu.cpp(114)
  wire sel7850; // lsu.cpp(105)
  wire sel7851; // lsu.cpp(127)
  reg sel7852; // lsu.cpp(103)
  reg[19:0] sel7853; // lsu.cpp(271)
  wire eq7864; // lsu.h(33)
  wire eq7868; // lsu.cpp(164)
  wire sel7882; // lsu.cpp(158)
  wire sel7883; // lsu.cpp(158)
  wire[1:0] sel7884; // lsu.cpp(158)
  wire[19:0] sel7885; // lsu.cpp(158)
  wire[511:0] sel7886; // lsu.cpp(158)
  wire sel7887; // lsu.cpp(158)
  wire[2:0] sel7888; // lsu.cpp(164)
  wire[2:0] sel7889; // lsu.cpp(163)
  wire[2:0] sel7890; // lsu.cpp(160)
  wire[2:0] sel7891; // lsu.cpp(177)
  wire[2:0] sel7892; // lsu.cpp(189)
  wire[2:0] sel7893; // lsu.cpp(198)
  reg[2:0] sel7895; // lsu.cpp(158)
  wire[2:0] sel7896; // lsu.cpp(160)
  wire eq7897; // lsu.cpp(158)
  wire andl7898; // lsu.cpp(158)
  wire[533:0] sel7899; // lsu.cpp(160)
  wire[5:0] proxy7903; // lsu.cpp(227)
  wire eq7908; // lsu.cpp(230)
  wire andl7911; // lsu.cpp(230)
  wire eq7915; // lsu.cpp(236)
  wire andl7918; // lsu.cpp(236)
  wire eq7922; // lsu.cpp(236)
  wire andl7925; // lsu.cpp(236)

  assign io_ctrl_rd_rsp_data6466 = {io_qpi_rd_rsp_data, proxy7903[2:0]};
  assign bindin6817 = clk;
  assign bindin6819 = reset;
  ch_xbar_switch __module23__(.clk(bindin6817), .reset(bindin6819), .io_in_0_data(bindin6820), .io_in_0_valid(bindin6823), .io_in_1_data(bindin6831), .io_in_1_valid(bindin6834), .io_in_2_data(bindin6842), .io_in_2_valid(bindin6845), .io_out_ready(bindin6859), .io_in_0_ready(bindout6826), .io_in_1_ready(bindout6837), .io_in_2_ready(bindout6848), .io_out_data(bindout6853), .io_out_valid(bindout6856), .io_out_grant(bindout6862));
  assign bindin6820 = io_walkers_0_rd_req_data;
  assign bindin6823 = io_walkers_0_rd_req_valid;
  assign bindin6831 = io_walkers_1_rd_req_data;
  assign bindin6834 = io_walkers_1_rd_req_valid;
  assign bindin6842 = io_ctrl_rd_req_data;
  assign bindin6845 = io_ctrl_rd_req_valid;
  assign bindin6859 = eq7673;
  assign bindin7170 = clk;
  assign bindin7171 = reset;
  ch_xbar_switch_0 __module26__(.clk(bindin7170), .reset(bindin7171), .io_in_0_data(bindin7172), .io_in_0_valid(bindin7175), .io_in_1_data(bindin7184), .io_in_1_valid(bindin7187), .io_in_2_data(bindin7196), .io_in_2_valid(bindin7199), .io_out_ready(bindin7214), .io_in_0_ready(bindout7178), .io_in_1_ready(bindout7190), .io_in_2_ready(bindout7202), .io_out_data(bindout7208), .io_out_valid(bindout7211), .io_out_grant(bindout7217));
  assign bindin7172 = io_PEs_0_wr_req_data;
  assign bindin7175 = io_PEs_0_wr_req_valid;
  assign bindin7184 = io_PEs_1_wr_req_data;
  assign bindin7187 = io_PEs_1_wr_req_valid;
  assign bindin7196 = io_ctrl_wr_req_data;
  assign bindin7199 = io_ctrl_wr_req_valid;
  assign bindin7214 = eq7729;
  assign proxy7641 = {sel7886, sel7885, sel7884};
  assign bindin7646 = clk;
  assign bindin7647 = reset;
  spmv_write_cache __module29__(.clk(bindin7646), .reset(bindin7647), .io_enq_data(bindin7648), .io_enq_valid(bindin7651), .io_evict_ready(bindin7666), .io_flush(bindin7669), .io_enq_ready(bindout7654), .io_evict_data(bindout7660), .io_evict_valid(bindout7663));
  assign bindin7648 = proxy7641;
  assign bindin7651 = sel7883;
  assign proxy_owner7657 = bindout7660[1:0];
  assign bindin7666 = andl7736;
  assign bindin7669 = sel7882;
  assign eq7673 = io_qpi_rd_req_almostfull == 1'h0;
  always @ (posedge clk) begin
    if (reset)
      reg7681 <= 1'h0;
    else
      reg7681 <= bindout6856;
  end
  always @ (posedge clk) begin
    reg7686 <= add7702;
  end
  always @ (posedge clk) begin
    reg7691 <= pad7708;
  end
  always @(*) begin
    case (bindout6853[2:0])
      3'h0: sel7701 = io_ctx[51:32];
      3'h1: sel7701 = io_ctx[71:52];
      3'h2: sel7701 = io_ctx[91:72];
      3'h3: sel7701 = io_ctx[111:92];
      3'h4: sel7701 = io_ctx[131:112];
      3'h5: sel7701 = io_ctx[151:132];
      default: sel7701 = io_ctx[171:152];
    endcase
  end
  assign add7702 = sel7701 + bindout6853[22:3];
  assign ch_rd_mdata_t7705 = {bindout6862, bindout6853[2:0]};
  assign pad7708 = {{8{1'b0}}, ch_rd_mdata_t7705};
  always @ (posedge clk) begin
    if (reset)
      reg7713 <= 3'h0;
    else
      reg7713 <= sel7895;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7719 <= 1'h0;
    else
      reg7719 <= sel7852;
  end
  assign eq7725 = reg7719 == 1'h0;
  assign eq7729 = reg7713 == 3'h0;
  assign eq7733 = sel7887 == 1'h0;
  assign andl7736 = eq7725 & eq7733;
  always @ (posedge clk) begin
    reg7741 <= sel7899;
  end
  always @ (posedge clk) begin
    reg7752 <= sel7896;
  end
  assign andl7755 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign orl7759 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (orl7759)
      sel7763 = 32'h1;
    else if (andl7755)
      sel7763 = 32'h2;
    else
      sel7763 = 32'h0;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7770 <= 32'h0;
    else
      reg7770 <= sel7833;
  end
  always @ (posedge clk) begin
    reg7775 <= sel7836;
  end
  always @ (posedge clk) begin
    reg7780 <= sel7841;
  end
  always @ (posedge clk) begin
    reg7785 <= sel7845;
  end
  always @ (posedge clk) begin
    reg7790 <= sel7848;
  end
  assign sub7794 = reg7770 - sel7763;
  assign ch_wr_mdata_t7797 = {reg7752, reg7741[1:0]};
  assign add7804 = sel7842 + reg7741[21:2];
  assign pad7806 = {{9{1'b0}}, ch_wr_mdata_t7797};
  assign pad7808 = {{1{1'b0}}, proxy_owner7657};
  assign ch_wr_mdata_t7811 = {pad7808, 2'h1};
  assign add7817 = sel7853 + bindout7660[21:2];
  assign pad7819 = {{9{1'b0}}, ch_wr_mdata_t7811};
  assign eq7823 = io_qpi_wr_req_almostfull == 1'h0;
  assign add7828 = reg7770 + 32'h1;
  assign sub7830 = add7828 - sel7763;
  assign sel7833 = andl7835 ? sub7830 : sub7794;
  assign eq7834 = reg7719 == 1'h1;
  assign andl7835 = eq7834 & eq7823;
  assign sel7836 = andl7835 ? 1'h1 : 1'h0;
  assign sel7839 = bindout7663 ? add7817 : reg7780;
  assign sel7840 = sel7887 ? add7804 : sel7839;
  assign sel7841 = (reg7719 == 1'h0) ? sel7840 : reg7780;
  always @(*) begin
    case (reg7741[1:0])
      2'h0: sel7842 = io_ctx[191:172];
      2'h1: sel7842 = io_ctx[211:192];
      default: sel7842 = io_ctx[231:212];
    endcase
  end
  assign sel7843 = bindout7663 ? bindout7660[533:22] : reg7785;
  assign sel7844 = sel7887 ? reg7741[533:22] : sel7843;
  assign sel7845 = (reg7719 == 1'h0) ? sel7844 : reg7785;
  assign sel7846 = bindout7663 ? pad7819 : reg7790;
  assign sel7847 = sel7887 ? pad7806 : sel7846;
  assign sel7848 = (reg7719 == 1'h0) ? sel7847 : reg7790;
  assign sel7849 = bindout7663 ? 1'h1 : reg7719;
  assign sel7850 = sel7887 ? 1'h1 : sel7849;
  assign sel7851 = eq7823 ? 1'h0 : reg7719;
  always @(*) begin
    case (reg7719)
      1'h0: sel7852 = sel7850;
      1'h1: sel7852 = sel7851;
      default: sel7852 = reg7719;
    endcase
  end
  always @(*) begin
    case (2'h1)
      2'h0: sel7853 = io_ctx[191:172];
      2'h1: sel7853 = io_ctx[211:192];
      default: sel7853 = io_ctx[231:212];
    endcase
  end
  assign eq7864 = bindout7208[1:0] == 2'h1;
  assign eq7868 = bindout7217 == 3'h4;
  assign sel7882 = (reg7713 == 3'h3) ? 1'h1 : 1'h0;
  assign sel7883 = (reg7713 == 3'h2) ? 1'h1 : 1'h0;
  assign sel7884 = (reg7713 == 3'h2) ? reg7752[1:0] : 2'h0;
  assign sel7885 = (reg7713 == 3'h2) ? reg7741[21:2] : 20'h0;
  assign sel7886 = (reg7713 == 3'h2) ? reg7741[533:22] : lit7857;
  assign sel7887 = (reg7713 == 3'h1) ? 1'h1 : 1'h0;
  assign sel7888 = eq7868 ? 3'h3 : 3'h2;
  assign sel7889 = eq7864 ? sel7888 : 3'h1;
  assign sel7890 = bindout7211 ? sel7889 : reg7713;
  assign sel7891 = eq7725 ? 3'h0 : reg7713;
  assign sel7892 = bindout7654 ? 3'h0 : reg7713;
  assign sel7893 = bindout7654 ? 3'h4 : reg7713;
  always @(*) begin
    case (reg7713)
      3'h0: sel7895 = sel7890;
      3'h1: sel7895 = sel7891;
      3'h2: sel7895 = sel7892;
      3'h3: sel7895 = sel7893;
      3'h4: sel7895 = sel7892;
      default: sel7895 = reg7713;
    endcase
  end
  assign sel7896 = andl7898 ? bindout7217 : reg7752;
  assign eq7897 = reg7713 == 3'h0;
  assign andl7898 = eq7897 & bindout7211;
  assign sel7899 = andl7898 ? bindout7208 : reg7741;
  assign proxy7903 = io_qpi_rd_rsp_mdata[5:0];
  assign eq7908 = io_qpi_rd_rsp_mdata[5:3] == 3'h4;
  assign andl7911 = io_qpi_rd_rsp_valid & eq7908;
  assign eq7915 = io_qpi_rd_rsp_mdata[5:3] == 3'h1;
  assign andl7918 = io_qpi_rd_rsp_valid & eq7915;
  assign eq7922 = io_qpi_rd_rsp_mdata[5:3] == 3'h2;
  assign andl7925 = io_qpi_rd_rsp_valid & eq7922;

  assign io_qpi_rd_req_addr = reg7686;
  assign io_qpi_rd_req_mdata = reg7691;
  assign io_qpi_rd_req_valid = reg7681;
  assign io_qpi_wr_req_addr = reg7780;
  assign io_qpi_wr_req_mdata = reg7790;
  assign io_qpi_wr_req_data = reg7785;
  assign io_qpi_wr_req_valid = reg7775;
  assign io_ctrl_rd_req_ready = bindout6848;
  assign io_ctrl_wr_req_ready = bindout7202;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data6466;
  assign io_ctrl_rd_rsp_valid = andl7911;
  assign io_ctrl_outstanding_writes = reg7770;
  assign io_walkers_0_rd_req_ready = bindout6826;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data6466;
  assign io_walkers_0_rd_rsp_valid = andl7918;
  assign io_walkers_1_rd_req_ready = bindout6837;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data6466;
  assign io_walkers_1_rd_rsp_valid = andl7925;
  assign io_PEs_0_wr_req_ready = bindout7178;
  assign io_PEs_1_wr_req_ready = bindout7190;

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
  reg[1:0] reg8113; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[1:0] reg8122; // /home/blaise/dev/cash/include/htl/queue.h(26)
  reg[2:0] reg8129; // /home/blaise/dev/cash/include/htl/queue.h(27)
  reg reg8136; // /home/blaise/dev/cash/include/htl/queue.h(28)
  reg reg8142; // /home/blaise/dev/cash/include/htl/queue.h(28)
  wire andl8145; // /home/blaise/dev/cash/include/htl/queue.h(30)
  wire andl8148; // /home/blaise/dev/cash/include/htl/queue.h(31)
  wire[1:0] add8153; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] sel8155; // /home/blaise/dev/cash/include/htl/queue.h(33)
  wire[1:0] add8159; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire[1:0] sel8161; // /home/blaise/dev/cash/include/htl/queue.h(34)
  wire eq8165; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire andl8168; // /home/blaise/dev/cash/include/htl/queue.h(38)
  wire eq8172; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire andl8175; // /home/blaise/dev/cash/include/htl/queue.h(36)
  wire[2:0] add8180; // /home/blaise/dev/cash/include/htl/queue.h(37)
  wire[2:0] sub8184; // /home/blaise/dev/cash/include/htl/queue.h(39)
  reg[2:0] sel8186; // /home/blaise/dev/cash/include/htl/queue.h(36)
  reg[511:0] mem8187 [0:3]; // /home/blaise/dev/cash/include/htl/queue.h(42)
  wire[511:0] mrport8191; // /home/blaise/dev/cash/include/htl/queue.h(57)
  wire eq8207; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl8209; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire andl8211; // /home/blaise/dev/cash/include/htl/queue.h(60)
  reg sel8215; // /home/blaise/dev/cash/include/htl/queue.h(60)
  wire eq8229; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl8231; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire andl8233; // /home/blaise/dev/cash/include/htl/queue.h(66)
  reg sel8237; // /home/blaise/dev/cash/include/htl/queue.h(66)
  wire eq8240; // /home/blaise/dev/cash/include/htl/queue.h(73)
  wire eq8244; // /home/blaise/dev/cash/include/htl/queue.h(74)

  always @ (posedge clk) begin
    if (reset)
      reg8113 <= 2'h0;
    else
      reg8113 <= sel8155;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8122 <= 2'h0;
    else
      reg8122 <= sel8161;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8129 <= 3'h0;
    else
      reg8129 <= sel8186;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8136 <= 1'h0;
    else
      reg8136 <= sel8215;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8142 <= 1'h1;
    else
      reg8142 <= sel8237;
  end
  assign andl8145 = io_deq_ready & eq8240;
  assign andl8148 = io_enq_valid & eq8244;
  assign add8153 = reg8113 + 2'h1;
  assign sel8155 = andl8145 ? add8153 : reg8113;
  assign add8159 = reg8122 + 2'h1;
  assign sel8161 = andl8148 ? add8159 : reg8122;
  assign eq8165 = andl8148 == 1'h0;
  assign andl8168 = andl8145 & eq8165;
  assign eq8172 = andl8145 == 1'h0;
  assign andl8175 = andl8148 & eq8172;
  assign add8180 = reg8129 + 3'h1;
  assign sub8184 = reg8129 - 3'h1;
  always @(*) begin
    if (andl8175)
      sel8186 = add8180;
    else if (andl8168)
      sel8186 = sub8184;
    else
      sel8186 = reg8129;
  end
  always @ (posedge clk) begin
    if (andl8148) begin
      mem8187[reg8122] <= io_enq_data;
    end
  end
  assign mrport8191 = mem8187[reg8113];
  assign eq8207 = reg8129 == 3'h3;
  assign andl8209 = eq8207 & andl8148;
  assign andl8211 = andl8209 & eq8172;
  always @(*) begin
    if (andl8211)
      sel8215 = 1'h1;
    else if (andl8168)
      sel8215 = 1'h0;
    else
      sel8215 = reg8136;
  end
  assign eq8229 = reg8129 == 3'h1;
  assign andl8231 = eq8229 & andl8145;
  assign andl8233 = andl8231 & eq8165;
  always @(*) begin
    if (andl8233)
      sel8237 = 1'h1;
    else if (andl8175)
      sel8237 = 1'h0;
    else
      sel8237 = reg8142;
  end
  assign eq8240 = reg8142 == 1'h0;
  assign eq8244 = reg8136 == 1'h0;

  assign io_enq_ready = eq8244;
  assign io_deq_data = mrport8191;
  assign io_deq_valid = eq8240;
  assign io_size = reg8129;

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
  wire[95:0] lit8322 = 96'h0;
  wire[511:0] lit8429 = 512'h0;
  wire bindin2357; // /usr/include/c++/7/array(94)
  wire bindin2359; // /usr/include/c++/7/array(94)
  wire[63:0] bindin2360; // /usr/include/c++/7/array(94)
  wire bindin2363; // /usr/include/c++/7/array(94)
  wire bindout2366; // /usr/include/c++/7/array(94)
  wire[63:0] bindin2369; // /usr/include/c++/7/array(94)
  wire[351:0] bindout2383; // /usr/include/c++/7/array(94)
  wire[22:0] bindout2388; // /usr/include/c++/7/array(94)
  wire bindout2391; // /usr/include/c++/7/array(94)
  wire bindin2394; // /usr/include/c++/7/array(94)
  wire[514:0] bindin2399; // /usr/include/c++/7/array(94)
  wire bindin2402; // /usr/include/c++/7/array(94)
  wire[84:0] bindout2409; // /usr/include/c++/7/array(94)
  wire bindout2412; // /usr/include/c++/7/array(94)
  wire bindin2415; // /usr/include/c++/7/array(94)
  wire bindin4720; // /usr/include/c++/7/array(94)
  wire bindin4721; // /usr/include/c++/7/array(94)
  wire[63:0] bindin4722; // /usr/include/c++/7/array(94)
  wire bindin4725; // /usr/include/c++/7/array(94)
  wire bindout4728; // /usr/include/c++/7/array(94)
  wire[63:0] bindin4731; // /usr/include/c++/7/array(94)
  wire[351:0] bindout4745; // /usr/include/c++/7/array(94)
  wire[22:0] bindout4750; // /usr/include/c++/7/array(94)
  wire bindout4753; // /usr/include/c++/7/array(94)
  wire bindin4756; // /usr/include/c++/7/array(94)
  wire[514:0] bindin4761; // /usr/include/c++/7/array(94)
  wire bindin4764; // /usr/include/c++/7/array(94)
  wire[84:0] bindout4771; // /usr/include/c++/7/array(94)
  wire bindout4774; // /usr/include/c++/7/array(94)
  wire bindin4777; // /usr/include/c++/7/array(94)
  wire bindin5562; // /usr/include/c++/7/array(94)
  wire bindin5563; // /usr/include/c++/7/array(94)
  wire[84:0] bindin5564; // /usr/include/c++/7/array(94)
  wire bindin5567; // /usr/include/c++/7/array(94)
  wire bindout5570; // /usr/include/c++/7/array(94)
  wire[533:0] bindout5576; // /usr/include/c++/7/array(94)
  wire bindout5579; // /usr/include/c++/7/array(94)
  wire bindin5582; // /usr/include/c++/7/array(94)
  wire[63:0] bindout5587; // /usr/include/c++/7/array(94)
  wire bindout5590; // /usr/include/c++/7/array(94)
  wire bindin6375; // /usr/include/c++/7/array(94)
  wire bindin6376; // /usr/include/c++/7/array(94)
  wire[84:0] bindin6377; // /usr/include/c++/7/array(94)
  wire bindin6380; // /usr/include/c++/7/array(94)
  wire bindout6383; // /usr/include/c++/7/array(94)
  wire[533:0] bindout6389; // /usr/include/c++/7/array(94)
  wire bindout6392; // /usr/include/c++/7/array(94)
  wire bindin6395; // /usr/include/c++/7/array(94)
  wire[63:0] bindout6400; // /usr/include/c++/7/array(94)
  wire bindout6403; // /usr/include/c++/7/array(94)
  wire bindin7930; // spmv.cpp(23)
  wire bindin7931; // spmv.cpp(23)
  wire bindin7932; // spmv.cpp(23)
  wire[19:0] bindout7935; // spmv.cpp(23)
  wire[13:0] bindout7938; // spmv.cpp(23)
  wire bindout7941; // spmv.cpp(23)
  wire[13:0] bindin7944; // spmv.cpp(23)
  wire[511:0] bindin7947; // spmv.cpp(23)
  wire bindin7950; // spmv.cpp(23)
  wire bindin7953; // spmv.cpp(23)
  wire[19:0] bindout7956; // spmv.cpp(23)
  wire[13:0] bindout7959; // spmv.cpp(23)
  wire[511:0] bindout7962; // spmv.cpp(23)
  wire bindout7965; // spmv.cpp(23)
  wire[13:0] bindin7968; // spmv.cpp(23)
  wire bindin7971; // spmv.cpp(23)
  wire[13:0] bindin7974; // spmv.cpp(23)
  wire bindin7977; // spmv.cpp(23)
  wire[511:0] bindin7995; // spmv.cpp(23)
  wire[22:0] proxy7997; // spmv.cpp(23)
  wire[2:0] proxy_type7998; // spmv.cpp(23)
  wire[22:0] bindin8000; // spmv.cpp(23)
  wire bindin8003; // spmv.cpp(23)
  wire bindout8006; // spmv.cpp(23)
  wire[533:0] proxy8008; // spmv.cpp(23)
  wire[533:0] bindin8012; // spmv.cpp(23)
  wire bindin8015; // spmv.cpp(23)
  wire bindout8018; // spmv.cpp(23)
  wire[514:0] bindout8023; // spmv.cpp(23)
  wire bindout8026; // spmv.cpp(23)
  wire[31:0] bindout8029; // spmv.cpp(23)
  wire[22:0] bindin8034; // spmv.cpp(23)
  wire bindin8037; // spmv.cpp(23)
  wire bindout8040; // spmv.cpp(23)
  wire[514:0] bindout8045; // spmv.cpp(23)
  wire bindout8048; // spmv.cpp(23)
  wire[22:0] bindin8053; // spmv.cpp(23)
  wire bindin8056; // spmv.cpp(23)
  wire bindout8059; // spmv.cpp(23)
  wire[514:0] bindout8064; // spmv.cpp(23)
  wire bindout8067; // spmv.cpp(23)
  wire[533:0] bindin8073; // spmv.cpp(23)
  wire bindin8076; // spmv.cpp(23)
  wire bindout8079; // spmv.cpp(23)
  wire[533:0] bindin8085; // spmv.cpp(23)
  wire bindin8088; // spmv.cpp(23)
  wire bindout8091; // spmv.cpp(23)
  wire bindin8249; // spmv.cpp(23)
  wire bindin8250; // spmv.cpp(23)
  wire[511:0] bindin8251; // spmv.cpp(23)
  wire bindin8254; // spmv.cpp(23)
  wire[511:0] bindout8260; // spmv.cpp(23)
  wire bindout8263; // spmv.cpp(23)
  wire bindin8266; // spmv.cpp(23)
  wire[543:0] proxy8272; // spmv.cpp(23)
  reg[543:0] reg8274; // spmv.cpp(23)
  reg[4:0] reg8281; // spmv.cpp(23)
  reg[31:0] reg8288; // spmv.cpp(23)
  reg[19:0] reg8295; // spmv.cpp(23)
  reg[19:0] reg8300; // spmv.cpp(23)
  reg[1:0] reg8307; // spmv.cpp(23)
  reg[19:0] reg8315; // spmv.cpp(23)
  reg[19:0] reg8320; // spmv.cpp(23)
  wire[95:0] proxy8329; // spmv.cpp(23)
  reg[95:0] reg8330; // spmv.cpp(23)
  wire[19:0] sub8343; // spmv.cpp(41)
  reg[63:0] reg8350; // spmv.cpp(44)
  wire[63:0] add8355; // spmv.cpp(45)
  reg[2:0] reg8362; // spmv.cpp(62)
  reg reg8370; // spmv.cpp(65)
  wire eq8374; // lsu.h(23)
  wire andl8377; // spmv.cpp(70)
  wire[31:0] pad8379; // spmv.cpp(77)
  wire eq8382; // lsu.h(23)
  wire andl8385; // spmv.cpp(75)
  wire andl8387; // spmv.cpp(75)
  wire[31:0] pad8389; // spmv.cpp(76)
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
  wire[511:0] pad8479; // spmv.cpp(267)
  wire[415:0] ch_cu_stats_t8481; // spmv.cpp(269)
  wire[511:0] pad8497; // spmv.cpp(270)
  wire[415:0] ch_cu_stats_t8499; // spmv.cpp(272)
  wire[511:0] pad8515; // spmv.cpp(273)
  reg[511:0] sel8516; // spmv.cpp(267)
  wire[1:0] add8521; // spmv.cpp(162)
  wire eq8525; // spmv.cpp(163)
  wire eq8531; // spmv.cpp(171)
  reg sel8535; // spmv.cpp(104)
  wire[1:0] sel8536; // spmv.cpp(161)
  wire eq8537; // spmv.cpp(104)
  wire andl8538; // spmv.cpp(104)
  wire sel8539; // spmv.cpp(107)
  wire sel8540; // spmv.cpp(106)
  wire sel8541; // spmv.cpp(171)
  reg sel8542; // spmv.cpp(104)
  wire sel8543; // spmv.cpp(119)
  wire eq8544; // spmv.cpp(104)
  wire andl8545; // spmv.cpp(104)
  wire[19:0] sel8546; // spmv.cpp(107)
  wire andl8547; // spmv.cpp(104)
  wire[19:0] sel8548; // spmv.cpp(122)
  wire andl8549; // spmv.cpp(104)
  reg[19:0] sel8550; // spmv.cpp(104)
  wire[2:0] sel8551; // spmv.cpp(107)
  wire[2:0] sel8553; // spmv.cpp(124)
  wire andl8554; // spmv.cpp(104)
  wire andl8555; // spmv.cpp(104)
  wire[2:0] sel8556; // spmv.cpp(139)
  wire[2:0] sel8557; // spmv.cpp(149)
  wire[2:0] sel8558; // spmv.cpp(163)
  wire andl8559; // spmv.cpp(104)
  wire[2:0] sel8560; // spmv.cpp(171)
  reg[2:0] sel8561; // spmv.cpp(104)
  reg[1:0] sel8562; // spmv.cpp(104)
  wire[19:0] sel8563; // spmv.cpp(104)
  wire[511:0] sel8564; // spmv.cpp(104)
  wire[31:0] sel8566; // spmv.cpp(122)
  wire[31:0] sel8567; // spmv.cpp(119)
  wire[31:0] sel8568; // spmv.cpp(104)
  reg[1:0] reg8573; // spmv.cpp(189)
  wire eq8582; // spmv.cpp(205)
  wire[543:0] shr8603; // spmv.cpp(229)
  wire[19:0] add8610; // spmv.cpp(230)
  wire[4:0] sub8615; // spmv.cpp(231)
  wire ne8620; // spmv.cpp(241)
  wire ne8623; // spmv.cpp(241)
  wire andl8625; // spmv.cpp(241)
  wire sel8662; // spmv.cpp(222)
  wire eq8663; // spmv.cpp(200)
  wire andl8664; // spmv.cpp(200)
  wire[63:0] sel8665; // spmv.cpp(222)
  wire[19:0] sel8668; // spmv.cpp(222)
  wire[19:0] sel8669; // spmv.cpp(222)
  reg[19:0] sel8670; // spmv.cpp(200)
  wire sel8671; // spmv.cpp(222)
  wire eq8672; // spmv.cpp(200)
  wire andl8673; // spmv.cpp(200)
  wire[63:0] sel8674; // spmv.cpp(222)
  wire[1:0] sel8677; // spmv.cpp(203)
  wire[1:0] sel8678; // spmv.cpp(241)
  wire[1:0] sel8679; // spmv.cpp(222)
  wire[1:0] sel8680; // spmv.cpp(241)
  wire[1:0] sel8681; // spmv.cpp(222)
  reg[1:0] sel8682; // spmv.cpp(200)
  wire[4:0] sel8683; // spmv.cpp(205)
  wire[4:0] sel8684; // spmv.cpp(203)
  wire[4:0] sel8685; // spmv.cpp(222)
  wire[4:0] sel8686; // spmv.cpp(222)
  reg[4:0] sel8687; // spmv.cpp(200)
  wire[31:0] sel8689; // spmv.cpp(205)
  wire andl8690; // spmv.cpp(200)
  wire[31:0] sel8691; // spmv.cpp(222)
  wire[31:0] sel8692; // spmv.cpp(222)
  reg[31:0] sel8693; // spmv.cpp(200)
  wire[479:0] sel8695; // spmv.cpp(205)
  wire[479:0] sel8696; // spmv.cpp(203)
  wire[479:0] sel8697; // spmv.cpp(222)
  wire[479:0] sel8698; // spmv.cpp(222)
  reg[479:0] sel8699; // spmv.cpp(200)
  wire[31:0] sel8701; // spmv.cpp(205)
  wire[31:0] sel8702; // spmv.cpp(203)
  wire[31:0] sel8703; // spmv.cpp(222)
  wire[31:0] sel8704; // spmv.cpp(222)
  reg[31:0] sel8705; // spmv.cpp(200)
  wire sel8706; // spmv.cpp(203)
  wire eq8707; // spmv.cpp(200)
  wire andl8708; // spmv.cpp(200)

  assign bindin2357 = clk;
  assign bindin2359 = reset;
  spmv_dcsc_walk __module2__(.clk(bindin2357), .reset(bindin2359), .io_ctrl_start_data(bindin2360), .io_ctrl_start_valid(bindin2363), .io_ctrl_timer(bindin2369), .io_lsu_rd_req_ready(bindin2394), .io_lsu_rd_rsp_data(bindin2399), .io_lsu_rd_rsp_valid(bindin2402), .io_pe_ready(bindin2415), .io_ctrl_start_ready(bindout2366), .io_ctrl_stats(bindout2383), .io_lsu_rd_req_data(bindout2388), .io_lsu_rd_req_valid(bindout2391), .io_pe_data(bindout2409), .io_pe_valid(bindout2412));
  assign bindin2360 = sel8674;
  assign bindin2363 = sel8671;
  assign bindin2369 = reg8350;
  assign bindin2394 = bindout8040;
  assign bindin2399 = bindout8045;
  assign bindin2402 = bindout8048;
  assign bindin2415 = bindout5570;
  assign bindin4720 = clk;
  assign bindin4721 = reset;
  spmv_dcsc_walk __module9__(.clk(bindin4720), .reset(bindin4721), .io_ctrl_start_data(bindin4722), .io_ctrl_start_valid(bindin4725), .io_ctrl_timer(bindin4731), .io_lsu_rd_req_ready(bindin4756), .io_lsu_rd_rsp_data(bindin4761), .io_lsu_rd_rsp_valid(bindin4764), .io_pe_ready(bindin4777), .io_ctrl_start_ready(bindout4728), .io_ctrl_stats(bindout4745), .io_lsu_rd_req_data(bindout4750), .io_lsu_rd_req_valid(bindout4753), .io_pe_data(bindout4771), .io_pe_valid(bindout4774));
  assign bindin4722 = sel8665;
  assign bindin4725 = sel8662;
  assign bindin4731 = reg8350;
  assign bindin4756 = bindout8059;
  assign bindin4761 = bindout8064;
  assign bindin4764 = bindout8067;
  assign bindin4777 = bindout6383;
  assign bindin5562 = clk;
  assign bindin5563 = reset;
  spmv_pe __module16__(.clk(bindin5562), .reset(bindin5563), .io_req_data(bindin5564), .io_req_valid(bindin5567), .io_lsu_wr_req_ready(bindin5582), .io_req_ready(bindout5570), .io_lsu_wr_req_data(bindout5576), .io_lsu_wr_req_valid(bindout5579), .io_stats(bindout5587), .io_is_idle(bindout5590));
  assign bindin5564 = bindout2409;
  assign bindin5567 = bindout2412;
  assign bindin5582 = bindout8079;
  assign bindin6375 = clk;
  assign bindin6376 = reset;
  spmv_pe __module19__(.clk(bindin6375), .reset(bindin6376), .io_req_data(bindin6377), .io_req_valid(bindin6380), .io_lsu_wr_req_ready(bindin6395), .io_req_ready(bindout6383), .io_lsu_wr_req_data(bindout6389), .io_lsu_wr_req_valid(bindout6392), .io_stats(bindout6400), .io_is_idle(bindout6403));
  assign bindin6377 = bindout4771;
  assign bindin6380 = bindout4774;
  assign bindin6395 = bindout8091;
  assign bindin7930 = clk;
  assign bindin7931 = reset;
  spmv_lsu __module22__(.clk(bindin7930), .reset(bindin7931), .io_qpi_rd_req_almostfull(bindin7932), .io_qpi_rd_rsp_mdata(bindin7944), .io_qpi_rd_rsp_data(bindin7947), .io_qpi_rd_rsp_valid(bindin7950), .io_qpi_wr_req_almostfull(bindin7953), .io_qpi_wr_rsp0_mdata(bindin7968), .io_qpi_wr_rsp0_valid(bindin7971), .io_qpi_wr_rsp1_mdata(bindin7974), .io_qpi_wr_rsp1_valid(bindin7977), .io_ctx(bindin7995), .io_ctrl_rd_req_data(bindin8000), .io_ctrl_rd_req_valid(bindin8003), .io_ctrl_wr_req_data(bindin8012), .io_ctrl_wr_req_valid(bindin8015), .io_walkers_0_rd_req_data(bindin8034), .io_walkers_0_rd_req_valid(bindin8037), .io_walkers_1_rd_req_data(bindin8053), .io_walkers_1_rd_req_valid(bindin8056), .io_PEs_0_wr_req_data(bindin8073), .io_PEs_0_wr_req_valid(bindin8076), .io_PEs_1_wr_req_data(bindin8085), .io_PEs_1_wr_req_valid(bindin8088), .io_qpi_rd_req_addr(bindout7935), .io_qpi_rd_req_mdata(bindout7938), .io_qpi_rd_req_valid(bindout7941), .io_qpi_wr_req_addr(bindout7956), .io_qpi_wr_req_mdata(bindout7959), .io_qpi_wr_req_data(bindout7962), .io_qpi_wr_req_valid(bindout7965), .io_ctrl_rd_req_ready(bindout8006), .io_ctrl_wr_req_ready(bindout8018), .io_ctrl_rd_rsp_data(bindout8023), .io_ctrl_rd_rsp_valid(bindout8026), .io_ctrl_outstanding_writes(bindout8029), .io_walkers_0_rd_req_ready(bindout8040), .io_walkers_0_rd_rsp_data(bindout8045), .io_walkers_0_rd_rsp_valid(bindout8048), .io_walkers_1_rd_req_ready(bindout8059), .io_walkers_1_rd_rsp_data(bindout8064), .io_walkers_1_rd_rsp_valid(bindout8067), .io_PEs_0_wr_req_ready(bindout8079), .io_PEs_1_wr_req_ready(bindout8091));
  assign bindin7932 = io_qpi_rd_req_almostfull;
  assign bindin7944 = io_qpi_rd_rsp_mdata;
  assign bindin7947 = io_qpi_rd_rsp_data;
  assign bindin7950 = io_qpi_rd_rsp_valid;
  assign bindin7953 = io_qpi_wr_req_almostfull;
  assign bindin7968 = io_qpi_wr_rsp0_mdata;
  assign bindin7971 = io_qpi_wr_rsp0_valid;
  assign bindin7974 = io_qpi_wr_rsp1_mdata;
  assign bindin7977 = io_qpi_wr_rsp1_valid;
  assign bindin7995 = io_ctx;
  assign proxy7997 = {reg8295, 3'h0};
  assign proxy_type7998 = proxy7997[2:0];
  assign bindin8000 = proxy7997;
  assign bindin8003 = sel8543;
  assign proxy8008 = {sel8564, sel8563, sel8562};
  assign bindin8012 = proxy8008;
  assign bindin8015 = sel8535;
  assign bindin8034 = bindout2388;
  assign bindin8037 = bindout2391;
  assign bindin8053 = bindout4750;
  assign bindin8056 = bindout4753;
  assign bindin8073 = bindout5576;
  assign bindin8076 = bindout5579;
  assign bindin8085 = bindout6389;
  assign bindin8088 = bindout6392;
  assign bindin8249 = clk;
  assign bindin8250 = reset;
  ch_queue_1 __module30__(.clk(bindin8249), .reset(bindin8250), .io_enq_data(bindin8251), .io_enq_valid(bindin8254), .io_deq_ready(bindin8266), .io_deq_data(bindout8260), .io_deq_valid(bindout8263));
  assign bindin8251 = bindout8023[514:3];
  assign bindin8254 = andl8377;
  assign bindin8266 = sel8706;
  assign proxy8272 = {sel8705, sel8699, sel8693};
  always @ (posedge clk) begin
    reg8274 <= proxy8272;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8281 <= 5'h0;
    else
      reg8281 <= sel8687;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8288 <= 32'h0;
    else
      reg8288 <= sub8393;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8295 <= 20'h0;
    else
      reg8295 <= sel8550;
  end
  always @ (posedge clk) begin
    reg8300 <= sub8424;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8307 <= 2'h0;
    else
      reg8307 <= sel8536;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8315 <= 20'h0;
    else
      reg8315 <= sel8670;
  end
  always @ (posedge clk) begin
    reg8320 <= sub8343;
  end
  assign proxy8329 = {reg8330[95:32], sel8568};
  always @ (posedge clk) begin
    if (reset)
      reg8330 <= lit8322;
    else
      reg8330 <= proxy8329;
  end
  assign sub8343 = io_ctx[19:0] - 20'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8350 <= 64'h0;
    else
      reg8350 <= add8355;
  end
  assign add8355 = reg8350 + 64'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8362 <= 3'h0;
    else
      reg8362 <= sel8561;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8370 <= 1'h0;
    else
      reg8370 <= sel8542;
  end
  assign eq8374 = bindout8023[2:0] == 3'h0;
  assign andl8377 = bindout8026 & eq8374;
  assign pad8379 = {{31{1'b0}}, sel8706};
  assign eq8382 = proxy_type7998 == 3'h0;
  assign andl8385 = sel8543 & bindout8006;
  assign andl8387 = andl8385 & eq8382;
  assign pad8389 = {{31{1'b0}}, andl8387};
  assign add8391 = reg8288 + pad8389;
  assign sub8393 = add8391 - pad8379;
  assign andl8396 = bindout2366 & bindout5590;
  assign andl8399 = andl8396 & bindout4728;
  assign andl8401 = andl8399 & bindout6403;
  assign add8410 = io_ctx[31:0] + 32'h1;
  assign shl8414 = add8410 << 32'h2;
  assign add8416 = shl8414 + 32'h3f;
  assign shr8420 = add8416 >> 32'h6;
  assign sub8424 = shr8420[19:0] - 20'h1;
  assign ne8434 = io_ctx[31:0] != 32'h0;
  assign ne8444 = reg8288 != 32'h4;
  assign add8449 = reg8295 + 20'h1;
  assign eq8452 = reg8295 == reg8300;
  assign add8458 = reg8330[31:0] + 32'h1;
  assign eq8465 = reg8315 == io_ctx[19:0];
  assign andl8467 = eq8465 & andl8401;
  assign pad8478 = {{18{1'b0}}, reg8307};
  assign pad8479 = {{416{1'b0}}, reg8330};
  assign ch_cu_stats_t8481 = {bindout5587, bindout2383};
  assign pad8497 = {{96{1'b0}}, ch_cu_stats_t8481};
  assign ch_cu_stats_t8499 = {bindout6400, bindout4745};
  assign pad8515 = {{96{1'b0}}, ch_cu_stats_t8499};
  always @(*) begin
    case (reg8307)
      2'h1: sel8516 = pad8497;
      2'h0: sel8516 = pad8479;
      default: sel8516 = pad8515;
    endcase
  end
  assign add8521 = reg8307 + 2'h1;
  assign eq8525 = reg8307 == 2'h2;
  assign eq8531 = bindout8029 == 32'h0;
  always @(*) begin
    case (reg8362)
      3'h3: sel8535 = 1'h1;
      3'h4: sel8535 = 1'h1;
      default: sel8535 = 1'h0;
    endcase
  end
  assign sel8536 = andl8538 ? add8521 : reg8307;
  assign eq8537 = reg8362 == 3'h4;
  assign andl8538 = eq8537 & bindout8018;
  assign sel8539 = ne8434 ? 1'h0 : 1'h1;
  assign sel8540 = io_start ? sel8539 : reg8370;
  assign sel8541 = eq8531 ? 1'h1 : reg8370;
  always @(*) begin
    case (reg8362)
      3'h0: sel8542 = sel8540;
      3'h5: sel8542 = sel8541;
      default: sel8542 = reg8370;
    endcase
  end
  assign sel8543 = andl8545 ? 1'h1 : 1'h0;
  assign eq8544 = reg8362 == 3'h1;
  assign andl8545 = eq8544 & ne8444;
  assign sel8546 = andl8547 ? 20'h0 : reg8295;
  assign andl8547 = io_start & ne8434;
  assign sel8548 = andl8549 ? add8449 : reg8295;
  assign andl8549 = ne8444 & bindout8006;
  always @(*) begin
    case (reg8362)
      3'h0: sel8550 = sel8546;
      3'h1: sel8550 = sel8548;
      default: sel8550 = reg8295;
    endcase
  end
  assign sel8551 = andl8547 ? 3'h1 : reg8362;
  assign sel8553 = andl8555 ? 3'h2 : reg8362;
  assign andl8554 = bindout8006 & eq8452;
  assign andl8555 = ne8444 & andl8554;
  assign sel8556 = andl8467 ? 3'h3 : reg8362;
  assign sel8557 = bindout8018 ? 3'h4 : reg8362;
  assign sel8558 = andl8559 ? 3'h5 : reg8362;
  assign andl8559 = bindout8018 & eq8525;
  assign sel8560 = eq8531 ? 3'h0 : reg8362;
  always @(*) begin
    case (reg8362)
      3'h0: sel8561 = sel8551;
      3'h1: sel8561 = sel8553;
      3'h2: sel8561 = sel8556;
      3'h3: sel8561 = sel8557;
      3'h4: sel8561 = sel8558;
      3'h5: sel8561 = sel8560;
      default: sel8561 = reg8362;
    endcase
  end
  always @(*) begin
    case (reg8362)
      3'h3: sel8562 = 2'h1;
      3'h4: sel8562 = 2'h2;
      default: sel8562 = 2'h0;
    endcase
  end
  assign sel8563 = (reg8362 == 3'h4) ? pad8478 : 20'h0;
  assign sel8564 = (reg8362 == 3'h4) ? sel8516 : lit8429;
  assign sel8566 = bindout8006 ? reg8330[31:0] : add8458;
  assign sel8567 = ne8444 ? sel8566 : add8458;
  assign sel8568 = (reg8362 == 3'h1) ? sel8567 : reg8330[31:0];
  always @ (posedge clk) begin
    if (reset)
      reg8573 <= 2'h0;
    else
      reg8573 <= sel8682;
  end
  assign eq8582 = 5'h0 == reg8281;
  assign shr8603 = reg8274 >> 32'h20;
  assign add8610 = reg8315 + 20'h1;
  assign sub8615 = reg8281 - 5'h1;
  assign ne8620 = reg8281 != 5'h2;
  assign ne8623 = reg8315 != reg8320;
  assign andl8625 = ne8623 & ne8620;
  assign sel8662 = andl8664 ? 1'h1 : 1'h0;
  assign eq8663 = reg8573 == 2'h2;
  assign andl8664 = eq8663 & bindout4728;
  assign sel8665 = andl8664 ? reg8274[63:0] : 64'h0;
  assign sel8668 = bindout2366 ? add8610 : reg8315;
  assign sel8669 = bindout4728 ? add8610 : reg8315;
  always @(*) begin
    case (reg8573)
      2'h1: sel8670 = sel8668;
      2'h2: sel8670 = sel8669;
      default: sel8670 = reg8315;
    endcase
  end
  assign sel8671 = andl8673 ? 1'h1 : 1'h0;
  assign eq8672 = reg8573 == 2'h1;
  assign andl8673 = eq8672 & bindout2366;
  assign sel8674 = andl8673 ? reg8274[63:0] : 64'h0;
  assign sel8677 = bindout8263 ? 2'h1 : reg8573;
  assign sel8678 = andl8625 ? 2'h2 : 2'h0;
  assign sel8679 = bindout2366 ? sel8678 : 2'h2;
  assign sel8680 = andl8625 ? 2'h1 : 2'h0;
  assign sel8681 = bindout4728 ? sel8680 : 2'h1;
  always @(*) begin
    case (reg8573)
      2'h0: sel8682 = sel8677;
      2'h1: sel8682 = sel8679;
      2'h2: sel8682 = sel8681;
      default: sel8682 = reg8573;
    endcase
  end
  assign sel8683 = eq8582 ? 5'h10 : 5'h11;
  assign sel8684 = bindout8263 ? sel8683 : reg8281;
  assign sel8685 = bindout2366 ? sub8615 : reg8281;
  assign sel8686 = bindout4728 ? sub8615 : reg8281;
  always @(*) begin
    case (reg8573)
      2'h0: sel8687 = sel8684;
      2'h1: sel8687 = sel8685;
      2'h2: sel8687 = sel8686;
      default: sel8687 = reg8281;
    endcase
  end
  assign sel8689 = andl8690 ? bindout8260[31:0] : reg8274[31:0];
  assign andl8690 = bindout8263 & eq8582;
  assign sel8691 = bindout2366 ? shr8603[31:0] : reg8274[31:0];
  assign sel8692 = bindout4728 ? shr8603[31:0] : reg8274[31:0];
  always @(*) begin
    case (reg8573)
      2'h0: sel8693 = sel8689;
      2'h1: sel8693 = sel8691;
      2'h2: sel8693 = sel8692;
      default: sel8693 = reg8274[31:0];
    endcase
  end
  assign sel8695 = eq8582 ? bindout8260[511:32] : bindout8260[479:0];
  assign sel8696 = bindout8263 ? sel8695 : reg8274[511:32];
  assign sel8697 = bindout2366 ? shr8603[511:32] : reg8274[511:32];
  assign sel8698 = bindout4728 ? shr8603[511:32] : reg8274[511:32];
  always @(*) begin
    case (reg8573)
      2'h0: sel8699 = sel8696;
      2'h1: sel8699 = sel8697;
      2'h2: sel8699 = sel8698;
      default: sel8699 = reg8274[511:32];
    endcase
  end
  assign sel8701 = eq8582 ? reg8274[543:512] : bindout8260[511:480];
  assign sel8702 = bindout8263 ? sel8701 : reg8274[543:512];
  assign sel8703 = bindout2366 ? shr8603[543:512] : reg8274[543:512];
  assign sel8704 = bindout4728 ? shr8603[543:512] : reg8274[543:512];
  always @(*) begin
    case (reg8573)
      2'h0: sel8705 = sel8702;
      2'h1: sel8705 = sel8703;
      2'h2: sel8705 = sel8704;
      default: sel8705 = reg8274[543:512];
    endcase
  end
  assign sel8706 = andl8708 ? 1'h1 : 1'h0;
  assign eq8707 = reg8573 == 2'h0;
  assign andl8708 = eq8707 & bindout8263;

  assign io_qpi_rd_req_addr = bindout7935;
  assign io_qpi_rd_req_mdata = bindout7938;
  assign io_qpi_rd_req_valid = bindout7941;
  assign io_qpi_wr_req_addr = bindout7956;
  assign io_qpi_wr_req_mdata = bindout7959;
  assign io_qpi_wr_req_data = bindout7962;
  assign io_qpi_wr_req_valid = bindout7965;
  assign io_done = reg8370;

endmodule
