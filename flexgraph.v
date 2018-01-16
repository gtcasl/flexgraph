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
    wire io_enq_ready8; // #112 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #113 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #114 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[1:0] io_size20; // #116 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[1:0] proxy23; // #117 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy25; // #118 /home/blaise/dev/cash/src/seq.h(17)
    reg[1:0] reg30; // #117 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy32; // #120 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy34; // #121 /home/blaise/dev/cash/src/seq.h(17)
    reg[1:0] reg36; // #120 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire proxy38; // #123 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire proxy40; // #124 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[1:0] add47;
    wire[1:0] sel49;
    wire[1:0] proxy50; // #129 unknown(0)
    wire[1:0] add52;
    wire[1:0] sel54;
    wire[1:0] proxy55; // #132 unknown(0)
    reg[511:0] mem56[0:1];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #135 unknown(0)
    wire proxy63; // #136 unknown(0)
    wire proxy64; // #137 unknown(0)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #140 unknown(0)
    wire[1:0] sub71;
    wire[1:0] proxy72; // #141 unknown(0)

    assign io_enq_ready8 = proxy70;
    assign io_deq_valid11 = proxy62;
    assign io_deq_data14 = mem56[proxy38];
    assign io_size20 = proxy72;
    assign proxy23 = reg30;
    assign proxy25 = proxy50;
    always @ (posedge clk) reg30 <= reset ? 2'b0 : proxy25;
    assign proxy32 = reg36;
    assign proxy34 = proxy55;
    always @ (posedge clk) reg36 <= reset ? 2'b0 : proxy34;
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
    always @(posedge clk) mem56[proxy40] = proxy58;
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
    wire io_enq_ready8; // #190 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #191 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #192 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[5:0] io_size20; // #194 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[5:0] proxy23; // #195 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[5:0] proxy25; // #196 /home/blaise/dev/cash/src/seq.h(17)
    reg[5:0] reg30; // #195 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[5:0] proxy32; // #198 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[5:0] proxy34; // #199 /home/blaise/dev/cash/src/seq.h(17)
    reg[5:0] reg36; // #198 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[4:0] proxy38; // #201 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire[4:0] proxy40; // #202 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[5:0] add47;
    wire[5:0] sel49;
    wire[5:0] proxy50; // #207 unknown(0)
    wire[5:0] add52;
    wire[5:0] sel54;
    wire[5:0] proxy55; // #210 unknown(0)
    reg[511:0] mem56[0:31];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #213 unknown(0)
    wire proxy63; // #214 unknown(0)
    wire proxy64; // #215 unknown(0)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #218 unknown(0)
    wire[5:0] sub71;
    wire[5:0] proxy72; // #219 unknown(0)

    assign io_enq_ready8 = proxy70;
    assign io_deq_valid11 = proxy62;
    assign io_deq_data14 = mem56[proxy38];
    assign io_size20 = proxy72;
    assign proxy23 = reg30;
    assign proxy25 = proxy50;
    always @ (posedge clk) reg30 <= reset ? 6'b0 : proxy25;
    assign proxy32 = reg36;
    assign proxy34 = proxy55;
    always @ (posedge clk) reg36 <= reset ? 6'b0 : proxy34;
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
    always @(posedge clk) mem56[proxy40] = proxy58;
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
    wire[511:0] lit332 = 512'h0;
    wire[63:0] lit363 = 64'h0;
    wire[351:0] lit392 = 352'h0;
    wire[84:0] lit659 = 85'b0;
    wire[63:0] io_ctrl_start_data5; // #36 dcsc_walk.cpp(33)
    wire[63:0] proxy6; // #37 part(0)
    wire[31:0] proxy7; // #38 start(0)
    wire[31:0] proxy8; // #39 end(0)
    wire io_ctrl_start_ready11; // #40 dcsc_walk.cpp(33)
    wire[351:0] io_ctrl_stats17; // #42 dcsc_walk.cpp(33)
    wire[22:0] io_lsu_rd_req_data34; // #55 dcsc_walk.cpp(33)
    wire[2:0] proxy35; // #56 type(0)
    wire[514:0] io_lsu_rd_rsp_data45; // #60 dcsc_walk.cpp(33)
    wire[2:0] proxy46; // #61 type(0)
    wire[511:0] proxy47; // #62 data(0)
    wire io_pe_valid50; // #63 dcsc_walk.cpp(33)
    wire[84:0] io_pe_data53; // #64 dcsc_walk.cpp(33)
    reg[19:0] reg70; // #70 dcsc_walk.cpp(33)
    reg[19:0] reg76; // #73 dcsc_walk.cpp(33)
    reg[19:0] reg82; // #76 dcsc_walk.cpp(33)
    reg[19:0] reg88; // #79 dcsc_walk.cpp(33)
    reg[19:0] reg94; // #82 dcsc_walk.cpp(33)
    reg[19:0] reg100; // #85 dcsc_walk.cpp(33)
    reg[19:0] reg107; // #88 dcsc_walk.cpp(33)
    reg[19:0] reg113; // #91 dcsc_walk.cpp(33)
    reg[19:0] reg119; // #94 dcsc_walk.cpp(33)
    reg[19:0] reg125; // #97 dcsc_walk.cpp(33)
    reg[19:0] reg131; // #100 dcsc_walk.cpp(33)
    reg[5:0] reg138; // #103 dcsc_walk.cpp(33)
    wire[31:0] proxy140; // #106 dcsc_walk.cpp(33)
    reg[31:0] reg145; // #106 dcsc_walk.cpp(33)
    wire[31:0] proxy146; // #109 /home/blaise/dev/cash/src/seq.h(20)
    wire proxy148; // #142 /home/blaise/dev/cash/src/module.h(33)
    wire bindin150;
    wire bindin151;
    wire bindin152;
    wire[511:0] proxy154; // #143 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin155;
    wire bindout161;
    wire[511:0] bindout164;
    wire proxy166; // #147 /home/blaise/dev/cash/src/module.h(33)
    wire bindin167;
    wire proxy172; // #181 /home/blaise/dev/cash/src/module.h(33)
    wire bindin174;
    wire bindin175;
    wire bindin176;
    wire[511:0] proxy178; // #182 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin179;
    wire bindout185;
    wire[511:0] proxy187; // #185 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout188;
    wire proxy190; // #186 /home/blaise/dev/cash/src/module.h(33)
    wire bindin191;
    wire proxy196; // #220 /home/blaise/dev/cash/src/module.h(33)
    wire bindin198;
    wire bindin199;
    wire bindin200;
    wire[511:0] proxy202; // #221 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin203;
    wire[511:0] bindout212;
    wire proxy214; // #225 /home/blaise/dev/cash/src/module.h(33)
    wire bindin215;
    wire proxy220; // #259 /home/blaise/dev/cash/src/module.h(33)
    wire bindin222;
    wire bindin223;
    wire bindin224;
    wire[511:0] proxy226; // #260 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin227;
    wire[511:0] bindout236;
    wire proxy238; // #264 /home/blaise/dev/cash/src/module.h(33)
    wire bindin239;
    wire[5:0] bindout242;
    wire proxy244; // #298 /home/blaise/dev/cash/src/module.h(33)
    wire bindin246;
    wire bindin247;
    wire bindin248;
    wire[511:0] proxy250; // #299 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin251;
    wire bindout257;
    wire[511:0] bindout260;
    wire proxy262; // #303 /home/blaise/dev/cash/src/module.h(33)
    wire bindin263;
    wire proxy268; // #337 /home/blaise/dev/cash/src/module.h(33)
    wire bindin270;
    wire bindin271;
    wire bindin272;
    wire[511:0] proxy274; // #338 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin275;
    wire bindout281;
    wire[511:0] bindout284;
    wire proxy286; // #342 /home/blaise/dev/cash/src/module.h(33)
    wire bindin287;
    reg[7:0] reg297; // #344 dcsc_walk.cpp(33)
    reg[7:0] reg303; // #347 dcsc_walk.cpp(33)
    reg[7:0] reg309; // #350 dcsc_walk.cpp(33)
    reg[7:0] reg315; // #353 dcsc_walk.cpp(33)
    reg[7:0] reg321; // #356 dcsc_walk.cpp(33)
    reg[7:0] reg327; // #359 dcsc_walk.cpp(33)
    reg[511:0] reg334; // #362 dcsc_walk.cpp(33)
    reg[511:0] reg340; // #365 dcsc_walk.cpp(33)
    reg[511:0] reg346; // #368 dcsc_walk.cpp(33)
    reg[511:0] reg352; // #371 dcsc_walk.cpp(33)
    reg[31:0] reg358; // #374 dcsc_walk.cpp(33)
    reg[63:0] reg365; // #377 dcsc_walk.cpp(33)
    wire[351:0] proxy367; // #380 dcsc_walk.cpp(33)
    wire[31:0] proxy368; // #381 num_parts(0)
    wire[31:0] proxy369; // #382 min_latency(0)
    wire[31:0] proxy371; // #384 total_latency(0)
    wire[31:0] proxy372; // #385 a_colind_stalls(0)
    wire[31:0] proxy373; // #386 a_rowptr_stalls(0)
    wire[31:0] proxy374; // #387 a_rowind_stalls(0)
    wire[31:0] proxy375; // #388 a_values_stalls(0)
    wire[31:0] proxy376; // #389 x_values_stalls(0)
    wire[31:0] proxy377; // #390 x_masks_stalls(0)
    wire[31:0] proxy378; // #391 execute_stalls(0)
    wire[351:0] ch_walker_stats_t380; // #392 /home/blaise/dev/cash/src/seq.h(17)
    reg[351:0] reg394; // #380 dcsc_walk.cpp(33)
    wire eq397;
    wire and399;
    wire proxy400; // #407 unknown(0)
    wire eq403;
    wire and405;
    wire proxy406; // #410 unknown(0)
    wire eq409;
    wire and411;
    wire proxy412; // #413 unknown(0)
    wire eq415;
    wire and417;
    wire proxy418; // #416 unknown(0)
    wire eq421;
    wire and423;
    wire proxy424; // #419 unknown(0)
    wire eq427;
    wire and429;
    wire proxy430; // #422 unknown(0)
    reg[4:0] reg437; // #423 dcsc_walk.cpp(63)
    wire eq439;
    wire proxy440; // #427 unknown(0)
    wire eq442;
    wire and444;
    wire and446;
    wire proxy448; // #432 dcsc_walk.cpp(71)
    wire eq451;
    wire and453;
    wire eq456;
    wire and458;
    wire[7:0] add462;
    wire[7:0] sel464;
    wire[7:0] sub466;
    wire inv468;
    wire and469;
    wire[7:0] sel470;
    wire eq472;
    wire and474;
    wire and476;
    wire proxy478; // #447 dcsc_walk.cpp(71)
    wire eq480;
    wire and482;
    wire eq485;
    wire and487;
    wire[7:0] add490;
    wire[7:0] sel492;
    wire[7:0] sub494;
    wire inv496;
    wire and497;
    wire[7:0] sel498;
    wire eq500;
    wire and502;
    wire and504;
    wire proxy506; // #462 dcsc_walk.cpp(71)
    wire eq508;
    wire and510;
    wire eq513;
    wire and515;
    wire[7:0] add518;
    wire[7:0] sel520;
    wire[7:0] sub522;
    wire inv524;
    wire and525;
    wire[7:0] sel526;
    wire eq528;
    wire and530;
    wire and532;
    wire proxy534; // #477 dcsc_walk.cpp(71)
    wire eq536;
    wire and538;
    wire eq541;
    wire and543;
    wire[7:0] add546;
    wire[7:0] sel548;
    wire[7:0] sub550;
    wire inv552;
    wire and553;
    wire[7:0] sel554;
    wire eq556;
    wire and558;
    wire and560;
    wire proxy562; // #492 dcsc_walk.cpp(71)
    wire eq564;
    wire and566;
    wire eq569;
    wire and571;
    wire[7:0] add574;
    wire[7:0] sel576;
    wire[7:0] sub578;
    wire inv580;
    wire and581;
    wire[7:0] sel582;
    wire eq584;
    wire and586;
    wire and588;
    wire proxy590; // #507 dcsc_walk.cpp(71)
    wire eq592;
    wire and594;
    wire eq597;
    wire and599;
    wire[7:0] add602;
    wire[7:0] sel604;
    wire[7:0] sub606;
    wire inv608;
    wire and609;
    wire[7:0] sel610;
    wire proxy612; // #518 dcsc_walk.cpp(103)
    reg reg616; // #518 dcsc_walk.cpp(103)
    wire proxy618; // #521 dcsc_walk.cpp(104)
    reg reg622; // #521 dcsc_walk.cpp(104)
    wire proxy624; // #524 dcsc_walk.cpp(105)
    reg reg628; // #524 dcsc_walk.cpp(105)
    wire proxy630; // #527 dcsc_walk.cpp(106)
    reg reg634; // #527 dcsc_walk.cpp(106)
    wire proxy636; // #530 dcsc_walk.cpp(107)
    reg reg640; // #530 dcsc_walk.cpp(107)
    wire proxy642; // #533 dcsc_walk.cpp(108)
    reg reg646; // #533 dcsc_walk.cpp(108)
    wire[84:0] proxy648; // #536 dcsc_walk.cpp(111)
    wire[84:0] ch_pe_req_t654; // #541 /home/blaise/dev/cash/src/seq.h(17)
    reg[84:0] reg661; // #536 dcsc_walk.cpp(111)
    wire proxy663; // #547 dcsc_walk.cpp(112)
    reg reg667; // #547 dcsc_walk.cpp(112)
    wire eq669;
    wire[19:0] proxy671; // #551 dcsc_walk.cpp(120)
    wire and672;
    wire[19:0] sel673;
    wire[19:0] proxy675; // #552 dcsc_walk.cpp(121)
    wire[19:0] sub678;
    wire[19:0] sel680;
    wire[63:0] sel681;
    wire[4:0] sel683;
    wire eq685;
    wire inv686;
    wire and687;
    wire[2:0] sel689;
    wire[19:0] sll692;
    wire[19:0] srl696;
    wire[19:0] sel699;
    wire ne702;
    wire and705;
    wire sel706;
    wire and708;
    wire[4:0] sel709;
    wire[31:0] add712;
    wire inv714;
    wire and715;
    wire[31:0] proxy716;
    wire[31:0] sel717;
    wire[31:0] add719;
    wire inv721;
    wire and722;
    wire[31:0] sel723;
    wire eq725;
    wire or726;
    wire inv727;
    wire and728;
    wire[2:0] sel729;
    wire[19:0] sll731;
    wire[19:0] srl734;
    wire[19:0] sel736;
    wire ne738;
    wire and740;
    wire sel741;
    wire and743;
    wire[4:0] sel744;
    wire[31:0] add746;
    wire inv748;
    wire and749;
    wire[31:0] proxy750;
    wire[31:0] sel751;
    wire[31:0] add753;
    wire inv755;
    wire and756;
    wire[31:0] sel757;
    wire eq759;
    wire and760;
    wire or762;
    wire or763;
    wire inv764;
    wire and765;
    wire and766;
    wire[511:0] sel767;
    wire[19:0] and770;
    wire[19:0] sll774;
    wire[511:0] srl776;
    wire[511:0] proxy777; // #583 unknown(0)
    wire[19:0] proxy779; // #584 dcsc_walk.cpp(172)
    wire[19:0] sel780;
    wire sel781;
    wire[511:0] sel782;
    wire[19:0] and784;
    wire[19:0] sll787;
    wire[511:0] srl789;
    wire[511:0] proxy790; // #589 unknown(0)
    wire[19:0] proxy792; // #590 dcsc_walk.cpp(177)
    wire[19:0] sel793;
    wire sel794;
    wire[19:0] and796;
    wire ne799;
    wire[19:0] add802;
    wire[19:0] and805;
    wire[19:0] sll808;
    wire[511:0] srl810;
    wire[511:0] proxy811; // #601 unknown(0)
    wire[19:0] proxy813; // #602 dcsc_walk.cpp(182)
    wire and814;
    wire[19:0] sel815;
    wire[4:0] sel817;
    wire inv819;
    wire and820;
    wire[4:0] sel821;
    wire eq823;
    wire or824;
    wire or825;
    wire or826;
    wire inv827;
    wire and828;
    wire[2:0] sel829;
    wire[19:0] add831;
    wire[19:0] sll834;
    wire[19:0] srl837;
    wire[19:0] sel839;
    wire ne841;
    wire and843;
    wire sel844;
    wire and846;
    wire[4:0] sel847;
    wire[31:0] add849;
    wire inv851;
    wire and852;
    wire[31:0] sel853;
    wire[31:0] add855;
    wire inv857;
    wire and858;
    wire[31:0] sel859;
    wire eq861;
    wire[19:0] proxy863; // #617 dcsc_walk.cpp(215)
    wire or864;
    wire or865;
    wire or866;
    wire or867;
    wire inv868;
    wire and869;
    wire and870;
    wire[19:0] sel871;
    wire sel872;
    wire[4:0] sel873;
    wire[31:0] add875;
    wire inv877;
    wire and878;
    wire[31:0] sel879;
    wire eq881;
    wire[19:0] sub883;
    wire or885;
    wire or886;
    wire or887;
    wire or888;
    wire or889;
    wire inv890;
    wire and891;
    wire[19:0] sel892;
    wire[19:0] srl894;
    wire[19:0] sll897;
    wire[19:0] srl900;
    wire eq902;
    wire[19:0] and905;
    wire[19:0] sll908;
    wire[511:0] srl910;
    wire[511:0] proxy911; // #634 unknown(0)
    wire[31:0] proxy913; // #635 dcsc_walk.cpp(232)
    wire[19:0] and916;
    wire[31:0] sll919;
    wire[31:0] and921;
    wire ne924;
    wire and927;
    wire and928;
    wire[4:0] sel929;
    wire inv931;
    wire and932;
    wire[4:0] sel933;
    wire inv934;
    wire and935;
    wire[19:0] sel936;
    wire[4:0] sel938;
    wire eq940;
    wire[19:0] sll942;
    wire[19:0] srl945;
    wire eq947;
    wire or950;
    wire or951;
    wire or952;
    wire or953;
    wire or954;
    wire or955;
    wire inv956;
    wire and957;
    wire and958;
    wire[4:0] sel959;
    wire inv960;
    wire and961;
    wire[19:0] sel962;
    wire[4:0] sel964;
    wire eq966;
    wire or967;
    wire or968;
    wire or969;
    wire or970;
    wire or971;
    wire or972;
    wire or973;
    wire inv974;
    wire and975;
    wire[2:0] sel976;
    wire[19:0] sel977;
    wire ne979;
    wire and981;
    wire sel982;
    wire and984;
    wire[4:0] sel985;
    wire[31:0] add987;
    wire inv989;
    wire and990;
    wire[31:0] proxy991;
    wire[31:0] sel992;
    wire[31:0] add994;
    wire inv996;
    wire and997;
    wire[31:0] sel998;
    wire eq1000;
    wire or1001;
    wire or1002;
    wire or1003;
    wire or1004;
    wire or1005;
    wire or1006;
    wire or1007;
    wire or1008;
    wire inv1009;
    wire and1010;
    wire and1011;
    wire[511:0] sel1012;
    wire sel1013;
    wire[19:0] srl1015;
    wire[19:0] and1018;
    wire[19:0] sll1021;
    wire[511:0] srl1023;
    wire[511:0] proxy1024; // #663 unknown(0)
    wire[31:0] proxy1026; // #664 dcsc_walk.cpp(287)
    wire[19:0] and1028;
    wire[31:0] sll1031;
    wire[31:0] and1033;
    wire ne1036;
    wire and1038;
    wire[4:0] sel1039;
    wire inv1040;
    wire and1041;
    wire[4:0] sel1042;
    wire[31:0] add1044;
    wire inv1046;
    wire and1047;
    wire[31:0] sel1048;
    wire eq1050;
    wire or1051;
    wire or1052;
    wire or1053;
    wire or1054;
    wire or1055;
    wire or1056;
    wire or1057;
    wire or1058;
    wire or1059;
    wire inv1060;
    wire and1061;
    wire[2:0] sel1062;
    wire[19:0] sll1064;
    wire[19:0] srl1067;
    wire[19:0] sel1069;
    wire ne1071;
    wire and1073;
    wire sel1074;
    wire and1075;
    wire[4:0] sel1076;
    wire[31:0] add1078;
    wire inv1080;
    wire and1081;
    wire[31:0] proxy1082;
    wire[31:0] sel1083;
    wire[31:0] add1085;
    wire inv1087;
    wire and1088;
    wire[31:0] sel1089;
    wire eq1091;
    wire[19:0] sll1093;
    wire[19:0] srl1096;
    wire or1098;
    wire or1099;
    wire or1100;
    wire or1101;
    wire or1102;
    wire or1103;
    wire or1104;
    wire or1105;
    wire or1106;
    wire or1107;
    wire inv1108;
    wire and1109;
    wire[19:0] sel1110;
    wire[19:0] sll1112;
    wire[19:0] add1116;
    wire[19:0] srl1119;
    wire[19:0] sel1121;
    wire[4:0] sel1123;
    wire eq1125;
    wire[19:0] sub1126;
    wire[19:0] proxy1127; // #697 unknown(0)
    wire[5:0] proxy1129; // #698 dcsc_walk.cpp(328)
    wire or1130;
    wire or1131;
    wire or1132;
    wire or1133;
    wire or1134;
    wire or1135;
    wire or1136;
    wire or1137;
    wire or1138;
    wire or1139;
    wire or1140;
    wire inv1141;
    wire and1142;
    wire[5:0] sel1143;
    wire[19:0] sub1145;
    wire[19:0] sel1147;
    wire[4:0] sel1149;
    wire eq1151;
    wire or1152;
    wire or1153;
    wire or1154;
    wire or1155;
    wire or1156;
    wire or1157;
    wire or1158;
    wire or1159;
    wire or1160;
    wire or1161;
    wire or1162;
    wire or1163;
    wire inv1164;
    wire and1165;
    wire[2:0] sel1166;
    wire[19:0] sel1167;
    wire ne1170;
    wire and1172;
    wire sel1173;
    wire and1175;
    wire[4:0] sel1176;
    wire[31:0] add1178;
    wire inv1180;
    wire and1181;
    wire[31:0] proxy1182;
    wire[31:0] sel1183;
    wire[31:0] add1185;
    wire inv1187;
    wire and1188;
    wire[31:0] sel1189;
    wire eq1191;
    wire or1192;
    wire or1193;
    wire or1194;
    wire or1195;
    wire or1196;
    wire or1197;
    wire or1198;
    wire or1199;
    wire or1200;
    wire or1201;
    wire or1202;
    wire or1203;
    wire or1204;
    wire inv1205;
    wire and1206;
    wire[2:0] sel1207;
    wire[19:0] sel1208;
    wire ne1210;
    wire and1212;
    wire sel1213;
    wire[19:0] add1215;
    wire and1217;
    wire[19:0] sel1218;
    wire ne1219;
    wire and1221;
    wire[4:0] sel1222;
    wire inv1224;
    wire and1225;
    wire[4:0] sel1226;
    wire[31:0] add1228;
    wire inv1230;
    wire and1231;
    wire[31:0] proxy1232;
    wire[31:0] sel1233;
    wire[31:0] add1235;
    wire inv1237;
    wire and1238;
    wire[31:0] sel1239;
    wire eq1241;
    wire eq1242;
    wire or1244;
    wire or1245;
    wire or1246;
    wire or1247;
    wire or1248;
    wire or1249;
    wire or1250;
    wire or1251;
    wire or1252;
    wire or1253;
    wire or1254;
    wire or1255;
    wire or1256;
    wire or1257;
    wire inv1258;
    wire and1259;
    wire and1260;
    wire and1261;
    wire[511:0] sel1262;
    wire sel1263;
    wire[19:0] and1265;
    wire[19:0] sll1268;
    wire[511:0] srl1270;
    wire[511:0] proxy1271; // #724 unknown(0)
    wire[31:0] proxy1273; // #725 dcsc_walk.cpp(387)
    wire[31:0] sel1274;
    wire[19:0] and1276;
    wire[19:0] sll1279;
    wire[511:0] srl1281;
    wire[511:0] proxy1282; // #730 unknown(0)
    wire[31:0] proxy1284; // #731 dcsc_walk.cpp(390)
    wire inv1285;
    wire and1286;
    wire[31:0] sel1287;
    wire[4:0] sel1289;
    wire[31:0] add1291;
    wire inv1293;
    wire and1294;
    wire[31:0] sel1295;
    wire eq1297;
    wire[19:0] and1299;
    wire[19:0] sll1302;
    wire[511:0] srl1304;
    wire[511:0] proxy1305; // #739 unknown(0)
    wire[19:0] proxy1307; // #740 dcsc_walk.cpp(401)
    wire or1308;
    wire or1309;
    wire or1310;
    wire or1311;
    wire or1312;
    wire or1313;
    wire or1314;
    wire or1315;
    wire or1316;
    wire or1317;
    wire or1318;
    wire or1319;
    wire or1320;
    wire or1321;
    wire or1322;
    wire inv1323;
    wire and1324;
    wire[19:0] sel1326;
    wire[19:0] and1328;
    wire[19:0] sll1331;
    wire[511:0] srl1333;
    wire[511:0] proxy1334; // #745 unknown(0)
    wire[31:0] proxy1336; // #746 dcsc_walk.cpp(402)
    wire[31:0] sel1338;
    wire[31:0] proxy1339; // #747 dcsc_walk.cpp(403)
    wire[31:0] sel1341;
    wire sel1343;
    wire sel1344;
    wire[19:0] add1346;
    wire and1348;
    wire[19:0] sel1349;
    wire ne1350;
    wire[19:0] and1353;
    wire eq1356;
    wire and1358;
    wire and1359;
    wire sel1360;
    wire sel1361;
    wire[4:0] sel1363;
    wire inv1364;
    wire and1365;
    wire sel1366;
    wire sel1367;
    wire[4:0] sel1368;
    wire[31:0] add1370;
    wire inv1372;
    wire and1373;
    wire[31:0] proxy1374;
    wire[31:0] sel1375;
    wire eq1377;
    wire or1378;
    wire or1379;
    wire or1380;
    wire or1381;
    wire or1382;
    wire or1383;
    wire or1384;
    wire or1385;
    wire or1386;
    wire or1387;
    wire or1388;
    wire or1389;
    wire or1390;
    wire or1391;
    wire or1392;
    wire or1393;
    wire inv1394;
    wire and1395;
    wire[4:0] sel1396;
    wire eq1398;
    wire[19:0] add1400;
    wire or1402;
    wire or1403;
    wire or1404;
    wire or1405;
    wire or1406;
    wire or1407;
    wire or1408;
    wire or1409;
    wire or1410;
    wire or1411;
    wire or1412;
    wire or1413;
    wire or1414;
    wire or1415;
    wire or1416;
    wire or1417;
    wire or1418;
    wire inv1419;
    wire and1420;
    wire[19:0] sel1421;
    wire ne1422;
    wire[19:0] and1425;
    wire ne1428;
    wire and1431;
    wire and1432;
    wire[4:0] sel1433;
    wire inv1434;
    wire and1435;
    wire[4:0] sel1436;
    wire inv1438;
    wire and1439;
    wire[4:0] sel1440;
    wire eq1442;
    wire[19:0] and1444;
    wire[19:0] sll1447;
    wire[511:0] srl1449;
    wire[511:0] proxy1450; // #771 unknown(0)
    wire[19:0] proxy1452; // #772 dcsc_walk.cpp(458)
    wire or1453;
    wire or1454;
    wire or1455;
    wire or1456;
    wire or1457;
    wire or1458;
    wire or1459;
    wire or1460;
    wire or1461;
    wire or1462;
    wire or1463;
    wire or1464;
    wire or1465;
    wire or1466;
    wire or1467;
    wire or1468;
    wire or1469;
    wire or1470;
    wire inv1471;
    wire and1472;
    wire[19:0] sel1473;
    wire[19:0] and1475;
    wire[19:0] sll1478;
    wire[511:0] srl1480;
    wire[511:0] proxy1481; // #777 unknown(0)
    wire[19:0] proxy1483; // #778 dcsc_walk.cpp(460)
    wire[19:0] sel1484;
    wire[19:0] and1486;
    wire ne1489;
    wire[19:0] add1492;
    wire[19:0] and1495;
    wire[19:0] sll1498;
    wire[511:0] srl1500;
    wire[511:0] proxy1501; // #789 unknown(0)
    wire[19:0] proxy1503; // #790 dcsc_walk.cpp(463)
    wire and1504;
    wire[19:0] sel1505;
    wire[4:0] sel1506;
    wire inv1507;
    wire and1508;
    wire[4:0] sel1509;
    wire eq1511;
    wire[63:0] sub1512;
    wire[63:0] proxy1513; // #792 unknown(0)
    wire[31:0] proxy1514; // #793 dcsc_walk.cpp(473)
    wire or1515;
    wire or1516;
    wire or1517;
    wire or1518;
    wire or1519;
    wire or1520;
    wire or1521;
    wire or1522;
    wire or1523;
    wire or1524;
    wire or1525;
    wire or1526;
    wire or1527;
    wire or1528;
    wire or1529;
    wire or1530;
    wire or1531;
    wire or1532;
    wire or1533;
    wire inv1534;
    wire and1535;
    wire[31:0] sel1536;
    wire[4:0] sel1538;
    wire eq1540;
    wire or1541;
    wire or1542;
    wire or1543;
    wire or1544;
    wire or1545;
    wire or1546;
    wire or1547;
    wire or1548;
    wire or1549;
    wire or1550;
    wire or1551;
    wire or1552;
    wire or1553;
    wire or1554;
    wire or1555;
    wire or1556;
    wire or1557;
    wire or1558;
    wire or1559;
    wire or1560;
    wire inv1561;
    wire and1562;
    wire sel1563;
    wire sel1564;
    wire lt1565;
    wire[31:0] sel1567;
    wire eq1570;
    wire[31:0] sel1572;
    wire and1574;
    wire[31:0] proxy1575;
    wire[31:0] sel1576;
    wire gt1577;
    wire[31:0] sel1579;
    wire[31:0] proxy1581;
    wire[31:0] sel1582;
    wire[31:0] add1583;
    wire[31:0] proxy1585;
    wire[31:0] sel1586;
    wire[31:0] add1588;
    wire[31:0] proxy1590;
    wire[31:0] sel1591;
    wire[4:0] sel1592;
    wire[31:0] add1594;
    wire inv1596;
    wire and1597;
    wire[31:0] sel1598;

    assign io_ctrl_start_data5 = io_ctrl_start_data;
    assign proxy6 = io_ctrl_start_data5;
    assign proxy7 = proxy6[31:0];
    assign proxy8 = proxy6[63:32];
    assign io_ctrl_start_ready11 = proxy440;
    assign io_ctrl_stats17 = proxy367;
    assign io_lsu_rd_req_data34 = {sel1208, sel1207};
    assign proxy35 = io_lsu_rd_req_data34[2:0];
    assign io_lsu_rd_rsp_data45 = io_lsu_rd_rsp_data;
    assign proxy46 = io_lsu_rd_rsp_data45[2:0];
    assign proxy47 = io_lsu_rd_rsp_data45[514:3];
    assign io_pe_valid50 = proxy663;
    assign io_pe_data53 = proxy648;
    always @ (posedge clk) reg70 <= reset ? 20'h0 : sel1421;
    always @ (posedge clk) reg76 <= reset ? 20'h0 : sel680;
    always @ (posedge clk) reg82 <= reset ? 20'h0 : sel1473;
    always @ (posedge clk) reg88 <= reset ? 20'h0 : sel1484;
    always @ (posedge clk) reg94 <= reset ? 20'h0 : sel1505;
    always @ (posedge clk) reg100 <= reset ? 20'h0 : sel892;
    always @ (posedge clk) reg107 <= reset ? 20'hfffff : sel936;
    always @ (posedge clk) reg113 <= reset ? 20'hfffff : sel962;
    always @ (posedge clk) reg119 <= reset ? 20'h0 : sel1218;
    always @ (posedge clk) reg125 <= reset ? 20'h0 : sel1121;
    always @ (posedge clk) reg131 <= reset ? 20'h0 : sel1147;
    always @ (posedge clk) reg138 <= reset ? 6'b0 : sel1143;
    assign proxy140 = reg145;
    always @ (posedge clk) reg145 <= reset ? 32'h0 : sel1287;
    assign proxy146 = proxy140;
    assign proxy148 = proxy400;
    assign bindin150 = clk;
    assign bindin151 = reset;
    ch_queue __module2__(.clk(bindin150), .reset(bindin151), .io_enq_valid(bindin152), .io_enq_data(bindin155), .io_deq_ready(bindin167), .io_deq_valid(bindout161), .io_deq_data(bindout164));
    assign bindin152 = proxy148;
    assign proxy154 = proxy47;
    assign bindin155 = proxy154;
    assign proxy166 = proxy612;
    assign bindin167 = proxy166;
    assign proxy172 = proxy406;
    assign bindin174 = clk;
    assign bindin175 = reset;
    ch_queue __module3__(.clk(bindin174), .reset(bindin175), .io_enq_valid(bindin176), .io_enq_data(bindin179), .io_deq_ready(bindin191), .io_deq_valid(bindout185), .io_deq_data(bindout188));
    assign bindin176 = proxy172;
    assign proxy178 = proxy47;
    assign bindin179 = proxy178;
    assign proxy187 = bindout188;
    assign proxy190 = proxy618;
    assign bindin191 = proxy190;
    assign proxy196 = proxy412;
    assign bindin198 = clk;
    assign bindin199 = reset;
    ch_queue_0 __module4__(.clk(bindin198), .reset(bindin199), .io_enq_valid(bindin200), .io_enq_data(bindin203), .io_deq_ready(bindin215), .io_deq_data(bindout212));
    assign bindin200 = proxy196;
    assign proxy202 = proxy47;
    assign bindin203 = proxy202;
    assign proxy214 = proxy624;
    assign bindin215 = proxy214;
    assign proxy220 = proxy418;
    assign bindin222 = clk;
    assign bindin223 = reset;
    ch_queue_0 __module5__(.clk(bindin222), .reset(bindin223), .io_enq_valid(bindin224), .io_enq_data(bindin227), .io_deq_ready(bindin239), .io_deq_data(bindout236), .io_size(bindout242));
    assign bindin224 = proxy220;
    assign proxy226 = proxy47;
    assign bindin227 = proxy226;
    assign proxy238 = proxy630;
    assign bindin239 = proxy238;
    assign proxy244 = proxy424;
    assign bindin246 = clk;
    assign bindin247 = reset;
    ch_queue __module6__(.clk(bindin246), .reset(bindin247), .io_enq_valid(bindin248), .io_enq_data(bindin251), .io_deq_ready(bindin263), .io_deq_valid(bindout257), .io_deq_data(bindout260));
    assign bindin248 = proxy244;
    assign proxy250 = proxy47;
    assign bindin251 = proxy250;
    assign proxy262 = proxy636;
    assign bindin263 = proxy262;
    assign proxy268 = proxy430;
    assign bindin270 = clk;
    assign bindin271 = reset;
    ch_queue __module7__(.clk(bindin270), .reset(bindin271), .io_enq_valid(bindin272), .io_enq_data(bindin275), .io_deq_ready(bindin287), .io_deq_valid(bindout281), .io_deq_data(bindout284));
    assign bindin272 = proxy268;
    assign proxy274 = proxy47;
    assign bindin275 = proxy274;
    assign proxy286 = proxy642;
    assign bindin287 = proxy286;
    always @ (posedge clk) reg297 <= reset ? 8'h0 : sel470;
    always @ (posedge clk) reg303 <= reset ? 8'h0 : sel498;
    always @ (posedge clk) reg309 <= reset ? 8'h0 : sel526;
    always @ (posedge clk) reg315 <= reset ? 8'h0 : sel554;
    always @ (posedge clk) reg321 <= reset ? 8'h0 : sel582;
    always @ (posedge clk) reg327 <= reset ? 8'h0 : sel610;
    always @ (posedge clk) reg334 <= reset ? lit332 : sel767;
    always @ (posedge clk) reg340 <= reset ? lit332 : sel782;
    always @ (posedge clk) reg346 <= reset ? lit332 : sel1012;
    always @ (posedge clk) reg352 <= reset ? lit332 : sel1262;
    always @ (posedge clk) reg358 <= reset ? 32'h0 : sel1536;
    always @ (posedge clk) reg365 <= reset ? lit363 : sel681;
    assign proxy367 = reg394;
    assign proxy368 = proxy367[31:0];
    assign proxy369 = proxy367[63:32];
    assign proxy371 = proxy367[127:96];
    assign proxy372 = proxy367[159:128];
    assign proxy373 = proxy367[191:160];
    assign proxy374 = proxy367[223:192];
    assign proxy375 = proxy367[255:224];
    assign proxy376 = proxy367[287:256];
    assign proxy377 = proxy367[319:288];
    assign proxy378 = proxy367[351:320];
    assign ch_walker_stats_t380 = {sel1598, sel1048, sel1089, sel1295, sel1189, sel879, sel723, sel1586, sel1582, sel1576, sel1591};
    always @ (posedge clk) reg394 <= reset ? lit392 : ch_walker_stats_t380;
    assign eq397 = proxy46 == 3'b1;
    assign and399 = io_lsu_rd_rsp_valid & eq397;
    assign proxy400 = and399;
    assign eq403 = proxy46 == 3'b10;
    assign and405 = io_lsu_rd_rsp_valid & eq403;
    assign proxy406 = and405;
    assign eq409 = proxy46 == 3'b11;
    assign and411 = io_lsu_rd_rsp_valid & eq409;
    assign proxy412 = and411;
    assign eq415 = proxy46 == 3'b100;
    assign and417 = io_lsu_rd_rsp_valid & eq415;
    assign proxy418 = and417;
    assign eq421 = proxy46 == 3'b101;
    assign and423 = io_lsu_rd_rsp_valid & eq421;
    assign proxy424 = and423;
    assign eq427 = proxy46 == 3'b110;
    assign and429 = io_lsu_rd_rsp_valid & eq427;
    assign proxy430 = and429;
    always @ (posedge clk) reg437 <= reset ? 5'b0 : sel1592;
    assign eq439 = reg437 == 5'b0;
    assign proxy440 = eq439;
    assign eq442 = proxy35 == 3'b1;
    assign and444 = sel1213 & io_lsu_rd_req_ready;
    assign and446 = and444 & eq442;
    assign proxy448 = proxy166;
    assign eq451 = and446 == 1'b0;
    assign and453 = eq451 & proxy448;
    assign eq456 = proxy448 == 1'b0;
    assign and458 = and446 & eq456;
    assign add462 = reg297 + 8'h1;
    assign sel464 = and458 ? add462 : reg297;
    assign sub466 = reg297 - 8'h1;
    assign inv468 = ~and458;
    assign and469 = inv468 & and453;
    assign sel470 = and469 ? sub466 : sel464;
    assign eq472 = proxy35 == 3'b10;
    assign and474 = sel1213 & io_lsu_rd_req_ready;
    assign and476 = and474 & eq472;
    assign proxy478 = proxy190;
    assign eq480 = and476 == 1'b0;
    assign and482 = eq480 & proxy478;
    assign eq485 = proxy478 == 1'b0;
    assign and487 = and476 & eq485;
    assign add490 = reg303 + 8'h1;
    assign sel492 = and487 ? add490 : reg303;
    assign sub494 = reg303 - 8'h1;
    assign inv496 = ~and487;
    assign and497 = inv496 & and482;
    assign sel498 = and497 ? sub494 : sel492;
    assign eq500 = proxy35 == 3'b11;
    assign and502 = sel1213 & io_lsu_rd_req_ready;
    assign and504 = and502 & eq500;
    assign proxy506 = proxy214;
    assign eq508 = and504 == 1'b0;
    assign and510 = eq508 & proxy506;
    assign eq513 = proxy506 == 1'b0;
    assign and515 = and504 & eq513;
    assign add518 = reg309 + 8'h1;
    assign sel520 = and515 ? add518 : reg309;
    assign sub522 = reg309 - 8'h1;
    assign inv524 = ~and515;
    assign and525 = inv524 & and510;
    assign sel526 = and525 ? sub522 : sel520;
    assign eq528 = proxy35 == 3'b100;
    assign and530 = sel1213 & io_lsu_rd_req_ready;
    assign and532 = and530 & eq528;
    assign proxy534 = proxy238;
    assign eq536 = and532 == 1'b0;
    assign and538 = eq536 & proxy534;
    assign eq541 = proxy534 == 1'b0;
    assign and543 = and532 & eq541;
    assign add546 = reg315 + 8'h1;
    assign sel548 = and543 ? add546 : reg315;
    assign sub550 = reg315 - 8'h1;
    assign inv552 = ~and543;
    assign and553 = inv552 & and538;
    assign sel554 = and553 ? sub550 : sel548;
    assign eq556 = proxy35 == 3'b101;
    assign and558 = sel1213 & io_lsu_rd_req_ready;
    assign and560 = and558 & eq556;
    assign proxy562 = proxy262;
    assign eq564 = and560 == 1'b0;
    assign and566 = eq564 & proxy562;
    assign eq569 = proxy562 == 1'b0;
    assign and571 = and560 & eq569;
    assign add574 = reg321 + 8'h1;
    assign sel576 = and571 ? add574 : reg321;
    assign sub578 = reg321 - 8'h1;
    assign inv580 = ~and571;
    assign and581 = inv580 & and566;
    assign sel582 = and581 ? sub578 : sel576;
    assign eq584 = proxy35 == 3'b110;
    assign and586 = sel1213 & io_lsu_rd_req_ready;
    assign and588 = and586 & eq584;
    assign proxy590 = proxy286;
    assign eq592 = and588 == 1'b0;
    assign and594 = eq592 & proxy590;
    assign eq597 = proxy590 == 1'b0;
    assign and599 = and588 & eq597;
    assign add602 = reg327 + 8'h1;
    assign sel604 = and599 ? add602 : reg327;
    assign sub606 = reg327 - 8'h1;
    assign inv608 = ~and599;
    assign and609 = inv608 & and594;
    assign sel610 = and609 ? sub606 : sel604;
    assign proxy612 = reg616;
    always @ (posedge clk) reg616 <= reset ? 1'b0 : sel781;
    assign proxy618 = reg622;
    always @ (posedge clk) reg622 <= reset ? 1'b0 : sel872;
    assign proxy624 = reg628;
    always @ (posedge clk) reg628 <= reset ? 1'b0 : sel1366;
    assign proxy630 = reg634;
    always @ (posedge clk) reg634 <= reset ? 1'b0 : sel1367;
    assign proxy636 = reg640;
    always @ (posedge clk) reg640 <= reset ? 1'b0 : sel1263;
    assign proxy642 = reg646;
    always @ (posedge clk) reg646 <= reset ? 1'b0 : sel1013;
    assign proxy648 = reg661;
    assign ch_pe_req_t654 = {sel1563, sel1341, sel1338, sel1326};
    always @ (posedge clk) reg661 <= reset ? lit659 : ch_pe_req_t654;
    assign proxy663 = reg667;
    always @ (posedge clk) reg667 <= reset ? 1'b0 : sel1564;
    assign eq669 = reg437 == 5'b0;
    assign proxy671 = proxy7[19:0];
    assign and672 = eq669 & io_ctrl_start_valid;
    assign sel673 = and672 ? proxy671 : reg70;
    assign proxy675 = proxy8[19:0];
    assign sub678 = proxy675 - 20'h1;
    assign sel680 = and672 ? sub678 : reg76;
    assign sel681 = and672 ? io_ctrl_timer : reg365;
    assign sel683 = and672 ? 5'b1 : reg437;
    assign eq685 = reg437 == 5'b1;
    assign inv686 = ~eq669;
    assign and687 = inv686 & eq685;
    assign sel689 = and687 ? 3'b1 : 3'b0;
    assign sll692 = reg70 << 20'h2;
    assign srl696 = sll692 >> 20'h6;
    assign sel699 = and687 ? srl696 : 20'h0;
    assign ne702 = reg297 != 8'h2;
    assign and705 = and687 & ne702;
    assign sel706 = and705 ? 1'b1 : 1'b0;
    assign and708 = and705 & io_lsu_rd_req_ready;
    assign sel709 = and708 ? 5'b10 : sel683;
    assign add712 = proxy372 + 32'h1;
    assign inv714 = ~io_lsu_rd_req_ready;
    assign and715 = and705 & inv714;
    assign proxy716 = proxy367[159:128];
    assign sel717 = and715 ? add712 : proxy716;
    assign add719 = proxy372 + 32'h1;
    assign inv721 = ~ne702;
    assign and722 = and687 & inv721;
    assign sel723 = and722 ? add719 : sel717;
    assign eq725 = reg437 == 5'b10;
    assign or726 = eq685 | eq669;
    assign inv727 = ~or726;
    assign and728 = inv727 & eq725;
    assign sel729 = and728 ? 3'b10 : sel689;
    assign sll731 = reg70 << 20'h2;
    assign srl734 = sll731 >> 20'h6;
    assign sel736 = and728 ? srl734 : sel699;
    assign ne738 = reg303 != 8'h2;
    assign and740 = and728 & ne738;
    assign sel741 = and740 ? 1'b1 : sel706;
    assign and743 = and740 & io_lsu_rd_req_ready;
    assign sel744 = and743 ? 5'b11 : sel709;
    assign add746 = proxy373 + 32'h1;
    assign inv748 = ~io_lsu_rd_req_ready;
    assign and749 = and740 & inv748;
    assign proxy750 = proxy367[191:160];
    assign sel751 = and749 ? add746 : proxy750;
    assign add753 = proxy373 + 32'h1;
    assign inv755 = ~ne738;
    assign and756 = and728 & inv755;
    assign sel757 = and756 ? add753 : sel751;
    assign eq759 = reg437 == 5'b11;
    assign and760 = bindout161 & bindout185;
    assign or762 = eq725 | eq685;
    assign or763 = or762 | eq669;
    assign inv764 = ~or763;
    assign and765 = inv764 & eq759;
    assign and766 = and765 & and760;
    assign sel767 = and766 ? bindout164 : reg334;
    assign and770 = reg70 & 20'hf;
    assign sll774 = and770 << 20'h5;
    assign srl776 = bindout164 >> sll774;
    assign proxy777 = srl776;
    assign proxy779 = proxy777[19:0];
    assign sel780 = and766 ? proxy779 : reg82;
    assign sel781 = and766 ? 1'b1 : 1'b0;
    assign sel782 = and766 ? proxy187 : reg340;
    assign and784 = reg70 & 20'hf;
    assign sll787 = and784 << 20'h5;
    assign srl789 = proxy187 >> sll787;
    assign proxy790 = srl789;
    assign proxy792 = proxy790[19:0];
    assign sel793 = and766 ? proxy792 : reg88;
    assign sel794 = and766 ? 1'b1 : 1'b0;
    assign and796 = reg70 & 20'hf;
    assign ne799 = and796 != 20'hf;
    assign add802 = reg70 + 20'h1;
    assign and805 = add802 & 20'hf;
    assign sll808 = and805 << 20'h5;
    assign srl810 = proxy187 >> sll808;
    assign proxy811 = srl810;
    assign proxy813 = proxy811[19:0];
    assign and814 = and766 & ne799;
    assign sel815 = and814 ? proxy813 : reg94;
    assign sel817 = and814 ? 5'b110 : sel744;
    assign inv819 = ~ne799;
    assign and820 = and766 & inv819;
    assign sel821 = and820 ? 5'b100 : sel817;
    assign eq823 = reg437 == 5'b100;
    assign or824 = eq759 | eq725;
    assign or825 = or824 | eq685;
    assign or826 = or825 | eq669;
    assign inv827 = ~or826;
    assign and828 = inv827 & eq823;
    assign sel829 = and828 ? 3'b10 : sel729;
    assign add831 = reg70 + 20'h1;
    assign sll834 = add831 << 20'h2;
    assign srl837 = sll834 >> 20'h6;
    assign sel839 = and828 ? srl837 : sel736;
    assign ne841 = reg303 != 8'h2;
    assign and843 = and828 & ne841;
    assign sel844 = and843 ? 1'b1 : sel741;
    assign and846 = and843 & io_lsu_rd_req_ready;
    assign sel847 = and846 ? 5'b101 : sel821;
    assign add849 = proxy373 + 32'h1;
    assign inv851 = ~io_lsu_rd_req_ready;
    assign and852 = and843 & inv851;
    assign sel853 = and852 ? add849 : sel757;
    assign add855 = proxy373 + 32'h1;
    assign inv857 = ~ne841;
    assign and858 = and828 & inv857;
    assign sel859 = and858 ? add855 : sel853;
    assign eq861 = reg437 == 5'b101;
    assign proxy863 = proxy187[19:0];
    assign or864 = eq823 | eq759;
    assign or865 = or864 | eq725;
    assign or866 = or865 | eq685;
    assign or867 = or866 | eq669;
    assign inv868 = ~or867;
    assign and869 = inv868 & eq861;
    assign and870 = and869 & bindout185;
    assign sel871 = and870 ? proxy863 : sel815;
    assign sel872 = and870 ? 1'b1 : sel794;
    assign sel873 = and870 ? 5'b110 : sel847;
    assign add875 = proxy373 + 32'h1;
    assign inv877 = ~bindout185;
    assign and878 = and869 & inv877;
    assign sel879 = and878 ? add875 : sel859;
    assign eq881 = reg437 == 5'b110;
    assign sub883 = reg94 - 20'h1;
    assign or885 = eq861 | eq823;
    assign or886 = or885 | eq759;
    assign or887 = or886 | eq725;
    assign or888 = or887 | eq685;
    assign or889 = or888 | eq669;
    assign inv890 = ~or889;
    assign and891 = inv890 & eq881;
    assign sel892 = and891 ? sub883 : reg100;
    assign srl894 = reg82 >> 20'h5;
    assign sll897 = srl894 << 20'h2;
    assign srl900 = sll897 >> 20'h6;
    assign eq902 = srl900 == reg107;
    assign and905 = srl894 & 20'hf;
    assign sll908 = and905 << 20'h5;
    assign srl910 = reg346 >> sll908;
    assign proxy911 = srl910;
    assign proxy913 = proxy911[31:0];
    assign and916 = reg82 & 20'h1f;
    assign sll919 = 32'h1 << and916;
    assign and921 = proxy913 & sll919;
    assign ne924 = and921 != 32'h0;
    assign and927 = and891 & eq902;
    assign and928 = and927 & ne924;
    assign sel929 = and928 ? 5'b111 : sel873;
    assign inv931 = ~ne924;
    assign and932 = and927 & inv931;
    assign sel933 = and932 ? 5'b10010 : sel929;
    assign inv934 = ~eq902;
    assign and935 = and891 & inv934;
    assign sel936 = and935 ? srl900 : reg107;
    assign sel938 = and935 ? 5'b1000 : sel933;
    assign eq940 = reg437 == 5'b111;
    assign sll942 = reg82 << 20'h2;
    assign srl945 = sll942 >> 20'h6;
    assign eq947 = srl945 == reg113;
    assign or950 = eq881 | eq861;
    assign or951 = or950 | eq823;
    assign or952 = or951 | eq759;
    assign or953 = or952 | eq725;
    assign or954 = or953 | eq685;
    assign or955 = or954 | eq669;
    assign inv956 = ~or955;
    assign and957 = inv956 & eq940;
    assign and958 = and957 & eq947;
    assign sel959 = and958 ? 5'b1011 : sel938;
    assign inv960 = ~eq947;
    assign and961 = and957 & inv960;
    assign sel962 = and961 ? srl945 : reg113;
    assign sel964 = and961 ? 5'b1010 : sel959;
    assign eq966 = reg437 == 5'b1000;
    assign or967 = eq940 | eq881;
    assign or968 = or967 | eq861;
    assign or969 = or968 | eq823;
    assign or970 = or969 | eq759;
    assign or971 = or970 | eq725;
    assign or972 = or971 | eq685;
    assign or973 = or972 | eq669;
    assign inv974 = ~or973;
    assign and975 = inv974 & eq966;
    assign sel976 = and975 ? 3'b110 : sel829;
    assign sel977 = and975 ? reg107 : sel839;
    assign ne979 = reg327 != 8'h2;
    assign and981 = and975 & ne979;
    assign sel982 = and981 ? 1'b1 : sel844;
    assign and984 = and981 & io_lsu_rd_req_ready;
    assign sel985 = and984 ? 5'b1001 : sel964;
    assign add987 = proxy377 + 32'h1;
    assign inv989 = ~io_lsu_rd_req_ready;
    assign and990 = and981 & inv989;
    assign proxy991 = proxy367[319:288];
    assign sel992 = and990 ? add987 : proxy991;
    assign add994 = proxy377 + 32'h1;
    assign inv996 = ~ne979;
    assign and997 = and975 & inv996;
    assign sel998 = and997 ? add994 : sel992;
    assign eq1000 = reg437 == 5'b1001;
    assign or1001 = eq966 | eq940;
    assign or1002 = or1001 | eq881;
    assign or1003 = or1002 | eq861;
    assign or1004 = or1003 | eq823;
    assign or1005 = or1004 | eq759;
    assign or1006 = or1005 | eq725;
    assign or1007 = or1006 | eq685;
    assign or1008 = or1007 | eq669;
    assign inv1009 = ~or1008;
    assign and1010 = inv1009 & eq1000;
    assign and1011 = and1010 & bindout281;
    assign sel1012 = and1011 ? bindout284 : reg346;
    assign sel1013 = and1011 ? 1'b1 : 1'b0;
    assign srl1015 = reg82 >> 20'h5;
    assign and1018 = srl1015 & 20'hf;
    assign sll1021 = and1018 << 20'h5;
    assign srl1023 = sel1012 >> sll1021;
    assign proxy1024 = srl1023;
    assign proxy1026 = proxy1024[31:0];
    assign and1028 = reg82 & 20'h1f;
    assign sll1031 = 32'h1 << and1028;
    assign and1033 = proxy1026 & sll1031;
    assign ne1036 = and1033 != 32'h0;
    assign and1038 = and1011 & ne1036;
    assign sel1039 = and1038 ? 5'b111 : sel985;
    assign inv1040 = ~ne1036;
    assign and1041 = and1011 & inv1040;
    assign sel1042 = and1041 ? 5'b10010 : sel1039;
    assign add1044 = proxy377 + 32'h1;
    assign inv1046 = ~bindout281;
    assign and1047 = and1010 & inv1046;
    assign sel1048 = and1047 ? add1044 : sel998;
    assign eq1050 = reg437 == 5'b1010;
    assign or1051 = eq1000 | eq966;
    assign or1052 = or1051 | eq940;
    assign or1053 = or1052 | eq881;
    assign or1054 = or1053 | eq861;
    assign or1055 = or1054 | eq823;
    assign or1056 = or1055 | eq759;
    assign or1057 = or1056 | eq725;
    assign or1058 = or1057 | eq685;
    assign or1059 = or1058 | eq669;
    assign inv1060 = ~or1059;
    assign and1061 = inv1060 & eq1050;
    assign sel1062 = and1061 ? 3'b101 : sel976;
    assign sll1064 = reg82 << 20'h2;
    assign srl1067 = sll1064 >> 20'h6;
    assign sel1069 = and1061 ? srl1067 : sel977;
    assign ne1071 = reg321 != 8'h2;
    assign and1073 = and1061 & ne1071;
    assign sel1074 = and1073 ? 1'b1 : sel982;
    assign and1075 = and1073 & io_lsu_rd_req_ready;
    assign sel1076 = and1075 ? 5'b1011 : sel1042;
    assign add1078 = proxy376 + 32'h1;
    assign inv1080 = ~io_lsu_rd_req_ready;
    assign and1081 = and1073 & inv1080;
    assign proxy1082 = proxy367[287:256];
    assign sel1083 = and1081 ? add1078 : proxy1082;
    assign add1085 = proxy376 + 32'h1;
    assign inv1087 = ~ne1071;
    assign and1088 = and1061 & inv1087;
    assign sel1089 = and1088 ? add1085 : sel1083;
    assign eq1091 = reg437 == 5'b1011;
    assign sll1093 = reg88 << 20'h2;
    assign srl1096 = sll1093 >> 20'h6;
    assign or1098 = eq1050 | eq1000;
    assign or1099 = or1098 | eq966;
    assign or1100 = or1099 | eq940;
    assign or1101 = or1100 | eq881;
    assign or1102 = or1101 | eq861;
    assign or1103 = or1102 | eq823;
    assign or1104 = or1103 | eq759;
    assign or1105 = or1104 | eq725;
    assign or1106 = or1105 | eq685;
    assign or1107 = or1106 | eq669;
    assign inv1108 = ~or1107;
    assign and1109 = inv1108 & eq1091;
    assign sel1110 = and1109 ? srl1096 : reg119;
    assign sll1112 = reg94 << 20'h2;
    assign add1116 = sll1112 + 20'h3f;
    assign srl1119 = add1116 >> 20'h6;
    assign sel1121 = and1109 ? srl1119 : reg125;
    assign sel1123 = and1109 ? 5'b1100 : sel1076;
    assign eq1125 = reg437 == 5'b1100;
    assign sub1126 = reg125 - reg119;
    assign proxy1127 = sub1126;
    assign proxy1129 = proxy1127[5:0];
    assign or1130 = eq1091 | eq1050;
    assign or1131 = or1130 | eq1000;
    assign or1132 = or1131 | eq966;
    assign or1133 = or1132 | eq940;
    assign or1134 = or1133 | eq881;
    assign or1135 = or1134 | eq861;
    assign or1136 = or1135 | eq823;
    assign or1137 = or1136 | eq759;
    assign or1138 = or1137 | eq725;
    assign or1139 = or1138 | eq685;
    assign or1140 = or1139 | eq669;
    assign inv1141 = ~or1140;
    assign and1142 = inv1141 & eq1125;
    assign sel1143 = and1142 ? proxy1129 : reg138;
    assign sub1145 = reg125 - 20'h1;
    assign sel1147 = and1142 ? sub1145 : reg131;
    assign sel1149 = and1142 ? 5'b1101 : sel1123;
    assign eq1151 = reg437 == 5'b1101;
    assign or1152 = eq1125 | eq1091;
    assign or1153 = or1152 | eq1050;
    assign or1154 = or1153 | eq1000;
    assign or1155 = or1154 | eq966;
    assign or1156 = or1155 | eq940;
    assign or1157 = or1156 | eq881;
    assign or1158 = or1157 | eq861;
    assign or1159 = or1158 | eq823;
    assign or1160 = or1159 | eq759;
    assign or1161 = or1160 | eq725;
    assign or1162 = or1161 | eq685;
    assign or1163 = or1162 | eq669;
    assign inv1164 = ~or1163;
    assign and1165 = inv1164 & eq1151;
    assign sel1166 = and1165 ? 3'b11 : sel1062;
    assign sel1167 = and1165 ? reg119 : sel1069;
    assign ne1170 = reg309 != 8'h20;
    assign and1172 = and1165 & ne1170;
    assign sel1173 = and1172 ? 1'b1 : sel1074;
    assign and1175 = and1172 & io_lsu_rd_req_ready;
    assign sel1176 = and1175 ? 5'b1110 : sel1149;
    assign add1178 = proxy374 + 32'h1;
    assign inv1180 = ~io_lsu_rd_req_ready;
    assign and1181 = and1172 & inv1180;
    assign proxy1182 = proxy367[223:192];
    assign sel1183 = and1181 ? add1178 : proxy1182;
    assign add1185 = proxy374 + 32'h1;
    assign inv1187 = ~ne1170;
    assign and1188 = and1165 & inv1187;
    assign sel1189 = and1188 ? add1185 : sel1183;
    assign eq1191 = reg437 == 5'b1110;
    assign or1192 = eq1151 | eq1125;
    assign or1193 = or1192 | eq1091;
    assign or1194 = or1193 | eq1050;
    assign or1195 = or1194 | eq1000;
    assign or1196 = or1195 | eq966;
    assign or1197 = or1196 | eq940;
    assign or1198 = or1197 | eq881;
    assign or1199 = or1198 | eq861;
    assign or1200 = or1199 | eq823;
    assign or1201 = or1200 | eq759;
    assign or1202 = or1201 | eq725;
    assign or1203 = or1202 | eq685;
    assign or1204 = or1203 | eq669;
    assign inv1205 = ~or1204;
    assign and1206 = inv1205 & eq1191;
    assign sel1207 = and1206 ? 3'b100 : sel1166;
    assign sel1208 = and1206 ? reg119 : sel1167;
    assign ne1210 = reg315 != 8'h20;
    assign and1212 = and1206 & ne1210;
    assign sel1213 = and1212 ? 1'b1 : sel1173;
    assign add1215 = reg119 + 20'h1;
    assign and1217 = and1212 & io_lsu_rd_req_ready;
    assign sel1218 = and1217 ? add1215 : sel1110;
    assign ne1219 = reg119 != reg131;
    assign and1221 = and1217 & ne1219;
    assign sel1222 = and1221 ? 5'b1101 : sel1176;
    assign inv1224 = ~ne1219;
    assign and1225 = and1217 & inv1224;
    assign sel1226 = and1225 ? 5'b1111 : sel1222;
    assign add1228 = proxy375 + 32'h1;
    assign inv1230 = ~io_lsu_rd_req_ready;
    assign and1231 = and1212 & inv1230;
    assign proxy1232 = proxy367[255:224];
    assign sel1233 = and1231 ? add1228 : proxy1232;
    assign add1235 = proxy375 + 32'h1;
    assign inv1237 = ~ne1210;
    assign and1238 = and1206 & inv1237;
    assign sel1239 = and1238 ? add1235 : sel1233;
    assign eq1241 = reg437 == 5'b1111;
    assign eq1242 = bindout242 == reg138;
    assign or1244 = eq1191 | eq1151;
    assign or1245 = or1244 | eq1125;
    assign or1246 = or1245 | eq1091;
    assign or1247 = or1246 | eq1050;
    assign or1248 = or1247 | eq1000;
    assign or1249 = or1248 | eq966;
    assign or1250 = or1249 | eq940;
    assign or1251 = or1250 | eq881;
    assign or1252 = or1251 | eq861;
    assign or1253 = or1252 | eq823;
    assign or1254 = or1253 | eq759;
    assign or1255 = or1254 | eq725;
    assign or1256 = or1255 | eq685;
    assign or1257 = or1256 | eq669;
    assign inv1258 = ~or1257;
    assign and1259 = inv1258 & eq1241;
    assign and1260 = and1259 & eq1242;
    assign and1261 = and1260 & bindout257;
    assign sel1262 = and1261 ? bindout260 : reg352;
    assign sel1263 = and1261 ? 1'b1 : 1'b0;
    assign and1265 = reg82 & 20'hf;
    assign sll1268 = and1265 << 20'h5;
    assign srl1270 = sel1262 >> sll1268;
    assign proxy1271 = srl1270;
    assign proxy1273 = proxy1271[31:0];
    assign sel1274 = and1261 ? proxy1273 : proxy146;
    assign and1276 = reg82 & 20'hf;
    assign sll1279 = and1276 << 20'h5;
    assign srl1281 = reg352 >> sll1279;
    assign proxy1282 = srl1281;
    assign proxy1284 = proxy1282[31:0];
    assign inv1285 = ~bindout257;
    assign and1286 = and1260 & inv1285;
    assign sel1287 = and1286 ? proxy1284 : sel1274;
    assign sel1289 = and1260 ? 5'b10000 : sel1226;
    assign add1291 = proxy375 + 32'h1;
    assign inv1293 = ~eq1242;
    assign and1294 = and1259 & inv1293;
    assign sel1295 = and1294 ? add1291 : sel1239;
    assign eq1297 = reg437 == 5'b10000;
    assign and1299 = reg88 & 20'hf;
    assign sll1302 = and1299 << 20'h5;
    assign srl1304 = bindout212 >> sll1302;
    assign proxy1305 = srl1304;
    assign proxy1307 = proxy1305[19:0];
    assign or1308 = eq1241 | eq1191;
    assign or1309 = or1308 | eq1151;
    assign or1310 = or1309 | eq1125;
    assign or1311 = or1310 | eq1091;
    assign or1312 = or1311 | eq1050;
    assign or1313 = or1312 | eq1000;
    assign or1314 = or1313 | eq966;
    assign or1315 = or1314 | eq940;
    assign or1316 = or1315 | eq881;
    assign or1317 = or1316 | eq861;
    assign or1318 = or1317 | eq823;
    assign or1319 = or1318 | eq759;
    assign or1320 = or1319 | eq725;
    assign or1321 = or1320 | eq685;
    assign or1322 = or1321 | eq669;
    assign inv1323 = ~or1322;
    assign and1324 = inv1323 & eq1297;
    assign sel1326 = and1324 ? proxy1307 : 20'h0;
    assign and1328 = reg88 & 20'hf;
    assign sll1331 = and1328 << 20'h5;
    assign srl1333 = bindout236 >> sll1331;
    assign proxy1334 = srl1333;
    assign proxy1336 = proxy1334[31:0];
    assign sel1338 = and1324 ? proxy1336 : 32'h0;
    assign proxy1339 = proxy140;
    assign sel1341 = and1324 ? proxy1339 : 32'h0;
    assign sel1343 = and1324 ? 1'b0 : 1'b0;
    assign sel1344 = and1324 ? 1'b1 : 1'b0;
    assign add1346 = reg88 + 20'h1;
    assign and1348 = and1324 & io_pe_ready;
    assign sel1349 = and1348 ? add1346 : sel793;
    assign ne1350 = reg88 != reg100;
    assign and1353 = reg88 & 20'hf;
    assign eq1356 = and1353 == 20'hf;
    assign and1358 = and1348 & ne1350;
    assign and1359 = and1358 & eq1356;
    assign sel1360 = and1359 ? 1'b1 : 1'b0;
    assign sel1361 = and1359 ? 1'b1 : 1'b0;
    assign sel1363 = and1359 ? 5'b10001 : sel1289;
    assign inv1364 = ~ne1350;
    assign and1365 = and1348 & inv1364;
    assign sel1366 = and1365 ? 1'b1 : sel1360;
    assign sel1367 = and1365 ? 1'b1 : sel1361;
    assign sel1368 = and1365 ? 5'b10010 : sel1363;
    assign add1370 = proxy378 + 32'h1;
    assign inv1372 = ~io_pe_ready;
    assign and1373 = and1324 & inv1372;
    assign proxy1374 = proxy367[351:320];
    assign sel1375 = and1373 ? add1370 : proxy1374;
    assign eq1377 = reg437 == 5'b10001;
    assign or1378 = eq1297 | eq1241;
    assign or1379 = or1378 | eq1191;
    assign or1380 = or1379 | eq1151;
    assign or1381 = or1380 | eq1125;
    assign or1382 = or1381 | eq1091;
    assign or1383 = or1382 | eq1050;
    assign or1384 = or1383 | eq1000;
    assign or1385 = or1384 | eq966;
    assign or1386 = or1385 | eq940;
    assign or1387 = or1386 | eq881;
    assign or1388 = or1387 | eq861;
    assign or1389 = or1388 | eq823;
    assign or1390 = or1389 | eq759;
    assign or1391 = or1390 | eq725;
    assign or1392 = or1391 | eq685;
    assign or1393 = or1392 | eq669;
    assign inv1394 = ~or1393;
    assign and1395 = inv1394 & eq1377;
    assign sel1396 = and1395 ? 5'b10000 : sel1368;
    assign eq1398 = reg437 == 5'b10010;
    assign add1400 = reg70 + 20'h1;
    assign or1402 = eq1377 | eq1297;
    assign or1403 = or1402 | eq1241;
    assign or1404 = or1403 | eq1191;
    assign or1405 = or1404 | eq1151;
    assign or1406 = or1405 | eq1125;
    assign or1407 = or1406 | eq1091;
    assign or1408 = or1407 | eq1050;
    assign or1409 = or1408 | eq1000;
    assign or1410 = or1409 | eq966;
    assign or1411 = or1410 | eq940;
    assign or1412 = or1411 | eq881;
    assign or1413 = or1412 | eq861;
    assign or1414 = or1413 | eq823;
    assign or1415 = or1414 | eq759;
    assign or1416 = or1415 | eq725;
    assign or1417 = or1416 | eq685;
    assign or1418 = or1417 | eq669;
    assign inv1419 = ~or1418;
    assign and1420 = inv1419 & eq1398;
    assign sel1421 = and1420 ? add1400 : sel673;
    assign ne1422 = reg70 != reg76;
    assign and1425 = reg70 & 20'hf;
    assign ne1428 = and1425 != 20'hf;
    assign and1431 = and1420 & ne1422;
    assign and1432 = and1431 & ne1428;
    assign sel1433 = and1432 ? 5'b10011 : sel1396;
    assign inv1434 = ~ne1428;
    assign and1435 = and1431 & inv1434;
    assign sel1436 = and1435 ? 5'b1 : sel1433;
    assign inv1438 = ~ne1422;
    assign and1439 = and1420 & inv1438;
    assign sel1440 = and1439 ? 5'b10100 : sel1436;
    assign eq1442 = reg437 == 5'b10011;
    assign and1444 = reg70 & 20'hf;
    assign sll1447 = and1444 << 20'h5;
    assign srl1449 = reg334 >> sll1447;
    assign proxy1450 = srl1449;
    assign proxy1452 = proxy1450[19:0];
    assign or1453 = eq1398 | eq1377;
    assign or1454 = or1453 | eq1297;
    assign or1455 = or1454 | eq1241;
    assign or1456 = or1455 | eq1191;
    assign or1457 = or1456 | eq1151;
    assign or1458 = or1457 | eq1125;
    assign or1459 = or1458 | eq1091;
    assign or1460 = or1459 | eq1050;
    assign or1461 = or1460 | eq1000;
    assign or1462 = or1461 | eq966;
    assign or1463 = or1462 | eq940;
    assign or1464 = or1463 | eq881;
    assign or1465 = or1464 | eq861;
    assign or1466 = or1465 | eq823;
    assign or1467 = or1466 | eq759;
    assign or1468 = or1467 | eq725;
    assign or1469 = or1468 | eq685;
    assign or1470 = or1469 | eq669;
    assign inv1471 = ~or1470;
    assign and1472 = inv1471 & eq1442;
    assign sel1473 = and1472 ? proxy1452 : sel780;
    assign and1475 = reg70 & 20'hf;
    assign sll1478 = and1475 << 20'h5;
    assign srl1480 = reg340 >> sll1478;
    assign proxy1481 = srl1480;
    assign proxy1483 = proxy1481[19:0];
    assign sel1484 = and1472 ? proxy1483 : sel1349;
    assign and1486 = reg70 & 20'hf;
    assign ne1489 = and1486 != 20'hf;
    assign add1492 = reg70 + 20'h1;
    assign and1495 = add1492 & 20'hf;
    assign sll1498 = and1495 << 20'h5;
    assign srl1500 = reg340 >> sll1498;
    assign proxy1501 = srl1500;
    assign proxy1503 = proxy1501[19:0];
    assign and1504 = and1472 & ne1489;
    assign sel1505 = and1504 ? proxy1503 : sel871;
    assign sel1506 = and1504 ? 5'b110 : sel1440;
    assign inv1507 = ~ne1489;
    assign and1508 = and1472 & inv1507;
    assign sel1509 = and1508 ? 5'b100 : sel1506;
    assign eq1511 = reg437 == 5'b10100;
    assign sub1512 = io_ctrl_timer - reg365;
    assign proxy1513 = sub1512;
    assign proxy1514 = proxy1513[31:0];
    assign or1515 = eq1442 | eq1398;
    assign or1516 = or1515 | eq1377;
    assign or1517 = or1516 | eq1297;
    assign or1518 = or1517 | eq1241;
    assign or1519 = or1518 | eq1191;
    assign or1520 = or1519 | eq1151;
    assign or1521 = or1520 | eq1125;
    assign or1522 = or1521 | eq1091;
    assign or1523 = or1522 | eq1050;
    assign or1524 = or1523 | eq1000;
    assign or1525 = or1524 | eq966;
    assign or1526 = or1525 | eq940;
    assign or1527 = or1526 | eq881;
    assign or1528 = or1527 | eq861;
    assign or1529 = or1528 | eq823;
    assign or1530 = or1529 | eq759;
    assign or1531 = or1530 | eq725;
    assign or1532 = or1531 | eq685;
    assign or1533 = or1532 | eq669;
    assign inv1534 = ~or1533;
    assign and1535 = inv1534 & eq1511;
    assign sel1536 = and1535 ? proxy1514 : reg358;
    assign sel1538 = and1535 ? 5'b10101 : sel1509;
    assign eq1540 = reg437 == 5'b10101;
    assign or1541 = eq1511 | eq1442;
    assign or1542 = or1541 | eq1398;
    assign or1543 = or1542 | eq1377;
    assign or1544 = or1543 | eq1297;
    assign or1545 = or1544 | eq1241;
    assign or1546 = or1545 | eq1191;
    assign or1547 = or1546 | eq1151;
    assign or1548 = or1547 | eq1125;
    assign or1549 = or1548 | eq1091;
    assign or1550 = or1549 | eq1050;
    assign or1551 = or1550 | eq1000;
    assign or1552 = or1551 | eq966;
    assign or1553 = or1552 | eq940;
    assign or1554 = or1553 | eq881;
    assign or1555 = or1554 | eq861;
    assign or1556 = or1555 | eq823;
    assign or1557 = or1556 | eq759;
    assign or1558 = or1557 | eq725;
    assign or1559 = or1558 | eq685;
    assign or1560 = or1559 | eq669;
    assign inv1561 = ~or1560;
    assign and1562 = inv1561 & eq1540;
    assign sel1563 = and1562 ? 1'b1 : sel1343;
    assign sel1564 = and1562 ? 1'b1 : sel1344;
    assign lt1565 = proxy369 < reg358;
    assign sel1567 = lt1565 ? proxy369 : reg358;
    assign eq1570 = proxy369 == 32'h0;
    assign sel1572 = eq1570 ? reg358 : sel1567;
    assign and1574 = and1562 & io_pe_ready;
    assign proxy1575 = proxy367[63:32];
    assign sel1576 = and1574 ? sel1572 : proxy1575;
    assign gt1577 = proxy369 > reg358;
    assign sel1579 = gt1577 ? proxy369 : reg358;
    assign proxy1581 = proxy367[95:64];
    assign sel1582 = and1574 ? sel1579 : proxy1581;
    assign add1583 = proxy371 + reg358;
    assign proxy1585 = proxy367[127:96];
    assign sel1586 = and1574 ? add1583 : proxy1585;
    assign add1588 = proxy368 + 32'h1;
    assign proxy1590 = proxy367[31:0];
    assign sel1591 = and1574 ? add1588 : proxy1590;
    assign sel1592 = and1574 ? 5'b0 : sel1538;
    assign add1594 = proxy378 + 32'h1;
    assign inv1596 = ~io_pe_ready;
    assign and1597 = and1562 & inv1596;
    assign sel1598 = and1597 ? add1594 : sel1375;

    assign io_ctrl_start_ready = io_ctrl_start_ready11;
    assign io_ctrl_stats = io_ctrl_stats17;
    assign io_lsu_rd_req_valid = sel1213;
    assign io_lsu_rd_req_data = io_lsu_rd_req_data34;
    assign io_pe_valid = io_pe_valid50;
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
    wire io_enq_valid2; // #1666 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] io_enq_data5; // #1667 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_enq_ready10; // #1670 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_deq_valid13; // #1671 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] io_deq_data16; // #1672 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_deq_ready21; // #1675 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] ch_pipe_data_t23; // #1676 /home/blaise/dev/cash/src/htl/pipe.h(17)
    wire proxy26; // #1679 /home/blaise/dev/cash/src/htl/pipe.h(18)
    wire[20:0] ch_pipe_data_t28; // #1680 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy32; // #1683 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy33; // #1684 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel36;
    reg[20:0] reg44;
    wire[20:0] proxy45; // #1691 unknown(0)
    wire proxy48; // #1694 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel49;
    reg reg53;
    wire proxy54; // #1697 unknown(0)
    wire[20:0] ch_pipe_data_t56; // #1698 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy60; // #1701 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy61; // #1702 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel64;
    reg[20:0] reg69;
    wire[20:0] proxy70; // #1709 unknown(0)
    wire proxy73; // #1712 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel74;
    reg reg77;
    wire proxy78; // #1715 unknown(0)
    wire[20:0] ch_pipe_data_t80; // #1716 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy84; // #1719 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy85; // #1720 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel88;
    reg[20:0] reg93;
    wire[20:0] proxy94; // #1727 unknown(0)
    wire proxy97; // #1730 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel98;
    reg reg101;
    wire proxy102; // #1733 unknown(0)

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
    always @ (posedge clk) reg44 <= reset ? 21'b0 : sel36;
    assign proxy45 = reg44;
    assign proxy48 = io_enq_valid2;
    assign sel49 = io_deq_ready21 ? proxy48 : proxy32;
    always @ (posedge clk) reg53 <= reset ? 1'b0 : sel49;
    assign proxy54 = reg53;
    assign ch_pipe_data_t56 = proxy70;
    assign proxy60 = proxy78;
    assign proxy61 = ch_pipe_data_t28;
    assign sel64 = io_deq_ready21 ? proxy61 : ch_pipe_data_t56;
    always @ (posedge clk) reg69 <= reset ? 21'b0 : sel64;
    assign proxy70 = reg69;
    assign proxy73 = proxy32;
    assign sel74 = io_deq_ready21 ? proxy73 : proxy60;
    always @ (posedge clk) reg77 <= reset ? 1'b0 : sel74;
    assign proxy78 = reg77;
    assign ch_pipe_data_t80 = proxy94;
    assign proxy84 = proxy102;
    assign proxy85 = ch_pipe_data_t56;
    assign sel88 = io_deq_ready21 ? proxy85 : ch_pipe_data_t80;
    always @ (posedge clk) reg93 <= reset ? 21'b0 : sel88;
    assign proxy94 = reg93;
    assign proxy97 = proxy60;
    assign sel98 = io_deq_ready21 ? proxy97 : proxy84;
    always @ (posedge clk) reg101 <= reset ? 1'b0 : sel98;
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
    wire[479:0] lit506 = 480'h0;
    wire[511:0] lit537 = 512'h0;
    wire[84:0] io_req_data5; // #1650 pe.cpp(14)
    wire[19:0] proxy6; // #1651 a_rowind(0)
    wire[31:0] proxy7; // #1652 a_value(0)
    wire[31:0] proxy8; // #1653 x_value(0)
    wire proxy9; // #1654 is_end(0)
    wire io_req_ready12; // #1655 pe.cpp(14)
    wire[533:0] io_lsu_wr_req_data18; // #1657 pe.cpp(14)
    wire[63:0] io_stats27; // #1662 pe.cpp(14)
    wire io_is_idle32; // #1665 pe.cpp(14)
    wire proxy35; // #1734 /home/blaise/dev/cash/src/module.h(33)
    wire bindin38;
    wire bindin40;
    wire bindin41;
    wire[20:0] proxy43; // #1735 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindin46;
    wire proxy48; // #1738 /home/blaise/dev/cash/src/module.h(33)
    wire bindout49;
    wire bindout52;
    wire[20:0] proxy54; // #1740 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy55; // #1741 a_rowind(0)
    wire proxy56; // #1742 is_end(0)
    wire[20:0] bindout57;
    wire proxy59; // #1743 /home/blaise/dev/cash/src/module.h(33)
    wire bindin60;
    wire proxy62; // #1812 /home/blaise/dev/cash/src/module.h(33)
    wire bindin64;
    wire bindin65;
    wire bindin66;
    wire[20:0] proxy68; // #1813 /home/blaise/dev/cash/src/module.h(33)
    wire proxy70; // #1815 is_end(0)
    wire[20:0] bindin71;
    wire bindout77;
    wire[20:0] proxy79; // #1818 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy80; // #1819 a_rowind(0)
    wire proxy81; // #1820 is_end(0)
    wire[20:0] bindout82;
    wire proxy84; // #1821 /home/blaise/dev/cash/src/module.h(33)
    wire bindin85;
    reg[31:0] mem86[0:31];
    reg[31:0] reg93; // #1822 pe.cpp(14)
    wire[31:0] proxy95; // #1825 pe.cpp(14)
    reg[31:0] reg99; // #1825 pe.cpp(14)
    reg[31:0] reg105; // #1828 pe.cpp(14)
    reg[31:0] reg111; // #1831 pe.cpp(14)
    wire[4:0] proxy115; // #1835 pe.cpp(14)
    wire[4:0] proxy117; // #1836 pe.cpp(14)
    reg[19:0] reg126; // #1838 pe.cpp(14)
    wire[63:0] proxy128; // #1841 pe.cpp(14)
    wire[31:0] proxy129; // #1842 write_value_stalls(0)
    wire[31:0] proxy130; // #1843 write_mask_stalls(0)
    wire[63:0] ch_pe_stats_t132; // #1844 /home/blaise/dev/cash/src/seq.h(17)
    reg[63:0] reg137; // #1841 pe.cpp(14)
    wire[31:0] proxy139;
    wire[31:0] sel140;
    reg[1:0] reg147; // #1849 pe.cpp(32)
    wire[31:0] sll150;
    wire[31:0] sll153;
    wire eq157;
    wire eq160;
    wire or162;
    wire proxy163; // #1860 unknown(0)
    wire eq165;
    wire[31:0] and167;
    wire eq170;
    wire and172;
    wire or174;
    wire proxy175; // #1867 unknown(0)
    wire eq177;
    wire eq180;
    wire and182;
    wire proxy183; // #1872 unknown(0)
    wire[31:0] and185;
    wire ne188;
    wire[31:0] sel191;
    wire and193;
    wire proxy194; // #1879 unknown(0)
    wire[31:0] proxy195; // #1880 pe.cpp(63)
    wire[31:0] proxy196; // #1881 pe.cpp(63)
    wire[31:0] fmult197;
    wire and199;
    wire proxy200; // #1883 unknown(0)
    wire[19:0] and203;
    wire[19:0] proxy204; // #1885 unknown(0)
    wire[4:0] proxy205; // #1886 pe.cpp(70)
    wire[31:0] fadd206;
    wire proxy208; // #1888 pe.cpp(75)
    wire eq210;
    wire and212;
    wire eq215;
    wire and217;
    wire eq220;
    wire and222;
    wire[31:0] add225;
    wire[31:0] sel227;
    wire[31:0] sub229;
    wire inv231;
    wire and232;
    wire[31:0] sel233;
    wire eq235;
    wire and237;
    wire eq240;
    wire and242;
    wire ne244;
    wire and246;
    wire[31:0] inv248;
    wire[31:0] and250;
    wire[31:0] or252;
    wire and254;
    wire[31:0] sel255;
    wire[31:0] inv256;
    wire[31:0] and258;
    wire inv260;
    wire and261;
    wire[31:0] sel262;
    wire[31:0] or263;
    wire inv265;
    wire and266;
    wire[31:0] sel267;
    wire[19:0] and270;
    wire[19:0] sel272;
    wire eq274;
    wire eq276;
    wire and278;
    wire sel280;
    wire[19:0] and282;
    wire[19:0] proxy283; // #1923 unknown(0)
    wire[4:0] proxy284; // #1924 pe.cpp(107)
    wire[4:0] sel285;
    wire[31:0] sel286;
    wire[31:0] or287;
    wire and289;
    wire[31:0] sel290;
    wire and291;
    wire and293;
    wire[31:0] sel294;
    wire[31:0] sel295;
    wire[1:0] sel297;
    wire eq299;
    wire[511:0] proxy301; // #1928 pe.cpp(125)
    wire[4:0] proxy303; // #1929 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy307; // #1932 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy311; // #1935 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy315; // #1938 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy319; // #1941 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy323; // #1944 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy327; // #1947 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy331; // #1950 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy335; // #1953 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy339; // #1956 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy343; // #1959 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy347; // #1962 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy351; // #1965 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy355; // #1968 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy359; // #1971 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy363; // #1974 /home/blaise/dev/cash/src/bit.h(287)
    wire inv366;
    wire and367;
    wire[1:0] sel369;
    wire[19:0] sll372;
    wire[19:0] srl376;
    wire[19:0] sel379;
    wire[511:0] sel381;
    wire sel383;
    wire and385;
    wire[1:0] sel386;
    wire[31:0] add388;
    wire inv390;
    wire and391;
    wire[31:0] proxy392;
    wire[31:0] sel393;
    wire eq395;
    wire[511:0] proxy397; // #1984 pe.cpp(144)
    wire[4:0] proxy399; // #1985 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy403; // #1988 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy407; // #1991 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy411; // #1994 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy415; // #1997 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy419; // #2000 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy423; // #2003 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy427; // #2006 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy431; // #2009 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy435; // #2012 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy439; // #2015 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy443; // #2018 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy447; // #2021 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy451; // #2024 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy455; // #2027 /home/blaise/dev/cash/src/bit.h(287)
    wire[4:0] proxy459; // #2030 /home/blaise/dev/cash/src/bit.h(287)
    wire or462;
    wire inv463;
    wire and464;
    wire[1:0] sel465;
    wire[19:0] sll467;
    wire[19:0] srl470;
    wire[19:0] add474;
    wire[19:0] sel476;
    wire[511:0] sel477;
    wire sel478;
    wire and480;
    wire[1:0] sel481;
    wire[31:0] add483;
    wire inv485;
    wire and486;
    wire[31:0] sel487;
    wire eq489;
    wire or490;
    wire or491;
    wire inv492;
    wire and493;
    wire[1:0] sel494;
    wire[19:0] srl497;
    wire[19:0] sll500;
    wire[19:0] srl503;
    wire[19:0] sel505;
    wire[479:0] proxy507; // #2048 /home/blaise/dev/cash/src/bit.h(1008)
    wire[511:0] proxy509; // #2049 pe.cpp(165)
    wire[19:0] srl511;
    wire[19:0] and515;
    wire[19:0] sll518;
    wire[511:0] sll520;
    wire[511:0] sel522;
    wire sel523;
    wire and524;
    wire[1:0] sel525;
    wire[31:0] add527;
    wire inv529;
    wire and530;
    wire[31:0] proxy531;
    wire[31:0] sel532;

    assign io_req_data5 = io_req_data;
    assign proxy6 = io_req_data5[19:0];
    assign proxy7 = io_req_data5[51:20];
    assign proxy8 = io_req_data5[83:52];
    assign proxy9 = io_req_data5[84];
    assign io_req_ready12 = proxy48;
    assign io_lsu_wr_req_data18 = {sel522, sel505, sel494};
    assign io_stats27 = proxy128;
    assign io_is_idle32 = proxy183;
    assign proxy35 = proxy194;
    assign bindin38 = clk;
    assign bindin40 = reset;
    ch_pipe __module16__(.clk(bindin38), .reset(bindin40), .io_enq_valid(bindin41), .io_enq_data(bindin46), .io_deq_ready(bindin60), .io_enq_ready(bindout49), .io_deq_valid(bindout52), .io_deq_data(bindout57));
    assign bindin41 = proxy35;
    assign proxy43 = {proxy9, proxy6};
    assign bindin46 = proxy43;
    assign proxy48 = bindout49;
    assign proxy54 = bindout57;
    assign proxy55 = proxy54[19:0];
    assign proxy56 = proxy54[20];
    assign proxy59 = proxy175;
    assign bindin60 = proxy59;
    assign proxy62 = proxy200;
    assign bindin64 = clk;
    assign bindin65 = reset;
    ch_pipe __module17__(.clk(bindin64), .reset(bindin65), .io_enq_valid(bindin66), .io_enq_data(bindin71), .io_deq_ready(bindin85), .io_deq_valid(bindout77), .io_deq_data(bindout82));
    assign bindin66 = proxy62;
    assign proxy68 = {proxy56, proxy55};
    assign proxy70 = proxy68[20];
    assign bindin71 = proxy68;
    assign proxy79 = bindout82;
    assign proxy80 = proxy79[19:0];
    assign proxy81 = proxy79[20];
    assign proxy84 = proxy163;
    assign bindin85 = proxy84;
    always @(posedge clk) mem86[proxy117] = proxy139;
    always @ (posedge clk) reg93 <= reset ? 32'h0 : sel295;
    assign proxy95 = reg99;
    always @ (posedge clk) reg99 <= reset ? 32'h0 : sel294;
    always @ (posedge clk) reg105 <= reset ? 32'h0 : sel267;
    always @ (posedge clk) reg111 <= reset ? 32'h0 : sel233;
    assign proxy115 = proxy205;
    assign proxy117 = sel285;
    always @ (posedge clk) reg126 <= reset ? 20'h0 : sel272;
    assign proxy128 = reg137;
    assign proxy129 = proxy128[31:0];
    assign proxy130 = proxy128[63:32];
    assign ch_pe_stats_t132 = {sel532, sel487};
    always @ (posedge clk) reg137 <= reset ? lit135 : ch_pe_stats_t132;
    assign proxy139 = sel140;
    assign sel140 = sel280 ? sel286 : mem86[proxy117];
    always @ (posedge clk) reg147 <= reset ? 2'b0 : sel525;
    assign sll150 = 32'h1 << proxy115;
    assign sll153 = 32'h1 << proxy117;
    assign eq157 = bindout77 == 1'b0;
    assign eq160 = 2'b0 == reg147;
    assign or162 = eq160 | eq157;
    assign proxy163 = or162;
    assign eq165 = bindout52 == 1'b0;
    assign and167 = reg105 & sll150;
    assign eq170 = 32'h0 == and167;
    assign and172 = proxy163 & eq170;
    assign or174 = and172 | eq165;
    assign proxy175 = or174;
    assign eq177 = 32'h0 == reg111;
    assign eq180 = reg147 == 2'b0;
    assign and182 = eq180 & eq177;
    assign proxy183 = and182;
    assign and185 = reg93 & sll150;
    assign ne188 = 32'h0 != and185;
    assign sel191 = ne188 ? mem86[proxy115] : 32'h0;
    assign and193 = io_req_valid & io_req_ready12;
    assign proxy194 = and193;
    assign proxy195 = proxy8;
    assign proxy196 = proxy7;
    fp_mult __fp_mult_197__(.clock(clk), .clk_en(proxy175), .dataa(proxy196), .datab(proxy195), .result(fmult197));
    assign and199 = bindout52 & proxy175;
    assign proxy200 = and199;
    assign and203 = proxy55 & 20'h1f;
    assign proxy204 = and203;
    assign proxy205 = proxy204[4:0];
    fp_add __fp_add_sub_206__(.clock(clk), .clk_en(proxy163), .dataa(fmult197), .datab(sel191), .result(fadd206));
    assign proxy208 = proxy35;
    assign eq210 = 2'b0 == reg147;
    assign and212 = eq210 & bindout77;
    assign eq215 = proxy208 == 1'b0;
    assign and217 = eq215 & and212;
    assign eq220 = and212 == 1'b0;
    assign and222 = proxy208 & eq220;
    assign add225 = reg111 + 32'h1;
    assign sel227 = and222 ? add225 : reg111;
    assign sub229 = reg111 - 32'h1;
    assign inv231 = ~and222;
    assign and232 = inv231 & and217;
    assign sel233 = and232 ? sub229 : sel227;
    assign eq235 = proxy70 == 1'b0;
    assign and237 = proxy62 & eq235;
    assign eq240 = proxy81 == 1'b0;
    assign and242 = and212 & eq240;
    assign ne244 = sll150 != sll153;
    assign and246 = and237 & ne244;
    assign inv248 = ~sll153;
    assign and250 = reg105 & inv248;
    assign or252 = and250 | sll150;
    assign and254 = and242 & and246;
    assign sel255 = and254 ? or252 : reg105;
    assign inv256 = ~sll153;
    assign and258 = reg105 & inv256;
    assign inv260 = ~and246;
    assign and261 = and242 & inv260;
    assign sel262 = and261 ? and258 : sel255;
    assign or263 = reg105 | sll150;
    assign inv265 = ~and242;
    assign and266 = inv265 & and237;
    assign sel267 = and266 ? or263 : sel262;
    assign and270 = proxy80 & 20'hfffe0;
    assign sel272 = and242 ? and270 : reg126;
    assign eq274 = reg147 == 2'b0;
    assign eq276 = proxy81 == 1'b0;
    assign and278 = bindout77 & eq276;
    assign sel280 = eq274 ? and278 : 1'b0;
    assign and282 = proxy80 & 20'h1f;
    assign proxy283 = and282;
    assign proxy284 = proxy283[4:0];
    assign sel285 = eq274 ? proxy284 : 5'b0;
    assign sel286 = eq274 ? fadd206 : 32'h0;
    assign or287 = reg93 | sll153;
    assign and289 = eq274 & sel280;
    assign sel290 = and289 ? or287 : reg93;
    assign and291 = bindout77 & proxy81;
    assign and293 = eq274 & and291;
    assign sel294 = and293 ? reg93 : proxy95;
    assign sel295 = and293 ? 32'h0 : sel290;
    assign sel297 = and293 ? 2'b1 : reg147;
    assign eq299 = reg147 == 2'b1;
    assign proxy301 = {mem86[proxy363], mem86[proxy359], mem86[proxy355], mem86[proxy351], mem86[proxy347], mem86[proxy343], mem86[proxy339], mem86[proxy335], mem86[proxy331], mem86[proxy327], mem86[proxy323], mem86[proxy319], mem86[proxy315], mem86[proxy311], mem86[proxy307], mem86[proxy303]};
    assign proxy303 = 5'b0;
    assign proxy307 = 5'b1;
    assign proxy311 = 5'b10;
    assign proxy315 = 5'b11;
    assign proxy319 = 5'b100;
    assign proxy323 = 5'b101;
    assign proxy327 = 5'b110;
    assign proxy331 = 5'b111;
    assign proxy335 = 5'b1000;
    assign proxy339 = 5'b1001;
    assign proxy343 = 5'b1010;
    assign proxy347 = 5'b1011;
    assign proxy351 = 5'b1100;
    assign proxy355 = 5'b1101;
    assign proxy359 = 5'b1110;
    assign proxy363 = 5'b1111;
    assign inv366 = ~eq274;
    assign and367 = inv366 & eq299;
    assign sel369 = and367 ? 2'b0 : 2'b0;
    assign sll372 = reg126 << 20'h2;
    assign srl376 = sll372 >> 20'h6;
    assign sel379 = and367 ? srl376 : 20'h0;
    assign sel381 = and367 ? proxy301 : lit537;
    assign sel383 = and367 ? 1'b1 : 1'b0;
    assign and385 = and367 & io_lsu_wr_req_ready;
    assign sel386 = and385 ? 2'b10 : sel297;
    assign add388 = proxy129 + 32'h1;
    assign inv390 = ~io_lsu_wr_req_ready;
    assign and391 = and367 & inv390;
    assign proxy392 = proxy128[31:0];
    assign sel393 = and391 ? add388 : proxy392;
    assign eq395 = reg147 == 2'b10;
    assign proxy397 = {mem86[proxy459], mem86[proxy455], mem86[proxy451], mem86[proxy447], mem86[proxy443], mem86[proxy439], mem86[proxy435], mem86[proxy431], mem86[proxy427], mem86[proxy423], mem86[proxy419], mem86[proxy415], mem86[proxy411], mem86[proxy407], mem86[proxy403], mem86[proxy399]};
    assign proxy399 = 5'b10000;
    assign proxy403 = 5'b10001;
    assign proxy407 = 5'b10010;
    assign proxy411 = 5'b10011;
    assign proxy415 = 5'b10100;
    assign proxy419 = 5'b10101;
    assign proxy423 = 5'b10110;
    assign proxy427 = 5'b10111;
    assign proxy431 = 5'b11000;
    assign proxy435 = 5'b11001;
    assign proxy439 = 5'b11010;
    assign proxy443 = 5'b11011;
    assign proxy447 = 5'b11100;
    assign proxy451 = 5'b11101;
    assign proxy455 = 5'b11110;
    assign proxy459 = 5'b11111;
    assign or462 = eq299 | eq274;
    assign inv463 = ~or462;
    assign and464 = inv463 & eq395;
    assign sel465 = and464 ? 2'b0 : sel369;
    assign sll467 = reg126 << 20'h2;
    assign srl470 = sll467 >> 20'h6;
    assign add474 = srl470 + 20'h1;
    assign sel476 = and464 ? add474 : sel379;
    assign sel477 = and464 ? proxy397 : sel381;
    assign sel478 = and464 ? 1'b1 : sel383;
    assign and480 = and464 & io_lsu_wr_req_ready;
    assign sel481 = and480 ? 2'b11 : sel386;
    assign add483 = proxy129 + 32'h1;
    assign inv485 = ~io_lsu_wr_req_ready;
    assign and486 = and464 & inv485;
    assign sel487 = and486 ? add483 : sel393;
    assign eq489 = reg147 == 2'b11;
    assign or490 = eq395 | eq299;
    assign or491 = or490 | eq274;
    assign inv492 = ~or491;
    assign and493 = inv492 & eq489;
    assign sel494 = and493 ? 2'b1 : sel465;
    assign srl497 = reg126 >> 20'h5;
    assign sll500 = srl497 << 20'h2;
    assign srl503 = sll500 >> 20'h6;
    assign sel505 = and493 ? srl503 : sel476;
    assign proxy507 = lit506;
    assign proxy509 = {proxy507, proxy95};
    assign srl511 = reg126 >> 20'h5;
    assign and515 = srl511 & 20'hf;
    assign sll518 = and515 << 20'h5;
    assign sll520 = proxy509 << sll518;
    assign sel522 = and493 ? sll520 : sel477;
    assign sel523 = and493 ? 1'b1 : sel478;
    assign and524 = and493 & io_lsu_wr_req_ready;
    assign sel525 = and524 ? 2'b0 : sel481;
    assign add527 = proxy130 + 32'h1;
    assign inv529 = ~io_lsu_wr_req_ready;
    assign and530 = and493 & inv529;
    assign proxy531 = proxy128[63:32];
    assign sel532 = and530 ? add527 : proxy531;

    assign io_req_ready = io_req_ready12;
    assign io_lsu_wr_req_valid = sel523;
    assign io_lsu_wr_req_data = io_lsu_wr_req_data18;
    assign io_stats = io_stats27;
    assign io_is_idle = io_is_idle32;

endmodule


module ch_hxbar(
    input wire[2:0] io_sel,
    input wire[71:0] io_in,
    output wire[23:0] io_out
);
    wire[2:0] io_sel2; // #2602 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[71:0] io_in5; // #2603 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy6; // #2604 unknown(0)
    wire[23:0] proxy7; // #2605 unknown(0)
    wire[23:0] proxy8; // #2606 unknown(0)
    wire[23:0] io_out23; // #2619 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[2:0] proxy30; // #2625 /home/blaise/dev/cash/src/htl/xbar.h(20)
    wire eq39;
    wire[23:0] sel40;
    wire eq41;
    wire[23:0] sel42;
    wire eq43;
    wire[23:0] sel44;
    wire[23:0] proxy45; // #2630 unknown(0)

    assign io_sel2 = io_sel;
    assign io_in5 = io_in;
    assign proxy6 = io_in5[71:48];
    assign proxy7 = io_in5[47:24];
    assign proxy8 = io_in5[23:0];
    assign io_out23 = proxy45;
    assign proxy30 = io_sel2;
    assign eq39 = proxy30 == 3'b100;
    assign sel40 = eq39 ? proxy6 : 24'h0;
    assign eq41 = proxy30 == 3'b10;
    assign sel42 = eq41 ? proxy7 : sel40;
    assign eq43 = proxy30 == 3'b1;
    assign sel44 = eq43 ? proxy8 : sel42;
    assign proxy45 = sel44;

    assign io_out = io_out23;

endmodule

module ch_rrArbiter(
    input wire clk,
    input wire reset,
    input wire[2:0] io_in,
    output wire[2:0] io_grant
);
    wire[2:0] io_in2; // #2658 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy3; // #2659 unknown(0)
    wire proxy4; // #2660 unknown(0)
    wire proxy5; // #2661 unknown(0)
    wire[2:0] io_grant8; // #2662 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy22; // #2667 /home/blaise/dev/cash/src/seq.h(17)
    reg reg24; // #2666 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire proxy28; // #2670 /home/blaise/dev/cash/src/seq.h(17)
    reg reg30; // #2669 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire proxy46; // #2679 /home/blaise/dev/cash/src/seq.h(17)
    reg reg48; // #2678 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire[2:0] proxy68; // #2690 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy70; // #2691 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy72; // #2692 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy74; // #2693 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire and75;
    wire proxy76; // #2694 unknown(0)
    wire and78;
    wire proxy79; // #2696 unknown(0)
    wire orr82;
    wire inv84;
    wire and86;
    wire proxy87; // #2701 unknown(0)
    wire proxy89; // #2703 unknown(0)
    wire inv90;
    wire proxy92; // #2705 unknown(0)
    wire or93;
    wire and95;
    wire proxy96; // #2707 unknown(0)
    wire proxy97; // #2708 unknown(0)
    wire inv98;
    wire proxy100; // #2710 unknown(0)
    wire or101;
    wire and103;
    wire proxy104; // #2712 unknown(0)
    wire and105;
    wire proxy106; // #2713 unknown(0)
    wire inv109;
    wire and111;
    wire proxy112; // #2717 unknown(0)
    wire orr114;
    wire inv116;
    wire and118;
    wire proxy119; // #2721 unknown(0)
    wire proxy121; // #2723 unknown(0)
    wire inv122;
    wire proxy124; // #2725 unknown(0)
    wire or125;
    wire and127;
    wire proxy128; // #2727 unknown(0)
    wire inv130;
    wire and132;
    wire proxy133; // #2730 unknown(0)
    wire inv135;
    wire and137;
    wire proxy138; // #2733 unknown(0)
    wire orr140;
    wire inv142;
    wire and144;
    wire proxy145; // #2737 unknown(0)

    assign io_in2 = io_in;
    assign proxy3 = io_in2[2];
    assign proxy4 = io_in2[1];
    assign proxy5 = io_in2[0];
    assign io_grant8 = proxy74;
    assign proxy22 = proxy96;
    always @ (posedge clk) reg24 <= reset ? 1'b0 : proxy22;
    assign proxy28 = proxy104;
    always @ (posedge clk) reg30 <= reset ? 1'b0 : proxy28;
    assign proxy46 = proxy128;
    always @ (posedge clk) reg48 <= reset ? 1'b0 : proxy46;
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
    wire io_in_0_valid2; // #2581 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_0_data5; // #2582 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_0_ready10; // #2585 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_valid13; // #2586 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_1_data16; // #2587 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_ready21; // #2590 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_valid24; // #2591 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_2_data27; // #2592 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_ready32; // #2595 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_out_valid35; // #2596 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_out_data38; // #2597 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] io_out_grant46; // #2601 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] proxy49; // #2635 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindin51;
    wire[71:0] proxy53; // #2636 /home/blaise/dev/cash/src/module.h(33)
    wire[71:0] bindin69;
    wire[23:0] proxy71; // #2652 /home/blaise/dev/cash/src/module.h(33)
    wire[23:0] proxy72; // #2653 unknown(0)
    wire proxy73; // #2654 valid(0)
    wire[22:0] proxy74; // #2655 data(0)
    wire[23:0] bindout77;
    wire[2:0] proxy79; // #2739 /home/blaise/dev/cash/src/module.h(33)
    wire bindin85;
    wire bindin87;
    wire[2:0] bindin88;
    wire[2:0] proxy90; // #2743 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout91;
    wire eq111;
    wire and113;
    wire proxy114; // #2755 unknown(0)
    wire eq117;
    wire and119;
    wire proxy120; // #2758 unknown(0)
    wire eq123;
    wire and125;
    wire proxy126; // #2761 unknown(0)

    assign io_in_0_valid2 = io_in_0_valid;
    assign io_in_0_data5 = io_in_0_data;
    assign io_in_0_ready10 = proxy114;
    assign io_in_1_valid13 = io_in_1_valid;
    assign io_in_1_data16 = io_in_1_data;
    assign io_in_1_ready21 = proxy120;
    assign io_in_2_valid24 = io_in_2_valid;
    assign io_in_2_data27 = io_in_2_data;
    assign io_in_2_ready32 = proxy126;
    assign io_out_valid35 = proxy73;
    assign io_out_data38 = proxy74;
    assign io_out_grant46 = proxy90;
    assign proxy49 = proxy90;
    ch_hxbar __module23__(.io_sel(bindin51), .io_in(bindin69), .io_out(bindout77));
    assign bindin51 = proxy49;
    assign proxy53 = {io_in_2_data27, io_in_2_valid24, io_in_1_data16, io_in_1_valid13, io_in_0_data5, io_in_0_valid2};
    assign bindin69 = proxy53;
    assign proxy71 = bindout77;
    assign proxy72 = proxy71;
    assign proxy73 = proxy72[0];
    assign proxy74 = proxy72[23:1];
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
    wire[534:0] lit41 = 535'b0;
    wire[2:0] io_sel2; // #2808 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[1604:0] io_in5; // #2809 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy6; // #2810 unknown(0)
    wire[534:0] proxy7; // #2811 unknown(0)
    wire[534:0] proxy8; // #2812 unknown(0)
    wire[534:0] io_out26; // #2828 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[2:0] proxy34; // #2835 /home/blaise/dev/cash/src/htl/xbar.h(20)
    wire eq43;
    wire[534:0] sel44;
    wire eq45;
    wire[534:0] sel46;
    wire eq47;
    wire[534:0] sel48;
    wire[534:0] proxy49; // #2840 unknown(0)

    assign io_sel2 = io_sel;
    assign io_in5 = io_in;
    assign proxy6 = io_in5[1604:1070];
    assign proxy7 = io_in5[1069:535];
    assign proxy8 = io_in5[534:0];
    assign io_out26 = proxy49;
    assign proxy34 = io_sel2;
    assign eq43 = proxy34 == 3'b100;
    assign sel44 = eq43 ? proxy6 : lit41;
    assign eq45 = proxy34 == 3'b10;
    assign sel46 = eq45 ? proxy7 : sel44;
    assign eq47 = proxy34 == 3'b1;
    assign sel48 = eq47 ? proxy8 : sel46;
    assign proxy49 = sel48;

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
    wire io_in_0_valid2; // #2783 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_0_data5; // #2784 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_0_ready11; // #2788 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_valid14; // #2789 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_1_data17; // #2790 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_ready23; // #2794 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_valid26; // #2795 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_2_data29; // #2796 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_ready35; // #2800 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_out_valid38; // #2801 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_out_data41; // #2802 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] io_out_grant50; // #2807 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] proxy53; // #2846 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindin55;
    wire[1604:0] proxy57; // #2847 /home/blaise/dev/cash/src/module.h(33)
    wire[1604:0] bindin76;
    wire[534:0] proxy78; // #2866 /home/blaise/dev/cash/src/module.h(33)
    wire[534:0] proxy79; // #2867 unknown(0)
    wire proxy80; // #2868 valid(0)
    wire[533:0] proxy81; // #2869 data(0)
    wire[534:0] bindout85;
    wire[2:0] proxy87; // #2954 /home/blaise/dev/cash/src/module.h(33)
    wire bindin93;
    wire bindin95;
    wire[2:0] bindin96;
    wire[2:0] proxy98; // #2958 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout99;
    wire eq119;
    wire and121;
    wire proxy122; // #2970 unknown(0)
    wire eq125;
    wire and127;
    wire proxy128; // #2973 unknown(0)
    wire eq131;
    wire and133;
    wire proxy134; // #2976 unknown(0)

    assign io_in_0_valid2 = io_in_0_valid;
    assign io_in_0_data5 = io_in_0_data;
    assign io_in_0_ready11 = proxy122;
    assign io_in_1_valid14 = io_in_1_valid;
    assign io_in_1_data17 = io_in_1_data;
    assign io_in_1_ready23 = proxy128;
    assign io_in_2_valid26 = io_in_2_valid;
    assign io_in_2_data29 = io_in_2_data;
    assign io_in_2_ready35 = proxy134;
    assign io_out_valid38 = proxy80;
    assign io_out_data41 = proxy81;
    assign io_out_grant50 = proxy98;
    assign proxy53 = proxy98;
    ch_hxbar_0 __module26__(.io_sel(bindin55), .io_in(bindin76), .io_out(bindout85));
    assign bindin55 = proxy53;
    assign proxy57 = {io_in_2_data29, io_in_2_valid26, io_in_1_data17, io_in_1_valid14, io_in_0_data5, io_in_0_valid2};
    assign bindin76 = proxy57;
    assign proxy78 = bindout85;
    assign proxy79 = proxy78;
    assign proxy80 = proxy79[0];
    assign proxy81 = proxy79[534:1];
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
    reg reg11; // #3002 wrcache.h(58)
    reg[19:0] reg18; // #3005 wrcache.h(58)
    wire proxy20; // #3008 wrcache.h(58)
    wire proxy22; // #3009 wrcache.h(58)
    reg reg38; // #3016 wrcache.h(58)
    wire io_enq_valid40; // #3019 wrcache.h(58)
    wire[533:0] io_enq_data43; // #3020 wrcache.h(58)
    wire[1:0] proxy44; // #3021 owner(0)
    wire[19:0] proxy45; // #3022 tag(0)
    wire[511:0] proxy46; // #3023 data(0)
    wire io_enq_ready49; // #3024 wrcache.h(58)
    wire[533:0] io_evict_data55; // #3026 wrcache.h(58)
    wire[511:0] proxy67;
    wire[511:0] sel68;
    wire[21:0] proxy72;
    wire[21:0] sel73;
    reg[2:0] reg80; // #3036 wrcache.h(72)
    wire[533:0] proxy82; // #3039 wrcache.h(73)
    wire[1:0] proxy83; // #3040 owner(0)
    wire[19:0] proxy84; // #3041 tag(0)
    wire[511:0] proxy85; // #3042 data(0)
    reg[533:0] reg93; // #3039 wrcache.h(73)
    wire proxy94; // #3048 wrcache.h(76)
    wire proxy95; // #3049 wrcache.h(77)
    wire proxy97; // #3050 wrcache.h(78)
    wire proxy98; // #3051 wrcache.h(79)
    wire[533:0] entry_t99; // #3052 wrcache.h(84)
    wire[1:0] proxy100; // #3053 owner(0)
    wire[19:0] proxy101; // #3054 tag(0)
    wire proxy104; // #3057 /home/blaise/dev/cash/src/bit.h(287)
    wire[1:0] proxy106; // #3059 owners(0)
    wire ne110;
    wire proxy112; // #3063 /home/blaise/dev/cash/src/bit.h(287)
    wire[19:0] proxy115; // #3066 tag(0)
    wire eq116;
    wire and118;
    wire sel121;
    wire proxy122; // #3070 unknown(0)
    wire proxy124; // #3072 /home/blaise/dev/cash/src/bit.h(287)
    wire[1:0] proxy126; // #3074 owners(0)
    wire[1:0] and128;
    wire ne131;
    wire sel134;
    wire proxy135; // #3080 unknown(0)
    wire proxy137; // #3082 /home/blaise/dev/cash/src/bit.h(287)
    wire[1:0] proxy139; // #3084 owners(0)
    wire eq142;
    wire sel145;
    wire proxy146; // #3089 unknown(0)
    wire proxy147; // #3090 wrcache.h(97)
    reg reg149;
    wire proxy150; // #3092 unknown(0)
    wire proxy151; // #3093 wrcache.h(98)
    reg reg153;
    wire proxy154; // #3095 unknown(0)
    wire proxy155; // #3096 wrcache.h(99)
    reg reg157;
    wire proxy158; // #3098 unknown(0)
    wire proxy159; // #3099 wrcache.h(100)
    reg reg161;
    wire proxy162; // #3101 unknown(0)
    wire eq164;
    wire proxy165; // #3103 unknown(0)
    reg reg171; // #3104 wrcache.h(106)
    wire eq173;
    wire and174;
    wire sel175;
    wire[1:0] proxy176; // #3109 owners(0)
    wire[1:0] and178;
    wire ne181;
    wire eq183;
    wire and185;
    wire and187;
    wire sel188;
    wire sel189;
    wire[511:0] or190;
    wire[511:0] sel192;
    wire[1:0] proxy193; // #3119 owners(0)
    wire[1:0] or195;
    wire[1:0] proxy196; // #3121 unknown(0)
    wire[19:0] proxy198; // #3124 tag(0)
    wire[21:0] tag_t200; // #3125 wrcache.h(119)
    wire[21:0] sel203;
    wire inv204;
    wire and205;
    wire[533:0] sel206;
    wire[2:0] sel208;
    wire inv209;
    wire and210;
    wire and211;
    wire sel212;
    wire[2:0] sel214;
    wire eq216;
    wire inv217;
    wire and218;
    wire and219;
    wire sel220;
    wire[19:0] proxy223; // #3131 tag(0)
    wire eq224;
    wire[1:0] proxy226; // #3134 owners(0)
    wire ne229;
    wire and231;
    wire and233;
    wire sel234;
    wire sel235;
    wire sel236;
    wire[511:0] or237;
    wire[511:0] sel239;
    wire[1:0] proxy240; // #3142 owners(0)
    wire[1:0] or242;
    wire[1:0] proxy243; // #3144 unknown(0)
    wire[19:0] proxy245; // #3147 tag(0)
    wire[21:0] tag_t247; // #3148 wrcache.h(143)
    wire[21:0] sel250;
    wire[19:0] sel251;
    wire sel252;
    wire ne253;
    wire and255;
    wire sel256;
    wire[2:0] sel258;
    wire inv259;
    wire and260;
    wire[2:0] sel261;
    wire inv262;
    wire and263;
    wire sel264;
    wire sel265;
    wire sel266;
    wire[511:0] sel267;
    wire[21:0] tag_t269; // #3152 wrcache.h(163)
    wire[21:0] sel272;
    wire[19:0] sel273;
    wire sel274;
    wire ne275;
    wire and277;
    wire sel278;
    wire[2:0] sel279;
    wire inv280;
    wire and281;
    wire[2:0] sel282;
    wire eq284;
    wire or285;
    wire inv286;
    wire and287;
    wire sel288;
    wire[1:0] proxy289; // #3158 owners(0)
    wire eq291;
    wire and293;
    wire sel294;
    wire[19:0] proxy296; // #3163 tag(0)
    wire[21:0] tag_t298; // #3164 wrcache.h(186)
    wire[1:0] proxy301; // #3167 wrcache.h(29)
    wire[21:0] sel302;
    wire[2:0] sel304;
    wire[1:0] proxy305; // #3169 owners(0)
    wire[1:0] and307;
    wire ne310;
    wire inv312;
    wire and313;
    wire and314;
    wire sel315;
    wire[1:0] inv316;
    wire[1:0] proxy318; // #3176 owners(0)
    wire[1:0] and320;
    wire[1:0] proxy321; // #3178 unknown(0)
    wire[19:0] proxy323; // #3181 tag(0)
    wire[21:0] tag_t325; // #3182 wrcache.h(194)
    wire[21:0] sel328;
    wire[2:0] sel329;
    wire eq331;
    wire or332;
    wire or333;
    wire inv334;
    wire and335;
    wire sel336;
    wire[1:0] sel338;
    wire[19:0] proxy340; // #3188 tag(0)
    wire[19:0] sel342;
    wire[511:0] sel344;
    wire sel345;
    wire and346;
    wire[2:0] sel347;
    wire eq349;
    wire or350;
    wire or351;
    wire or352;
    wire inv353;
    wire and354;
    wire sel355;
    wire[1:0] proxy356; // #3192 owners(0)
    wire ne359;
    wire and361;
    wire[1:0] sel362;
    wire[19:0] proxy364; // #3198 tag(0)
    wire[19:0] sel365;
    wire[511:0] sel366;
    wire sel367;
    wire add369;
    wire and371;
    wire sel372;
    wire eq374;
    wire and376;
    wire[2:0] sel377;
    wire add379;
    wire inv381;
    wire and382;
    wire sel383;
    wire eq385;
    wire and387;
    wire[2:0] sel388;

    always @(posedge clk) mem1[proxy20] = proxy72;
    always @(posedge clk) mem3[proxy20] = proxy67;
    always @ (posedge clk) reg11 <= reset ? 1'b0 : sel274;
    always @ (posedge clk) reg18 <= reset ? 20'h0 : sel273;
    assign proxy20 = sel355;
    assign proxy22 = sel220;
    always @ (posedge clk) reg38 <= reset ? 1'b0 : sel383;
    assign io_enq_valid40 = io_enq_valid;
    assign io_enq_data43 = io_enq_data;
    assign proxy44 = io_enq_data43[1:0];
    assign proxy45 = io_enq_data43[21:2];
    assign proxy46 = io_enq_data43[533:22];
    assign io_enq_ready49 = proxy165;
    assign io_evict_data55 = {sel366, sel365, sel362};
    assign proxy67 = sel68;
    assign sel68 = sel264 ? sel267 : mem3[proxy20];
    assign proxy72 = sel73;
    assign sel73 = sel315 ? sel328 : mem1[proxy20];
    always @ (posedge clk) reg80 <= reset ? 3'b0 : sel388;
    assign proxy82 = reg93;
    assign proxy83 = proxy82[1:0];
    assign proxy84 = proxy82[21:2];
    assign proxy85 = proxy82[533:22];
    always @ (posedge clk) reg93 <= reset ? lit91 : sel206;
    assign proxy94 = proxy150;
    assign proxy95 = proxy154;
    assign proxy97 = proxy158;
    assign proxy98 = proxy162;
    assign entry_t99 = io_enq_data43;
    assign proxy100 = entry_t99[1:0];
    assign proxy101 = entry_t99[21:2];
    assign proxy104 = 1'b1;
    assign proxy106 = mem1[proxy104][1:0];
    assign ne110 = proxy106 != 2'b0;
    assign proxy112 = 1'b1;
    assign proxy115 = mem1[proxy112][21:2];
    assign eq116 = proxy115 == proxy101;
    assign and118 = eq116 & ne110;
    assign sel121 = and118 ? 1'b1 : 1'b0;
    assign proxy122 = sel121;
    assign proxy124 = 1'b1;
    assign proxy126 = mem1[proxy124][1:0];
    assign and128 = proxy126 & proxy100;
    assign ne131 = and128 != 2'b0;
    assign sel134 = ne131 ? 1'b1 : 1'b0;
    assign proxy135 = sel134;
    assign proxy137 = 1'b0;
    assign proxy139 = mem1[proxy137][1:0];
    assign eq142 = proxy139 == 2'b0;
    assign sel145 = eq142 ? 1'b0 : 1'b1;
    assign proxy146 = sel145;
    assign proxy147 = proxy122;
    always @ (posedge clk) reg149 <= reset ? 1'b0 : proxy147;
    assign proxy150 = reg149;
    assign proxy151 = proxy135;
    always @ (posedge clk) reg153 <= reset ? 1'b0 : proxy151;
    assign proxy154 = reg153;
    assign proxy155 = proxy146;
    always @ (posedge clk) reg157 <= reset ? 1'b0 : proxy155;
    assign proxy158 = reg157;
    assign proxy159 = io_enq_valid40;
    always @ (posedge clk) reg161 <= reset ? 1'b0 : proxy159;
    assign proxy162 = reg161;
    assign eq164 = reg80 == 3'b0;
    assign proxy165 = eq164;
    always @ (posedge clk) reg171 <= reset ? 1'b0 : sel278;
    assign eq173 = reg80 == 3'b0;
    assign and174 = eq173 & io_enq_valid40;
    assign sel175 = and174 ? reg11 : 1'b0;
    assign proxy176 = mem1[proxy20][1:0];
    assign and178 = proxy176 & proxy44;
    assign ne181 = and178 != 2'b0;
    assign eq183 = proxy45 == reg18;
    assign and185 = eq183 & ne181;
    assign and187 = and174 & and185;
    assign sel188 = and187 ? 1'b1 : 1'b0;
    assign sel189 = and187 ? 1'b1 : 1'b0;
    assign or190 = mem3[proxy20] | proxy46;
    assign sel192 = and187 ? or190 : lit394;
    assign proxy193 = mem1[proxy20][1:0];
    assign or195 = proxy193 | proxy44;
    assign proxy196 = or195;
    assign proxy198 = mem1[proxy20][21:2];
    assign tag_t200 = {proxy198, proxy196};
    assign sel203 = and187 ? tag_t200 : 22'b0;
    assign inv204 = ~and185;
    assign and205 = and174 & inv204;
    assign sel206 = and205 ? io_enq_data43 : proxy82;
    assign sel208 = and205 ? 3'b1 : reg80;
    assign inv209 = ~io_enq_valid40;
    assign and210 = eq173 & inv209;
    assign and211 = and210 & io_flush;
    assign sel212 = and211 ? 1'b0 : reg38;
    assign sel214 = and211 ? 3'b100 : sel208;
    assign eq216 = reg80 == 3'b1;
    assign inv217 = ~eq173;
    assign and218 = inv217 & eq216;
    assign and219 = and218 & proxy98;
    assign sel220 = and219 ? proxy94 : 1'b0;
    assign proxy223 = mem1[proxy22][21:2];
    assign eq224 = proxy223 == proxy84;
    assign proxy226 = mem1[proxy22][1:0];
    assign ne229 = proxy226 != 2'b0;
    assign and231 = ne229 & eq224;
    assign and233 = and219 & and231;
    assign sel234 = and233 ? 1'b1 : sel188;
    assign sel235 = and233 ? 1'b1 : sel189;
    assign sel236 = and233 ? proxy94 : sel175;
    assign or237 = mem3[proxy20] | proxy85;
    assign sel239 = and233 ? or237 : sel192;
    assign proxy240 = mem1[proxy20][1:0];
    assign or242 = proxy240 | proxy83;
    assign proxy243 = or242;
    assign proxy245 = mem1[proxy20][21:2];
    assign tag_t247 = {proxy245, proxy243};
    assign sel250 = and233 ? tag_t247 : sel203;
    assign sel251 = and233 ? proxy84 : reg18;
    assign sel252 = and233 ? proxy94 : reg11;
    assign ne253 = proxy94 != proxy95;
    assign and255 = and233 & ne253;
    assign sel256 = and255 ? proxy95 : reg171;
    assign sel258 = and255 ? 3'b10 : sel214;
    assign inv259 = ~ne253;
    assign and260 = and233 & inv259;
    assign sel261 = and260 ? 3'b0 : sel258;
    assign inv262 = ~and231;
    assign and263 = and219 & inv262;
    assign sel264 = and263 ? 1'b1 : sel234;
    assign sel265 = and263 ? 1'b1 : sel235;
    assign sel266 = and263 ? proxy97 : sel236;
    assign sel267 = and263 ? proxy85 : sel239;
    assign tag_t269 = {proxy84, proxy83};
    assign sel272 = and263 ? tag_t269 : sel250;
    assign sel273 = and263 ? proxy84 : sel251;
    assign sel274 = and263 ? proxy97 : sel252;
    assign ne275 = proxy97 != proxy95;
    assign and277 = and263 & ne275;
    assign sel278 = and277 ? proxy95 : sel256;
    assign sel279 = and277 ? 3'b10 : sel261;
    assign inv280 = ~ne275;
    assign and281 = and263 & inv280;
    assign sel282 = and281 ? 3'b0 : sel279;
    assign eq284 = reg80 == 3'b10;
    assign or285 = eq216 | eq173;
    assign inv286 = ~or285;
    assign and287 = inv286 & eq284;
    assign sel288 = and287 ? reg171 : sel266;
    assign proxy289 = mem1[proxy20][1:0];
    assign eq291 = proxy289 == proxy83;
    assign and293 = and287 & eq291;
    assign sel294 = and293 ? 1'b1 : sel265;
    assign proxy296 = mem1[proxy20][21:2];
    assign tag_t298 = {proxy296, proxy301};
    assign proxy301 = 2'b0;
    assign sel302 = and293 ? tag_t298 : sel272;
    assign sel304 = and293 ? 3'b11 : sel282;
    assign proxy305 = mem1[proxy20][1:0];
    assign and307 = proxy305 & proxy83;
    assign ne310 = and307 != 2'b0;
    assign inv312 = ~eq291;
    assign and313 = and287 & inv312;
    assign and314 = and313 & ne310;
    assign sel315 = and314 ? 1'b1 : sel294;
    assign inv316 = ~proxy83;
    assign proxy318 = mem1[proxy20][1:0];
    assign and320 = proxy318 & inv316;
    assign proxy321 = and320;
    assign proxy323 = mem1[proxy20][21:2];
    assign tag_t325 = {proxy323, proxy321};
    assign sel328 = and314 ? tag_t325 : sel302;
    assign sel329 = and313 ? 3'b0 : sel304;
    assign eq331 = reg80 == 3'b11;
    assign or332 = eq284 | eq216;
    assign or333 = or332 | eq173;
    assign inv334 = ~or333;
    assign and335 = inv334 & eq331;
    assign sel336 = and335 ? reg171 : sel288;
    assign sel338 = and335 ? proxy83 : 2'b0;
    assign proxy340 = mem1[proxy20][21:2];
    assign sel342 = and335 ? proxy340 : 20'h0;
    assign sel344 = and335 ? mem3[proxy20] : lit394;
    assign sel345 = and335 ? 1'b1 : 1'b0;
    assign and346 = and335 & io_evict_ready;
    assign sel347 = and346 ? 3'b0 : sel329;
    assign eq349 = reg80 == 3'b100;
    assign or350 = eq331 | eq284;
    assign or351 = or350 | eq216;
    assign or352 = or351 | eq173;
    assign inv353 = ~or352;
    assign and354 = inv353 & eq349;
    assign sel355 = and354 ? reg38 : sel336;
    assign proxy356 = mem1[proxy20][1:0];
    assign ne359 = proxy356 != 2'b0;
    assign and361 = and354 & ne359;
    assign sel362 = and361 ? 2'b0 : sel338;
    assign proxy364 = mem1[proxy20][21:2];
    assign sel365 = and361 ? proxy364 : sel342;
    assign sel366 = and361 ? mem3[proxy20] : sel344;
    assign sel367 = and361 ? 1'b1 : sel345;
    assign add369 = reg38 + 1'b1;
    assign and371 = and361 & io_evict_ready;
    assign sel372 = and371 ? add369 : sel212;
    assign eq374 = reg38 == 1'b1;
    assign and376 = and371 & eq374;
    assign sel377 = and376 ? 3'b0 : sel347;
    assign add379 = reg38 + 1'b1;
    assign inv381 = ~ne359;
    assign and382 = and354 & inv381;
    assign sel383 = and382 ? add379 : sel372;
    assign eq385 = reg38 == 1'b1;
    assign and387 = and382 & eq385;
    assign sel388 = and387 ? 3'b0 : sel377;

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
    wire[19:0] io_qpi_rd_req_addr5; // #2504 lsu.cpp(19)
    wire[13:0] io_qpi_rd_req_mdata8; // #2505 lsu.cpp(19)
    wire io_qpi_rd_req_valid11; // #2506 lsu.cpp(19)
    wire[13:0] io_qpi_rd_rsp_mdata14; // #2507 lsu.cpp(19)
    wire[511:0] io_qpi_rd_rsp_data17; // #2508 lsu.cpp(19)
    wire[19:0] io_qpi_wr_req_addr26; // #2511 lsu.cpp(19)
    wire[13:0] io_qpi_wr_req_mdata29; // #2512 lsu.cpp(19)
    wire[511:0] io_qpi_wr_req_data32; // #2513 lsu.cpp(19)
    wire io_qpi_wr_req_valid35; // #2514 lsu.cpp(19)
    wire[511:0] io_ctx50; // #2519 lsu.cpp(19)
    wire[131:0] proxy51; // #2520 a(0)
    wire[19:0] proxy53; // #2522 col_ptr(0)
    wire[19:0] proxy54; // #2523 col_ind(0)
    wire[19:0] proxy55; // #2524 row_ptr(0)
    wire[19:0] proxy56; // #2525 row_ind(0)
    wire[19:0] proxy57; // #2526 values(0)
    wire[39:0] proxy58; // #2527 x(0)
    wire[19:0] proxy59; // #2528 values(0)
    wire[19:0] proxy60; // #2529 masks(0)
    wire[39:0] proxy61; // #2530 y(0)
    wire[19:0] proxy62; // #2531 values(0)
    wire[19:0] proxy63; // #2532 masks(0)
    wire[19:0] proxy64; // #2533 stats(0)
    wire io_ctrl_rd_req_valid68; // #2535 lsu.cpp(19)
    wire[22:0] io_ctrl_rd_req_data71; // #2536 lsu.cpp(19)
    wire io_ctrl_rd_req_ready76; // #2539 lsu.cpp(19)
    wire io_ctrl_wr_req_valid79; // #2540 lsu.cpp(19)
    wire[533:0] io_ctrl_wr_req_data82; // #2541 lsu.cpp(19)
    wire io_ctrl_wr_req_ready88; // #2545 lsu.cpp(19)
    wire io_ctrl_rd_rsp_valid91; // #2546 lsu.cpp(19)
    wire[514:0] io_ctrl_rd_rsp_data94; // #2547 lsu.cpp(19)
    wire[31:0] io_ctrl_outstanding_writes99; // #2550 lsu.cpp(19)
    wire io_walkers_0_rd_req_valid102; // #2551 lsu.cpp(19)
    wire[22:0] io_walkers_0_rd_req_data105; // #2552 lsu.cpp(19)
    wire io_walkers_0_rd_req_ready110; // #2555 lsu.cpp(19)
    wire io_walkers_0_rd_rsp_valid113; // #2556 lsu.cpp(19)
    wire[514:0] io_walkers_0_rd_rsp_data116; // #2557 lsu.cpp(19)
    wire io_walkers_1_rd_req_valid121; // #2560 lsu.cpp(19)
    wire[22:0] io_walkers_1_rd_req_data124; // #2561 lsu.cpp(19)
    wire io_walkers_1_rd_req_ready129; // #2564 lsu.cpp(19)
    wire io_walkers_1_rd_rsp_valid132; // #2565 lsu.cpp(19)
    wire[514:0] io_walkers_1_rd_rsp_data135; // #2566 lsu.cpp(19)
    wire io_PEs_0_wr_req_valid140; // #2569 lsu.cpp(19)
    wire[533:0] io_PEs_0_wr_req_data143; // #2570 lsu.cpp(19)
    wire io_PEs_0_wr_req_ready149; // #2574 lsu.cpp(19)
    wire io_PEs_1_wr_req_valid152; // #2575 lsu.cpp(19)
    wire[533:0] io_PEs_1_wr_req_data155; // #2576 lsu.cpp(19)
    wire io_PEs_1_wr_req_ready161; // #2580 lsu.cpp(19)
    wire proxy164; // #2762 /home/blaise/dev/cash/src/module.h(33)
    wire bindin167;
    wire bindin169;
    wire bindin170;
    wire[22:0] proxy172; // #2763 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin175;
    wire proxy177; // #2766 /home/blaise/dev/cash/src/module.h(33)
    wire bindout178;
    wire proxy180; // #2767 /home/blaise/dev/cash/src/module.h(33)
    wire bindin181;
    wire[22:0] proxy183; // #2768 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin186;
    wire proxy188; // #2771 /home/blaise/dev/cash/src/module.h(33)
    wire bindout189;
    wire proxy191; // #2772 /home/blaise/dev/cash/src/module.h(33)
    wire bindin192;
    wire[22:0] proxy194; // #2773 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin197;
    wire proxy199; // #2776 /home/blaise/dev/cash/src/module.h(33)
    wire bindout200;
    wire proxy202; // #2777 /home/blaise/dev/cash/src/module.h(33)
    wire bindout203;
    wire[22:0] proxy205; // #2778 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy206; // #2779 type(0)
    wire[19:0] proxy207; // #2780 addr(0)
    wire[22:0] bindout208;
    wire proxy210; // #2781 /home/blaise/dev/cash/src/module.h(33)
    wire bindin211;
    wire[2:0] proxy213; // #2782 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout214;
    wire proxy216; // #2977 /home/blaise/dev/cash/src/module.h(33)
    wire bindin218;
    wire bindin219;
    wire bindin220;
    wire[533:0] proxy222; // #2978 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin226;
    wire proxy228; // #2982 /home/blaise/dev/cash/src/module.h(33)
    wire bindout229;
    wire proxy231; // #2983 /home/blaise/dev/cash/src/module.h(33)
    wire bindin232;
    wire[533:0] proxy234; // #2984 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin238;
    wire proxy240; // #2988 /home/blaise/dev/cash/src/module.h(33)
    wire bindout241;
    wire proxy243; // #2989 /home/blaise/dev/cash/src/module.h(33)
    wire bindin244;
    wire[533:0] proxy246; // #2990 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin250;
    wire proxy252; // #2994 /home/blaise/dev/cash/src/module.h(33)
    wire bindout253;
    wire bindout256;
    wire[533:0] proxy258; // #2996 /home/blaise/dev/cash/src/module.h(33)
    wire[1:0] proxy259; // #2997 type(0)
    wire[19:0] proxy260; // #2998 addr(0)
    wire[511:0] proxy261; // #2999 data(0)
    wire[533:0] bindout262;
    wire proxy264; // #3000 /home/blaise/dev/cash/src/module.h(33)
    wire bindin265;
    wire[2:0] bindout268;
    wire bindin272;
    wire bindin273;
    wire bindin274;
    wire[533:0] proxy276; // #3209 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin280;
    wire bindout283;
    wire bindout286;
    wire[533:0] proxy288; // #3215 /home/blaise/dev/cash/src/module.h(33)
    wire[1:0] proxy289; // #3216 owner(0)
    wire[19:0] proxy290; // #3217 tag(0)
    wire[511:0] proxy291; // #3218 data(0)
    wire[533:0] bindout292;
    wire proxy294; // #3219 /home/blaise/dev/cash/src/module.h(33)
    wire bindin295;
    wire bindin298;
    wire eq301;
    wire proxy302; // #3222 unknown(0)
    wire proxy304; // #3223 lsu.cpp(47)
    wire proxy306; // #3224 /home/blaise/dev/cash/src/seq.h(17)
    reg reg308; // #3223 lsu.cpp(47)
    wire[19:0] proxy310; // #3226 lsu.cpp(48)
    wire[19:0] proxy312; // #3227 /home/blaise/dev/cash/src/seq.h(17)
    reg[19:0] reg315; // #3226 lsu.cpp(48)
    wire[13:0] proxy317; // #3229 lsu.cpp(49)
    wire[13:0] proxy319; // #3230 /home/blaise/dev/cash/src/seq.h(17)
    reg[13:0] reg322; // #3229 lsu.cpp(49)
    wire[2:0] proxy323; // #3232 lsu.cpp(53)
    wire eq328;
    wire[19:0] sel329;
    wire eq332;
    wire inv333;
    wire and334;
    wire[19:0] sel335;
    wire eq338;
    wire or339;
    wire inv340;
    wire and341;
    wire[19:0] sel342;
    wire eq345;
    wire or346;
    wire or347;
    wire inv348;
    wire and349;
    wire[19:0] sel350;
    wire eq353;
    wire or354;
    wire or355;
    wire or356;
    wire inv357;
    wire and358;
    wire[19:0] sel359;
    wire eq362;
    wire or363;
    wire or364;
    wire or365;
    wire or366;
    wire inv367;
    wire and368;
    wire[19:0] sel369;
    wire[19:0] add376;
    wire[19:0] proxy377; // #3240 unknown(0)
    wire[5:0] ch_rd_mdata_t379; // #3241 lsu.cpp(55)
    wire[2:0] proxy382; // #3244 lsu.h(39)
    wire[7:0] proxy384; // #3245 /home/blaise/dev/cash/src/bit.h(1008)
    wire[13:0] proxy386; // #3246 lsu.cpp(55)
    reg[2:0] reg392; // #3247 lsu.cpp(70)
    reg reg398; // #3250 lsu.cpp(71)
    wire eq402;
    wire eq405;
    wire proxy406; // #3257 unknown(0)
    wire eq408;
    wire and410;
    wire proxy411; // #3260 unknown(0)
    wire[533:0] proxy413; // #3261 lsu.cpp(81)
    wire[1:0] proxy414; // #3262 type(0)
    wire[19:0] proxy415; // #3263 addr(0)
    wire[511:0] proxy416; // #3264 data(0)
    wire[533:0] ch_lsu_wr_req_t418; // #3265 /home/blaise/dev/cash/src/seq.h(17)
    reg[533:0] reg424; // #3261 lsu.cpp(81)
    wire[2:0] proxy426; // #3270 lsu.cpp(82)
    reg[2:0] reg430; // #3270 lsu.cpp(82)
    wire and431;
    wire or435;
    wire[31:0] sel441;
    wire[31:0] sel442;
    wire[31:0] proxy445; // #3279 lsu.cpp(89)
    reg[31:0] reg449; // #3279 lsu.cpp(89)
    wire proxy451; // #3282 lsu.cpp(91)
    reg reg455; // #3282 lsu.cpp(91)
    wire[19:0] proxy457; // #3285 lsu.cpp(92)
    reg[19:0] reg461; // #3285 lsu.cpp(92)
    wire[511:0] proxy463; // #3288 lsu.cpp(93)
    reg[511:0] reg468; // #3288 lsu.cpp(93)
    wire[13:0] proxy470; // #3291 lsu.cpp(94)
    reg[13:0] reg474; // #3291 lsu.cpp(94)
    wire eq476;
    wire[4:0] ch_wr_mdata_t478; // #3295 lsu.cpp(100)
    wire[1:0] proxy481; // #3298 lsu.cpp(101)
    wire eq486;
    wire[19:0] sel487;
    wire eq490;
    wire inv491;
    wire and492;
    wire[19:0] sel493;
    wire[19:0] add496;
    wire and498;
    wire[19:0] sel499;
    wire[511:0] sel500;
    wire[8:0] proxy502; // #3303 /home/blaise/dev/cash/src/bit.h(1008)
    wire[13:0] proxy504; // #3304 lsu.cpp(103)
    wire[13:0] sel505;
    wire sel507;
    wire proxy508; // #3305 /home/blaise/dev/cash/src/bit.h(1008)
    wire[2:0] proxy510; // #3306 lsu.cpp(109)
    wire[4:0] ch_wr_mdata_t512; // #3307 lsu.cpp(110)
    wire[1:0] proxy515; // #3310 lsu.h(44)
    wire eq520;
    wire[19:0] sel521;
    wire eq523;
    wire inv524;
    wire and525;
    wire[19:0] sel526;
    wire[19:0] add529;
    wire inv531;
    wire and532;
    wire and533;
    wire[19:0] sel534;
    wire[511:0] sel535;
    wire[8:0] proxy536; // #3316 /home/blaise/dev/cash/src/bit.h(1008)
    wire[13:0] proxy538; // #3317 lsu.cpp(113)
    wire[13:0] sel539;
    wire sel540;
    wire eq542;
    wire eq544;
    wire inv546;
    wire and547;
    wire and548;
    wire sel549;
    wire[31:0] add551;
    wire[31:0] sub553;
    wire[31:0] sel555;
    wire sel556;
    wire[31:0] sub559;
    wire eq562;
    wire and563;
    wire[19:0] proxy564;
    wire[19:0] sel565;
    wire[1:0] proxy566;
    wire[1:0] sel567;
    wire[511:0] proxy568;
    wire[511:0] sel569;
    wire[2:0] sel570;
    wire eq572;
    wire eq575;
    wire and577;
    wire and578;
    wire[2:0] sel579;
    wire inv580;
    wire and581;
    wire[2:0] sel582;
    wire inv583;
    wire and584;
    wire[2:0] sel585;
    wire eq587;
    wire inv588;
    wire and589;
    wire sel590;
    wire and591;
    wire[2:0] sel592;
    wire eq594;
    wire[1:0] proxy596; // #3332 lsu.cpp(173)
    wire or597;
    wire inv598;
    wire and599;
    wire[1:0] sel601;
    wire[19:0] sel603;
    wire[511:0] sel605;
    wire sel606;
    wire and607;
    wire[2:0] sel608;
    wire eq610;
    wire or611;
    wire or612;
    wire inv613;
    wire and614;
    wire sel615;
    wire and616;
    wire[2:0] sel617;
    wire eq619;
    wire or620;
    wire or621;
    wire or622;
    wire inv623;
    wire and624;
    wire and625;
    wire[2:0] sel626;
    wire[5:0] proxy633; // #3335 lsu.cpp(226)
    wire[2:0] proxy634; // #3336 type(0)
    wire[2:0] proxy635; // #3337 owner(0)
    wire eq637;
    wire and639;
    wire proxy640; // #3340 unknown(0)
    wire eq642;
    wire and644;
    wire proxy645; // #3343 unknown(0)
    wire eq647;
    wire and649;
    wire proxy650; // #3346 unknown(0)

    assign io_qpi_rd_req_addr5 = proxy310;
    assign io_qpi_rd_req_mdata8 = proxy317;
    assign io_qpi_rd_req_valid11 = proxy304;
    assign io_qpi_rd_rsp_mdata14 = io_qpi_rd_rsp_mdata;
    assign io_qpi_rd_rsp_data17 = io_qpi_rd_rsp_data;
    assign io_qpi_wr_req_addr26 = proxy457;
    assign io_qpi_wr_req_mdata29 = proxy470;
    assign io_qpi_wr_req_data32 = proxy463;
    assign io_qpi_wr_req_valid35 = proxy451;
    assign io_ctx50 = io_ctx;
    assign proxy51 = io_ctx50[131:0];
    assign proxy53 = proxy51[51:32];
    assign proxy54 = proxy51[71:52];
    assign proxy55 = proxy51[91:72];
    assign proxy56 = proxy51[111:92];
    assign proxy57 = proxy51[131:112];
    assign proxy58 = io_ctx50[171:132];
    assign proxy59 = proxy58[19:0];
    assign proxy60 = proxy58[39:20];
    assign proxy61 = io_ctx50[211:172];
    assign proxy62 = proxy61[19:0];
    assign proxy63 = proxy61[39:20];
    assign proxy64 = io_ctx50[231:212];
    assign io_ctrl_rd_req_valid68 = io_ctrl_rd_req_valid;
    assign io_ctrl_rd_req_data71 = io_ctrl_rd_req_data;
    assign io_ctrl_rd_req_ready76 = proxy199;
    assign io_ctrl_wr_req_valid79 = io_ctrl_wr_req_valid;
    assign io_ctrl_wr_req_data82 = io_ctrl_wr_req_data;
    assign io_ctrl_wr_req_ready88 = proxy252;
    assign io_ctrl_rd_rsp_valid91 = proxy640;
    assign io_ctrl_rd_rsp_data94 = {io_qpi_rd_rsp_data17, proxy634};
    assign io_ctrl_outstanding_writes99 = proxy445;
    assign io_walkers_0_rd_req_valid102 = io_walkers_0_rd_req_valid;
    assign io_walkers_0_rd_req_data105 = io_walkers_0_rd_req_data;
    assign io_walkers_0_rd_req_ready110 = proxy177;
    assign io_walkers_0_rd_rsp_valid113 = proxy645;
    assign io_walkers_0_rd_rsp_data116 = {io_qpi_rd_rsp_data17, proxy634};
    assign io_walkers_1_rd_req_valid121 = io_walkers_1_rd_req_valid;
    assign io_walkers_1_rd_req_data124 = io_walkers_1_rd_req_data;
    assign io_walkers_1_rd_req_ready129 = proxy188;
    assign io_walkers_1_rd_rsp_valid132 = proxy650;
    assign io_walkers_1_rd_rsp_data135 = {io_qpi_rd_rsp_data17, proxy634};
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
    assign proxy206 = proxy205[2:0];
    assign proxy207 = proxy205[22:3];
    assign proxy210 = proxy302;
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
    assign proxy259 = proxy258[1:0];
    assign proxy260 = proxy258[21:2];
    assign proxy261 = proxy258[533:22];
    assign proxy264 = proxy406;
    assign bindin265 = proxy264;
    assign bindin272 = clk;
    assign bindin273 = reset;
    spmv_write_cache __module28__(.clk(bindin272), .reset(bindin273), .io_enq_valid(bindin274), .io_enq_data(bindin280), .io_evict_ready(bindin295), .io_flush(bindin298), .io_enq_ready(bindout283), .io_evict_valid(bindout286), .io_evict_data(bindout292));
    assign bindin274 = sel606;
    assign proxy276 = {sel605, sel603, sel601};
    assign bindin280 = proxy276;
    assign proxy288 = bindout292;
    assign proxy289 = proxy288[1:0];
    assign proxy290 = proxy288[21:2];
    assign proxy291 = proxy288[533:22];
    assign proxy294 = proxy411;
    assign bindin295 = proxy294;
    assign bindin298 = sel615;
    assign eq301 = io_qpi_rd_req_almostfull == 1'b0;
    assign proxy302 = eq301;
    assign proxy304 = reg308;
    assign proxy306 = proxy202;
    always @ (posedge clk) reg308 <= reset ? 1'b0 : proxy306;
    assign proxy310 = reg315;
    assign proxy312 = proxy377;
    always @ (posedge clk) reg315 <= reset ? 20'h0 : proxy312;
    assign proxy317 = reg322;
    assign proxy319 = proxy386;
    always @ (posedge clk) reg322 <= reset ? 14'b0 : proxy319;
    assign proxy323 = proxy206;
    assign eq328 = proxy323 == 3'b0;
    assign sel329 = eq328 ? proxy53 : proxy60;
    assign eq332 = proxy323 == 3'b1;
    assign inv333 = ~eq328;
    assign and334 = inv333 & eq332;
    assign sel335 = and334 ? proxy54 : sel329;
    assign eq338 = proxy323 == 3'b10;
    assign or339 = eq332 | eq328;
    assign inv340 = ~or339;
    assign and341 = inv340 & eq338;
    assign sel342 = and341 ? proxy55 : sel335;
    assign eq345 = proxy323 == 3'b11;
    assign or346 = eq338 | eq332;
    assign or347 = or346 | eq328;
    assign inv348 = ~or347;
    assign and349 = inv348 & eq345;
    assign sel350 = and349 ? proxy56 : sel342;
    assign eq353 = proxy323 == 3'b100;
    assign or354 = eq345 | eq338;
    assign or355 = or354 | eq332;
    assign or356 = or355 | eq328;
    assign inv357 = ~or356;
    assign and358 = inv357 & eq353;
    assign sel359 = and358 ? proxy57 : sel350;
    assign eq362 = proxy323 == 3'b101;
    assign or363 = eq353 | eq345;
    assign or364 = or363 | eq338;
    assign or365 = or364 | eq332;
    assign or366 = or365 | eq328;
    assign inv367 = ~or366;
    assign and368 = inv367 & eq362;
    assign sel369 = and368 ? proxy59 : sel359;
    assign add376 = sel369 + proxy207;
    assign proxy377 = add376;
    assign ch_rd_mdata_t379 = {proxy382, proxy206};
    assign proxy382 = proxy213;
    assign proxy384 = 8'h0;
    assign proxy386 = {proxy384, ch_rd_mdata_t379};
    always @ (posedge clk) reg392 <= reset ? 3'b0 : sel626;
    always @ (posedge clk) reg398 <= reset ? 1'b0 : sel556;
    assign eq402 = reg398 == 1'b0;
    assign eq405 = reg392 == 3'b0;
    assign proxy406 = eq405;
    assign eq408 = sel590 == 1'b0;
    assign and410 = eq402 & eq408;
    assign proxy411 = and410;
    assign proxy413 = reg424;
    assign proxy414 = proxy413[1:0];
    assign proxy415 = proxy413[21:2];
    assign proxy416 = proxy413[533:22];
    assign ch_lsu_wr_req_t418 = {sel569, sel565, sel567};
    always @ (posedge clk) reg424 <= reset ? lit422 : ch_lsu_wr_req_t418;
    assign proxy426 = reg430;
    always @ (posedge clk) reg430 <= reset ? 3'b0 : sel570;
    assign and431 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
    assign or435 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
    assign sel441 = or435 ? 32'h1 : 32'h0;
    assign sel442 = and431 ? 32'h2 : sel441;
    assign proxy445 = reg449;
    always @ (posedge clk) reg449 <= reset ? 32'h0 : sel555;
    assign proxy451 = reg455;
    always @ (posedge clk) reg455 <= reset ? 1'b0 : sel549;
    assign proxy457 = reg461;
    always @ (posedge clk) reg461 <= reset ? 20'h0 : sel534;
    assign proxy463 = reg468;
    always @ (posedge clk) reg468 <= reset ? lit466 : sel535;
    assign proxy470 = reg474;
    always @ (posedge clk) reg474 <= reset ? 14'b0 : sel539;
    assign eq476 = reg398 == 1'b0;
    assign ch_wr_mdata_t478 = {proxy426, proxy414};
    assign proxy481 = proxy414;
    assign eq486 = proxy481 == 2'b0;
    assign sel487 = eq486 ? proxy62 : proxy64;
    assign eq490 = proxy481 == 2'b1;
    assign inv491 = ~eq486;
    assign and492 = inv491 & eq490;
    assign sel493 = and492 ? proxy63 : sel487;
    assign add496 = sel493 + proxy415;
    assign and498 = eq476 & sel590;
    assign sel499 = and498 ? add496 : proxy457;
    assign sel500 = and498 ? proxy416 : proxy463;
    assign proxy502 = 9'b0;
    assign proxy504 = {proxy502, ch_wr_mdata_t478};
    assign sel505 = and498 ? proxy504 : proxy470;
    assign sel507 = and498 ? 1'b1 : reg398;
    assign proxy508 = 1'b0;
    assign proxy510 = {proxy508, proxy289};
    assign ch_wr_mdata_t512 = {proxy510, proxy515};
    assign proxy515 = 2'b1;
    assign eq520 = 2'b1 == 2'b0;
    assign sel521 = eq520 ? proxy62 : proxy64;
    assign eq523 = 2'b1 == 2'b1;
    assign inv524 = ~eq520;
    assign and525 = inv524 & eq523;
    assign sel526 = and525 ? proxy63 : sel521;
    assign add529 = sel526 + proxy290;
    assign inv531 = ~sel590;
    assign and532 = eq476 & inv531;
    assign and533 = and532 & bindout286;
    assign sel534 = and533 ? add529 : sel499;
    assign sel535 = and533 ? proxy291 : sel500;
    assign proxy536 = 9'b0;
    assign proxy538 = {proxy536, ch_wr_mdata_t512};
    assign sel539 = and533 ? proxy538 : sel505;
    assign sel540 = and533 ? 1'b1 : sel507;
    assign eq542 = reg398 == 1'b1;
    assign eq544 = io_qpi_wr_req_almostfull == 1'b0;
    assign inv546 = ~eq476;
    assign and547 = inv546 & eq542;
    assign and548 = and547 & eq544;
    assign sel549 = and548 ? 1'b1 : 1'b0;
    assign add551 = proxy445 + 32'h1;
    assign sub553 = add551 - sel442;
    assign sel555 = and548 ? sub553 : sub559;
    assign sel556 = and548 ? 1'b0 : sel540;
    assign sub559 = proxy445 - sel442;
    assign eq562 = reg392 == 3'b0;
    assign and563 = eq562 & bindout256;
    assign proxy564 = proxy413[21:2];
    assign sel565 = and563 ? proxy260 : proxy564;
    assign proxy566 = proxy413[1:0];
    assign sel567 = and563 ? proxy259 : proxy566;
    assign proxy568 = proxy413[533:22];
    assign sel569 = and563 ? proxy261 : proxy568;
    assign sel570 = and563 ? bindout268 : proxy426;
    assign eq572 = proxy259 == 2'b1;
    assign eq575 = bindout268 == 3'b100;
    assign and577 = and563 & eq572;
    assign and578 = and577 & eq575;
    assign sel579 = and578 ? 3'b11 : reg392;
    assign inv580 = ~eq575;
    assign and581 = and577 & inv580;
    assign sel582 = and581 ? 3'b10 : sel579;
    assign inv583 = ~eq572;
    assign and584 = and563 & inv583;
    assign sel585 = and584 ? 3'b1 : sel582;
    assign eq587 = reg392 == 3'b1;
    assign inv588 = ~eq562;
    assign and589 = inv588 & eq587;
    assign sel590 = and589 ? 1'b1 : 1'b0;
    assign and591 = and589 & eq402;
    assign sel592 = and591 ? 3'b0 : sel585;
    assign eq594 = reg392 == 3'b10;
    assign proxy596 = proxy426[1:0];
    assign or597 = eq587 | eq562;
    assign inv598 = ~or597;
    assign and599 = inv598 & eq594;
    assign sel601 = and599 ? proxy596 : 2'b0;
    assign sel603 = and599 ? proxy415 : 20'h0;
    assign sel605 = and599 ? proxy416 : lit466;
    assign sel606 = and599 ? 1'b1 : 1'b0;
    assign and607 = and599 & bindout283;
    assign sel608 = and607 ? 3'b0 : sel592;
    assign eq610 = reg392 == 3'b11;
    assign or611 = eq594 | eq587;
    assign or612 = or611 | eq562;
    assign inv613 = ~or612;
    assign and614 = inv613 & eq610;
    assign sel615 = and614 ? 1'b1 : 1'b0;
    assign and616 = and614 & bindout283;
    assign sel617 = and616 ? 3'b100 : sel608;
    assign eq619 = reg392 == 3'b100;
    assign or620 = eq610 | eq594;
    assign or621 = or620 | eq587;
    assign or622 = or621 | eq562;
    assign inv623 = ~or622;
    assign and624 = inv623 & eq619;
    assign and625 = and624 & bindout283;
    assign sel626 = and625 ? 3'b0 : sel617;
    assign proxy633 = io_qpi_rd_rsp_mdata14[5:0];
    assign proxy634 = proxy633[2:0];
    assign proxy635 = proxy633[5:3];
    assign eq637 = proxy635 == 3'b100;
    assign and639 = io_qpi_rd_rsp_valid & eq637;
    assign proxy640 = and639;
    assign eq642 = proxy635 == 3'b1;
    assign and644 = io_qpi_rd_rsp_valid & eq642;
    assign proxy645 = and644;
    assign eq647 = proxy635 == 3'b10;
    assign and649 = io_qpi_rd_rsp_valid & eq647;
    assign proxy650 = and649;

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
    wire io_enq_ready8; // #3427 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #3428 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #3429 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[2:0] io_size20; // #3431 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[2:0] proxy23; // #3432 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy25; // #3433 /home/blaise/dev/cash/src/seq.h(17)
    reg[2:0] reg30; // #3432 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy32; // #3435 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy34; // #3436 /home/blaise/dev/cash/src/seq.h(17)
    reg[2:0] reg36; // #3435 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy38; // #3438 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire[1:0] proxy40; // #3439 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[2:0] add47;
    wire[2:0] sel49;
    wire[2:0] proxy50; // #3444 unknown(0)
    wire[2:0] add52;
    wire[2:0] sel54;
    wire[2:0] proxy55; // #3447 unknown(0)
    reg[511:0] mem56[0:3];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #3450 unknown(0)
    wire proxy63; // #3451 unknown(0)
    wire proxy64; // #3452 unknown(0)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #3455 unknown(0)
    wire[2:0] sub71;
    wire[2:0] proxy72; // #3456 unknown(0)

    assign io_enq_ready8 = proxy70;
    assign io_deq_valid11 = proxy62;
    assign io_deq_data14 = mem56[proxy38];
    assign io_size20 = proxy72;
    assign proxy23 = reg30;
    assign proxy25 = proxy50;
    always @ (posedge clk) reg30 <= reset ? 3'b0 : proxy25;
    assign proxy32 = reg36;
    assign proxy34 = proxy55;
    always @ (posedge clk) reg36 <= reset ? 3'b0 : proxy34;
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
    always @(posedge clk) mem56[proxy40] = proxy58;
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
    wire[95:0] lit515 = 96'h0;
    wire[63:0] lit542 = 64'h0;
    wire[63:0] lit545 = 64'h1;
    wire[415:0] lit703 = 416'h0;
    wire[511:0] lit788 = 512'h0;
    wire[543:0] lit836 = 544'h20;
    wire io_qpi_rd_req_almostfull2; // #1 aal.h(74)
    wire[19:0] io_qpi_rd_req_addr5; // #2 aal.h(74)
    wire[13:0] io_qpi_rd_req_mdata8; // #3 aal.h(74)
    wire io_qpi_rd_req_valid11; // #4 aal.h(74)
    wire[13:0] io_qpi_rd_rsp_mdata14; // #5 aal.h(74)
    wire[511:0] io_qpi_rd_rsp_data17; // #6 aal.h(74)
    wire io_qpi_rd_rsp_valid20; // #7 aal.h(74)
    wire io_qpi_wr_req_almostfull23; // #8 aal.h(74)
    wire[19:0] io_qpi_wr_req_addr26; // #9 aal.h(74)
    wire[13:0] io_qpi_wr_req_mdata29; // #10 aal.h(74)
    wire[511:0] io_qpi_wr_req_data32; // #11 aal.h(74)
    wire io_qpi_wr_req_valid35; // #12 aal.h(74)
    wire[13:0] io_qpi_wr_rsp0_mdata38; // #13 aal.h(74)
    wire io_qpi_wr_rsp0_valid41; // #14 aal.h(74)
    wire[13:0] io_qpi_wr_rsp1_mdata44; // #15 aal.h(74)
    wire io_qpi_wr_rsp1_valid47; // #16 aal.h(74)
    wire[511:0] io_ctx50; // #17 aal.h(74)
    wire[131:0] proxy51; // #18 a(0)
    wire[31:0] proxy52; // #19 num_parts(0)
    wire io_done71; // #34 aal.h(74)
    wire bindin77;
    wire bindin79;
    wire bindin80;
    wire[63:0] bindin86;
    wire bindout89;
    wire[63:0] proxy91; // #813 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindin92;
    wire[351:0] proxy94; // #814 /home/blaise/dev/cash/src/module.h(33)
    wire[351:0] bindout106;
    wire proxy108; // #826 /home/blaise/dev/cash/src/module.h(33)
    wire bindout109;
    wire[22:0] proxy111; // #827 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout114;
    wire proxy116; // #830 /home/blaise/dev/cash/src/module.h(33)
    wire bindin117;
    wire proxy119; // #831 /home/blaise/dev/cash/src/module.h(33)
    wire bindin120;
    wire[514:0] proxy122; // #832 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindin125;
    wire proxy127; // #835 /home/blaise/dev/cash/src/module.h(33)
    wire bindout128;
    wire[84:0] proxy130; // #836 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindout135;
    wire proxy137; // #841 /home/blaise/dev/cash/src/module.h(33)
    wire bindin138;
    wire bindin142;
    wire bindin143;
    wire bindin144;
    wire[63:0] bindin150;
    wire bindout153;
    wire[63:0] proxy155; // #1620 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindin156;
    wire[351:0] proxy158; // #1621 /home/blaise/dev/cash/src/module.h(33)
    wire[351:0] bindout170;
    wire proxy172; // #1633 /home/blaise/dev/cash/src/module.h(33)
    wire bindout173;
    wire[22:0] proxy175; // #1634 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout178;
    wire proxy180; // #1637 /home/blaise/dev/cash/src/module.h(33)
    wire bindin181;
    wire proxy183; // #1638 /home/blaise/dev/cash/src/module.h(33)
    wire bindin184;
    wire[514:0] proxy186; // #1639 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindin189;
    wire proxy191; // #1642 /home/blaise/dev/cash/src/module.h(33)
    wire bindout192;
    wire[84:0] proxy194; // #1643 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindout199;
    wire proxy201; // #1648 /home/blaise/dev/cash/src/module.h(33)
    wire bindin202;
    wire proxy204; // #2059 /home/blaise/dev/cash/src/module.h(33)
    wire bindin206;
    wire bindin207;
    wire bindin208;
    wire[84:0] proxy210; // #2060 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindin215;
    wire proxy217; // #2065 /home/blaise/dev/cash/src/module.h(33)
    wire bindout218;
    wire proxy220; // #2066 /home/blaise/dev/cash/src/module.h(33)
    wire bindout221;
    wire[533:0] proxy223; // #2067 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout227;
    wire proxy229; // #2071 /home/blaise/dev/cash/src/module.h(33)
    wire bindin230;
    wire[63:0] proxy232; // #2072 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindout235;
    wire bindout238;
    wire proxy240; // #2486 /home/blaise/dev/cash/src/module.h(33)
    wire bindin242;
    wire bindin243;
    wire bindin244;
    wire[84:0] proxy246; // #2487 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindin251;
    wire proxy253; // #2492 /home/blaise/dev/cash/src/module.h(33)
    wire bindout254;
    wire proxy256; // #2493 /home/blaise/dev/cash/src/module.h(33)
    wire bindout257;
    wire[533:0] proxy259; // #2494 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout263;
    wire proxy265; // #2498 /home/blaise/dev/cash/src/module.h(33)
    wire bindin266;
    wire[63:0] proxy268; // #2499 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindout271;
    wire bindout274;
    wire proxy276; // #3347 /home/blaise/dev/cash/src/module.h(33)
    wire bindin278;
    wire bindin279;
    wire bindin280;
    wire[19:0] proxy282; // #3348 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] bindout283;
    wire[13:0] proxy285; // #3349 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindout286;
    wire proxy288; // #3350 /home/blaise/dev/cash/src/module.h(33)
    wire bindout289;
    wire[13:0] proxy291; // #3351 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin292;
    wire[511:0] proxy294; // #3352 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin295;
    wire proxy297; // #3353 /home/blaise/dev/cash/src/module.h(33)
    wire bindin298;
    wire proxy300; // #3354 /home/blaise/dev/cash/src/module.h(33)
    wire bindin301;
    wire[19:0] proxy303; // #3355 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] bindout304;
    wire[13:0] proxy306; // #3356 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindout307;
    wire[511:0] proxy309; // #3357 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout310;
    wire proxy312; // #3358 /home/blaise/dev/cash/src/module.h(33)
    wire bindout313;
    wire[13:0] proxy315; // #3359 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin316;
    wire proxy318; // #3360 /home/blaise/dev/cash/src/module.h(33)
    wire bindin319;
    wire[13:0] proxy321; // #3361 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin322;
    wire proxy324; // #3362 /home/blaise/dev/cash/src/module.h(33)
    wire bindin325;
    wire[511:0] proxy327; // #3363 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin343;
    wire bindin346;
    wire[22:0] proxy348; // #3380 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy349; // #3381 type(0)
    wire[22:0] bindin351;
    wire bindout354;
    wire bindin357;
    wire[533:0] proxy359; // #3385 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin363;
    wire bindout366;
    wire bindout369;
    wire[514:0] proxy371; // #3391 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy372; // #3392 type(0)
    wire[511:0] proxy373; // #3393 data(0)
    wire[514:0] bindout374;
    wire[31:0] bindout377;
    wire proxy379; // #3395 /home/blaise/dev/cash/src/module.h(33)
    wire bindin380;
    wire[22:0] proxy382; // #3396 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin385;
    wire proxy387; // #3399 /home/blaise/dev/cash/src/module.h(33)
    wire bindout388;
    wire proxy390; // #3400 /home/blaise/dev/cash/src/module.h(33)
    wire bindout391;
    wire[514:0] proxy393; // #3401 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout396;
    wire proxy398; // #3404 /home/blaise/dev/cash/src/module.h(33)
    wire bindin399;
    wire[22:0] proxy401; // #3405 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin404;
    wire proxy406; // #3408 /home/blaise/dev/cash/src/module.h(33)
    wire bindout407;
    wire proxy409; // #3409 /home/blaise/dev/cash/src/module.h(33)
    wire bindout410;
    wire[514:0] proxy412; // #3410 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout415;
    wire proxy417; // #3413 /home/blaise/dev/cash/src/module.h(33)
    wire bindin418;
    wire[533:0] proxy420; // #3414 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin424;
    wire proxy426; // #3418 /home/blaise/dev/cash/src/module.h(33)
    wire bindout427;
    wire proxy429; // #3419 /home/blaise/dev/cash/src/module.h(33)
    wire bindin430;
    wire[533:0] proxy432; // #3420 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin436;
    wire proxy438; // #3424 /home/blaise/dev/cash/src/module.h(33)
    wire bindout439;
    wire proxy441; // #3457 /home/blaise/dev/cash/src/module.h(33)
    wire bindin443;
    wire bindin444;
    wire bindin445;
    wire[511:0] proxy447; // #3458 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin448;
    wire bindout454;
    wire[511:0] proxy456; // #3461 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout457;
    wire proxy459; // #3462 /home/blaise/dev/cash/src/module.h(33)
    wire bindin460;
    wire[543:0] proxy465; // #3464 spmv.cpp(15)
    wire[543:0] proxy467; // #3465 /home/blaise/dev/cash/src/seq.h(17)
    reg[543:0] reg470; // #3464 spmv.cpp(15)
    reg[4:0] reg477; // #3467 spmv.cpp(15)
    wire[31:0] proxy481; // #3471 /home/blaise/dev/cash/src/seq.h(17)
    reg[31:0] reg484; // #3470 spmv.cpp(15)
    wire[19:0] proxy486; // #3473 spmv.cpp(15)
    reg[19:0] reg491; // #3473 spmv.cpp(15)
    wire[19:0] proxy495; // #3477 /home/blaise/dev/cash/src/seq.h(17)
    reg[19:0] reg497; // #3476 spmv.cpp(15)
    wire[1:0] proxy499; // #3479 spmv.cpp(15)
    reg[1:0] reg504; // #3479 spmv.cpp(15)
    wire[95:0] proxy506; // #3482 spmv.cpp(15)
    wire[31:0] proxy507; // #3483 a_colptr_stalls(0)
    wire[95:0] ch_ctrl_stats_t511; // #3486 /home/blaise/dev/cash/src/seq.h(17)
    reg[95:0] reg517; // #3482 spmv.cpp(15)
    wire[19:0] proxy519; // #3491 spmv.cpp(15)
    reg[19:0] reg525; // #3492 spmv.cpp(15)
    wire[19:0] proxy529; // #3496 /home/blaise/dev/cash/src/seq.h(17)
    reg[19:0] reg531; // #3495 spmv.cpp(15)
    wire[19:0] proxy533; // #3498 spmv.cpp(32)
    wire[19:0] sub536;
    wire[19:0] proxy537; // #3500 unknown(0)
    wire[63:0] proxy539; // #3501 spmv.cpp(36)
    wire[63:0] proxy541; // #3502 /home/blaise/dev/cash/src/seq.h(17)
    reg[63:0] reg544; // #3501 spmv.cpp(36)
    wire[63:0] add547;
    wire[63:0] proxy548; // #3505 unknown(0)
    reg[2:0] reg555; // #3506 spmv.cpp(54)
    wire proxy557; // #3509 spmv.cpp(57)
    reg reg562; // #3509 spmv.cpp(57)
    wire eq564;
    wire and566;
    wire proxy567; // #3514 unknown(0)
    wire[30:0] proxy569; // #3515 /home/blaise/dev/cash/src/bit.h(1008)
    wire[31:0] proxy571; // #3516 spmv.cpp(69)
    wire eq573;
    wire and575;
    wire and577;
    wire proxy578; // #3520 unknown(0)
    wire[30:0] proxy579; // #3521 /home/blaise/dev/cash/src/bit.h(1008)
    wire[31:0] proxy581; // #3522 spmv.cpp(68)
    wire[31:0] add582;
    wire[31:0] sub584;
    wire[31:0] proxy585; // #3524 unknown(0)
    wire and586;
    wire proxy587; // #3525 unknown(0)
    wire and589;
    wire and591;
    wire proxy592; // #3528 unknown(0)
    wire[31:0] add595;
    wire[31:0] sll599;
    wire[31:0] add603;
    wire[31:0] srl607;
    wire[31:0] proxy608; // #3536 unknown(0)
    wire[19:0] proxy610; // #3537 spmv.cpp(84)
    wire[19:0] sub612;
    wire[19:0] proxy613; // #3539 unknown(0)
    wire eq615;
    wire ne617;
    wire and619;
    wire and620;
    wire[19:0] sel621;
    wire sel622;
    wire[2:0] sel624;
    wire inv626;
    wire and627;
    wire sel628;
    wire eq630;
    wire ne633;
    wire inv635;
    wire and636;
    wire and637;
    wire sel638;
    wire[19:0] add640;
    wire and642;
    wire[19:0] sel643;
    wire eq644;
    wire and647;
    wire[2:0] sel648;
    wire[31:0] add650;
    wire inv652;
    wire and653;
    wire[31:0] proxy654;
    wire[31:0] sel655;
    wire[31:0] add657;
    wire inv659;
    wire and660;
    wire[31:0] sel661;
    wire eq663;
    wire eq664;
    wire and666;
    wire or669;
    wire inv670;
    wire and671;
    wire and672;
    wire[2:0] sel673;
    wire eq675;
    wire or677;
    wire or678;
    wire inv679;
    wire and680;
    wire[1:0] sel682;
    wire sel683;
    wire and685;
    wire[2:0] sel686;
    wire eq688;
    wire or690;
    wire or691;
    wire or692;
    wire inv693;
    wire and694;
    wire[1:0] sel695;
    wire[17:0] proxy697; // #3558 /home/blaise/dev/cash/src/bit.h(1008)
    wire[19:0] proxy699; // #3559 spmv.cpp(140)
    wire[19:0] sel701;
    wire[1:0] proxy702; // #3560 spmv.cpp(141)
    wire[415:0] proxy704; // #3561 /home/blaise/dev/cash/src/bit.h(1008)
    wire[511:0] proxy706; // #3562 spmv.cpp(262)
    wire[415:0] ch_stats_t709; // #3564 spmv.cpp(264)
    wire[95:0] proxy725; // #3580 /home/blaise/dev/cash/src/bit.h(1008)
    wire[511:0] proxy727; // #3581 spmv.cpp(267)
    wire[415:0] ch_stats_t730; // #3583 spmv.cpp(269)
    wire[95:0] proxy746; // #3599 /home/blaise/dev/cash/src/bit.h(1008)
    wire[511:0] proxy748; // #3600 spmv.cpp(272)
    wire eq749;
    wire[511:0] sel750;
    wire eq751;
    wire[511:0] sel752;
    wire[511:0] sel755;
    wire sel756;
    wire[1:0] add758;
    wire and760;
    wire[1:0] sel761;
    wire eq763;
    wire and766;
    wire[2:0] sel767;
    wire eq769;
    wire eq771;
    wire or773;
    wire or774;
    wire or775;
    wire or776;
    wire inv777;
    wire and778;
    wire and779;
    wire[2:0] sel780;
    wire sel781;
    reg[1:0] reg794; // #3609 spmv.cpp(182)
    wire eq796;
    wire and797;
    wire sel798;
    wire eq800;
    wire and803;
    wire[511:0] proxy804;
    wire[4:0] sel807;
    wire[479:0] proxy809;
    wire[31:0] proxy810;
    wire[31:0] proxy811;
    wire[31:0] sel812;
    wire[479:0] proxy813;
    wire[479:0] proxy814;
    wire[479:0] sel815;
    wire inv816;
    wire and817;
    wire[479:0] sel818;
    wire[31:0] proxy819;
    wire[31:0] proxy820;
    wire[31:0] sel821;
    wire[4:0] sel823;
    wire[1:0] sel824;
    wire eq826;
    wire[63:0] proxy828; // #3618 spmv.cpp(210)
    wire inv831;
    wire and832;
    wire and833;
    wire[63:0] sel834;
    wire sel835;
    wire[543:0] srl838;
    wire[543:0] proxy839; // #3622 unknown(0)
    wire[31:0] proxy840;
    wire[31:0] sel841;
    wire[479:0] proxy842;
    wire[479:0] sel843;
    wire[31:0] proxy844;
    wire[31:0] sel845;
    wire[19:0] add847;
    wire[19:0] sel849;
    wire[4:0] sub852;
    wire[4:0] sel854;
    wire ne857;
    wire ne859;
    wire and861;
    wire and863;
    wire[1:0] sel864;
    wire inv865;
    wire and866;
    wire[1:0] sel867;
    wire inv868;
    wire and869;
    wire[1:0] sel870;
    wire eq872;
    wire[63:0] proxy874; // #3632 spmv.cpp(210)
    wire or877;
    wire inv878;
    wire and879;
    wire and880;
    wire[63:0] sel881;
    wire sel882;
    wire[543:0] srl884;
    wire[543:0] proxy885; // #3636 unknown(0)
    wire[31:0] proxy886;
    wire[31:0] sel887;
    wire[479:0] proxy888;
    wire[479:0] sel889;
    wire[31:0] proxy890;
    wire[31:0] sel891;
    wire[19:0] add893;
    wire[19:0] sel895;
    wire[4:0] sub897;
    wire[4:0] sel899;
    wire ne901;
    wire ne903;
    wire and905;
    wire and907;
    wire[1:0] sel908;
    wire inv909;
    wire and910;
    wire[1:0] sel911;
    wire inv912;
    wire and913;
    wire[1:0] sel914;

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
    assign proxy51 = io_ctx50[131:0];
    assign proxy52 = proxy51[31:0];
    assign io_done71 = proxy557;
    assign bindin77 = clk;
    assign bindin79 = reset;
    spmv_dcsc_walk __module1__(.clk(bindin77), .reset(bindin79), .io_ctrl_start_valid(bindin80), .io_ctrl_start_data(bindin86), .io_ctrl_timer(bindin92), .io_lsu_rd_req_ready(bindin117), .io_lsu_rd_rsp_valid(bindin120), .io_lsu_rd_rsp_data(bindin125), .io_pe_ready(bindin138), .io_ctrl_start_ready(bindout89), .io_ctrl_stats(bindout106), .io_lsu_rd_req_valid(bindout109), .io_lsu_rd_req_data(bindout114), .io_pe_valid(bindout128), .io_pe_data(bindout135));
    assign bindin80 = sel835;
    assign bindin86 = sel834;
    assign proxy91 = proxy539;
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
    assign bindin144 = sel882;
    assign bindin150 = sel881;
    assign proxy155 = proxy539;
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
    assign bindin346 = sel638;
    assign proxy348 = {proxy486, 3'b0};
    assign proxy349 = proxy348[2:0];
    assign bindin351 = proxy348;
    assign bindin357 = sel756;
    assign proxy359 = {sel755, sel701, sel695};
    assign bindin363 = proxy359;
    assign proxy371 = bindout374;
    assign proxy372 = proxy371[2:0];
    assign proxy373 = proxy371[514:3];
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
    assign proxy441 = proxy567;
    assign bindin443 = clk;
    assign bindin444 = reset;
    ch_queue_1 __module29__(.clk(bindin443), .reset(bindin444), .io_enq_valid(bindin445), .io_enq_data(bindin448), .io_deq_ready(bindin460), .io_deq_valid(bindout454), .io_deq_data(bindout457));
    assign bindin445 = proxy441;
    assign proxy447 = proxy373;
    assign bindin448 = proxy447;
    assign proxy456 = bindout457;
    assign proxy459 = sel798;
    assign bindin460 = proxy459;
    assign proxy465 = reg470;
    assign proxy467 = {sel891, sel889, sel887};
    always @ (posedge clk) reg470 <= reset ? lit468 : proxy467;
    always @ (posedge clk) reg477 <= reset ? 5'b0 : sel899;
    assign proxy481 = proxy585;
    always @ (posedge clk) reg484 <= reset ? 32'h0 : proxy481;
    assign proxy486 = reg491;
    always @ (posedge clk) reg491 <= reset ? 20'h0 : sel643;
    assign proxy495 = proxy613;
    always @ (posedge clk) reg497 <= reset ? 20'h0 : proxy495;
    assign proxy499 = reg504;
    always @ (posedge clk) reg504 <= reset ? 2'b0 : sel761;
    assign proxy506 = reg517;
    assign proxy507 = proxy506[31:0];
    assign ch_ctrl_stats_t511 = {proxy506[95:32], sel661};
    always @ (posedge clk) reg517 <= reset ? lit515 : ch_ctrl_stats_t511;
    assign proxy519 = proxy533;
    always @ (posedge clk) reg525 <= reset ? 20'h0 : sel895;
    assign proxy529 = proxy537;
    always @ (posedge clk) reg531 <= reset ? 20'h0 : proxy529;
    assign proxy533 = proxy52[19:0];
    assign sub536 = proxy519 - 20'h1;
    assign proxy537 = sub536;
    assign proxy539 = reg544;
    assign proxy541 = proxy548;
    always @ (posedge clk) reg544 <= reset ? lit542 : proxy541;
    assign add547 = proxy539 + lit545;
    assign proxy548 = add547;
    always @ (posedge clk) reg555 <= reset ? 3'b0 : sel780;
    assign proxy557 = reg562;
    always @ (posedge clk) reg562 <= reset ? 1'b0 : sel781;
    assign eq564 = proxy372 == 3'b0;
    assign and566 = bindout369 & eq564;
    assign proxy567 = and566;
    assign proxy569 = 31'b0;
    assign proxy571 = {proxy569, proxy459};
    assign eq573 = proxy349 == 3'b0;
    assign and575 = sel638 & bindout354;
    assign and577 = and575 & eq573;
    assign proxy578 = and577;
    assign proxy579 = 31'b0;
    assign proxy581 = {proxy579, proxy578};
    assign add582 = reg484 + proxy581;
    assign sub584 = add582 - proxy571;
    assign proxy585 = sub584;
    assign and586 = bindout89 & bindout238;
    assign proxy587 = proxy592;
    assign and589 = and586 & bindout153;
    assign and591 = and589 & bindout274;
    assign proxy592 = and591;
    assign add595 = proxy52 + 32'h1;
    assign sll599 = add595 << 32'h2;
    assign add603 = sll599 + 32'h3f;
    assign srl607 = add603 >> 32'h6;
    assign proxy608 = srl607;
    assign proxy610 = proxy608[19:0];
    assign sub612 = proxy610 - 20'h1;
    assign proxy613 = sub612;
    assign eq615 = reg555 == 3'b0;
    assign ne617 = proxy52 != 32'h0;
    assign and619 = eq615 & io_start;
    assign and620 = and619 & ne617;
    assign sel621 = and620 ? 20'h0 : proxy486;
    assign sel622 = and620 ? 1'b0 : proxy557;
    assign sel624 = and620 ? 3'b1 : reg555;
    assign inv626 = ~ne617;
    assign and627 = and619 & inv626;
    assign sel628 = and627 ? 1'b1 : sel622;
    assign eq630 = reg555 == 3'b1;
    assign ne633 = reg484 != 32'h4;
    assign inv635 = ~eq615;
    assign and636 = inv635 & eq630;
    assign and637 = and636 & ne633;
    assign sel638 = and637 ? 1'b1 : 1'b0;
    assign add640 = proxy486 + 20'h1;
    assign and642 = and637 & bindout354;
    assign sel643 = and642 ? add640 : sel621;
    assign eq644 = proxy486 == reg497;
    assign and647 = and642 & eq644;
    assign sel648 = and647 ? 3'b10 : sel624;
    assign add650 = proxy507 + 32'h1;
    assign inv652 = ~bindout354;
    assign and653 = and637 & inv652;
    assign proxy654 = proxy506[31:0];
    assign sel655 = and653 ? add650 : proxy654;
    assign add657 = proxy507 + 32'h1;
    assign inv659 = ~ne633;
    assign and660 = and636 & inv659;
    assign sel661 = and660 ? add657 : sel655;
    assign eq663 = reg555 == 3'b10;
    assign eq664 = reg525 == proxy519;
    assign and666 = eq664 & proxy587;
    assign or669 = eq630 | eq615;
    assign inv670 = ~or669;
    assign and671 = inv670 & eq663;
    assign and672 = and671 & and666;
    assign sel673 = and672 ? 3'b11 : sel648;
    assign eq675 = reg555 == 3'b11;
    assign or677 = eq663 | eq630;
    assign or678 = or677 | eq615;
    assign inv679 = ~or678;
    assign and680 = inv679 & eq675;
    assign sel682 = and680 ? 2'b1 : 2'b0;
    assign sel683 = and680 ? 1'b1 : 1'b0;
    assign and685 = and680 & bindout366;
    assign sel686 = and685 ? 3'b100 : sel673;
    assign eq688 = reg555 == 3'b100;
    assign or690 = eq675 | eq663;
    assign or691 = or690 | eq630;
    assign or692 = or691 | eq615;
    assign inv693 = ~or692;
    assign and694 = inv693 & eq688;
    assign sel695 = and694 ? 2'b10 : sel682;
    assign proxy697 = 18'b0;
    assign proxy699 = {proxy697, proxy499};
    assign sel701 = and694 ? proxy699 : 20'h0;
    assign proxy702 = proxy499;
    assign proxy704 = lit703;
    assign proxy706 = {proxy704, proxy506};
    assign ch_stats_t709 = {proxy232, proxy94};
    assign proxy725 = lit515;
    assign proxy727 = {proxy725, ch_stats_t709};
    assign ch_stats_t730 = {proxy268, proxy158};
    assign proxy746 = lit515;
    assign proxy748 = {proxy746, ch_stats_t730};
    assign eq749 = proxy702 == 2'b1;
    assign sel750 = eq749 ? proxy727 : proxy748;
    assign eq751 = proxy702 == 2'b0;
    assign sel752 = eq751 ? proxy706 : sel750;
    assign sel755 = and694 ? sel752 : lit788;
    assign sel756 = and694 ? 1'b1 : sel683;
    assign add758 = proxy499 + 2'b1;
    assign and760 = and694 & bindout366;
    assign sel761 = and760 ? add758 : proxy499;
    assign eq763 = proxy499 == 2'b10;
    assign and766 = and760 & eq763;
    assign sel767 = and766 ? 3'b101 : sel686;
    assign eq769 = reg555 == 3'b101;
    assign eq771 = bindout377 == 32'h0;
    assign or773 = eq688 | eq675;
    assign or774 = or773 | eq663;
    assign or775 = or774 | eq630;
    assign or776 = or775 | eq615;
    assign inv777 = ~or776;
    assign and778 = inv777 & eq769;
    assign and779 = and778 & eq771;
    assign sel780 = and779 ? 3'b0 : sel767;
    assign sel781 = and779 ? 1'b1 : sel628;
    always @ (posedge clk) reg794 <= reset ? 2'b0 : sel914;
    assign eq796 = reg794 == 2'b0;
    assign and797 = eq796 & bindout454;
    assign sel798 = and797 ? 1'b1 : 1'b0;
    assign eq800 = 5'b0 == reg477;
    assign and803 = and797 & eq800;
    assign proxy804 = proxy465[511:0];
    assign sel807 = and803 ? 5'b10000 : reg477;
    assign proxy809 = proxy456[479:0];
    assign proxy810 = proxy456[31:0];
    assign proxy811 = proxy804[31:0];
    assign sel812 = and803 ? proxy810 : proxy811;
    assign proxy813 = proxy456[511:32];
    assign proxy814 = proxy804[511:32];
    assign sel815 = and803 ? proxy813 : proxy814;
    assign inv816 = ~eq800;
    assign and817 = and797 & inv816;
    assign sel818 = and817 ? proxy809 : sel815;
    assign proxy819 = proxy456[511:480];
    assign proxy820 = proxy465[543:512];
    assign sel821 = and817 ? proxy819 : proxy820;
    assign sel823 = and817 ? 5'b10001 : sel807;
    assign sel824 = and797 ? 2'b1 : reg794;
    assign eq826 = reg794 == 2'b1;
    assign proxy828 = proxy465[63:0];
    assign inv831 = ~eq796;
    assign and832 = inv831 & eq826;
    assign and833 = and832 & bindout89;
    assign sel834 = and833 ? proxy828 : lit542;
    assign sel835 = and833 ? 1'b1 : 1'b0;
    assign srl838 = proxy465 >> lit836;
    assign proxy839 = srl838;
    assign proxy840 = proxy839[31:0];
    assign sel841 = and833 ? proxy840 : sel812;
    assign proxy842 = proxy839[511:32];
    assign sel843 = and833 ? proxy842 : sel818;
    assign proxy844 = proxy839[543:512];
    assign sel845 = and833 ? proxy844 : sel821;
    assign add847 = reg525 + 20'h1;
    assign sel849 = and833 ? add847 : reg525;
    assign sub852 = reg477 - 5'b1;
    assign sel854 = and833 ? sub852 : sel823;
    assign ne857 = reg477 != 5'b10;
    assign ne859 = reg525 != reg531;
    assign and861 = ne859 & ne857;
    assign and863 = and833 & and861;
    assign sel864 = and863 ? 2'b10 : sel824;
    assign inv865 = ~and861;
    assign and866 = and833 & inv865;
    assign sel867 = and866 ? 2'b0 : sel864;
    assign inv868 = ~bindout89;
    assign and869 = and832 & inv868;
    assign sel870 = and869 ? 2'b10 : sel867;
    assign eq872 = reg794 == 2'b10;
    assign proxy874 = proxy465[63:0];
    assign or877 = eq826 | eq796;
    assign inv878 = ~or877;
    assign and879 = inv878 & eq872;
    assign and880 = and879 & bindout153;
    assign sel881 = and880 ? proxy874 : lit542;
    assign sel882 = and880 ? 1'b1 : 1'b0;
    assign srl884 = proxy465 >> lit836;
    assign proxy885 = srl884;
    assign proxy886 = proxy885[31:0];
    assign sel887 = and880 ? proxy886 : sel841;
    assign proxy888 = proxy885[511:32];
    assign sel889 = and880 ? proxy888 : sel843;
    assign proxy890 = proxy885[543:512];
    assign sel891 = and880 ? proxy890 : sel845;
    assign add893 = reg525 + 20'h1;
    assign sel895 = and880 ? add893 : sel849;
    assign sub897 = reg477 - 5'b1;
    assign sel899 = and880 ? sub897 : sel854;
    assign ne901 = reg477 != 5'b10;
    assign ne903 = reg525 != reg531;
    assign and905 = ne903 & ne901;
    assign and907 = and880 & and905;
    assign sel908 = and907 ? 2'b1 : sel870;
    assign inv909 = ~and905;
    assign and910 = and880 & inv909;
    assign sel911 = and910 ? 2'b0 : sel908;
    assign inv912 = ~bindout153;
    assign and913 = and879 & inv912;
    assign sel914 = and913 ? 2'b1 : sel911;

    assign io_qpi_rd_req_addr = io_qpi_rd_req_addr5;
    assign io_qpi_rd_req_mdata = io_qpi_rd_req_mdata8;
    assign io_qpi_rd_req_valid = io_qpi_rd_req_valid11;
    assign io_qpi_wr_req_addr = io_qpi_wr_req_addr26;
    assign io_qpi_wr_req_mdata = io_qpi_wr_req_mdata29;
    assign io_qpi_wr_req_data = io_qpi_wr_req_data32;
    assign io_qpi_wr_req_valid = io_qpi_wr_req_valid35;
    assign io_done = io_done71;

endmodule
