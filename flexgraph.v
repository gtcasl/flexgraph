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
  wire andl185; // /home/blaise/dev/cash/include/htl/queue.h(102:0)
  wire andl188; // /home/blaise/dev/cash/include/htl/queue.h(103:0)
  reg[1:0] reg195; // /home/blaise/dev/cash/include/htl/queue.h(124:0)
  reg[2:0] reg205; // /home/blaise/dev/cash/include/htl/queue.h(125:0)
  wire notl208; // /home/blaise/dev/cash/include/htl/queue.h(130:0)
  wire andl211; // /home/blaise/dev/cash/include/htl/queue.h(130:1)
  wire notl214; // /home/blaise/dev/cash/include/htl/queue.h(127:1)
  wire andl217; // /home/blaise/dev/cash/include/htl/queue.h(127:2)
  wire[1:0] add222; // /home/blaise/dev/cash/include/htl/queue.h(128:1)
  wire[2:0] proxy227; // /home/blaise/dev/cash/include/htl/queue.h(129:0)
  wire[1:0] sub233; // /home/blaise/dev/cash/include/htl/queue.h(131:1)
  wire[2:0] proxy238; // /home/blaise/dev/cash/include/htl/queue.h(132:0)
  reg[2:0] sel241; // /home/blaise/dev/cash/include/htl/queue.h(127:0)
  reg[1:0] sel242; // /home/blaise/dev/cash/include/htl/queue.h(127:0)
  wire andb250; // /home/blaise/dev/cash/include/htl/queue.h(137:1)
  wire orb253; // /home/blaise/dev/cash/include/htl/queue.h(137:2)
  wire orb261; // /home/blaise/dev/cash/include/htl/queue.h(138:1)
  wire andb267; // /home/blaise/dev/cash/include/htl/queue.h(137:5)
  wire orb270; // /home/blaise/dev/cash/include/htl/queue.h(137:6)
  reg[511:0] reg284; // /usr/include/c++/7/array(94:1)
  reg[511:0] reg289; // /usr/include/c++/7/array(94:2)
  wire[511:0] sel292; // /home/blaise/dev/cash/include/htl/queue.h(143:1)
  wire[511:0] sel295; // /home/blaise/dev/cash/include/htl/queue.h(143:0)
  wire[511:0] sel298; // /home/blaise/dev/cash/include/htl/queue.h(145:0)
  wire notl302; // /home/blaise/dev/cash/include/htl/queue.h(148:0)
  wire notl306; // /home/blaise/dev/cash/include/htl/queue.h(149:0)

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
  wire andl511; // /home/blaise/dev/cash/include/htl/queue.h(25:0)
  wire andl514; // /home/blaise/dev/cash/include/htl/queue.h(26:0)
  reg[5:0] reg521; // /home/blaise/dev/cash/include/htl/queue.h(28:0)
  wire notl527; // /home/blaise/dev/cash/include/htl/queue.h(31:0)
  wire andl530; // /home/blaise/dev/cash/include/htl/queue.h(31:1)
  wire notl533; // /home/blaise/dev/cash/include/htl/queue.h(29:1)
  wire andl536; // /home/blaise/dev/cash/include/htl/queue.h(29:2)
  wire[5:0] add541; // /home/blaise/dev/cash/include/htl/queue.h(30:1)
  wire[5:0] sub545; // /home/blaise/dev/cash/include/htl/queue.h(32:1)
  reg[5:0] sel547; // /home/blaise/dev/cash/include/htl/queue.h(29:0)
  reg reg553; // /home/blaise/dev/cash/include/htl/queue.h(35:0)
  wire eq566; // /home/blaise/dev/cash/include/htl/queue.h(36:3)
  wire andl568; // /home/blaise/dev/cash/include/htl/queue.h(36:3)
  wire andl570; // /home/blaise/dev/cash/include/htl/queue.h(36:3)
  reg sel575; // /home/blaise/dev/cash/include/htl/queue.h(36:0)
  reg reg580; // /home/blaise/dev/cash/include/htl/queue.h(42:0)
  wire eq594; // /home/blaise/dev/cash/include/htl/queue.h(43:3)
  wire andl596; // /home/blaise/dev/cash/include/htl/queue.h(43:3)
  wire andl598; // /home/blaise/dev/cash/include/htl/queue.h(43:3)
  reg sel602; // /home/blaise/dev/cash/include/htl/queue.h(43:0)
  reg[4:0] reg608; // /home/blaise/dev/cash/include/htl/queue.h(49:0)
  wire[4:0] add613; // /home/blaise/dev/cash/include/htl/queue.h(51:1)
  wire[4:0] sel615; // /home/blaise/dev/cash/include/htl/queue.h(50:0)
  reg[511:0] mem616 [0:31]; // /home/blaise/dev/cash/include/htl/queue.h(54:0)
  reg[4:0] reg624; // /home/blaise/dev/cash/include/htl/queue.h(65:0)
  reg[4:0] reg630; // /home/blaise/dev/cash/include/htl/queue.h(65:1)
  wire[4:0] add635; // /home/blaise/dev/cash/include/htl/queue.h(69:1)
  wire[4:0] sel637; // /home/blaise/dev/cash/include/htl/queue.h(66:0)
  wire[4:0] sel638; // /home/blaise/dev/cash/include/htl/queue.h(66:0)
  wire eq640; // /home/blaise/dev/cash/include/htl/queue.h(76:1)
  wire andl642; // /home/blaise/dev/cash/include/htl/queue.h(76:1)
  wire orl645; // /home/blaise/dev/cash/include/htl/queue.h(76:2)
  wire andl648; // /home/blaise/dev/cash/include/htl/queue.h(76:3)
  reg reg652; // /home/blaise/dev/cash/include/htl/queue.h(76:0)
  reg[511:0] reg655; // /home/blaise/dev/cash/include/htl/queue.h(77:0)
  wire[511:0] marport659; // /home/blaise/dev/cash/include/htl/queue.h(78:1)
  reg[511:0] reg662; // /home/blaise/dev/cash/include/htl/queue.h(78:0)
  wire[511:0] sel664; // /home/blaise/dev/cash/include/htl/queue.h(79:0)
  wire notl667; // /home/blaise/dev/cash/include/htl/queue.h(83:0)
  wire notl670; // /home/blaise/dev/cash/include/htl/queue.h(84:0)

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
  wire[22:0] io_lsu_rd_req_data75; // dcsc_walk.cpp(41:0)
  reg[19:0] reg101; // dcsc_walk.cpp(41:1)
  reg[19:0] reg108; // dcsc_walk.cpp(41:2)
  reg[19:0] reg113; // dcsc_walk.cpp(41:3)
  reg[19:0] reg118; // dcsc_walk.cpp(41:4)
  reg[19:0] reg123; // dcsc_walk.cpp(41:5)
  reg[19:0] reg128; // dcsc_walk.cpp(41:6)
  reg[19:0] reg135; // dcsc_walk.cpp(41:7)
  reg[19:0] reg142; // dcsc_walk.cpp(41:8)
  reg[19:0] reg147; // dcsc_walk.cpp(41:9)
  reg[19:0] reg152; // dcsc_walk.cpp(41:10)
  reg[19:0] reg157; // dcsc_walk.cpp(41:11)
  reg[5:0] reg162; // dcsc_walk.cpp(41:12)
  reg[31:0] reg167; // dcsc_walk.cpp(41:13)
  wire ch_llqueue310_clk; // dcsc_walk.cpp(41:14)
  wire ch_llqueue310_reset; // dcsc_walk.cpp(41:14)
  wire[511:0] ch_llqueue310_io_enq_data; // dcsc_walk.cpp(41:14)
  wire ch_llqueue310_io_enq_valid; // dcsc_walk.cpp(41:14)
  wire[511:0] ch_llqueue310_io_deq_data; // dcsc_walk.cpp(41:14)
  wire ch_llqueue310_io_deq_valid; // dcsc_walk.cpp(41:14)
  wire ch_llqueue310_io_deq_ready; // dcsc_walk.cpp(41:14)
  wire ch_llqueue473_clk; // dcsc_walk.cpp(41:15)
  wire ch_llqueue473_reset; // dcsc_walk.cpp(41:15)
  wire[511:0] ch_llqueue473_io_enq_data; // dcsc_walk.cpp(41:15)
  wire ch_llqueue473_io_enq_valid; // dcsc_walk.cpp(41:15)
  wire[511:0] ch_llqueue473_io_deq_data; // dcsc_walk.cpp(41:15)
  wire ch_llqueue473_io_deq_valid; // dcsc_walk.cpp(41:15)
  wire ch_llqueue473_io_deq_ready; // dcsc_walk.cpp(41:15)
  wire ch_queue674_clk; // dcsc_walk.cpp(41:16)
  wire ch_queue674_reset; // dcsc_walk.cpp(41:16)
  wire[511:0] ch_queue674_io_enq_data; // dcsc_walk.cpp(41:16)
  wire ch_queue674_io_enq_valid; // dcsc_walk.cpp(41:16)
  wire[511:0] ch_queue674_io_deq_data; // dcsc_walk.cpp(41:16)
  wire ch_queue674_io_deq_ready; // dcsc_walk.cpp(41:16)
  wire ch_queue875_clk; // dcsc_walk.cpp(41:17)
  wire ch_queue875_reset; // dcsc_walk.cpp(41:17)
  wire[511:0] ch_queue875_io_enq_data; // dcsc_walk.cpp(41:17)
  wire ch_queue875_io_enq_valid; // dcsc_walk.cpp(41:17)
  wire[511:0] ch_queue875_io_deq_data; // dcsc_walk.cpp(41:17)
  wire ch_queue875_io_deq_ready; // dcsc_walk.cpp(41:17)
  wire[5:0] ch_queue875_io_size; // dcsc_walk.cpp(41:17)
  wire ch_llqueue1038_clk; // dcsc_walk.cpp(41:18)
  wire ch_llqueue1038_reset; // dcsc_walk.cpp(41:18)
  wire[511:0] ch_llqueue1038_io_enq_data; // dcsc_walk.cpp(41:18)
  wire ch_llqueue1038_io_enq_valid; // dcsc_walk.cpp(41:18)
  wire[511:0] ch_llqueue1038_io_deq_data; // dcsc_walk.cpp(41:18)
  wire ch_llqueue1038_io_deq_valid; // dcsc_walk.cpp(41:18)
  wire ch_llqueue1038_io_deq_ready; // dcsc_walk.cpp(41:18)
  wire ch_llqueue1201_clk; // dcsc_walk.cpp(41:19)
  wire ch_llqueue1201_reset; // dcsc_walk.cpp(41:19)
  wire[511:0] ch_llqueue1201_io_enq_data; // dcsc_walk.cpp(41:19)
  wire ch_llqueue1201_io_enq_valid; // dcsc_walk.cpp(41:19)
  wire[511:0] ch_llqueue1201_io_deq_data; // dcsc_walk.cpp(41:19)
  wire ch_llqueue1201_io_deq_valid; // dcsc_walk.cpp(41:19)
  wire ch_llqueue1201_io_deq_ready; // dcsc_walk.cpp(41:19)
  reg[7:0] reg1228; // dcsc_walk.cpp(41:20)
  reg[7:0] reg1234; // dcsc_walk.cpp(41:21)
  reg[7:0] reg1240; // dcsc_walk.cpp(41:22)
  reg[7:0] reg1246; // dcsc_walk.cpp(41:23)
  reg[7:0] reg1252; // dcsc_walk.cpp(41:24)
  reg[7:0] reg1258; // dcsc_walk.cpp(41:25)
  reg[511:0] reg1263; // dcsc_walk.cpp(41:26)
  reg[511:0] reg1268; // dcsc_walk.cpp(41:27)
  reg[511:0] reg1273; // dcsc_walk.cpp(41:28)
  reg[511:0] reg1278; // dcsc_walk.cpp(41:29)
  reg[31:0] reg1283; // dcsc_walk.cpp(41:30)
  reg[63:0] reg1288; // dcsc_walk.cpp(41:31)
  wire[351:0] proxy1305; // dcsc_walk.cpp(41:32)
  reg[351:0] reg1306; // dcsc_walk.cpp(41:32)
  wire eq1333; // lsu.h(23:0)
  wire andl1336; // dcsc_walk.cpp(59:1)
  wire eq1341; // lsu.h(23:1)
  wire andl1344; // dcsc_walk.cpp(60:1)
  wire eq1349; // lsu.h(23:2)
  wire andl1352; // dcsc_walk.cpp(61:1)
  wire eq1357; // lsu.h(23:3)
  wire andl1360; // dcsc_walk.cpp(62:1)
  wire eq1365; // lsu.h(23:4)
  wire andl1368; // dcsc_walk.cpp(63:1)
  wire eq1373; // lsu.h(23:5)
  wire andl1376; // dcsc_walk.cpp(64:1)
  reg[22:0] reg1383; // dcsc_walk.cpp(71:0)
  wire eq1387; // dcsc_walk.cpp(6:0)
  wire eq1391; // lsu.h(23:6)
  wire andl1394; // dcsc_walk.cpp(78:1)
  wire andl1396; // dcsc_walk.cpp(78:1)
  wire notl1399; // dcsc_walk.cpp(82:0)
  wire andl1401; // dcsc_walk.cpp(82:0)
  wire notl1404; // dcsc_walk.cpp(79:1)
  wire andl1407; // dcsc_walk.cpp(79:2)
  wire[7:0] add1412; // dcsc_walk.cpp(80:1)
  wire[7:0] sub1416; // dcsc_walk.cpp(83:1)
  reg[7:0] sel1418; // dcsc_walk.cpp(79:0)
  wire eq1421; // lsu.h(23:7)
  wire andl1426; // dcsc_walk.cpp(78:3)
  wire notl1429; // dcsc_walk.cpp(82:1)
  wire andl1431; // dcsc_walk.cpp(82:1)
  wire notl1434; // dcsc_walk.cpp(79:4)
  wire andl1437; // dcsc_walk.cpp(79:5)
  wire[7:0] add1441; // dcsc_walk.cpp(80:3)
  wire[7:0] sub1445; // dcsc_walk.cpp(83:3)
  reg[7:0] sel1447; // dcsc_walk.cpp(79:3)
  wire eq1450; // lsu.h(23:8)
  wire andl1455; // dcsc_walk.cpp(78:5)
  wire notl1458; // dcsc_walk.cpp(82:2)
  wire andl1460; // dcsc_walk.cpp(82:2)
  wire notl1463; // dcsc_walk.cpp(79:7)
  wire andl1466; // dcsc_walk.cpp(79:8)
  wire[7:0] add1470; // dcsc_walk.cpp(80:5)
  wire[7:0] sub1474; // dcsc_walk.cpp(83:5)
  reg[7:0] sel1476; // dcsc_walk.cpp(79:6)
  wire eq1479; // lsu.h(23:9)
  wire andl1484; // dcsc_walk.cpp(78:7)
  wire notl1487; // dcsc_walk.cpp(82:3)
  wire andl1489; // dcsc_walk.cpp(82:3)
  wire andl1495; // dcsc_walk.cpp(79:11)
  wire[7:0] add1499; // dcsc_walk.cpp(80:7)
  wire[7:0] sub1503; // dcsc_walk.cpp(83:7)
  reg[7:0] sel1505; // dcsc_walk.cpp(79:9)
  wire eq1508; // lsu.h(23:10)
  wire andl1513; // dcsc_walk.cpp(78:9)
  wire notl1516; // dcsc_walk.cpp(82:4)
  wire andl1518; // dcsc_walk.cpp(82:4)
  wire notl1521; // dcsc_walk.cpp(79:13)
  wire andl1524; // dcsc_walk.cpp(79:14)
  wire[7:0] add1528; // dcsc_walk.cpp(80:9)
  wire[7:0] sub1532; // dcsc_walk.cpp(83:9)
  reg[7:0] sel1534; // dcsc_walk.cpp(79:12)
  wire eq1537; // lsu.h(23:11)
  wire andl1542; // dcsc_walk.cpp(78:11)
  wire notl1545; // dcsc_walk.cpp(82:5)
  wire andl1547; // dcsc_walk.cpp(82:5)
  wire notl1550; // dcsc_walk.cpp(79:16)
  wire andl1553; // dcsc_walk.cpp(79:17)
  wire[7:0] add1557; // dcsc_walk.cpp(80:11)
  wire[7:0] sub1561; // dcsc_walk.cpp(83:11)
  reg[7:0] sel1563; // dcsc_walk.cpp(79:15)
  reg reg1570; // dcsc_walk.cpp(110:0)
  reg reg1577; // dcsc_walk.cpp(111:0)
  reg reg1584; // dcsc_walk.cpp(112:0)
  reg reg1598; // dcsc_walk.cpp(114:0)
  reg reg1605; // dcsc_walk.cpp(115:0)
  wire[84:0] proxy1609; // dcsc_walk.cpp(118:0)
  reg[84:0] reg1610; // dcsc_walk.cpp(118:0)
  reg reg1625; // dcsc_walk.cpp(121:0)
  wire[19:0] sub1645; // dcsc_walk.cpp(144:1)
  wire[19:0] shl1653; // dcsc_walk.cpp(156:0)
  wire[19:0] shr1657; // dcsc_walk.cpp(156:0)
  wire ne1662; // dcsc_walk.cpp(157:2)
  wire[31:0] add1671; // dcsc_walk.cpp(164:1)
  wire ne1687; // dcsc_walk.cpp(175:2)
  wire[31:0] add1694; // dcsc_walk.cpp(183:1)
  wire andl1701; // dcsc_walk.cpp(192:1)
  wire[19:0] andb1707; // dcsc_walk.cpp(195:3)
  wire[19:0] shl1711; // dcsc_walk.cpp(195:3)
  wire[511:0] shr1713; // dcsc_walk.cpp(195:1)
  wire[511:0] shr1726; // dcsc_walk.cpp(200:1)
  wire ne1736; // dcsc_walk.cpp(204:3)
  wire[19:0] add1746; // dcsc_walk.cpp(214:4)
  wire[19:0] andb1748; // dcsc_walk.cpp(214:4)
  wire[19:0] shl1751; // dcsc_walk.cpp(214:4)
  wire[511:0] shr1753; // dcsc_walk.cpp(214:1)
  wire[19:0] shl1765; // dcsc_walk.cpp(221:1)
  wire[19:0] shr1768; // dcsc_walk.cpp(221:1)
  wire[19:0] sub1795; // dcsc_walk.cpp(253:1)
  wire[19:0] shr1799; // dcsc_walk.cpp(255:0)
  wire[19:0] shl1803; // dcsc_walk.cpp(256:0)
  wire[19:0] shr1806; // dcsc_walk.cpp(256:0)
  wire eq1809; // dcsc_walk.cpp(257:1)
  wire[19:0] andb1814; // dcsc_walk.cpp(259:4)
  wire[19:0] shl1817; // dcsc_walk.cpp(259:4)
  wire[511:0] shr1819; // dcsc_walk.cpp(259:2)
  wire[19:0] andb1830; // dcsc_walk.cpp(260:4)
  wire[31:0] shl1832; // dcsc_walk.cpp(260:2)
  wire[31:0] andb1835; // dcsc_walk.cpp(260:5)
  wire ne1837; // dcsc_walk.cpp(260:5)
  wire[19:0] shl1847; // dcsc_walk.cpp(276:0)
  wire[19:0] shr1850; // dcsc_walk.cpp(276:0)
  wire eq1853; // dcsc_walk.cpp(277:1)
  wire ne1862; // dcsc_walk.cpp(291:2)
  wire[31:0] add1869; // dcsc_walk.cpp(299:1)
  wire[511:0] shr1888; // dcsc_walk.cpp(314:2)
  wire[31:0] andb1902; // dcsc_walk.cpp(315:5)
  wire ne1904; // dcsc_walk.cpp(315:5)
  wire ne1922; // dcsc_walk.cpp(331:2)
  wire[31:0] add1928; // dcsc_walk.cpp(339:1)
  wire[19:0] shl1936; // dcsc_walk.cpp(348:0)
  wire[19:0] shr1939; // dcsc_walk.cpp(348:0)
  wire[19:0] shl1945; // dcsc_walk.cpp(349:1)
  wire[19:0] add1947; // dcsc_walk.cpp(349:1)
  wire[19:0] shr1950; // dcsc_walk.cpp(349:1)
  wire[19:0] sub1955; // dcsc_walk.cpp(355:1)
  wire[19:0] sub1961; // dcsc_walk.cpp(357:1)
  wire ne1969; // dcsc_walk.cpp(365:2)
  wire[31:0] add1976; // dcsc_walk.cpp(373:1)
  wire ne1985; // dcsc_walk.cpp(384:2)
  wire[19:0] add1990; // dcsc_walk.cpp(388:1)
  wire ne1993; // dcsc_walk.cpp(389:1)
  wire[31:0] add2000; // dcsc_walk.cpp(398:1)
  wire eq2007; // dcsc_walk.cpp(409:1)
  wire[19:0] andb2013; // dcsc_walk.cpp(414:3)
  wire[19:0] shl2016; // dcsc_walk.cpp(414:3)
  wire[511:0] shr2018; // dcsc_walk.cpp(414:1)
  wire[511:0] shr2030; // dcsc_walk.cpp(417:1)
  wire[19:0] andb2043; // dcsc_walk.cpp(428:3)
  wire[19:0] shl2046; // dcsc_walk.cpp(428:3)
  wire[511:0] shr2048; // dcsc_walk.cpp(428:1)
  wire[511:0] shr2060; // dcsc_walk.cpp(429:1)
  wire[19:0] add2068; // dcsc_walk.cpp(437:1)
  wire ne2071; // dcsc_walk.cpp(439:1)
  wire eq2078; // dcsc_walk.cpp(441:3)
  wire[31:0] add2089; // dcsc_walk.cpp(457:1)
  wire ne2097; // dcsc_walk.cpp(468:1)
  wire[511:0] shr2119; // dcsc_walk.cpp(484:1)
  wire[511:0] shr2131; // dcsc_walk.cpp(486:1)
  wire[63:0] sub2145; // dcsc_walk.cpp(498:0)
  wire lt2154; // /home/blaise/dev/cash/include/select.h(132:0)
  wire[31:0] sel2156; // dcsc_walk.cpp(509:1)
  wire eq2160; // dcsc_walk.cpp(509:3)
  wire[31:0] sel2162; // dcsc_walk.cpp(509:0)
  wire gt2165; // /home/blaise/dev/cash/include/select.h(137:0)
  wire[31:0] sel2167; // dcsc_walk.cpp(510:0)
  wire[31:0] add2170; // dcsc_walk.cpp(511:0)
  wire[31:0] add2174; // dcsc_walk.cpp(512:1)
  wire sel2181; // dcsc_walk.cpp(441:0)
  wire sel2182; // dcsc_walk.cpp(439:0)
  wire sel2183; // dcsc_walk.cpp(435:0)
  wire eq2184; // dcsc_walk.cpp(138:0)
  wire andb2185; // dcsc_walk.cpp(138:0)
  reg sel2186; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2188; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2190; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2192; // dcsc_walk.cpp(138:0)
  reg sel2194; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2195; // dcsc_walk.cpp(410:0)
  wire[31:0] sel2196; // dcsc_walk.cpp(409:0)
  wire eq2197; // dcsc_walk.cpp(138:0)
  wire andb2198; // dcsc_walk.cpp(138:0)
  wire sel2199; // dcsc_walk.cpp(410:0)
  wire andb2200; // dcsc_walk.cpp(138:0)
  wire andb2202; // dcsc_walk.cpp(138:0)
  wire[5:0] sel2203; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2209; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2210; // dcsc_walk.cpp(387:0)
  wire andb2211; // dcsc_walk.cpp(138:0)
  reg[19:0] sel2212; // dcsc_walk.cpp(138:0)
  wire sel2213; // dcsc_walk.cpp(308:0)
  wire eq2214; // dcsc_walk.cpp(138:0)
  wire andb2215; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2216; // dcsc_walk.cpp(308:0)
  wire[19:0] sel2219; // dcsc_walk.cpp(277:0)
  wire[19:0] sel2220; // dcsc_walk.cpp(138:0)
  wire sel2221; // dcsc_walk.cpp(157:0)
  wire sel2222; // dcsc_walk.cpp(175:0)
  wire sel2224; // dcsc_walk.cpp(291:0)
  wire sel2225; // dcsc_walk.cpp(331:0)
  wire sel2226; // dcsc_walk.cpp(365:0)
  wire sel2227; // dcsc_walk.cpp(384:0)
  reg sel2228; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2229; // dcsc_walk.cpp(192:0)
  wire eq2230; // dcsc_walk.cpp(138:0)
  wire andb2231; // dcsc_walk.cpp(138:0)
  reg[2:0] sel2232; // dcsc_walk.cpp(138:0)
  reg[19:0] sel2233; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2234; // dcsc_walk.cpp(192:0)
  reg[19:0] sel2235; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2236; // dcsc_walk.cpp(240:0)
  reg[19:0] sel2237; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2238; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2239; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2240; // dcsc_walk.cpp(257:0)
  wire[19:0] sel2241; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2242; // dcsc_walk.cpp(141:0)
  wire[22:0] sel2243; // dcsc_walk.cpp(160:0)
  wire andb2244; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2245; // dcsc_walk.cpp(178:0)
  wire andb2246; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2247; // dcsc_walk.cpp(204:0)
  wire[22:0] sel2248; // dcsc_walk.cpp(192:0)
  wire[22:0] sel2249; // dcsc_walk.cpp(226:0)
  wire[22:0] sel2251; // dcsc_walk.cpp(240:0)
  wire[22:0] sel2252; // dcsc_walk.cpp(260:0)
  wire[22:0] sel2253; // dcsc_walk.cpp(257:0)
  wire[22:0] sel2254; // dcsc_walk.cpp(277:0)
  wire[22:0] sel2255; // dcsc_walk.cpp(294:0)
  wire andb2256; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2257; // dcsc_walk.cpp(315:0)
  wire[22:0] sel2258; // dcsc_walk.cpp(308:0)
  wire[22:0] sel2259; // dcsc_walk.cpp(334:0)
  wire andb2260; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2261; // dcsc_walk.cpp(368:0)
  wire andb2262; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2263; // dcsc_walk.cpp(389:0)
  wire[22:0] sel2264; // dcsc_walk.cpp(387:0)
  wire[22:0] sel2266; // dcsc_walk.cpp(409:0)
  wire[22:0] sel2267; // dcsc_walk.cpp(441:0)
  wire[22:0] sel2268; // dcsc_walk.cpp(439:0)
  wire[22:0] sel2269; // dcsc_walk.cpp(435:0)
  wire[22:0] sel2270; // dcsc_walk.cpp(470:0)
  wire[22:0] sel2271; // dcsc_walk.cpp(468:0)
  wire[22:0] sel2273; // dcsc_walk.cpp(507:0)
  reg[22:0] sel2274; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2275; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2276; // dcsc_walk.cpp(141:0)
  reg[19:0] sel2277; // dcsc_walk.cpp(138:0)
  wire[63:0] sel2278; // dcsc_walk.cpp(141:0)
  wire andb2280; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2282; // dcsc_walk.cpp(507:0)
  wire eq2283; // dcsc_walk.cpp(138:0)
  wire andb2284; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2286; // dcsc_walk.cpp(507:0)
  wire[31:0] sel2290; // dcsc_walk.cpp(507:0)
  wire[31:0] sel2294; // dcsc_walk.cpp(507:0)
  wire[31:0] sel2298; // dcsc_walk.cpp(160:0)
  wire[31:0] sel2299; // dcsc_walk.cpp(157:0)
  wire[31:0] sel2300; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2302; // dcsc_walk.cpp(178:0)
  wire[31:0] sel2303; // dcsc_walk.cpp(175:0)
  wire[31:0] sel2306; // dcsc_walk.cpp(240:0)
  reg[31:0] sel2307; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2309; // dcsc_walk.cpp(368:0)
  wire[31:0] sel2310; // dcsc_walk.cpp(365:0)
  wire[31:0] sel2311; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2313; // dcsc_walk.cpp(387:0)
  wire[31:0] sel2314; // dcsc_walk.cpp(384:0)
  wire[31:0] sel2315; // dcsc_walk.cpp(409:0)
  reg[31:0] sel2316; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2318; // dcsc_walk.cpp(334:0)
  wire[31:0] sel2319; // dcsc_walk.cpp(331:0)
  wire[31:0] sel2320; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2322; // dcsc_walk.cpp(294:0)
  wire[31:0] sel2323; // dcsc_walk.cpp(291:0)
  wire[31:0] sel2324; // dcsc_walk.cpp(308:0)
  reg[31:0] sel2325; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2327; // dcsc_walk.cpp(435:0)
  reg[31:0] sel2329; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2330; // dcsc_walk.cpp(410:0)
  wire[19:0] sel2334; // dcsc_walk.cpp(141:0)
  wire sel2337; // dcsc_walk.cpp(192:0)
  wire sel2340; // dcsc_walk.cpp(192:0)
  wire sel2341; // dcsc_walk.cpp(240:0)
  reg sel2342; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2343; // dcsc_walk.cpp(192:0)
  wire[19:0] sel2344; // dcsc_walk.cpp(435:0)
  reg[19:0] sel2345; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2346; // dcsc_walk.cpp(192:0)

  assign io_lsu_rd_req_data75 = {sel2233, sel2232};
  always @ (posedge clk) begin
    reg101 <= sel2277;
  end
  always @ (posedge clk) begin
    reg108 <= sel2334;
  end
  always @ (posedge clk) begin
    reg113 <= sel2235;
  end
  always @ (posedge clk) begin
    reg118 <= sel2345;
  end
  always @ (posedge clk) begin
    reg123 <= sel2237;
  end
  always @ (posedge clk) begin
    reg128 <= sel2238;
  end
  always @ (posedge clk) begin
    if (reset)
      reg135 <= 20'hfffff;
    else
      reg135 <= sel2241;
  end
  always @ (posedge clk) begin
    if (reset)
      reg142 <= 20'hfffff;
    else
      reg142 <= sel2220;
  end
  always @ (posedge clk) begin
    reg147 <= sel2212;
  end
  always @ (posedge clk) begin
    reg152 <= sel2209;
  end
  always @ (posedge clk) begin
    reg157 <= sel2275;
  end
  always @ (posedge clk) begin
    reg162 <= sel2203;
  end
  always @ (posedge clk) begin
    reg167 <= sel2196;
  end
  assign ch_llqueue310_clk = clk;
  assign ch_llqueue310_reset = reset;
  ch_llqueue ch_llqueue310(.clk(ch_llqueue310_clk), .reset(ch_llqueue310_reset), .io_enq_data(ch_llqueue310_io_enq_data), .io_enq_valid(ch_llqueue310_io_enq_valid), .io_deq_ready(ch_llqueue310_io_deq_ready), .io_deq_data(ch_llqueue310_io_deq_data), .io_deq_valid(ch_llqueue310_io_deq_valid));
  assign ch_llqueue310_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue310_io_enq_valid = andl1336;
  assign ch_llqueue310_io_deq_ready = reg1570;
  assign ch_llqueue473_clk = clk;
  assign ch_llqueue473_reset = reset;
  ch_llqueue ch_llqueue473(.clk(ch_llqueue473_clk), .reset(ch_llqueue473_reset), .io_enq_data(ch_llqueue473_io_enq_data), .io_enq_valid(ch_llqueue473_io_enq_valid), .io_deq_ready(ch_llqueue473_io_deq_ready), .io_deq_data(ch_llqueue473_io_deq_data), .io_deq_valid(ch_llqueue473_io_deq_valid));
  assign ch_llqueue473_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue473_io_enq_valid = andl1344;
  assign ch_llqueue473_io_deq_ready = reg1577;
  assign ch_queue674_clk = clk;
  assign ch_queue674_reset = reset;
  ch_queue ch_queue674(.clk(ch_queue674_clk), .reset(ch_queue674_reset), .io_enq_data(ch_queue674_io_enq_data), .io_enq_valid(ch_queue674_io_enq_valid), .io_deq_ready(ch_queue674_io_deq_ready), .io_deq_data(ch_queue674_io_deq_data));
  assign ch_queue674_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_queue674_io_enq_valid = andl1352;
  assign ch_queue674_io_deq_ready = reg1584;
  assign ch_queue875_clk = clk;
  assign ch_queue875_reset = reset;
  ch_queue ch_queue875(.clk(ch_queue875_clk), .reset(ch_queue875_reset), .io_enq_data(ch_queue875_io_enq_data), .io_enq_valid(ch_queue875_io_enq_valid), .io_deq_ready(ch_queue875_io_deq_ready), .io_deq_data(ch_queue875_io_deq_data), .io_size(ch_queue875_io_size));
  assign ch_queue875_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_queue875_io_enq_valid = andl1360;
  assign ch_queue875_io_deq_ready = reg1584;
  assign ch_llqueue1038_clk = clk;
  assign ch_llqueue1038_reset = reset;
  ch_llqueue ch_llqueue1038(.clk(ch_llqueue1038_clk), .reset(ch_llqueue1038_reset), .io_enq_data(ch_llqueue1038_io_enq_data), .io_enq_valid(ch_llqueue1038_io_enq_valid), .io_deq_ready(ch_llqueue1038_io_deq_ready), .io_deq_data(ch_llqueue1038_io_deq_data), .io_deq_valid(ch_llqueue1038_io_deq_valid));
  assign ch_llqueue1038_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue1038_io_enq_valid = andl1368;
  assign ch_llqueue1038_io_deq_ready = reg1598;
  assign ch_llqueue1201_clk = clk;
  assign ch_llqueue1201_reset = reset;
  ch_llqueue ch_llqueue1201(.clk(ch_llqueue1201_clk), .reset(ch_llqueue1201_reset), .io_enq_data(ch_llqueue1201_io_enq_data), .io_enq_valid(ch_llqueue1201_io_enq_valid), .io_deq_ready(ch_llqueue1201_io_deq_ready), .io_deq_data(ch_llqueue1201_io_deq_data), .io_deq_valid(ch_llqueue1201_io_deq_valid));
  assign ch_llqueue1201_io_enq_data = io_lsu_rd_rsp_data[514:3];
  assign ch_llqueue1201_io_enq_valid = andl1376;
  assign ch_llqueue1201_io_deq_ready = reg1605;
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
    reg1263 <= sel2229;
  end
  always @ (posedge clk) begin
    reg1268 <= sel2346;
  end
  always @ (posedge clk) begin
    reg1273 <= sel2216;
  end
  always @ (posedge clk) begin
    reg1278 <= sel2330;
  end
  always @ (posedge clk) begin
    reg1283 <= sel2239;
  end
  always @ (posedge clk) begin
    reg1288 <= sel2278;
  end
  assign proxy1305 = {sel2329, sel2325, sel2320, sel2316, sel2311, sel2307, sel2300, sel2294, sel2290, sel2286, sel2282};
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
      reg1383 <= sel2274;
  end
  assign eq1387 = reg1383 == 23'h1;
  assign eq1391 = sel2232 == 3'h1;
  assign andl1394 = sel2228 && io_lsu_rd_req_ready;
  assign andl1396 = andl1394 && eq1391;
  assign notl1399 = !andl1396;
  assign andl1401 = notl1399 && reg1570;
  assign notl1404 = !reg1570;
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
  assign eq1421 = sel2232 == 3'h2;
  assign andl1426 = andl1394 && eq1421;
  assign notl1429 = !andl1426;
  assign andl1431 = notl1429 && reg1577;
  assign notl1434 = !reg1577;
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
  assign eq1450 = sel2232 == 3'h3;
  assign andl1455 = andl1394 && eq1450;
  assign notl1458 = !andl1455;
  assign andl1460 = notl1458 && reg1584;
  assign notl1463 = !reg1584;
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
  assign eq1479 = sel2232 == 3'h4;
  assign andl1484 = andl1394 && eq1479;
  assign notl1487 = !andl1484;
  assign andl1489 = notl1487 && reg1584;
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
  assign eq1508 = sel2232 == 3'h5;
  assign andl1513 = andl1394 && eq1508;
  assign notl1516 = !andl1513;
  assign andl1518 = notl1516 && reg1598;
  assign notl1521 = !reg1598;
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
  assign eq1537 = sel2232 == 3'h6;
  assign andl1542 = andl1394 && eq1537;
  assign notl1545 = !andl1542;
  assign andl1547 = notl1545 && reg1605;
  assign notl1550 = !reg1605;
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
    if (reset)
      reg1570 <= 1'h0;
    else
      reg1570 <= sel2337;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1577 <= 1'h0;
    else
      reg1577 <= sel2342;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1584 <= 1'h0;
    else
      reg1584 <= sel2183;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1598 <= 1'h0;
    else
      reg1598 <= sel2199;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1605 <= 1'h0;
    else
      reg1605 <= sel2213;
  end
  assign proxy1609 = {sel2194, sel2192, sel2190, sel2188};
  always @ (posedge clk) begin
    reg1610 <= proxy1609;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1625 <= 1'h0;
    else
      reg1625 <= sel2186;
  end
  assign sub1645 = io_ctrl_start_data[51:32] - 20'h1;
  assign shl1653 = reg101 << 32'h2;
  assign shr1657 = shl1653 >> 32'h6;
  assign ne1662 = reg1228 != 8'h2;
  assign add1671 = reg1306[159:128] + 32'h1;
  assign ne1687 = reg1234 != 8'h2;
  assign add1694 = reg1306[191:160] + 32'h1;
  assign andl1701 = ch_llqueue310_io_deq_valid && ch_llqueue473_io_deq_valid;
  assign andb1707 = reg101 & 20'hf;
  assign shl1711 = andb1707 << 32'h5;
  assign shr1713 = ch_llqueue310_io_deq_data >> shl1711;
  assign shr1726 = ch_llqueue473_io_deq_data >> shl1711;
  assign ne1736 = andb1707 != 20'hf;
  assign add1746 = reg101 + 20'h1;
  assign andb1748 = add1746 & 20'hf;
  assign shl1751 = andb1748 << 32'h5;
  assign shr1753 = reg1268 >> shl1751;
  assign shl1765 = add1746 << 32'h2;
  assign shr1768 = shl1765 >> 32'h6;
  assign sub1795 = reg123 - 20'h1;
  assign shr1799 = reg113 >> 32'h5;
  assign shl1803 = shr1799 << 32'h2;
  assign shr1806 = shl1803 >> 32'h6;
  assign eq1809 = shr1806 == reg135;
  assign andb1814 = shr1799 & 20'hf;
  assign shl1817 = andb1814 << 32'h5;
  assign shr1819 = reg1273 >> shl1817;
  assign andb1830 = reg113 & 20'h1f;
  assign shl1832 = 32'h1 << andb1830;
  assign andb1835 = shr1819[31:0] & shl1832;
  assign ne1837 = andb1835 != 32'h0;
  assign shl1847 = reg113 << 32'h2;
  assign shr1850 = shl1847 >> 32'h6;
  assign eq1853 = shr1850 == reg142;
  assign ne1862 = reg1258 != 8'h2;
  assign add1869 = reg1306[319:288] + 32'h1;
  assign shr1888 = ch_llqueue1201_io_deq_data >> shl1817;
  assign andb1902 = shr1888[31:0] & shl1832;
  assign ne1904 = andb1902 != 32'h0;
  assign ne1922 = reg1252 != 8'h2;
  assign add1928 = reg1306[287:256] + 32'h1;
  assign shl1936 = reg118 << 32'h2;
  assign shr1939 = shl1936 >> 32'h6;
  assign shl1945 = reg123 << 32'h2;
  assign add1947 = shl1945 + 20'h3f;
  assign shr1950 = add1947 >> 32'h6;
  assign sub1955 = reg152 - reg147;
  assign sub1961 = reg152 - 20'h1;
  assign ne1969 = reg1240 != 8'h20;
  assign add1976 = reg1306[223:192] + 32'h1;
  assign ne1985 = reg1246 != 8'h20;
  assign add1990 = reg147 + 20'h1;
  assign ne1993 = reg147 != reg157;
  assign add2000 = reg1306[255:224] + 32'h1;
  assign eq2007 = ch_queue875_io_size == reg162;
  assign andb2013 = reg113 & 20'hf;
  assign shl2016 = andb2013 << 32'h5;
  assign shr2018 = ch_llqueue1038_io_deq_data >> shl2016;
  assign shr2030 = reg1278 >> shl2016;
  assign andb2043 = reg118 & 20'hf;
  assign shl2046 = andb2043 << 32'h5;
  assign shr2048 = ch_queue674_io_deq_data >> shl2046;
  assign shr2060 = ch_queue875_io_deq_data >> shl2046;
  assign add2068 = reg118 + 20'h1;
  assign ne2071 = reg118 != reg128;
  assign eq2078 = andb2043 == 20'hf;
  assign add2089 = reg1306[351:320] + 32'h1;
  assign ne2097 = reg101 != reg108;
  assign shr2119 = reg1263 >> shl1711;
  assign shr2131 = reg1268 >> shl1711;
  assign sub2145 = io_ctrl_timer - reg1288;
  assign lt2154 = reg1306[63:32] < reg1283;
  assign sel2156 = lt2154 ? reg1306[63:32] : reg1283;
  assign eq2160 = reg1306[63:32] == 32'h0;
  assign sel2162 = eq2160 ? reg1283 : sel2156;
  assign gt2165 = reg1306[63:32] > reg1283;
  assign sel2167 = gt2165 ? reg1306[63:32] : reg1283;
  assign add2170 = reg1306[127:96] + reg1283;
  assign add2174 = reg1306[31:0] + 32'h1;
  assign sel2181 = eq2078 ? 1'h1 : 1'h0;
  assign sel2182 = ne2071 ? sel2181 : 1'h1;
  assign sel2183 = andb2185 ? sel2182 : 1'h0;
  assign eq2184 = reg1383 == 23'h20000;
  assign andb2185 = eq2184 & io_pe_ready;
  always @(*) begin
    case (reg1383)
      23'h020000: sel2186 = 1'h1;
      23'h400000: sel2186 = 1'h1;
      default: sel2186 = 1'h0;
    endcase
  end
  assign sel2188 = (reg1383 == 23'h20000) ? shr2048[19:0] : reg1610[19:0];
  assign sel2190 = (reg1383 == 23'h20000) ? shr2060[31:0] : reg1610[51:20];
  assign sel2192 = (reg1383 == 23'h20000) ? reg167 : reg1610[83:52];
  always @(*) begin
    case (reg1383)
      23'h020000: sel2194 = 1'h0;
      23'h400000: sel2194 = 1'h1;
      default: sel2194 = reg1610[84];
    endcase
  end
  assign sel2195 = ch_llqueue1038_io_deq_valid ? shr2018[31:0] : shr2030[31:0];
  assign sel2196 = andb2198 ? sel2195 : reg167;
  assign eq2197 = reg1383 == 23'h10000;
  assign andb2198 = eq2197 & eq2007;
  assign sel2199 = andb2202 ? 1'h1 : 1'h0;
  assign andb2200 = eq2007 & ch_llqueue1038_io_deq_valid;
  assign andb2202 = eq2197 & andb2200;
  assign sel2203 = (reg1383 == 23'h2000) ? sub1955[5:0] : reg162;
  assign sel2209 = (reg1383 == 23'h1000) ? shr1950 : reg152;
  assign sel2210 = andb2211 ? add1990 : reg147;
  assign andb2211 = ne1985 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg1383)
      23'h001000: sel2212 = shr1939;
      23'h008000: sel2212 = sel2210;
      default: sel2212 = reg147;
    endcase
  end
  assign sel2213 = andb2215 ? 1'h1 : 1'h0;
  assign eq2214 = reg1383 == 23'h400;
  assign andb2215 = eq2214 & ch_llqueue1201_io_deq_valid;
  assign sel2216 = andb2215 ? ch_llqueue1201_io_deq_data : reg1273;
  assign sel2219 = eq1853 ? reg142 : shr1850;
  assign sel2220 = (reg1383 == 23'h100) ? sel2219 : reg142;
  assign sel2221 = ne1662 ? 1'h1 : 1'h0;
  assign sel2222 = ne1687 ? 1'h1 : 1'h0;
  assign sel2224 = ne1862 ? 1'h1 : 1'h0;
  assign sel2225 = ne1922 ? 1'h1 : 1'h0;
  assign sel2226 = ne1969 ? 1'h1 : 1'h0;
  assign sel2227 = ne1985 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1383)
      23'h000002: sel2228 = sel2221;
      23'h000004: sel2228 = sel2222;
      23'h000010: sel2228 = sel2222;
      23'h000200: sel2228 = sel2224;
      23'h000800: sel2228 = sel2225;
      23'h004000: sel2228 = sel2226;
      23'h008000: sel2228 = sel2227;
      default: sel2228 = 1'h0;
    endcase
  end
  assign sel2229 = andb2231 ? ch_llqueue310_io_deq_data : reg1263;
  assign eq2230 = reg1383 == 23'h8;
  assign andb2231 = eq2230 & andl1701;
  always @(*) begin
    case (reg1383)
      23'h000002: sel2232 = 3'h1;
      23'h000004: sel2232 = 3'h2;
      23'h000010: sel2232 = 3'h2;
      23'h000200: sel2232 = 3'h6;
      23'h000800: sel2232 = 3'h5;
      23'h004000: sel2232 = 3'h3;
      23'h008000: sel2232 = 3'h4;
      default: sel2232 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg1383)
      23'h000002: sel2233 = shr1657;
      23'h000004: sel2233 = shr1657;
      23'h000010: sel2233 = shr1768;
      23'h000200: sel2233 = reg135;
      23'h000800: sel2233 = shr1850;
      23'h004000: sel2233 = reg147;
      23'h008000: sel2233 = reg147;
      default: sel2233 = 20'h0;
    endcase
  end
  assign sel2234 = andl1701 ? shr1713[19:0] : reg113;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2235 = sel2234;
      23'h100000: sel2235 = shr2119[19:0];
      default: sel2235 = reg113;
    endcase
  end
  assign sel2236 = ch_llqueue473_io_deq_valid ? ch_llqueue473_io_deq_data[19:0] : reg123;
  always @(*) begin
    case (reg1383)
      23'h000040: sel2237 = shr1753[19:0];
      23'h000020: sel2237 = sel2236;
      default: sel2237 = reg123;
    endcase
  end
  assign sel2238 = (reg1383 == 23'h80) ? sub1795 : reg128;
  assign sel2239 = (reg1383 == 23'h200000) ? sub2145[31:0] : reg1283;
  assign sel2240 = eq1809 ? reg135 : shr1806;
  assign sel2241 = (reg1383 == 23'h80) ? sel2240 : reg135;
  assign sel2242 = io_ctrl_start_valid ? 23'h2 : reg1383;
  assign sel2243 = andb2244 ? 23'h4 : reg1383;
  assign andb2244 = ne1662 & io_lsu_rd_req_ready;
  assign sel2245 = andb2246 ? 23'h8 : reg1383;
  assign andb2246 = ne1687 & io_lsu_rd_req_ready;
  assign sel2247 = ne1736 ? 23'h40 : 23'h10;
  assign sel2248 = andl1701 ? sel2247 : reg1383;
  assign sel2249 = andb2246 ? 23'h20 : reg1383;
  assign sel2251 = ch_llqueue473_io_deq_valid ? 23'h80 : reg1383;
  assign sel2252 = ne1837 ? 23'h100 : 23'h80000;
  assign sel2253 = eq1809 ? sel2252 : 23'h200;
  assign sel2254 = eq1853 ? 23'h1000 : 23'h800;
  assign sel2255 = andb2256 ? 23'h400 : reg1383;
  assign andb2256 = ne1862 & io_lsu_rd_req_ready;
  assign sel2257 = ne1904 ? 23'h100 : 23'h80000;
  assign sel2258 = ch_llqueue1201_io_deq_valid ? sel2257 : reg1383;
  assign sel2259 = andb2260 ? 23'h1000 : reg1383;
  assign andb2260 = ne1922 & io_lsu_rd_req_ready;
  assign sel2261 = andb2262 ? 23'h8000 : reg1383;
  assign andb2262 = ne1969 & io_lsu_rd_req_ready;
  assign sel2263 = ne1993 ? 23'h4000 : 23'h10000;
  assign sel2264 = andb2211 ? sel2263 : reg1383;
  assign sel2266 = eq2007 ? 23'h20000 : reg1383;
  assign sel2267 = eq2078 ? 23'h40000 : reg1383;
  assign sel2268 = ne2071 ? sel2267 : 23'h80000;
  assign sel2269 = io_pe_ready ? sel2268 : reg1383;
  assign sel2270 = ne1736 ? 23'h100000 : 23'h2;
  assign sel2271 = ne2097 ? sel2270 : 23'h200000;
  assign sel2273 = io_pe_ready ? 23'h1 : reg1383;
  always @(*) begin
    case (reg1383)
      23'h000001: sel2274 = sel2242;
      23'h000002: sel2274 = sel2243;
      23'h000004: sel2274 = sel2245;
      23'h000008: sel2274 = sel2248;
      23'h000040: sel2274 = 23'h80;
      23'h000010: sel2274 = sel2249;
      23'h000020: sel2274 = sel2251;
      23'h000080: sel2274 = sel2253;
      23'h000100: sel2274 = sel2254;
      23'h000200: sel2274 = sel2255;
      23'h000400: sel2274 = sel2258;
      23'h000800: sel2274 = sel2259;
      23'h001000: sel2274 = 23'h2000;
      23'h002000: sel2274 = 23'h4000;
      23'h004000: sel2274 = sel2261;
      23'h008000: sel2274 = sel2264;
      23'h010000: sel2274 = sel2266;
      23'h020000: sel2274 = sel2269;
      23'h040000: sel2274 = 23'h20000;
      23'h080000: sel2274 = sel2271;
      23'h100000: sel2274 = sel2247;
      23'h200000: sel2274 = 23'h400000;
      23'h400000: sel2274 = sel2273;
      default: sel2274 = reg1383;
    endcase
  end
  assign sel2275 = (reg1383 == 23'h2000) ? sub1961 : reg157;
  assign sel2276 = io_ctrl_start_valid ? io_ctrl_start_data[19:0] : reg101;
  always @(*) begin
    case (reg1383)
      23'h000001: sel2277 = sel2276;
      23'h080000: sel2277 = add1746;
      default: sel2277 = reg101;
    endcase
  end
  assign sel2278 = andb2280 ? io_ctrl_timer : reg1288;
  assign andb2280 = eq1387 & io_ctrl_start_valid;
  assign sel2282 = andb2284 ? add2174 : reg1306[31:0];
  assign eq2283 = reg1383 == 23'h400000;
  assign andb2284 = eq2283 & io_pe_ready;
  assign sel2286 = andb2284 ? sel2162 : reg1306[63:32];
  assign sel2290 = andb2284 ? sel2167 : reg1306[95:64];
  assign sel2294 = andb2284 ? add2170 : reg1306[127:96];
  assign sel2298 = io_lsu_rd_req_ready ? reg1306[159:128] : add1671;
  assign sel2299 = ne1662 ? sel2298 : add1671;
  assign sel2300 = (reg1383 == 23'h2) ? sel2299 : reg1306[159:128];
  assign sel2302 = io_lsu_rd_req_ready ? reg1306[191:160] : add1694;
  assign sel2303 = ne1687 ? sel2302 : add1694;
  assign sel2306 = ch_llqueue473_io_deq_valid ? reg1306[191:160] : add1694;
  always @(*) begin
    case (reg1383)
      23'h000004: sel2307 = sel2303;
      23'h000010: sel2307 = sel2303;
      23'h000020: sel2307 = sel2306;
      default: sel2307 = reg1306[191:160];
    endcase
  end
  assign sel2309 = io_lsu_rd_req_ready ? reg1306[223:192] : add1976;
  assign sel2310 = ne1969 ? sel2309 : add1976;
  assign sel2311 = (reg1383 == 23'h4000) ? sel2310 : reg1306[223:192];
  assign sel2313 = io_lsu_rd_req_ready ? reg1306[255:224] : add2000;
  assign sel2314 = ne1985 ? sel2313 : add2000;
  assign sel2315 = eq2007 ? reg1306[255:224] : add2000;
  always @(*) begin
    case (reg1383)
      23'h008000: sel2316 = sel2314;
      23'h010000: sel2316 = sel2315;
      default: sel2316 = reg1306[255:224];
    endcase
  end
  assign sel2318 = io_lsu_rd_req_ready ? reg1306[287:256] : add1928;
  assign sel2319 = ne1922 ? sel2318 : add1928;
  assign sel2320 = (reg1383 == 23'h800) ? sel2319 : reg1306[287:256];
  assign sel2322 = io_lsu_rd_req_ready ? reg1306[319:288] : add1869;
  assign sel2323 = ne1862 ? sel2322 : add1869;
  assign sel2324 = ch_llqueue1201_io_deq_valid ? reg1306[319:288] : add1869;
  always @(*) begin
    case (reg1383)
      23'h000200: sel2325 = sel2323;
      23'h000400: sel2325 = sel2324;
      default: sel2325 = reg1306[319:288];
    endcase
  end
  assign sel2327 = io_pe_ready ? reg1306[351:320] : add2089;
  always @(*) begin
    case (reg1383)
      23'h020000: sel2329 = sel2327;
      23'h400000: sel2329 = sel2327;
      default: sel2329 = reg1306[351:320];
    endcase
  end
  assign sel2330 = andb2202 ? ch_llqueue1038_io_deq_data : reg1278;
  assign sel2334 = andb2280 ? sub1645 : reg108;
  assign sel2337 = andb2231 ? 1'h1 : 1'h0;
  assign sel2340 = andl1701 ? 1'h1 : 1'h0;
  assign sel2341 = ch_llqueue473_io_deq_valid ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2342 = sel2340;
      23'h000020: sel2342 = sel2341;
      default: sel2342 = 1'h0;
    endcase
  end
  assign sel2343 = andl1701 ? shr1726[19:0] : reg118;
  assign sel2344 = io_pe_ready ? add2068 : reg118;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2345 = sel2343;
      23'h020000: sel2345 = sel2344;
      23'h100000: sel2345 = shr2131[19:0];
      default: sel2345 = reg118;
    endcase
  end
  assign sel2346 = andb2231 ? ch_llqueue473_io_deq_data : reg1268;

  assign io_ctrl_start_ready = eq1387;
  assign io_ctrl_stats = reg1306;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data75;
  assign io_lsu_rd_req_valid = sel2228;
  assign io_pe_data = reg1610;
  assign io_pe_valid = reg1625;

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
  wire[2:0] proxy4857; // /home/blaise/dev/cash/include/htl/pipe.h(24:0)
  reg[2:0] reg4858; // /home/blaise/dev/cash/include/htl/pipe.h(24:0)
  reg[20:0] reg4866; // /home/blaise/dev/cash/include/htl/pipe.h(25:0)
  reg[20:0] reg4875; // /home/blaise/dev/cash/include/htl/pipe.h(25:1)
  reg[20:0] reg4884; // /home/blaise/dev/cash/include/htl/pipe.h(25:2)
  wire inv4893; // /home/blaise/dev/cash/include/htl/pipe.h(34:0)
  wire orb4895; // /home/blaise/dev/cash/include/htl/pipe.h(34:0)
  wire inv4900; // /home/blaise/dev/cash/include/htl/pipe.h(34:1)
  wire orb4902; // /home/blaise/dev/cash/include/htl/pipe.h(34:1)
  wire inv4907; // /home/blaise/dev/cash/include/htl/pipe.h(34:2)
  wire orb4909; // /home/blaise/dev/cash/include/htl/pipe.h(34:2)
  wire[20:0] sel4912; // /home/blaise/dev/cash/include/htl/pipe.h(40:0)
  wire andb4913; // /home/blaise/dev/cash/include/htl/pipe.h(38:0)
  wire sel4915; // /home/blaise/dev/cash/include/htl/pipe.h(38:0)
  wire[20:0] sel4917; // /home/blaise/dev/cash/include/htl/pipe.h(40:1)
  wire andb4918; // /home/blaise/dev/cash/include/htl/pipe.h(38:1)
  wire sel4920; // /home/blaise/dev/cash/include/htl/pipe.h(38:1)
  wire[20:0] sel4922; // /home/blaise/dev/cash/include/htl/pipe.h(40:2)
  wire andb4923; // /home/blaise/dev/cash/include/htl/pipe.h(38:2)
  wire sel4925; // /home/blaise/dev/cash/include/htl/pipe.h(38:2)

  assign proxy4857 = {sel4925, sel4920, sel4915};
  always @ (posedge clk) begin
    if (reset)
      reg4858 <= 3'h0;
    else
      reg4858 <= proxy4857;
  end
  always @ (posedge clk) begin
    reg4866 <= sel4912;
  end
  always @ (posedge clk) begin
    reg4875 <= sel4917;
  end
  always @ (posedge clk) begin
    reg4884 <= sel4922;
  end
  assign inv4893 = ~reg4858[2];
  assign orb4895 = inv4893 | io_deq_ready;
  assign inv4900 = ~reg4858[1];
  assign orb4902 = inv4900 | orb4895;
  assign inv4907 = ~reg4858[0];
  assign orb4909 = inv4907 | orb4902;
  assign sel4912 = andb4913 ? io_enq_data : reg4866;
  assign andb4913 = orb4909 & io_enq_valid;
  assign sel4915 = orb4909 ? io_enq_valid : reg4858[0];
  assign sel4917 = andb4918 ? reg4866 : reg4875;
  assign andb4918 = orb4902 & reg4858[0];
  assign sel4920 = orb4902 ? reg4858[0] : reg4858[1];
  assign sel4922 = andb4923 ? reg4875 : reg4884;
  assign andb4923 = orb4895 & reg4858[1];
  assign sel4925 = orb4895 ? reg4858[1] : reg4858[2];

  assign io_enq_ready = orb4909;
  assign io_deq_data = reg4884;
  assign io_deq_valid = reg4858[2];

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
  wire[511:0] lit5304 = 512'h0;
  wire[533:0] io_lsu_wr_req_data4788; // pe.cpp(19:0)
  wire[20:0] proxy4927; // pe.cpp(19:1)
  wire ch_pipe4930_clk; // pe.cpp(19:1)
  wire ch_pipe4930_reset; // pe.cpp(19:1)
  wire[20:0] ch_pipe4930_io_enq_data; // pe.cpp(19:1)
  wire ch_pipe4930_io_enq_valid; // pe.cpp(19:1)
  wire ch_pipe4930_io_enq_ready; // pe.cpp(19:1)
  wire[20:0] ch_pipe4930_io_deq_data; // pe.cpp(19:1)
  wire ch_pipe4930_io_deq_valid; // pe.cpp(19:1)
  wire ch_pipe4930_io_deq_ready; // pe.cpp(19:1)
  wire ch_pipe5079_clk; // pe.cpp(19:2)
  wire ch_pipe5079_reset; // pe.cpp(19:2)
  wire[20:0] ch_pipe5079_io_enq_data; // pe.cpp(19:2)
  wire ch_pipe5079_io_enq_valid; // pe.cpp(19:2)
  wire[20:0] ch_pipe5079_io_deq_data; // pe.cpp(19:2)
  wire ch_pipe5079_io_deq_valid; // pe.cpp(19:2)
  wire ch_pipe5079_io_deq_ready; // pe.cpp(19:2)
  reg[31:0] mem5100 [0:31]; // pe.cpp(19:3)
  reg[31:0] reg5106; // pe.cpp(19:4)
  reg[31:0] reg5111; // pe.cpp(19:5)
  reg[31:0] reg5117; // pe.cpp(19:6)
  reg[31:0] reg5123; // pe.cpp(19:7)
  reg[19:0] reg5138; // pe.cpp(19:12)
  wire[63:0] proxy5146; // pe.cpp(19:13)
  reg[63:0] reg5147; // pe.cpp(19:13)
  reg[1:0] reg5159; // pe.cpp(35:0)
  wire[31:0] shl5163; // pe.cpp(38:0)
  wire[31:0] shl5166; // pe.cpp(39:0)
  wire notl5169; // pe.cpp(43:0)
  wire eq5173; // pe.cpp(7:0)
  wire orl5175; // pe.cpp(7:0)
  wire notl5178; // pe.cpp(47:0)
  wire[31:0] andb5181; // pe.cpp(46:0)
  wire eq5184; // pe.cpp(46:1)
  wire andl5187; // pe.cpp(46:2)
  wire orl5189; // pe.cpp(46:2)
  wire eq5192; // pe.cpp(54:0)
  wire eq5196; // pe.cpp(7:1)
  wire andl5198; // pe.cpp(7:1)
  wire[31:0] marport5200; // pe.cpp(57:1)
  wire[31:0] andb5203; // pe.cpp(57:2)
  wire ne5206; // pe.cpp(57:3)
  wire[31:0] sel5208; // pe.cpp(57:0)
  wire andl5211; // pe.cpp(62:0)
  wire[31:0] udfs5213; // pe.cpp(65:0)
  wire[31:0] reg5216; // /home/blaise/dev/cash/include/htl/float32.h(285:0)
  wire andl5219; // pe.cpp(70:0)
  wire[19:0] andb5224; // pe.cpp(72:1)
  wire[31:0] udfs5228; // pe.cpp(74:0)
  wire[31:0] reg5231; // /home/blaise/dev/cash/include/htl/float32.h(275:0)
  wire andl5237; // pe.cpp(7:2)
  wire notl5240; // pe.cpp(81:0)
  wire andl5242; // pe.cpp(81:0)
  wire notl5245; // pe.cpp(79:1)
  wire andl5248; // pe.cpp(79:2)
  wire[31:0] add5252; // pe.cpp(80:1)
  wire[31:0] sub5256; // pe.cpp(82:1)
  reg[31:0] sel5258; // pe.cpp(79:0)
  wire notl5260; // pe.cpp(87:0)
  wire andl5263; // pe.cpp(87:1)
  wire notl5266; // pe.cpp(88:0)
  wire andl5269; // pe.cpp(88:1)
  wire ne5272; // pe.cpp(90:1)
  wire andl5275; // pe.cpp(90:2)
  wire[31:0] inv5278; // pe.cpp(91:0)
  wire[31:0] andb5281; // pe.cpp(91:1)
  wire[31:0] orb5283; // pe.cpp(91:1)
  wire[31:0] orb5292; // pe.cpp(96:0)
  wire[31:0] sel5294; // pe.cpp(90:0)
  reg[31:0] sel5295; // pe.cpp(89:0)
  wire[19:0] andb5299; // pe.cpp(101:1)
  wire[19:0] sel5301; // pe.cpp(100:0)
  wire andl5316; // pe.cpp(119:1)
  wire[19:0] andb5320; // pe.cpp(120:1)
  wire[31:0] orb5325; // pe.cpp(125:0)
  wire andl5328; // pe.cpp(129:1)
  wire[511:0] proxy5334; // pe.cpp(138:0)
  wire[31:0] marport5335; // pe.cpp(140:0)
  wire[31:0] marport5339; // pe.cpp(140:2)
  wire[31:0] marport5343; // pe.cpp(140:4)
  wire[31:0] marport5347; // pe.cpp(140:6)
  wire[31:0] marport5351; // pe.cpp(140:8)
  wire[31:0] marport5355; // pe.cpp(140:10)
  wire[31:0] marport5359; // pe.cpp(140:12)
  wire[31:0] marport5363; // pe.cpp(140:14)
  wire[31:0] marport5367; // pe.cpp(140:16)
  wire[31:0] marport5371; // pe.cpp(140:18)
  wire[31:0] marport5375; // pe.cpp(140:20)
  wire[31:0] marport5379; // pe.cpp(140:22)
  wire[31:0] marport5383; // pe.cpp(140:24)
  wire[31:0] marport5387; // pe.cpp(140:26)
  wire[31:0] marport5391; // pe.cpp(140:28)
  wire[31:0] marport5395; // pe.cpp(140:30)
  wire[19:0] shl5402; // pe.cpp(143:0)
  wire[19:0] shr5406; // pe.cpp(143:0)
  wire[31:0] add5414; // pe.cpp(152:1)
  wire[511:0] proxy5417; // pe.cpp(157:0)
  wire[31:0] marport5419; // pe.cpp(159:0)
  wire[31:0] marport5423; // pe.cpp(159:2)
  wire[31:0] marport5427; // pe.cpp(159:4)
  wire[31:0] marport5431; // pe.cpp(159:6)
  wire[31:0] marport5435; // pe.cpp(159:8)
  wire[31:0] marport5439; // pe.cpp(159:10)
  wire[31:0] marport5443; // pe.cpp(159:12)
  wire[31:0] marport5447; // pe.cpp(159:14)
  wire[31:0] marport5451; // pe.cpp(159:16)
  wire[31:0] marport5455; // pe.cpp(159:18)
  wire[31:0] marport5459; // pe.cpp(159:20)
  wire[31:0] marport5463; // pe.cpp(159:22)
  wire[31:0] marport5467; // pe.cpp(159:24)
  wire[31:0] marport5471; // pe.cpp(159:26)
  wire[31:0] marport5475; // pe.cpp(159:28)
  wire[31:0] marport5479; // pe.cpp(159:30)
  wire[19:0] add5492; // pe.cpp(162:1)
  wire[19:0] shr5505; // pe.cpp(177:0)
  wire[19:0] shl5508; // pe.cpp(177:0)
  wire[19:0] shr5511; // pe.cpp(177:0)
  wire[511:0] pad5513; // pe.cpp(178:0)
  wire[19:0] andb5520; // pe.cpp(178:2)
  wire[19:0] shl5523; // pe.cpp(178:2)
  wire[511:0] shl5525; // pe.cpp(178:0)
  wire[31:0] add5531; // pe.cpp(186:1)
  wire[31:0] sel5534; // pe.cpp(147:0)
  reg[31:0] sel5536; // pe.cpp(116:0)
  wire[31:0] sel5538; // pe.cpp(181:0)
  wire[31:0] sel5539; // pe.cpp(116:0)
  reg sel5540; // pe.cpp(116:0)
  wire[4:0] sel5541; // pe.cpp(116:0)
  reg[1:0] sel5542; // pe.cpp(116:0)
  reg[19:0] sel5543; // pe.cpp(116:0)
  reg[511:0] sel5544; // pe.cpp(116:0)
  wire[31:0] sel5545; // pe.cpp(116:0)
  wire[1:0] sel5546; // pe.cpp(129:0)
  wire[1:0] sel5547; // pe.cpp(147:0)
  wire[1:0] sel5548; // pe.cpp(166:0)
  wire[1:0] sel5549; // pe.cpp(181:0)
  reg[1:0] sel5550; // pe.cpp(116:0)
  wire sel5551; // pe.cpp(116:0)
  wire[31:0] sel5552; // pe.cpp(124:0)
  wire[31:0] sel5553; // pe.cpp(129:0)
  wire[31:0] sel5554; // pe.cpp(116:0)
  wire[31:0] sel5555; // pe.cpp(129:0)
  wire andb5557; // pe.cpp(116:0)

  assign io_lsu_wr_req_data4788 = {sel5544, sel5543, sel5542};
  assign proxy4927 = {io_req_data[84], io_req_data[19:0]};
  assign ch_pipe4930_clk = clk;
  assign ch_pipe4930_reset = reset;
  ch_pipe ch_pipe4930(.clk(ch_pipe4930_clk), .reset(ch_pipe4930_reset), .io_enq_data(ch_pipe4930_io_enq_data), .io_enq_valid(ch_pipe4930_io_enq_valid), .io_deq_ready(ch_pipe4930_io_deq_ready), .io_enq_ready(ch_pipe4930_io_enq_ready), .io_deq_data(ch_pipe4930_io_deq_data), .io_deq_valid(ch_pipe4930_io_deq_valid));
  assign ch_pipe4930_io_enq_data = proxy4927;
  assign ch_pipe4930_io_enq_valid = andl5211;
  assign ch_pipe4930_io_deq_ready = orl5189;
  assign ch_pipe5079_clk = clk;
  assign ch_pipe5079_reset = reset;
  ch_pipe ch_pipe5079(.clk(ch_pipe5079_clk), .reset(ch_pipe5079_reset), .io_enq_data(ch_pipe5079_io_enq_data), .io_enq_valid(ch_pipe5079_io_enq_valid), .io_deq_ready(ch_pipe5079_io_deq_ready), .io_deq_data(ch_pipe5079_io_deq_data), .io_deq_valid(ch_pipe5079_io_deq_valid));
  assign ch_pipe5079_io_enq_data = ch_pipe4930_io_deq_data;
  assign ch_pipe5079_io_enq_valid = andl5219;
  assign ch_pipe5079_io_deq_ready = orl5175;
  assign marport5200 = mem5100[andb5224[4:0]];
  assign marport5335 = mem5100[5'h0];
  assign marport5339 = mem5100[5'h1];
  assign marport5343 = mem5100[5'h2];
  assign marport5347 = mem5100[5'h3];
  assign marport5351 = mem5100[5'h4];
  assign marport5355 = mem5100[5'h5];
  assign marport5359 = mem5100[5'h6];
  assign marport5363 = mem5100[5'h7];
  assign marport5367 = mem5100[5'h8];
  assign marport5371 = mem5100[5'h9];
  assign marport5375 = mem5100[5'ha];
  assign marport5379 = mem5100[5'hb];
  assign marport5383 = mem5100[5'hc];
  assign marport5387 = mem5100[5'hd];
  assign marport5391 = mem5100[5'he];
  assign marport5395 = mem5100[5'hf];
  assign marport5419 = mem5100[5'h10];
  assign marport5423 = mem5100[5'h11];
  assign marport5427 = mem5100[5'h12];
  assign marport5431 = mem5100[5'h13];
  assign marport5435 = mem5100[5'h14];
  assign marport5439 = mem5100[5'h15];
  assign marport5443 = mem5100[5'h16];
  assign marport5447 = mem5100[5'h17];
  assign marport5451 = mem5100[5'h18];
  assign marport5455 = mem5100[5'h19];
  assign marport5459 = mem5100[5'h1a];
  assign marport5463 = mem5100[5'h1b];
  assign marport5467 = mem5100[5'h1c];
  assign marport5471 = mem5100[5'h1d];
  assign marport5475 = mem5100[5'h1e];
  assign marport5479 = mem5100[5'h1f];
  always @ (posedge clk) begin
    if (sel5551) begin
      mem5100[sel5541] <= sel5545;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg5106 <= 32'h0;
    else
      reg5106 <= sel5554;
  end
  always @ (posedge clk) begin
    reg5111 <= sel5555;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5117 <= 32'h0;
    else
      reg5117 <= sel5295;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5123 <= 32'h0;
    else
      reg5123 <= sel5258;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5138 <= 20'h0;
    else
      reg5138 <= sel5301;
  end
  assign proxy5146 = {sel5539, sel5536};
  always @ (posedge clk) begin
    if (reset)
      reg5147 <= 64'h0;
    else
      reg5147 <= proxy5146;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5159 <= 2'h0;
    else
      reg5159 <= sel5550;
  end
  assign shl5163 = 32'h1 << andb5224[4:0];
  assign shl5166 = 32'h1 << sel5541;
  assign notl5169 = !ch_pipe5079_io_deq_valid;
  assign eq5173 = 2'h0 == reg5159;
  assign orl5175 = eq5173 || notl5169;
  assign notl5178 = !ch_pipe4930_io_deq_valid;
  assign andb5181 = reg5117 & shl5163;
  assign eq5184 = 32'h0 == andb5181;
  assign andl5187 = orl5175 && eq5184;
  assign orl5189 = andl5187 || notl5178;
  assign eq5192 = 32'h0 == reg5123;
  assign eq5196 = reg5159 == 2'h0;
  assign andl5198 = eq5196 && eq5192;
  assign andb5203 = reg5106 & shl5163;
  assign ne5206 = 32'h0 != andb5203;
  assign sel5208 = ne5206 ? marport5200 : 32'h0;
  assign andl5211 = io_req_valid && ch_pipe4930_io_enq_ready;
  fp_mult __fp_mult5213(.clock(clk), .clk_en($src2), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs5213));
  reg[31:0] reg5216_sr [1:0];
  always @ (posedge clk) begin
    if (orl5189) begin
      reg5216_sr[1] <= reg5216_sr[0];
      reg5216_sr[0] <= udfs5213;
    end
  end
  assign reg5216 = reg5216_sr[1];
  assign andl5219 = ch_pipe4930_io_deq_valid && orl5189;
  assign andb5224 = ch_pipe4930_io_deq_data[19:0] & 20'h1f;
  fp_add __fp_add5228(.clock(clk), .clk_en($src2), .dataa(reg5216), .datab(sel5208), .result(udfs5228));
  reg[31:0] reg5231_sr [1:0];
  always @ (posedge clk) begin
    if (orl5175) begin
      reg5231_sr[1] <= reg5231_sr[0];
      reg5231_sr[0] <= udfs5228;
    end
  end
  assign reg5231 = reg5231_sr[1];
  assign andl5237 = eq5173 && ch_pipe5079_io_deq_valid;
  assign notl5240 = !andl5211;
  assign andl5242 = notl5240 && andl5237;
  assign notl5245 = !andl5237;
  assign andl5248 = andl5211 && notl5245;
  assign add5252 = reg5123 + 32'h1;
  assign sub5256 = reg5123 - 32'h1;
  always @(*) begin
    if (andl5248)
      sel5258 = add5252;
    else if (andl5242)
      sel5258 = sub5256;
    else
      sel5258 = reg5123;
  end
  assign notl5260 = !ch_pipe4930_io_deq_data[20];
  assign andl5263 = andl5219 && notl5260;
  assign notl5266 = !ch_pipe5079_io_deq_data[20];
  assign andl5269 = andl5237 && notl5266;
  assign ne5272 = shl5163 != shl5166;
  assign andl5275 = andl5263 && ne5272;
  assign inv5278 = ~shl5166;
  assign andb5281 = reg5117 & inv5278;
  assign orb5283 = andb5281 | shl5163;
  assign orb5292 = reg5117 | shl5163;
  assign sel5294 = andl5275 ? orb5283 : andb5281;
  always @(*) begin
    if (andl5269)
      sel5295 = sel5294;
    else if (andl5263)
      sel5295 = orb5292;
    else
      sel5295 = reg5117;
  end
  assign andb5299 = ch_pipe5079_io_deq_data[19:0] & 20'hfffe0;
  assign sel5301 = andl5269 ? andb5299 : reg5138;
  assign andl5316 = ch_pipe5079_io_deq_valid && notl5266;
  assign andb5320 = ch_pipe5079_io_deq_data[19:0] & 20'h1f;
  assign orb5325 = reg5106 | shl5166;
  assign andl5328 = ch_pipe5079_io_deq_valid && ch_pipe5079_io_deq_data[20];
  assign proxy5334 = {marport5395, marport5391, marport5387, marport5383, marport5379, marport5375, marport5371, marport5367, marport5363, marport5359, marport5355, marport5351, marport5347, marport5343, marport5339, marport5335};
  assign shl5402 = reg5138 << 32'h2;
  assign shr5406 = shl5402 >> 32'h6;
  assign add5414 = reg5147[31:0] + 32'h1;
  assign proxy5417 = {marport5479, marport5475, marport5471, marport5467, marport5463, marport5459, marport5455, marport5451, marport5447, marport5443, marport5439, marport5435, marport5431, marport5427, marport5423, marport5419};
  assign add5492 = shr5406 + 20'h1;
  assign shr5505 = reg5138 >> 32'h5;
  assign shl5508 = shr5505 << 32'h2;
  assign shr5511 = shl5508 >> 32'h6;
  assign pad5513 = {{480{1'b0}}, reg5111};
  assign andb5520 = shr5505 & 20'hf;
  assign shl5523 = andb5520 << 32'h5;
  assign shl5525 = pad5513 << shl5523;
  assign add5531 = reg5147[63:32] + 32'h1;
  assign sel5534 = io_lsu_wr_req_ready ? reg5147[31:0] : add5414;
  always @(*) begin
    case (reg5159)
      2'h1: sel5536 = sel5534;
      2'h2: sel5536 = sel5534;
      default: sel5536 = reg5147[31:0];
    endcase
  end
  assign sel5538 = io_lsu_wr_req_ready ? reg5147[63:32] : add5531;
  assign sel5539 = (reg5159 == 2'h3) ? sel5538 : reg5147[63:32];
  always @(*) begin
    case (reg5159)
      2'h1: sel5540 = 1'h1;
      2'h2: sel5540 = 1'h1;
      2'h3: sel5540 = 1'h1;
      default: sel5540 = 1'h0;
    endcase
  end
  assign sel5541 = (reg5159 == 2'h0) ? andb5320[4:0] : 5'h0;
  always @(*) begin
    case (reg5159)
      2'h1: sel5542 = 2'h0;
      2'h2: sel5542 = 2'h0;
      2'h3: sel5542 = 2'h1;
      default: sel5542 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg5159)
      2'h1: sel5543 = shr5406;
      2'h2: sel5543 = add5492;
      2'h3: sel5543 = shr5511;
      default: sel5543 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg5159)
      2'h1: sel5544 = proxy5334;
      2'h2: sel5544 = proxy5417;
      2'h3: sel5544 = shl5525;
      default: sel5544 = lit5304;
    endcase
  end
  assign sel5545 = (reg5159 == 2'h0) ? reg5231 : 32'h0;
  assign sel5546 = andl5328 ? 2'h1 : reg5159;
  assign sel5547 = io_lsu_wr_req_ready ? 2'h2 : reg5159;
  assign sel5548 = io_lsu_wr_req_ready ? 2'h3 : reg5159;
  assign sel5549 = io_lsu_wr_req_ready ? 2'h0 : reg5159;
  always @(*) begin
    case (reg5159)
      2'h0: sel5550 = sel5546;
      2'h1: sel5550 = sel5547;
      2'h2: sel5550 = sel5548;
      2'h3: sel5550 = sel5549;
      default: sel5550 = reg5159;
    endcase
  end
  assign sel5551 = (reg5159 == 2'h0) ? andl5316 : 1'h0;
  assign sel5552 = sel5551 ? orb5325 : reg5106;
  assign sel5553 = andl5328 ? 32'h0 : sel5552;
  assign sel5554 = (reg5159 == 2'h0) ? sel5553 : reg5106;
  assign sel5555 = andb5557 ? reg5106 : reg5111;
  assign andb5557 = eq5196 & andl5328;

  assign io_req_ready = ch_pipe4930_io_enq_ready;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data4788;
  assign io_lsu_wr_req_valid = sel5540;
  assign io_stats = reg5147;
  assign io_is_idle = andl5198;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel6590; // /home/blaise/dev/cash/include/htl/mux.h(29:0)

  always @(*) begin
    case (io_sel)
      3'h2: sel6590 = io_in[47:24];
      3'h1: sel6590 = io_in[23:0];
      default: sel6590 = io_in[71:48];
    endcase
  end

  assign io_out = sel6590;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy6637; // /home/blaise/dev/cash/include/htl/arbiter.h(20:0)
  reg[8:0] reg6638; // /home/blaise/dev/cash/include/htl/arbiter.h(20:0)
  wire[2:0] proxy6644; // /home/blaise/dev/cash/include/htl/arbiter.h(21:0)
  wire[2:0] proxy6646; // /home/blaise/dev/cash/include/htl/arbiter.h(21:1)
  wire[2:0] proxy6648; // /home/blaise/dev/cash/include/htl/arbiter.h(21:2)
  wire[2:0] proxy6650; // /home/blaise/dev/cash/include/htl/arbiter.h(21:3)
  wire andl6657; // /home/blaise/dev/cash/include/htl/arbiter.h(28:1)
  wire andl6663; // /home/blaise/dev/cash/include/htl/arbiter.h(28:4)
  wire orr6666; // /home/blaise/dev/cash/include/htl/arbiter.h(30:0)
  wire inv6668; // /home/blaise/dev/cash/include/htl/arbiter.h(30:0)
  wire andl6671; // /home/blaise/dev/cash/include/htl/arbiter.h(30:1)
  wire inv6675; // /home/blaise/dev/cash/include/htl/arbiter.h(32:0)
  wire orl6680; // /home/blaise/dev/cash/include/htl/arbiter.h(32:2)
  wire andl6682; // /home/blaise/dev/cash/include/htl/arbiter.h(32:2)
  wire orl6691; // /home/blaise/dev/cash/include/htl/arbiter.h(32:6)
  wire andl6693; // /home/blaise/dev/cash/include/htl/arbiter.h(32:6)
  wire inv6698; // /home/blaise/dev/cash/include/htl/arbiter.h(24:0)
  wire andl6701; // /home/blaise/dev/cash/include/htl/arbiter.h(24:1)
  wire andl6709; // /home/blaise/dev/cash/include/htl/arbiter.h(28:7)
  wire orr6712; // /home/blaise/dev/cash/include/htl/arbiter.h(30:3)
  wire inv6714; // /home/blaise/dev/cash/include/htl/arbiter.h(30:3)
  wire andl6717; // /home/blaise/dev/cash/include/htl/arbiter.h(30:4)
  wire inv6721; // /home/blaise/dev/cash/include/htl/arbiter.h(32:8)
  wire orl6726; // /home/blaise/dev/cash/include/htl/arbiter.h(32:10)
  wire andl6728; // /home/blaise/dev/cash/include/htl/arbiter.h(32:10)
  wire inv6733; // /home/blaise/dev/cash/include/htl/arbiter.h(24:3)
  wire andl6736; // /home/blaise/dev/cash/include/htl/arbiter.h(24:4)
  wire inv6741; // /home/blaise/dev/cash/include/htl/arbiter.h(24:6)
  wire andl6744; // /home/blaise/dev/cash/include/htl/arbiter.h(24:7)
  wire orr6749; // /home/blaise/dev/cash/include/htl/arbiter.h(30:6)
  wire inv6751; // /home/blaise/dev/cash/include/htl/arbiter.h(30:6)
  wire andl6754; // /home/blaise/dev/cash/include/htl/arbiter.h(30:7)

  assign proxy6637 = {reg6638[8:6], andl6728, reg6638[4:3], andl6693, andl6682, reg6638[0]};
  always @ (posedge clk) begin
    if (reset)
      reg6638 <= 9'h0;
    else
      reg6638 <= proxy6637;
  end
  assign proxy6644 = {andl6736, andl6701, 1'h0};
  assign proxy6646 = {andl6744, 1'h0, andl6657};
  assign proxy6648 = {1'h0, andl6709, andl6663};
  assign proxy6650 = {andl6754, andl6717, andl6671};
  assign andl6657 = io_in[0] && reg6638[1];
  assign andl6663 = io_in[0] && reg6638[2];
  assign orr6666 = |proxy6644;
  assign inv6668 = ~orr6666;
  assign andl6671 = io_in[0] && inv6668;
  assign inv6675 = ~andl6671;
  assign orl6680 = reg6638[1] || andl6717;
  assign andl6682 = orl6680 && inv6675;
  assign orl6691 = reg6638[2] || andl6754;
  assign andl6693 = orl6691 && inv6675;
  assign inv6698 = ~reg6638[1];
  assign andl6701 = io_in[1] && inv6698;
  assign andl6709 = io_in[1] && reg6638[5];
  assign orr6712 = |proxy6646;
  assign inv6714 = ~orr6712;
  assign andl6717 = io_in[1] && inv6714;
  assign inv6721 = ~andl6717;
  assign orl6726 = reg6638[5] || andl6754;
  assign andl6728 = orl6726 && inv6721;
  assign inv6733 = ~reg6638[2];
  assign andl6736 = io_in[2] && inv6733;
  assign inv6741 = ~reg6638[5];
  assign andl6744 = io_in[2] && inv6741;
  assign orr6749 = |proxy6648;
  assign inv6751 = ~orr6749;
  assign andl6754 = io_in[2] && inv6751;

  assign io_grant = proxy6650;

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
  wire[2:0] ch_hxbar6598_io_sel; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[71:0] proxy6601; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[71:0] ch_hxbar6598_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[23:0] ch_hxbar6598_io_out; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[2:0] proxy6758; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire ch_rrArbiter6762_clk; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire ch_rrArbiter6762_reset; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire[2:0] ch_rrArbiter6762_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire[2:0] ch_rrArbiter6762_io_grant; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire eq6808; // /home/blaise/dev/cash/include/htl/arbiter.h(63:1)
  wire andl6811; // /home/blaise/dev/cash/include/htl/arbiter.h(63:2)
  wire eq6816; // /home/blaise/dev/cash/include/htl/arbiter.h(63:4)
  wire andl6819; // /home/blaise/dev/cash/include/htl/arbiter.h(63:5)
  wire eq6824; // /home/blaise/dev/cash/include/htl/arbiter.h(63:7)
  wire andl6827; // /home/blaise/dev/cash/include/htl/arbiter.h(63:8)

  ch_hxbar ch_hxbar6598(.io_sel(ch_hxbar6598_io_sel), .io_in(ch_hxbar6598_io_in), .io_out(ch_hxbar6598_io_out));
  assign ch_hxbar6598_io_sel = ch_rrArbiter6762_io_grant;
  assign proxy6601 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign ch_hxbar6598_io_in = proxy6601;
  assign proxy6758 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign ch_rrArbiter6762_clk = clk;
  assign ch_rrArbiter6762_reset = reset;
  ch_rrArbiter ch_rrArbiter6762(.clk(ch_rrArbiter6762_clk), .reset(ch_rrArbiter6762_reset), .io_in(ch_rrArbiter6762_io_in), .io_grant(ch_rrArbiter6762_io_grant));
  assign ch_rrArbiter6762_io_in = proxy6758;
  assign eq6808 = ch_rrArbiter6762_io_grant == 3'h1;
  assign andl6811 = io_out_ready && eq6808;
  assign eq6816 = ch_rrArbiter6762_io_grant == 3'h2;
  assign andl6819 = io_out_ready && eq6816;
  assign eq6824 = ch_rrArbiter6762_io_grant == 3'h4;
  assign andl6827 = io_out_ready && eq6824;

  assign io_in_0_ready = andl6811;
  assign io_in_1_ready = andl6819;
  assign io_in_2_ready = andl6827;
  assign io_out_data = ch_hxbar6598_io_out[22:0];
  assign io_out_valid = ch_hxbar6598_io_out[23];
  assign io_out_grant = ch_rrArbiter6762_io_grant;

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
  wire[511:0] lit7434 = 512'h0;
  reg[21:0] mem7250 [0:1]; // wrcache.h(59:0)
  reg[511:0] mem7251 [0:1]; // wrcache.h(59:1)
  reg[1:0] reg7257; // wrcache.h(59:2)
  reg reg7265; // wrcache.h(59:3)
  reg[19:0] reg7270; // wrcache.h(59:4)
  reg reg7289; // wrcache.h(59:11)
  wire[533:0] io_evict_data7300; // wrcache.h(59:12)
  reg[2:0] reg7317; // wrcache.h(67:0)
  reg[533:0] reg7322; // wrcache.h(68:0)
  wire eq7338; // wrcache.h(15:0)
  wire[533:0] sel7340; // wrcache.h(79:0)
  wire[1:0] shl7349; // wrcache.h(81:0)
  wire[1:0] andb7352; // wrcache.h(81:1)
  wire ne7355; // wrcache.h(81:2)
  wire[21:0] marport7358; // wrcache.h(82:2)
  wire eq7362; // wrcache.h(82:2)
  wire andl7365; // wrcache.h(82:3)
  wire sel7367; // wrcache.h(82:0)
  wire[1:0] andb7374; // wrcache.h(83:3)
  wire ne7376; // wrcache.h(83:3)
  wire andl7379; // wrcache.h(83:4)
  wire sel7381; // wrcache.h(83:0)
  wire notl7385; // wrcache.h(84:2)
  wire sel7387; // wrcache.h(84:0)
  reg reg7391; // wrcache.h(92:0)
  reg reg7395; // wrcache.h(93:0)
  reg reg7399; // wrcache.h(94:0)
  reg reg7404; // wrcache.h(95:0)
  wire add7409; // wrcache.h(101:1)
  wire eq7413; // wrcache.h(102:2)
  wire[2:0] sel7417; // wrcache.h(102:0)
  wire andb7418; // wrcache.h(100:0)
  wire sel7419; // wrcache.h(100:0)
  wire[1:0] sel7420; // wrcache.h(102:0)
  reg reg7429; // wrcache.h(112:0)
  wire[21:0] marport7444; // wrcache.h(134:1)
  wire[1:0] andb7448; // wrcache.h(134:1)
  wire ne7451; // wrcache.h(134:2)
  wire eq7454; // wrcache.h(134:3)
  wire ne7458; // wrcache.h(134:5)
  wire andl7460; // wrcache.h(134:5)
  wire andl7462; // wrcache.h(134:5)
  wire[511:0] marport7466; // wrcache.h(139:0)
  wire[511:0] orb7468; // wrcache.h(139:0)
  wire[1:0] orb7473; // wrcache.h(140:1)
  wire[21:0] tag_t7479; // wrcache.h(140:0)
  wire[21:0] marport7487; // wrcache.h(159:1)
  wire eq7491; // wrcache.h(159:1)
  wire[1:0] shl7494; // wrcache.h(159:2)
  wire[1:0] andb7497; // wrcache.h(159:3)
  wire ne7500; // wrcache.h(159:4)
  wire andl7502; // wrcache.h(159:4)
  wire[511:0] orb7505; // wrcache.h(163:0)
  wire[1:0] orb7510; // wrcache.h(164:1)
  wire[21:0] tag_t7516; // wrcache.h(164:0)
  wire[1:0] shl7526; // wrcache.h(178:0)
  wire[1:0] orb7529; // wrcache.h(178:1)
  wire ne7532; // wrcache.h(181:1)
  wire eq7540; // wrcache.h(193:1)
  wire[21:0] tag_t7546; // wrcache.h(196:0)
  wire[1:0] inv7552; // wrcache.h(197:0)
  wire[1:0] andb7555; // wrcache.h(197:1)
  wire[1:0] andb7563; // wrcache.h(202:2)
  wire ne7565; // wrcache.h(202:2)
  wire[1:0] inv7569; // wrcache.h(205:1)
  wire[1:0] andb7574; // wrcache.h(205:2)
  wire[21:0] tag_t7580; // wrcache.h(205:0)
  wire ne7594; // wrcache.h(227:2)
  wire sel7603; // wrcache.h(233:0)
  wire sel7604; // wrcache.h(227:0)
  wire sel7605; // wrcache.h(129:0)
  wire sel7606; // wrcache.h(227:0)
  reg sel7607; // wrcache.h(129:0)
  wire[1:0] sel7608; // wrcache.h(227:0)
  reg[1:0] sel7609; // wrcache.h(129:0)
  wire[19:0] sel7610; // wrcache.h(227:0)
  reg[19:0] sel7611; // wrcache.h(129:0)
  wire[511:0] sel7612; // wrcache.h(227:0)
  reg[511:0] sel7613; // wrcache.h(129:0)
  wire[1:0] sel7614; // wrcache.h(156:0)
  wire[1:0] sel7615; // wrcache.h(193:0)
  reg[1:0] sel7616; // wrcache.h(129:0)
  wire sel7617; // wrcache.h(156:0)
  wire eq7618; // wrcache.h(129:0)
  wire andb7619; // wrcache.h(129:0)
  wire sel7620; // wrcache.h(147:0)
  wire sel7621; // wrcache.h(131:0)
  wire sel7622; // wrcache.h(129:0)
  wire[2:0] sel7623; // wrcache.h(134:0)
  wire[2:0] sel7624; // wrcache.h(147:0)
  wire[2:0] sel7625; // wrcache.h(131:0)
  wire[2:0] sel7626; // wrcache.h(181:0)
  wire[2:0] sel7627; // wrcache.h(156:0)
  wire[2:0] sel7628; // wrcache.h(193:0)
  wire[2:0] sel7629; // wrcache.h(219:0)
  reg[2:0] sel7630; // wrcache.h(129:0)
  wire sel7631; // wrcache.h(181:0)
  wire andb7632; // wrcache.h(129:0)
  wire andb7634; // wrcache.h(129:0)
  wire sel7635; // wrcache.h(134:0)
  wire andb7636; // wrcache.h(129:0)
  wire sel7637; // wrcache.h(156:0)
  reg sel7638; // wrcache.h(129:0)
  wire[19:0] sel7639; // wrcache.h(156:0)
  wire sel7645; // wrcache.h(202:0)
  wire sel7646; // wrcache.h(193:0)
  reg sel7647; // wrcache.h(129:0)
  wire sel7648; // wrcache.h(131:0)
  wire sel7649; // wrcache.h(159:0)
  wire sel7650; // wrcache.h(156:0)
  reg sel7651; // wrcache.h(129:0)
  wire[511:0] sel7652; // wrcache.h(134:0)
  wire[511:0] sel7654; // wrcache.h(159:0)
  wire[511:0] sel7655; // wrcache.h(156:0)
  reg[511:0] sel7656; // wrcache.h(129:0)
  wire sel7657; // wrcache.h(156:0)
  wire[21:0] sel7660; // wrcache.h(134:0)
  wire[21:0] sel7662; // wrcache.h(159:0)
  wire[21:0] sel7663; // wrcache.h(156:0)
  wire[21:0] sel7664; // wrcache.h(202:0)
  wire[21:0] sel7665; // wrcache.h(193:0)
  reg[21:0] sel7666; // wrcache.h(129:0)
  wire[533:0] sel7667; // wrcache.h(134:0)
  wire[533:0] sel7668; // wrcache.h(147:0)
  wire[533:0] sel7669; // wrcache.h(131:0)
  wire[533:0] sel7670; // wrcache.h(129:0)

  assign marport7358 = mem7250[1'h1];
  assign marport7444 = mem7250[sel7651];
  assign marport7487 = mem7250[sel7617];
  always @ (posedge clk) begin
    if (sel7647) begin
      mem7250[sel7651] <= sel7666;
    end
  end
  assign marport7466 = mem7251[sel7651];
  always @ (posedge clk) begin
    if (sel7638) begin
      mem7251[sel7651] <= sel7656;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg7257 <= 2'h0;
    else
      reg7257 <= sel7616;
  end
  always @ (posedge clk) begin
    reg7265 <= sel7657;
  end
  always @ (posedge clk) begin
    reg7270 <= sel7639;
  end
  always @ (posedge clk) begin
    reg7289 <= sel7622;
  end
  assign io_evict_data7300 = {sel7613, sel7611, sel7609};
  always @ (posedge clk) begin
    if (reset)
      reg7317 <= 3'h0;
    else
      reg7317 <= sel7630;
  end
  always @ (posedge clk) begin
    reg7322 <= sel7670;
  end
  assign eq7338 = reg7317 == 3'h0;
  assign sel7340 = eq7338 ? io_enq_data : reg7322;
  assign shl7349 = 2'h1 << 32'h1;
  assign andb7352 = reg7257 & shl7349;
  assign ne7355 = 2'h0 != andb7352;
  assign eq7362 = marport7358[21:2] == sel7340[21:2];
  assign andl7365 = ne7355 && eq7362;
  assign sel7367 = andl7365 ? 1'h1 : 1'h0;
  assign andb7374 = marport7358[1:0] & sel7340[1:0];
  assign ne7376 = andb7374 != 2'h0;
  assign andl7379 = ne7355 && ne7376;
  assign sel7381 = andl7379 ? 1'h1 : 1'h0;
  assign notl7385 = !ne7355;
  assign sel7387 = notl7385 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg7391 <= sel7367;
  end
  always @ (posedge clk) begin
    reg7395 <= sel7381;
  end
  always @ (posedge clk) begin
    reg7399 <= sel7387;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7404 <= 1'h0;
    else
      reg7404 <= io_enq_valid;
  end
  assign add7409 = reg7289 + 1'h1;
  assign eq7413 = reg7289 == 1'h1;
  assign sel7417 = andb7418 ? 3'h0 : reg7317;
  assign andb7418 = sel7605 & eq7413;
  assign sel7419 = sel7605 ? add7409 : reg7289;
  assign sel7420 = andb7418 ? 2'h0 : reg7257;
  always @ (posedge clk) begin
    reg7429 <= sel7631;
  end
  assign andb7448 = marport7444[1:0] & io_enq_data[1:0];
  assign ne7451 = 2'h0 != andb7448;
  assign eq7454 = io_enq_data[21:2] == reg7270;
  assign ne7458 = reg7257 != 2'h0;
  assign andl7460 = ne7458 && eq7454;
  assign andl7462 = andl7460 && ne7451;
  assign orb7468 = marport7466 | io_enq_data[533:22];
  assign orb7473 = marport7444[1:0] | io_enq_data[1:0];
  assign tag_t7479 = {marport7444[21:2], orb7473};
  assign eq7491 = marport7487[21:2] == reg7322[21:2];
  assign shl7494 = 2'h1 << sel7617;
  assign andb7497 = reg7257 & shl7494;
  assign ne7500 = 2'h0 != andb7497;
  assign andl7502 = ne7500 && eq7491;
  assign orb7505 = marport7466 | reg7322[533:22];
  assign orb7510 = marport7444[1:0] | reg7322[1:0];
  assign tag_t7516 = {marport7444[21:2], orb7510};
  assign shl7526 = 2'h1 << sel7651;
  assign orb7529 = reg7257 | shl7526;
  assign ne7532 = sel7651 != reg7395;
  assign eq7540 = marport7444[1:0] == reg7322[1:0];
  assign tag_t7546 = {20'h0, 2'h0};
  assign inv7552 = ~shl7526;
  assign andb7555 = reg7257 & inv7552;
  assign andb7563 = marport7444[1:0] & reg7322[1:0];
  assign ne7565 = andb7563 != 2'h0;
  assign inv7569 = ~reg7322[1:0];
  assign andb7574 = marport7444[1:0] & inv7569;
  assign tag_t7580 = {marport7444[21:2], andb7574};
  assign ne7594 = marport7444[1:0] != 2'h0;
  assign sel7603 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel7604 = ne7594 ? sel7603 : 1'h1;
  assign sel7605 = (reg7317 == 3'h4) ? sel7604 : 1'h0;
  assign sel7606 = ne7594 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7317)
      3'h3: sel7607 = 1'h1;
      3'h4: sel7607 = sel7606;
      default: sel7607 = 1'h0;
    endcase
  end
  assign sel7608 = ne7594 ? reg7322[1:0] : 2'h0;
  always @(*) begin
    case (reg7317)
      3'h3: sel7609 = reg7322[1:0];
      3'h4: sel7609 = sel7608;
      default: sel7609 = 2'h0;
    endcase
  end
  assign sel7610 = ne7594 ? marport7444[21:2] : 20'h0;
  always @(*) begin
    case (reg7317)
      3'h3: sel7611 = marport7444[21:2];
      3'h4: sel7611 = sel7610;
      default: sel7611 = 20'h0;
    endcase
  end
  assign sel7612 = ne7594 ? marport7466 : lit7434;
  always @(*) begin
    case (reg7317)
      3'h3: sel7613 = marport7466;
      3'h4: sel7613 = sel7612;
      default: sel7613 = lit7434;
    endcase
  end
  assign sel7614 = reg7404 ? orb7529 : sel7420;
  assign sel7615 = eq7540 ? andb7555 : sel7420;
  always @(*) begin
    case (reg7317)
      3'h1: sel7616 = sel7614;
      3'h2: sel7616 = sel7615;
      default: sel7616 = sel7420;
    endcase
  end
  assign sel7617 = andb7619 ? reg7391 : 1'h0;
  assign eq7618 = reg7317 == 3'h1;
  assign andb7619 = eq7618 & reg7404;
  assign sel7620 = io_flush ? 1'h0 : sel7419;
  assign sel7621 = io_enq_valid ? sel7419 : sel7620;
  assign sel7622 = (reg7317 == 3'h0) ? sel7621 : sel7419;
  assign sel7623 = andl7462 ? sel7417 : 3'h1;
  assign sel7624 = io_flush ? 3'h4 : sel7417;
  assign sel7625 = io_enq_valid ? sel7623 : sel7624;
  assign sel7626 = ne7532 ? 3'h2 : 3'h0;
  assign sel7627 = reg7404 ? sel7626 : sel7417;
  assign sel7628 = eq7540 ? 3'h3 : 3'h0;
  assign sel7629 = io_evict_ready ? 3'h0 : sel7417;
  always @(*) begin
    case (reg7317)
      3'h0: sel7630 = sel7625;
      3'h1: sel7630 = sel7627;
      3'h2: sel7630 = sel7628;
      3'h3: sel7630 = sel7629;
      default: sel7630 = sel7417;
    endcase
  end
  assign sel7631 = andb7634 ? reg7395 : reg7429;
  assign andb7632 = reg7404 & ne7532;
  assign andb7634 = eq7618 & andb7632;
  assign sel7635 = andb7636 ? 1'h1 : 1'h0;
  assign andb7636 = io_enq_valid & andl7462;
  assign sel7637 = reg7404 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7317)
      3'h0: sel7638 = sel7635;
      3'h1: sel7638 = sel7637;
      default: sel7638 = 1'h0;
    endcase
  end
  assign sel7639 = andb7619 ? reg7322[21:2] : reg7270;
  assign sel7645 = ne7565 ? 1'h1 : 1'h0;
  assign sel7646 = eq7540 ? 1'h1 : sel7645;
  always @(*) begin
    case (reg7317)
      3'h0: sel7647 = sel7635;
      3'h1: sel7647 = sel7637;
      3'h2: sel7647 = sel7646;
      default: sel7647 = 1'h0;
    endcase
  end
  assign sel7648 = io_enq_valid ? reg7265 : 1'h0;
  assign sel7649 = andl7502 ? reg7391 : reg7399;
  assign sel7650 = reg7404 ? sel7649 : 1'h0;
  always @(*) begin
    case (reg7317)
      3'h0: sel7651 = sel7648;
      3'h1: sel7651 = sel7650;
      3'h2: sel7651 = reg7429;
      3'h3: sel7651 = reg7429;
      3'h4: sel7651 = reg7289;
      default: sel7651 = 1'h0;
    endcase
  end
  assign sel7652 = andb7636 ? orb7468 : lit7434;
  assign sel7654 = andl7502 ? orb7505 : reg7322[533:22];
  assign sel7655 = reg7404 ? sel7654 : lit7434;
  always @(*) begin
    case (reg7317)
      3'h0: sel7656 = sel7652;
      3'h1: sel7656 = sel7655;
      default: sel7656 = lit7434;
    endcase
  end
  assign sel7657 = andb7619 ? sel7651 : reg7265;
  assign sel7660 = andb7636 ? tag_t7479 : 22'h0;
  assign sel7662 = andl7502 ? tag_t7516 : reg7322[21:0];
  assign sel7663 = reg7404 ? sel7662 : 22'h0;
  assign sel7664 = ne7565 ? tag_t7580 : 22'h0;
  assign sel7665 = eq7540 ? tag_t7546 : sel7664;
  always @(*) begin
    case (reg7317)
      3'h0: sel7666 = sel7660;
      3'h1: sel7666 = sel7663;
      3'h2: sel7666 = sel7665;
      default: sel7666 = 22'h0;
    endcase
  end
  assign sel7667 = andl7462 ? reg7322 : io_enq_data;
  assign sel7668 = io_flush ? io_enq_data : reg7322;
  assign sel7669 = io_enq_valid ? sel7667 : sel7668;
  assign sel7670 = (reg7317 == 3'h0) ? sel7669 : reg7322;

  assign io_enq_ready = eq7338;
  assign io_evict_data = io_evict_data7300;
  assign io_evict_valid = sel7607;

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
  wire[511:0] lit7887 = 512'h0;
  wire[514:0] io_ctrl_rd_rsp_data6472; // lsu.cpp(19:0)
  wire ch_xbar_switch6833_clk; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_reset; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6833_io_in_0_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_in_0_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_in_0_ready; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6833_io_in_1_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_in_1_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_in_1_ready; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6833_io_in_2_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_in_2_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_in_2_ready; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6833_io_out_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_out_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6833_io_out_ready; // lsu.cpp(19:1)
  wire[2:0] ch_xbar_switch6833_io_out_grant; // lsu.cpp(19:1)
  wire ch_xbar_switch7201_clk; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_reset; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7201_io_in_0_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_in_0_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_in_0_ready; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7201_io_in_1_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_in_1_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_in_1_ready; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7201_io_in_2_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_in_2_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_in_2_ready; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7201_io_out_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_out_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7201_io_out_ready; // lsu.cpp(19:2)
  wire[2:0] ch_xbar_switch7201_io_out_grant; // lsu.cpp(19:2)
  wire[533:0] proxy7672; // lsu.cpp(19:3)
  wire spmv_write_cache7676_clk; // lsu.cpp(19:3)
  wire spmv_write_cache7676_reset; // lsu.cpp(19:3)
  wire[533:0] spmv_write_cache7676_io_enq_data; // lsu.cpp(19:3)
  wire spmv_write_cache7676_io_enq_valid; // lsu.cpp(19:3)
  wire spmv_write_cache7676_io_enq_ready; // lsu.cpp(19:3)
  wire[1:0] proxy_owner7688; // lsu.cpp(19:3)
  wire[533:0] spmv_write_cache7676_io_evict_data; // lsu.cpp(19:3)
  wire spmv_write_cache7676_io_evict_valid; // lsu.cpp(19:3)
  wire spmv_write_cache7676_io_evict_ready; // lsu.cpp(19:3)
  wire spmv_write_cache7676_io_flush; // lsu.cpp(19:3)
  wire notl7702; // lsu.cpp(44:0)
  reg reg7710; // lsu.cpp(47:0)
  reg[19:0] reg7715; // lsu.cpp(48:0)
  reg[13:0] reg7720; // lsu.cpp(49:0)
  reg[19:0] sel7730; // lsu.cpp(258:0)
  wire[19:0] add7731; // lsu.cpp(257:0)
  wire[5:0] ch_rd_mdata_t7734; // lsu.cpp(55:1)
  wire[13:0] pad7737; // lsu.cpp(55:0)
  reg[2:0] reg7742; // lsu.cpp(70:0)
  reg reg7748; // lsu.cpp(71:0)
  wire eq7754; // lsu.cpp(14:0)
  wire eq7758; // lsu.cpp(6:0)
  wire notl7761; // lsu.cpp(79:0)
  wire andb7764; // lsu.cpp(79:1)
  reg[533:0] reg7769; // lsu.cpp(81:0)
  reg[2:0] reg7780; // lsu.cpp(82:0)
  wire andb7783; // lsu.cpp(87:1)
  wire orb7787; // lsu.cpp(88:0)
  reg[31:0] sel7791; // lsu.cpp(87:0)
  reg[31:0] reg7798; // lsu.cpp(91:0)
  reg reg7805; // lsu.cpp(94:0)
  reg[19:0] reg7810; // lsu.cpp(95:0)
  reg[511:0] reg7815; // lsu.cpp(96:0)
  reg[13:0] reg7820; // lsu.cpp(97:0)
  wire[31:0] sub7824; // lsu.cpp(101:0)
  wire[4:0] ch_wr_mdata_t7827; // lsu.cpp(107:0)
  wire[19:0] add7834; // lsu.cpp(270:0)
  wire[13:0] pad7836; // lsu.cpp(110:0)
  wire[2:0] pad7839; // lsu.cpp(116:0)
  wire[4:0] ch_wr_mdata_t7842; // lsu.cpp(117:0)
  wire[19:0] add7848; // lsu.cpp(270:1)
  wire[13:0] pad7850; // lsu.cpp(120:0)
  wire notl7853; // lsu.cpp(127:1)
  wire[31:0] add7858; // lsu.cpp(129:1)
  wire[31:0] sub7860; // lsu.cpp(129:1)
  wire[19:0] sel7863; // lsu.cpp(114:0)
  wire[19:0] sel7864; // lsu.cpp(105:0)
  wire[19:0] sel7865; // lsu.cpp(103:0)
  wire sel7866; // lsu.cpp(114:0)
  wire sel7867; // lsu.cpp(105:0)
  wire sel7868; // lsu.cpp(127:0)
  reg sel7869; // lsu.cpp(103:0)
  reg[19:0] sel7870; // lsu.cpp(271:1)
  wire[31:0] sel7871; // lsu.cpp(127:0)
  wire eq7872; // lsu.cpp(103:0)
  wire andb7873; // lsu.cpp(103:0)
  wire sel7874; // lsu.cpp(127:0)
  reg[19:0] sel7877; // lsu.cpp(271:0)
  wire[511:0] sel7878; // lsu.cpp(114:0)
  wire[511:0] sel7879; // lsu.cpp(105:0)
  wire[511:0] sel7880; // lsu.cpp(103:0)
  wire[13:0] sel7881; // lsu.cpp(114:0)
  wire[13:0] sel7882; // lsu.cpp(105:0)
  wire[13:0] sel7883; // lsu.cpp(103:0)
  wire eq7894; // lsu.h(33:8)
  wire eq7898; // lsu.cpp(164:2)
  wire sel7912; // lsu.cpp(158:0)
  wire[1:0] sel7913; // lsu.cpp(158:0)
  wire[19:0] sel7914; // lsu.cpp(158:0)
  wire[511:0] sel7915; // lsu.cpp(158:0)
  wire sel7916; // lsu.cpp(158:0)
  wire[2:0] sel7917; // lsu.cpp(164:0)
  wire[2:0] sel7918; // lsu.cpp(163:0)
  wire[2:0] sel7919; // lsu.cpp(160:0)
  wire[2:0] sel7920; // lsu.cpp(177:0)
  wire[2:0] sel7921; // lsu.cpp(189:0)
  wire[2:0] sel7922; // lsu.cpp(198:0)
  reg[2:0] sel7924; // lsu.cpp(158:0)
  wire sel7925; // lsu.cpp(158:0)
  wire[2:0] sel7926; // lsu.cpp(160:0)
  wire andb7928; // lsu.cpp(158:0)
  wire[533:0] sel7929; // lsu.cpp(160:0)
  wire eq7938; // lsu.cpp(230:1)
  wire andb7941; // lsu.cpp(230:2)
  wire eq7945; // lsu.cpp(236:1)
  wire andb7948; // lsu.cpp(236:2)
  wire eq7952; // lsu.cpp(236:4)
  wire andb7955; // lsu.cpp(236:5)

  assign io_ctrl_rd_rsp_data6472 = {io_qpi_rd_rsp_data, io_qpi_rd_rsp_mdata[2:0]};
  assign ch_xbar_switch6833_clk = clk;
  assign ch_xbar_switch6833_reset = reset;
  ch_xbar_switch ch_xbar_switch6833(.clk(ch_xbar_switch6833_clk), .reset(ch_xbar_switch6833_reset), .io_in_0_data(ch_xbar_switch6833_io_in_0_data), .io_in_0_valid(ch_xbar_switch6833_io_in_0_valid), .io_in_1_data(ch_xbar_switch6833_io_in_1_data), .io_in_1_valid(ch_xbar_switch6833_io_in_1_valid), .io_in_2_data(ch_xbar_switch6833_io_in_2_data), .io_in_2_valid(ch_xbar_switch6833_io_in_2_valid), .io_out_ready(ch_xbar_switch6833_io_out_ready), .io_in_0_ready(ch_xbar_switch6833_io_in_0_ready), .io_in_1_ready(ch_xbar_switch6833_io_in_1_ready), .io_in_2_ready(ch_xbar_switch6833_io_in_2_ready), .io_out_data(ch_xbar_switch6833_io_out_data), .io_out_valid(ch_xbar_switch6833_io_out_valid), .io_out_grant(ch_xbar_switch6833_io_out_grant));
  assign ch_xbar_switch6833_io_in_0_data = io_walkers_0_rd_req_data;
  assign ch_xbar_switch6833_io_in_0_valid = io_walkers_0_rd_req_valid;
  assign ch_xbar_switch6833_io_in_1_data = io_walkers_1_rd_req_data;
  assign ch_xbar_switch6833_io_in_1_valid = io_walkers_1_rd_req_valid;
  assign ch_xbar_switch6833_io_in_2_data = io_ctrl_rd_req_data;
  assign ch_xbar_switch6833_io_in_2_valid = io_ctrl_rd_req_valid;
  assign ch_xbar_switch6833_io_out_ready = notl7702;
  assign ch_xbar_switch7201_clk = clk;
  assign ch_xbar_switch7201_reset = reset;
  ch_xbar_switch ch_xbar_switch7201(.clk(ch_xbar_switch7201_clk), .reset(ch_xbar_switch7201_reset), .io_in_0_data(ch_xbar_switch7201_io_in_0_data), .io_in_0_valid(ch_xbar_switch7201_io_in_0_valid), .io_in_1_data(ch_xbar_switch7201_io_in_1_data), .io_in_1_valid(ch_xbar_switch7201_io_in_1_valid), .io_in_2_data(ch_xbar_switch7201_io_in_2_data), .io_in_2_valid(ch_xbar_switch7201_io_in_2_valid), .io_out_ready(ch_xbar_switch7201_io_out_ready), .io_in_0_ready(ch_xbar_switch7201_io_in_0_ready), .io_in_1_ready(ch_xbar_switch7201_io_in_1_ready), .io_in_2_ready(ch_xbar_switch7201_io_in_2_ready), .io_out_data(ch_xbar_switch7201_io_out_data), .io_out_valid(ch_xbar_switch7201_io_out_valid), .io_out_grant(ch_xbar_switch7201_io_out_grant));
  assign ch_xbar_switch7201_io_in_0_data = io_PEs_0_wr_req_data;
  assign ch_xbar_switch7201_io_in_0_valid = io_PEs_0_wr_req_valid;
  assign ch_xbar_switch7201_io_in_1_data = io_PEs_1_wr_req_data;
  assign ch_xbar_switch7201_io_in_1_valid = io_PEs_1_wr_req_valid;
  assign ch_xbar_switch7201_io_in_2_data = io_ctrl_wr_req_data;
  assign ch_xbar_switch7201_io_in_2_valid = io_ctrl_wr_req_valid;
  assign ch_xbar_switch7201_io_out_ready = eq7758;
  assign proxy7672 = {sel7915, sel7914, sel7913};
  assign spmv_write_cache7676_clk = clk;
  assign spmv_write_cache7676_reset = reset;
  spmv_write_cache spmv_write_cache7676(.clk(spmv_write_cache7676_clk), .reset(spmv_write_cache7676_reset), .io_enq_data(spmv_write_cache7676_io_enq_data), .io_enq_valid(spmv_write_cache7676_io_enq_valid), .io_evict_ready(spmv_write_cache7676_io_evict_ready), .io_flush(spmv_write_cache7676_io_flush), .io_enq_ready(spmv_write_cache7676_io_enq_ready), .io_evict_data(spmv_write_cache7676_io_evict_data), .io_evict_valid(spmv_write_cache7676_io_evict_valid));
  assign spmv_write_cache7676_io_enq_data = proxy7672;
  assign spmv_write_cache7676_io_enq_valid = sel7912;
  assign proxy_owner7688 = spmv_write_cache7676_io_evict_data[1:0];
  assign spmv_write_cache7676_io_evict_ready = andb7764;
  assign spmv_write_cache7676_io_flush = sel7925;
  assign notl7702 = !io_qpi_rd_req_almostfull;
  always @ (posedge clk) begin
    if (reset)
      reg7710 <= 1'h0;
    else
      reg7710 <= ch_xbar_switch6833_io_out_valid;
  end
  always @ (posedge clk) begin
    reg7715 <= add7731;
  end
  always @ (posedge clk) begin
    reg7720 <= pad7737;
  end
  always @(*) begin
    case (ch_xbar_switch6833_io_out_data[2:0])
      3'h0: sel7730 = io_ctx[51:32];
      3'h1: sel7730 = io_ctx[71:52];
      3'h2: sel7730 = io_ctx[91:72];
      3'h3: sel7730 = io_ctx[111:92];
      3'h4: sel7730 = io_ctx[131:112];
      3'h5: sel7730 = io_ctx[151:132];
      default: sel7730 = io_ctx[171:152];
    endcase
  end
  assign add7731 = sel7730 + ch_xbar_switch6833_io_out_data[22:3];
  assign ch_rd_mdata_t7734 = {ch_xbar_switch6833_io_out_grant, ch_xbar_switch6833_io_out_data[2:0]};
  assign pad7737 = {{8{1'b0}}, ch_rd_mdata_t7734};
  always @ (posedge clk) begin
    if (reset)
      reg7742 <= 3'h0;
    else
      reg7742 <= sel7924;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7748 <= 1'h0;
    else
      reg7748 <= sel7869;
  end
  assign eq7754 = reg7748 == 1'h0;
  assign eq7758 = reg7742 == 3'h0;
  assign notl7761 = !sel7916;
  assign andb7764 = eq7754 & notl7761;
  always @ (posedge clk) begin
    reg7769 <= sel7929;
  end
  always @ (posedge clk) begin
    reg7780 <= sel7926;
  end
  assign andb7783 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign orb7787 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (orb7787)
      sel7791 = 32'h1;
    else if (andb7783)
      sel7791 = 32'h2;
    else
      sel7791 = 32'h0;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7798 <= 32'h0;
    else
      reg7798 <= sel7871;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7805 <= 1'h0;
    else
      reg7805 <= sel7874;
  end
  always @ (posedge clk) begin
    reg7810 <= sel7865;
  end
  always @ (posedge clk) begin
    reg7815 <= sel7880;
  end
  always @ (posedge clk) begin
    reg7820 <= sel7883;
  end
  assign sub7824 = reg7798 - sel7791;
  assign ch_wr_mdata_t7827 = {reg7780, reg7769[1:0]};
  assign add7834 = sel7877 + reg7769[21:2];
  assign pad7836 = {{9{1'b0}}, ch_wr_mdata_t7827};
  assign pad7839 = {{1{1'b0}}, proxy_owner7688};
  assign ch_wr_mdata_t7842 = {pad7839, 2'h1};
  assign add7848 = sel7870 + spmv_write_cache7676_io_evict_data[21:2];
  assign pad7850 = {{9{1'b0}}, ch_wr_mdata_t7842};
  assign notl7853 = !io_qpi_wr_req_almostfull;
  assign add7858 = reg7798 + 32'h1;
  assign sub7860 = add7858 - sel7791;
  assign sel7863 = spmv_write_cache7676_io_evict_valid ? add7848 : reg7810;
  assign sel7864 = sel7916 ? add7834 : sel7863;
  assign sel7865 = (reg7748 == 1'h0) ? sel7864 : reg7810;
  assign sel7866 = spmv_write_cache7676_io_evict_valid ? 1'h1 : reg7748;
  assign sel7867 = sel7916 ? 1'h1 : sel7866;
  assign sel7868 = notl7853 ? 1'h0 : reg7748;
  always @(*) begin
    case (reg7748)
      1'h0: sel7869 = sel7867;
      1'h1: sel7869 = sel7868;
      default: sel7869 = reg7748;
    endcase
  end
  always @(*) begin
    case (2'h1)
      2'h0: sel7870 = io_ctx[191:172];
      2'h1: sel7870 = io_ctx[211:192];
      default: sel7870 = io_ctx[231:212];
    endcase
  end
  assign sel7871 = andb7873 ? sub7860 : sub7824;
  assign eq7872 = reg7748 == 1'h1;
  assign andb7873 = eq7872 & notl7853;
  assign sel7874 = andb7873 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7769[1:0])
      2'h0: sel7877 = io_ctx[191:172];
      2'h1: sel7877 = io_ctx[211:192];
      default: sel7877 = io_ctx[231:212];
    endcase
  end
  assign sel7878 = spmv_write_cache7676_io_evict_valid ? spmv_write_cache7676_io_evict_data[533:22] : reg7815;
  assign sel7879 = sel7916 ? reg7769[533:22] : sel7878;
  assign sel7880 = (reg7748 == 1'h0) ? sel7879 : reg7815;
  assign sel7881 = spmv_write_cache7676_io_evict_valid ? pad7850 : reg7820;
  assign sel7882 = sel7916 ? pad7836 : sel7881;
  assign sel7883 = (reg7748 == 1'h0) ? sel7882 : reg7820;
  assign eq7894 = ch_xbar_switch7201_io_out_data[1:0] == 2'h1;
  assign eq7898 = ch_xbar_switch7201_io_out_grant == 3'h4;
  assign sel7912 = (reg7742 == 3'h2) ? 1'h1 : 1'h0;
  assign sel7913 = (reg7742 == 3'h2) ? reg7780[1:0] : 2'h0;
  assign sel7914 = (reg7742 == 3'h2) ? reg7769[21:2] : 20'h0;
  assign sel7915 = (reg7742 == 3'h2) ? reg7769[533:22] : lit7887;
  assign sel7916 = (reg7742 == 3'h1) ? 1'h1 : 1'h0;
  assign sel7917 = eq7898 ? 3'h3 : 3'h2;
  assign sel7918 = eq7894 ? sel7917 : 3'h1;
  assign sel7919 = ch_xbar_switch7201_io_out_valid ? sel7918 : reg7742;
  assign sel7920 = eq7754 ? 3'h0 : reg7742;
  assign sel7921 = spmv_write_cache7676_io_enq_ready ? 3'h0 : reg7742;
  assign sel7922 = spmv_write_cache7676_io_enq_ready ? 3'h4 : reg7742;
  always @(*) begin
    case (reg7742)
      3'h0: sel7924 = sel7919;
      3'h1: sel7924 = sel7920;
      3'h2: sel7924 = sel7921;
      3'h3: sel7924 = sel7922;
      3'h4: sel7924 = sel7921;
      default: sel7924 = reg7742;
    endcase
  end
  assign sel7925 = (reg7742 == 3'h3) ? 1'h1 : 1'h0;
  assign sel7926 = andb7928 ? ch_xbar_switch7201_io_out_grant : reg7780;
  assign andb7928 = eq7758 & ch_xbar_switch7201_io_out_valid;
  assign sel7929 = andb7928 ? ch_xbar_switch7201_io_out_data : reg7769;
  assign eq7938 = io_qpi_rd_rsp_mdata[5:3] == 3'h4;
  assign andb7941 = io_qpi_rd_rsp_valid & eq7938;
  assign eq7945 = io_qpi_rd_rsp_mdata[5:3] == 3'h1;
  assign andb7948 = io_qpi_rd_rsp_valid & eq7945;
  assign eq7952 = io_qpi_rd_rsp_mdata[5:3] == 3'h2;
  assign andb7955 = io_qpi_rd_rsp_valid & eq7952;

  assign io_qpi_rd_req_addr = reg7715;
  assign io_qpi_rd_req_mdata = reg7720;
  assign io_qpi_rd_req_valid = reg7710;
  assign io_qpi_wr_req_addr = reg7810;
  assign io_qpi_wr_req_mdata = reg7820;
  assign io_qpi_wr_req_data = reg7815;
  assign io_qpi_wr_req_valid = reg7805;
  assign io_ctrl_rd_req_ready = ch_xbar_switch6833_io_in_2_ready;
  assign io_ctrl_wr_req_ready = ch_xbar_switch7201_io_in_2_ready;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data6472;
  assign io_ctrl_rd_rsp_valid = andb7941;
  assign io_ctrl_outstanding_writes = reg7798;
  assign io_walkers_0_rd_req_ready = ch_xbar_switch6833_io_in_0_ready;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data6472;
  assign io_walkers_0_rd_rsp_valid = andb7948;
  assign io_walkers_1_rd_req_ready = ch_xbar_switch6833_io_in_1_ready;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data6472;
  assign io_walkers_1_rd_rsp_valid = andb7955;
  assign io_PEs_0_wr_req_ready = ch_xbar_switch7201_io_in_0_ready;
  assign io_PEs_1_wr_req_ready = ch_xbar_switch7201_io_in_1_ready;

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
  wire[95:0] lit8394 = 96'h0;
  wire[511:0] lit8501 = 512'h0;
  wire spmv_dcsc_walk2354_clk; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_reset; // /usr/include/c++/7/array(94:0)
  wire[63:0] spmv_dcsc_walk2354_io_ctrl_start_data; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_ctrl_start_valid; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_ctrl_start_ready; // /usr/include/c++/7/array(94:0)
  wire[63:0] spmv_dcsc_walk2354_io_ctrl_timer; // /usr/include/c++/7/array(94:0)
  wire[351:0] spmv_dcsc_walk2354_io_ctrl_stats; // /usr/include/c++/7/array(94:0)
  wire[22:0] spmv_dcsc_walk2354_io_lsu_rd_req_data; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_lsu_rd_req_valid; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_lsu_rd_req_ready; // /usr/include/c++/7/array(94:0)
  wire[514:0] spmv_dcsc_walk2354_io_lsu_rd_rsp_data; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_lsu_rd_rsp_valid; // /usr/include/c++/7/array(94:0)
  wire[84:0] spmv_dcsc_walk2354_io_pe_data; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_pe_valid; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk2354_io_pe_ready; // /usr/include/c++/7/array(94:0)
  wire spmv_dcsc_walk4719_clk; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_reset; // /usr/include/c++/7/array(94:9)
  wire[63:0] spmv_dcsc_walk4719_io_ctrl_start_data; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_ctrl_start_valid; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_ctrl_start_ready; // /usr/include/c++/7/array(94:9)
  wire[63:0] spmv_dcsc_walk4719_io_ctrl_timer; // /usr/include/c++/7/array(94:9)
  wire[351:0] spmv_dcsc_walk4719_io_ctrl_stats; // /usr/include/c++/7/array(94:9)
  wire[22:0] spmv_dcsc_walk4719_io_lsu_rd_req_data; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_lsu_rd_req_valid; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_lsu_rd_req_ready; // /usr/include/c++/7/array(94:9)
  wire[514:0] spmv_dcsc_walk4719_io_lsu_rd_rsp_data; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_lsu_rd_rsp_valid; // /usr/include/c++/7/array(94:9)
  wire[84:0] spmv_dcsc_walk4719_io_pe_data; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_pe_valid; // /usr/include/c++/7/array(94:9)
  wire spmv_dcsc_walk4719_io_pe_ready; // /usr/include/c++/7/array(94:9)
  wire spmv_pe5564_clk; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5564_reset; // /usr/include/c++/7/array(94:18)
  wire[84:0] spmv_pe5564_io_req_data; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5564_io_req_valid; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5564_io_req_ready; // /usr/include/c++/7/array(94:18)
  wire[533:0] spmv_pe5564_io_lsu_wr_req_data; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5564_io_lsu_wr_req_valid; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5564_io_lsu_wr_req_ready; // /usr/include/c++/7/array(94:18)
  wire[63:0] spmv_pe5564_io_stats; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5564_io_is_idle; // /usr/include/c++/7/array(94:18)
  wire spmv_pe6380_clk; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6380_reset; // /usr/include/c++/7/array(94:19)
  wire[84:0] spmv_pe6380_io_req_data; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6380_io_req_valid; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6380_io_req_ready; // /usr/include/c++/7/array(94:19)
  wire[533:0] spmv_pe6380_io_lsu_wr_req_data; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6380_io_lsu_wr_req_valid; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6380_io_lsu_wr_req_ready; // /usr/include/c++/7/array(94:19)
  wire[63:0] spmv_pe6380_io_stats; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6380_io_is_idle; // /usr/include/c++/7/array(94:19)
  wire spmv_lsu7959_clk; // spmv.cpp(23:0)
  wire spmv_lsu7959_reset; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_rd_req_almostfull; // spmv.cpp(23:0)
  wire[19:0] spmv_lsu7959_io_qpi_rd_req_addr; // spmv.cpp(23:0)
  wire[13:0] spmv_lsu7959_io_qpi_rd_req_mdata; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_rd_req_valid; // spmv.cpp(23:0)
  wire[13:0] spmv_lsu7959_io_qpi_rd_rsp_mdata; // spmv.cpp(23:0)
  wire[511:0] spmv_lsu7959_io_qpi_rd_rsp_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_rd_rsp_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_wr_req_almostfull; // spmv.cpp(23:0)
  wire[19:0] spmv_lsu7959_io_qpi_wr_req_addr; // spmv.cpp(23:0)
  wire[13:0] spmv_lsu7959_io_qpi_wr_req_mdata; // spmv.cpp(23:0)
  wire[511:0] spmv_lsu7959_io_qpi_wr_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_wr_req_valid; // spmv.cpp(23:0)
  wire[13:0] spmv_lsu7959_io_qpi_wr_rsp0_mdata; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_wr_rsp0_valid; // spmv.cpp(23:0)
  wire[13:0] spmv_lsu7959_io_qpi_wr_rsp1_mdata; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_qpi_wr_rsp1_valid; // spmv.cpp(23:0)
  wire[511:0] spmv_lsu7959_io_ctx; // spmv.cpp(23:0)
  wire[22:0] proxy8027; // spmv.cpp(23:0)
  wire[22:0] spmv_lsu7959_io_ctrl_rd_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_ctrl_rd_req_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_ctrl_rd_req_ready; // spmv.cpp(23:0)
  wire[533:0] proxy8038; // spmv.cpp(23:0)
  wire[533:0] spmv_lsu7959_io_ctrl_wr_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_ctrl_wr_req_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_ctrl_wr_req_ready; // spmv.cpp(23:0)
  wire[514:0] spmv_lsu7959_io_ctrl_rd_rsp_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_ctrl_rd_rsp_valid; // spmv.cpp(23:0)
  wire[31:0] spmv_lsu7959_io_ctrl_outstanding_writes; // spmv.cpp(23:0)
  wire[22:0] spmv_lsu7959_io_walkers_0_rd_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_walkers_0_rd_req_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_walkers_0_rd_req_ready; // spmv.cpp(23:0)
  wire[514:0] spmv_lsu7959_io_walkers_0_rd_rsp_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_walkers_0_rd_rsp_valid; // spmv.cpp(23:0)
  wire[22:0] spmv_lsu7959_io_walkers_1_rd_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_walkers_1_rd_req_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_walkers_1_rd_req_ready; // spmv.cpp(23:0)
  wire[514:0] spmv_lsu7959_io_walkers_1_rd_rsp_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_walkers_1_rd_rsp_valid; // spmv.cpp(23:0)
  wire[533:0] spmv_lsu7959_io_PEs_0_wr_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_PEs_0_wr_req_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_PEs_0_wr_req_ready; // spmv.cpp(23:0)
  wire[533:0] spmv_lsu7959_io_PEs_1_wr_req_data; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_PEs_1_wr_req_valid; // spmv.cpp(23:0)
  wire spmv_lsu7959_io_PEs_1_wr_req_ready; // spmv.cpp(23:0)
  wire ch_llqueue8319_clk; // spmv.cpp(23:1)
  wire ch_llqueue8319_reset; // spmv.cpp(23:1)
  wire[511:0] ch_llqueue8319_io_enq_data; // spmv.cpp(23:1)
  wire ch_llqueue8319_io_enq_valid; // spmv.cpp(23:1)
  wire[511:0] ch_llqueue8319_io_deq_data; // spmv.cpp(23:1)
  wire ch_llqueue8319_io_deq_valid; // spmv.cpp(23:1)
  wire ch_llqueue8319_io_deq_ready; // spmv.cpp(23:1)
  wire[543:0] proxy8343; // spmv.cpp(23:2)
  reg[543:0] reg8344; // spmv.cpp(23:2)
  reg[4:0] reg8351; // spmv.cpp(23:3)
  reg[31:0] reg8358; // spmv.cpp(23:4)
  reg[19:0] reg8365; // spmv.cpp(23:5)
  reg[19:0] reg8371; // spmv.cpp(23:6)
  reg[1:0] reg8378; // spmv.cpp(23:7)
  reg[19:0] reg8386; // spmv.cpp(23:9)
  reg[19:0] reg8392; // spmv.cpp(23:10)
  wire[95:0] proxy8401; // spmv.cpp(23:11)
  reg[95:0] reg8402; // spmv.cpp(23:11)
  wire[19:0] sub8415; // spmv.cpp(41:1)
  reg[63:0] reg8422; // spmv.cpp(44:0)
  wire[63:0] add8427; // spmv.cpp(45:1)
  reg[2:0] reg8434; // spmv.cpp(62:0)
  reg reg8442; // spmv.cpp(65:0)
  wire eq8446; // lsu.h(23:40)
  wire andl8449; // spmv.cpp(70:1)
  wire[31:0] pad8451; // spmv.cpp(77:0)
  wire eq8454; // lsu.h(23:41)
  wire andl8457; // spmv.cpp(75:0)
  wire andl8459; // spmv.cpp(75:0)
  wire[31:0] pad8461; // spmv.cpp(76:0)
  wire[31:0] add8463; // spmv.cpp(76:2)
  wire[31:0] sub8465; // spmv.cpp(76:2)
  wire andl8468; // spmv.cpp(80:0)
  wire andl8471; // spmv.cpp(82:0)
  wire andl8473; // spmv.cpp(82:0)
  wire[31:0] add8482; // spmv.cpp(92:4)
  wire[31:0] shl8486; // spmv.cpp(92:4)
  wire[31:0] add8488; // spmv.cpp(92:4)
  wire[31:0] shr8492; // spmv.cpp(92:4)
  wire[19:0] sub8496; // spmv.cpp(92:1)
  wire ne8506; // spmv.cpp(107:2)
  wire ne8517; // spmv.cpp(119:2)
  wire[19:0] add8522; // spmv.cpp(123:1)
  wire eq8525; // spmv.cpp(124:1)
  wire[31:0] add8531; // spmv.cpp(130:1)
  wire eq8538; // spmv.cpp(139:1)
  wire andl8540; // spmv.cpp(139:1)
  wire[19:0] pad8551; // spmv.cpp(157:0)
  wire[511:0] pad8552; // spmv.cpp(267:1)
  wire[415:0] ch_cu_stats_t8554; // spmv.cpp(269:0)
  wire[511:0] pad8570; // spmv.cpp(270:0)
  wire[415:0] ch_cu_stats_t8572; // spmv.cpp(272:0)
  wire[511:0] pad8588; // spmv.cpp(273:0)
  reg[511:0] sel8589; // spmv.cpp(267:0)
  wire[1:0] add8594; // spmv.cpp(162:1)
  wire eq8598; // spmv.cpp(163:2)
  wire eq8604; // spmv.cpp(171:2)
  wire[1:0] sel8608; // spmv.cpp(161:0)
  wire eq8609; // spmv.cpp(104:0)
  wire andb8610; // spmv.cpp(104:0)
  reg sel8611; // spmv.cpp(104:0)
  wire sel8612; // spmv.cpp(107:0)
  wire sel8613; // spmv.cpp(106:0)
  wire sel8614; // spmv.cpp(171:0)
  reg sel8615; // spmv.cpp(104:0)
  reg[1:0] sel8616; // spmv.cpp(104:0)
  wire[19:0] sel8617; // spmv.cpp(104:0)
  wire[511:0] sel8618; // spmv.cpp(104:0)
  wire[19:0] sel8619; // spmv.cpp(107:0)
  wire andb8620; // spmv.cpp(104:0)
  wire[19:0] sel8621; // spmv.cpp(122:0)
  wire andb8622; // spmv.cpp(104:0)
  reg[19:0] sel8623; // spmv.cpp(104:0)
  wire[2:0] sel8624; // spmv.cpp(107:0)
  wire[2:0] sel8626; // spmv.cpp(124:0)
  wire andb8627; // spmv.cpp(104:0)
  wire andb8628; // spmv.cpp(104:0)
  wire[2:0] sel8629; // spmv.cpp(139:0)
  wire[2:0] sel8630; // spmv.cpp(149:0)
  wire[2:0] sel8631; // spmv.cpp(163:0)
  wire andb8632; // spmv.cpp(104:0)
  wire[2:0] sel8633; // spmv.cpp(171:0)
  reg[2:0] sel8634; // spmv.cpp(104:0)
  wire[31:0] sel8636; // spmv.cpp(122:0)
  wire[31:0] sel8637; // spmv.cpp(119:0)
  wire[31:0] sel8638; // spmv.cpp(104:0)
  wire sel8639; // spmv.cpp(119:0)
  wire eq8640; // spmv.cpp(104:0)
  wire andb8641; // spmv.cpp(104:0)
  reg[1:0] reg8646; // spmv.cpp(189:0)
  wire eq8655; // spmv.cpp(205:1)
  wire[543:0] shr8676; // spmv.cpp(229:0)
  wire[19:0] add8683; // spmv.cpp(230:1)
  wire[4:0] sub8688; // spmv.cpp(231:1)
  wire ne8693; // spmv.cpp(241:2)
  wire ne8696; // spmv.cpp(241:3)
  wire andl8698; // spmv.cpp(241:3)
  wire[19:0] sel8735; // spmv.cpp(222:0)
  wire[19:0] sel8736; // spmv.cpp(222:1)
  reg[19:0] sel8737; // spmv.cpp(200:0)
  wire[63:0] sel8738; // spmv.cpp(222:1)
  wire eq8739; // spmv.cpp(200:0)
  wire andb8740; // spmv.cpp(200:0)
  wire sel8741; // spmv.cpp(222:0)
  wire eq8742; // spmv.cpp(200:0)
  wire andb8743; // spmv.cpp(200:0)
  wire[63:0] sel8744; // spmv.cpp(222:0)
  wire[1:0] sel8747; // spmv.cpp(203:0)
  wire[1:0] sel8748; // spmv.cpp(241:0)
  wire[1:0] sel8749; // spmv.cpp(222:0)
  wire[1:0] sel8750; // spmv.cpp(241:4)
  wire[1:0] sel8751; // spmv.cpp(222:1)
  reg[1:0] sel8752; // spmv.cpp(200:0)
  wire sel8753; // spmv.cpp(222:1)
  wire[4:0] sel8756; // spmv.cpp(205:0)
  wire[4:0] sel8757; // spmv.cpp(203:0)
  wire[4:0] sel8758; // spmv.cpp(222:0)
  wire[4:0] sel8759; // spmv.cpp(222:1)
  reg[4:0] sel8760; // spmv.cpp(200:0)
  wire[31:0] sel8762; // spmv.cpp(205:0)
  wire andb8763; // spmv.cpp(200:0)
  wire[31:0] sel8764; // spmv.cpp(222:0)
  wire[31:0] sel8765; // spmv.cpp(222:1)
  reg[31:0] sel8766; // spmv.cpp(200:0)
  wire[479:0] sel8768; // spmv.cpp(205:0)
  wire[479:0] sel8769; // spmv.cpp(203:0)
  wire[479:0] sel8770; // spmv.cpp(222:0)
  wire[479:0] sel8771; // spmv.cpp(222:1)
  reg[479:0] sel8772; // spmv.cpp(200:0)
  wire[31:0] sel8774; // spmv.cpp(205:0)
  wire[31:0] sel8775; // spmv.cpp(203:0)
  wire[31:0] sel8776; // spmv.cpp(222:0)
  wire[31:0] sel8777; // spmv.cpp(222:1)
  reg[31:0] sel8778; // spmv.cpp(200:0)
  wire sel8779; // spmv.cpp(203:0)
  wire eq8780; // spmv.cpp(200:0)
  wire andb8781; // spmv.cpp(200:0)

  assign spmv_dcsc_walk2354_clk = clk;
  assign spmv_dcsc_walk2354_reset = reset;
  spmv_dcsc_walk spmv_dcsc_walk2354(.clk(spmv_dcsc_walk2354_clk), .reset(spmv_dcsc_walk2354_reset), .io_ctrl_start_data(spmv_dcsc_walk2354_io_ctrl_start_data), .io_ctrl_start_valid(spmv_dcsc_walk2354_io_ctrl_start_valid), .io_ctrl_timer(spmv_dcsc_walk2354_io_ctrl_timer), .io_lsu_rd_req_ready(spmv_dcsc_walk2354_io_lsu_rd_req_ready), .io_lsu_rd_rsp_data(spmv_dcsc_walk2354_io_lsu_rd_rsp_data), .io_lsu_rd_rsp_valid(spmv_dcsc_walk2354_io_lsu_rd_rsp_valid), .io_pe_ready(spmv_dcsc_walk2354_io_pe_ready), .io_ctrl_start_ready(spmv_dcsc_walk2354_io_ctrl_start_ready), .io_ctrl_stats(spmv_dcsc_walk2354_io_ctrl_stats), .io_lsu_rd_req_data(spmv_dcsc_walk2354_io_lsu_rd_req_data), .io_lsu_rd_req_valid(spmv_dcsc_walk2354_io_lsu_rd_req_valid), .io_pe_data(spmv_dcsc_walk2354_io_pe_data), .io_pe_valid(spmv_dcsc_walk2354_io_pe_valid));
  assign spmv_dcsc_walk2354_io_ctrl_start_data = sel8744;
  assign spmv_dcsc_walk2354_io_ctrl_start_valid = sel8741;
  assign spmv_dcsc_walk2354_io_ctrl_timer = reg8422;
  assign spmv_dcsc_walk2354_io_lsu_rd_req_ready = spmv_lsu7959_io_walkers_0_rd_req_ready;
  assign spmv_dcsc_walk2354_io_lsu_rd_rsp_data = spmv_lsu7959_io_walkers_0_rd_rsp_data;
  assign spmv_dcsc_walk2354_io_lsu_rd_rsp_valid = spmv_lsu7959_io_walkers_0_rd_rsp_valid;
  assign spmv_dcsc_walk2354_io_pe_ready = spmv_pe5564_io_req_ready;
  assign spmv_dcsc_walk4719_clk = clk;
  assign spmv_dcsc_walk4719_reset = reset;
  spmv_dcsc_walk spmv_dcsc_walk4719(.clk(spmv_dcsc_walk4719_clk), .reset(spmv_dcsc_walk4719_reset), .io_ctrl_start_data(spmv_dcsc_walk4719_io_ctrl_start_data), .io_ctrl_start_valid(spmv_dcsc_walk4719_io_ctrl_start_valid), .io_ctrl_timer(spmv_dcsc_walk4719_io_ctrl_timer), .io_lsu_rd_req_ready(spmv_dcsc_walk4719_io_lsu_rd_req_ready), .io_lsu_rd_rsp_data(spmv_dcsc_walk4719_io_lsu_rd_rsp_data), .io_lsu_rd_rsp_valid(spmv_dcsc_walk4719_io_lsu_rd_rsp_valid), .io_pe_ready(spmv_dcsc_walk4719_io_pe_ready), .io_ctrl_start_ready(spmv_dcsc_walk4719_io_ctrl_start_ready), .io_ctrl_stats(spmv_dcsc_walk4719_io_ctrl_stats), .io_lsu_rd_req_data(spmv_dcsc_walk4719_io_lsu_rd_req_data), .io_lsu_rd_req_valid(spmv_dcsc_walk4719_io_lsu_rd_req_valid), .io_pe_data(spmv_dcsc_walk4719_io_pe_data), .io_pe_valid(spmv_dcsc_walk4719_io_pe_valid));
  assign spmv_dcsc_walk4719_io_ctrl_start_data = sel8738;
  assign spmv_dcsc_walk4719_io_ctrl_start_valid = sel8753;
  assign spmv_dcsc_walk4719_io_ctrl_timer = reg8422;
  assign spmv_dcsc_walk4719_io_lsu_rd_req_ready = spmv_lsu7959_io_walkers_1_rd_req_ready;
  assign spmv_dcsc_walk4719_io_lsu_rd_rsp_data = spmv_lsu7959_io_walkers_1_rd_rsp_data;
  assign spmv_dcsc_walk4719_io_lsu_rd_rsp_valid = spmv_lsu7959_io_walkers_1_rd_rsp_valid;
  assign spmv_dcsc_walk4719_io_pe_ready = spmv_pe6380_io_req_ready;
  assign spmv_pe5564_clk = clk;
  assign spmv_pe5564_reset = reset;
  spmv_pe spmv_pe5564(.clk(spmv_pe5564_clk), .reset(spmv_pe5564_reset), .io_req_data(spmv_pe5564_io_req_data), .io_req_valid(spmv_pe5564_io_req_valid), .io_lsu_wr_req_ready(spmv_pe5564_io_lsu_wr_req_ready), .io_req_ready(spmv_pe5564_io_req_ready), .io_lsu_wr_req_data(spmv_pe5564_io_lsu_wr_req_data), .io_lsu_wr_req_valid(spmv_pe5564_io_lsu_wr_req_valid), .io_stats(spmv_pe5564_io_stats), .io_is_idle(spmv_pe5564_io_is_idle));
  assign spmv_pe5564_io_req_data = spmv_dcsc_walk2354_io_pe_data;
  assign spmv_pe5564_io_req_valid = spmv_dcsc_walk2354_io_pe_valid;
  assign spmv_pe5564_io_lsu_wr_req_ready = spmv_lsu7959_io_PEs_0_wr_req_ready;
  assign spmv_pe6380_clk = clk;
  assign spmv_pe6380_reset = reset;
  spmv_pe spmv_pe6380(.clk(spmv_pe6380_clk), .reset(spmv_pe6380_reset), .io_req_data(spmv_pe6380_io_req_data), .io_req_valid(spmv_pe6380_io_req_valid), .io_lsu_wr_req_ready(spmv_pe6380_io_lsu_wr_req_ready), .io_req_ready(spmv_pe6380_io_req_ready), .io_lsu_wr_req_data(spmv_pe6380_io_lsu_wr_req_data), .io_lsu_wr_req_valid(spmv_pe6380_io_lsu_wr_req_valid), .io_stats(spmv_pe6380_io_stats), .io_is_idle(spmv_pe6380_io_is_idle));
  assign spmv_pe6380_io_req_data = spmv_dcsc_walk4719_io_pe_data;
  assign spmv_pe6380_io_req_valid = spmv_dcsc_walk4719_io_pe_valid;
  assign spmv_pe6380_io_lsu_wr_req_ready = spmv_lsu7959_io_PEs_1_wr_req_ready;
  assign spmv_lsu7959_clk = clk;
  assign spmv_lsu7959_reset = reset;
  spmv_lsu spmv_lsu7959(.clk(spmv_lsu7959_clk), .reset(spmv_lsu7959_reset), .io_qpi_rd_req_almostfull(spmv_lsu7959_io_qpi_rd_req_almostfull), .io_qpi_rd_rsp_mdata(spmv_lsu7959_io_qpi_rd_rsp_mdata), .io_qpi_rd_rsp_data(spmv_lsu7959_io_qpi_rd_rsp_data), .io_qpi_rd_rsp_valid(spmv_lsu7959_io_qpi_rd_rsp_valid), .io_qpi_wr_req_almostfull(spmv_lsu7959_io_qpi_wr_req_almostfull), .io_qpi_wr_rsp0_mdata(spmv_lsu7959_io_qpi_wr_rsp0_mdata), .io_qpi_wr_rsp0_valid(spmv_lsu7959_io_qpi_wr_rsp0_valid), .io_qpi_wr_rsp1_mdata(spmv_lsu7959_io_qpi_wr_rsp1_mdata), .io_qpi_wr_rsp1_valid(spmv_lsu7959_io_qpi_wr_rsp1_valid), .io_ctx(spmv_lsu7959_io_ctx), .io_ctrl_rd_req_data(spmv_lsu7959_io_ctrl_rd_req_data), .io_ctrl_rd_req_valid(spmv_lsu7959_io_ctrl_rd_req_valid), .io_ctrl_wr_req_data(spmv_lsu7959_io_ctrl_wr_req_data), .io_ctrl_wr_req_valid(spmv_lsu7959_io_ctrl_wr_req_valid), .io_walkers_0_rd_req_data(spmv_lsu7959_io_walkers_0_rd_req_data), .io_walkers_0_rd_req_valid(spmv_lsu7959_io_walkers_0_rd_req_valid), .io_walkers_1_rd_req_data(spmv_lsu7959_io_walkers_1_rd_req_data), .io_walkers_1_rd_req_valid(spmv_lsu7959_io_walkers_1_rd_req_valid), .io_PEs_0_wr_req_data(spmv_lsu7959_io_PEs_0_wr_req_data), .io_PEs_0_wr_req_valid(spmv_lsu7959_io_PEs_0_wr_req_valid), .io_PEs_1_wr_req_data(spmv_lsu7959_io_PEs_1_wr_req_data), .io_PEs_1_wr_req_valid(spmv_lsu7959_io_PEs_1_wr_req_valid), .io_qpi_rd_req_addr(spmv_lsu7959_io_qpi_rd_req_addr), .io_qpi_rd_req_mdata(spmv_lsu7959_io_qpi_rd_req_mdata), .io_qpi_rd_req_valid(spmv_lsu7959_io_qpi_rd_req_valid), .io_qpi_wr_req_addr(spmv_lsu7959_io_qpi_wr_req_addr), .io_qpi_wr_req_mdata(spmv_lsu7959_io_qpi_wr_req_mdata), .io_qpi_wr_req_data(spmv_lsu7959_io_qpi_wr_req_data), .io_qpi_wr_req_valid(spmv_lsu7959_io_qpi_wr_req_valid), .io_ctrl_rd_req_ready(spmv_lsu7959_io_ctrl_rd_req_ready), .io_ctrl_wr_req_ready(spmv_lsu7959_io_ctrl_wr_req_ready), .io_ctrl_rd_rsp_data(spmv_lsu7959_io_ctrl_rd_rsp_data), .io_ctrl_rd_rsp_valid(spmv_lsu7959_io_ctrl_rd_rsp_valid), .io_ctrl_outstanding_writes(spmv_lsu7959_io_ctrl_outstanding_writes), .io_walkers_0_rd_req_ready(spmv_lsu7959_io_walkers_0_rd_req_ready), .io_walkers_0_rd_rsp_data(spmv_lsu7959_io_walkers_0_rd_rsp_data), .io_walkers_0_rd_rsp_valid(spmv_lsu7959_io_walkers_0_rd_rsp_valid), .io_walkers_1_rd_req_ready(spmv_lsu7959_io_walkers_1_rd_req_ready), .io_walkers_1_rd_rsp_data(spmv_lsu7959_io_walkers_1_rd_rsp_data), .io_walkers_1_rd_rsp_valid(spmv_lsu7959_io_walkers_1_rd_rsp_valid), .io_PEs_0_wr_req_ready(spmv_lsu7959_io_PEs_0_wr_req_ready), .io_PEs_1_wr_req_ready(spmv_lsu7959_io_PEs_1_wr_req_ready));
  assign spmv_lsu7959_io_qpi_rd_req_almostfull = io_qpi_rd_req_almostfull;
  assign spmv_lsu7959_io_qpi_rd_rsp_mdata = io_qpi_rd_rsp_mdata;
  assign spmv_lsu7959_io_qpi_rd_rsp_data = io_qpi_rd_rsp_data;
  assign spmv_lsu7959_io_qpi_rd_rsp_valid = io_qpi_rd_rsp_valid;
  assign spmv_lsu7959_io_qpi_wr_req_almostfull = io_qpi_wr_req_almostfull;
  assign spmv_lsu7959_io_qpi_wr_rsp0_mdata = io_qpi_wr_rsp0_mdata;
  assign spmv_lsu7959_io_qpi_wr_rsp0_valid = io_qpi_wr_rsp0_valid;
  assign spmv_lsu7959_io_qpi_wr_rsp1_mdata = io_qpi_wr_rsp1_mdata;
  assign spmv_lsu7959_io_qpi_wr_rsp1_valid = io_qpi_wr_rsp1_valid;
  assign spmv_lsu7959_io_ctx = io_ctx;
  assign proxy8027 = {reg8365, 3'h0};
  assign spmv_lsu7959_io_ctrl_rd_req_data = proxy8027;
  assign spmv_lsu7959_io_ctrl_rd_req_valid = sel8639;
  assign proxy8038 = {sel8618, sel8617, sel8616};
  assign spmv_lsu7959_io_ctrl_wr_req_data = proxy8038;
  assign spmv_lsu7959_io_ctrl_wr_req_valid = sel8611;
  assign spmv_lsu7959_io_walkers_0_rd_req_data = spmv_dcsc_walk2354_io_lsu_rd_req_data;
  assign spmv_lsu7959_io_walkers_0_rd_req_valid = spmv_dcsc_walk2354_io_lsu_rd_req_valid;
  assign spmv_lsu7959_io_walkers_1_rd_req_data = spmv_dcsc_walk4719_io_lsu_rd_req_data;
  assign spmv_lsu7959_io_walkers_1_rd_req_valid = spmv_dcsc_walk4719_io_lsu_rd_req_valid;
  assign spmv_lsu7959_io_PEs_0_wr_req_data = spmv_pe5564_io_lsu_wr_req_data;
  assign spmv_lsu7959_io_PEs_0_wr_req_valid = spmv_pe5564_io_lsu_wr_req_valid;
  assign spmv_lsu7959_io_PEs_1_wr_req_data = spmv_pe6380_io_lsu_wr_req_data;
  assign spmv_lsu7959_io_PEs_1_wr_req_valid = spmv_pe6380_io_lsu_wr_req_valid;
  assign ch_llqueue8319_clk = clk;
  assign ch_llqueue8319_reset = reset;
  ch_llqueue ch_llqueue8319(.clk(ch_llqueue8319_clk), .reset(ch_llqueue8319_reset), .io_enq_data(ch_llqueue8319_io_enq_data), .io_enq_valid(ch_llqueue8319_io_enq_valid), .io_deq_ready(ch_llqueue8319_io_deq_ready), .io_deq_data(ch_llqueue8319_io_deq_data), .io_deq_valid(ch_llqueue8319_io_deq_valid));
  assign ch_llqueue8319_io_enq_data = spmv_lsu7959_io_ctrl_rd_rsp_data[514:3];
  assign ch_llqueue8319_io_enq_valid = andl8449;
  assign ch_llqueue8319_io_deq_ready = sel8779;
  assign proxy8343 = {sel8778, sel8772, sel8766};
  always @ (posedge clk) begin
    reg8344 <= proxy8343;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8351 <= 5'h0;
    else
      reg8351 <= sel8760;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8358 <= 32'h0;
    else
      reg8358 <= sub8465;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8365 <= 20'h0;
    else
      reg8365 <= sel8623;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8371 <= 20'h0;
    else
      reg8371 <= sub8496;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8378 <= 2'h0;
    else
      reg8378 <= sel8608;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8386 <= 20'h0;
    else
      reg8386 <= sel8737;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8392 <= 20'h0;
    else
      reg8392 <= sub8415;
  end
  assign proxy8401 = {reg8402[95:32], sel8638};
  always @ (posedge clk) begin
    if (reset)
      reg8402 <= lit8394;
    else
      reg8402 <= proxy8401;
  end
  assign sub8415 = io_ctx[19:0] - 20'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8422 <= 64'h0;
    else
      reg8422 <= add8427;
  end
  assign add8427 = reg8422 + 64'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8434 <= 3'h0;
    else
      reg8434 <= sel8634;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8442 <= 1'h0;
    else
      reg8442 <= sel8615;
  end
  assign eq8446 = spmv_lsu7959_io_ctrl_rd_rsp_data[2:0] == 3'h0;
  assign andl8449 = spmv_lsu7959_io_ctrl_rd_rsp_valid && eq8446;
  assign pad8451 = {{31{1'b0}}, sel8779};
  assign eq8454 = 3'h0 == 3'h0;
  assign andl8457 = sel8639 && spmv_lsu7959_io_ctrl_rd_req_ready;
  assign andl8459 = andl8457 && eq8454;
  assign pad8461 = {{31{1'b0}}, andl8459};
  assign add8463 = reg8358 + pad8461;
  assign sub8465 = add8463 - pad8451;
  assign andl8468 = spmv_dcsc_walk2354_io_ctrl_start_ready && spmv_pe5564_io_is_idle;
  assign andl8471 = andl8468 && spmv_dcsc_walk4719_io_ctrl_start_ready;
  assign andl8473 = andl8471 && spmv_pe6380_io_is_idle;
  assign add8482 = io_ctx[31:0] + 32'h1;
  assign shl8486 = add8482 << 32'h2;
  assign add8488 = shl8486 + 32'h3f;
  assign shr8492 = add8488 >> 32'h6;
  assign sub8496 = shr8492[19:0] - 20'h1;
  assign ne8506 = io_ctx[31:0] != 32'h0;
  assign ne8517 = reg8358 != 32'h4;
  assign add8522 = reg8365 + 20'h1;
  assign eq8525 = reg8365 == reg8371;
  assign add8531 = reg8402[31:0] + 32'h1;
  assign eq8538 = reg8386 == io_ctx[19:0];
  assign andl8540 = eq8538 && andl8473;
  assign pad8551 = {{18{1'b0}}, reg8378};
  assign pad8552 = {{416{1'b0}}, reg8402};
  assign ch_cu_stats_t8554 = {spmv_pe5564_io_stats, spmv_dcsc_walk2354_io_ctrl_stats};
  assign pad8570 = {{96{1'b0}}, ch_cu_stats_t8554};
  assign ch_cu_stats_t8572 = {spmv_pe6380_io_stats, spmv_dcsc_walk4719_io_ctrl_stats};
  assign pad8588 = {{96{1'b0}}, ch_cu_stats_t8572};
  always @(*) begin
    case (reg8378)
      2'h1: sel8589 = pad8570;
      2'h0: sel8589 = pad8552;
      default: sel8589 = pad8588;
    endcase
  end
  assign add8594 = reg8378 + 2'h1;
  assign eq8598 = reg8378 == 2'h2;
  assign eq8604 = spmv_lsu7959_io_ctrl_outstanding_writes == 32'h0;
  assign sel8608 = andb8610 ? add8594 : reg8378;
  assign eq8609 = reg8434 == 3'h4;
  assign andb8610 = eq8609 & spmv_lsu7959_io_ctrl_wr_req_ready;
  always @(*) begin
    case (reg8434)
      3'h3: sel8611 = 1'h1;
      3'h4: sel8611 = 1'h1;
      default: sel8611 = 1'h0;
    endcase
  end
  assign sel8612 = ne8506 ? 1'h0 : 1'h1;
  assign sel8613 = io_start ? sel8612 : reg8442;
  assign sel8614 = eq8604 ? 1'h1 : reg8442;
  always @(*) begin
    case (reg8434)
      3'h0: sel8615 = sel8613;
      3'h5: sel8615 = sel8614;
      default: sel8615 = reg8442;
    endcase
  end
  always @(*) begin
    case (reg8434)
      3'h3: sel8616 = 2'h1;
      3'h4: sel8616 = 2'h2;
      default: sel8616 = 2'h0;
    endcase
  end
  assign sel8617 = (reg8434 == 3'h4) ? pad8551 : 20'h0;
  assign sel8618 = (reg8434 == 3'h4) ? sel8589 : lit8501;
  assign sel8619 = andb8620 ? 20'h0 : reg8365;
  assign andb8620 = io_start & ne8506;
  assign sel8621 = andb8622 ? add8522 : reg8365;
  assign andb8622 = ne8517 & spmv_lsu7959_io_ctrl_rd_req_ready;
  always @(*) begin
    case (reg8434)
      3'h0: sel8623 = sel8619;
      3'h1: sel8623 = sel8621;
      default: sel8623 = reg8365;
    endcase
  end
  assign sel8624 = andb8620 ? 3'h1 : reg8434;
  assign sel8626 = andb8628 ? 3'h2 : reg8434;
  assign andb8627 = spmv_lsu7959_io_ctrl_rd_req_ready & eq8525;
  assign andb8628 = ne8517 & andb8627;
  assign sel8629 = andl8540 ? 3'h3 : reg8434;
  assign sel8630 = spmv_lsu7959_io_ctrl_wr_req_ready ? 3'h4 : reg8434;
  assign sel8631 = andb8632 ? 3'h5 : reg8434;
  assign andb8632 = spmv_lsu7959_io_ctrl_wr_req_ready & eq8598;
  assign sel8633 = eq8604 ? 3'h0 : reg8434;
  always @(*) begin
    case (reg8434)
      3'h0: sel8634 = sel8624;
      3'h1: sel8634 = sel8626;
      3'h2: sel8634 = sel8629;
      3'h3: sel8634 = sel8630;
      3'h4: sel8634 = sel8631;
      3'h5: sel8634 = sel8633;
      default: sel8634 = reg8434;
    endcase
  end
  assign sel8636 = spmv_lsu7959_io_ctrl_rd_req_ready ? reg8402[31:0] : add8531;
  assign sel8637 = ne8517 ? sel8636 : add8531;
  assign sel8638 = (reg8434 == 3'h1) ? sel8637 : reg8402[31:0];
  assign sel8639 = andb8641 ? 1'h1 : 1'h0;
  assign eq8640 = reg8434 == 3'h1;
  assign andb8641 = eq8640 & ne8517;
  always @ (posedge clk) begin
    if (reset)
      reg8646 <= 2'h0;
    else
      reg8646 <= sel8752;
  end
  assign eq8655 = 5'h0 == reg8351;
  assign shr8676 = reg8344 >> 32'h20;
  assign add8683 = reg8386 + 20'h1;
  assign sub8688 = reg8351 - 5'h1;
  assign ne8693 = reg8351 != 5'h2;
  assign ne8696 = reg8386 != reg8392;
  assign andl8698 = ne8696 && ne8693;
  assign sel8735 = spmv_dcsc_walk2354_io_ctrl_start_ready ? add8683 : reg8386;
  assign sel8736 = spmv_dcsc_walk4719_io_ctrl_start_ready ? add8683 : reg8386;
  always @(*) begin
    case (reg8646)
      2'h1: sel8737 = sel8735;
      2'h2: sel8737 = sel8736;
      default: sel8737 = reg8386;
    endcase
  end
  assign sel8738 = andb8740 ? reg8344[63:0] : 64'h0;
  assign eq8739 = reg8646 == 2'h2;
  assign andb8740 = eq8739 & spmv_dcsc_walk4719_io_ctrl_start_ready;
  assign sel8741 = andb8743 ? 1'h1 : 1'h0;
  assign eq8742 = reg8646 == 2'h1;
  assign andb8743 = eq8742 & spmv_dcsc_walk2354_io_ctrl_start_ready;
  assign sel8744 = andb8743 ? reg8344[63:0] : 64'h0;
  assign sel8747 = ch_llqueue8319_io_deq_valid ? 2'h1 : reg8646;
  assign sel8748 = andl8698 ? 2'h2 : 2'h0;
  assign sel8749 = spmv_dcsc_walk2354_io_ctrl_start_ready ? sel8748 : 2'h2;
  assign sel8750 = andl8698 ? 2'h1 : 2'h0;
  assign sel8751 = spmv_dcsc_walk4719_io_ctrl_start_ready ? sel8750 : 2'h1;
  always @(*) begin
    case (reg8646)
      2'h0: sel8752 = sel8747;
      2'h1: sel8752 = sel8749;
      2'h2: sel8752 = sel8751;
      default: sel8752 = reg8646;
    endcase
  end
  assign sel8753 = andb8740 ? 1'h1 : 1'h0;
  assign sel8756 = eq8655 ? 5'h10 : 5'h11;
  assign sel8757 = ch_llqueue8319_io_deq_valid ? sel8756 : reg8351;
  assign sel8758 = spmv_dcsc_walk2354_io_ctrl_start_ready ? sub8688 : reg8351;
  assign sel8759 = spmv_dcsc_walk4719_io_ctrl_start_ready ? sub8688 : reg8351;
  always @(*) begin
    case (reg8646)
      2'h0: sel8760 = sel8757;
      2'h1: sel8760 = sel8758;
      2'h2: sel8760 = sel8759;
      default: sel8760 = reg8351;
    endcase
  end
  assign sel8762 = andb8763 ? ch_llqueue8319_io_deq_data[31:0] : reg8344[31:0];
  assign andb8763 = ch_llqueue8319_io_deq_valid & eq8655;
  assign sel8764 = spmv_dcsc_walk2354_io_ctrl_start_ready ? shr8676[31:0] : reg8344[31:0];
  assign sel8765 = spmv_dcsc_walk4719_io_ctrl_start_ready ? shr8676[31:0] : reg8344[31:0];
  always @(*) begin
    case (reg8646)
      2'h0: sel8766 = sel8762;
      2'h1: sel8766 = sel8764;
      2'h2: sel8766 = sel8765;
      default: sel8766 = reg8344[31:0];
    endcase
  end
  assign sel8768 = eq8655 ? ch_llqueue8319_io_deq_data[511:32] : ch_llqueue8319_io_deq_data[479:0];
  assign sel8769 = ch_llqueue8319_io_deq_valid ? sel8768 : reg8344[511:32];
  assign sel8770 = spmv_dcsc_walk2354_io_ctrl_start_ready ? shr8676[511:32] : reg8344[511:32];
  assign sel8771 = spmv_dcsc_walk4719_io_ctrl_start_ready ? shr8676[511:32] : reg8344[511:32];
  always @(*) begin
    case (reg8646)
      2'h0: sel8772 = sel8769;
      2'h1: sel8772 = sel8770;
      2'h2: sel8772 = sel8771;
      default: sel8772 = reg8344[511:32];
    endcase
  end
  assign sel8774 = eq8655 ? reg8344[543:512] : ch_llqueue8319_io_deq_data[511:480];
  assign sel8775 = ch_llqueue8319_io_deq_valid ? sel8774 : reg8344[543:512];
  assign sel8776 = spmv_dcsc_walk2354_io_ctrl_start_ready ? shr8676[543:512] : reg8344[543:512];
  assign sel8777 = spmv_dcsc_walk4719_io_ctrl_start_ready ? shr8676[543:512] : reg8344[543:512];
  always @(*) begin
    case (reg8646)
      2'h0: sel8778 = sel8775;
      2'h1: sel8778 = sel8776;
      2'h2: sel8778 = sel8777;
      default: sel8778 = reg8344[543:512];
    endcase
  end
  assign sel8779 = andb8781 ? 1'h1 : 1'h0;
  assign eq8780 = reg8646 == 2'h0;
  assign andb8781 = eq8780 & ch_llqueue8319_io_deq_valid;

  assign io_qpi_rd_req_addr = spmv_lsu7959_io_qpi_rd_req_addr;
  assign io_qpi_rd_req_mdata = spmv_lsu7959_io_qpi_rd_req_mdata;
  assign io_qpi_rd_req_valid = spmv_lsu7959_io_qpi_rd_req_valid;
  assign io_qpi_wr_req_addr = spmv_lsu7959_io_qpi_wr_req_addr;
  assign io_qpi_wr_req_mdata = spmv_lsu7959_io_qpi_wr_req_mdata;
  assign io_qpi_wr_req_data = spmv_lsu7959_io_qpi_wr_req_data;
  assign io_qpi_wr_req_valid = spmv_lsu7959_io_qpi_wr_req_valid;
  assign io_done = reg8442;

endmodule
