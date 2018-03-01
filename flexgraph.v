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
  wire[1:0] add47;
  wire and41;
  wire[1:0] add52;
  wire[1:0] sel49;
  wire[1:0] sel54;
  wire and43;
  wire proxy40; // v124 - /home/blaise/dev/cash/src/htl/queue.h(28)
  reg[1:0] reg30; // v117 - /home/blaise/dev/cash/src/htl/queue.h(25)
  reg[1:0] reg36; // v120 - /home/blaise/dev/cash/src/htl/queue.h(25)
  wire eq65;
  wire ne67;
  wire proxy38; // v123 - /home/blaise/dev/cash/src/htl/queue.h(27)
  reg[511:0] mem56[0:1];
  wire[1:0] sub71;
  wire ne61;
  wire or69;

  assign add47 = reg30 + 2'h1;
  assign and41 = io_deq_ready & ne61;
  assign add52 = reg36 + 2'h1;
  assign sel49 = and41 ? add47 : reg30;
  assign sel54 = and43 ? add52 : reg36;
  assign and43 = io_enq_valid & or69;
  assign proxy40 = reg36[0];
  always @ (posedge clk) begin
    reg30 <= reset ? 2'h0 : sel49;
  end
  always @ (posedge clk) begin
    reg36 <= reset ? 2'h0 : sel54;
  end
  assign eq65 = reg36[1] == reg30[1];
  assign ne67 = proxy40 != proxy38;
  assign proxy38 = reg30[0];
  always @(posedge clk) begin
    if (and43) begin
      mem56[proxy40] = io_enq_data;
    end
  end
  assign sub71 = reg36 - reg30;
  assign ne61 = reg36 != reg30;
  assign or69 = ne67 | eq65;

  assign io_enq_ready = or69;
  assign io_deq_valid = ne61;
  assign io_deq_data = mem56[proxy38];
  assign io_size = sub71;

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
  wire[5:0] add47;
  wire and41;
  wire[5:0] add52;
  wire[5:0] sel49;
  wire[5:0] sel54;
  wire and43;
  wire[4:0] proxy40; // v202 - /home/blaise/dev/cash/src/htl/queue.h(28)
  reg[5:0] reg30; // v195 - /home/blaise/dev/cash/src/htl/queue.h(25)
  reg[5:0] reg36; // v198 - /home/blaise/dev/cash/src/htl/queue.h(25)
  wire eq65;
  wire ne67;
  wire[4:0] proxy38; // v201 - /home/blaise/dev/cash/src/htl/queue.h(27)
  reg[511:0] mem56[0:31];
  wire[5:0] sub71;
  wire ne61;
  wire or69;

  assign add47 = reg30 + 6'h1;
  assign and41 = io_deq_ready & ne61;
  assign add52 = reg36 + 6'h1;
  assign sel49 = and41 ? add47 : reg30;
  assign sel54 = and43 ? add52 : reg36;
  assign and43 = io_enq_valid & or69;
  assign proxy40 = reg36[4:0];
  always @ (posedge clk) begin
    reg30 <= reset ? 6'h0 : sel49;
  end
  always @ (posedge clk) begin
    reg36 <= reset ? 6'h0 : sel54;
  end
  assign eq65 = reg36[5] == reg30[5];
  assign ne67 = proxy40 != proxy38;
  assign proxy38 = reg30[4:0];
  always @(posedge clk) begin
    if (and43) begin
      mem56[proxy40] = io_enq_data;
    end
  end
  assign sub71 = reg36 - reg30;
  assign ne61 = reg36 != reg30;
  assign or69 = ne67 | eq65;

  assign io_enq_ready = or69;
  assign io_deq_valid = ne61;
  assign io_deq_data = mem56[proxy38];
  assign io_size = sub71;

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
  wire[511:0] lit332 = 512'h0;
  wire[63:0] lit363 = 64'h0;
  wire[351:0] lit392 = 352'h0;
  wire[84:0] lit636 = 85'h0;
  wire[19:0] add725;
  wire[19:0] and728;
  wire[19:0] sll731;
  wire[19:0] sll870;
  wire[511:0] srl733;
  wire[19:0] add874;
  wire[19:0] and707;
  wire[19:0] sel1109; // dcsc_walk.cpp(238)
  wire[19:0] and1000;
  wire[511:0] sel1173; // dcsc_walk.cpp(190)
  wire[19:0] srl822;
  wire[19:0] srl877;
  wire eq421;
  reg[19:0] sel1110; // dcsc_walk.cpp(136)
  wire[19:0] sll710;
  wire[511:0] bindout188;
  wire sel1056; // dcsc_walk.cpp(439)
  wire eq1160;
  wire[19:0] sll1003;
  reg[511:0] reg340; // v365 - dcsc_walk.cpp(34)
  wire[19:0] and825;
  wire[511:0] bindout284;
  wire[19:0] and777;
  wire[19:0] sel1060; // dcsc_walk.cpp(136)
  wire sel1041; // dcsc_walk.cpp(439)
  wire eq1044;
  wire[19:0] and927;
  wire[19:0] and917;
  wire[511:0] bindout260;
  wire and1047;
  wire and423;
  wire[19:0] and696;
  wire sel1057; // dcsc_walk.cpp(437)
  wire and1161;
  reg[19:0] reg94; // v82 - dcsc_walk.cpp(34)
  wire[511:0] srl712;
  wire eq397;
  wire sel1042; // dcsc_walk.cpp(437)
  wire and1045;
  wire[63:0] sel1168; // dcsc_walk.cpp(139)
  wire and1049;
  wire eq409;
  wire[19:0] and990;
  wire[511:0] sel1159; // dcsc_walk.cpp(190)
  wire sel1058; // dcsc_walk.cpp(433)
  wire sel1046; // dcsc_walk.cpp(408)
  wire sel1169; // dcsc_walk.cpp(190)
  wire[31:0] proxy8; // v39 - end(0)
  wire[511:0] srl1005;
  wire[19:0] add962;
  wire[19:0] sll828;
  wire[511:0] sel1174; // dcsc_walk.cpp(306)
  wire[19:0] sll780;
  reg[511:0] reg346; // v368 - dcsc_walk.cpp(34)
  wire eq1062;
  reg[19:0] reg125; // v97 - dcsc_walk.cpp(34)
  wire sel1043; // dcsc_walk.cpp(433)
  wire eq415;
  wire[19:0] sll930;
  reg[511:0] reg352; // v371 - dcsc_walk.cpp(34)
  wire[19:0] sll920;
  wire[511:0] sel1050; // dcsc_walk.cpp(408)
  wire[19:0] sll700;
  wire[511:0] bindout164;
  wire[2:0] proxy35; // v56 - type(0)
  wire[19:0] proxy649; // v551 - dcsc_walk.cpp(142)
  wire[19:0] sub763;
  wire[19:0] sub885;
  wire[19:0] and835;
  wire[19:0] and788;
  wire and399;
  wire and1063;
  wire sel1176; // dcsc_walk.cpp(238)
  wire sel1175; // dcsc_walk.cpp(190)
  reg[63:0] reg365; // v377 - dcsc_walk.cpp(34)
  wire bindin263;
  wire[511:0] bindin251;
  wire bindin248;
  wire bindin247;
  wire bindin246;
  wire and411;
  wire[19:0] sll993;
  reg[511:0] reg334; // v362 - dcsc_walk.cpp(34)
  wire eq517;
  reg reg605; // v524 - dcsc_walk.cpp(106)
  wire eq493;
  reg reg617; // v530 - dcsc_walk.cpp(108)
  wire eq541;
  wire eq565;
  wire eq469;
  reg reg593; // v518 - dcsc_walk.cpp(104)
  wire eq442;
  wire and444;
  wire[19:0] sub652;
  wire eq1112;
  wire[19:0] sel1171; // dcsc_walk.cpp(433)
  wire[19:0] sel1170; // dcsc_walk.cpp(190)
  wire[511:0] srl830;
  wire[511:0] srl782;
  wire sel1061; // dcsc_walk.cpp(306)
  wire eq427;
  wire[19:0] sub880;
  reg reg611; // v527 - dcsc_walk.cpp(107)
  wire and417;
  reg sel1177; // dcsc_walk.cpp(136)
  wire eq403;
  wire[511:0] srl932;
  wire[511:0] srl922;
  wire[511:0] srl702;
  wire and1113;
  wire[19:0] sel1178; // dcsc_walk.cpp(136)
  reg[19:0] sel1172; // dcsc_walk.cpp(136)
  wire[19:0] sel1051; // dcsc_walk.cpp(136)
  wire[31:0] sll838;
  wire[19:0] sel1179; // dcsc_walk.cpp(275)
  wire[31:0] sll791;
  wire[63:0] sub1015;
  wire bindout257;
  wire[511:0] srl995;
  wire[19:0] srl766;
  wire[31:0] proxy7; // v38 - start(0)
  wire eq524;
  wire eq529;
  wire and520;
  wire eq500;
  wire eq505;
  wire and496;
  wire eq548;
  wire eq553;
  wire and544;
  wire eq572;
  wire eq577;
  wire and568;
  wire eq476;
  wire eq481;
  wire and472;
  wire eq451;
  wire eq456;
  wire and446;
  wire[19:0] sel1111; // dcsc_walk.cpp(139)
  wire[19:0] and967;
  wire[19:0] sel1180; // dcsc_walk.cpp(136)
  wire[19:0] sll802;
  wire bindin167;
  wire[511:0] bindin155;
  wire bindin152;
  wire bindin151;
  wire bindin150;
  reg reg623; // v533 - dcsc_walk.cpp(109)
  wire and429;
  reg reg599; // v521 - dcsc_walk.cpp(105)
  wire and405;
  wire eq1048;
  wire[19:0] and951;
  wire[19:0] and941;
  wire bindin215;
  wire[511:0] bindin203;
  wire bindin200;
  wire bindin199;
  wire bindin198;
  wire[19:0] add977;
  wire[19:0] proxy647; // v550 - dcsc_walk.cpp(141)
  wire[19:0] and982;
  reg[19:0] reg100; // v85 - dcsc_walk.cpp(34)
  reg[19:0] reg88; // v79 - dcsc_walk.cpp(34)
  reg[19:0] reg131; // v100 - dcsc_walk.cpp(34)
  wire[31:0] and840;
  wire[31:0] and793;
  wire[19:0] and717;
  wire[5:0] sel1055; // dcsc_walk.cpp(136)
  wire bindin239;
  wire[511:0] bindin227;
  wire bindin224;
  wire bindin223;
  wire bindin222;
  wire[31:0] sel1052; // dcsc_walk.cpp(408)
  wire and1054;
  wire[19:0] sel1162; // dcsc_walk.cpp(190)
  wire[19:0] sll769;
  wire[19:0] sel1099; // dcsc_walk.cpp(139)
  wire[7:0] sub537;
  wire and526;
  wire[7:0] add534;
  wire and531;
  wire[7:0] sub513;
  wire and502;
  wire[7:0] add510;
  wire and507;
  wire[7:0] sub561;
  wire and550;
  wire[7:0] add558;
  wire and555;
  wire[7:0] sub585;
  wire and574;
  wire[7:0] add582;
  wire and579;
  wire[7:0] sub489;
  wire and478;
  wire[7:0] add486;
  wire and483;
  wire[7:0] sub465;
  wire and453;
  wire[7:0] add462;
  wire and458;
  wire[19:0] and1010;
  reg[19:0] reg76; // v73 - dcsc_walk.cpp(34)
  wire eq970;
  reg[19:0] reg113; // v91 - dcsc_walk.cpp(34)
  wire[19:0] srl805;
  wire bindout161;
  wire lt1019;
  wire[31:0] sel1040; // dcsc_walk.cpp(136)
  wire[31:0] sel1053; // dcsc_walk.cpp(407)
  wire[19:0] sll954;
  wire[511:0] bindout236;
  wire[19:0] sll944;
  wire[511:0] bindout212;
  wire[19:0] sll864;
  reg[19:0] sel1163; // dcsc_walk.cpp(136)
  reg[19:0] sel1100; // dcsc_walk.cpp(136)
  wire ne985;
  wire ne964;
  wire ne905;
  wire ne843;
  wire ne796;
  wire ne720;
  wire bindin287;
  wire[511:0] bindin275;
  wire bindin272;
  wire bindin271;
  wire bindin270;
  reg[5:0] reg138; // v103 - dcsc_walk.cpp(34)
  wire[5:0] bindout242;
  wire bindin191;
  wire[511:0] bindin179;
  wire bindin176;
  wire bindin175;
  wire bindin174;
  wire[19:0] add903;
  wire[19:0] srl772;
  reg[7:0] sel539; // dcsc_walk.cpp(73)
  reg[7:0] sel515; // dcsc_walk.cpp(73)
  reg[7:0] sel563; // dcsc_walk.cpp(73)
  reg[7:0] sel587; // dcsc_walk.cpp(73)
  reg[7:0] sel491; // dcsc_walk.cpp(73)
  reg[7:0] sel467; // dcsc_walk.cpp(73)
  wire ne1013;
  wire ne979;
  wire[22:0] sel1091; // dcsc_walk.cpp(439)
  wire eq807;
  wire eq774;
  wire and692;
  wire[31:0] add816;
  wire[31:0] add858;
  wire[31:0] add909;
  wire[31:0] add894;
  wire[31:0] add752;
  wire[31:0] add687;
  wire[31:0] add671;
  wire gt1028;
  wire[31:0] sel1021;
  reg[31:0] reg358; // v374 - dcsc_walk.cpp(34)
  wire eq1024;
  reg[31:0] reg145; // v106 - dcsc_walk.cpp(34)
  wire[511:0] srl956;
  wire[511:0] srl946;
  wire[19:0] srl867;
  reg[19:0] reg82; // v76 - dcsc_walk.cpp(34)
  wire[19:0] add739;
  reg[19:0] reg70; // v70 - dcsc_walk.cpp(34)
  wire[22:0] sel1094; // dcsc_walk.cpp(468)
  wire[22:0] sel1092; // dcsc_walk.cpp(437)
  wire[22:0] sel1088; // dcsc_walk.cpp(387)
  wire and1065;
  wire and1087;
  wire and1085;
  wire[22:0] sel1082; // dcsc_walk.cpp(313)
  wire and1081;
  wire[22:0] sel1077; // dcsc_walk.cpp(258)
  wire and1075;
  wire[22:0] sel1072; // dcsc_walk.cpp(202)
  wire and1071;
  wire and1069;
  wire[31:0] add1038;
  wire[31:0] add974;
  wire[31:0] add846;
  wire bindout281;
  wire[31:0] add819;
  wire[31:0] add861;
  wire[31:0] add938;
  wire eq914;
  wire[31:0] add912;
  wire[31:0] add897;
  wire[31:0] add760;
  wire bindout185;
  wire[31:0] add755;
  wire[31:0] add690;
  wire[31:0] add674;
  wire[19:0] sel1064; // dcsc_walk.cpp(385)
  wire[19:0] sel1181; // dcsc_walk.cpp(255)
  reg[7:0] reg315; // v353 - dcsc_walk.cpp(34)
  reg[7:0] reg309; // v350 - dcsc_walk.cpp(34)
  reg[7:0] reg321; // v356 - dcsc_walk.cpp(34)
  reg[7:0] reg327; // v359 - dcsc_walk.cpp(34)
  reg[7:0] reg303; // v347 - dcsc_walk.cpp(34)
  reg[7:0] reg297; // v344 - dcsc_walk.cpp(34)
  wire[22:0] sel1097; // dcsc_walk.cpp(505)
  wire[22:0] sel1096; // dcsc_walk.cpp(486)
  wire[22:0] sel1095; // dcsc_walk.cpp(466)
  wire[22:0] sel1093; // dcsc_walk.cpp(433)
  wire[22:0] sel1090; // dcsc_walk.cpp(407)
  wire[22:0] sel1089; // dcsc_walk.cpp(385)
  wire[22:0] sel1086; // dcsc_walk.cpp(366)
  wire[22:0] sel1084; // dcsc_walk.cpp(332)
  wire[22:0] sel1083; // dcsc_walk.cpp(306)
  wire[22:0] sel1080; // dcsc_walk.cpp(292)
  wire[22:0] sel1079; // dcsc_walk.cpp(275)
  wire[22:0] sel1078; // dcsc_walk.cpp(255)
  wire[22:0] sel1076; // dcsc_walk.cpp(238)
  wire[22:0] sel1074; // dcsc_walk.cpp(224)
  wire[22:0] sel1073; // dcsc_walk.cpp(190)
  wire[22:0] sel1070; // dcsc_walk.cpp(176)
  wire[22:0] sel1068; // dcsc_walk.cpp(158)
  wire[22:0] sel1067; // dcsc_walk.cpp(139)
  wire[31:0] sel1149; // dcsc_walk.cpp(292)
  wire[31:0] sel1145; // dcsc_walk.cpp(332)
  wire[31:0] sel1140; // dcsc_walk.cpp(385)
  wire[31:0] sel1136; // dcsc_walk.cpp(366)
  wire[31:0] sel1131; // dcsc_walk.cpp(224)
  wire[31:0] sel1129; // dcsc_walk.cpp(176)
  wire[31:0] sel1125; // dcsc_walk.cpp(158)
  wire[31:0] add1032;
  wire[31:0] sel1030;
  wire[31:0] sel1026;
  wire[31:0] add1035;
  wire eq1116;
  reg[19:0] sel1066; // dcsc_walk.cpp(136)
  wire[19:0] sll849;
  wire[19:0] sel1182; // dcsc_walk.cpp(136)
  wire[19:0] sll742;
  wire[19:0] sll677;
  wire[19:0] sll657;
  reg[22:0] sel1098; // dcsc_walk.cpp(136)
  wire[31:0] sel1155; // dcsc_walk.cpp(505)
  wire[31:0] sel1154; // dcsc_walk.cpp(433)
  wire[31:0] sel1151; // dcsc_walk.cpp(306)
  wire[31:0] sel1150; // dcsc_walk.cpp(289)
  wire[31:0] sel1146; // dcsc_walk.cpp(329)
  wire[31:0] sel1142; // dcsc_walk.cpp(407)
  wire[31:0] sel1141; // dcsc_walk.cpp(382)
  wire[31:0] sel1137; // dcsc_walk.cpp(363)
  wire[31:0] sel1133; // dcsc_walk.cpp(238)
  wire[31:0] sel1132; // dcsc_walk.cpp(221)
  wire[31:0] sel1130; // dcsc_walk.cpp(173)
  wire[31:0] sel1126; // dcsc_walk.cpp(155)
  wire and1117;
  wire sel1167; // dcsc_walk.cpp(136)
  wire[31:0] sel1166; // dcsc_walk.cpp(136)
  wire[31:0] sel1165; // dcsc_walk.cpp(136)
  wire[19:0] sel1164; // dcsc_walk.cpp(136)
  reg sel1059; // dcsc_walk.cpp(136)
  wire ne900;
  wire ne890;
  wire ne855;
  wire ne812;
  wire ne748;
  wire ne683;
  wire ne665;
  reg[31:0] sel1156; // dcsc_walk.cpp(136)
  reg[31:0] sel1152; // dcsc_walk.cpp(136)
  wire[31:0] sel1147; // dcsc_walk.cpp(136)
  reg[31:0] sel1143; // dcsc_walk.cpp(136)
  wire[31:0] sel1138; // dcsc_walk.cpp(136)
  reg[31:0] sel1134; // dcsc_walk.cpp(136)
  wire[31:0] sel1127; // dcsc_walk.cpp(136)
  wire[31:0] sel1123; // dcsc_walk.cpp(505)
  wire[31:0] sel1121; // dcsc_walk.cpp(505)
  wire[31:0] sel1119; // dcsc_walk.cpp(505)
  wire[31:0] sel1115; // dcsc_walk.cpp(505)
  wire[84:0] ch_pe_req_t631; // v541 - /home/blaise/dev/cash/src/seq.h(17)
  reg[19:0] reg119; // v94 - dcsc_walk.cpp(34)
  wire[19:0] srl852;
  reg[19:0] reg107; // v88 - dcsc_walk.cpp(34)
  wire[19:0] srl745;
  wire[19:0] srl680;
  wire[19:0] srl661;
  reg[22:0] reg437; // v423 - dcsc_walk.cpp(64)
  wire[351:0] ch_walker_stats_t380; // v392 - /home/blaise/dev/cash/src/seq.h(17)
  reg[84:0] reg638; // v536 - dcsc_walk.cpp(112)
  reg reg644; // v547 - dcsc_walk.cpp(113)
  wire sel1107; // dcsc_walk.cpp(382)
  wire sel1106; // dcsc_walk.cpp(363)
  wire sel1105; // dcsc_walk.cpp(329)
  wire sel1104; // dcsc_walk.cpp(289)
  wire sel1103; // dcsc_walk.cpp(221)
  wire sel1102; // dcsc_walk.cpp(173)
  wire sel1101; // dcsc_walk.cpp(155)
  reg[351:0] reg394; // v380 - dcsc_walk.cpp(34)
  wire eq439;
  reg[19:0] sel1158; // dcsc_walk.cpp(136)
  reg[2:0] sel1157; // dcsc_walk.cpp(136)
  reg sel1108; // dcsc_walk.cpp(136)
  wire[22:0] io_lsu_rd_req_data34; // v55 - dcsc_walk.cpp(34)

  assign add725 = reg70 + 20'h1;
  assign and728 = add725 & 20'hf;
  assign sll731 = and728 << 20'h5;
  assign sll870 = reg94 << 20'h2;
  assign srl733 = reg340 >> sll731;
  assign add874 = sll870 + 20'h3f;
  assign and707 = reg70 & 20'hf;
  assign sel1109 = bindout185 ? bindout188[19:0] : reg94;
  assign and1000 = reg70 & 20'hf;
  assign sel1173 = and1161 ? bindout188 : reg340;
  assign srl822 = reg82 >> 20'h5;
  assign srl877 = add874 >> 20'h6;
  assign eq421 = io_lsu_rd_rsp_data[2:0] == 3'h5;
  always @(*) begin
    case (reg437)
      23'h000080: sel1110 = srl733[19:0];
      23'h000040: sel1110 = sel1109;
      default: sel1110 = reg94;
    endcase
  end
  assign sll710 = and707 << 20'h5;
  assign sel1056 = eq970 ? 1'h1 : 1'h0;
  assign eq1160 = reg437 == 23'h10;
  assign sll1003 = and1000 << 20'h5;
  always @ (posedge clk) begin
    reg340 <= reset ? lit332 : sel1173;
  end
  assign and825 = srl822 & 20'hf;
  assign and777 = srl766 & 20'hf;
  assign sel1060 = (reg437 == 23'h2000) ? srl877 : reg125;
  assign sel1041 = eq970 ? 1'h1 : 1'h0;
  assign eq1044 = reg437 == 23'h40000;
  assign and927 = reg82 & 20'hf;
  assign and917 = reg82 & 20'hf;
  assign and1047 = eq914 & bindout257;
  assign and423 = io_lsu_rd_rsp_valid & eq421;
  assign and696 = reg70 & 20'hf;
  assign sel1057 = ne964 ? sel1056 : 1'h1;
  assign and1161 = eq1160 & and692;
  always @ (posedge clk) begin
    reg94 <= reset ? 20'h0 : sel1110;
  end
  assign srl712 = bindout188 >> sll710;
  assign eq397 = io_lsu_rd_rsp_data[2:0] == 3'h1;
  assign sel1042 = ne964 ? sel1041 : 1'h1;
  assign and1045 = eq1044 & io_pe_ready;
  assign sel1168 = and1113 ? io_ctrl_timer : reg365;
  assign and1049 = eq1048 & and1047;
  assign eq409 = io_lsu_rd_rsp_data[2:0] == 3'h3;
  assign and990 = reg70 & 20'hf;
  assign sel1159 = and1161 ? bindout164 : reg334;
  assign sel1058 = and1045 ? sel1057 : 1'h0;
  assign sel1046 = and1049 ? 1'h1 : 1'h0;
  assign sel1169 = and1161 ? 1'h1 : 1'h0;
  assign proxy8 = io_ctrl_start_data[63:32];
  assign srl1005 = reg340 >> sll1003;
  assign add962 = reg88 + 20'h1;
  assign sll828 = and825 << 20'h5;
  assign sel1174 = and1063 ? bindout284 : reg346;
  assign sll780 = and777 << 20'h5;
  always @ (posedge clk) begin
    reg346 <= reset ? lit332 : sel1174;
  end
  assign eq1062 = reg437 == 23'h800;
  always @ (posedge clk) begin
    reg125 <= reset ? 20'h0 : sel1060;
  end
  assign sel1043 = and1045 ? sel1042 : 1'h0;
  assign eq415 = io_lsu_rd_rsp_data[2:0] == 3'h4;
  assign sll930 = and927 << 20'h5;
  always @ (posedge clk) begin
    reg352 <= reset ? lit332 : sel1050;
  end
  assign sll920 = and917 << 20'h5;
  assign sel1050 = and1049 ? bindout260 : reg352;
  assign sll700 = and696 << 20'h5;
  assign proxy35 = io_lsu_rd_req_data34[2:0];
  assign proxy649 = proxy8[19:0];
  assign sub763 = reg94 - 20'h1;
  assign sub885 = reg125 - 20'h1;
  assign and835 = reg82 & 20'h1f;
  assign and788 = reg82 & 20'h1f;
  assign and399 = io_lsu_rd_rsp_valid & eq397;
  assign and1063 = eq1062 & bindout281;
  assign sel1176 = bindout185 ? 1'h1 : 1'h0;
  assign sel1175 = and692 ? 1'h1 : 1'h0;
  always @ (posedge clk) begin
    reg365 <= reset ? lit363 : sel1168;
  end
  assign bindin263 = reg617;
  assign bindin251 = io_lsu_rd_rsp_data[514:3];
  assign bindin248 = and423;
  assign bindin247 = reset;
  assign bindin246 = clk;
  assign and411 = io_lsu_rd_rsp_valid & eq409;
  assign sll993 = and990 << 20'h5;
  always @ (posedge clk) begin
    reg334 <= reset ? lit332 : sel1159;
  end
  assign eq517 = proxy35 == 3'h4;
  always @ (posedge clk) begin
    reg605 <= reset ? 1'h0 : sel1058;
  end
  assign eq493 = proxy35 == 3'h3;
  always @ (posedge clk) begin
    reg617 <= reset ? 1'h0 : sel1046;
  end
  assign eq541 = proxy35 == 3'h5;
  assign eq565 = proxy35 == 3'h6;
  assign eq469 = proxy35 == 3'h2;
  always @ (posedge clk) begin
    reg593 <= reset ? 1'h0 : sel1169;
  end
  assign eq442 = proxy35 == 3'h1;
  assign and444 = sel1108 & io_lsu_rd_req_ready;
  assign sub652 = proxy649 - 20'h1;
  assign eq1112 = reg437 == 23'h1;
  assign sel1171 = io_pe_ready ? add962 : reg88;
  assign sel1170 = and692 ? srl712[19:0] : reg88;
  assign srl830 = sel1174 >> sll828;
  assign srl782 = reg346 >> sll780;
  assign sel1061 = and1063 ? 1'h1 : 1'h0;
  assign eq427 = io_lsu_rd_rsp_data[2:0] == 3'h6;
  assign sub880 = reg125 - reg119;
  always @ (posedge clk) begin
    reg611 <= reset ? 1'h0 : sel1043;
  end
  assign and417 = io_lsu_rd_rsp_valid & eq415;
  always @(*) begin
    case (reg437)
      23'h000010: sel1177 = sel1175;
      23'h000040: sel1177 = sel1176;
      default: sel1177 = 1'h0;
    endcase
  end
  assign eq403 = io_lsu_rd_rsp_data[2:0] == 3'h2;
  assign srl932 = reg352 >> sll930;
  assign srl922 = sel1050 >> sll920;
  ch_queue __module6__(.clk(bindin246), .reset(bindin247), .io_enq_valid(bindin248), .io_enq_data(bindin251), .io_deq_ready(bindin263), .io_deq_valid(bindout257), .io_deq_data(bindout260));
  assign srl702 = bindout164 >> sll700;
  assign and1113 = eq1112 & io_ctrl_start_valid;
  assign sel1178 = (reg437 == 23'h100) ? sub763 : reg100;
  always @(*) begin
    case (reg437)
      23'h000010: sel1172 = sel1170;
      23'h040000: sel1172 = sel1171;
      23'h200000: sel1172 = srl1005[19:0];
      default: sel1172 = reg88;
    endcase
  end
  assign sel1051 = (reg437 == 23'h4000) ? sub885 : reg131;
  assign sll838 = 32'h1 << and835;
  assign sel1179 = eq807 ? reg113 : srl805;
  assign sll791 = 32'h1 << and788;
  assign sub1015 = io_ctrl_timer - reg365;
  assign srl995 = reg334 >> sll993;
  assign srl766 = reg82 >> 20'h5;
  assign proxy7 = io_ctrl_start_data[31:0];
  assign eq524 = and520 == 1'h0;
  assign eq529 = reg611 == 1'h0;
  assign and520 = and444 & eq517;
  assign eq500 = and496 == 1'h0;
  assign eq505 = reg605 == 1'h0;
  assign and496 = and444 & eq493;
  assign eq548 = and544 == 1'h0;
  assign eq553 = reg617 == 1'h0;
  assign and544 = and444 & eq541;
  assign eq572 = and568 == 1'h0;
  assign eq577 = reg623 == 1'h0;
  assign and568 = and444 & eq565;
  assign eq476 = and472 == 1'h0;
  assign eq481 = reg599 == 1'h0;
  assign and472 = and444 & eq469;
  assign eq451 = and446 == 1'h0;
  assign eq456 = reg593 == 1'h0;
  assign and446 = and444 & eq442;
  assign sel1111 = and1113 ? sub652 : reg76;
  assign and967 = reg88 & 20'hf;
  assign sel1180 = (reg437 == 23'h200) ? sel1179 : reg113;
  assign sll802 = reg82 << 20'h2;
  assign bindin167 = reg593;
  assign bindin155 = io_lsu_rd_rsp_data[514:3];
  assign bindin152 = and399;
  assign bindin151 = reset;
  assign bindin150 = clk;
  always @ (posedge clk) begin
    reg623 <= reset ? 1'h0 : sel1061;
  end
  assign and429 = io_lsu_rd_rsp_valid & eq427;
  always @ (posedge clk) begin
    reg599 <= reset ? 1'h0 : sel1177;
  end
  assign and405 = io_lsu_rd_rsp_valid & eq403;
  assign eq1048 = reg437 == 23'h20000;
  assign and951 = reg88 & 20'hf;
  assign and941 = reg88 & 20'hf;
  assign bindin215 = reg605;
  assign bindin203 = io_lsu_rd_rsp_data[514:3];
  assign bindin200 = and411;
  assign bindin199 = reset;
  assign bindin198 = clk;
  assign add977 = reg70 + 20'h1;
  assign proxy647 = proxy7[19:0];
  assign and982 = reg70 & 20'hf;
  always @ (posedge clk) begin
    reg100 <= reset ? 20'h0 : sel1178;
  end
  always @ (posedge clk) begin
    reg88 <= reset ? 20'h0 : sel1172;
  end
  always @ (posedge clk) begin
    reg131 <= reset ? 20'h0 : sel1051;
  end
  assign and840 = srl830[31:0] & sll838;
  assign and793 = srl782[31:0] & sll791;
  assign and717 = reg70 & 20'hf;
  ch_queue __module2__(.clk(bindin150), .reset(bindin151), .io_enq_valid(bindin152), .io_enq_data(bindin155), .io_deq_ready(bindin167), .io_deq_valid(bindout161), .io_deq_data(bindout164));
  assign sel1055 = (reg437 == 23'h4000) ? sub880[5:0] : reg138;
  assign bindin239 = reg611;
  assign bindin227 = io_lsu_rd_rsp_data[514:3];
  assign bindin224 = and417;
  assign bindin223 = reset;
  assign bindin222 = clk;
  assign sel1052 = bindout257 ? srl922[31:0] : srl932[31:0];
  assign and1054 = eq1048 & eq914;
  ch_queue_0 __module4__(.clk(bindin198), .reset(bindin199), .io_enq_valid(bindin200), .io_enq_data(bindin203), .io_deq_ready(bindin215), .io_deq_data(bindout212));
  assign sel1162 = and692 ? srl702[19:0] : reg82;
  assign sll769 = srl766 << 20'h2;
  assign sel1099 = io_ctrl_start_valid ? proxy647 : reg70;
  assign sub537 = reg315 - 8'h1;
  assign and526 = eq524 & reg611;
  assign add534 = reg315 + 8'h1;
  assign and531 = and520 & eq529;
  assign sub513 = reg309 - 8'h1;
  assign and502 = eq500 & reg605;
  assign add510 = reg309 + 8'h1;
  assign and507 = and496 & eq505;
  assign sub561 = reg321 - 8'h1;
  assign and550 = eq548 & reg617;
  assign add558 = reg321 + 8'h1;
  assign and555 = and544 & eq553;
  assign sub585 = reg327 - 8'h1;
  assign and574 = eq572 & reg623;
  assign add582 = reg327 + 8'h1;
  assign and579 = and568 & eq577;
  assign sub489 = reg303 - 8'h1;
  assign and478 = eq476 & reg599;
  assign add486 = reg303 + 8'h1;
  assign and483 = and472 & eq481;
  assign sub465 = reg297 - 8'h1;
  assign and453 = eq451 & reg593;
  assign add462 = reg297 + 8'h1;
  assign and458 = and446 & eq456;
  assign and1010 = reg70 & 20'hf;
  always @ (posedge clk) begin
    reg76 <= reset ? 20'h0 : sel1111;
  end
  assign eq970 = and967 == 20'hf;
  always @ (posedge clk) begin
    reg113 <= reset ? 20'hfffff : sel1180;
  end
  assign srl805 = sll802 >> 20'h6;
  ch_queue_0 __module5__(.clk(bindin222), .reset(bindin223), .io_enq_valid(bindin224), .io_enq_data(bindin227), .io_deq_ready(bindin239), .io_deq_data(bindout236), .io_size(bindout242));
  assign lt1019 = reg394[63:32] < reg358;
  assign sel1040 = (reg437 == 23'h400000) ? sub1015[31:0] : reg358;
  assign sel1053 = and1054 ? sel1052 : reg145;
  assign sll954 = and951 << 20'h5;
  assign sll944 = and941 << 20'h5;
  assign sll864 = reg88 << 20'h2;
  always @(*) begin
    case (reg437)
      23'h000010: sel1163 = sel1162;
      23'h200000: sel1163 = srl995[19:0];
      default: sel1163 = reg82;
    endcase
  end
  always @(*) begin
    case (reg437)
      23'h000001: sel1100 = sel1099;
      23'h100000: sel1100 = add977;
      default: sel1100 = reg70;
    endcase
  end
  assign ne985 = and982 != 20'hf;
  assign ne964 = reg88 != reg100;
  assign ne905 = reg119 != reg131;
  assign ne843 = and840 != 32'h0;
  assign ne796 = and793 != 32'h0;
  assign ne720 = and717 != 20'hf;
  assign bindin287 = reg623;
  assign bindin275 = io_lsu_rd_rsp_data[514:3];
  assign bindin272 = and429;
  assign bindin271 = reset;
  assign bindin270 = clk;
  always @ (posedge clk) begin
    reg138 <= reset ? 6'h0 : sel1055;
  end
  assign bindin191 = reg599;
  assign bindin179 = io_lsu_rd_rsp_data[514:3];
  assign bindin176 = and405;
  assign bindin175 = reset;
  assign bindin174 = clk;
  assign add903 = reg119 + 20'h1;
  assign srl772 = sll769 >> 20'h6;
  always @(*) begin
    if (and531)
      sel539 = add534;
    else if (and526)
      sel539 = sub537;
    else
      sel539 = reg315;
  end
  always @(*) begin
    if (and507)
      sel515 = add510;
    else if (and502)
      sel515 = sub513;
    else
      sel515 = reg309;
  end
  always @(*) begin
    if (and555)
      sel563 = add558;
    else if (and550)
      sel563 = sub561;
    else
      sel563 = reg321;
  end
  always @(*) begin
    if (and579)
      sel587 = add582;
    else if (and574)
      sel587 = sub585;
    else
      sel587 = reg327;
  end
  always @(*) begin
    if (and483)
      sel491 = add486;
    else if (and478)
      sel491 = sub489;
    else
      sel491 = reg303;
  end
  always @(*) begin
    if (and458)
      sel467 = add462;
    else if (and453)
      sel467 = sub465;
    else
      sel467 = reg297;
  end
  assign ne1013 = and1010 != 20'hf;
  assign ne979 = reg70 != reg76;
  assign sel1091 = eq970 ? 23'h80000 : reg437;
  assign eq807 = srl805 == reg113;
  assign eq774 = srl772 == reg107;
  assign and692 = bindout161 & bindout185;
  ch_queue __module7__(.clk(bindin270), .reset(bindin271), .io_enq_valid(bindin272), .io_enq_data(bindin275), .io_deq_ready(bindin287), .io_deq_valid(bindout281), .io_deq_data(bindout284));
  assign add816 = reg394[319:288] + 32'h1;
  assign add858 = reg394[287:256] + 32'h1;
  assign add909 = reg394[255:224] + 32'h1;
  assign add894 = reg394[223:192] + 32'h1;
  ch_queue __module3__(.clk(bindin174), .reset(bindin175), .io_enq_valid(bindin176), .io_enq_data(bindin179), .io_deq_ready(bindin191), .io_deq_valid(bindout185), .io_deq_data(bindout188));
  assign add752 = reg394[191:160] + 32'h1;
  assign add687 = reg394[191:160] + 32'h1;
  assign add671 = reg394[159:128] + 32'h1;
  assign gt1028 = reg394[63:32] > reg358;
  assign sel1021 = lt1019 ? reg394[63:32] : reg358;
  always @ (posedge clk) begin
    reg358 <= reset ? 32'h0 : sel1040;
  end
  assign eq1024 = reg394[63:32] == 32'h0;
  always @ (posedge clk) begin
    reg145 <= reset ? 32'h0 : sel1053;
  end
  assign srl956 = bindout236 >> sll954;
  assign srl946 = bindout212 >> sll944;
  assign srl867 = sll864 >> 20'h6;
  always @ (posedge clk) begin
    reg82 <= reset ? 20'h0 : sel1163;
  end
  assign add739 = reg70 + 20'h1;
  always @ (posedge clk) begin
    reg70 <= reset ? 20'h0 : sel1100;
  end
  assign sel1094 = ne985 ? 23'h200000 : 23'h2;
  assign sel1092 = ne964 ? sel1091 : 23'h100000;
  assign sel1088 = ne905 ? 23'h8000 : 23'h20000;
  assign and1065 = ne900 & io_lsu_rd_req_ready;
  assign and1087 = ne890 & io_lsu_rd_req_ready;
  assign and1085 = ne855 & io_lsu_rd_req_ready;
  assign sel1082 = ne843 ? 23'h200 : 23'h100000;
  assign and1081 = ne812 & io_lsu_rd_req_ready;
  assign sel1077 = ne796 ? 23'h200 : 23'h100000;
  assign and1075 = ne748 & io_lsu_rd_req_ready;
  assign sel1072 = ne720 ? 23'h80 : 23'h20;
  assign and1071 = ne683 & io_lsu_rd_req_ready;
  assign and1069 = ne665 & io_lsu_rd_req_ready;
  assign add1038 = reg394[351:320] + 32'h1;
  assign add974 = reg394[351:320] + 32'h1;
  assign add846 = reg394[319:288] + 32'h1;
  assign add819 = reg394[319:288] + 32'h1;
  assign add861 = reg394[287:256] + 32'h1;
  assign add938 = reg394[255:224] + 32'h1;
  assign eq914 = bindout242 == reg138;
  assign add912 = reg394[255:224] + 32'h1;
  assign add897 = reg394[223:192] + 32'h1;
  assign add760 = reg394[191:160] + 32'h1;
  assign add755 = reg394[191:160] + 32'h1;
  assign add690 = reg394[191:160] + 32'h1;
  assign add674 = reg394[159:128] + 32'h1;
  assign sel1064 = and1065 ? add903 : reg119;
  assign sel1181 = eq774 ? reg107 : srl772;
  always @ (posedge clk) begin
    reg315 <= reset ? 8'h0 : sel539;
  end
  always @ (posedge clk) begin
    reg309 <= reset ? 8'h0 : sel515;
  end
  always @ (posedge clk) begin
    reg321 <= reset ? 8'h0 : sel563;
  end
  always @ (posedge clk) begin
    reg327 <= reset ? 8'h0 : sel587;
  end
  always @ (posedge clk) begin
    reg303 <= reset ? 8'h0 : sel491;
  end
  always @ (posedge clk) begin
    reg297 <= reset ? 8'h0 : sel467;
  end
  assign sel1097 = io_pe_ready ? 23'h1 : reg437;
  assign sel1096 = ne1013 ? 23'h80 : 23'h20;
  assign sel1095 = ne979 ? sel1094 : 23'h400000;
  assign sel1093 = io_pe_ready ? sel1092 : reg437;
  assign sel1090 = eq914 ? 23'h40000 : reg437;
  assign sel1089 = and1065 ? sel1088 : reg437;
  assign sel1086 = and1087 ? 23'h10000 : reg437;
  assign sel1084 = and1085 ? 23'h2000 : reg437;
  assign sel1083 = bindout281 ? sel1082 : reg437;
  assign sel1080 = and1081 ? 23'h800 : reg437;
  assign sel1079 = eq807 ? 23'h2000 : 23'h1000;
  assign sel1078 = eq774 ? sel1077 : 23'h400;
  assign sel1076 = bindout185 ? 23'h100 : reg437;
  assign sel1074 = and1075 ? 23'h40 : reg437;
  assign sel1073 = and692 ? sel1072 : reg437;
  assign sel1070 = and1071 ? 23'h10 : reg437;
  assign sel1068 = and1069 ? 23'h4 : reg437;
  assign sel1067 = io_ctrl_start_valid ? 23'h2 : reg437;
  assign sel1149 = io_lsu_rd_req_ready ? reg394[319:288] : add816;
  assign sel1145 = io_lsu_rd_req_ready ? reg394[287:256] : add858;
  assign sel1140 = io_lsu_rd_req_ready ? reg394[255:224] : add909;
  assign sel1136 = io_lsu_rd_req_ready ? reg394[223:192] : add894;
  assign sel1131 = io_lsu_rd_req_ready ? reg394[191:160] : add752;
  assign sel1129 = io_lsu_rd_req_ready ? reg394[191:160] : add687;
  assign sel1125 = io_lsu_rd_req_ready ? reg394[159:128] : add671;
  assign add1032 = reg394[127:96] + reg358;
  assign sel1030 = gt1028 ? reg394[63:32] : reg358;
  assign sel1026 = eq1024 ? reg358 : sel1021;
  assign add1035 = reg394[31:0] + 32'h1;
  assign eq1116 = reg437 == 23'h800000;
  always @(*) begin
    case (reg437)
      23'h002000: sel1066 = srl867;
      23'h010000: sel1066 = sel1064;
      default: sel1066 = reg119;
    endcase
  end
  assign sll849 = reg82 << 20'h2;
  assign sel1182 = (reg437 == 23'h100) ? sel1181 : reg107;
  assign sll742 = add739 << 20'h2;
  assign sll677 = reg70 << 20'h2;
  assign sll657 = reg70 << 20'h2;
  always @(*) begin
    case (reg437)
      23'h000001: sel1098 = sel1067;
      23'h000002: sel1098 = sel1068;
      23'h000004: sel1098 = sel1070;
      23'h000010: sel1098 = sel1073;
      23'h000080: sel1098 = 23'h100;
      23'h000020: sel1098 = sel1074;
      23'h000040: sel1098 = sel1076;
      23'h000100: sel1098 = sel1078;
      23'h000200: sel1098 = sel1079;
      23'h000400: sel1098 = sel1080;
      23'h000800: sel1098 = sel1083;
      23'h001000: sel1098 = sel1084;
      23'h002000: sel1098 = 23'h4000;
      23'h004000: sel1098 = 23'h8000;
      23'h008000: sel1098 = sel1086;
      23'h010000: sel1098 = sel1089;
      23'h020000: sel1098 = sel1090;
      23'h040000: sel1098 = sel1093;
      23'h080000: sel1098 = 23'h40000;
      23'h100000: sel1098 = sel1095;
      23'h200000: sel1098 = sel1096;
      23'h400000: sel1098 = 23'h800000;
      23'h800000: sel1098 = sel1097;
      default: sel1098 = reg437;
    endcase
  end
  assign sel1155 = io_pe_ready ? reg394[351:320] : add1038;
  assign sel1154 = io_pe_ready ? reg394[351:320] : add974;
  assign sel1151 = bindout281 ? reg394[319:288] : add846;
  assign sel1150 = ne812 ? sel1149 : add819;
  assign sel1146 = ne855 ? sel1145 : add861;
  assign sel1142 = eq914 ? reg394[255:224] : add938;
  assign sel1141 = ne900 ? sel1140 : add912;
  assign sel1137 = ne890 ? sel1136 : add897;
  assign sel1133 = bindout185 ? reg394[191:160] : add760;
  assign sel1132 = ne748 ? sel1131 : add755;
  assign sel1130 = ne683 ? sel1129 : add690;
  assign sel1126 = ne665 ? sel1125 : add674;
  assign and1117 = eq1116 & io_pe_ready;
  assign sel1167 = (reg437 == 23'h800000) ? 1'h1 : 1'h0;
  assign sel1166 = (reg437 == 23'h40000) ? reg145 : 32'h0;
  assign sel1165 = (reg437 == 23'h40000) ? srl956[31:0] : 32'h0;
  assign sel1164 = (reg437 == 23'h40000) ? srl946[19:0] : 20'h0;
  always @(*) begin
    case (reg437)
      23'h040000: sel1059 = 1'h1;
      23'h800000: sel1059 = 1'h1;
      default: sel1059 = 1'h0;
    endcase
  end
  assign ne900 = reg315 != 8'h20;
  assign ne890 = reg309 != 8'h20;
  assign ne855 = reg321 != 8'h2;
  assign ne812 = reg327 != 8'h2;
  assign ne748 = reg303 != 8'h2;
  assign ne683 = reg303 != 8'h2;
  assign ne665 = reg297 != 8'h2;
  always @(*) begin
    case (reg437)
      23'h040000: sel1156 = sel1154;
      23'h800000: sel1156 = sel1155;
      default: sel1156 = reg394[351:320];
    endcase
  end
  always @(*) begin
    case (reg437)
      23'h000400: sel1152 = sel1150;
      23'h000800: sel1152 = sel1151;
      default: sel1152 = reg394[319:288];
    endcase
  end
  assign sel1147 = (reg437 == 23'h1000) ? sel1146 : reg394[287:256];
  always @(*) begin
    case (reg437)
      23'h010000: sel1143 = sel1141;
      23'h020000: sel1143 = sel1142;
      default: sel1143 = reg394[255:224];
    endcase
  end
  assign sel1138 = (reg437 == 23'h8000) ? sel1137 : reg394[223:192];
  always @(*) begin
    case (reg437)
      23'h000004: sel1134 = sel1130;
      23'h000020: sel1134 = sel1132;
      23'h000040: sel1134 = sel1133;
      default: sel1134 = reg394[191:160];
    endcase
  end
  assign sel1127 = (reg437 == 23'h2) ? sel1126 : reg394[159:128];
  assign sel1123 = and1117 ? add1032 : reg394[127:96];
  assign sel1121 = and1117 ? sel1030 : reg394[95:64];
  assign sel1119 = and1117 ? sel1026 : reg394[63:32];
  assign sel1115 = and1117 ? add1035 : reg394[31:0];
  assign ch_pe_req_t631 = {sel1167, sel1166, sel1165, sel1164};
  always @ (posedge clk) begin
    reg119 <= reset ? 20'h0 : sel1066;
  end
  assign srl852 = sll849 >> 20'h6;
  always @ (posedge clk) begin
    reg107 <= reset ? 20'hfffff : sel1182;
  end
  assign srl745 = sll742 >> 20'h6;
  assign srl680 = sll677 >> 20'h6;
  assign srl661 = sll657 >> 20'h6;
  always @ (posedge clk) begin
    reg437 <= reset ? 23'h1 : sel1098;
  end
  assign ch_walker_stats_t380 = {sel1156, sel1152, sel1147, sel1143, sel1138, sel1134, sel1127, sel1123, sel1121, sel1119, sel1115};
  always @ (posedge clk) begin
    reg638 <= reset ? lit636 : ch_pe_req_t631;
  end
  always @ (posedge clk) begin
    reg644 <= reset ? 1'h0 : sel1059;
  end
  assign sel1107 = ne900 ? 1'h1 : 1'h0;
  assign sel1106 = ne890 ? 1'h1 : 1'h0;
  assign sel1105 = ne855 ? 1'h1 : 1'h0;
  assign sel1104 = ne812 ? 1'h1 : 1'h0;
  assign sel1103 = ne748 ? 1'h1 : 1'h0;
  assign sel1102 = ne683 ? 1'h1 : 1'h0;
  assign sel1101 = ne665 ? 1'h1 : 1'h0;
  always @ (posedge clk) begin
    reg394 <= reset ? lit392 : ch_walker_stats_t380;
  end
  assign eq439 = reg437 == 23'h1;
  always @(*) begin
    case (reg437)
      23'h000002: sel1158 = srl661;
      23'h000004: sel1158 = srl680;
      23'h000020: sel1158 = srl745;
      23'h000400: sel1158 = reg107;
      23'h001000: sel1158 = srl852;
      23'h008000: sel1158 = reg119;
      23'h010000: sel1158 = reg119;
      default: sel1158 = 20'h0;
    endcase
  end
  always @(*) begin
    case (reg437)
      23'h000002: sel1157 = 3'h1;
      23'h000004: sel1157 = 3'h2;
      23'h000020: sel1157 = 3'h2;
      23'h000400: sel1157 = 3'h6;
      23'h001000: sel1157 = 3'h5;
      23'h008000: sel1157 = 3'h3;
      23'h010000: sel1157 = 3'h4;
      default: sel1157 = 3'h0;
    endcase
  end
  always @(*) begin
    case (reg437)
      23'h000002: sel1108 = sel1101;
      23'h000004: sel1108 = sel1102;
      23'h000020: sel1108 = sel1103;
      23'h000400: sel1108 = sel1104;
      23'h001000: sel1108 = sel1105;
      23'h008000: sel1108 = sel1106;
      23'h010000: sel1108 = sel1107;
      default: sel1108 = 1'h0;
    endcase
  end
  assign io_lsu_rd_req_data34 = {sel1158, sel1157};

  assign io_ctrl_start_ready = eq439;
  assign io_ctrl_stats = reg394;
  assign io_lsu_rd_req_valid = sel1108;
  assign io_lsu_rd_req_data = io_lsu_rd_req_data34;
  assign io_pe_valid = reg644;
  assign io_pe_data = reg638;

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
  wire[20:0] sel36;
  wire sel49;
  reg[20:0] reg44;
  reg reg53;
  wire[20:0] sel64;
  wire sel74;
  reg[20:0] reg69;
  reg reg77;
  wire[20:0] sel88;
  wire sel98;
  reg[20:0] reg93;
  reg reg101;

  assign sel36 = io_deq_ready ? io_enq_data : reg44;
  assign sel49 = io_deq_ready ? io_enq_valid : reg53;
  always @ (posedge clk) begin
    reg44 <= reset ? 21'h0 : sel36;
  end
  always @ (posedge clk) begin
    reg53 <= reset ? 1'h0 : sel49;
  end
  assign sel64 = io_deq_ready ? reg44 : reg69;
  assign sel74 = io_deq_ready ? reg53 : reg77;
  always @ (posedge clk) begin
    reg69 <= reset ? 21'h0 : sel64;
  end
  always @ (posedge clk) begin
    reg77 <= reset ? 1'h0 : sel74;
  end
  assign sel88 = io_deq_ready ? reg69 : reg93;
  assign sel98 = io_deq_ready ? reg77 : reg101;
  always @ (posedge clk) begin
    reg93 <= reset ? 21'h0 : sel88;
  end
  always @ (posedge clk) begin
    reg101 <= reset ? 1'h0 : sel98;
  end

  assign io_enq_ready = io_deq_ready;
  assign io_deq_valid = reg101;
  assign io_deq_data = reg93;

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
  wire[511:0] lit262 = 512'h0;
  wire[479:0] lit478 = 480'h0;
  wire proxy70; // v1755 - is_end(0)
  wire[31:0] inv244;
  wire[31:0] and246;
  wire ne240;
  wire eq231;
  wire[31:0] and251;
  wire[31:0] or248;
  wire and242;
  wire[31:0] or253;
  wire and233;
  wire[31:0] sll151;
  wire[19:0] and202;
  wire[31:0] sel255; // pe.cpp(86)
  reg[31:0] sel256; // pe.cpp(85)
  wire[31:0] or273;
  wire[4:0] proxy204; // v1825 - pe.cpp(68)
  wire[31:0] and184;
  wire[20:0] bindout57;
  wire and198;
  wire[31:0] sll148;
  reg[31:0] reg105; // v1768 - pe.cpp(14)
  wire eq209;
  wire[31:0] sel508; // pe.cpp(120)
  wire ne187;
  wire proxy56; // v1682 - is_end(0)
  wire[19:0] proxy55; // v1681 - a_rowind(0)
  wire[31:0] sel509; // pe.cpp(125)
  wire eq236;
  wire[20:0] proxy68; // v1753 - /home/blaise/dev/cash/src/module.h(33)
  wire[31:0] and165;
  wire eq155;
  wire eq158;
  wire and211;
  wire eq214;
  wire eq219;
  wire[31:0] sel510; // pe.cpp(112)
  wire eq265;
  wire[31:0] sel190;
  wire[31:0] fmult196;
  wire bindin85;
  wire[20:0] bindin71;
  wire bindin66;
  wire bindin65;
  wire bindin64;
  wire[19:0] and270;
  wire[19:0] and259;
  wire and238;
  wire[20:0] bindout82;
  wire bindout52;
  wire eq168;
  wire or160;
  wire[31:0] sub227;
  wire and216;
  wire[31:0] add224;
  wire and221;
  reg[31:0] reg93; // v1762 - pe.cpp(14)
  wire eq515;
  wire and267;
  wire[31:0] fadd205;
  wire bindout77;
  wire[19:0] srl483;
  wire and516;
  wire[19:0] sel261; // pe.cpp(96)
  wire eq163;
  wire and170;
  reg[31:0] sel229; // pe.cpp(75)
  wire[31:0] sel514; // pe.cpp(125)
  wire sel506; // pe.cpp(112)
  wire[31:0] sel507; // pe.cpp(112)
  wire[4:0] sel505; // pe.cpp(112)
  wire and275;
  wire[31:0] add495;
  wire[31:0] add466;
  wire[31:0] add370;
  wire[19:0] and487;
  wire[19:0] srl470;
  wire[19:0] sll455;
  reg[19:0] reg126; // v1778 - pe.cpp(14)
  wire or172;
  wire and192;
  reg[31:0] reg111; // v1771 - pe.cpp(14)
  reg[31:0] reg99; // v1765 - pe.cpp(14)
  wire[1:0] sel520; // pe.cpp(177)
  wire[1:0] sel519; // pe.cpp(162)
  wire[1:0] sel518; // pe.cpp(143)
  wire[1:0] sel517; // pe.cpp(125)
  wire proxy9; // v1594 - is_end(0)
  wire[19:0] proxy6; // v1591 - a_rowind(0)
  wire[31:0] sel502; // pe.cpp(177)
  wire[31:0] sel499; // pe.cpp(162)
  wire[31:0] sel498; // pe.cpp(143)
  wire[19:0] sll490;
  reg[31:0] mem86[0:31];
  wire[19:0] sll473;
  wire[19:0] srl458;
  wire[19:0] sll361;
  reg[1:0] sel521; // pe.cpp(112)
  wire[20:0] proxy43; // v1675 - /home/blaise/dev/cash/src/module.h(33)
  wire eq175;
  wire eq178;
  wire[31:0] sel503; // pe.cpp(112)
  reg[31:0] sel500; // pe.cpp(112)
  wire[511:0] proxy481; // v1984 - pe.cpp(174)
  wire bindin60;
  wire[20:0] bindin46;
  wire bindin41;
  wire bindin40;
  wire bindin38;
  wire[63:0] ch_pe_stats_t132; // v1784 - /home/blaise/dev/cash/src/seq.h(17)
  wire[511:0] sll492;
  wire[19:0] srl476;
  wire[19:0] add462;
  wire[19:0] srl365;
  reg[1:0] reg145; // v1788 - pe.cpp(30)
  wire and180;
  reg[63:0] reg137; // v1781 - pe.cpp(14)
  wire[511:0] proxy373; // v1920 - pe.cpp(153)
  wire[511:0] proxy279; // v1865 - pe.cpp(134)
  wire bindout49;
  reg[511:0] sel513; // pe.cpp(112)
  reg[19:0] sel512; // pe.cpp(112)
  wire[1:0] sel511; // pe.cpp(112)
  reg sel504; // pe.cpp(112)
  wire[533:0] io_lsu_wr_req_data18; // v1597 - pe.cpp(14)

  assign proxy70 = proxy68[20];
  assign inv244 = ~sll151;
  assign and246 = reg105 & inv244;
  assign ne240 = sll148 != sll151;
  assign eq231 = proxy70 == 1'h0;
  assign and251 = reg105 & inv244;
  assign or248 = and246 | sll148;
  assign and242 = and233 & ne240;
  assign or253 = reg105 | sll148;
  assign and233 = and198 & eq231;
  assign sll151 = 32'h1 << sel505;
  assign and202 = proxy55 & 20'h1f;
  assign sel255 = and242 ? or248 : and251;
  always @(*) begin
    if (and238)
      sel256 = sel255;
    else if (and233)
      sel256 = or253;
    else
      sel256 = reg105;
  end
  assign or273 = reg93 | sll151;
  assign proxy204 = and202[4:0];
  assign and184 = reg93 & sll148;
  assign and198 = bindout52 & or172;
  assign sll148 = 32'h1 << proxy204;
  always @ (posedge clk) begin
    reg105 <= reset ? 32'h0 : sel256;
  end
  assign eq209 = 2'h0 == reg145;
  assign sel508 = sel506 ? or273 : reg93;
  assign ne187 = 32'h0 != and184;
  assign proxy56 = bindout57[20];
  assign proxy55 = bindout57[19:0];
  assign sel509 = and275 ? 32'h0 : sel508;
  assign eq236 = bindout82[20] == 1'h0;
  assign proxy68 = {proxy56, proxy55};
  assign and165 = reg105 & sll148;
  assign eq155 = bindout77 == 1'h0;
  assign eq158 = 2'h0 == reg145;
  assign and211 = eq209 & bindout77;
  assign eq214 = and192 == 1'h0;
  assign eq219 = and211 == 1'h0;
  assign sel510 = (reg145 == 2'h0) ? sel509 : reg93;
  assign eq265 = bindout82[20] == 1'h0;
  assign sel190 = ne187 ? mem86[proxy204] : 32'h0;
  fp_mult __fp_mult_196__(.clock(clk), .clk_en(or172), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(fmult196));
  assign bindin85 = or160;
  assign bindin71 = proxy68;
  assign bindin66 = and198;
  assign bindin65 = reset;
  assign bindin64 = clk;
  assign and270 = bindout82[19:0] & 20'h1f;
  assign and259 = bindout82[19:0] & 20'hfffe0;
  assign and238 = and211 & eq236;
  ch_pipe __module17__(.clk(bindin64), .reset(bindin65), .io_enq_valid(bindin66), .io_enq_data(bindin71), .io_deq_ready(bindin85), .io_deq_valid(bindout77), .io_deq_data(bindout82));
  assign eq168 = 32'h0 == and165;
  assign or160 = eq158 | eq155;
  assign sub227 = reg111 - 32'h1;
  assign and216 = eq214 & and211;
  assign add224 = reg111 + 32'h1;
  assign and221 = and192 & eq219;
  always @ (posedge clk) begin
    reg93 <= reset ? 32'h0 : sel510;
  end
  assign eq515 = reg145 == 2'h0;
  assign and267 = bindout77 & eq265;
  fp_add __fp_add_sub_205__(.clock(clk), .clk_en(or160), .dataa(fmult196), .datab(sel190), .result(fadd205));
  assign srl483 = reg126 >> 20'h5;
  assign and516 = eq515 & and275;
  assign sel261 = and238 ? and259 : reg126;
  assign eq163 = bindout52 == 1'h0;
  assign and170 = or160 & eq168;
  always @(*) begin
    if (and221)
      sel229 = add224;
    else if (and216)
      sel229 = sub227;
    else
      sel229 = reg111;
  end
  assign sel514 = and516 ? reg93 : reg99;
  assign sel506 = (reg145 == 2'h0) ? and267 : 1'h0;
  assign sel507 = (reg145 == 2'h0) ? fadd205 : 32'h0;
  assign sel505 = (reg145 == 2'h0) ? and270[4:0] : 5'h0;
  assign and275 = bindout77 & bindout82[20];
  assign add495 = reg137[63:32] + 32'h1;
  assign add466 = reg137[31:0] + 32'h1;
  assign add370 = reg137[31:0] + 32'h1;
  assign and487 = srl483 & 20'hf;
  assign srl470 = reg126 >> 20'h5;
  assign sll455 = reg126 << 20'h2;
  always @ (posedge clk) begin
    reg126 <= reset ? 20'h0 : sel261;
  end
  assign or172 = and170 | eq163;
  assign and192 = io_req_valid & bindout49;
  always @ (posedge clk) begin
    reg111 <= reset ? 32'h0 : sel229;
  end
  always @ (posedge clk) begin
    reg99 <= reset ? 32'h0 : sel514;
  end
  assign sel520 = io_lsu_wr_req_ready ? 2'h0 : reg145;
  assign sel519 = io_lsu_wr_req_ready ? 2'h3 : reg145;
  assign sel518 = io_lsu_wr_req_ready ? 2'h2 : reg145;
  assign sel517 = and275 ? 2'h1 : reg145;
  assign proxy9 = io_req_data[84];
  assign proxy6 = io_req_data[19:0];
  assign sel502 = io_lsu_wr_req_ready ? reg137[63:32] : add495;
  assign sel499 = io_lsu_wr_req_ready ? reg137[31:0] : add466;
  assign sel498 = io_lsu_wr_req_ready ? reg137[31:0] : add370;
  assign sll490 = and487 << 20'h5;
  always @(posedge clk) begin
    if (sel506) begin
      mem86[sel505] = sel507;
    end
  end
  assign sll473 = srl470 << 20'h2;
  assign srl458 = sll455 >> 20'h6;
  assign sll361 = reg126 << 20'h2;
  always @(*) begin
    case (reg145)
      2'h0: sel521 = sel517;
      2'h1: sel521 = sel518;
      2'h2: sel521 = sel519;
      2'h3: sel521 = sel520;
      default: sel521 = reg145;
    endcase
  end
  assign proxy43 = {proxy9, proxy6};
  assign eq175 = 32'h0 == reg111;
  assign eq178 = reg145 == 2'h0;
  assign sel503 = (reg145 == 2'h3) ? sel502 : reg137[63:32];
  always @(*) begin
    case (reg145)
      2'h1: sel500 = sel498;
      2'h2: sel500 = sel499;
      default: sel500 = reg137[31:0];
    endcase
  end
  assign proxy481 = {lit478, reg99};
  assign bindin60 = or172;
  assign bindin46 = proxy43;
  assign bindin41 = and192;
  assign bindin40 = reset;
  assign bindin38 = clk;
  assign ch_pe_stats_t132 = {sel503, sel500};
  assign sll492 = proxy481 << sll490;
  assign srl476 = sll473 >> 20'h6;
  assign add462 = srl458 + 20'h1;
  assign srl365 = sll361 >> 20'h6;
  always @ (posedge clk) begin
    reg145 <= reset ? 2'h0 : sel521;
  end
  ch_pipe __module16__(.clk(bindin38), .reset(bindin40), .io_enq_valid(bindin41), .io_enq_data(bindin46), .io_deq_ready(bindin60), .io_enq_ready(bindout49), .io_deq_valid(bindout52), .io_deq_data(bindout57));
  assign and180 = eq178 & eq175;
  always @ (posedge clk) begin
    reg137 <= reset ? lit135 : ch_pe_stats_t132;
  end
  assign proxy373 = {mem86[5'hf1], mem86[5'hf0], mem86[5'he1], mem86[5'he0], mem86[5'hd1], mem86[5'hd0], mem86[5'hc1], mem86[5'hc0], mem86[5'hb1], mem86[5'hb0], mem86[5'ha1], mem86[5'ha0], mem86[5'h91], mem86[5'h90], mem86[5'h81], mem86[5'h80]};
  assign proxy279 = {mem86[5'h71], mem86[5'h70], mem86[5'h61], mem86[5'h60], mem86[5'h51], mem86[5'h50], mem86[5'h41], mem86[5'h40], mem86[5'h31], mem86[5'h30], mem86[5'h21], mem86[5'h20], mem86[5'h11], mem86[5'h10], mem86[5'h1], mem86[5'h0]};
  always @(*) begin
    case (reg145)
      2'h1: sel513 = proxy279;
      2'h2: sel513 = proxy373;
      2'h3: sel513 = sll492;
      default: sel513 = lit262;
    endcase
  end
  always @(*) begin
    case (reg145)
      2'h1: sel512 = srl365;
      2'h2: sel512 = add462;
      2'h3: sel512 = srl476;
      default: sel512 = 20'h0;
    endcase
  end
  assign sel511 = (reg145 == 2'h3) ? 2'h1 : 2'h0;
  always @(*) begin
    case (reg145)
      2'h1: sel504 = 1'h1;
      2'h2: sel504 = 1'h1;
      2'h3: sel504 = 1'h1;
      default: sel504 = 1'h0;
    endcase
  end
  assign io_lsu_wr_req_data18 = {sel513, sel512, sel511};

  assign io_req_ready = bindout49;
  assign io_lsu_wr_req_valid = sel504;
  assign io_lsu_wr_req_data = io_lsu_wr_req_data18;
  assign io_stats = reg137;
  assign io_is_idle = and180;

endmodule


module ch_hxbar(
  input wire[2:0] io_sel,
  input wire[71:0] io_in,
  output wire[23:0] io_out
);
  wire eq39;
  wire[23:0] sel40;
  wire eq41;
  wire[23:0] sel42;
  wire eq43;
  wire[23:0] sel44;

  assign eq39 = io_sel == 3'h4;
  assign sel40 = eq39 ? io_in[71:48] : 24'h0;
  assign eq41 = io_sel == 3'h2;
  assign sel42 = eq41 ? io_in[47:24] : sel40;
  assign eq43 = io_sel == 3'h1;
  assign sel44 = eq43 ? io_in[23:0] : sel42;

  assign io_out = sel44;

endmodule

module ch_rrArbiter(
  input wire clk,
  input wire reset,
  input wire[2:0] io_in,
  output wire[2:0] io_grant
);
  wire proxy121; // v2653
  wire proxy124; // v2655
  wire proxy97; // v2638
  wire proxy100; // v2640
  wire proxy89; // v2633
  wire proxy92; // v2635
  wire inv122;
  wire or125;
  wire inv98;
  wire or101;
  wire inv90;
  wire or93;
  wire and127;
  wire and103;
  wire and95;
  reg reg48; // v2608 - /home/blaise/dev/cash/src/htl/arbiter.h(20)
  reg reg30; // v2599 - /home/blaise/dev/cash/src/htl/arbiter.h(20)
  wire inv135;
  reg reg24; // v2596 - /home/blaise/dev/cash/src/htl/arbiter.h(20)
  wire inv130;
  wire inv109;
  wire and105;
  wire and78;
  wire and137;
  wire and75;
  wire and132;
  wire and111;
  wire[2:0] proxy72; // v2622 - /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy70; // v2621 - /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire[2:0] proxy68; // v2620 - /home/blaise/dev/cash/src/htl/arbiter.h(21)
  wire orr140;
  wire orr114;
  wire orr82;
  wire inv142;
  wire inv116;
  wire inv84;
  wire and144;
  wire and118;
  wire and86;
  wire[2:0] proxy74; // v2623 - /home/blaise/dev/cash/src/htl/arbiter.h(22)

  assign proxy121 = proxy74[1];
  assign proxy124 = proxy74[2];
  assign proxy97 = proxy74[0];
  assign proxy100 = proxy74[2];
  assign proxy89 = proxy74[0];
  assign proxy92 = proxy74[1];
  assign inv122 = ~proxy121;
  assign or125 = reg48 | proxy124;
  assign inv98 = ~proxy97;
  assign or101 = reg30 | proxy100;
  assign inv90 = ~proxy89;
  assign or93 = reg24 | proxy92;
  assign and127 = or125 & inv122;
  assign and103 = or101 & inv98;
  assign and95 = or93 & inv90;
  always @ (posedge clk) begin
    reg48 <= reset ? 1'h0 : and127;
  end
  always @ (posedge clk) begin
    reg30 <= reset ? 1'h0 : and103;
  end
  assign inv135 = ~reg48;
  always @ (posedge clk) begin
    reg24 <= reset ? 1'h0 : and95;
  end
  assign inv130 = ~reg30;
  assign inv109 = ~reg24;
  assign and105 = reg48 & io_in[1];
  assign and78 = reg30 & io_in[0];
  assign and137 = inv135 & io_in[2];
  assign and75 = reg24 & io_in[0];
  assign and132 = inv130 & io_in[2];
  assign and111 = inv109 & io_in[1];
  assign proxy72 = {1'h0, and105, and78};
  assign proxy70 = {and137, 1'h0, and75};
  assign proxy68 = {and132, and111, 1'h0};
  assign orr140 = |proxy72;
  assign orr114 = |proxy70;
  assign orr82 = |proxy68;
  assign inv142 = ~orr140;
  assign inv116 = ~orr114;
  assign inv84 = ~orr82;
  assign and144 = io_in[2] & inv142;
  assign and118 = io_in[1] & inv116;
  assign and86 = io_in[0] & inv84;
  assign proxy74 = {and144, and118, and86};

  assign io_grant = proxy74;

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
  wire[71:0] proxy53; // v2566 - /home/blaise/dev/cash/src/module.h(33)
  wire[71:0] bindin69;
  wire[2:0] bindin51;
  wire[2:0] proxy79; // v2669 - /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindin88;
  wire bindin87;
  wire bindin85;
  wire[23:0] bindout77;
  wire eq123;
  wire eq117;
  wire eq111;
  wire[2:0] bindout91;
  wire and125;
  wire and119;
  wire and113;

  assign proxy53 = {io_in_2_data, io_in_2_valid, io_in_1_data, io_in_1_valid, io_in_0_data, io_in_0_valid};
  assign bindin69 = proxy53;
  assign bindin51 = bindout91;
  assign proxy79 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  ch_hxbar __module23__(.io_sel(bindin51), .io_in(bindin69), .io_out(bindout77));
  assign bindin88 = proxy79;
  assign bindin87 = reset;
  assign bindin85 = clk;
  assign eq123 = bindout91 == 3'h4;
  assign eq117 = bindout91 == 3'h2;
  assign eq111 = bindout91 == 3'h1;
  ch_rrArbiter __module24__(.clk(bindin85), .reset(bindin87), .io_in(bindin88), .io_grant(bindout91));
  assign and125 = io_out_ready & eq123;
  assign and119 = io_out_ready & eq117;
  assign and113 = io_out_ready & eq111;

  assign io_in_0_ready = and113;
  assign io_in_1_ready = and119;
  assign io_in_2_ready = and125;
  assign io_out_valid = bindout77[0];
  assign io_out_data = bindout77[23:1];
  assign io_out_grant = bindout91;

endmodule

module ch_hxbar_0(
  input wire[2:0] io_sel,
  input wire[1604:0] io_in,
  output wire[534:0] io_out
);
  wire[534:0] lit41 = 535'h0;
  wire eq43;
  wire[534:0] sel44;
  wire eq45;
  wire[534:0] sel46;
  wire eq47;
  wire[534:0] sel48;

  assign eq43 = io_sel == 3'h4;
  assign sel44 = eq43 ? io_in[1604:1070] : lit41;
  assign eq45 = io_sel == 3'h2;
  assign sel46 = eq45 ? io_in[1069:535] : sel44;
  assign eq47 = io_sel == 3'h1;
  assign sel48 = eq47 ? io_in[534:0] : sel46;

  assign io_out = sel48;

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
  wire[1604:0] proxy57; // v2777 - /home/blaise/dev/cash/src/module.h(33)
  wire[1604:0] bindin76;
  wire[2:0] bindin55;
  wire[2:0] proxy87; // v2884 - /home/blaise/dev/cash/src/module.h(33)
  wire[2:0] bindin96;
  wire bindin95;
  wire bindin93;
  wire[534:0] bindout85;
  wire eq131;
  wire eq125;
  wire eq119;
  wire[2:0] bindout99;
  wire and133;
  wire and127;
  wire and121;

  assign proxy57 = {io_in_2_data, io_in_2_valid, io_in_1_data, io_in_1_valid, io_in_0_data, io_in_0_valid};
  assign bindin76 = proxy57;
  assign bindin55 = bindout99;
  assign proxy87 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
  ch_hxbar_0 __module26__(.io_sel(bindin55), .io_in(bindin76), .io_out(bindout85));
  assign bindin96 = proxy87;
  assign bindin95 = reset;
  assign bindin93 = clk;
  assign eq131 = bindout99 == 3'h4;
  assign eq125 = bindout99 == 3'h2;
  assign eq119 = bindout99 == 3'h1;
  ch_rrArbiter __module27__(.clk(bindin93), .reset(bindin95), .io_in(bindin96), .io_grant(bindout99));
  assign and133 = io_out_ready & eq131;
  assign and127 = io_out_ready & eq125;
  assign and121 = io_out_ready & eq119;

  assign io_in_0_ready = and121;
  assign io_in_1_ready = and127;
  assign io_in_2_ready = and133;
  assign io_out_valid = bindout85[0];
  assign io_out_data = bindout85[534:1];
  assign io_out_grant = bindout99;

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
  wire[533:0] lit85 = 534'h0;
  wire[511:0] lit170 = 512'h0;
  wire[1:0] proxy123; // v3000 - owners(0)
  wire[1:0] and125;
  wire[1:0] proxy101; // v2985 - owners(0)
  wire[19:0] proxy111; // v2992 - tag(0)
  wire ne128;
  wire ne105;
  wire eq112;
  wire[1:0] proxy137; // v3010 - owners(0)
  wire sel131;
  wire sel350; // wrcache.h(143)
  wire eq140;
  wire and114;
  wire[19:0] sel316; // wrcache.h(143)
  wire[1:0] proxy173; // v3034 - owners(0)
  wire add290;
  wire sel143;
  wire sel117;
  wire[1:0] inv261;
  wire[1:0] proxy254; // v3092 - owners(0)
  reg reg151;
  wire[1:0] and175;
  reg[19:0] reg18; // v2935 - wrcache.h(58)
  wire add296;
  wire[1:0] proxy264; // v3099 - owners(0)
  wire[1:0] and256;
  wire[1:0] proxy219; // v3066 - owners(0)
  wire[19:0] proxy204; // v3055 - tag(0)
  wire[1:0] proxy208; // v3058 - owners(0)
  wire sel319; // wrcache.h(232)
  wire sel317; // wrcache.h(135)
  wire sel309; // wrcache.h(180)
  wire sel308; // wrcache.h(160)
  wire eq312;
  wire sel314; // wrcache.h(146)
  wire[1:0] and266;
  wire[1:0] or221;
  wire[1:0] proxy188; // v3044 - owners(0)
  wire eq205;
  wire ne211;
  wire ne178;
  wire eq180;
  wire sel320; // wrcache.h(226)
  wire sel318; // wrcache.h(121)
  wire sel310; // wrcache.h(146)
  wire and313;
  reg reg155;
  reg reg147;
  wire sel315; // wrcache.h(143)
  wire[19:0] proxy270; // v3104 - tag(0)
  wire ne259;
  wire[19:0] proxy78; // v2967 - tag(0)
  wire[19:0] proxy225; // v3071 - tag(0)
  wire[1:0] or190;
  wire eq293;
  wire ne237;
  wire ne230;
  wire[511:0] or216;
  reg sel321; // wrcache.h(119)
  wire sel311; // wrcache.h(143)
  wire[21:0] tag_t272; // v3105 - wrcache.h(204)
  wire[19:0] proxy246; // v3086 - tag(0)
  wire[21:0] tag_t234; // v3076 - wrcache.h(173)
  wire[21:0] tag_t227; // v3072 - wrcache.h(153)
  wire[19:0] proxy194; // v3049 - tag(0)
  wire eq299;
  wire[1:0] proxy240; // v3081 - owners(0)
  wire and213;
  reg reg159;
  wire and182;
  wire[511:0] or185;
  reg reg11; // v2932 - wrcache.h(58)
  wire sel343; // wrcache.h(201)
  wire[21:0] sel357; // wrcache.h(201)
  wire[21:0] tag_t248; // v3087 - wrcache.h(196)
  wire[21:0] sel355; // wrcache.h(146)
  wire[21:0] tag_t196; // v3050 - wrcache.h(129)
  wire eq362;
  wire and332;
  wire eq242;
  wire[2:0] sel326; // wrcache.h(180)
  wire[2:0] sel325; // wrcache.h(160)
  wire[511:0] sel347; // wrcache.h(146)
  wire and341;
  reg reg38; // v2946 - wrcache.h(58)
  reg reg169; // v3030 - wrcache.h(102)
  wire sel337; // wrcache.h(146)
  wire sel344; // wrcache.h(193)
  wire sel342; // wrcache.h(143)
  wire sel340; // wrcache.h(124)
  wire[21:0] sel358; // wrcache.h(193)
  wire[21:0] sel356; // wrcache.h(143)
  wire[21:0] sel354; // wrcache.h(124)
  wire[533:0] sel360; // wrcache.h(124)
  wire and363;
  wire[2:0] sel333; // wrcache.h(243)
  wire[2:0] sel331; // wrcache.h(235)
  wire[2:0] sel327; // wrcache.h(146)
  wire[2:0] sel323; // wrcache.h(135)
  wire[2:0] sel322; // wrcache.h(124)
  wire sel352; // wrcache.h(143)
  wire sel351; // wrcache.h(124)
  wire[511:0] sel348; // wrcache.h(143)
  wire[511:0] sel346; // wrcache.h(124)
  wire sel338; // wrcache.h(143)
  wire sel336; // wrcache.h(121)
  reg sel345; // wrcache.h(119)
  reg[21:0] sel359; // wrcache.h(119)
  wire[533:0] sel361; // wrcache.h(121)
  wire[2:0] sel334; // wrcache.h(226)
  wire[2:0] sel330; // wrcache.h(218)
  wire[2:0] sel329; // wrcache.h(193)
  wire[2:0] sel328; // wrcache.h(143)
  wire[2:0] sel324; // wrcache.h(121)
  reg sel353; // wrcache.h(119)
  reg[511:0] sel349; // wrcache.h(119)
  reg sel339; // wrcache.h(119)
  reg[21:0] mem1[0:1];
  wire[1:0] proxy280; // v3113 - owners(0)
  reg[2:0] sel335; // wrcache.h(119)
  reg[511:0] mem3[0:1];
  reg[533:0] reg87; // v2965 - wrcache.h(69)
  wire ne283;
  wire[19:0] proxy287; // v3119 - tag(0)
  reg[2:0] reg74; // v2962 - wrcache.h(68)
  wire[511:0] sel304; // wrcache.h(226)
  wire[19:0] sel302; // wrcache.h(226)
  wire[19:0] proxy277; // v3110 - tag(0)
  wire[1:0] proxy77; // v2966 - owner(0)
  wire sel306; // wrcache.h(226)
  wire eq162;
  reg[511:0] sel305; // wrcache.h(119)
  reg[19:0] sel303; // wrcache.h(119)
  wire[1:0] sel301; // wrcache.h(119)
  reg sel307; // wrcache.h(119)
  wire[533:0] io_evict_data55; // v2956 - wrcache.h(58)

  assign proxy123 = mem1[1'h1][1:0];
  assign and125 = proxy123 & io_enq_data[1:0];
  assign proxy101 = mem1[1'h1][1:0];
  assign proxy111 = mem1[1'h1][21:2];
  assign ne128 = and125 != 2'h0;
  assign ne105 = proxy101 != 2'h0;
  assign eq112 = proxy111 == io_enq_data[21:2];
  assign proxy137 = mem1[1'h0][1:0];
  assign sel131 = ne128 ? 1'h1 : 1'h0;
  assign sel350 = and313 ? reg147 : 1'h0;
  assign eq140 = proxy137 == 2'h0;
  assign and114 = eq112 & ne105;
  assign sel316 = and313 ? proxy78 : reg18;
  assign proxy173 = mem1[sel339][1:0];
  assign add290 = reg38 + 1'h1;
  assign sel143 = eq140 ? 1'h0 : 1'h1;
  assign sel117 = and114 ? 1'h1 : 1'h0;
  assign inv261 = ~proxy77;
  assign proxy254 = mem1[sel339][1:0];
  always @ (posedge clk) begin
    reg151 <= reset ? 1'h0 : sel131;
  end
  assign and175 = proxy173 & io_enq_data[1:0];
  always @ (posedge clk) begin
    reg18 <= reset ? 20'h0 : sel316;
  end
  assign add296 = reg38 + 1'h1;
  assign proxy264 = mem1[sel339][1:0];
  assign and256 = proxy254 & proxy77;
  assign proxy219 = mem1[sel339][1:0];
  assign proxy204 = mem1[sel350][21:2];
  assign proxy208 = mem1[sel350][1:0];
  assign sel319 = io_evict_ready ? add290 : reg38;
  assign sel317 = io_flush ? 1'h0 : reg38;
  assign sel309 = ne237 ? reg151 : reg169;
  assign sel308 = ne230 ? reg151 : reg169;
  assign eq312 = reg74 == 3'h1;
  assign sel314 = and213 ? reg147 : reg155;
  assign and266 = proxy264 & inv261;
  assign or221 = proxy219 | proxy77;
  assign proxy188 = mem1[sel339][1:0];
  assign eq205 = proxy204 == proxy78;
  assign ne211 = proxy208 != 2'h0;
  assign ne178 = and175 != 2'h0;
  assign eq180 = io_enq_data[21:2] == reg18;
  assign sel320 = ne283 ? sel319 : add296;
  assign sel318 = io_enq_valid ? reg38 : sel317;
  assign sel310 = and213 ? sel308 : sel309;
  assign and313 = eq312 & reg159;
  always @ (posedge clk) begin
    reg155 <= reset ? 1'h0 : sel143;
  end
  always @ (posedge clk) begin
    reg147 <= reset ? 1'h0 : sel117;
  end
  assign sel315 = and313 ? sel314 : reg11;
  assign proxy270 = mem1[sel339][21:2];
  assign ne259 = and256 != 2'h0;
  assign proxy78 = reg87[21:2];
  assign proxy225 = mem1[sel339][21:2];
  assign or190 = proxy188 | io_enq_data[1:0];
  assign eq293 = reg38 == 1'h1;
  assign ne237 = reg155 != reg151;
  assign ne230 = reg147 != reg151;
  assign or216 = mem3[sel339] | reg87[533:22];
  always @(*) begin
    case (reg74)
      3'h0: sel321 = sel318;
      3'h4: sel321 = sel320;
      default: sel321 = reg38;
    endcase
  end
  assign sel311 = and313 ? sel310 : reg169;
  assign tag_t272 = {proxy270, and266};
  assign proxy246 = mem1[sel339][21:2];
  assign tag_t234 = {proxy78, proxy77};
  assign tag_t227 = {proxy225, or221};
  assign proxy194 = mem1[sel339][21:2];
  assign eq299 = reg38 == 1'h1;
  assign proxy240 = mem1[sel339][1:0];
  assign and213 = ne211 & eq205;
  always @ (posedge clk) begin
    reg159 <= reset ? 1'h0 : io_enq_valid;
  end
  assign and182 = eq180 & ne178;
  assign or185 = mem3[sel339] | io_enq_data[533:22];
  always @ (posedge clk) begin
    reg11 <= reset ? 1'h0 : sel315;
  end
  assign sel343 = ne259 ? 1'h1 : 1'h0;
  assign sel357 = ne259 ? tag_t272 : 22'h0;
  assign tag_t248 = {proxy246, 2'h0};
  assign sel355 = and213 ? tag_t227 : tag_t234;
  assign tag_t196 = {proxy194, or190};
  assign eq362 = reg74 == 3'h0;
  assign and332 = io_evict_ready & eq293;
  assign eq242 = proxy240 == proxy77;
  assign sel326 = ne237 ? 3'h2 : 3'h0;
  assign sel325 = ne230 ? 3'h2 : 3'h0;
  assign sel347 = and213 ? or216 : reg87[533:22];
  assign and341 = io_enq_valid & and182;
  always @ (posedge clk) begin
    reg38 <= reset ? 1'h0 : sel321;
  end
  always @ (posedge clk) begin
    reg169 <= reset ? 1'h0 : sel311;
  end
  assign sel337 = and213 ? reg147 : reg155;
  assign sel344 = eq242 ? 1'h1 : sel343;
  assign sel342 = reg159 ? 1'h1 : 1'h0;
  assign sel340 = and341 ? 1'h1 : 1'h0;
  assign sel358 = eq242 ? tag_t248 : sel357;
  assign sel356 = reg159 ? sel355 : 22'h0;
  assign sel354 = and341 ? tag_t196 : 22'h0;
  assign sel360 = and182 ? reg87 : io_enq_data;
  assign and363 = eq362 & io_enq_valid;
  assign sel333 = eq299 ? 3'h0 : reg74;
  assign sel331 = and332 ? 3'h0 : reg74;
  assign sel327 = and213 ? sel325 : sel326;
  assign sel323 = io_flush ? 3'h4 : reg74;
  assign sel322 = and182 ? reg74 : 3'h1;
  assign sel352 = reg159 ? 1'h1 : 1'h0;
  assign sel351 = and341 ? 1'h1 : 1'h0;
  assign sel348 = reg159 ? sel347 : lit170;
  assign sel346 = and341 ? or185 : lit170;
  assign sel338 = reg159 ? sel337 : 1'h0;
  assign sel336 = io_enq_valid ? reg11 : 1'h0;
  always @(*) begin
    case (reg74)
      3'h0: sel345 = sel340;
      3'h1: sel345 = sel342;
      3'h2: sel345 = sel344;
      default: sel345 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg74)
      3'h0: sel359 = sel354;
      3'h1: sel359 = sel356;
      3'h2: sel359 = sel358;
      default: sel359 = 22'h0;
    endcase
  end
  assign sel361 = and363 ? sel360 : reg87;
  assign sel334 = ne283 ? sel331 : sel333;
  assign sel330 = io_evict_ready ? 3'h0 : reg74;
  assign sel329 = eq242 ? 3'h3 : 3'h0;
  assign sel328 = reg159 ? sel327 : reg74;
  assign sel324 = io_enq_valid ? sel322 : sel323;
  always @(*) begin
    case (reg74)
      3'h0: sel353 = sel351;
      3'h1: sel353 = sel352;
      default: sel353 = 1'h0;
    endcase
  end
  always @(*) begin
    case (reg74)
      3'h0: sel349 = sel346;
      3'h1: sel349 = sel348;
      default: sel349 = lit170;
    endcase
  end
  always @(*) begin
    case (reg74)
      3'h0: sel339 = sel336;
      3'h1: sel339 = sel338;
      3'h2: sel339 = reg169;
      3'h3: sel339 = reg169;
      3'h4: sel339 = reg38;
      default: sel339 = 1'h0;
    endcase
  end
  always @(posedge clk) begin
    if (sel345) begin
      mem1[sel339] = sel359;
    end
  end
  assign proxy280 = mem1[sel339][1:0];
  always @(*) begin
    case (reg74)
      3'h0: sel335 = sel324;
      3'h1: sel335 = sel328;
      3'h2: sel335 = sel329;
      3'h3: sel335 = sel330;
      3'h4: sel335 = sel334;
      default: sel335 = reg74;
    endcase
  end
  always @(posedge clk) begin
    if (sel353) begin
      mem3[sel339] = sel349;
    end
  end
  always @ (posedge clk) begin
    reg87 <= reset ? lit85 : sel361;
  end
  assign ne283 = proxy280 != 2'h0;
  assign proxy287 = mem1[sel339][21:2];
  always @ (posedge clk) begin
    reg74 <= reset ? 3'h0 : sel335;
  end
  assign sel304 = ne283 ? mem3[sel339] : lit170;
  assign sel302 = ne283 ? proxy287 : 20'h0;
  assign proxy277 = mem1[sel339][21:2];
  assign proxy77 = reg87[1:0];
  assign sel306 = ne283 ? 1'h1 : 1'h0;
  assign eq162 = reg74 == 3'h0;
  always @(*) begin
    case (reg74)
      3'h3: sel305 = mem3[sel339];
      3'h4: sel305 = sel304;
      default: sel305 = lit170;
    endcase
  end
  always @(*) begin
    case (reg74)
      3'h3: sel303 = proxy277;
      3'h4: sel303 = sel302;
      default: sel303 = 20'h0;
    endcase
  end
  assign sel301 = (reg74 == 3'h3) ? proxy77 : 2'h0;
  always @(*) begin
    case (reg74)
      3'h3: sel307 = 1'h1;
      3'h4: sel307 = sel306;
      default: sel307 = 1'h0;
    endcase
  end
  assign io_evict_data55 = {sel305, sel303, sel301};

  assign io_enq_ready = eq162;
  assign io_evict_valid = sel307;
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
  wire[533:0] lit379 = 534'h0;
  wire[511:0] lit423 = 512'h0;
  wire eq497;
  wire eq365;
  wire eq494;
  wire bindout283;
  wire eq359;
  wire[2:0] sel507; // lsu.cpp(166)
  wire[533:0] bindout262;
  wire bindout256;
  wire[2:0] bindout268;
  wire and367;
  wire[2:0] sel508; // lsu.cpp(165)
  wire eq516;
  wire sel501; // lsu.cpp(158)
  wire[511:0] sel505; // lsu.cpp(158)
  wire[19:0] sel504; // lsu.cpp(158)
  wire[1:0] sel503; // lsu.cpp(158)
  wire sel502; // lsu.cpp(158)
  wire[2:0] sel513; // lsu.cpp(207)
  wire[2:0] sel512; // lsu.cpp(200)
  wire[2:0] sel511; // lsu.cpp(191)
  wire[2:0] sel510; // lsu.cpp(179)
  wire[2:0] sel509; // lsu.cpp(160)
  wire or392;
  wire and517;
  wire[2:0] sel515; // lsu.cpp(160)
  wire[533:0] proxy276; // v3130 - /home/blaise/dev/cash/src/module.h(33)
  wire[39:0] proxy61; // v2460 - y(0)
  reg[2:0] sel514; // lsu.cpp(158)
  wire and388;
  wire[511:0] sel523; // lsu.cpp(160)
  wire[19:0] sel521; // lsu.cpp(160)
  wire[1:0] sel519; // lsu.cpp(160)
  wire[1:0] proxy289; // v3137 - owner(0)
  reg[19:0] sel492; // lsu.cpp(273)
  wire bindin298;
  wire bindin295;
  wire[533:0] bindin280;
  wire bindin274;
  wire bindin273;
  wire bindin272;
  wire[19:0] proxy63; // v2462 - masks(0)
  wire[19:0] proxy62; // v2461 - values(0)
  wire sel488; // lsu.cpp(114)
  wire[31:0] sel398;
  wire[533:0] bindout292;
  wire[533:0] ch_lsu_wr_req_t375; // v3180 - /home/blaise/dev/cash/src/seq.h(17)
  wire[2:0] proxy452; // v3219 - lsu.cpp(116)
  reg[2:0] reg387; // v3185 - lsu.cpp(82)
  reg[19:0] sel481; // lsu.cpp(273)
  reg[2:0] reg349; // v3162 - lsu.cpp(70)
  wire sel490; // lsu.cpp(127)
  wire sel489; // lsu.cpp(105)
  wire[39:0] proxy58; // v2457 - x(0)
  wire[131:0] proxy51; // v2450 - a(0)
  wire[31:0] sel399;
  wire[31:0] add470;
  reg[533:0] reg381; // v3176 - lsu.cpp(81)
  wire[4:0] ch_wr_mdata_t454; // v3220 - lsu.cpp(117)
  wire[1:0] proxy371; // v3177 - type(0)
  wire[19:0] add461;
  wire bindout286;
  reg sel491; // lsu.cpp(103)
  wire[2:0] bindout214;
  wire[22:0] bindout208;
  wire[19:0] proxy60; // v2459 - masks(0)
  wire[19:0] proxy59; // v2458 - values(0)
  wire[19:0] proxy57; // v2456 - values(0)
  wire[19:0] proxy56; // v2455 - row_ind(0)
  wire[19:0] proxy55; // v2454 - row_ptr(0)
  wire[19:0] proxy54; // v2453 - col_ind(0)
  wire[19:0] proxy53; // v2452 - col_ptr(0)
  wire eq362;
  wire eq301;
  wire eq467;
  wire[13:0] proxy465; // v3228 - lsu.cpp(120)
  wire[4:0] ch_wr_mdata_t435; // v3210 - lsu.cpp(107)
  wire[19:0] add443;
  wire sel506; // lsu.cpp(158)
  reg[19:0] sel332; // lsu.cpp(260)
  wire[31:0] sub432;
  wire[31:0] sub472;
  wire eq475;
  wire[511:0] sel482; // lsu.cpp(114)
  wire[13:0] sel485; // lsu.cpp(114)
  wire[13:0] proxy448; // v3217 - lsu.cpp(110)
  wire[19:0] sel478; // lsu.cpp(114)
  reg reg355; // v3165 - lsu.cpp(71)
  wire[2:0] proxy206; // v2709 - type(0)
  wire[2:0] proxy527; // v3241 - owner(0)
  wire and476;
  wire[511:0] sel483; // lsu.cpp(105)
  wire[13:0] sel486; // lsu.cpp(105)
  wire[19:0] sel479; // lsu.cpp(105)
  wire bindout203;
  wire[5:0] ch_rd_mdata_t336; // v3156 - lsu.cpp(55)
  wire[19:0] add333;
  wire eq539;
  wire eq534;
  wire[31:0] sel474; // lsu.cpp(127)
  wire eq529;
  wire bindin265;
  wire[533:0] bindin250;
  wire bindin244;
  wire[533:0] bindin238;
  wire bindin232;
  wire[533:0] bindin226;
  wire bindin220;
  wire bindin219;
  wire bindin218;
  wire bindin211;
  wire[22:0] bindin197;
  wire bindin192;
  wire[22:0] bindin186;
  wire bindin181;
  wire[22:0] bindin175;
  wire bindin170;
  wire bindin169;
  wire bindin167;
  wire sel477; // lsu.cpp(127)
  wire[511:0] sel484; // lsu.cpp(103)
  wire[13:0] sel487; // lsu.cpp(103)
  wire[19:0] sel480; // lsu.cpp(103)
  wire[13:0] proxy343; // v3161 - lsu.cpp(55)
  wire bindout241;
  wire bindout229;
  wire and541;
  wire bindout189;
  wire and536;
  wire bindout178;
  reg[31:0] reg406; // v3194 - lsu.cpp(91)
  wire[5:0] proxy525; // v3239 - lsu.cpp(229)
  wire and531;
  wire bindout253;
  wire bindout200;
  reg reg412; // v3197 - lsu.cpp(94)
  reg[511:0] reg425; // v3203 - lsu.cpp(96)
  reg[13:0] reg431; // v3206 - lsu.cpp(97)
  reg[19:0] reg418; // v3200 - lsu.cpp(95)
  reg reg308; // v3144 - lsu.cpp(47)
  reg[13:0] reg322; // v3150 - lsu.cpp(49)
  reg[19:0] reg315; // v3147 - lsu.cpp(48)
  wire[2:0] proxy526; // v3240 - type(0)
  wire[514:0] io_walkers_1_rd_rsp_data135; // v2496 - lsu.cpp(19)
  wire[514:0] io_walkers_0_rd_rsp_data116; // v2487 - lsu.cpp(19)
  wire[514:0] io_ctrl_rd_rsp_data94; // v2477 - lsu.cpp(19)

  assign eq497 = bindout268 == 3'h4;
  assign eq365 = sel506 == 1'h0;
  assign eq494 = bindout262[1:0] == 2'h1;
  assign eq359 = reg355 == 1'h0;
  assign sel507 = eq497 ? 3'h3 : 3'h2;
  assign and367 = eq359 & eq365;
  assign sel508 = eq494 ? sel507 : 3'h1;
  assign eq516 = reg349 == 3'h0;
  assign sel501 = (reg349 == 3'h3) ? 1'h1 : 1'h0;
  assign sel505 = (reg349 == 3'h2) ? reg381[533:22] : lit423;
  assign sel504 = (reg349 == 3'h2) ? reg381[21:2] : 20'h0;
  assign sel503 = (reg349 == 3'h2) ? reg387[1:0] : 2'h0;
  assign sel502 = (reg349 == 3'h2) ? 1'h1 : 1'h0;
  assign sel513 = bindout283 ? 3'h0 : reg349;
  assign sel512 = bindout283 ? 3'h4 : reg349;
  assign sel511 = bindout283 ? 3'h0 : reg349;
  assign sel510 = eq359 ? 3'h0 : reg349;
  assign sel509 = bindout256 ? sel508 : reg349;
  assign or392 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
  assign and517 = eq516 & bindout256;
  assign sel515 = and517 ? bindout268 : reg387;
  assign proxy276 = {sel505, sel504, sel503};
  assign proxy61 = io_ctx[211:172];
  always @(*) begin
    case (reg349)
      3'h0: sel514 = sel509;
      3'h1: sel514 = sel510;
      3'h2: sel514 = sel511;
      3'h3: sel514 = sel512;
      3'h4: sel514 = sel513;
      default: sel514 = reg349;
    endcase
  end
  assign and388 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
  assign sel523 = and517 ? bindout262[533:22] : reg381[533:22];
  assign sel521 = and517 ? bindout262[21:2] : reg381[21:2];
  assign sel519 = and517 ? bindout262[1:0] : reg381[1:0];
  assign proxy289 = bindout292[1:0];
  always @(*) begin
    case (2'h1)
      2'h0: sel492 = proxy62;
      2'h1: sel492 = proxy63;
      default: sel492 = io_ctx[231:212];
    endcase
  end
  assign bindin298 = sel501;
  assign bindin295 = and367;
  assign bindin280 = proxy276;
  assign bindin274 = sel502;
  assign bindin273 = reset;
  assign bindin272 = clk;
  assign proxy63 = proxy61[39:20];
  assign proxy62 = proxy61[19:0];
  assign sel488 = bindout286 ? 1'h1 : reg355;
  assign sel398 = or392 ? 32'h1 : 32'h0;
  assign ch_lsu_wr_req_t375 = {sel523, sel521, sel519};
  assign proxy452 = {1'h0, proxy289};
  always @ (posedge clk) begin
    reg387 <= reset ? 3'h0 : sel515;
  end
  spmv_write_cache __module28__(.clk(bindin272), .reset(bindin273), .io_enq_valid(bindin274), .io_enq_data(bindin280), .io_evict_ready(bindin295), .io_flush(bindin298), .io_enq_ready(bindout283), .io_evict_valid(bindout286), .io_evict_data(bindout292));
  always @(*) begin
    case (proxy371)
      2'h0: sel481 = proxy62;
      2'h1: sel481 = proxy63;
      default: sel481 = io_ctx[231:212];
    endcase
  end
  always @ (posedge clk) begin
    reg349 <= reset ? 3'h0 : sel514;
  end
  assign sel490 = eq467 ? 1'h0 : reg355;
  assign sel489 = sel506 ? 1'h1 : sel488;
  assign proxy58 = io_ctx[171:132];
  assign proxy51 = io_ctx[131:0];
  assign sel399 = and388 ? 32'h2 : sel398;
  assign add470 = reg406 + 32'h1;
  always @ (posedge clk) begin
    reg381 <= reset ? lit379 : ch_lsu_wr_req_t375;
  end
  assign ch_wr_mdata_t454 = {proxy452, 2'h1};
  assign proxy371 = reg381[1:0];
  assign add461 = sel492 + bindout292[21:2];
  always @(*) begin
    case (reg355)
      1'h0: sel491 = sel489;
      1'h1: sel491 = sel490;
      default: sel491 = reg355;
    endcase
  end
  assign proxy60 = proxy58[39:20];
  assign proxy59 = proxy58[19:0];
  assign proxy57 = proxy51[131:112];
  assign proxy56 = proxy51[111:92];
  assign proxy55 = proxy51[91:72];
  assign proxy54 = proxy51[71:52];
  assign proxy53 = proxy51[51:32];
  assign eq362 = reg349 == 3'h0;
  assign eq301 = io_qpi_rd_req_almostfull == 1'h0;
  assign eq467 = io_qpi_wr_req_almostfull == 1'h0;
  assign proxy465 = {9'h0, ch_wr_mdata_t454};
  assign ch_wr_mdata_t435 = {reg387, proxy371};
  assign add443 = sel481 + reg381[21:2];
  assign sel506 = (reg349 == 3'h1) ? 1'h1 : 1'h0;
  always @(*) begin
    case (proxy206)
      3'h0: sel332 = proxy53;
      3'h1: sel332 = proxy54;
      3'h2: sel332 = proxy55;
      3'h3: sel332 = proxy56;
      3'h4: sel332 = proxy57;
      3'h5: sel332 = proxy59;
      default: sel332 = proxy60;
    endcase
  end
  assign sub432 = reg406 - sel399;
  assign sub472 = add470 - sel399;
  assign eq475 = reg355 == 1'h1;
  assign sel482 = bindout286 ? bindout292[533:22] : reg425;
  assign sel485 = bindout286 ? proxy465 : reg431;
  assign proxy448 = {9'h0, ch_wr_mdata_t435};
  assign sel478 = bindout286 ? add461 : reg418;
  always @ (posedge clk) begin
    reg355 <= reset ? 1'h0 : sel491;
  end
  assign proxy206 = bindout208[2:0];
  assign proxy527 = proxy525[5:3];
  assign and476 = eq475 & eq467;
  assign sel483 = sel506 ? reg381[533:22] : sel482;
  assign sel486 = sel506 ? proxy448 : sel485;
  assign sel479 = sel506 ? add443 : sel478;
  assign ch_rd_mdata_t336 = {bindout214, proxy206};
  assign add333 = sel332 + bindout208[22:3];
  assign eq539 = proxy527 == 3'h2;
  assign eq534 = proxy527 == 3'h1;
  assign sel474 = and476 ? sub472 : sub432;
  assign eq529 = proxy527 == 3'h4;
  assign bindin265 = eq362;
  assign bindin250 = io_ctrl_wr_req_data;
  assign bindin244 = io_ctrl_wr_req_valid;
  assign bindin238 = io_PEs_1_wr_req_data;
  assign bindin232 = io_PEs_1_wr_req_valid;
  assign bindin226 = io_PEs_0_wr_req_data;
  assign bindin220 = io_PEs_0_wr_req_valid;
  assign bindin219 = reset;
  assign bindin218 = clk;
  assign bindin211 = eq301;
  assign bindin197 = io_ctrl_rd_req_data;
  assign bindin192 = io_ctrl_rd_req_valid;
  assign bindin186 = io_walkers_1_rd_req_data;
  assign bindin181 = io_walkers_1_rd_req_valid;
  assign bindin175 = io_walkers_0_rd_req_data;
  assign bindin170 = io_walkers_0_rd_req_valid;
  assign bindin169 = reset;
  assign bindin167 = clk;
  assign sel477 = and476 ? 1'h1 : 1'h0;
  assign sel484 = (reg355 == 1'h0) ? sel483 : reg425;
  assign sel487 = (reg355 == 1'h0) ? sel486 : reg431;
  assign sel480 = (reg355 == 1'h0) ? sel479 : reg418;
  assign proxy343 = {8'h0, ch_rd_mdata_t336};
  ch_xbar_switch_0 __module25__(.clk(bindin218), .reset(bindin219), .io_in_0_valid(bindin220), .io_in_0_data(bindin226), .io_in_1_valid(bindin232), .io_in_1_data(bindin238), .io_in_2_valid(bindin244), .io_in_2_data(bindin250), .io_out_ready(bindin265), .io_in_0_ready(bindout229), .io_in_1_ready(bindout241), .io_in_2_ready(bindout253), .io_out_valid(bindout256), .io_out_data(bindout262), .io_out_grant(bindout268));
  ch_xbar_switch __module22__(.clk(bindin167), .reset(bindin169), .io_in_0_valid(bindin170), .io_in_0_data(bindin175), .io_in_1_valid(bindin181), .io_in_1_data(bindin186), .io_in_2_valid(bindin192), .io_in_2_data(bindin197), .io_out_ready(bindin211), .io_in_0_ready(bindout178), .io_in_1_ready(bindout189), .io_in_2_ready(bindout200), .io_out_valid(bindout203), .io_out_data(bindout208), .io_out_grant(bindout214));
  assign and541 = io_qpi_rd_rsp_valid & eq539;
  assign and536 = io_qpi_rd_rsp_valid & eq534;
  always @ (posedge clk) begin
    reg406 <= reset ? 32'h0 : sel474;
  end
  assign proxy525 = io_qpi_rd_rsp_mdata[5:0];
  assign and531 = io_qpi_rd_rsp_valid & eq529;
  always @ (posedge clk) begin
    reg412 <= reset ? 1'h0 : sel477;
  end
  always @ (posedge clk) begin
    reg425 <= reset ? lit423 : sel484;
  end
  always @ (posedge clk) begin
    reg431 <= reset ? 14'h0 : sel487;
  end
  always @ (posedge clk) begin
    reg418 <= reset ? 20'h0 : sel480;
  end
  always @ (posedge clk) begin
    reg308 <= reset ? 1'h0 : bindout203;
  end
  always @ (posedge clk) begin
    reg322 <= reset ? 14'h0 : proxy343;
  end
  always @ (posedge clk) begin
    reg315 <= reset ? 20'h0 : add333;
  end
  assign proxy526 = proxy525[2:0];
  assign io_walkers_1_rd_rsp_data135 = {io_qpi_rd_rsp_data, proxy526};
  assign io_walkers_0_rd_rsp_data116 = {io_qpi_rd_rsp_data, proxy526};
  assign io_ctrl_rd_rsp_data94 = {io_qpi_rd_rsp_data, proxy526};

  assign io_qpi_rd_req_addr = reg315;
  assign io_qpi_rd_req_mdata = reg322;
  assign io_qpi_rd_req_valid = reg308;
  assign io_qpi_wr_req_addr = reg418;
  assign io_qpi_wr_req_mdata = reg431;
  assign io_qpi_wr_req_data = reg425;
  assign io_qpi_wr_req_valid = reg412;
  assign io_ctrl_rd_req_ready = bindout200;
  assign io_ctrl_wr_req_ready = bindout253;
  assign io_ctrl_rd_rsp_valid = and531;
  assign io_ctrl_rd_rsp_data = io_ctrl_rd_rsp_data94;
  assign io_ctrl_outstanding_writes = reg406;
  assign io_walkers_0_rd_req_ready = bindout178;
  assign io_walkers_0_rd_rsp_valid = and536;
  assign io_walkers_0_rd_rsp_data = io_walkers_0_rd_rsp_data116;
  assign io_walkers_1_rd_req_ready = bindout189;
  assign io_walkers_1_rd_rsp_valid = and541;
  assign io_walkers_1_rd_rsp_data = io_walkers_1_rd_rsp_data135;
  assign io_PEs_0_wr_req_ready = bindout229;
  assign io_PEs_1_wr_req_ready = bindout241;

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
  wire[2:0] add47;
  wire and41;
  wire[2:0] add52;
  wire[2:0] sel49;
  wire[2:0] sel54;
  wire and43;
  wire[1:0] proxy40; // v3343 - /home/blaise/dev/cash/src/htl/queue.h(28)
  reg[2:0] reg30; // v3336 - /home/blaise/dev/cash/src/htl/queue.h(25)
  reg[2:0] reg36; // v3339 - /home/blaise/dev/cash/src/htl/queue.h(25)
  wire eq65;
  wire ne67;
  wire[1:0] proxy38; // v3342 - /home/blaise/dev/cash/src/htl/queue.h(27)
  reg[511:0] mem56[0:3];
  wire[2:0] sub71;
  wire ne61;
  wire or69;

  assign add47 = reg30 + 3'h1;
  assign and41 = io_deq_ready & ne61;
  assign add52 = reg36 + 3'h1;
  assign sel49 = and41 ? add47 : reg30;
  assign sel54 = and43 ? add52 : reg36;
  assign and43 = io_enq_valid & or69;
  assign proxy40 = reg36[1:0];
  always @ (posedge clk) begin
    reg30 <= reset ? 3'h0 : sel49;
  end
  always @ (posedge clk) begin
    reg36 <= reset ? 3'h0 : sel54;
  end
  assign eq65 = reg36[2] == reg30[2];
  assign ne67 = proxy40 != proxy38;
  assign proxy38 = reg30[1:0];
  always @(posedge clk) begin
    if (and43) begin
      mem56[proxy40] = io_enq_data;
    end
  end
  assign sub71 = reg36 - reg30;
  assign ne61 = reg36 != reg30;
  assign or69 = ne67 | eq65;

  assign io_enq_ready = or69;
  assign io_deq_valid = ne61;
  assign io_deq_data = mem56[proxy38];
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
  wire[543:0] lit468 = 544'h0;
  wire[95:0] lit515 = 96'h0;
  wire[63:0] lit542 = 64'h0;
  wire[63:0] lit545 = 64'h1;
  wire[511:0] lit614 = 512'h0;
  wire[415:0] lit649 = 416'h0;
  wire[543:0] lit764 = 544'h20;
  wire[19:0] sub536;
  wire[31:0] add595;
  wire[4:0] sub800;
  wire[4:0] sub776;
  wire eq564;
  wire bindout369;
  wire[4:0] sel817; // spmv.cpp(197)
  wire[31:0] sll599;
  wire[514:0] bindout374;
  wire[4:0] sel820; // spmv.cpp(214)
  wire[4:0] sel819; // spmv.cpp(214)
  wire[4:0] sel818; // spmv.cpp(195)
  reg[19:0] reg531; // v3399 - spmv.cpp(15)
  wire and566;
  reg[4:0] sel821; // spmv.cpp(192)
  wire[31:0] add603;
  wire ne803;
  wire ne780;
  wire ne782;
  reg[4:0] reg477; // v3371 - spmv.cpp(15)
  wire[2:0] proxy349; // v3285 - type(0)
  wire[31:0] srl607;
  wire bindin460;
  wire[511:0] bindin448;
  wire bindin445;
  wire bindin444;
  wire bindin443;
  wire and806;
  wire and784;
  wire eq573;
  wire and575;
  wire bindout238;
  wire[19:0] add797;
  wire[19:0] add772;
  wire[543:0] srl791;
  wire[543:0] srl766;
  wire[511:0] bindout457;
  wire eq750;
  wire bindout454;
  wire[1:0] sel827; // spmv.cpp(233)
  wire[1:0] sel825; // spmv.cpp(233)
  wire eq849;
  wire and577;
  wire and586;
  wire[19:0] sel809; // spmv.cpp(214)
  wire[19:0] sel808; // spmv.cpp(214)
  wire[19:0] sub612;
  wire[31:0] sel843; // spmv.cpp(197)
  wire[479:0] sel837; // spmv.cpp(197)
  wire and832;
  wire[1:0] sel828; // spmv.cpp(214)
  wire[1:0] sel826; // spmv.cpp(214)
  wire[1:0] sel824; // spmv.cpp(195)
  wire and850;
  reg[19:0] sel810; // spmv.cpp(192)
  wire[31:0] sel846; // spmv.cpp(214)
  wire[31:0] sel845; // spmv.cpp(214)
  wire[31:0] sel844; // spmv.cpp(195)
  wire[479:0] sel840; // spmv.cpp(214)
  wire[479:0] sel839; // spmv.cpp(214)
  wire[479:0] sel838; // spmv.cpp(195)
  wire[31:0] sel834; // spmv.cpp(214)
  wire[31:0] sel833; // spmv.cpp(214)
  wire[31:0] sel831; // spmv.cpp(197)
  reg[1:0] sel829; // spmv.cpp(192)
  wire[31:0] add631;
  wire sel848; // spmv.cpp(195)
  wire[31:0] proxy581; // v3426 - spmv.cpp(68)
  wire bindout274;
  wire and589;
  reg[31:0] sel847; // spmv.cpp(192)
  reg[479:0] sel841; // spmv.cpp(192)
  reg[31:0] sel835; // spmv.cpp(192)
  wire[31:0] add634;
  wire[31:0] add582;
  wire[19:0] proxy533; // v3402 - spmv.cpp(32)
  reg[19:0] reg525; // v3396 - spmv.cpp(15)
  reg[19:0] reg497; // v3380 - spmv.cpp(15)
  wire[63:0] add547;
  wire[543:0] proxy467; // v3369 - /home/blaise/dev/cash/src/seq.h(17)
  reg[1:0] reg748; // v3507 - spmv.cpp(181)
  wire[31:0] sel724; // spmv.cpp(114)
  wire[31:0] proxy571; // v3420 - spmv.cpp(69)
  wire and591;
  wire bindout153;
  reg[543:0] reg470; // v3368 - spmv.cpp(15)
  wire bindout89;
  wire[31:0] sel725; // spmv.cpp(111)
  wire[31:0] sub584;
  wire eq636;
  wire eq627;
  wire eq812;
  wire eq815;
  wire[63:0] bindout271;
  wire[351:0] bindout170;
  wire[63:0] bindout235;
  wire[351:0] bindout106;
  wire[31:0] sel726; // spmv.cpp(96)
  wire[1:0] add701;
  wire eq711;
  wire bindout354;
  wire eq704;
  wire bindout439;
  wire[84:0] bindout199;
  wire bindout192;
  wire bindout427;
  wire[84:0] bindout135;
  wire bindout128;
  wire bindout254;
  wire[514:0] bindout415;
  wire bindout410;
  wire bindout407;
  wire and813;
  wire bindout218;
  wire[514:0] bindout396;
  wire bindout391;
  wire bindout388;
  reg[63:0] reg544; // v3405 - spmv.cpp(36)
  wire and816;
  wire[95:0] ch_ctrl_stats_t511; // v3390 - /home/blaise/dev/cash/src/seq.h(17)
  wire and712;
  wire[19:0] add625;
  wire bindout366;
  wire and638;
  wire and729;
  wire[63:0] sel811; // spmv.cpp(214)
  wire sel822; // spmv.cpp(214)
  wire[63:0] sel823; // spmv.cpp(214)
  wire sel814; // spmv.cpp(214)
  wire[415:0] ch_stats_t676; // v3482 - spmv.cpp(267)
  wire[415:0] ch_stats_t655; // v3463 - spmv.cpp(262)
  reg[95:0] reg517; // v3386 - spmv.cpp(15)
  wire[1:0] sel710; // spmv.cpp(153)
  wire and721;
  reg[31:0] reg484; // v3374 - spmv.cpp(15)
  wire[131:0] proxy51; // v18 - a(0)
  wire and734;
  wire and730;
  wire and719;
  wire[511:0] proxy694; // v3499 - spmv.cpp(270)
  wire[511:0] proxy673; // v3480 - spmv.cpp(265)
  wire eq695;
  wire[19:0] sel720; // spmv.cpp(114)
  wire[19:0] sel718; // spmv.cpp(99)
  wire[31:0] bindout377;
  wire[31:0] proxy52; // v19 - num_parts(0)
  wire[2:0] sel735; // spmv.cpp(163)
  wire[2:0] sel733; // spmv.cpp(155)
  wire[2:0] sel732; // spmv.cpp(141)
  wire[2:0] sel731; // spmv.cpp(131)
  wire[2:0] sel728; // spmv.cpp(116)
  wire[2:0] sel727; // spmv.cpp(99)
  wire bindin266;
  wire[84:0] bindin251;
  wire bindin244;
  wire bindin243;
  wire bindin242;
  wire bindin230;
  wire[84:0] bindin215;
  wire bindin208;
  wire bindin207;
  wire bindin206;
  wire bindin202;
  wire[514:0] bindin189;
  wire bindin184;
  wire bindin181;
  wire[63:0] bindin156;
  wire[63:0] bindin150;
  wire bindin144;
  wire bindin143;
  wire bindin142;
  wire bindin138;
  wire[514:0] bindin125;
  wire bindin120;
  wire bindin117;
  wire[63:0] bindin92;
  wire[63:0] bindin86;
  wire bindin80;
  wire bindin79;
  wire bindin77;
  wire[511:0] sel696;
  wire[511:0] proxy652; // v3461 - spmv.cpp(260)
  wire eq697;
  reg[1:0] reg504; // v3383 - spmv.cpp(15)
  reg[19:0] sel722; // spmv.cpp(96)
  wire ne622;
  wire ne616;
  reg[2:0] sel736; // spmv.cpp(96)
  wire[511:0] sel698;
  wire eq738;
  wire eq708;
  wire[533:0] bindout263;
  wire bindout257;
  wire[533:0] bindout227;
  wire bindout221;
  wire[22:0] bindout178;
  wire bindout173;
  wire[22:0] bindout114;
  wire bindout109;
  wire[19:0] proxy647; // v3458 - spmv.cpp(149)
  reg[19:0] reg491; // v3377 - spmv.cpp(15)
  wire and739;
  wire sel714; // spmv.cpp(99)
  reg[2:0] reg555; // v3410 - spmv.cpp(54)
  wire[511:0] sel742; // spmv.cpp(96)
  wire[19:0] sel741; // spmv.cpp(96)
  reg[1:0] sel740; // spmv.cpp(96)
  reg sel713; // spmv.cpp(96)
  wire sel737; // spmv.cpp(111)
  wire sel716; // spmv.cpp(163)
  wire sel715; // spmv.cpp(98)
  wire[533:0] proxy359; // v3289 - /home/blaise/dev/cash/src/module.h(33)
  wire[22:0] proxy348; // v3284 - /home/blaise/dev/cash/src/module.h(33)
  reg sel717; // spmv.cpp(96)
  wire[533:0] bindin436;
  wire bindin430;
  wire[533:0] bindin424;
  wire bindin418;
  wire[22:0] bindin404;
  wire bindin399;
  wire[22:0] bindin385;
  wire bindin380;
  wire[533:0] bindin363;
  wire bindin357;
  wire[22:0] bindin351;
  wire bindin346;
  wire[511:0] bindin343;
  wire bindin325;
  wire[13:0] bindin322;
  wire bindin319;
  wire[13:0] bindin316;
  wire bindin301;
  wire bindin298;
  wire[511:0] bindin295;
  wire[13:0] bindin292;
  wire bindin280;
  wire bindin279;
  wire bindin278;
  reg reg562; // v3413 - spmv.cpp(57)
  wire bindout313;
  wire[511:0] bindout310;
  wire[13:0] bindout307;
  wire[19:0] bindout304;
  wire bindout289;
  wire[13:0] bindout286;
  wire[19:0] bindout283;

  assign sub536 = proxy533 - 20'h1;
  assign add595 = proxy52 + 32'h1;
  assign sub800 = reg477 - 5'h1;
  assign sub776 = reg477 - 5'h1;
  assign eq564 = bindout374[2:0] == 3'h0;
  assign sel817 = eq750 ? 5'h80 : 5'h81;
  assign sll599 = add595 << 32'h2;
  assign sel820 = bindout153 ? sub800 : reg477;
  assign sel819 = bindout89 ? sub776 : reg477;
  assign sel818 = bindout454 ? sel817 : reg477;
  always @ (posedge clk) begin
    reg531 <= reset ? 20'h0 : sub536;
  end
  assign and566 = bindout369 & eq564;
  always @(*) begin
    case (reg748)
      2'h0: sel821 = sel818;
      2'h1: sel821 = sel819;
      2'h2: sel821 = sel820;
      default: sel821 = reg477;
    endcase
  end
  assign add603 = sll599 + 32'h3f;
  assign ne803 = reg477 != 5'h10;
  assign ne780 = reg477 != 5'h10;
  assign ne782 = reg525 != reg531;
  always @ (posedge clk) begin
    reg477 <= reset ? 5'h0 : sel821;
  end
  assign proxy349 = proxy348[2:0];
  assign srl607 = add603 >> 32'h6;
  assign bindin460 = sel848;
  assign bindin448 = bindout374[514:3];
  assign bindin445 = and566;
  assign bindin444 = reset;
  assign bindin443 = clk;
  assign and806 = ne782 & ne803;
  assign and784 = ne782 & ne780;
  assign eq573 = proxy349 == 3'h0;
  assign and575 = sel737 & bindout354;
  assign add797 = reg525 + 20'h1;
  assign add772 = reg525 + 20'h1;
  ch_queue_1 __module29__(.clk(bindin443), .reset(bindin444), .io_enq_valid(bindin445), .io_enq_data(bindin448), .io_deq_ready(bindin460), .io_deq_valid(bindout454), .io_deq_data(bindout457));
  assign srl791 = reg470 >> lit764;
  assign srl766 = reg470 >> lit764;
  assign eq750 = 5'h0 == reg477;
  assign sel827 = and806 ? 2'h1 : 2'h0;
  assign sel825 = and784 ? 2'h2 : 2'h0;
  assign eq849 = reg748 == 2'h0;
  assign and577 = and575 & eq573;
  assign and586 = bindout89 & bindout238;
  assign sel809 = bindout153 ? add797 : reg525;
  assign sel808 = bindout89 ? add772 : reg525;
  assign sub612 = srl607[19:0] - 20'h1;
  assign sel843 = eq750 ? reg470[543:512] : bindout457[511:480];
  assign sel837 = eq750 ? bindout457[511:32] : bindout457[479:0];
  assign and832 = bindout454 & eq750;
  assign sel828 = bindout153 ? sel827 : 2'h1;
  assign sel826 = bindout89 ? sel825 : 2'h2;
  assign sel824 = bindout454 ? 2'h1 : reg748;
  assign and850 = eq849 & bindout454;
  always @(*) begin
    case (reg748)
      2'h1: sel810 = sel808;
      2'h2: sel810 = sel809;
      default: sel810 = reg525;
    endcase
  end
  assign sel846 = bindout153 ? srl791[543:512] : reg470[543:512];
  assign sel845 = bindout89 ? srl766[543:512] : reg470[543:512];
  assign sel844 = bindout454 ? sel843 : reg470[543:512];
  assign sel840 = bindout153 ? srl791[511:32] : reg470[511:32];
  assign sel839 = bindout89 ? srl766[511:32] : reg470[511:32];
  assign sel838 = bindout454 ? sel837 : reg470[511:32];
  assign sel834 = bindout153 ? srl791[31:0] : reg470[31:0];
  assign sel833 = bindout89 ? srl766[31:0] : reg470[31:0];
  assign sel831 = and832 ? bindout457[31:0] : reg470[31:0];
  always @(*) begin
    case (reg748)
      2'h0: sel829 = sel824;
      2'h1: sel829 = sel826;
      2'h2: sel829 = sel828;
      default: sel829 = reg748;
    endcase
  end
  assign add631 = reg517[31:0] + 32'h1;
  assign sel848 = and850 ? 1'h1 : 1'h0;
  assign proxy581 = {31'h0, and577};
  assign and589 = and586 & bindout153;
  always @(*) begin
    case (reg748)
      2'h0: sel847 = sel844;
      2'h1: sel847 = sel845;
      2'h2: sel847 = sel846;
      default: sel847 = reg470[543:512];
    endcase
  end
  always @(*) begin
    case (reg748)
      2'h0: sel841 = sel838;
      2'h1: sel841 = sel839;
      2'h2: sel841 = sel840;
      default: sel841 = reg470[511:32];
    endcase
  end
  always @(*) begin
    case (reg748)
      2'h0: sel835 = sel831;
      2'h1: sel835 = sel833;
      2'h2: sel835 = sel834;
      default: sel835 = reg470[31:0];
    endcase
  end
  assign add634 = reg517[31:0] + 32'h1;
  assign add582 = reg484 + proxy581;
  assign proxy533 = proxy52[19:0];
  always @ (posedge clk) begin
    reg525 <= reset ? 20'h0 : sel810;
  end
  always @ (posedge clk) begin
    reg497 <= reset ? 20'h0 : sub612;
  end
  assign add547 = reg544 + lit545;
  assign proxy467 = {sel847, sel841, sel835};
  always @ (posedge clk) begin
    reg748 <= reset ? 2'h0 : sel829;
  end
  assign sel724 = bindout354 ? reg517[31:0] : add631;
  assign proxy571 = {31'h0, sel848};
  assign and591 = and589 & bindout274;
  always @ (posedge clk) begin
    reg470 <= reset ? lit468 : proxy467;
  end
  assign sel725 = ne622 ? sel724 : add634;
  assign sub584 = add582 - proxy571;
  assign eq636 = reg525 == proxy533;
  assign eq627 = reg491 == reg497;
  assign eq812 = reg748 == 2'h2;
  assign eq815 = reg748 == 2'h1;
  assign sel726 = (reg555 == 3'h1) ? sel725 : reg517[31:0];
  assign add701 = reg504 + 2'h1;
  assign eq711 = reg555 == 3'h4;
  assign eq704 = reg504 == 2'h2;
  assign and813 = eq812 & bindout153;
  always @ (posedge clk) begin
    reg544 <= reset ? lit542 : add547;
  end
  assign and816 = eq815 & bindout89;
  assign ch_ctrl_stats_t511 = {reg517[95:32], sel726};
  assign and712 = eq711 & bindout366;
  assign add625 = reg491 + 20'h1;
  assign and638 = eq636 & and591;
  assign and729 = bindout354 & eq627;
  assign sel811 = and813 ? reg470[63:0] : lit542;
  assign sel822 = and813 ? 1'h1 : 1'h0;
  assign sel823 = and816 ? reg470[63:0] : lit542;
  assign sel814 = and816 ? 1'h1 : 1'h0;
  assign ch_stats_t676 = {bindout271, bindout170};
  assign ch_stats_t655 = {bindout235, bindout106};
  always @ (posedge clk) begin
    reg517 <= reset ? lit515 : ch_ctrl_stats_t511;
  end
  assign sel710 = and712 ? add701 : reg504;
  assign and721 = ne622 & bindout354;
  always @ (posedge clk) begin
    reg484 <= reset ? 32'h0 : sub584;
  end
  assign proxy51 = io_ctx[131:0];
  assign and734 = bindout366 & eq704;
  assign and730 = ne622 & and729;
  assign and719 = io_start & ne616;
  assign proxy694 = {lit515, ch_stats_t676};
  assign proxy673 = {lit515, ch_stats_t655};
  assign eq695 = reg504 == 2'h1;
  assign sel720 = and721 ? add625 : reg491;
  assign sel718 = and719 ? 20'h0 : reg491;
  assign proxy52 = proxy51[31:0];
  assign sel735 = eq708 ? 3'h0 : reg555;
  assign sel733 = and734 ? 3'h5 : reg555;
  assign sel732 = bindout366 ? 3'h4 : reg555;
  assign sel731 = and638 ? 3'h3 : reg555;
  assign sel728 = and730 ? 3'h2 : reg555;
  assign sel727 = and719 ? 3'h1 : reg555;
  assign bindin266 = bindout439;
  assign bindin251 = bindout199;
  assign bindin244 = bindout192;
  assign bindin243 = reset;
  assign bindin242 = clk;
  assign bindin230 = bindout427;
  assign bindin215 = bindout135;
  assign bindin208 = bindout128;
  assign bindin207 = reset;
  assign bindin206 = clk;
  assign bindin202 = bindout254;
  assign bindin189 = bindout415;
  assign bindin184 = bindout410;
  assign bindin181 = bindout407;
  assign bindin156 = reg544;
  assign bindin150 = sel811;
  assign bindin144 = sel822;
  assign bindin143 = reset;
  assign bindin142 = clk;
  assign bindin138 = bindout218;
  assign bindin125 = bindout396;
  assign bindin120 = bindout391;
  assign bindin117 = bindout388;
  assign bindin92 = reg544;
  assign bindin86 = sel823;
  assign bindin80 = sel814;
  assign bindin79 = reset;
  assign bindin77 = clk;
  assign sel696 = eq695 ? proxy673 : proxy694;
  assign proxy652 = {lit649, reg517};
  assign eq697 = reg504 == 2'h0;
  always @ (posedge clk) begin
    reg504 <= reset ? 2'h0 : sel710;
  end
  always @(*) begin
    case (reg555)
      3'h0: sel722 = sel718;
      3'h1: sel722 = sel720;
      default: sel722 = reg491;
    endcase
  end
  assign ne622 = reg484 != 32'h4;
  assign ne616 = proxy52 != 32'h0;
  always @(*) begin
    case (reg555)
      3'h0: sel736 = sel727;
      3'h1: sel736 = sel728;
      3'h2: sel736 = sel731;
      3'h3: sel736 = sel732;
      3'h4: sel736 = sel733;
      3'h5: sel736 = sel735;
      default: sel736 = reg555;
    endcase
  end
  spmv_pe __module18__(.clk(bindin242), .reset(bindin243), .io_req_valid(bindin244), .io_req_data(bindin251), .io_lsu_wr_req_ready(bindin266), .io_req_ready(bindout254), .io_lsu_wr_req_valid(bindout257), .io_lsu_wr_req_data(bindout263), .io_stats(bindout271), .io_is_idle(bindout274));
  spmv_pe __module15__(.clk(bindin206), .reset(bindin207), .io_req_valid(bindin208), .io_req_data(bindin215), .io_lsu_wr_req_ready(bindin230), .io_req_ready(bindout218), .io_lsu_wr_req_valid(bindout221), .io_lsu_wr_req_data(bindout227), .io_stats(bindout235), .io_is_idle(bindout238));
  spmv_dcsc_walk __module8__(.clk(bindin142), .reset(bindin143), .io_ctrl_start_valid(bindin144), .io_ctrl_start_data(bindin150), .io_ctrl_timer(bindin156), .io_lsu_rd_req_ready(bindin181), .io_lsu_rd_rsp_valid(bindin184), .io_lsu_rd_rsp_data(bindin189), .io_pe_ready(bindin202), .io_ctrl_start_ready(bindout153), .io_ctrl_stats(bindout170), .io_lsu_rd_req_valid(bindout173), .io_lsu_rd_req_data(bindout178), .io_pe_valid(bindout192), .io_pe_data(bindout199));
  spmv_dcsc_walk __module1__(.clk(bindin77), .reset(bindin79), .io_ctrl_start_valid(bindin80), .io_ctrl_start_data(bindin86), .io_ctrl_timer(bindin92), .io_lsu_rd_req_ready(bindin117), .io_lsu_rd_rsp_valid(bindin120), .io_lsu_rd_rsp_data(bindin125), .io_pe_ready(bindin138), .io_ctrl_start_ready(bindout89), .io_ctrl_stats(bindout106), .io_lsu_rd_req_valid(bindout109), .io_lsu_rd_req_data(bindout114), .io_pe_valid(bindout128), .io_pe_data(bindout135));
  assign sel698 = eq697 ? proxy652 : sel696;
  assign eq738 = reg555 == 3'h1;
  assign eq708 = bindout377 == 32'h0;
  assign proxy647 = {18'h0, reg504};
  always @ (posedge clk) begin
    reg491 <= reset ? 20'h0 : sel722;
  end
  assign and739 = eq738 & ne622;
  assign sel714 = ne616 ? 1'h0 : 1'h1;
  always @ (posedge clk) begin
    reg555 <= reset ? 3'h0 : sel736;
  end
  assign sel742 = (reg555 == 3'h4) ? sel698 : lit614;
  assign sel741 = (reg555 == 3'h4) ? proxy647 : 20'h0;
  always @(*) begin
    case (reg555)
      3'h3: sel740 = 2'h1;
      3'h4: sel740 = 2'h2;
      default: sel740 = 2'h0;
    endcase
  end
  always @(*) begin
    case (reg555)
      3'h3: sel713 = 1'h1;
      3'h4: sel713 = 1'h1;
      default: sel713 = 1'h0;
    endcase
  end
  assign sel737 = and739 ? 1'h1 : 1'h0;
  assign sel716 = eq708 ? 1'h1 : reg562;
  assign sel715 = io_start ? sel714 : reg562;
  assign proxy359 = {sel742, sel741, sel740};
  assign proxy348 = {reg491, 3'h0};
  always @(*) begin
    case (reg555)
      3'h0: sel717 = sel715;
      3'h5: sel717 = sel716;
      default: sel717 = reg562;
    endcase
  end
  assign bindin436 = bindout263;
  assign bindin430 = bindout257;
  assign bindin424 = bindout227;
  assign bindin418 = bindout221;
  assign bindin404 = bindout178;
  assign bindin399 = bindout173;
  assign bindin385 = bindout114;
  assign bindin380 = bindout109;
  assign bindin363 = proxy359;
  assign bindin357 = sel713;
  assign bindin351 = proxy348;
  assign bindin346 = sel737;
  assign bindin343 = io_ctx;
  assign bindin325 = io_qpi_wr_rsp1_valid;
  assign bindin322 = io_qpi_wr_rsp1_mdata;
  assign bindin319 = io_qpi_wr_rsp0_valid;
  assign bindin316 = io_qpi_wr_rsp0_mdata;
  assign bindin301 = io_qpi_wr_req_almostfull;
  assign bindin298 = io_qpi_rd_rsp_valid;
  assign bindin295 = io_qpi_rd_rsp_data;
  assign bindin292 = io_qpi_rd_rsp_mdata;
  assign bindin280 = io_qpi_rd_req_almostfull;
  assign bindin279 = reset;
  assign bindin278 = clk;
  spmv_lsu __module21__(.clk(bindin278), .reset(bindin279), .io_qpi_rd_req_almostfull(bindin280), .io_qpi_rd_rsp_mdata(bindin292), .io_qpi_rd_rsp_data(bindin295), .io_qpi_rd_rsp_valid(bindin298), .io_qpi_wr_req_almostfull(bindin301), .io_qpi_wr_rsp0_mdata(bindin316), .io_qpi_wr_rsp0_valid(bindin319), .io_qpi_wr_rsp1_mdata(bindin322), .io_qpi_wr_rsp1_valid(bindin325), .io_ctx(bindin343), .io_ctrl_rd_req_valid(bindin346), .io_ctrl_rd_req_data(bindin351), .io_ctrl_wr_req_valid(bindin357), .io_ctrl_wr_req_data(bindin363), .io_walkers_0_rd_req_valid(bindin380), .io_walkers_0_rd_req_data(bindin385), .io_walkers_1_rd_req_valid(bindin399), .io_walkers_1_rd_req_data(bindin404), .io_PEs_0_wr_req_valid(bindin418), .io_PEs_0_wr_req_data(bindin424), .io_PEs_1_wr_req_valid(bindin430), .io_PEs_1_wr_req_data(bindin436), .io_qpi_rd_req_addr(bindout283), .io_qpi_rd_req_mdata(bindout286), .io_qpi_rd_req_valid(bindout289), .io_qpi_wr_req_addr(bindout304), .io_qpi_wr_req_mdata(bindout307), .io_qpi_wr_req_data(bindout310), .io_qpi_wr_req_valid(bindout313), .io_ctrl_rd_req_ready(bindout354), .io_ctrl_wr_req_ready(bindout366), .io_ctrl_rd_rsp_valid(bindout369), .io_ctrl_rd_rsp_data(bindout374), .io_ctrl_outstanding_writes(bindout377), .io_walkers_0_rd_req_ready(bindout388), .io_walkers_0_rd_rsp_valid(bindout391), .io_walkers_0_rd_rsp_data(bindout396), .io_walkers_1_rd_req_ready(bindout407), .io_walkers_1_rd_rsp_valid(bindout410), .io_walkers_1_rd_rsp_data(bindout415), .io_PEs_0_wr_req_ready(bindout427), .io_PEs_1_wr_req_ready(bindout439));
  always @ (posedge clk) begin
    reg562 <= reset ? 1'h0 : sel717;
  end

  assign io_qpi_rd_req_addr = bindout283;
  assign io_qpi_rd_req_mdata = bindout286;
  assign io_qpi_rd_req_valid = bindout289;
  assign io_qpi_wr_req_addr = bindout304;
  assign io_qpi_wr_req_mdata = bindout307;
  assign io_qpi_wr_req_data = bindout310;
  assign io_qpi_wr_req_valid = bindout313;
  assign io_done = reg562;

endmodule
