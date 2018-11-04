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
  wire[31:0] sel2181; // dcsc_walk.cpp(138:0)
  wire sel2182; // dcsc_walk.cpp(441:0)
  wire sel2183; // dcsc_walk.cpp(439:0)
  wire sel2184; // dcsc_walk.cpp(435:0)
  wire eq2185; // dcsc_walk.cpp(138:0)
  wire andb2186; // dcsc_walk.cpp(138:0)
  reg sel2187; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2188; // dcsc_walk.cpp(410:0)
  wire[31:0] sel2189; // dcsc_walk.cpp(409:0)
  wire eq2190; // dcsc_walk.cpp(138:0)
  wire andb2191; // dcsc_walk.cpp(138:0)
  wire sel2192; // dcsc_walk.cpp(410:0)
  wire andb2193; // dcsc_walk.cpp(138:0)
  wire andb2195; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2196; // dcsc_walk.cpp(410:0)
  wire[19:0] sel2201; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2203; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2205; // dcsc_walk.cpp(138:0)
  reg sel2207; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2208; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2214; // dcsc_walk.cpp(387:0)
  wire andb2215; // dcsc_walk.cpp(138:0)
  reg[19:0] sel2216; // dcsc_walk.cpp(138:0)
  wire sel2217; // dcsc_walk.cpp(308:0)
  wire eq2218; // dcsc_walk.cpp(138:0)
  wire andb2219; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2220; // dcsc_walk.cpp(277:0)
  wire[19:0] sel2221; // dcsc_walk.cpp(138:0)
  wire sel2222; // dcsc_walk.cpp(157:0)
  wire sel2223; // dcsc_walk.cpp(175:0)
  wire sel2225; // dcsc_walk.cpp(291:0)
  wire sel2226; // dcsc_walk.cpp(331:0)
  wire sel2227; // dcsc_walk.cpp(365:0)
  wire sel2228; // dcsc_walk.cpp(384:0)
  reg sel2229; // dcsc_walk.cpp(138:0)
  wire sel2230; // dcsc_walk.cpp(192:0)
  wire eq2231; // dcsc_walk.cpp(138:0)
  wire andb2232; // dcsc_walk.cpp(138:0)
  wire sel2233; // dcsc_walk.cpp(192:0)
  wire sel2234; // dcsc_walk.cpp(240:0)
  reg sel2235; // dcsc_walk.cpp(138:0)
  reg[2:0] sel2236; // dcsc_walk.cpp(138:0)
  reg[19:0] sel2237; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2238; // dcsc_walk.cpp(141:0)
  wire andb2240; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2241; // dcsc_walk.cpp(192:0)
  wire[19:0] sel2242; // dcsc_walk.cpp(435:0)
  reg[19:0] sel2243; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2244; // dcsc_walk.cpp(240:0)
  reg[19:0] sel2245; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2246; // dcsc_walk.cpp(138:0)
  wire[19:0] sel2247; // dcsc_walk.cpp(192:0)
  reg[19:0] sel2248; // dcsc_walk.cpp(138:0)
  wire[63:0] sel2249; // dcsc_walk.cpp(141:0)
  wire[19:0] sel2252; // dcsc_walk.cpp(257:0)
  wire[19:0] sel2253; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2254; // dcsc_walk.cpp(141:0)
  wire[22:0] sel2255; // dcsc_walk.cpp(160:0)
  wire andb2256; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2257; // dcsc_walk.cpp(178:0)
  wire andb2258; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2259; // dcsc_walk.cpp(204:0)
  wire[22:0] sel2260; // dcsc_walk.cpp(192:0)
  wire[22:0] sel2261; // dcsc_walk.cpp(226:0)
  wire[22:0] sel2263; // dcsc_walk.cpp(240:0)
  wire[22:0] sel2264; // dcsc_walk.cpp(260:0)
  wire[22:0] sel2265; // dcsc_walk.cpp(257:0)
  wire[22:0] sel2266; // dcsc_walk.cpp(277:0)
  wire[22:0] sel2267; // dcsc_walk.cpp(294:0)
  wire andb2268; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2269; // dcsc_walk.cpp(315:0)
  wire[22:0] sel2270; // dcsc_walk.cpp(308:0)
  wire[22:0] sel2271; // dcsc_walk.cpp(334:0)
  wire andb2272; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2273; // dcsc_walk.cpp(368:0)
  wire andb2274; // dcsc_walk.cpp(138:0)
  wire[22:0] sel2275; // dcsc_walk.cpp(389:0)
  wire[22:0] sel2276; // dcsc_walk.cpp(387:0)
  wire[22:0] sel2278; // dcsc_walk.cpp(409:0)
  wire[22:0] sel2279; // dcsc_walk.cpp(441:0)
  wire[22:0] sel2280; // dcsc_walk.cpp(439:0)
  wire[22:0] sel2281; // dcsc_walk.cpp(435:0)
  wire[22:0] sel2282; // dcsc_walk.cpp(470:0)
  wire[22:0] sel2283; // dcsc_walk.cpp(468:0)
  wire[22:0] sel2285; // dcsc_walk.cpp(507:0)
  reg[22:0] sel2286; // dcsc_walk.cpp(138:0)
  wire[5:0] sel2287; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2288; // dcsc_walk.cpp(192:0)
  wire[19:0] sel2291; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2292; // dcsc_walk.cpp(308:0)
  wire[19:0] sel2295; // dcsc_walk.cpp(141:0)
  reg[19:0] sel2296; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2298; // dcsc_walk.cpp(507:0)
  wire eq2299; // dcsc_walk.cpp(138:0)
  wire andb2300; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2302; // dcsc_walk.cpp(507:0)
  wire[31:0] sel2306; // dcsc_walk.cpp(507:0)
  wire[31:0] sel2310; // dcsc_walk.cpp(507:0)
  wire[31:0] sel2314; // dcsc_walk.cpp(160:0)
  wire[31:0] sel2315; // dcsc_walk.cpp(157:0)
  wire[31:0] sel2316; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2318; // dcsc_walk.cpp(178:0)
  wire[31:0] sel2319; // dcsc_walk.cpp(175:0)
  wire[31:0] sel2322; // dcsc_walk.cpp(240:0)
  reg[31:0] sel2323; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2325; // dcsc_walk.cpp(368:0)
  wire[31:0] sel2326; // dcsc_walk.cpp(365:0)
  wire[31:0] sel2327; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2329; // dcsc_walk.cpp(387:0)
  wire[31:0] sel2330; // dcsc_walk.cpp(384:0)
  wire[31:0] sel2331; // dcsc_walk.cpp(409:0)
  reg[31:0] sel2332; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2334; // dcsc_walk.cpp(334:0)
  wire[31:0] sel2335; // dcsc_walk.cpp(331:0)
  wire[31:0] sel2336; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2338; // dcsc_walk.cpp(294:0)
  wire[31:0] sel2339; // dcsc_walk.cpp(291:0)
  wire[31:0] sel2340; // dcsc_walk.cpp(308:0)
  reg[31:0] sel2341; // dcsc_walk.cpp(138:0)
  wire[31:0] sel2343; // dcsc_walk.cpp(435:0)
  reg[31:0] sel2345; // dcsc_walk.cpp(138:0)
  wire[511:0] sel2346; // dcsc_walk.cpp(192:0)

  assign io_lsu_rd_req_data75 = {sel2237, sel2236};
  always @ (posedge clk) begin
    reg101 <= sel2296;
  end
  always @ (posedge clk) begin
    reg108 <= sel2238;
  end
  always @ (posedge clk) begin
    reg113 <= sel2248;
  end
  always @ (posedge clk) begin
    reg118 <= sel2243;
  end
  always @ (posedge clk) begin
    reg123 <= sel2245;
  end
  always @ (posedge clk) begin
    reg128 <= sel2246;
  end
  always @ (posedge clk) begin
    if (reset)
      reg135 <= 20'hfffff;
    else
      reg135 <= sel2253;
  end
  always @ (posedge clk) begin
    if (reset)
      reg142 <= 20'hfffff;
    else
      reg142 <= sel2221;
  end
  always @ (posedge clk) begin
    reg147 <= sel2216;
  end
  always @ (posedge clk) begin
    reg152 <= sel2208;
  end
  always @ (posedge clk) begin
    reg157 <= sel2291;
  end
  always @ (posedge clk) begin
    reg162 <= sel2287;
  end
  always @ (posedge clk) begin
    reg167 <= sel2189;
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
    reg1263 <= sel2288;
  end
  always @ (posedge clk) begin
    reg1268 <= sel2346;
  end
  always @ (posedge clk) begin
    reg1273 <= sel2292;
  end
  always @ (posedge clk) begin
    reg1278 <= sel2196;
  end
  always @ (posedge clk) begin
    reg1283 <= sel2181;
  end
  always @ (posedge clk) begin
    reg1288 <= sel2249;
  end
  assign proxy1305 = {sel2345, sel2341, sel2336, sel2332, sel2327, sel2323, sel2316, sel2310, sel2306, sel2302, sel2298};
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
      reg1383 <= sel2286;
  end
  assign eq1387 = reg1383 == 23'h1;
  assign eq1391 = sel2236 == 3'h1;
  assign andl1394 = sel2229 && io_lsu_rd_req_ready;
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
  assign eq1421 = sel2236 == 3'h2;
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
  assign eq1450 = sel2236 == 3'h3;
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
  assign eq1479 = sel2236 == 3'h4;
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
  assign eq1508 = sel2236 == 3'h5;
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
  assign eq1537 = sel2236 == 3'h6;
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
      reg1570 <= sel2230;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1577 <= 1'h0;
    else
      reg1577 <= sel2235;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1584 <= 1'h0;
    else
      reg1584 <= sel2184;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1598 <= 1'h0;
    else
      reg1598 <= sel2192;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1605 <= 1'h0;
    else
      reg1605 <= sel2217;
  end
  assign proxy1609 = {sel2207, sel2205, sel2203, sel2201};
  always @ (posedge clk) begin
    reg1610 <= proxy1609;
  end
  always @ (posedge clk) begin
    if (reset)
      reg1625 <= 1'h0;
    else
      reg1625 <= sel2187;
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
  assign sel2181 = (reg1383 == 23'h200000) ? sub2145[31:0] : reg1283;
  assign sel2182 = eq2078 ? 1'h1 : 1'h0;
  assign sel2183 = ne2071 ? sel2182 : 1'h1;
  assign sel2184 = andb2186 ? sel2183 : 1'h0;
  assign eq2185 = reg1383 == 23'h20000;
  assign andb2186 = eq2185 & io_pe_ready;
  always @(*) begin
    case (reg1383)
      23'h020000: sel2187 = 1'h1;
      23'h400000: sel2187 = 1'h1;
      default: sel2187 = 1'h0;
    endcase
  end
  assign sel2188 = ch_llqueue1038_io_deq_valid ? shr2018[31:0] : shr2030[31:0];
  assign sel2189 = andb2191 ? sel2188 : reg167;
  assign eq2190 = reg1383 == 23'h10000;
  assign andb2191 = eq2190 & eq2007;
  assign sel2192 = andb2195 ? 1'h1 : 1'h0;
  assign andb2193 = eq2007 & ch_llqueue1038_io_deq_valid;
  assign andb2195 = eq2190 & andb2193;
  assign sel2196 = andb2195 ? ch_llqueue1038_io_deq_data : reg1278;
  assign sel2201 = (reg1383 == 23'h20000) ? shr2048[19:0] : reg1610[19:0];
  assign sel2203 = (reg1383 == 23'h20000) ? shr2060[31:0] : reg1610[51:20];
  assign sel2205 = (reg1383 == 23'h20000) ? reg167 : reg1610[83:52];
  always @(*) begin
    case (reg1383)
      23'h020000: sel2207 = 1'h0;
      23'h400000: sel2207 = 1'h1;
      default: sel2207 = reg1610[84];
    endcase
  end
  assign sel2208 = (reg1383 == 23'h1000) ? shr1950 : reg152;
  assign sel2214 = andb2215 ? add1990 : reg147;
  assign andb2215 = ne1985 & io_lsu_rd_req_ready;
  always @(*) begin
    case (reg1383)
      23'h001000: sel2216 = shr1939;
      23'h008000: sel2216 = sel2214;
      default: sel2216 = reg147;
    endcase
  end
  assign sel2217 = andb2219 ? 1'h1 : 1'h0;
  assign eq2218 = reg1383 == 23'h400;
  assign andb2219 = eq2218 & ch_llqueue1201_io_deq_valid;
  assign sel2220 = eq1853 ? reg142 : shr1850;
  assign sel2221 = (reg1383 == 23'h100) ? sel2220 : reg142;
  assign sel2222 = ne1662 ? 1'h1 : 1'h0;
  assign sel2223 = ne1687 ? 1'h1 : 1'h0;
  assign sel2225 = ne1862 ? 1'h1 : 1'h0;
  assign sel2226 = ne1922 ? 1'h1 : 1'h0;
  assign sel2227 = ne1969 ? 1'h1 : 1'h0;
  assign sel2228 = ne1985 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1383)
      23'h000002: sel2229 = sel2222;
      23'h000004: sel2229 = sel2223;
      23'h000010: sel2229 = sel2223;
      23'h000200: sel2229 = sel2225;
      23'h000800: sel2229 = sel2226;
      23'h004000: sel2229 = sel2227;
      23'h008000: sel2229 = sel2228;
      default: sel2229 = 1'h0;
    endcase
  end
  assign sel2230 = andb2232 ? 1'h1 : 1'h0;
  assign eq2231 = reg1383 == 23'h8;
  assign andb2232 = eq2231 & andl1701;
  assign sel2233 = andl1701 ? 1'h1 : 1'h0;
  assign sel2234 = ch_llqueue473_io_deq_valid ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2235 = sel2233;
      23'h000020: sel2235 = sel2234;
      default: sel2235 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg1383)
      23'h000002: sel2236 = 3'h1;
      23'h000004: sel2236 = 3'h2;
      23'h000010: sel2236 = 3'h2;
      23'h000200: sel2236 = 3'h6;
      23'h000800: sel2236 = 3'h5;
      23'h004000: sel2236 = 3'h3;
      23'h008000: sel2236 = 3'h4;
      default: sel2236 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg1383)
      23'h000002: sel2237 = shr1657;
      23'h000004: sel2237 = shr1657;
      23'h000010: sel2237 = shr1768;
      23'h000200: sel2237 = reg135;
      23'h000800: sel2237 = shr1850;
      23'h004000: sel2237 = reg147;
      23'h008000: sel2237 = reg147;
      default: sel2237 = 20'h0;
    endcase
  end
  assign sel2238 = andb2240 ? sub1645 : reg108;
  assign andb2240 = eq1387 & io_ctrl_start_valid;
  assign sel2241 = andl1701 ? shr1726[19:0] : reg118;
  assign sel2242 = io_pe_ready ? add2068 : reg118;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2243 = sel2241;
      23'h020000: sel2243 = sel2242;
      23'h100000: sel2243 = shr2131[19:0];
      default: sel2243 = reg118;
    endcase
  end
  assign sel2244 = ch_llqueue473_io_deq_valid ? ch_llqueue473_io_deq_data[19:0] : reg123;
  always @(*) begin
    case (reg1383)
      23'h000040: sel2245 = shr1753[19:0];
      23'h000020: sel2245 = sel2244;
      default: sel2245 = reg123;
    endcase
  end
  assign sel2246 = (reg1383 == 23'h80) ? sub1795 : reg128;
  assign sel2247 = andl1701 ? shr1713[19:0] : reg113;
  always @(*) begin
    case (reg1383)
      23'h000008: sel2248 = sel2247;
      23'h100000: sel2248 = shr2119[19:0];
      default: sel2248 = reg113;
    endcase
  end
  assign sel2249 = andb2240 ? io_ctrl_timer : reg1288;
  assign sel2252 = eq1809 ? reg135 : shr1806;
  assign sel2253 = (reg1383 == 23'h80) ? sel2252 : reg135;
  assign sel2254 = io_ctrl_start_valid ? 23'h2 : reg1383;
  assign sel2255 = andb2256 ? 23'h4 : reg1383;
  assign andb2256 = ne1662 & io_lsu_rd_req_ready;
  assign sel2257 = andb2258 ? 23'h8 : reg1383;
  assign andb2258 = ne1687 & io_lsu_rd_req_ready;
  assign sel2259 = ne1736 ? 23'h40 : 23'h10;
  assign sel2260 = andl1701 ? sel2259 : reg1383;
  assign sel2261 = andb2258 ? 23'h20 : reg1383;
  assign sel2263 = ch_llqueue473_io_deq_valid ? 23'h80 : reg1383;
  assign sel2264 = ne1837 ? 23'h100 : 23'h80000;
  assign sel2265 = eq1809 ? sel2264 : 23'h200;
  assign sel2266 = eq1853 ? 23'h1000 : 23'h800;
  assign sel2267 = andb2268 ? 23'h400 : reg1383;
  assign andb2268 = ne1862 & io_lsu_rd_req_ready;
  assign sel2269 = ne1904 ? 23'h100 : 23'h80000;
  assign sel2270 = ch_llqueue1201_io_deq_valid ? sel2269 : reg1383;
  assign sel2271 = andb2272 ? 23'h1000 : reg1383;
  assign andb2272 = ne1922 & io_lsu_rd_req_ready;
  assign sel2273 = andb2274 ? 23'h8000 : reg1383;
  assign andb2274 = ne1969 & io_lsu_rd_req_ready;
  assign sel2275 = ne1993 ? 23'h4000 : 23'h10000;
  assign sel2276 = andb2215 ? sel2275 : reg1383;
  assign sel2278 = eq2007 ? 23'h20000 : reg1383;
  assign sel2279 = eq2078 ? 23'h40000 : reg1383;
  assign sel2280 = ne2071 ? sel2279 : 23'h80000;
  assign sel2281 = io_pe_ready ? sel2280 : reg1383;
  assign sel2282 = ne1736 ? 23'h100000 : 23'h2;
  assign sel2283 = ne2097 ? sel2282 : 23'h200000;
  assign sel2285 = io_pe_ready ? 23'h1 : reg1383;
  always @(*) begin
    case (reg1383)
      23'h000001: sel2286 = sel2254;
      23'h000002: sel2286 = sel2255;
      23'h000004: sel2286 = sel2257;
      23'h000008: sel2286 = sel2260;
      23'h000040: sel2286 = 23'h80;
      23'h000010: sel2286 = sel2261;
      23'h000020: sel2286 = sel2263;
      23'h000080: sel2286 = sel2265;
      23'h000100: sel2286 = sel2266;
      23'h000200: sel2286 = sel2267;
      23'h000400: sel2286 = sel2270;
      23'h000800: sel2286 = sel2271;
      23'h001000: sel2286 = 23'h2000;
      23'h002000: sel2286 = 23'h4000;
      23'h004000: sel2286 = sel2273;
      23'h008000: sel2286 = sel2276;
      23'h010000: sel2286 = sel2278;
      23'h020000: sel2286 = sel2281;
      23'h040000: sel2286 = 23'h20000;
      23'h080000: sel2286 = sel2283;
      23'h100000: sel2286 = sel2259;
      23'h200000: sel2286 = 23'h400000;
      23'h400000: sel2286 = sel2285;
      default: sel2286 = reg1383;
    endcase
  end
  assign sel2287 = (reg1383 == 23'h2000) ? sub1955[5:0] : reg162;
  assign sel2288 = andb2232 ? ch_llqueue310_io_deq_data : reg1263;
  assign sel2291 = (reg1383 == 23'h2000) ? sub1961 : reg157;
  assign sel2292 = andb2219 ? ch_llqueue1201_io_deq_data : reg1273;
  assign sel2295 = io_ctrl_start_valid ? io_ctrl_start_data[19:0] : reg101;
  always @(*) begin
    case (reg1383)
      23'h000001: sel2296 = sel2295;
      23'h080000: sel2296 = add1746;
      default: sel2296 = reg101;
    endcase
  end
  assign sel2298 = andb2300 ? add2174 : reg1306[31:0];
  assign eq2299 = reg1383 == 23'h400000;
  assign andb2300 = eq2299 & io_pe_ready;
  assign sel2302 = andb2300 ? sel2162 : reg1306[63:32];
  assign sel2306 = andb2300 ? sel2167 : reg1306[95:64];
  assign sel2310 = andb2300 ? add2170 : reg1306[127:96];
  assign sel2314 = io_lsu_rd_req_ready ? reg1306[159:128] : add1671;
  assign sel2315 = ne1662 ? sel2314 : add1671;
  assign sel2316 = (reg1383 == 23'h2) ? sel2315 : reg1306[159:128];
  assign sel2318 = io_lsu_rd_req_ready ? reg1306[191:160] : add1694;
  assign sel2319 = ne1687 ? sel2318 : add1694;
  assign sel2322 = ch_llqueue473_io_deq_valid ? reg1306[191:160] : add1694;
  always @(*) begin
    case (reg1383)
      23'h000004: sel2323 = sel2319;
      23'h000010: sel2323 = sel2319;
      23'h000020: sel2323 = sel2322;
      default: sel2323 = reg1306[191:160];
    endcase
  end
  assign sel2325 = io_lsu_rd_req_ready ? reg1306[223:192] : add1976;
  assign sel2326 = ne1969 ? sel2325 : add1976;
  assign sel2327 = (reg1383 == 23'h4000) ? sel2326 : reg1306[223:192];
  assign sel2329 = io_lsu_rd_req_ready ? reg1306[255:224] : add2000;
  assign sel2330 = ne1985 ? sel2329 : add2000;
  assign sel2331 = eq2007 ? reg1306[255:224] : add2000;
  always @(*) begin
    case (reg1383)
      23'h008000: sel2332 = sel2330;
      23'h010000: sel2332 = sel2331;
      default: sel2332 = reg1306[255:224];
    endcase
  end
  assign sel2334 = io_lsu_rd_req_ready ? reg1306[287:256] : add1928;
  assign sel2335 = ne1922 ? sel2334 : add1928;
  assign sel2336 = (reg1383 == 23'h800) ? sel2335 : reg1306[287:256];
  assign sel2338 = io_lsu_rd_req_ready ? reg1306[319:288] : add1869;
  assign sel2339 = ne1862 ? sel2338 : add1869;
  assign sel2340 = ch_llqueue1201_io_deq_valid ? reg1306[319:288] : add1869;
  always @(*) begin
    case (reg1383)
      23'h000200: sel2341 = sel2339;
      23'h000400: sel2341 = sel2340;
      default: sel2341 = reg1306[319:288];
    endcase
  end
  assign sel2343 = io_pe_ready ? reg1306[351:320] : add2089;
  always @(*) begin
    case (reg1383)
      23'h020000: sel2345 = sel2343;
      23'h400000: sel2345 = sel2343;
      default: sel2345 = reg1306[351:320];
    endcase
  end
  assign sel2346 = andb2232 ? ch_llqueue473_io_deq_data : reg1268;

  assign io_ctrl_start_ready = eq1387;
  assign io_ctrl_stats = reg1306;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data75;
  assign io_lsu_rd_req_valid = sel2229;
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
  wire[511:0] lit5298 = 512'h0;
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
  wire andl5216; // pe.cpp(70:0)
  wire[19:0] andb5221; // pe.cpp(72:1)
  wire[31:0] udfs5225; // pe.cpp(74:0)
  wire andl5231; // pe.cpp(7:2)
  wire notl5234; // pe.cpp(81:0)
  wire andl5236; // pe.cpp(81:0)
  wire notl5239; // pe.cpp(79:1)
  wire andl5242; // pe.cpp(79:2)
  wire[31:0] add5246; // pe.cpp(80:1)
  wire[31:0] sub5250; // pe.cpp(82:1)
  reg[31:0] sel5252; // pe.cpp(79:0)
  wire notl5254; // pe.cpp(87:0)
  wire andl5257; // pe.cpp(87:1)
  wire notl5260; // pe.cpp(88:0)
  wire andl5263; // pe.cpp(88:1)
  wire ne5266; // pe.cpp(90:1)
  wire andl5269; // pe.cpp(90:2)
  wire[31:0] inv5272; // pe.cpp(91:0)
  wire[31:0] andb5275; // pe.cpp(91:1)
  wire[31:0] orb5277; // pe.cpp(91:1)
  wire[31:0] orb5286; // pe.cpp(96:0)
  wire[31:0] sel5288; // pe.cpp(90:0)
  reg[31:0] sel5289; // pe.cpp(89:0)
  wire[19:0] andb5293; // pe.cpp(101:1)
  wire[19:0] sel5295; // pe.cpp(100:0)
  wire andl5310; // pe.cpp(119:1)
  wire[19:0] andb5314; // pe.cpp(120:1)
  wire[31:0] orb5319; // pe.cpp(125:0)
  wire andl5322; // pe.cpp(129:1)
  wire[511:0] proxy5328; // pe.cpp(138:0)
  wire[31:0] marport5329; // pe.cpp(140:0)
  wire[31:0] marport5333; // pe.cpp(140:2)
  wire[31:0] marport5337; // pe.cpp(140:4)
  wire[31:0] marport5341; // pe.cpp(140:6)
  wire[31:0] marport5345; // pe.cpp(140:8)
  wire[31:0] marport5349; // pe.cpp(140:10)
  wire[31:0] marport5353; // pe.cpp(140:12)
  wire[31:0] marport5357; // pe.cpp(140:14)
  wire[31:0] marport5361; // pe.cpp(140:16)
  wire[31:0] marport5365; // pe.cpp(140:18)
  wire[31:0] marport5369; // pe.cpp(140:20)
  wire[31:0] marport5373; // pe.cpp(140:22)
  wire[31:0] marport5377; // pe.cpp(140:24)
  wire[31:0] marport5381; // pe.cpp(140:26)
  wire[31:0] marport5385; // pe.cpp(140:28)
  wire[31:0] marport5389; // pe.cpp(140:30)
  wire[19:0] shl5396; // pe.cpp(143:0)
  wire[19:0] shr5400; // pe.cpp(143:0)
  wire[31:0] add5408; // pe.cpp(152:1)
  wire[511:0] proxy5411; // pe.cpp(157:0)
  wire[31:0] marport5413; // pe.cpp(159:0)
  wire[31:0] marport5417; // pe.cpp(159:2)
  wire[31:0] marport5421; // pe.cpp(159:4)
  wire[31:0] marport5425; // pe.cpp(159:6)
  wire[31:0] marport5429; // pe.cpp(159:8)
  wire[31:0] marport5433; // pe.cpp(159:10)
  wire[31:0] marport5437; // pe.cpp(159:12)
  wire[31:0] marport5441; // pe.cpp(159:14)
  wire[31:0] marport5445; // pe.cpp(159:16)
  wire[31:0] marport5449; // pe.cpp(159:18)
  wire[31:0] marport5453; // pe.cpp(159:20)
  wire[31:0] marport5457; // pe.cpp(159:22)
  wire[31:0] marport5461; // pe.cpp(159:24)
  wire[31:0] marport5465; // pe.cpp(159:26)
  wire[31:0] marport5469; // pe.cpp(159:28)
  wire[31:0] marport5473; // pe.cpp(159:30)
  wire[19:0] add5486; // pe.cpp(162:1)
  wire[19:0] shr5499; // pe.cpp(177:0)
  wire[19:0] shl5502; // pe.cpp(177:0)
  wire[19:0] shr5505; // pe.cpp(177:0)
  wire[511:0] pad5507; // pe.cpp(178:0)
  wire[19:0] andb5514; // pe.cpp(178:2)
  wire[19:0] shl5517; // pe.cpp(178:2)
  wire[511:0] shl5519; // pe.cpp(178:0)
  wire[31:0] add5525; // pe.cpp(186:1)
  wire[31:0] sel5528; // pe.cpp(147:0)
  reg[31:0] sel5530; // pe.cpp(116:0)
  wire[31:0] sel5532; // pe.cpp(181:0)
  wire[31:0] sel5533; // pe.cpp(116:0)
  reg sel5534; // pe.cpp(116:0)
  reg[1:0] sel5535; // pe.cpp(116:0)
  reg[19:0] sel5536; // pe.cpp(116:0)
  reg[511:0] sel5537; // pe.cpp(116:0)
  wire[4:0] sel5538; // pe.cpp(116:0)
  wire[31:0] sel5539; // pe.cpp(116:0)
  wire sel5540; // pe.cpp(116:0)
  wire[31:0] sel5541; // pe.cpp(124:0)
  wire[31:0] sel5542; // pe.cpp(129:0)
  wire[31:0] sel5543; // pe.cpp(116:0)
  wire[31:0] sel5544; // pe.cpp(129:0)
  wire andb5546; // pe.cpp(116:0)
  wire[1:0] sel5547; // pe.cpp(129:0)
  wire[1:0] sel5548; // pe.cpp(147:0)
  wire[1:0] sel5549; // pe.cpp(166:0)
  wire[1:0] sel5550; // pe.cpp(181:0)
  reg[1:0] sel5551; // pe.cpp(116:0)

  assign io_lsu_wr_req_data4788 = {sel5537, sel5536, sel5535};
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
  assign ch_pipe5079_io_enq_valid = andl5216;
  assign ch_pipe5079_io_deq_ready = orl5175;
  assign marport5200 = mem5100[andb5221[4:0]];
  assign marport5329 = mem5100[5'h0];
  assign marport5333 = mem5100[5'h1];
  assign marport5337 = mem5100[5'h2];
  assign marport5341 = mem5100[5'h3];
  assign marport5345 = mem5100[5'h4];
  assign marport5349 = mem5100[5'h5];
  assign marport5353 = mem5100[5'h6];
  assign marport5357 = mem5100[5'h7];
  assign marport5361 = mem5100[5'h8];
  assign marport5365 = mem5100[5'h9];
  assign marport5369 = mem5100[5'ha];
  assign marport5373 = mem5100[5'hb];
  assign marport5377 = mem5100[5'hc];
  assign marport5381 = mem5100[5'hd];
  assign marport5385 = mem5100[5'he];
  assign marport5389 = mem5100[5'hf];
  assign marport5413 = mem5100[5'h10];
  assign marport5417 = mem5100[5'h11];
  assign marport5421 = mem5100[5'h12];
  assign marport5425 = mem5100[5'h13];
  assign marport5429 = mem5100[5'h14];
  assign marport5433 = mem5100[5'h15];
  assign marport5437 = mem5100[5'h16];
  assign marport5441 = mem5100[5'h17];
  assign marport5445 = mem5100[5'h18];
  assign marport5449 = mem5100[5'h19];
  assign marport5453 = mem5100[5'h1a];
  assign marport5457 = mem5100[5'h1b];
  assign marport5461 = mem5100[5'h1c];
  assign marport5465 = mem5100[5'h1d];
  assign marport5469 = mem5100[5'h1e];
  assign marport5473 = mem5100[5'h1f];
  always @ (posedge clk) begin
    if (sel5540) begin
      mem5100[sel5538] <= sel5539;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg5106 <= 32'h0;
    else
      reg5106 <= sel5543;
  end
  always @ (posedge clk) begin
    reg5111 <= sel5544;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5117 <= 32'h0;
    else
      reg5117 <= sel5289;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5123 <= 32'h0;
    else
      reg5123 <= sel5252;
  end
  always @ (posedge clk) begin
    if (reset)
      reg5138 <= 20'h0;
    else
      reg5138 <= sel5295;
  end
  assign proxy5146 = {sel5533, sel5530};
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
      reg5159 <= sel5551;
  end
  assign shl5163 = 32'h1 << andb5221[4:0];
  assign shl5166 = 32'h1 << sel5538;
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
  fp_mult __fp_mult5213(.clock(clk), .clk_en(orl5189), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(udfs5213));
  assign andl5216 = ch_pipe4930_io_deq_valid && orl5189;
  assign andb5221 = ch_pipe4930_io_deq_data[19:0] & 20'h1f;
  fp_add __fp_add5225(.clock(clk), .clk_en(orl5175), .dataa(udfs5213), .datab(sel5208), .result(udfs5225));
  assign andl5231 = eq5173 && ch_pipe5079_io_deq_valid;
  assign notl5234 = !andl5211;
  assign andl5236 = notl5234 && andl5231;
  assign notl5239 = !andl5231;
  assign andl5242 = andl5211 && notl5239;
  assign add5246 = reg5123 + 32'h1;
  assign sub5250 = reg5123 - 32'h1;
  always @(*) begin
    if (andl5242)
      sel5252 = add5246;
    else if (andl5236)
      sel5252 = sub5250;
    else
      sel5252 = reg5123;
  end
  assign notl5254 = !ch_pipe4930_io_deq_data[20];
  assign andl5257 = andl5216 && notl5254;
  assign notl5260 = !ch_pipe5079_io_deq_data[20];
  assign andl5263 = andl5231 && notl5260;
  assign ne5266 = shl5163 != shl5166;
  assign andl5269 = andl5257 && ne5266;
  assign inv5272 = ~shl5166;
  assign andb5275 = reg5117 & inv5272;
  assign orb5277 = andb5275 | shl5163;
  assign orb5286 = reg5117 | shl5163;
  assign sel5288 = andl5269 ? orb5277 : andb5275;
  always @(*) begin
    if (andl5263)
      sel5289 = sel5288;
    else if (andl5257)
      sel5289 = orb5286;
    else
      sel5289 = reg5117;
  end
  assign andb5293 = ch_pipe5079_io_deq_data[19:0] & 20'hfffe0;
  assign sel5295 = andl5263 ? andb5293 : reg5138;
  assign andl5310 = ch_pipe5079_io_deq_valid && notl5260;
  assign andb5314 = ch_pipe5079_io_deq_data[19:0] & 20'h1f;
  assign orb5319 = reg5106 | shl5166;
  assign andl5322 = ch_pipe5079_io_deq_valid && ch_pipe5079_io_deq_data[20];
  assign proxy5328 = {marport5389, marport5385, marport5381, marport5377, marport5373, marport5369, marport5365, marport5361, marport5357, marport5353, marport5349, marport5345, marport5341, marport5337, marport5333, marport5329};
  assign shl5396 = reg5138 << 32'h2;
  assign shr5400 = shl5396 >> 32'h6;
  assign add5408 = reg5147[31:0] + 32'h1;
  assign proxy5411 = {marport5473, marport5469, marport5465, marport5461, marport5457, marport5453, marport5449, marport5445, marport5441, marport5437, marport5433, marport5429, marport5425, marport5421, marport5417, marport5413};
  assign add5486 = shr5400 + 20'h1;
  assign shr5499 = reg5138 >> 32'h5;
  assign shl5502 = shr5499 << 32'h2;
  assign shr5505 = shl5502 >> 32'h6;
  assign pad5507 = {{480{1'b0}}, reg5111};
  assign andb5514 = shr5499 & 20'hf;
  assign shl5517 = andb5514 << 32'h5;
  assign shl5519 = pad5507 << shl5517;
  assign add5525 = reg5147[63:32] + 32'h1;
  assign sel5528 = io_lsu_wr_req_ready ? reg5147[31:0] : add5408;
  always @(*) begin
    case (reg5159)
      2'h1: sel5530 = sel5528;
      2'h2: sel5530 = sel5528;
      default: sel5530 = reg5147[31:0];
    endcase
  end
  assign sel5532 = io_lsu_wr_req_ready ? reg5147[63:32] : add5525;
  assign sel5533 = (reg5159 == 2'h3) ? sel5532 : reg5147[63:32];
  always @(*) begin
    case (reg5159)
      2'h1: sel5534 = 1'h1;
      2'h2: sel5534 = 1'h1;
      2'h3: sel5534 = 1'h1;
      default: sel5534 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg5159)
      2'h1: sel5535 = 2'h0;
      2'h2: sel5535 = 2'h0;
      2'h3: sel5535 = 2'h1;
      default: sel5535 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg5159)
      2'h1: sel5536 = shr5400;
      2'h2: sel5536 = add5486;
      2'h3: sel5536 = shr5505;
      default: sel5536 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg5159)
      2'h1: sel5537 = proxy5328;
      2'h2: sel5537 = proxy5411;
      2'h3: sel5537 = shl5519;
      default: sel5537 = lit5298;
    endcase
  end
  assign sel5538 = (reg5159 == 2'h0) ? andb5314[4:0] : 5'h0;
  assign sel5539 = (reg5159 == 2'h0) ? udfs5225 : 32'h0;
  assign sel5540 = (reg5159 == 2'h0) ? andl5310 : 1'h0;
  assign sel5541 = sel5540 ? orb5319 : reg5106;
  assign sel5542 = andl5322 ? 32'h0 : sel5541;
  assign sel5543 = (reg5159 == 2'h0) ? sel5542 : reg5106;
  assign sel5544 = andb5546 ? reg5106 : reg5111;
  assign andb5546 = eq5196 & andl5322;
  assign sel5547 = andl5322 ? 2'h1 : reg5159;
  assign sel5548 = io_lsu_wr_req_ready ? 2'h2 : reg5159;
  assign sel5549 = io_lsu_wr_req_ready ? 2'h3 : reg5159;
  assign sel5550 = io_lsu_wr_req_ready ? 2'h0 : reg5159;
  always @(*) begin
    case (reg5159)
      2'h0: sel5551 = sel5547;
      2'h1: sel5551 = sel5548;
      2'h2: sel5551 = sel5549;
      2'h3: sel5551 = sel5550;
      default: sel5551 = reg5159;
    endcase
  end

  assign io_req_ready = ch_pipe4930_io_enq_ready;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data4788;
  assign io_lsu_wr_req_valid = sel5534;
  assign io_stats = reg5147;
  assign io_is_idle = andl5198;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  reg[23:0] sel6578; // /home/blaise/dev/cash/include/htl/mux.h(29:0)

  always @(*) begin
    case (io_sel)
      3'h2: sel6578 = io_in[47:24];
      3'h1: sel6578 = io_in[23:0];
      default: sel6578 = io_in[71:48];
    endcase
  end

  assign io_out = sel6578;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire[8:0] proxy6625; // /home/blaise/dev/cash/include/htl/arbiter.h(20:0)
  reg[8:0] reg6626; // /home/blaise/dev/cash/include/htl/arbiter.h(20:0)
  wire[2:0] proxy6632; // /home/blaise/dev/cash/include/htl/arbiter.h(21:0)
  wire[2:0] proxy6634; // /home/blaise/dev/cash/include/htl/arbiter.h(21:1)
  wire[2:0] proxy6636; // /home/blaise/dev/cash/include/htl/arbiter.h(21:2)
  wire[2:0] proxy6638; // /home/blaise/dev/cash/include/htl/arbiter.h(21:3)
  wire andl6645; // /home/blaise/dev/cash/include/htl/arbiter.h(28:1)
  wire andl6651; // /home/blaise/dev/cash/include/htl/arbiter.h(28:4)
  wire orr6654; // /home/blaise/dev/cash/include/htl/arbiter.h(30:0)
  wire inv6656; // /home/blaise/dev/cash/include/htl/arbiter.h(30:0)
  wire andl6659; // /home/blaise/dev/cash/include/htl/arbiter.h(30:1)
  wire inv6663; // /home/blaise/dev/cash/include/htl/arbiter.h(32:0)
  wire orl6668; // /home/blaise/dev/cash/include/htl/arbiter.h(32:2)
  wire andl6670; // /home/blaise/dev/cash/include/htl/arbiter.h(32:2)
  wire orl6679; // /home/blaise/dev/cash/include/htl/arbiter.h(32:6)
  wire andl6681; // /home/blaise/dev/cash/include/htl/arbiter.h(32:6)
  wire inv6686; // /home/blaise/dev/cash/include/htl/arbiter.h(24:0)
  wire andl6689; // /home/blaise/dev/cash/include/htl/arbiter.h(24:1)
  wire andl6697; // /home/blaise/dev/cash/include/htl/arbiter.h(28:7)
  wire orr6700; // /home/blaise/dev/cash/include/htl/arbiter.h(30:3)
  wire inv6702; // /home/blaise/dev/cash/include/htl/arbiter.h(30:3)
  wire andl6705; // /home/blaise/dev/cash/include/htl/arbiter.h(30:4)
  wire inv6709; // /home/blaise/dev/cash/include/htl/arbiter.h(32:8)
  wire orl6714; // /home/blaise/dev/cash/include/htl/arbiter.h(32:10)
  wire andl6716; // /home/blaise/dev/cash/include/htl/arbiter.h(32:10)
  wire inv6721; // /home/blaise/dev/cash/include/htl/arbiter.h(24:3)
  wire andl6724; // /home/blaise/dev/cash/include/htl/arbiter.h(24:4)
  wire inv6729; // /home/blaise/dev/cash/include/htl/arbiter.h(24:6)
  wire andl6732; // /home/blaise/dev/cash/include/htl/arbiter.h(24:7)
  wire orr6737; // /home/blaise/dev/cash/include/htl/arbiter.h(30:6)
  wire inv6739; // /home/blaise/dev/cash/include/htl/arbiter.h(30:6)
  wire andl6742; // /home/blaise/dev/cash/include/htl/arbiter.h(30:7)

  assign proxy6625 = {reg6626[8:6], andl6716, reg6626[4:3], andl6681, andl6670, reg6626[0]};
  always @ (posedge clk) begin
    if (reset)
      reg6626 <= 9'h0;
    else
      reg6626 <= proxy6625;
  end
  assign proxy6632 = {andl6724, andl6689, 1'h0};
  assign proxy6634 = {andl6732, 1'h0, andl6645};
  assign proxy6636 = {1'h0, andl6697, andl6651};
  assign proxy6638 = {andl6742, andl6705, andl6659};
  assign andl6645 = io_in[0] && reg6626[1];
  assign andl6651 = io_in[0] && reg6626[2];
  assign orr6654 = |proxy6632;
  assign inv6656 = ~orr6654;
  assign andl6659 = io_in[0] && inv6656;
  assign inv6663 = ~andl6659;
  assign orl6668 = reg6626[1] || andl6705;
  assign andl6670 = orl6668 && inv6663;
  assign orl6679 = reg6626[2] || andl6742;
  assign andl6681 = orl6679 && inv6663;
  assign inv6686 = ~reg6626[1];
  assign andl6689 = io_in[1] && inv6686;
  assign andl6697 = io_in[1] && reg6626[5];
  assign orr6700 = |proxy6634;
  assign inv6702 = ~orr6700;
  assign andl6705 = io_in[1] && inv6702;
  assign inv6709 = ~andl6705;
  assign orl6714 = reg6626[5] || andl6742;
  assign andl6716 = orl6714 && inv6709;
  assign inv6721 = ~reg6626[2];
  assign andl6724 = io_in[2] && inv6721;
  assign inv6729 = ~reg6626[5];
  assign andl6732 = io_in[2] && inv6729;
  assign orr6737 = |proxy6636;
  assign inv6739 = ~orr6737;
  assign andl6742 = io_in[2] && inv6739;

  assign io_grant = proxy6638;

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
  wire[2:0] ch_hxbar6586_io_sel; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[71:0] proxy6589; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[71:0] ch_hxbar6586_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[23:0] ch_hxbar6586_io_out; // /home/blaise/dev/cash/include/htl/arbiter.h(40:1)
  wire[2:0] proxy6746; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire ch_rrArbiter6750_clk; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire ch_rrArbiter6750_reset; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire[2:0] ch_rrArbiter6750_io_in; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire[2:0] ch_rrArbiter6750_io_grant; // /home/blaise/dev/cash/include/htl/arbiter.h(40:2)
  wire eq6796; // /home/blaise/dev/cash/include/htl/arbiter.h(63:1)
  wire andl6799; // /home/blaise/dev/cash/include/htl/arbiter.h(63:2)
  wire eq6804; // /home/blaise/dev/cash/include/htl/arbiter.h(63:4)
  wire andl6807; // /home/blaise/dev/cash/include/htl/arbiter.h(63:5)
  wire eq6812; // /home/blaise/dev/cash/include/htl/arbiter.h(63:7)
  wire andl6815; // /home/blaise/dev/cash/include/htl/arbiter.h(63:8)

  ch_hxbar ch_hxbar6586(.io_sel(ch_hxbar6586_io_sel), .io_in(ch_hxbar6586_io_in), .io_out(ch_hxbar6586_io_out));
  assign ch_hxbar6586_io_sel = ch_rrArbiter6750_io_grant;
  assign proxy6589 = {io_in_2_valid, io_in_2_data, io_in_1_valid, io_in_1_data, io_in_0_valid, io_in_0_data};
  assign ch_hxbar6586_io_in = proxy6589;
  assign proxy6746 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  assign ch_rrArbiter6750_clk = clk;
  assign ch_rrArbiter6750_reset = reset;
  ch_rrArbiter ch_rrArbiter6750(.clk(ch_rrArbiter6750_clk), .reset(ch_rrArbiter6750_reset), .io_in(ch_rrArbiter6750_io_in), .io_grant(ch_rrArbiter6750_io_grant));
  assign ch_rrArbiter6750_io_in = proxy6746;
  assign eq6796 = ch_rrArbiter6750_io_grant == 3'h1;
  assign andl6799 = io_out_ready && eq6796;
  assign eq6804 = ch_rrArbiter6750_io_grant == 3'h2;
  assign andl6807 = io_out_ready && eq6804;
  assign eq6812 = ch_rrArbiter6750_io_grant == 3'h4;
  assign andl6815 = io_out_ready && eq6812;

  assign io_in_0_ready = andl6799;
  assign io_in_1_ready = andl6807;
  assign io_in_2_ready = andl6815;
  assign io_out_data = ch_hxbar6586_io_out[22:0];
  assign io_out_valid = ch_hxbar6586_io_out[23];
  assign io_out_grant = ch_rrArbiter6750_io_grant;

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
  wire[511:0] lit7422 = 512'h0;
  reg[21:0] mem7238 [0:1]; // wrcache.h(59:0)
  reg[511:0] mem7239 [0:1]; // wrcache.h(59:1)
  reg[1:0] reg7245; // wrcache.h(59:2)
  reg reg7253; // wrcache.h(59:3)
  reg[19:0] reg7258; // wrcache.h(59:4)
  reg reg7277; // wrcache.h(59:11)
  wire[533:0] io_evict_data7288; // wrcache.h(59:12)
  reg[2:0] reg7305; // wrcache.h(67:0)
  reg[533:0] reg7310; // wrcache.h(68:0)
  wire eq7326; // wrcache.h(15:0)
  wire[533:0] sel7328; // wrcache.h(79:0)
  wire[1:0] shl7337; // wrcache.h(81:0)
  wire[1:0] andb7340; // wrcache.h(81:1)
  wire ne7343; // wrcache.h(81:2)
  wire[21:0] marport7346; // wrcache.h(82:2)
  wire eq7350; // wrcache.h(82:2)
  wire andl7353; // wrcache.h(82:3)
  wire sel7355; // wrcache.h(82:0)
  wire[1:0] andb7362; // wrcache.h(83:3)
  wire ne7364; // wrcache.h(83:3)
  wire andl7367; // wrcache.h(83:4)
  wire sel7369; // wrcache.h(83:0)
  wire notl7373; // wrcache.h(84:2)
  wire sel7375; // wrcache.h(84:0)
  reg reg7379; // wrcache.h(92:0)
  reg reg7383; // wrcache.h(93:0)
  reg reg7387; // wrcache.h(94:0)
  reg reg7392; // wrcache.h(95:0)
  wire add7397; // wrcache.h(101:1)
  wire eq7401; // wrcache.h(102:2)
  wire[2:0] sel7405; // wrcache.h(102:0)
  wire andb7406; // wrcache.h(100:0)
  wire sel7407; // wrcache.h(100:0)
  wire[1:0] sel7408; // wrcache.h(102:0)
  reg reg7417; // wrcache.h(112:0)
  wire[21:0] marport7432; // wrcache.h(134:1)
  wire[1:0] andb7436; // wrcache.h(134:1)
  wire ne7439; // wrcache.h(134:2)
  wire eq7442; // wrcache.h(134:3)
  wire ne7446; // wrcache.h(134:5)
  wire andl7448; // wrcache.h(134:5)
  wire andl7450; // wrcache.h(134:5)
  wire[511:0] marport7454; // wrcache.h(139:0)
  wire[511:0] orb7456; // wrcache.h(139:0)
  wire[1:0] orb7461; // wrcache.h(140:1)
  wire[21:0] tag_t7467; // wrcache.h(140:0)
  wire[21:0] marport7475; // wrcache.h(159:1)
  wire eq7479; // wrcache.h(159:1)
  wire[1:0] shl7482; // wrcache.h(159:2)
  wire[1:0] andb7485; // wrcache.h(159:3)
  wire ne7488; // wrcache.h(159:4)
  wire andl7490; // wrcache.h(159:4)
  wire[511:0] orb7493; // wrcache.h(163:0)
  wire[1:0] orb7498; // wrcache.h(164:1)
  wire[21:0] tag_t7504; // wrcache.h(164:0)
  wire[1:0] shl7514; // wrcache.h(178:0)
  wire[1:0] orb7517; // wrcache.h(178:1)
  wire ne7520; // wrcache.h(181:1)
  wire eq7528; // wrcache.h(193:1)
  wire[21:0] tag_t7534; // wrcache.h(196:0)
  wire[1:0] inv7540; // wrcache.h(197:0)
  wire[1:0] andb7543; // wrcache.h(197:1)
  wire[1:0] andb7551; // wrcache.h(202:2)
  wire ne7553; // wrcache.h(202:2)
  wire[1:0] inv7557; // wrcache.h(205:1)
  wire[1:0] andb7562; // wrcache.h(205:2)
  wire[21:0] tag_t7568; // wrcache.h(205:0)
  wire ne7582; // wrcache.h(227:2)
  wire[1:0] sel7591; // wrcache.h(227:0)
  reg[1:0] sel7592; // wrcache.h(129:0)
  wire[19:0] sel7593; // wrcache.h(227:0)
  reg[19:0] sel7594; // wrcache.h(129:0)
  wire[511:0] sel7595; // wrcache.h(227:0)
  reg[511:0] sel7596; // wrcache.h(129:0)
  wire sel7597; // wrcache.h(181:0)
  wire andb7598; // wrcache.h(129:0)
  wire eq7599; // wrcache.h(129:0)
  wire andb7600; // wrcache.h(129:0)
  wire[1:0] sel7601; // wrcache.h(156:0)
  wire[1:0] sel7602; // wrcache.h(193:0)
  reg[1:0] sel7603; // wrcache.h(129:0)
  wire sel7604; // wrcache.h(156:0)
  wire andb7606; // wrcache.h(129:0)
  wire[19:0] sel7607; // wrcache.h(156:0)
  wire sel7610; // wrcache.h(147:0)
  wire sel7611; // wrcache.h(131:0)
  wire sel7612; // wrcache.h(129:0)
  wire[2:0] sel7613; // wrcache.h(134:0)
  wire[2:0] sel7614; // wrcache.h(147:0)
  wire[2:0] sel7615; // wrcache.h(131:0)
  wire[2:0] sel7616; // wrcache.h(181:0)
  wire[2:0] sel7617; // wrcache.h(156:0)
  wire[2:0] sel7618; // wrcache.h(193:0)
  wire[2:0] sel7619; // wrcache.h(219:0)
  reg[2:0] sel7620; // wrcache.h(129:0)
  wire sel7621; // wrcache.h(131:0)
  wire sel7622; // wrcache.h(159:0)
  wire sel7623; // wrcache.h(156:0)
  reg sel7624; // wrcache.h(129:0)
  wire sel7625; // wrcache.h(233:0)
  wire sel7626; // wrcache.h(227:0)
  wire sel7627; // wrcache.h(129:0)
  wire sel7628; // wrcache.h(227:0)
  reg sel7629; // wrcache.h(129:0)
  wire sel7630; // wrcache.h(134:0)
  wire andb7631; // wrcache.h(129:0)
  wire sel7632; // wrcache.h(156:0)
  reg sel7633; // wrcache.h(129:0)
  wire sel7634; // wrcache.h(156:0)
  wire[21:0] sel7637; // wrcache.h(134:0)
  wire[21:0] sel7639; // wrcache.h(159:0)
  wire[21:0] sel7640; // wrcache.h(156:0)
  wire[21:0] sel7641; // wrcache.h(202:0)
  wire[21:0] sel7642; // wrcache.h(193:0)
  reg[21:0] sel7643; // wrcache.h(129:0)
  wire sel7647; // wrcache.h(202:0)
  wire sel7648; // wrcache.h(193:0)
  reg sel7649; // wrcache.h(129:0)
  wire[511:0] sel7650; // wrcache.h(134:0)
  wire[511:0] sel7652; // wrcache.h(159:0)
  wire[511:0] sel7653; // wrcache.h(156:0)
  reg[511:0] sel7654; // wrcache.h(129:0)
  wire[533:0] sel7655; // wrcache.h(134:0)
  wire[533:0] sel7656; // wrcache.h(147:0)
  wire[533:0] sel7657; // wrcache.h(131:0)
  wire[533:0] sel7658; // wrcache.h(129:0)

  assign marport7346 = mem7238[1'h1];
  assign marport7432 = mem7238[sel7624];
  assign marport7475 = mem7238[sel7634];
  always @ (posedge clk) begin
    if (sel7649) begin
      mem7238[sel7624] <= sel7643;
    end
  end
  assign marport7454 = mem7239[sel7624];
  always @ (posedge clk) begin
    if (sel7633) begin
      mem7239[sel7624] <= sel7654;
    end
  end
  always @ (posedge clk) begin
    if (reset)
      reg7245 <= 2'h0;
    else
      reg7245 <= sel7603;
  end
  always @ (posedge clk) begin
    reg7253 <= sel7604;
  end
  always @ (posedge clk) begin
    reg7258 <= sel7607;
  end
  always @ (posedge clk) begin
    reg7277 <= sel7612;
  end
  assign io_evict_data7288 = {sel7596, sel7594, sel7592};
  always @ (posedge clk) begin
    if (reset)
      reg7305 <= 3'h0;
    else
      reg7305 <= sel7620;
  end
  always @ (posedge clk) begin
    reg7310 <= sel7658;
  end
  assign eq7326 = reg7305 == 3'h0;
  assign sel7328 = eq7326 ? io_enq_data : reg7310;
  assign shl7337 = 2'h1 << 32'h1;
  assign andb7340 = reg7245 & shl7337;
  assign ne7343 = 2'h0 != andb7340;
  assign eq7350 = marport7346[21:2] == sel7328[21:2];
  assign andl7353 = ne7343 && eq7350;
  assign sel7355 = andl7353 ? 1'h1 : 1'h0;
  assign andb7362 = marport7346[1:0] & sel7328[1:0];
  assign ne7364 = andb7362 != 2'h0;
  assign andl7367 = ne7343 && ne7364;
  assign sel7369 = andl7367 ? 1'h1 : 1'h0;
  assign notl7373 = !ne7343;
  assign sel7375 = notl7373 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg7379 <= sel7355;
  end
  always @ (posedge clk) begin
    reg7383 <= sel7369;
  end
  always @ (posedge clk) begin
    reg7387 <= sel7375;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7392 <= 1'h0;
    else
      reg7392 <= io_enq_valid;
  end
  assign add7397 = reg7277 + 1'h1;
  assign eq7401 = reg7277 == 1'h1;
  assign sel7405 = andb7406 ? 3'h0 : reg7305;
  assign andb7406 = sel7627 & eq7401;
  assign sel7407 = sel7627 ? add7397 : reg7277;
  assign sel7408 = andb7406 ? 2'h0 : reg7245;
  always @ (posedge clk) begin
    reg7417 <= sel7597;
  end
  assign andb7436 = marport7432[1:0] & io_enq_data[1:0];
  assign ne7439 = 2'h0 != andb7436;
  assign eq7442 = io_enq_data[21:2] == reg7258;
  assign ne7446 = reg7245 != 2'h0;
  assign andl7448 = ne7446 && eq7442;
  assign andl7450 = andl7448 && ne7439;
  assign orb7456 = marport7454 | io_enq_data[533:22];
  assign orb7461 = marport7432[1:0] | io_enq_data[1:0];
  assign tag_t7467 = {marport7432[21:2], orb7461};
  assign eq7479 = marport7475[21:2] == reg7310[21:2];
  assign shl7482 = 2'h1 << sel7634;
  assign andb7485 = reg7245 & shl7482;
  assign ne7488 = 2'h0 != andb7485;
  assign andl7490 = ne7488 && eq7479;
  assign orb7493 = marport7454 | reg7310[533:22];
  assign orb7498 = marport7432[1:0] | reg7310[1:0];
  assign tag_t7504 = {marport7432[21:2], orb7498};
  assign shl7514 = 2'h1 << sel7624;
  assign orb7517 = reg7245 | shl7514;
  assign ne7520 = sel7624 != reg7383;
  assign eq7528 = marport7432[1:0] == reg7310[1:0];
  assign tag_t7534 = {20'h0, 2'h0};
  assign inv7540 = ~shl7514;
  assign andb7543 = reg7245 & inv7540;
  assign andb7551 = marport7432[1:0] & reg7310[1:0];
  assign ne7553 = andb7551 != 2'h0;
  assign inv7557 = ~reg7310[1:0];
  assign andb7562 = marport7432[1:0] & inv7557;
  assign tag_t7568 = {marport7432[21:2], andb7562};
  assign ne7582 = marport7432[1:0] != 2'h0;
  assign sel7591 = ne7582 ? reg7310[1:0] : 2'h0;
  always @(*) begin
    case (reg7305)
      3'h3: sel7592 = reg7310[1:0];
      3'h4: sel7592 = sel7591;
      default: sel7592 = 2'h0;
    endcase
  end
  assign sel7593 = ne7582 ? marport7432[21:2] : 20'h0;
  always @(*) begin
    case (reg7305)
      3'h3: sel7594 = marport7432[21:2];
      3'h4: sel7594 = sel7593;
      default: sel7594 = 20'h0;
    endcase
  end
  assign sel7595 = ne7582 ? marport7454 : lit7422;
  always @(*) begin
    case (reg7305)
      3'h3: sel7596 = marport7454;
      3'h4: sel7596 = sel7595;
      default: sel7596 = lit7422;
    endcase
  end
  assign sel7597 = andb7600 ? reg7383 : reg7417;
  assign andb7598 = reg7392 & ne7520;
  assign eq7599 = reg7305 == 3'h1;
  assign andb7600 = eq7599 & andb7598;
  assign sel7601 = reg7392 ? orb7517 : sel7408;
  assign sel7602 = eq7528 ? andb7543 : sel7408;
  always @(*) begin
    case (reg7305)
      3'h1: sel7603 = sel7601;
      3'h2: sel7603 = sel7602;
      default: sel7603 = sel7408;
    endcase
  end
  assign sel7604 = andb7606 ? sel7624 : reg7253;
  assign andb7606 = eq7599 & reg7392;
  assign sel7607 = andb7606 ? reg7310[21:2] : reg7258;
  assign sel7610 = io_flush ? 1'h0 : sel7407;
  assign sel7611 = io_enq_valid ? sel7407 : sel7610;
  assign sel7612 = (reg7305 == 3'h0) ? sel7611 : sel7407;
  assign sel7613 = andl7450 ? sel7405 : 3'h1;
  assign sel7614 = io_flush ? 3'h4 : sel7405;
  assign sel7615 = io_enq_valid ? sel7613 : sel7614;
  assign sel7616 = ne7520 ? 3'h2 : 3'h0;
  assign sel7617 = reg7392 ? sel7616 : sel7405;
  assign sel7618 = eq7528 ? 3'h3 : 3'h0;
  assign sel7619 = io_evict_ready ? 3'h0 : sel7405;
  always @(*) begin
    case (reg7305)
      3'h0: sel7620 = sel7615;
      3'h1: sel7620 = sel7617;
      3'h2: sel7620 = sel7618;
      3'h3: sel7620 = sel7619;
      default: sel7620 = sel7405;
    endcase
  end
  assign sel7621 = io_enq_valid ? reg7253 : 1'h0;
  assign sel7622 = andl7490 ? reg7379 : reg7387;
  assign sel7623 = reg7392 ? sel7622 : 1'h0;
  always @(*) begin
    case (reg7305)
      3'h0: sel7624 = sel7621;
      3'h1: sel7624 = sel7623;
      3'h2: sel7624 = reg7417;
      3'h3: sel7624 = reg7417;
      3'h4: sel7624 = reg7277;
      default: sel7624 = 1'h0;
    endcase
  end
  assign sel7625 = io_evict_ready ? 1'h1 : 1'h0;
  assign sel7626 = ne7582 ? sel7625 : 1'h1;
  assign sel7627 = (reg7305 == 3'h4) ? sel7626 : 1'h0;
  assign sel7628 = ne7582 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7305)
      3'h3: sel7629 = 1'h1;
      3'h4: sel7629 = sel7628;
      default: sel7629 = 1'h0;
    endcase
  end
  assign sel7630 = andb7631 ? 1'h1 : 1'h0;
  assign andb7631 = io_enq_valid & andl7450;
  assign sel7632 = reg7392 ? 1'h1 : 1'h0;
  always @(*) begin
    case (reg7305)
      3'h0: sel7633 = sel7630;
      3'h1: sel7633 = sel7632;
      default: sel7633 = 1'h0;
    endcase
  end
  assign sel7634 = andb7606 ? reg7379 : 1'h0;
  assign sel7637 = andb7631 ? tag_t7467 : 22'h0;
  assign sel7639 = andl7490 ? tag_t7504 : reg7310[21:0];
  assign sel7640 = reg7392 ? sel7639 : 22'h0;
  assign sel7641 = ne7553 ? tag_t7568 : 22'h0;
  assign sel7642 = eq7528 ? tag_t7534 : sel7641;
  always @(*) begin
    case (reg7305)
      3'h0: sel7643 = sel7637;
      3'h1: sel7643 = sel7640;
      3'h2: sel7643 = sel7642;
      default: sel7643 = 22'h0;
    endcase
  end
  assign sel7647 = ne7553 ? 1'h1 : 1'h0;
  assign sel7648 = eq7528 ? 1'h1 : sel7647;
  always @(*) begin
    case (reg7305)
      3'h0: sel7649 = sel7630;
      3'h1: sel7649 = sel7632;
      3'h2: sel7649 = sel7648;
      default: sel7649 = 1'h0;
    endcase
  end
  assign sel7650 = andb7631 ? orb7456 : lit7422;
  assign sel7652 = andl7490 ? orb7493 : reg7310[533:22];
  assign sel7653 = reg7392 ? sel7652 : lit7422;
  always @(*) begin
    case (reg7305)
      3'h0: sel7654 = sel7650;
      3'h1: sel7654 = sel7653;
      default: sel7654 = lit7422;
    endcase
  end
  assign sel7655 = andl7450 ? reg7310 : io_enq_data;
  assign sel7656 = io_flush ? io_enq_data : reg7310;
  assign sel7657 = io_enq_valid ? sel7655 : sel7656;
  assign sel7658 = (reg7305 == 3'h0) ? sel7657 : reg7310;

  assign io_enq_ready = eq7326;
  assign io_evict_data = io_evict_data7288;
  assign io_evict_valid = sel7629;

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
  wire[511:0] lit7875 = 512'h0;
  wire[514:0] io_ctrl_rd_rsp_data6460; // lsu.cpp(19:0)
  wire ch_xbar_switch6821_clk; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_reset; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6821_io_in_0_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_in_0_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_in_0_ready; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6821_io_in_1_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_in_1_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_in_1_ready; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6821_io_in_2_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_in_2_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_in_2_ready; // lsu.cpp(19:1)
  wire[22:0] ch_xbar_switch6821_io_out_data; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_out_valid; // lsu.cpp(19:1)
  wire ch_xbar_switch6821_io_out_ready; // lsu.cpp(19:1)
  wire[2:0] ch_xbar_switch6821_io_out_grant; // lsu.cpp(19:1)
  wire ch_xbar_switch7189_clk; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_reset; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7189_io_in_0_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_in_0_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_in_0_ready; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7189_io_in_1_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_in_1_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_in_1_ready; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7189_io_in_2_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_in_2_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_in_2_ready; // lsu.cpp(19:2)
  wire[533:0] ch_xbar_switch7189_io_out_data; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_out_valid; // lsu.cpp(19:2)
  wire ch_xbar_switch7189_io_out_ready; // lsu.cpp(19:2)
  wire[2:0] ch_xbar_switch7189_io_out_grant; // lsu.cpp(19:2)
  wire[533:0] proxy7660; // lsu.cpp(19:3)
  wire spmv_write_cache7664_clk; // lsu.cpp(19:3)
  wire spmv_write_cache7664_reset; // lsu.cpp(19:3)
  wire[533:0] spmv_write_cache7664_io_enq_data; // lsu.cpp(19:3)
  wire spmv_write_cache7664_io_enq_valid; // lsu.cpp(19:3)
  wire spmv_write_cache7664_io_enq_ready; // lsu.cpp(19:3)
  wire[1:0] proxy_owner7676; // lsu.cpp(19:3)
  wire[533:0] spmv_write_cache7664_io_evict_data; // lsu.cpp(19:3)
  wire spmv_write_cache7664_io_evict_valid; // lsu.cpp(19:3)
  wire spmv_write_cache7664_io_evict_ready; // lsu.cpp(19:3)
  wire spmv_write_cache7664_io_flush; // lsu.cpp(19:3)
  wire notl7690; // lsu.cpp(44:0)
  reg reg7698; // lsu.cpp(47:0)
  reg[19:0] reg7703; // lsu.cpp(48:0)
  reg[13:0] reg7708; // lsu.cpp(49:0)
  reg[19:0] sel7718; // lsu.cpp(258:0)
  wire[19:0] add7719; // lsu.cpp(257:0)
  wire[5:0] ch_rd_mdata_t7722; // lsu.cpp(55:1)
  wire[13:0] pad7725; // lsu.cpp(55:0)
  reg[2:0] reg7730; // lsu.cpp(70:0)
  reg reg7736; // lsu.cpp(71:0)
  wire eq7742; // lsu.cpp(14:0)
  wire eq7746; // lsu.cpp(6:0)
  wire notl7749; // lsu.cpp(79:0)
  wire andb7752; // lsu.cpp(79:1)
  reg[533:0] reg7757; // lsu.cpp(81:0)
  reg[2:0] reg7768; // lsu.cpp(82:0)
  wire andb7771; // lsu.cpp(87:1)
  wire orb7775; // lsu.cpp(88:0)
  reg[31:0] sel7779; // lsu.cpp(87:0)
  reg[31:0] reg7786; // lsu.cpp(91:0)
  reg reg7793; // lsu.cpp(94:0)
  reg[19:0] reg7798; // lsu.cpp(95:0)
  reg[511:0] reg7803; // lsu.cpp(96:0)
  reg[13:0] reg7808; // lsu.cpp(97:0)
  wire[31:0] sub7812; // lsu.cpp(101:0)
  wire[4:0] ch_wr_mdata_t7815; // lsu.cpp(107:0)
  wire[19:0] add7822; // lsu.cpp(270:0)
  wire[13:0] pad7824; // lsu.cpp(110:0)
  wire[2:0] pad7827; // lsu.cpp(116:0)
  wire[4:0] ch_wr_mdata_t7830; // lsu.cpp(117:0)
  wire[19:0] add7836; // lsu.cpp(270:1)
  wire[13:0] pad7838; // lsu.cpp(120:0)
  wire notl7841; // lsu.cpp(127:1)
  wire[31:0] add7846; // lsu.cpp(129:1)
  wire[31:0] sub7848; // lsu.cpp(129:1)
  wire[31:0] sel7851; // lsu.cpp(127:0)
  wire eq7852; // lsu.cpp(103:0)
  wire andb7853; // lsu.cpp(103:0)
  wire sel7854; // lsu.cpp(127:0)
  wire[19:0] sel7857; // lsu.cpp(114:0)
  wire[19:0] sel7858; // lsu.cpp(105:0)
  wire[19:0] sel7859; // lsu.cpp(103:0)
  reg[19:0] sel7860; // lsu.cpp(271:0)
  wire[511:0] sel7861; // lsu.cpp(114:0)
  wire[511:0] sel7862; // lsu.cpp(105:0)
  wire[511:0] sel7863; // lsu.cpp(103:0)
  wire[13:0] sel7864; // lsu.cpp(114:0)
  wire[13:0] sel7865; // lsu.cpp(105:0)
  wire[13:0] sel7866; // lsu.cpp(103:0)
  reg[19:0] sel7867; // lsu.cpp(271:1)
  wire sel7868; // lsu.cpp(114:0)
  wire sel7869; // lsu.cpp(105:0)
  wire sel7870; // lsu.cpp(127:0)
  reg sel7871; // lsu.cpp(103:0)
  wire eq7882; // lsu.h(33:8)
  wire eq7886; // lsu.cpp(164:2)
  wire sel7900; // lsu.cpp(158:0)
  wire[1:0] sel7901; // lsu.cpp(158:0)
  wire[19:0] sel7902; // lsu.cpp(158:0)
  wire[511:0] sel7903; // lsu.cpp(158:0)
  wire sel7904; // lsu.cpp(158:0)
  wire sel7905; // lsu.cpp(158:0)
  wire[2:0] sel7906; // lsu.cpp(164:0)
  wire[2:0] sel7907; // lsu.cpp(163:0)
  wire[2:0] sel7908; // lsu.cpp(160:0)
  wire[2:0] sel7909; // lsu.cpp(177:0)
  wire[2:0] sel7910; // lsu.cpp(189:0)
  wire[2:0] sel7911; // lsu.cpp(198:0)
  reg[2:0] sel7913; // lsu.cpp(158:0)
  wire[2:0] sel7914; // lsu.cpp(160:0)
  wire andb7916; // lsu.cpp(158:0)
  wire[533:0] sel7917; // lsu.cpp(160:0)
  wire eq7926; // lsu.cpp(230:1)
  wire andb7929; // lsu.cpp(230:2)
  wire eq7933; // lsu.cpp(236:1)
  wire andb7936; // lsu.cpp(236:2)
  wire eq7940; // lsu.cpp(236:4)
  wire andb7943; // lsu.cpp(236:5)

  assign io_ctrl_rd_rsp_data6460 = {io_qpi_rd_rsp_data, io_qpi_rd_rsp_mdata[2:0]};
  assign ch_xbar_switch6821_clk = clk;
  assign ch_xbar_switch6821_reset = reset;
  ch_xbar_switch ch_xbar_switch6821(.clk(ch_xbar_switch6821_clk), .reset(ch_xbar_switch6821_reset), .io_in_0_data(ch_xbar_switch6821_io_in_0_data), .io_in_0_valid(ch_xbar_switch6821_io_in_0_valid), .io_in_1_data(ch_xbar_switch6821_io_in_1_data), .io_in_1_valid(ch_xbar_switch6821_io_in_1_valid), .io_in_2_data(ch_xbar_switch6821_io_in_2_data), .io_in_2_valid(ch_xbar_switch6821_io_in_2_valid), .io_out_ready(ch_xbar_switch6821_io_out_ready), .io_in_0_ready(ch_xbar_switch6821_io_in_0_ready), .io_in_1_ready(ch_xbar_switch6821_io_in_1_ready), .io_in_2_ready(ch_xbar_switch6821_io_in_2_ready), .io_out_data(ch_xbar_switch6821_io_out_data), .io_out_valid(ch_xbar_switch6821_io_out_valid), .io_out_grant(ch_xbar_switch6821_io_out_grant));
  assign ch_xbar_switch6821_io_in_0_data = io_walkers_0_rd_req_data;
  assign ch_xbar_switch6821_io_in_0_valid = io_walkers_0_rd_req_valid;
  assign ch_xbar_switch6821_io_in_1_data = io_walkers_1_rd_req_data;
  assign ch_xbar_switch6821_io_in_1_valid = io_walkers_1_rd_req_valid;
  assign ch_xbar_switch6821_io_in_2_data = io_ctrl_rd_req_data;
  assign ch_xbar_switch6821_io_in_2_valid = io_ctrl_rd_req_valid;
  assign ch_xbar_switch6821_io_out_ready = notl7690;
  assign ch_xbar_switch7189_clk = clk;
  assign ch_xbar_switch7189_reset = reset;
  ch_xbar_switch ch_xbar_switch7189(.clk(ch_xbar_switch7189_clk), .reset(ch_xbar_switch7189_reset), .io_in_0_data(ch_xbar_switch7189_io_in_0_data), .io_in_0_valid(ch_xbar_switch7189_io_in_0_valid), .io_in_1_data(ch_xbar_switch7189_io_in_1_data), .io_in_1_valid(ch_xbar_switch7189_io_in_1_valid), .io_in_2_data(ch_xbar_switch7189_io_in_2_data), .io_in_2_valid(ch_xbar_switch7189_io_in_2_valid), .io_out_ready(ch_xbar_switch7189_io_out_ready), .io_in_0_ready(ch_xbar_switch7189_io_in_0_ready), .io_in_1_ready(ch_xbar_switch7189_io_in_1_ready), .io_in_2_ready(ch_xbar_switch7189_io_in_2_ready), .io_out_data(ch_xbar_switch7189_io_out_data), .io_out_valid(ch_xbar_switch7189_io_out_valid), .io_out_grant(ch_xbar_switch7189_io_out_grant));
  assign ch_xbar_switch7189_io_in_0_data = io_PEs_0_wr_req_data;
  assign ch_xbar_switch7189_io_in_0_valid = io_PEs_0_wr_req_valid;
  assign ch_xbar_switch7189_io_in_1_data = io_PEs_1_wr_req_data;
  assign ch_xbar_switch7189_io_in_1_valid = io_PEs_1_wr_req_valid;
  assign ch_xbar_switch7189_io_in_2_data = io_ctrl_wr_req_data;
  assign ch_xbar_switch7189_io_in_2_valid = io_ctrl_wr_req_valid;
  assign ch_xbar_switch7189_io_out_ready = eq7746;
  assign proxy7660 = {sel7903, sel7902, sel7901};
  assign spmv_write_cache7664_clk = clk;
  assign spmv_write_cache7664_reset = reset;
  spmv_write_cache spmv_write_cache7664(.clk(spmv_write_cache7664_clk), .reset(spmv_write_cache7664_reset), .io_enq_data(spmv_write_cache7664_io_enq_data), .io_enq_valid(spmv_write_cache7664_io_enq_valid), .io_evict_ready(spmv_write_cache7664_io_evict_ready), .io_flush(spmv_write_cache7664_io_flush), .io_enq_ready(spmv_write_cache7664_io_enq_ready), .io_evict_data(spmv_write_cache7664_io_evict_data), .io_evict_valid(spmv_write_cache7664_io_evict_valid));
  assign spmv_write_cache7664_io_enq_data = proxy7660;
  assign spmv_write_cache7664_io_enq_valid = sel7905;
  assign proxy_owner7676 = spmv_write_cache7664_io_evict_data[1:0];
  assign spmv_write_cache7664_io_evict_ready = andb7752;
  assign spmv_write_cache7664_io_flush = sel7900;
  assign notl7690 = !io_qpi_rd_req_almostfull;
  always @ (posedge clk) begin
    if (reset)
      reg7698 <= 1'h0;
    else
      reg7698 <= ch_xbar_switch6821_io_out_valid;
  end
  always @ (posedge clk) begin
    reg7703 <= add7719;
  end
  always @ (posedge clk) begin
    reg7708 <= pad7725;
  end
  always @(*) begin
    case (ch_xbar_switch6821_io_out_data[2:0])
      3'h0: sel7718 = io_ctx[51:32];
      3'h1: sel7718 = io_ctx[71:52];
      3'h2: sel7718 = io_ctx[91:72];
      3'h3: sel7718 = io_ctx[111:92];
      3'h4: sel7718 = io_ctx[131:112];
      3'h5: sel7718 = io_ctx[151:132];
      default: sel7718 = io_ctx[171:152];
    endcase
  end
  assign add7719 = sel7718 + ch_xbar_switch6821_io_out_data[22:3];
  assign ch_rd_mdata_t7722 = {ch_xbar_switch6821_io_out_grant, ch_xbar_switch6821_io_out_data[2:0]};
  assign pad7725 = {{8{1'b0}}, ch_rd_mdata_t7722};
  always @ (posedge clk) begin
    if (reset)
      reg7730 <= 3'h0;
    else
      reg7730 <= sel7913;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7736 <= 1'h0;
    else
      reg7736 <= sel7871;
  end
  assign eq7742 = reg7736 == 1'h0;
  assign eq7746 = reg7730 == 3'h0;
  assign notl7749 = !sel7904;
  assign andb7752 = eq7742 & notl7749;
  always @ (posedge clk) begin
    reg7757 <= sel7917;
  end
  always @ (posedge clk) begin
    reg7768 <= sel7914;
  end
  assign andb7771 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign orb7775 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  always @(*) begin
    if (orb7775)
      sel7779 = 32'h1;
    else if (andb7771)
      sel7779 = 32'h2;
    else
      sel7779 = 32'h0;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7786 <= 32'h0;
    else
      reg7786 <= sel7851;
  end
  always @ (posedge clk) begin
    if (reset)
      reg7793 <= 1'h0;
    else
      reg7793 <= sel7854;
  end
  always @ (posedge clk) begin
    reg7798 <= sel7859;
  end
  always @ (posedge clk) begin
    reg7803 <= sel7863;
  end
  always @ (posedge clk) begin
    reg7808 <= sel7866;
  end
  assign sub7812 = reg7786 - sel7779;
  assign ch_wr_mdata_t7815 = {reg7768, reg7757[1:0]};
  assign add7822 = sel7860 + reg7757[21:2];
  assign pad7824 = {{9{1'b0}}, ch_wr_mdata_t7815};
  assign pad7827 = {{1{1'b0}}, proxy_owner7676};
  assign ch_wr_mdata_t7830 = {pad7827, 2'h1};
  assign add7836 = sel7867 + spmv_write_cache7664_io_evict_data[21:2];
  assign pad7838 = {{9{1'b0}}, ch_wr_mdata_t7830};
  assign notl7841 = !io_qpi_wr_req_almostfull;
  assign add7846 = reg7786 + 32'h1;
  assign sub7848 = add7846 - sel7779;
  assign sel7851 = andb7853 ? sub7848 : sub7812;
  assign eq7852 = reg7736 == 1'h1;
  assign andb7853 = eq7852 & notl7841;
  assign sel7854 = andb7853 ? 1'h1 : 1'h0;
  assign sel7857 = spmv_write_cache7664_io_evict_valid ? add7836 : reg7798;
  assign sel7858 = sel7904 ? add7822 : sel7857;
  assign sel7859 = (reg7736 == 1'h0) ? sel7858 : reg7798;
  always @(*) begin
    case (reg7757[1:0])
      2'h0: sel7860 = io_ctx[191:172];
      2'h1: sel7860 = io_ctx[211:192];
      default: sel7860 = io_ctx[231:212];
    endcase
  end
  assign sel7861 = spmv_write_cache7664_io_evict_valid ? spmv_write_cache7664_io_evict_data[533:22] : reg7803;
  assign sel7862 = sel7904 ? reg7757[533:22] : sel7861;
  assign sel7863 = (reg7736 == 1'h0) ? sel7862 : reg7803;
  assign sel7864 = spmv_write_cache7664_io_evict_valid ? pad7838 : reg7808;
  assign sel7865 = sel7904 ? pad7824 : sel7864;
  assign sel7866 = (reg7736 == 1'h0) ? sel7865 : reg7808;
  always @(*) begin
    case (2'h1)
      2'h0: sel7867 = io_ctx[191:172];
      2'h1: sel7867 = io_ctx[211:192];
      default: sel7867 = io_ctx[231:212];
    endcase
  end
  assign sel7868 = spmv_write_cache7664_io_evict_valid ? 1'h1 : reg7736;
  assign sel7869 = sel7904 ? 1'h1 : sel7868;
  assign sel7870 = notl7841 ? 1'h0 : reg7736;
  always @(*) begin
    case (reg7736)
      1'h0: sel7871 = sel7869;
      1'h1: sel7871 = sel7870;
      default: sel7871 = reg7736;
    endcase
  end
  assign eq7882 = ch_xbar_switch7189_io_out_data[1:0] == 2'h1;
  assign eq7886 = ch_xbar_switch7189_io_out_grant == 3'h4;
  assign sel7900 = (reg7730 == 3'h3) ? 1'h1 : 1'h0;
  assign sel7901 = (reg7730 == 3'h2) ? reg7768[1:0] : 2'h0;
  assign sel7902 = (reg7730 == 3'h2) ? reg7757[21:2] : 20'h0;
  assign sel7903 = (reg7730 == 3'h2) ? reg7757[533:22] : lit7875;
  assign sel7904 = (reg7730 == 3'h1) ? 1'h1 : 1'h0;
  assign sel7905 = (reg7730 == 3'h2) ? 1'h1 : 1'h0;
  assign sel7906 = eq7886 ? 3'h3 : 3'h2;
  assign sel7907 = eq7882 ? sel7906 : 3'h1;
  assign sel7908 = ch_xbar_switch7189_io_out_valid ? sel7907 : reg7730;
  assign sel7909 = eq7742 ? 3'h0 : reg7730;
  assign sel7910 = spmv_write_cache7664_io_enq_ready ? 3'h0 : reg7730;
  assign sel7911 = spmv_write_cache7664_io_enq_ready ? 3'h4 : reg7730;
  always @(*) begin
    case (reg7730)
      3'h0: sel7913 = sel7908;
      3'h1: sel7913 = sel7909;
      3'h2: sel7913 = sel7910;
      3'h3: sel7913 = sel7911;
      3'h4: sel7913 = sel7910;
      default: sel7913 = reg7730;
    endcase
  end
  assign sel7914 = andb7916 ? ch_xbar_switch7189_io_out_grant : reg7768;
  assign andb7916 = eq7746 & ch_xbar_switch7189_io_out_valid;
  assign sel7917 = andb7916 ? ch_xbar_switch7189_io_out_data : reg7757;
  assign eq7926 = io_qpi_rd_rsp_mdata[5:3] == 3'h4;
  assign andb7929 = io_qpi_rd_rsp_valid & eq7926;
  assign eq7933 = io_qpi_rd_rsp_mdata[5:3] == 3'h1;
  assign andb7936 = io_qpi_rd_rsp_valid & eq7933;
  assign eq7940 = io_qpi_rd_rsp_mdata[5:3] == 3'h2;
  assign andb7943 = io_qpi_rd_rsp_valid & eq7940;

  assign io_qpi_rd_req_addr = reg7703;
  assign io_qpi_rd_req_mdata = reg7708;
  assign io_qpi_rd_req_valid = reg7698;
  assign io_qpi_wr_req_addr = reg7798;
  assign io_qpi_wr_req_mdata = reg7808;
  assign io_qpi_wr_req_data = reg7803;
  assign io_qpi_wr_req_valid = reg7793;
  assign io_ctrl_rd_req_ready = ch_xbar_switch6821_io_in_2_ready;
  assign io_ctrl_wr_req_ready = ch_xbar_switch7189_io_in_2_ready;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data6460;
  assign io_ctrl_rd_rsp_valid = andb7929;
  assign io_ctrl_outstanding_writes = reg7786;
  assign io_walkers_0_rd_req_ready = ch_xbar_switch6821_io_in_0_ready;
  assign io_walkers_0_rd_rsp_data = io_ctrl_rd_rsp_data6460;
  assign io_walkers_0_rd_rsp_valid = andb7936;
  assign io_walkers_1_rd_req_ready = ch_xbar_switch6821_io_in_1_ready;
  assign io_walkers_1_rd_rsp_data = io_ctrl_rd_rsp_data6460;
  assign io_walkers_1_rd_rsp_valid = andb7943;
  assign io_PEs_0_wr_req_ready = ch_xbar_switch7189_io_in_0_ready;
  assign io_PEs_1_wr_req_ready = ch_xbar_switch7189_io_in_1_ready;

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
  wire[95:0] lit8380 = 96'h0;
  wire[511:0] lit8487 = 512'h0;
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
  wire spmv_pe5558_clk; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5558_reset; // /usr/include/c++/7/array(94:18)
  wire[84:0] spmv_pe5558_io_req_data; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5558_io_req_valid; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5558_io_req_ready; // /usr/include/c++/7/array(94:18)
  wire[533:0] spmv_pe5558_io_lsu_wr_req_data; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5558_io_lsu_wr_req_valid; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5558_io_lsu_wr_req_ready; // /usr/include/c++/7/array(94:18)
  wire[63:0] spmv_pe5558_io_stats; // /usr/include/c++/7/array(94:18)
  wire spmv_pe5558_io_is_idle; // /usr/include/c++/7/array(94:18)
  wire spmv_pe6368_clk; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6368_reset; // /usr/include/c++/7/array(94:19)
  wire[84:0] spmv_pe6368_io_req_data; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6368_io_req_valid; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6368_io_req_ready; // /usr/include/c++/7/array(94:19)
  wire[533:0] spmv_pe6368_io_lsu_wr_req_data; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6368_io_lsu_wr_req_valid; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6368_io_lsu_wr_req_ready; // /usr/include/c++/7/array(94:19)
  wire[63:0] spmv_pe6368_io_stats; // /usr/include/c++/7/array(94:19)
  wire spmv_pe6368_io_is_idle; // /usr/include/c++/7/array(94:19)
  wire spmv_lsu7947_clk; // spmv.cpp(21:0)
  wire spmv_lsu7947_reset; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_rd_req_almostfull; // spmv.cpp(21:0)
  wire[19:0] spmv_lsu7947_io_qpi_rd_req_addr; // spmv.cpp(21:0)
  wire[13:0] spmv_lsu7947_io_qpi_rd_req_mdata; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_rd_req_valid; // spmv.cpp(21:0)
  wire[13:0] spmv_lsu7947_io_qpi_rd_rsp_mdata; // spmv.cpp(21:0)
  wire[511:0] spmv_lsu7947_io_qpi_rd_rsp_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_rd_rsp_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_wr_req_almostfull; // spmv.cpp(21:0)
  wire[19:0] spmv_lsu7947_io_qpi_wr_req_addr; // spmv.cpp(21:0)
  wire[13:0] spmv_lsu7947_io_qpi_wr_req_mdata; // spmv.cpp(21:0)
  wire[511:0] spmv_lsu7947_io_qpi_wr_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_wr_req_valid; // spmv.cpp(21:0)
  wire[13:0] spmv_lsu7947_io_qpi_wr_rsp0_mdata; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_wr_rsp0_valid; // spmv.cpp(21:0)
  wire[13:0] spmv_lsu7947_io_qpi_wr_rsp1_mdata; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_qpi_wr_rsp1_valid; // spmv.cpp(21:0)
  wire[511:0] spmv_lsu7947_io_ctx; // spmv.cpp(21:0)
  wire[22:0] proxy8015; // spmv.cpp(21:0)
  wire[22:0] spmv_lsu7947_io_ctrl_rd_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_ctrl_rd_req_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_ctrl_rd_req_ready; // spmv.cpp(21:0)
  wire[533:0] proxy8026; // spmv.cpp(21:0)
  wire[533:0] spmv_lsu7947_io_ctrl_wr_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_ctrl_wr_req_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_ctrl_wr_req_ready; // spmv.cpp(21:0)
  wire[514:0] spmv_lsu7947_io_ctrl_rd_rsp_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_ctrl_rd_rsp_valid; // spmv.cpp(21:0)
  wire[31:0] spmv_lsu7947_io_ctrl_outstanding_writes; // spmv.cpp(21:0)
  wire[22:0] spmv_lsu7947_io_walkers_0_rd_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_walkers_0_rd_req_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_walkers_0_rd_req_ready; // spmv.cpp(21:0)
  wire[514:0] spmv_lsu7947_io_walkers_0_rd_rsp_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_walkers_0_rd_rsp_valid; // spmv.cpp(21:0)
  wire[22:0] spmv_lsu7947_io_walkers_1_rd_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_walkers_1_rd_req_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_walkers_1_rd_req_ready; // spmv.cpp(21:0)
  wire[514:0] spmv_lsu7947_io_walkers_1_rd_rsp_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_walkers_1_rd_rsp_valid; // spmv.cpp(21:0)
  wire[533:0] spmv_lsu7947_io_PEs_0_wr_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_PEs_0_wr_req_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_PEs_0_wr_req_ready; // spmv.cpp(21:0)
  wire[533:0] spmv_lsu7947_io_PEs_1_wr_req_data; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_PEs_1_wr_req_valid; // spmv.cpp(21:0)
  wire spmv_lsu7947_io_PEs_1_wr_req_ready; // spmv.cpp(21:0)
  wire ch_llqueue8307_clk; // spmv.cpp(21:1)
  wire ch_llqueue8307_reset; // spmv.cpp(21:1)
  wire[511:0] ch_llqueue8307_io_enq_data; // spmv.cpp(21:1)
  wire ch_llqueue8307_io_enq_valid; // spmv.cpp(21:1)
  wire[511:0] ch_llqueue8307_io_deq_data; // spmv.cpp(21:1)
  wire ch_llqueue8307_io_deq_valid; // spmv.cpp(21:1)
  wire ch_llqueue8307_io_deq_ready; // spmv.cpp(21:1)
  wire[543:0] proxy8331; // spmv.cpp(21:2)
  reg[543:0] reg8332; // spmv.cpp(21:2)
  reg[4:0] reg8339; // spmv.cpp(21:3)
  reg[31:0] reg8346; // spmv.cpp(21:4)
  reg[19:0] reg8353; // spmv.cpp(21:5)
  reg[19:0] reg8358; // spmv.cpp(21:6)
  reg[1:0] reg8365; // spmv.cpp(21:7)
  reg[19:0] reg8373; // spmv.cpp(21:9)
  reg[19:0] reg8378; // spmv.cpp(21:10)
  wire[95:0] proxy8387; // spmv.cpp(21:11)
  reg[95:0] reg8388; // spmv.cpp(21:11)
  wire[19:0] sub8401; // spmv.cpp(39:1)
  reg[63:0] reg8408; // spmv.cpp(42:0)
  wire[63:0] add8413; // spmv.cpp(43:1)
  reg[2:0] reg8420; // spmv.cpp(60:0)
  reg reg8428; // spmv.cpp(63:0)
  wire eq8432; // lsu.h(23:40)
  wire andl8435; // spmv.cpp(68:1)
  wire[31:0] pad8437; // spmv.cpp(75:0)
  wire eq8440; // lsu.h(23:41)
  wire andl8443; // spmv.cpp(73:0)
  wire andl8445; // spmv.cpp(73:0)
  wire[31:0] pad8447; // spmv.cpp(74:0)
  wire[31:0] add8449; // spmv.cpp(74:2)
  wire[31:0] sub8451; // spmv.cpp(74:2)
  wire andl8454; // spmv.cpp(78:0)
  wire andl8457; // spmv.cpp(80:0)
  wire andl8459; // spmv.cpp(80:0)
  wire[31:0] add8468; // spmv.cpp(90:4)
  wire[31:0] shl8472; // spmv.cpp(90:4)
  wire[31:0] add8474; // spmv.cpp(90:4)
  wire[31:0] shr8478; // spmv.cpp(90:4)
  wire[19:0] sub8482; // spmv.cpp(90:1)
  wire ne8492; // spmv.cpp(105:2)
  wire ne8503; // spmv.cpp(117:2)
  wire[19:0] add8508; // spmv.cpp(121:1)
  wire eq8511; // spmv.cpp(122:1)
  wire[31:0] add8517; // spmv.cpp(128:1)
  wire eq8524; // spmv.cpp(137:1)
  wire andl8526; // spmv.cpp(137:1)
  wire[19:0] pad8537; // spmv.cpp(155:0)
  wire[511:0] pad8538; // spmv.cpp(265:1)
  wire[415:0] ch_cu_stats_t8540; // spmv.cpp(267:0)
  wire[511:0] pad8556; // spmv.cpp(268:0)
  wire[415:0] ch_cu_stats_t8558; // spmv.cpp(270:0)
  wire[511:0] pad8574; // spmv.cpp(271:0)
  reg[511:0] sel8575; // spmv.cpp(265:0)
  wire[1:0] add8580; // spmv.cpp(160:1)
  wire eq8584; // spmv.cpp(161:2)
  wire eq8590; // spmv.cpp(169:2)
  wire[1:0] sel8594; // spmv.cpp(159:0)
  wire eq8595; // spmv.cpp(102:0)
  wire andb8596; // spmv.cpp(102:0)
  reg sel8597; // spmv.cpp(102:0)
  wire sel8598; // spmv.cpp(105:0)
  wire sel8599; // spmv.cpp(104:0)
  wire sel8600; // spmv.cpp(169:0)
  reg sel8601; // spmv.cpp(102:0)
  wire[19:0] sel8602; // spmv.cpp(105:0)
  wire andb8603; // spmv.cpp(102:0)
  wire[19:0] sel8604; // spmv.cpp(120:0)
  wire andb8605; // spmv.cpp(102:0)
  reg[19:0] sel8606; // spmv.cpp(102:0)
  reg[1:0] sel8607; // spmv.cpp(102:0)
  wire[19:0] sel8608; // spmv.cpp(102:0)
  wire[511:0] sel8609; // spmv.cpp(102:0)
  wire[2:0] sel8610; // spmv.cpp(105:0)
  wire[2:0] sel8612; // spmv.cpp(122:0)
  wire andb8613; // spmv.cpp(102:0)
  wire andb8614; // spmv.cpp(102:0)
  wire[2:0] sel8615; // spmv.cpp(137:0)
  wire[2:0] sel8616; // spmv.cpp(147:0)
  wire[2:0] sel8617; // spmv.cpp(161:0)
  wire andb8618; // spmv.cpp(102:0)
  wire[2:0] sel8619; // spmv.cpp(169:0)
  reg[2:0] sel8620; // spmv.cpp(102:0)
  wire sel8621; // spmv.cpp(117:0)
  wire eq8622; // spmv.cpp(102:0)
  wire andb8623; // spmv.cpp(102:0)
  wire[31:0] sel8625; // spmv.cpp(120:0)
  wire[31:0] sel8626; // spmv.cpp(117:0)
  wire[31:0] sel8627; // spmv.cpp(102:0)
  reg[1:0] reg8632; // spmv.cpp(187:0)
  wire eq8641; // spmv.cpp(203:1)
  wire[543:0] shr8662; // spmv.cpp(227:0)
  wire[19:0] add8669; // spmv.cpp(228:1)
  wire[4:0] sub8674; // spmv.cpp(229:1)
  wire ne8679; // spmv.cpp(239:2)
  wire ne8682; // spmv.cpp(239:3)
  wire andl8684; // spmv.cpp(239:3)
  wire sel8721; // spmv.cpp(220:1)
  wire eq8722; // spmv.cpp(198:0)
  wire andb8723; // spmv.cpp(198:0)
  wire[63:0] sel8724; // spmv.cpp(220:1)
  wire[63:0] sel8727; // spmv.cpp(220:0)
  wire eq8728; // spmv.cpp(198:0)
  wire andb8729; // spmv.cpp(198:0)
  wire sel8730; // spmv.cpp(220:0)
  wire[1:0] sel8733; // spmv.cpp(201:0)
  wire[1:0] sel8734; // spmv.cpp(239:0)
  wire[1:0] sel8735; // spmv.cpp(220:0)
  wire[1:0] sel8736; // spmv.cpp(239:4)
  wire[1:0] sel8737; // spmv.cpp(220:1)
  reg[1:0] sel8738; // spmv.cpp(198:0)
  wire[19:0] sel8739; // spmv.cpp(220:0)
  wire[19:0] sel8740; // spmv.cpp(220:1)
  reg[19:0] sel8741; // spmv.cpp(198:0)
  wire[31:0] sel8743; // spmv.cpp(203:0)
  wire andb8744; // spmv.cpp(198:0)
  wire[31:0] sel8745; // spmv.cpp(220:0)
  wire[31:0] sel8746; // spmv.cpp(220:1)
  reg[31:0] sel8747; // spmv.cpp(198:0)
  wire[479:0] sel8749; // spmv.cpp(203:0)
  wire[479:0] sel8750; // spmv.cpp(201:0)
  wire[479:0] sel8751; // spmv.cpp(220:0)
  wire[479:0] sel8752; // spmv.cpp(220:1)
  reg[479:0] sel8753; // spmv.cpp(198:0)
  wire[31:0] sel8755; // spmv.cpp(203:0)
  wire[31:0] sel8756; // spmv.cpp(201:0)
  wire[31:0] sel8757; // spmv.cpp(220:0)
  wire[31:0] sel8758; // spmv.cpp(220:1)
  reg[31:0] sel8759; // spmv.cpp(198:0)
  wire[4:0] sel8760; // spmv.cpp(203:0)
  wire[4:0] sel8761; // spmv.cpp(201:0)
  wire[4:0] sel8762; // spmv.cpp(220:0)
  wire[4:0] sel8763; // spmv.cpp(220:1)
  reg[4:0] sel8764; // spmv.cpp(198:0)
  wire sel8765; // spmv.cpp(201:0)
  wire eq8766; // spmv.cpp(198:0)
  wire andb8767; // spmv.cpp(198:0)

  assign spmv_dcsc_walk2354_clk = clk;
  assign spmv_dcsc_walk2354_reset = reset;
  spmv_dcsc_walk spmv_dcsc_walk2354(.clk(spmv_dcsc_walk2354_clk), .reset(spmv_dcsc_walk2354_reset), .io_ctrl_start_data(spmv_dcsc_walk2354_io_ctrl_start_data), .io_ctrl_start_valid(spmv_dcsc_walk2354_io_ctrl_start_valid), .io_ctrl_timer(spmv_dcsc_walk2354_io_ctrl_timer), .io_lsu_rd_req_ready(spmv_dcsc_walk2354_io_lsu_rd_req_ready), .io_lsu_rd_rsp_data(spmv_dcsc_walk2354_io_lsu_rd_rsp_data), .io_lsu_rd_rsp_valid(spmv_dcsc_walk2354_io_lsu_rd_rsp_valid), .io_pe_ready(spmv_dcsc_walk2354_io_pe_ready), .io_ctrl_start_ready(spmv_dcsc_walk2354_io_ctrl_start_ready), .io_ctrl_stats(spmv_dcsc_walk2354_io_ctrl_stats), .io_lsu_rd_req_data(spmv_dcsc_walk2354_io_lsu_rd_req_data), .io_lsu_rd_req_valid(spmv_dcsc_walk2354_io_lsu_rd_req_valid), .io_pe_data(spmv_dcsc_walk2354_io_pe_data), .io_pe_valid(spmv_dcsc_walk2354_io_pe_valid));
  assign spmv_dcsc_walk2354_io_ctrl_start_data = sel8727;
  assign spmv_dcsc_walk2354_io_ctrl_start_valid = sel8730;
  assign spmv_dcsc_walk2354_io_ctrl_timer = reg8408;
  assign spmv_dcsc_walk2354_io_lsu_rd_req_ready = spmv_lsu7947_io_walkers_0_rd_req_ready;
  assign spmv_dcsc_walk2354_io_lsu_rd_rsp_data = spmv_lsu7947_io_walkers_0_rd_rsp_data;
  assign spmv_dcsc_walk2354_io_lsu_rd_rsp_valid = spmv_lsu7947_io_walkers_0_rd_rsp_valid;
  assign spmv_dcsc_walk2354_io_pe_ready = spmv_pe5558_io_req_ready;
  assign spmv_dcsc_walk4719_clk = clk;
  assign spmv_dcsc_walk4719_reset = reset;
  spmv_dcsc_walk spmv_dcsc_walk4719(.clk(spmv_dcsc_walk4719_clk), .reset(spmv_dcsc_walk4719_reset), .io_ctrl_start_data(spmv_dcsc_walk4719_io_ctrl_start_data), .io_ctrl_start_valid(spmv_dcsc_walk4719_io_ctrl_start_valid), .io_ctrl_timer(spmv_dcsc_walk4719_io_ctrl_timer), .io_lsu_rd_req_ready(spmv_dcsc_walk4719_io_lsu_rd_req_ready), .io_lsu_rd_rsp_data(spmv_dcsc_walk4719_io_lsu_rd_rsp_data), .io_lsu_rd_rsp_valid(spmv_dcsc_walk4719_io_lsu_rd_rsp_valid), .io_pe_ready(spmv_dcsc_walk4719_io_pe_ready), .io_ctrl_start_ready(spmv_dcsc_walk4719_io_ctrl_start_ready), .io_ctrl_stats(spmv_dcsc_walk4719_io_ctrl_stats), .io_lsu_rd_req_data(spmv_dcsc_walk4719_io_lsu_rd_req_data), .io_lsu_rd_req_valid(spmv_dcsc_walk4719_io_lsu_rd_req_valid), .io_pe_data(spmv_dcsc_walk4719_io_pe_data), .io_pe_valid(spmv_dcsc_walk4719_io_pe_valid));
  assign spmv_dcsc_walk4719_io_ctrl_start_data = sel8724;
  assign spmv_dcsc_walk4719_io_ctrl_start_valid = sel8721;
  assign spmv_dcsc_walk4719_io_ctrl_timer = reg8408;
  assign spmv_dcsc_walk4719_io_lsu_rd_req_ready = spmv_lsu7947_io_walkers_1_rd_req_ready;
  assign spmv_dcsc_walk4719_io_lsu_rd_rsp_data = spmv_lsu7947_io_walkers_1_rd_rsp_data;
  assign spmv_dcsc_walk4719_io_lsu_rd_rsp_valid = spmv_lsu7947_io_walkers_1_rd_rsp_valid;
  assign spmv_dcsc_walk4719_io_pe_ready = spmv_pe6368_io_req_ready;
  assign spmv_pe5558_clk = clk;
  assign spmv_pe5558_reset = reset;
  spmv_pe spmv_pe5558(.clk(spmv_pe5558_clk), .reset(spmv_pe5558_reset), .io_req_data(spmv_pe5558_io_req_data), .io_req_valid(spmv_pe5558_io_req_valid), .io_lsu_wr_req_ready(spmv_pe5558_io_lsu_wr_req_ready), .io_req_ready(spmv_pe5558_io_req_ready), .io_lsu_wr_req_data(spmv_pe5558_io_lsu_wr_req_data), .io_lsu_wr_req_valid(spmv_pe5558_io_lsu_wr_req_valid), .io_stats(spmv_pe5558_io_stats), .io_is_idle(spmv_pe5558_io_is_idle));
  assign spmv_pe5558_io_req_data = spmv_dcsc_walk2354_io_pe_data;
  assign spmv_pe5558_io_req_valid = spmv_dcsc_walk2354_io_pe_valid;
  assign spmv_pe5558_io_lsu_wr_req_ready = spmv_lsu7947_io_PEs_0_wr_req_ready;
  assign spmv_pe6368_clk = clk;
  assign spmv_pe6368_reset = reset;
  spmv_pe spmv_pe6368(.clk(spmv_pe6368_clk), .reset(spmv_pe6368_reset), .io_req_data(spmv_pe6368_io_req_data), .io_req_valid(spmv_pe6368_io_req_valid), .io_lsu_wr_req_ready(spmv_pe6368_io_lsu_wr_req_ready), .io_req_ready(spmv_pe6368_io_req_ready), .io_lsu_wr_req_data(spmv_pe6368_io_lsu_wr_req_data), .io_lsu_wr_req_valid(spmv_pe6368_io_lsu_wr_req_valid), .io_stats(spmv_pe6368_io_stats), .io_is_idle(spmv_pe6368_io_is_idle));
  assign spmv_pe6368_io_req_data = spmv_dcsc_walk4719_io_pe_data;
  assign spmv_pe6368_io_req_valid = spmv_dcsc_walk4719_io_pe_valid;
  assign spmv_pe6368_io_lsu_wr_req_ready = spmv_lsu7947_io_PEs_1_wr_req_ready;
  assign spmv_lsu7947_clk = clk;
  assign spmv_lsu7947_reset = reset;
  spmv_lsu spmv_lsu7947(.clk(spmv_lsu7947_clk), .reset(spmv_lsu7947_reset), .io_qpi_rd_req_almostfull(spmv_lsu7947_io_qpi_rd_req_almostfull), .io_qpi_rd_rsp_mdata(spmv_lsu7947_io_qpi_rd_rsp_mdata), .io_qpi_rd_rsp_data(spmv_lsu7947_io_qpi_rd_rsp_data), .io_qpi_rd_rsp_valid(spmv_lsu7947_io_qpi_rd_rsp_valid), .io_qpi_wr_req_almostfull(spmv_lsu7947_io_qpi_wr_req_almostfull), .io_qpi_wr_rsp0_mdata(spmv_lsu7947_io_qpi_wr_rsp0_mdata), .io_qpi_wr_rsp0_valid(spmv_lsu7947_io_qpi_wr_rsp0_valid), .io_qpi_wr_rsp1_mdata(spmv_lsu7947_io_qpi_wr_rsp1_mdata), .io_qpi_wr_rsp1_valid(spmv_lsu7947_io_qpi_wr_rsp1_valid), .io_ctx(spmv_lsu7947_io_ctx), .io_ctrl_rd_req_data(spmv_lsu7947_io_ctrl_rd_req_data), .io_ctrl_rd_req_valid(spmv_lsu7947_io_ctrl_rd_req_valid), .io_ctrl_wr_req_data(spmv_lsu7947_io_ctrl_wr_req_data), .io_ctrl_wr_req_valid(spmv_lsu7947_io_ctrl_wr_req_valid), .io_walkers_0_rd_req_data(spmv_lsu7947_io_walkers_0_rd_req_data), .io_walkers_0_rd_req_valid(spmv_lsu7947_io_walkers_0_rd_req_valid), .io_walkers_1_rd_req_data(spmv_lsu7947_io_walkers_1_rd_req_data), .io_walkers_1_rd_req_valid(spmv_lsu7947_io_walkers_1_rd_req_valid), .io_PEs_0_wr_req_data(spmv_lsu7947_io_PEs_0_wr_req_data), .io_PEs_0_wr_req_valid(spmv_lsu7947_io_PEs_0_wr_req_valid), .io_PEs_1_wr_req_data(spmv_lsu7947_io_PEs_1_wr_req_data), .io_PEs_1_wr_req_valid(spmv_lsu7947_io_PEs_1_wr_req_valid), .io_qpi_rd_req_addr(spmv_lsu7947_io_qpi_rd_req_addr), .io_qpi_rd_req_mdata(spmv_lsu7947_io_qpi_rd_req_mdata), .io_qpi_rd_req_valid(spmv_lsu7947_io_qpi_rd_req_valid), .io_qpi_wr_req_addr(spmv_lsu7947_io_qpi_wr_req_addr), .io_qpi_wr_req_mdata(spmv_lsu7947_io_qpi_wr_req_mdata), .io_qpi_wr_req_data(spmv_lsu7947_io_qpi_wr_req_data), .io_qpi_wr_req_valid(spmv_lsu7947_io_qpi_wr_req_valid), .io_ctrl_rd_req_ready(spmv_lsu7947_io_ctrl_rd_req_ready), .io_ctrl_wr_req_ready(spmv_lsu7947_io_ctrl_wr_req_ready), .io_ctrl_rd_rsp_data(spmv_lsu7947_io_ctrl_rd_rsp_data), .io_ctrl_rd_rsp_valid(spmv_lsu7947_io_ctrl_rd_rsp_valid), .io_ctrl_outstanding_writes(spmv_lsu7947_io_ctrl_outstanding_writes), .io_walkers_0_rd_req_ready(spmv_lsu7947_io_walkers_0_rd_req_ready), .io_walkers_0_rd_rsp_data(spmv_lsu7947_io_walkers_0_rd_rsp_data), .io_walkers_0_rd_rsp_valid(spmv_lsu7947_io_walkers_0_rd_rsp_valid), .io_walkers_1_rd_req_ready(spmv_lsu7947_io_walkers_1_rd_req_ready), .io_walkers_1_rd_rsp_data(spmv_lsu7947_io_walkers_1_rd_rsp_data), .io_walkers_1_rd_rsp_valid(spmv_lsu7947_io_walkers_1_rd_rsp_valid), .io_PEs_0_wr_req_ready(spmv_lsu7947_io_PEs_0_wr_req_ready), .io_PEs_1_wr_req_ready(spmv_lsu7947_io_PEs_1_wr_req_ready));
  assign spmv_lsu7947_io_qpi_rd_req_almostfull = io_qpi_rd_req_almostfull;
  assign spmv_lsu7947_io_qpi_rd_rsp_mdata = io_qpi_rd_rsp_mdata;
  assign spmv_lsu7947_io_qpi_rd_rsp_data = io_qpi_rd_rsp_data;
  assign spmv_lsu7947_io_qpi_rd_rsp_valid = io_qpi_rd_rsp_valid;
  assign spmv_lsu7947_io_qpi_wr_req_almostfull = io_qpi_wr_req_almostfull;
  assign spmv_lsu7947_io_qpi_wr_rsp0_mdata = io_qpi_wr_rsp0_mdata;
  assign spmv_lsu7947_io_qpi_wr_rsp0_valid = io_qpi_wr_rsp0_valid;
  assign spmv_lsu7947_io_qpi_wr_rsp1_mdata = io_qpi_wr_rsp1_mdata;
  assign spmv_lsu7947_io_qpi_wr_rsp1_valid = io_qpi_wr_rsp1_valid;
  assign spmv_lsu7947_io_ctx = io_ctx;
  assign proxy8015 = {reg8353, 3'h0};
  assign spmv_lsu7947_io_ctrl_rd_req_data = proxy8015;
  assign spmv_lsu7947_io_ctrl_rd_req_valid = sel8621;
  assign proxy8026 = {sel8609, sel8608, sel8607};
  assign spmv_lsu7947_io_ctrl_wr_req_data = proxy8026;
  assign spmv_lsu7947_io_ctrl_wr_req_valid = sel8597;
  assign spmv_lsu7947_io_walkers_0_rd_req_data = spmv_dcsc_walk2354_io_lsu_rd_req_data;
  assign spmv_lsu7947_io_walkers_0_rd_req_valid = spmv_dcsc_walk2354_io_lsu_rd_req_valid;
  assign spmv_lsu7947_io_walkers_1_rd_req_data = spmv_dcsc_walk4719_io_lsu_rd_req_data;
  assign spmv_lsu7947_io_walkers_1_rd_req_valid = spmv_dcsc_walk4719_io_lsu_rd_req_valid;
  assign spmv_lsu7947_io_PEs_0_wr_req_data = spmv_pe5558_io_lsu_wr_req_data;
  assign spmv_lsu7947_io_PEs_0_wr_req_valid = spmv_pe5558_io_lsu_wr_req_valid;
  assign spmv_lsu7947_io_PEs_1_wr_req_data = spmv_pe6368_io_lsu_wr_req_data;
  assign spmv_lsu7947_io_PEs_1_wr_req_valid = spmv_pe6368_io_lsu_wr_req_valid;
  assign ch_llqueue8307_clk = clk;
  assign ch_llqueue8307_reset = reset;
  ch_llqueue ch_llqueue8307(.clk(ch_llqueue8307_clk), .reset(ch_llqueue8307_reset), .io_enq_data(ch_llqueue8307_io_enq_data), .io_enq_valid(ch_llqueue8307_io_enq_valid), .io_deq_ready(ch_llqueue8307_io_deq_ready), .io_deq_data(ch_llqueue8307_io_deq_data), .io_deq_valid(ch_llqueue8307_io_deq_valid));
  assign ch_llqueue8307_io_enq_data = spmv_lsu7947_io_ctrl_rd_rsp_data[514:3];
  assign ch_llqueue8307_io_enq_valid = andl8435;
  assign ch_llqueue8307_io_deq_ready = sel8765;
  assign proxy8331 = {sel8759, sel8753, sel8747};
  always @ (posedge clk) begin
    reg8332 <= proxy8331;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8339 <= 5'h0;
    else
      reg8339 <= sel8764;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8346 <= 32'h0;
    else
      reg8346 <= sub8451;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8353 <= 20'h0;
    else
      reg8353 <= sel8606;
  end
  always @ (posedge clk) begin
    reg8358 <= sub8482;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8365 <= 2'h0;
    else
      reg8365 <= sel8594;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8373 <= 20'h0;
    else
      reg8373 <= sel8741;
  end
  always @ (posedge clk) begin
    reg8378 <= sub8401;
  end
  assign proxy8387 = {reg8388[95:32], sel8627};
  always @ (posedge clk) begin
    if (reset)
      reg8388 <= lit8380;
    else
      reg8388 <= proxy8387;
  end
  assign sub8401 = io_ctx[19:0] - 20'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8408 <= 64'h0;
    else
      reg8408 <= add8413;
  end
  assign add8413 = reg8408 + 64'h1;
  always @ (posedge clk) begin
    if (reset)
      reg8420 <= 3'h0;
    else
      reg8420 <= sel8620;
  end
  always @ (posedge clk) begin
    if (reset)
      reg8428 <= 1'h0;
    else
      reg8428 <= sel8601;
  end
  assign eq8432 = spmv_lsu7947_io_ctrl_rd_rsp_data[2:0] == 3'h0;
  assign andl8435 = spmv_lsu7947_io_ctrl_rd_rsp_valid && eq8432;
  assign pad8437 = {{31{1'b0}}, sel8765};
  assign eq8440 = 3'h0 == 3'h0;
  assign andl8443 = sel8621 && spmv_lsu7947_io_ctrl_rd_req_ready;
  assign andl8445 = andl8443 && eq8440;
  assign pad8447 = {{31{1'b0}}, andl8445};
  assign add8449 = reg8346 + pad8447;
  assign sub8451 = add8449 - pad8437;
  assign andl8454 = spmv_dcsc_walk2354_io_ctrl_start_ready && spmv_pe5558_io_is_idle;
  assign andl8457 = andl8454 && spmv_dcsc_walk4719_io_ctrl_start_ready;
  assign andl8459 = andl8457 && spmv_pe6368_io_is_idle;
  assign add8468 = io_ctx[31:0] + 32'h1;
  assign shl8472 = add8468 << 32'h2;
  assign add8474 = shl8472 + 32'h3f;
  assign shr8478 = add8474 >> 32'h6;
  assign sub8482 = shr8478[19:0] - 20'h1;
  assign ne8492 = io_ctx[31:0] != 32'h0;
  assign ne8503 = reg8346 != 32'h4;
  assign add8508 = reg8353 + 20'h1;
  assign eq8511 = reg8353 == reg8358;
  assign add8517 = reg8388[31:0] + 32'h1;
  assign eq8524 = reg8373 == io_ctx[19:0];
  assign andl8526 = eq8524 && andl8459;
  assign pad8537 = {{18{1'b0}}, reg8365};
  assign pad8538 = {{416{1'b0}}, reg8388};
  assign ch_cu_stats_t8540 = {spmv_pe5558_io_stats, spmv_dcsc_walk2354_io_ctrl_stats};
  assign pad8556 = {{96{1'b0}}, ch_cu_stats_t8540};
  assign ch_cu_stats_t8558 = {spmv_pe6368_io_stats, spmv_dcsc_walk4719_io_ctrl_stats};
  assign pad8574 = {{96{1'b0}}, ch_cu_stats_t8558};
  always @(*) begin
    case (reg8365)
      2'h1: sel8575 = pad8556;
      2'h0: sel8575 = pad8538;
      default: sel8575 = pad8574;
    endcase
  end
  assign add8580 = reg8365 + 2'h1;
  assign eq8584 = reg8365 == 2'h2;
  assign eq8590 = spmv_lsu7947_io_ctrl_outstanding_writes == 32'h0;
  assign sel8594 = andb8596 ? add8580 : reg8365;
  assign eq8595 = reg8420 == 3'h4;
  assign andb8596 = eq8595 & spmv_lsu7947_io_ctrl_wr_req_ready;
  always @(*) begin
    case (reg8420)
      3'h3: sel8597 = 1'h1;
      3'h4: sel8597 = 1'h1;
      default: sel8597 = 1'h0;
    endcase
  end
  assign sel8598 = ne8492 ? 1'h0 : 1'h1;
  assign sel8599 = io_start ? sel8598 : reg8428;
  assign sel8600 = eq8590 ? 1'h1 : reg8428;
  always @(*) begin
    case (reg8420)
      3'h0: sel8601 = sel8599;
      3'h5: sel8601 = sel8600;
      default: sel8601 = reg8428;
    endcase
  end
  assign sel8602 = andb8603 ? 20'h0 : reg8353;
  assign andb8603 = io_start & ne8492;
  assign sel8604 = andb8605 ? add8508 : reg8353;
  assign andb8605 = ne8503 & spmv_lsu7947_io_ctrl_rd_req_ready;
  always @(*) begin
    case (reg8420)
      3'h0: sel8606 = sel8602;
      3'h1: sel8606 = sel8604;
      default: sel8606 = reg8353;
    endcase
  end
  always @(*) begin
    case (reg8420)
      3'h3: sel8607 = 2'h1;
      3'h4: sel8607 = 2'h2;
      default: sel8607 = 2'h0;
    endcase
  end
  assign sel8608 = (reg8420 == 3'h4) ? pad8537 : 20'h0;
  assign sel8609 = (reg8420 == 3'h4) ? sel8575 : lit8487;
  assign sel8610 = andb8603 ? 3'h1 : reg8420;
  assign sel8612 = andb8614 ? 3'h2 : reg8420;
  assign andb8613 = spmv_lsu7947_io_ctrl_rd_req_ready & eq8511;
  assign andb8614 = ne8503 & andb8613;
  assign sel8615 = andl8526 ? 3'h3 : reg8420;
  assign sel8616 = spmv_lsu7947_io_ctrl_wr_req_ready ? 3'h4 : reg8420;
  assign sel8617 = andb8618 ? 3'h5 : reg8420;
  assign andb8618 = spmv_lsu7947_io_ctrl_wr_req_ready & eq8584;
  assign sel8619 = eq8590 ? 3'h0 : reg8420;
  always @(*) begin
    case (reg8420)
      3'h0: sel8620 = sel8610;
      3'h1: sel8620 = sel8612;
      3'h2: sel8620 = sel8615;
      3'h3: sel8620 = sel8616;
      3'h4: sel8620 = sel8617;
      3'h5: sel8620 = sel8619;
      default: sel8620 = reg8420;
    endcase
  end
  assign sel8621 = andb8623 ? 1'h1 : 1'h0;
  assign eq8622 = reg8420 == 3'h1;
  assign andb8623 = eq8622 & ne8503;
  assign sel8625 = spmv_lsu7947_io_ctrl_rd_req_ready ? reg8388[31:0] : add8517;
  assign sel8626 = ne8503 ? sel8625 : add8517;
  assign sel8627 = (reg8420 == 3'h1) ? sel8626 : reg8388[31:0];
  always @ (posedge clk) begin
    if (reset)
      reg8632 <= 2'h0;
    else
      reg8632 <= sel8738;
  end
  assign eq8641 = 5'h0 == reg8339;
  assign shr8662 = reg8332 >> 32'h20;
  assign add8669 = reg8373 + 20'h1;
  assign sub8674 = reg8339 - 5'h1;
  assign ne8679 = reg8339 != 5'h2;
  assign ne8682 = reg8373 != reg8378;
  assign andl8684 = ne8682 && ne8679;
  assign sel8721 = andb8723 ? 1'h1 : 1'h0;
  assign eq8722 = reg8632 == 2'h2;
  assign andb8723 = eq8722 & spmv_dcsc_walk4719_io_ctrl_start_ready;
  assign sel8724 = andb8723 ? reg8332[63:0] : 64'h0;
  assign sel8727 = andb8729 ? reg8332[63:0] : 64'h0;
  assign eq8728 = reg8632 == 2'h1;
  assign andb8729 = eq8728 & spmv_dcsc_walk2354_io_ctrl_start_ready;
  assign sel8730 = andb8729 ? 1'h1 : 1'h0;
  assign sel8733 = ch_llqueue8307_io_deq_valid ? 2'h1 : reg8632;
  assign sel8734 = andl8684 ? 2'h2 : 2'h0;
  assign sel8735 = spmv_dcsc_walk2354_io_ctrl_start_ready ? sel8734 : 2'h2;
  assign sel8736 = andl8684 ? 2'h1 : 2'h0;
  assign sel8737 = spmv_dcsc_walk4719_io_ctrl_start_ready ? sel8736 : 2'h1;
  always @(*) begin
    case (reg8632)
      2'h0: sel8738 = sel8733;
      2'h1: sel8738 = sel8735;
      2'h2: sel8738 = sel8737;
      default: sel8738 = reg8632;
    endcase
  end
  assign sel8739 = spmv_dcsc_walk2354_io_ctrl_start_ready ? add8669 : reg8373;
  assign sel8740 = spmv_dcsc_walk4719_io_ctrl_start_ready ? add8669 : reg8373;
  always @(*) begin
    case (reg8632)
      2'h1: sel8741 = sel8739;
      2'h2: sel8741 = sel8740;
      default: sel8741 = reg8373;
    endcase
  end
  assign sel8743 = andb8744 ? ch_llqueue8307_io_deq_data[31:0] : reg8332[31:0];
  assign andb8744 = ch_llqueue8307_io_deq_valid & eq8641;
  assign sel8745 = spmv_dcsc_walk2354_io_ctrl_start_ready ? shr8662[31:0] : reg8332[31:0];
  assign sel8746 = spmv_dcsc_walk4719_io_ctrl_start_ready ? shr8662[31:0] : reg8332[31:0];
  always @(*) begin
    case (reg8632)
      2'h0: sel8747 = sel8743;
      2'h1: sel8747 = sel8745;
      2'h2: sel8747 = sel8746;
      default: sel8747 = reg8332[31:0];
    endcase
  end
  assign sel8749 = eq8641 ? ch_llqueue8307_io_deq_data[511:32] : ch_llqueue8307_io_deq_data[479:0];
  assign sel8750 = ch_llqueue8307_io_deq_valid ? sel8749 : reg8332[511:32];
  assign sel8751 = spmv_dcsc_walk2354_io_ctrl_start_ready ? shr8662[511:32] : reg8332[511:32];
  assign sel8752 = spmv_dcsc_walk4719_io_ctrl_start_ready ? shr8662[511:32] : reg8332[511:32];
  always @(*) begin
    case (reg8632)
      2'h0: sel8753 = sel8750;
      2'h1: sel8753 = sel8751;
      2'h2: sel8753 = sel8752;
      default: sel8753 = reg8332[511:32];
    endcase
  end
  assign sel8755 = eq8641 ? reg8332[543:512] : ch_llqueue8307_io_deq_data[511:480];
  assign sel8756 = ch_llqueue8307_io_deq_valid ? sel8755 : reg8332[543:512];
  assign sel8757 = spmv_dcsc_walk2354_io_ctrl_start_ready ? shr8662[543:512] : reg8332[543:512];
  assign sel8758 = spmv_dcsc_walk4719_io_ctrl_start_ready ? shr8662[543:512] : reg8332[543:512];
  always @(*) begin
    case (reg8632)
      2'h0: sel8759 = sel8756;
      2'h1: sel8759 = sel8757;
      2'h2: sel8759 = sel8758;
      default: sel8759 = reg8332[543:512];
    endcase
  end
  assign sel8760 = eq8641 ? 5'h10 : 5'h11;
  assign sel8761 = ch_llqueue8307_io_deq_valid ? sel8760 : reg8339;
  assign sel8762 = spmv_dcsc_walk2354_io_ctrl_start_ready ? sub8674 : reg8339;
  assign sel8763 = spmv_dcsc_walk4719_io_ctrl_start_ready ? sub8674 : reg8339;
  always @(*) begin
    case (reg8632)
      2'h0: sel8764 = sel8761;
      2'h1: sel8764 = sel8762;
      2'h2: sel8764 = sel8763;
      default: sel8764 = reg8339;
    endcase
  end
  assign sel8765 = andb8767 ? 1'h1 : 1'h0;
  assign eq8766 = reg8632 == 2'h0;
  assign andb8767 = eq8766 & ch_llqueue8307_io_deq_valid;

  assign io_qpi_rd_req_addr = spmv_lsu7947_io_qpi_rd_req_addr;
  assign io_qpi_rd_req_mdata = spmv_lsu7947_io_qpi_rd_req_mdata;
  assign io_qpi_rd_req_valid = spmv_lsu7947_io_qpi_rd_req_valid;
  assign io_qpi_wr_req_addr = spmv_lsu7947_io_qpi_wr_req_addr;
  assign io_qpi_wr_req_mdata = spmv_lsu7947_io_qpi_wr_req_mdata;
  assign io_qpi_wr_req_data = spmv_lsu7947_io_qpi_wr_req_data;
  assign io_qpi_wr_req_valid = spmv_lsu7947_io_qpi_wr_req_valid;
  assign io_done = reg8428;

endmodule
