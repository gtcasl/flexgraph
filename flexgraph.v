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
    wire io_enq_ready8; // #106 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #107 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #108 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[1:0] io_size20; // #110 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[1:0] proxy23; // #111 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy25; // #112 /home/blaise/dev/cash/src/seq.h(17)
    reg[1:0] reg30; // #111 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy32; // #114 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy34; // #115 /home/blaise/dev/cash/src/seq.h(17)
    reg[1:0] reg36; // #114 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire proxy38; // #117 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire proxy40; // #118 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[1:0] add47;
    wire[1:0] sel49;
    wire[1:0] proxy50; // #123 unknown(0)
    wire[1:0] add52;
    wire[1:0] sel54;
    wire[1:0] proxy55; // #126 unknown(0)
    reg[511:0] mem56[0:1];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #129 unknown(0)
    wire proxy63; // #130 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire proxy64; // #131 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #134 unknown(0)
    wire[1:0] sub71;
    wire[1:0] proxy72; // #135 unknown(0)

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
    wire io_enq_ready8; // #184 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #185 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #186 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[5:0] io_size20; // #188 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[5:0] proxy23; // #189 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[5:0] proxy25; // #190 /home/blaise/dev/cash/src/seq.h(17)
    reg[5:0] reg30; // #189 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[5:0] proxy32; // #192 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[5:0] proxy34; // #193 /home/blaise/dev/cash/src/seq.h(17)
    reg[5:0] reg36; // #192 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[4:0] proxy38; // #195 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire[4:0] proxy40; // #196 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[5:0] add47;
    wire[5:0] sel49;
    wire[5:0] proxy50; // #201 unknown(0)
    wire[5:0] add52;
    wire[5:0] sel54;
    wire[5:0] proxy55; // #204 unknown(0)
    reg[511:0] mem56[0:31];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #207 unknown(0)
    wire proxy63; // #208 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire proxy64; // #209 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #212 unknown(0)
    wire[5:0] sub71;
    wire[5:0] proxy72; // #213 unknown(0)

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
    wire[511:0] lit320 = 512'h0;
    wire[351:0] lit374 = 352'h0;
    wire[84:0] lit629 = 85'b0;
    wire[63:0] io_ctrl_start_data5; // #36 dcsc_walk.cpp(29)
    wire[63:0] io_ctrl_start_data_part6; // #37 dcsc_walk.cpp(29)
    wire[31:0] io_ctrl_start_data_part_start7; // #38 dcsc_walk.cpp(29)
    wire[31:0] io_ctrl_start_data_part_end8; // #39 dcsc_walk.cpp(29)
    wire io_ctrl_start_ready11; // #40 dcsc_walk.cpp(29)
    wire[351:0] io_ctrl_stats17; // #42 dcsc_walk.cpp(29)
    wire[22:0] io_lsu_rd_req_data34; // #55 dcsc_walk.cpp(29)
    wire[2:0] io_lsu_rd_req_data_type35; // #56 dcsc_walk.cpp(29)
    wire[514:0] io_lsu_rd_rsp_data45; // #60 dcsc_walk.cpp(29)
    wire[2:0] io_lsu_rd_rsp_data_type46; // #61 dcsc_walk.cpp(29)
    wire[511:0] io_lsu_rd_rsp_data_data47; // #62 dcsc_walk.cpp(29)
    wire io_pe_valid50; // #63 dcsc_walk.cpp(29)
    wire[84:0] io_pe_data53; // #64 dcsc_walk.cpp(29)
    reg[19:0] reg70; // #70 dcsc_walk.cpp(29)
    reg[19:0] reg76; // #73 dcsc_walk.cpp(29)
    reg[19:0] reg82; // #76 dcsc_walk.cpp(29)
    reg[19:0] reg88; // #79 dcsc_walk.cpp(29)
    reg[19:0] reg94; // #82 dcsc_walk.cpp(29)
    reg[19:0] reg101; // #85 dcsc_walk.cpp(29)
    reg[19:0] reg107; // #88 dcsc_walk.cpp(29)
    reg[19:0] reg113; // #91 dcsc_walk.cpp(29)
    reg[19:0] reg119; // #94 dcsc_walk.cpp(29)
    wire[31:0] proxy128; // #100 dcsc_walk.cpp(29)
    reg[31:0] reg133; // #100 dcsc_walk.cpp(29)
    wire[31:0] proxy134; // #103 /home/blaise/dev/cash/src/seq.h(20)
    wire proxy136; // #136 /home/blaise/dev/cash/src/module.h(33)
    wire bindin138;
    wire bindin139;
    wire bindin140;
    wire[511:0] proxy142; // #137 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin143;
    wire bindout149;
    wire[511:0] bindout152;
    wire proxy154; // #141 /home/blaise/dev/cash/src/module.h(33)
    wire bindin155;
    wire proxy160; // #175 /home/blaise/dev/cash/src/module.h(33)
    wire bindin162;
    wire bindin163;
    wire bindin164;
    wire[511:0] proxy166; // #176 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin167;
    wire bindout173;
    wire[511:0] proxy175; // #179 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout176;
    wire proxy178; // #180 /home/blaise/dev/cash/src/module.h(33)
    wire bindin179;
    wire proxy184; // #214 /home/blaise/dev/cash/src/module.h(33)
    wire bindin186;
    wire bindin187;
    wire bindin188;
    wire[511:0] proxy190; // #215 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin191;
    wire[511:0] bindout200;
    wire proxy202; // #219 /home/blaise/dev/cash/src/module.h(33)
    wire bindin203;
    wire proxy208; // #253 /home/blaise/dev/cash/src/module.h(33)
    wire bindin210;
    wire bindin211;
    wire bindin212;
    wire[511:0] proxy214; // #254 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin215;
    wire[511:0] bindout224;
    wire proxy226; // #258 /home/blaise/dev/cash/src/module.h(33)
    wire bindin227;
    wire proxy232; // #292 /home/blaise/dev/cash/src/module.h(33)
    wire bindin234;
    wire bindin235;
    wire bindin236;
    wire[511:0] proxy238; // #293 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin239;
    wire bindout245;
    wire[511:0] bindout248;
    wire proxy250; // #297 /home/blaise/dev/cash/src/module.h(33)
    wire bindin251;
    wire proxy256; // #331 /home/blaise/dev/cash/src/module.h(33)
    wire bindin258;
    wire bindin259;
    wire bindin260;
    wire[511:0] proxy262; // #332 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin263;
    wire bindout269;
    wire[511:0] bindout272;
    wire proxy274; // #336 /home/blaise/dev/cash/src/module.h(33)
    wire bindin275;
    reg[7:0] reg285; // #338 dcsc_walk.cpp(29)
    reg[7:0] reg291; // #341 dcsc_walk.cpp(29)
    reg[7:0] reg297; // #344 dcsc_walk.cpp(29)
    reg[7:0] reg303; // #347 dcsc_walk.cpp(29)
    reg[7:0] reg309; // #350 dcsc_walk.cpp(29)
    reg[7:0] reg315; // #353 dcsc_walk.cpp(29)
    reg[511:0] reg322; // #356 dcsc_walk.cpp(29)
    reg[511:0] reg328; // #359 dcsc_walk.cpp(29)
    reg[511:0] reg334; // #362 dcsc_walk.cpp(29)
    reg[511:0] reg340; // #365 dcsc_walk.cpp(29)
    wire[351:0] proxy349; // #371 dcsc_walk.cpp(29)
    wire[31:0] proxy_num_parts350; // #372 dcsc_walk.cpp(29)
    wire[31:0] proxy_min_latency351; // #373 dcsc_walk.cpp(29)
    wire[31:0] proxy_total_latency353; // #375 dcsc_walk.cpp(29)
    wire[31:0] proxy_a_colind_stalls354; // #376 dcsc_walk.cpp(29)
    wire[31:0] proxy_a_rowptr_stalls355; // #377 dcsc_walk.cpp(29)
    wire[31:0] proxy_a_rowind_stalls356; // #378 dcsc_walk.cpp(29)
    wire[31:0] proxy_a_values_stalls357; // #379 dcsc_walk.cpp(29)
    wire[31:0] proxy_x_values_stalls358; // #380 dcsc_walk.cpp(29)
    wire[31:0] proxy_x_masks_stalls359; // #381 dcsc_walk.cpp(29)
    wire[31:0] proxy_execute_stalls360; // #382 dcsc_walk.cpp(29)
    wire[351:0] ch_walker_stats_t362; // #383 /home/blaise/dev/cash/src/seq.h(17)
    reg[351:0] reg376; // #371 dcsc_walk.cpp(29)
    wire eq379;
    wire and381;
    wire proxy382; // #398 unknown(0)
    wire eq385;
    wire and387;
    wire proxy388; // #401 unknown(0)
    wire eq391;
    wire and393;
    wire proxy394; // #404 unknown(0)
    wire eq397;
    wire and399;
    wire proxy400; // #407 unknown(0)
    wire eq403;
    wire and405;
    wire proxy406; // #410 unknown(0)
    wire eq409;
    wire and411;
    wire proxy412; // #413 unknown(0)
    reg[4:0] reg419; // #414 dcsc_walk.cpp(59)
    wire eq421;
    wire proxy422; // #418 unknown(0)
    wire eq424;
    wire and426;
    wire and428;
    wire proxy430; // #423 dcsc_walk.cpp(67)
    wire inv431;
    wire and433;
    wire inv435;
    wire and437;
    wire[7:0] add441;
    wire[7:0] sel443;
    wire[7:0] sub445;
    wire inv447;
    wire and448;
    wire[7:0] sel449;
    wire eq451;
    wire and453;
    wire and455;
    wire proxy457; // #436 dcsc_walk.cpp(67)
    wire inv458;
    wire and460;
    wire inv462;
    wire and464;
    wire[7:0] add467;
    wire[7:0] sel469;
    wire[7:0] sub471;
    wire inv473;
    wire and474;
    wire[7:0] sel475;
    wire eq477;
    wire and479;
    wire and481;
    wire proxy483; // #449 dcsc_walk.cpp(67)
    wire inv484;
    wire and486;
    wire inv488;
    wire and490;
    wire[7:0] add493;
    wire[7:0] sel495;
    wire[7:0] sub497;
    wire inv499;
    wire and500;
    wire[7:0] sel501;
    wire eq503;
    wire and505;
    wire and507;
    wire proxy509; // #462 dcsc_walk.cpp(67)
    wire inv510;
    wire and512;
    wire inv514;
    wire and516;
    wire[7:0] add519;
    wire[7:0] sel521;
    wire[7:0] sub523;
    wire inv525;
    wire and526;
    wire[7:0] sel527;
    wire eq529;
    wire and531;
    wire and533;
    wire proxy535; // #475 dcsc_walk.cpp(67)
    wire inv536;
    wire and538;
    wire inv540;
    wire and542;
    wire[7:0] add545;
    wire[7:0] sel547;
    wire[7:0] sub549;
    wire inv551;
    wire and552;
    wire[7:0] sel553;
    wire eq555;
    wire and557;
    wire and559;
    wire proxy561; // #488 dcsc_walk.cpp(67)
    wire inv562;
    wire and564;
    wire inv566;
    wire and568;
    wire[7:0] add571;
    wire[7:0] sel573;
    wire[7:0] sub575;
    wire inv577;
    wire and578;
    wire[7:0] sel579;
    wire proxy581; // #497 dcsc_walk.cpp(99)
    reg reg586; // #497 dcsc_walk.cpp(99)
    wire proxy588; // #500 dcsc_walk.cpp(100)
    reg reg592; // #500 dcsc_walk.cpp(100)
    wire proxy606; // #509 dcsc_walk.cpp(103)
    reg reg610; // #509 dcsc_walk.cpp(103)
    wire proxy612; // #512 dcsc_walk.cpp(104)
    reg reg616; // #512 dcsc_walk.cpp(104)
    wire[84:0] proxy618; // #515 dcsc_walk.cpp(107)
    wire[84:0] ch_pe_req_t624; // #520 /home/blaise/dev/cash/src/seq.h(17)
    reg[84:0] reg631; // #515 dcsc_walk.cpp(107)
    wire proxy633; // #526 dcsc_walk.cpp(108)
    reg reg637; // #526 dcsc_walk.cpp(108)
    wire eq639;
    wire[19:0] proxy640; // #530 dcsc_walk.cpp(29)
    wire and641;
    wire[19:0] sel642;
    wire[19:0] proxy643; // #531 dcsc_walk.cpp(29)
    wire[19:0] sub646;
    wire[19:0] sel648;
    wire ne649;
    wire and651;
    wire[4:0] sel654;
    wire eq656;
    wire inv657;
    wire and658;
    wire[2:0] sel660;
    wire[19:0] sll663;
    wire[19:0] srl667;
    wire[19:0] sel670;
    wire ne673;
    wire and676;
    wire sel677;
    wire and679;
    wire[4:0] sel680;
    wire[31:0] add683;
    wire inv685;
    wire and686;
    wire[31:0] proxy687;
    wire[31:0] sel688;
    wire[31:0] add690;
    wire inv692;
    wire and693;
    wire[31:0] sel694;
    wire eq696;
    wire or697;
    wire inv698;
    wire and699;
    wire[2:0] sel700;
    wire[19:0] sll702;
    wire[19:0] srl705;
    wire[19:0] sel707;
    wire ne709;
    wire and711;
    wire sel712;
    wire and714;
    wire[4:0] sel715;
    wire[31:0] add717;
    wire inv719;
    wire and720;
    wire[31:0] proxy721;
    wire[31:0] sel722;
    wire[31:0] add724;
    wire inv726;
    wire and727;
    wire[31:0] sel728;
    wire eq730;
    wire and731;
    wire or733;
    wire or734;
    wire inv735;
    wire and736;
    wire and737;
    wire[511:0] sel738;
    wire[19:0] and741;
    wire[19:0] sll745;
    wire[511:0] srl747;
    wire[511:0] proxy748; // #563 unknown(0)
    wire[19:0] proxy749; // #564 unknown(0)
    wire[19:0] sel750;
    wire sel751;
    wire[511:0] sel752;
    wire[19:0] and754;
    wire[19:0] sll757;
    wire[511:0] srl759;
    wire[511:0] proxy760; // #569 unknown(0)
    wire[19:0] proxy761; // #570 unknown(0)
    wire[19:0] sel762;
    wire sel763;
    wire[19:0] and765;
    wire ne768;
    wire[19:0] add771;
    wire[19:0] and774;
    wire[19:0] sll777;
    wire[511:0] srl779;
    wire[511:0] proxy780; // #581 unknown(0)
    wire[19:0] proxy781; // #582 unknown(0)
    wire and782;
    wire[19:0] sel783;
    wire[4:0] sel785;
    wire inv787;
    wire and788;
    wire[4:0] sel789;
    wire eq791;
    wire or792;
    wire or793;
    wire or794;
    wire inv795;
    wire and796;
    wire[2:0] sel797;
    wire[19:0] add799;
    wire[19:0] sll802;
    wire[19:0] srl805;
    wire[19:0] sel807;
    wire ne809;
    wire and811;
    wire sel812;
    wire and814;
    wire[4:0] sel815;
    wire[31:0] add817;
    wire inv819;
    wire and820;
    wire[31:0] sel821;
    wire[31:0] add823;
    wire inv825;
    wire and826;
    wire[31:0] sel827;
    wire eq829;
    wire[511:0] proxy830; // #597 dcsc_walk.cpp(220)
    wire or831;
    wire or832;
    wire or833;
    wire or834;
    wire inv835;
    wire and836;
    wire and837;
    wire sel838;
    wire[19:0] proxy839; // #598 dcsc_walk.cpp(220)
    wire[19:0] sel840;
    wire[4:0] sel841;
    wire[31:0] add843;
    wire inv845;
    wire and846;
    wire[31:0] sel847;
    wire eq849;
    wire[19:0] srl851;
    wire[19:0] sll854;
    wire[19:0] srl857;
    wire eq859;
    wire[19:0] and862;
    wire[19:0] sll865;
    wire[511:0] srl867;
    wire[511:0] proxy868; // #613 unknown(0)
    wire[31:0] proxy869; // #614 unknown(0)
    wire[19:0] and872;
    wire[31:0] sll875;
    wire[31:0] and877;
    wire ne880;
    wire or883;
    wire or884;
    wire or885;
    wire or886;
    wire or887;
    wire inv888;
    wire and889;
    wire and890;
    wire and891;
    wire[4:0] sel892;
    wire inv894;
    wire and895;
    wire[4:0] sel896;
    wire inv897;
    wire and898;
    wire[19:0] sel899;
    wire[4:0] sel901;
    wire eq903;
    wire[19:0] sll905;
    wire[19:0] srl908;
    wire eq910;
    wire[19:0] sll913;
    wire[19:0] srl916;
    wire or918;
    wire or919;
    wire or920;
    wire or921;
    wire or922;
    wire or923;
    wire inv924;
    wire and925;
    wire and926;
    wire[19:0] sel927;
    wire[19:0] sll929;
    wire[19:0] add933;
    wire[19:0] srl936;
    wire[19:0] sub939;
    wire[19:0] sel941;
    wire[4:0] sel943;
    wire inv944;
    wire and945;
    wire[19:0] sel946;
    wire[4:0] sel948;
    wire eq950;
    wire or951;
    wire or952;
    wire or953;
    wire or954;
    wire or955;
    wire or956;
    wire or957;
    wire inv958;
    wire and959;
    wire[2:0] sel960;
    wire[19:0] sel961;
    wire ne963;
    wire and965;
    wire sel966;
    wire and968;
    wire[4:0] sel969;
    wire[31:0] add971;
    wire inv973;
    wire and974;
    wire[31:0] proxy975;
    wire[31:0] sel976;
    wire[31:0] add978;
    wire inv980;
    wire and981;
    wire[31:0] sel982;
    wire eq984;
    wire or985;
    wire or986;
    wire or987;
    wire or988;
    wire or989;
    wire or990;
    wire or991;
    wire or992;
    wire inv993;
    wire and994;
    wire and995;
    wire[511:0] sel996;
    wire sel997;
    wire[19:0] srl999;
    wire[19:0] and1002;
    wire[19:0] sll1005;
    wire[511:0] srl1007;
    wire[511:0] proxy1008; // #654 unknown(0)
    wire[31:0] proxy1009; // #655 unknown(0)
    wire[19:0] and1011;
    wire[31:0] sll1014;
    wire[31:0] and1016;
    wire ne1019;
    wire and1022;
    wire[4:0] sel1023;
    wire inv1024;
    wire and1025;
    wire[4:0] sel1026;
    wire[31:0] add1028;
    wire inv1030;
    wire and1031;
    wire[31:0] sel1032;
    wire eq1034;
    wire[19:0] sll1036;
    wire[19:0] srl1039;
    wire eq1041;
    wire[19:0] sll1044;
    wire[19:0] srl1047;
    wire or1049;
    wire or1050;
    wire or1051;
    wire or1052;
    wire or1053;
    wire or1054;
    wire or1055;
    wire or1056;
    wire or1057;
    wire inv1058;
    wire and1059;
    wire and1060;
    wire[19:0] sel1061;
    wire[19:0] sll1063;
    wire[19:0] add1066;
    wire[19:0] srl1069;
    wire[19:0] sub1072;
    wire[19:0] sel1074;
    wire[4:0] sel1075;
    wire inv1076;
    wire and1077;
    wire[19:0] sel1078;
    wire[4:0] sel1079;
    wire eq1081;
    wire or1082;
    wire or1083;
    wire or1084;
    wire or1085;
    wire or1086;
    wire or1087;
    wire or1088;
    wire or1089;
    wire or1090;
    wire or1091;
    wire inv1092;
    wire and1093;
    wire[2:0] sel1094;
    wire[19:0] sll1096;
    wire[19:0] srl1099;
    wire[19:0] sel1101;
    wire ne1103;
    wire and1105;
    wire sel1106;
    wire[19:0] sll1108;
    wire[19:0] srl1111;
    wire and1113;
    wire[19:0] sel1114;
    wire[19:0] sll1116;
    wire[19:0] add1119;
    wire[19:0] srl1122;
    wire[19:0] sub1125;
    wire[19:0] sel1127;
    wire[4:0] sel1128;
    wire[31:0] add1130;
    wire inv1132;
    wire and1133;
    wire[31:0] proxy1134;
    wire[31:0] sel1135;
    wire[31:0] add1137;
    wire inv1139;
    wire and1140;
    wire[31:0] sel1141;
    wire eq1143;
    wire or1144;
    wire or1145;
    wire or1146;
    wire or1147;
    wire or1148;
    wire or1149;
    wire or1150;
    wire or1151;
    wire or1152;
    wire or1153;
    wire or1154;
    wire inv1155;
    wire and1156;
    wire[2:0] sel1157;
    wire[19:0] sel1158;
    wire ne1161;
    wire and1163;
    wire sel1164;
    wire and1166;
    wire[4:0] sel1167;
    wire[31:0] add1169;
    wire inv1171;
    wire and1172;
    wire[31:0] proxy1173;
    wire[31:0] sel1174;
    wire[31:0] add1176;
    wire inv1178;
    wire and1179;
    wire[31:0] sel1180;
    wire eq1182;
    wire or1183;
    wire or1184;
    wire or1185;
    wire or1186;
    wire or1187;
    wire or1188;
    wire or1189;
    wire or1190;
    wire or1191;
    wire or1192;
    wire or1193;
    wire or1194;
    wire inv1195;
    wire and1196;
    wire[2:0] sel1197;
    wire[19:0] sel1198;
    wire ne1200;
    wire and1202;
    wire sel1203;
    wire[19:0] add1205;
    wire and1207;
    wire[19:0] sel1208;
    wire ne1209;
    wire and1211;
    wire[4:0] sel1212;
    wire inv1214;
    wire and1215;
    wire[4:0] sel1216;
    wire[31:0] add1218;
    wire inv1220;
    wire and1221;
    wire[31:0] proxy1222;
    wire[31:0] sel1223;
    wire[31:0] add1225;
    wire inv1227;
    wire and1228;
    wire[31:0] sel1229;
    wire eq1231;
    wire or1232;
    wire or1233;
    wire or1234;
    wire or1235;
    wire or1236;
    wire or1237;
    wire or1238;
    wire or1239;
    wire or1240;
    wire or1241;
    wire or1242;
    wire or1243;
    wire or1244;
    wire inv1245;
    wire and1246;
    wire and1247;
    wire[511:0] sel1248;
    wire sel1249;
    wire[19:0] and1251;
    wire[19:0] sll1254;
    wire[511:0] srl1256;
    wire[511:0] proxy1257; // #728 unknown(0)
    wire[31:0] proxy1258; // #729 unknown(0)
    wire[31:0] sel1259;
    wire[19:0] and1261;
    wire[19:0] sll1264;
    wire[511:0] srl1266;
    wire[511:0] proxy1267; // #734 unknown(0)
    wire[31:0] proxy1268; // #735 unknown(0)
    wire inv1269;
    wire and1270;
    wire[31:0] sel1271;
    wire[4:0] sel1273;
    wire eq1275;
    wire[19:0] and1277;
    wire[19:0] sll1280;
    wire[511:0] srl1282;
    wire[511:0] proxy1283; // #741 unknown(0)
    wire[19:0] proxy1284; // #742 unknown(0)
    wire or1285;
    wire or1286;
    wire or1287;
    wire or1288;
    wire or1289;
    wire or1290;
    wire or1291;
    wire or1292;
    wire or1293;
    wire or1294;
    wire or1295;
    wire or1296;
    wire or1297;
    wire or1298;
    wire inv1299;
    wire and1300;
    wire[19:0] sel1302;
    wire[19:0] and1304;
    wire[19:0] sll1307;
    wire[511:0] srl1309;
    wire[511:0] proxy1310; // #747 unknown(0)
    wire[31:0] proxy1311; // #748 unknown(0)
    wire[31:0] sel1313;
    wire[31:0] proxy1314; // #749 dcsc_walk.cpp(414)
    wire[31:0] sel1316;
    wire sel1318;
    wire sel1319;
    wire[19:0] add1321;
    wire and1323;
    wire[19:0] sel1324;
    wire ne1325;
    wire inv1337;
    wire and1338;
    wire[4:0] sel1341;
    wire[31:0] add1343;
    wire inv1345;
    wire and1346;
    wire[31:0] proxy1347;
    wire[31:0] sel1348;
    wire eq1350;
    wire[19:0] add1352;
    wire or1354;
    wire or1355;
    wire or1356;
    wire or1357;
    wire or1358;
    wire or1359;
    wire or1360;
    wire or1361;
    wire or1362;
    wire or1363;
    wire or1364;
    wire or1365;
    wire or1366;
    wire or1367;
    wire or1368;
    wire inv1369;
    wire and1370;
    wire[19:0] sel1371;
    wire ne1372;
    wire[19:0] and1375;
    wire ne1378;
    wire[19:0] and1381;
    wire[19:0] sll1384;
    wire[511:0] srl1386;
    wire[511:0] proxy1387; // #771 unknown(0)
    wire[19:0] proxy1388; // #772 unknown(0)
    wire and1389;
    wire and1390;
    wire[19:0] sel1391;
    wire[19:0] and1393;
    wire[19:0] sll1396;
    wire[511:0] srl1398;
    wire[511:0] proxy1399; // #777 unknown(0)
    wire[19:0] proxy1400; // #778 unknown(0)
    wire[19:0] sel1401;
    wire[19:0] and1403;
    wire ne1406;
    wire[19:0] add1409;
    wire[19:0] and1412;
    wire[19:0] sll1415;
    wire[511:0] srl1417;
    wire[511:0] proxy1418; // #789 unknown(0)
    wire[19:0] proxy1419; // #790 unknown(0)
    wire and1420;
    wire[19:0] sel1421;
    wire[4:0] sel1422;
    wire inv1423;
    wire and1424;
    wire[4:0] sel1425;
    wire inv1426;
    wire and1427;
    wire[4:0] sel1428;
    wire inv1430;
    wire and1431;
    wire[4:0] sel1432;
    wire eq1434;
    wire or1435;
    wire or1436;
    wire or1437;
    wire or1438;
    wire or1439;
    wire or1440;
    wire or1441;
    wire or1442;
    wire or1443;
    wire or1444;
    wire or1445;
    wire or1446;
    wire or1447;
    wire or1448;
    wire or1449;
    wire or1450;
    wire inv1451;
    wire and1452;
    wire sel1453;
    wire sel1454;
    wire lt1456;
    wire[31:0] sel1458;
    wire eq1461;
    wire[31:0] sel1463;
    wire and1465;
    wire[31:0] proxy1466;
    wire[31:0] sel1467;
    wire gt1468;
    wire[31:0] sel1470;
    wire[31:0] proxy1472;
    wire[31:0] sel1473;
    wire[31:0] add1474;
    wire[31:0] proxy1476;
    wire[31:0] sel1477;
    wire[31:0] add1479;
    wire[31:0] proxy1481;
    wire[31:0] sel1482;
    wire[4:0] sel1483;
    wire[31:0] add1485;
    wire inv1487;
    wire and1488;
    wire[31:0] sel1489;

    assign io_ctrl_start_data5 = io_ctrl_start_data;
    assign io_ctrl_start_data_part6 = io_ctrl_start_data5;
    assign io_ctrl_start_data_part_start7 = io_ctrl_start_data_part6[31:0];
    assign io_ctrl_start_data_part_end8 = io_ctrl_start_data_part6[63:32];
    assign io_ctrl_start_ready11 = proxy422;
    assign io_ctrl_stats17 = proxy349;
    assign io_lsu_rd_req_data34 = {sel1198, sel1197};
    assign io_lsu_rd_req_data_type35 = io_lsu_rd_req_data34[2:0];
    assign io_lsu_rd_rsp_data45 = io_lsu_rd_rsp_data;
    assign io_lsu_rd_rsp_data_type46 = io_lsu_rd_rsp_data45[2:0];
    assign io_lsu_rd_rsp_data_data47 = io_lsu_rd_rsp_data45[514:3];
    assign io_pe_valid50 = proxy633;
    assign io_pe_data53 = proxy618;
    always @ (posedge clk) reg70 <= reset ? 20'h0 : sel1371;
    always @ (posedge clk) reg76 <= reset ? 20'h0 : sel648;
    always @ (posedge clk) reg82 <= reset ? 20'h0 : sel1391;
    always @ (posedge clk) reg88 <= reset ? 20'h0 : sel1401;
    always @ (posedge clk) reg94 <= reset ? 20'h0 : sel1421;
    always @ (posedge clk) reg101 <= reset ? 20'hfffff : sel899;
    always @ (posedge clk) reg107 <= reset ? 20'hfffff : sel1078;
    always @ (posedge clk) reg113 <= reset ? 20'h0 : sel1208;
    always @ (posedge clk) reg119 <= reset ? 20'h0 : sel1127;
    assign proxy128 = reg133;
    always @ (posedge clk) reg133 <= reset ? 32'h0 : sel1271;
    assign proxy134 = proxy128;
    assign proxy136 = proxy382;
    assign bindin138 = clk;
    assign bindin139 = reset;
    ch_queue __module2__(.clk(bindin138), .reset(bindin139), .io_enq_valid(bindin140), .io_enq_data(bindin143), .io_deq_ready(bindin155), .io_deq_valid(bindout149), .io_deq_data(bindout152));
    assign bindin140 = proxy136;
    assign proxy142 = io_lsu_rd_rsp_data_data47;
    assign bindin143 = proxy142;
    assign proxy154 = proxy581;
    assign bindin155 = proxy154;
    assign proxy160 = proxy388;
    assign bindin162 = clk;
    assign bindin163 = reset;
    ch_queue __module3__(.clk(bindin162), .reset(bindin163), .io_enq_valid(bindin164), .io_enq_data(bindin167), .io_deq_ready(bindin179), .io_deq_valid(bindout173), .io_deq_data(bindout176));
    assign bindin164 = proxy160;
    assign proxy166 = io_lsu_rd_rsp_data_data47;
    assign bindin167 = proxy166;
    assign proxy175 = bindout176;
    assign proxy178 = proxy588;
    assign bindin179 = proxy178;
    assign proxy184 = proxy394;
    assign bindin186 = clk;
    assign bindin187 = reset;
    ch_queue_0 __module4__(.clk(bindin186), .reset(bindin187), .io_enq_valid(bindin188), .io_enq_data(bindin191), .io_deq_ready(bindin203), .io_deq_data(bindout200));
    assign bindin188 = proxy184;
    assign proxy190 = io_lsu_rd_rsp_data_data47;
    assign bindin191 = proxy190;
    assign proxy202 = 1'b0;
    assign bindin203 = proxy202;
    assign proxy208 = proxy400;
    assign bindin210 = clk;
    assign bindin211 = reset;
    ch_queue_0 __module5__(.clk(bindin210), .reset(bindin211), .io_enq_valid(bindin212), .io_enq_data(bindin215), .io_deq_ready(bindin227), .io_deq_data(bindout224));
    assign bindin212 = proxy208;
    assign proxy214 = io_lsu_rd_rsp_data_data47;
    assign bindin215 = proxy214;
    assign proxy226 = 1'b0;
    assign bindin227 = proxy226;
    assign proxy232 = proxy406;
    assign bindin234 = clk;
    assign bindin235 = reset;
    ch_queue __module6__(.clk(bindin234), .reset(bindin235), .io_enq_valid(bindin236), .io_enq_data(bindin239), .io_deq_ready(bindin251), .io_deq_valid(bindout245), .io_deq_data(bindout248));
    assign bindin236 = proxy232;
    assign proxy238 = io_lsu_rd_rsp_data_data47;
    assign bindin239 = proxy238;
    assign proxy250 = proxy606;
    assign bindin251 = proxy250;
    assign proxy256 = proxy412;
    assign bindin258 = clk;
    assign bindin259 = reset;
    ch_queue __module7__(.clk(bindin258), .reset(bindin259), .io_enq_valid(bindin260), .io_enq_data(bindin263), .io_deq_ready(bindin275), .io_deq_valid(bindout269), .io_deq_data(bindout272));
    assign bindin260 = proxy256;
    assign proxy262 = io_lsu_rd_rsp_data_data47;
    assign bindin263 = proxy262;
    assign proxy274 = proxy612;
    assign bindin275 = proxy274;
    always @ (posedge clk) reg285 <= reset ? 8'h0 : sel449;
    always @ (posedge clk) reg291 <= reset ? 8'h0 : sel475;
    always @ (posedge clk) reg297 <= reset ? 8'h0 : sel501;
    always @ (posedge clk) reg303 <= reset ? 8'h0 : sel527;
    always @ (posedge clk) reg309 <= reset ? 8'h0 : sel553;
    always @ (posedge clk) reg315 <= reset ? 8'h0 : sel579;
    always @ (posedge clk) reg322 <= reset ? lit320 : sel738;
    always @ (posedge clk) reg328 <= reset ? lit320 : sel752;
    always @ (posedge clk) reg334 <= reset ? lit320 : sel996;
    always @ (posedge clk) reg340 <= reset ? lit320 : sel1248;
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
    assign ch_walker_stats_t362 = {sel1489, sel1032, sel1141, sel1229, sel1180, sel847, sel694, sel1477, sel1473, sel1467, sel1482};
    always @ (posedge clk) reg376 <= reset ? lit374 : ch_walker_stats_t362;
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
    always @ (posedge clk) reg419 <= reset ? 5'b0 : sel1483;
    assign eq421 = reg419 == 5'b0;
    assign proxy422 = eq421;
    assign eq424 = io_lsu_rd_req_data_type35 == 3'b1;
    assign and426 = sel1203 & io_lsu_rd_req_ready;
    assign and428 = and426 & eq424;
    assign proxy430 = proxy154;
    assign inv431 = ~and428;
    assign and433 = inv431 & proxy430;
    assign inv435 = ~proxy430;
    assign and437 = and428 & inv435;
    assign add441 = reg285 + 8'h1;
    assign sel443 = and437 ? add441 : reg285;
    assign sub445 = reg285 - 8'h1;
    assign inv447 = ~and437;
    assign and448 = inv447 & and433;
    assign sel449 = and448 ? sub445 : sel443;
    assign eq451 = io_lsu_rd_req_data_type35 == 3'b10;
    assign and453 = sel1203 & io_lsu_rd_req_ready;
    assign and455 = and453 & eq451;
    assign proxy457 = proxy178;
    assign inv458 = ~and455;
    assign and460 = inv458 & proxy457;
    assign inv462 = ~proxy457;
    assign and464 = and455 & inv462;
    assign add467 = reg291 + 8'h1;
    assign sel469 = and464 ? add467 : reg291;
    assign sub471 = reg291 - 8'h1;
    assign inv473 = ~and464;
    assign and474 = inv473 & and460;
    assign sel475 = and474 ? sub471 : sel469;
    assign eq477 = io_lsu_rd_req_data_type35 == 3'b11;
    assign and479 = sel1203 & io_lsu_rd_req_ready;
    assign and481 = and479 & eq477;
    assign proxy483 = proxy202;
    assign inv484 = ~and481;
    assign and486 = inv484 & proxy483;
    assign inv488 = ~proxy483;
    assign and490 = and481 & inv488;
    assign add493 = reg297 + 8'h1;
    assign sel495 = and490 ? add493 : reg297;
    assign sub497 = reg297 - 8'h1;
    assign inv499 = ~and490;
    assign and500 = inv499 & and486;
    assign sel501 = and500 ? sub497 : sel495;
    assign eq503 = io_lsu_rd_req_data_type35 == 3'b100;
    assign and505 = sel1203 & io_lsu_rd_req_ready;
    assign and507 = and505 & eq503;
    assign proxy509 = proxy226;
    assign inv510 = ~and507;
    assign and512 = inv510 & proxy509;
    assign inv514 = ~proxy509;
    assign and516 = and507 & inv514;
    assign add519 = reg303 + 8'h1;
    assign sel521 = and516 ? add519 : reg303;
    assign sub523 = reg303 - 8'h1;
    assign inv525 = ~and516;
    assign and526 = inv525 & and512;
    assign sel527 = and526 ? sub523 : sel521;
    assign eq529 = io_lsu_rd_req_data_type35 == 3'b101;
    assign and531 = sel1203 & io_lsu_rd_req_ready;
    assign and533 = and531 & eq529;
    assign proxy535 = proxy250;
    assign inv536 = ~and533;
    assign and538 = inv536 & proxy535;
    assign inv540 = ~proxy535;
    assign and542 = and533 & inv540;
    assign add545 = reg309 + 8'h1;
    assign sel547 = and542 ? add545 : reg309;
    assign sub549 = reg309 - 8'h1;
    assign inv551 = ~and542;
    assign and552 = inv551 & and538;
    assign sel553 = and552 ? sub549 : sel547;
    assign eq555 = io_lsu_rd_req_data_type35 == 3'b110;
    assign and557 = sel1203 & io_lsu_rd_req_ready;
    assign and559 = and557 & eq555;
    assign proxy561 = proxy274;
    assign inv562 = ~and559;
    assign and564 = inv562 & proxy561;
    assign inv566 = ~proxy561;
    assign and568 = and559 & inv566;
    assign add571 = reg315 + 8'h1;
    assign sel573 = and568 ? add571 : reg315;
    assign sub575 = reg315 - 8'h1;
    assign inv577 = ~and568;
    assign and578 = inv577 & and564;
    assign sel579 = and578 ? sub575 : sel573;
    assign proxy581 = reg586;
    always @ (posedge clk) reg586 <= reset ? 1'b0 : sel751;
    assign proxy588 = reg592;
    always @ (posedge clk) reg592 <= reset ? 1'b0 : sel838;
    assign proxy606 = reg610;
    always @ (posedge clk) reg610 <= reset ? 1'b0 : sel1249;
    assign proxy612 = reg616;
    always @ (posedge clk) reg616 <= reset ? 1'b0 : sel997;
    assign proxy618 = reg631;
    assign ch_pe_req_t624 = {sel1453, sel1316, sel1313, sel1302};
    always @ (posedge clk) reg631 <= reset ? lit629 : ch_pe_req_t624;
    assign proxy633 = reg637;
    always @ (posedge clk) reg637 <= reset ? 1'b0 : sel1454;
    assign eq639 = reg419 == 5'b0;
    assign proxy640 = io_ctrl_start_data_part_start7[19:0];
    assign and641 = eq639 & io_ctrl_start_valid;
    assign sel642 = and641 ? proxy640 : reg70;
    assign proxy643 = io_ctrl_start_data_part_end8[19:0];
    assign sub646 = proxy643 - 20'h1;
    assign sel648 = and641 ? sub646 : reg76;
    assign ne649 = reg70 != sel648;
    assign and651 = and641 & ne649;
    assign sel654 = and651 ? 5'b1 : reg419;
    assign eq656 = reg419 == 5'b1;
    assign inv657 = ~eq639;
    assign and658 = inv657 & eq656;
    assign sel660 = and658 ? 3'b1 : 3'b0;
    assign sll663 = reg70 << 20'h2;
    assign srl667 = sll663 >> 20'h6;
    assign sel670 = and658 ? srl667 : 20'h0;
    assign ne673 = reg285 != 8'h2;
    assign and676 = and658 & ne673;
    assign sel677 = and676 ? 1'b1 : 1'b0;
    assign and679 = and676 & io_lsu_rd_req_ready;
    assign sel680 = and679 ? 5'b10 : sel654;
    assign add683 = proxy_a_colind_stalls354 + 32'h1;
    assign inv685 = ~io_lsu_rd_req_ready;
    assign and686 = and676 & inv685;
    assign proxy687 = proxy349[159:128];
    assign sel688 = and686 ? add683 : proxy687;
    assign add690 = proxy_a_colind_stalls354 + 32'h1;
    assign inv692 = ~ne673;
    assign and693 = and658 & inv692;
    assign sel694 = and693 ? add690 : sel688;
    assign eq696 = reg419 == 5'b10;
    assign or697 = eq656 | eq639;
    assign inv698 = ~or697;
    assign and699 = inv698 & eq696;
    assign sel700 = and699 ? 3'b10 : sel660;
    assign sll702 = reg70 << 20'h2;
    assign srl705 = sll702 >> 20'h6;
    assign sel707 = and699 ? srl705 : sel670;
    assign ne709 = reg291 != 8'h2;
    assign and711 = and699 & ne709;
    assign sel712 = and711 ? 1'b1 : sel677;
    assign and714 = and711 & io_lsu_rd_req_ready;
    assign sel715 = and714 ? 5'b11 : sel680;
    assign add717 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv719 = ~io_lsu_rd_req_ready;
    assign and720 = and711 & inv719;
    assign proxy721 = proxy349[191:160];
    assign sel722 = and720 ? add717 : proxy721;
    assign add724 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv726 = ~ne709;
    assign and727 = and699 & inv726;
    assign sel728 = and727 ? add724 : sel722;
    assign eq730 = reg419 == 5'b11;
    assign and731 = bindout149 & bindout173;
    assign or733 = eq696 | eq656;
    assign or734 = or733 | eq639;
    assign inv735 = ~or734;
    assign and736 = inv735 & eq730;
    assign and737 = and736 & and731;
    assign sel738 = and737 ? bindout152 : reg322;
    assign and741 = reg70 & 20'hf;
    assign sll745 = and741 << 20'h5;
    assign srl747 = sel738 >> sll745;
    assign proxy748 = srl747;
    assign proxy749 = proxy748[19:0];
    assign sel750 = and737 ? proxy749 : reg82;
    assign sel751 = and737 ? 1'b1 : 1'b0;
    assign sel752 = and737 ? proxy175 : reg328;
    assign and754 = reg70 & 20'hf;
    assign sll757 = and754 << 20'h5;
    assign srl759 = sel752 >> sll757;
    assign proxy760 = srl759;
    assign proxy761 = proxy760[19:0];
    assign sel762 = and737 ? proxy761 : reg88;
    assign sel763 = and737 ? 1'b1 : 1'b0;
    assign and765 = reg70 & 20'hf;
    assign ne768 = and765 != 20'hf;
    assign add771 = reg70 + 20'h1;
    assign and774 = add771 & 20'hf;
    assign sll777 = and774 << 20'h5;
    assign srl779 = sel752 >> sll777;
    assign proxy780 = srl779;
    assign proxy781 = proxy780[19:0];
    assign and782 = and737 & ne768;
    assign sel783 = and782 ? proxy781 : reg94;
    assign sel785 = and782 ? 5'b110 : sel715;
    assign inv787 = ~ne768;
    assign and788 = and737 & inv787;
    assign sel789 = and788 ? 5'b100 : sel785;
    assign eq791 = reg419 == 5'b100;
    assign or792 = eq730 | eq696;
    assign or793 = or792 | eq656;
    assign or794 = or793 | eq639;
    assign inv795 = ~or794;
    assign and796 = inv795 & eq791;
    assign sel797 = and796 ? 3'b10 : sel700;
    assign add799 = reg70 + 20'h1;
    assign sll802 = add799 << 20'h2;
    assign srl805 = sll802 >> 20'h6;
    assign sel807 = and796 ? srl805 : sel707;
    assign ne809 = reg291 != 8'h2;
    assign and811 = and796 & ne809;
    assign sel812 = and811 ? 1'b1 : sel712;
    assign and814 = and811 & io_lsu_rd_req_ready;
    assign sel815 = and814 ? 5'b101 : sel789;
    assign add817 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv819 = ~io_lsu_rd_req_ready;
    assign and820 = and811 & inv819;
    assign sel821 = and820 ? add817 : sel728;
    assign add823 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv825 = ~ne809;
    assign and826 = and796 & inv825;
    assign sel827 = and826 ? add823 : sel821;
    assign eq829 = reg419 == 5'b101;
    assign proxy830 = proxy175;
    assign or831 = eq791 | eq730;
    assign or832 = or831 | eq696;
    assign or833 = or832 | eq656;
    assign or834 = or833 | eq639;
    assign inv835 = ~or834;
    assign and836 = inv835 & eq829;
    assign and837 = and836 & bindout173;
    assign sel838 = and837 ? 1'b1 : sel763;
    assign proxy839 = proxy830[19:0];
    assign sel840 = and837 ? proxy839 : sel783;
    assign sel841 = and837 ? 5'b110 : sel815;
    assign add843 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv845 = ~bindout173;
    assign and846 = and836 & inv845;
    assign sel847 = and846 ? add843 : sel827;
    assign eq849 = reg419 == 5'b110;
    assign srl851 = reg82 >> 20'h5;
    assign sll854 = srl851 << 20'h2;
    assign srl857 = sll854 >> 20'h6;
    assign eq859 = srl857 == reg101;
    assign and862 = srl851 & 20'hf;
    assign sll865 = and862 << 20'h5;
    assign srl867 = reg334 >> sll865;
    assign proxy868 = srl867;
    assign proxy869 = proxy868[31:0];
    assign and872 = reg82 & 20'h1f;
    assign sll875 = 32'h1 << and872;
    assign and877 = proxy869 & sll875;
    assign ne880 = and877 != 32'h0;
    assign or883 = eq829 | eq791;
    assign or884 = or883 | eq730;
    assign or885 = or884 | eq696;
    assign or886 = or885 | eq656;
    assign or887 = or886 | eq639;
    assign inv888 = ~or887;
    assign and889 = inv888 & eq849;
    assign and890 = and889 & eq859;
    assign and891 = and890 & ne880;
    assign sel892 = and891 ? 5'b111 : sel841;
    assign inv894 = ~ne880;
    assign and895 = and890 & inv894;
    assign sel896 = and895 ? 5'b10000 : sel892;
    assign inv897 = ~eq859;
    assign and898 = and889 & inv897;
    assign sel899 = and898 ? srl857 : reg101;
    assign sel901 = and898 ? 5'b1000 : sel896;
    assign eq903 = reg419 == 5'b111;
    assign sll905 = reg82 << 20'h2;
    assign srl908 = sll905 >> 20'h6;
    assign eq910 = srl908 == reg107;
    assign sll913 = reg88 << 20'h2;
    assign srl916 = sll913 >> 20'h6;
    assign or918 = eq849 | eq829;
    assign or919 = or918 | eq791;
    assign or920 = or919 | eq730;
    assign or921 = or920 | eq696;
    assign or922 = or921 | eq656;
    assign or923 = or922 | eq639;
    assign inv924 = ~or923;
    assign and925 = inv924 & eq903;
    assign and926 = and925 & eq910;
    assign sel927 = and926 ? srl916 : reg113;
    assign sll929 = reg94 << 20'h2;
    assign add933 = sll929 + 20'h3f;
    assign srl936 = add933 >> 20'h6;
    assign sub939 = srl936 - 20'h1;
    assign sel941 = and926 ? sub939 : reg119;
    assign sel943 = and926 ? 5'b1100 : sel901;
    assign inv944 = ~eq910;
    assign and945 = and925 & inv944;
    assign sel946 = and945 ? srl908 : reg107;
    assign sel948 = and945 ? 5'b1011 : sel943;
    assign eq950 = reg419 == 5'b1000;
    assign or951 = eq903 | eq849;
    assign or952 = or951 | eq829;
    assign or953 = or952 | eq791;
    assign or954 = or953 | eq730;
    assign or955 = or954 | eq696;
    assign or956 = or955 | eq656;
    assign or957 = or956 | eq639;
    assign inv958 = ~or957;
    assign and959 = inv958 & eq950;
    assign sel960 = and959 ? 3'b110 : sel797;
    assign sel961 = and959 ? reg101 : sel807;
    assign ne963 = reg315 != 8'h2;
    assign and965 = and959 & ne963;
    assign sel966 = and965 ? 1'b1 : sel812;
    assign and968 = and965 & io_lsu_rd_req_ready;
    assign sel969 = and968 ? 5'b1001 : sel948;
    assign add971 = proxy_x_masks_stalls359 + 32'h1;
    assign inv973 = ~io_lsu_rd_req_ready;
    assign and974 = and965 & inv973;
    assign proxy975 = proxy349[319:288];
    assign sel976 = and974 ? add971 : proxy975;
    assign add978 = proxy_x_masks_stalls359 + 32'h1;
    assign inv980 = ~ne963;
    assign and981 = and959 & inv980;
    assign sel982 = and981 ? add978 : sel976;
    assign eq984 = reg419 == 5'b1001;
    assign or985 = eq950 | eq903;
    assign or986 = or985 | eq849;
    assign or987 = or986 | eq829;
    assign or988 = or987 | eq791;
    assign or989 = or988 | eq730;
    assign or990 = or989 | eq696;
    assign or991 = or990 | eq656;
    assign or992 = or991 | eq639;
    assign inv993 = ~or992;
    assign and994 = inv993 & eq984;
    assign and995 = and994 & bindout269;
    assign sel996 = and995 ? bindout272 : reg334;
    assign sel997 = and995 ? 1'b1 : 1'b0;
    assign srl999 = reg82 >> 20'h5;
    assign and1002 = srl999 & 20'hf;
    assign sll1005 = and1002 << 20'h5;
    assign srl1007 = sel996 >> sll1005;
    assign proxy1008 = srl1007;
    assign proxy1009 = proxy1008[31:0];
    assign and1011 = reg82 & 20'h1f;
    assign sll1014 = 32'h1 << and1011;
    assign and1016 = proxy1009 & sll1014;
    assign ne1019 = and1016 != 32'h0;
    assign and1022 = and995 & ne1019;
    assign sel1023 = and1022 ? 5'b1010 : sel969;
    assign inv1024 = ~ne1019;
    assign and1025 = and995 & inv1024;
    assign sel1026 = and1025 ? 5'b10000 : sel1023;
    assign add1028 = proxy_x_masks_stalls359 + 32'h1;
    assign inv1030 = ~bindout269;
    assign and1031 = and994 & inv1030;
    assign sel1032 = and1031 ? add1028 : sel982;
    assign eq1034 = reg419 == 5'b1010;
    assign sll1036 = reg82 << 20'h2;
    assign srl1039 = sll1036 >> 20'h6;
    assign eq1041 = srl1039 == reg107;
    assign sll1044 = reg88 << 20'h2;
    assign srl1047 = sll1044 >> 20'h6;
    assign or1049 = eq984 | eq950;
    assign or1050 = or1049 | eq903;
    assign or1051 = or1050 | eq849;
    assign or1052 = or1051 | eq829;
    assign or1053 = or1052 | eq791;
    assign or1054 = or1053 | eq730;
    assign or1055 = or1054 | eq696;
    assign or1056 = or1055 | eq656;
    assign or1057 = or1056 | eq639;
    assign inv1058 = ~or1057;
    assign and1059 = inv1058 & eq1034;
    assign and1060 = and1059 & eq1041;
    assign sel1061 = and1060 ? srl1047 : sel927;
    assign sll1063 = reg94 << 20'h2;
    assign add1066 = sll1063 + 20'h3f;
    assign srl1069 = add1066 >> 20'h6;
    assign sub1072 = srl1069 - 20'h1;
    assign sel1074 = and1060 ? sub1072 : sel941;
    assign sel1075 = and1060 ? 5'b1100 : sel1026;
    assign inv1076 = ~eq1041;
    assign and1077 = and1059 & inv1076;
    assign sel1078 = and1077 ? srl1039 : sel946;
    assign sel1079 = and1077 ? 5'b1011 : sel1075;
    assign eq1081 = reg419 == 5'b1011;
    assign or1082 = eq1034 | eq984;
    assign or1083 = or1082 | eq950;
    assign or1084 = or1083 | eq903;
    assign or1085 = or1084 | eq849;
    assign or1086 = or1085 | eq829;
    assign or1087 = or1086 | eq791;
    assign or1088 = or1087 | eq730;
    assign or1089 = or1088 | eq696;
    assign or1090 = or1089 | eq656;
    assign or1091 = or1090 | eq639;
    assign inv1092 = ~or1091;
    assign and1093 = inv1092 & eq1081;
    assign sel1094 = and1093 ? 3'b101 : sel960;
    assign sll1096 = reg82 << 20'h2;
    assign srl1099 = sll1096 >> 20'h6;
    assign sel1101 = and1093 ? srl1099 : sel961;
    assign ne1103 = reg309 != 8'h2;
    assign and1105 = and1093 & ne1103;
    assign sel1106 = and1105 ? 1'b1 : sel966;
    assign sll1108 = reg88 << 20'h2;
    assign srl1111 = sll1108 >> 20'h6;
    assign and1113 = and1105 & io_lsu_rd_req_ready;
    assign sel1114 = and1113 ? srl1111 : sel1061;
    assign sll1116 = reg94 << 20'h2;
    assign add1119 = sll1116 + 20'h3f;
    assign srl1122 = add1119 >> 20'h6;
    assign sub1125 = srl1122 - 20'h1;
    assign sel1127 = and1113 ? sub1125 : sel1074;
    assign sel1128 = and1113 ? 5'b1100 : sel1079;
    assign add1130 = proxy_x_values_stalls358 + 32'h1;
    assign inv1132 = ~io_lsu_rd_req_ready;
    assign and1133 = and1105 & inv1132;
    assign proxy1134 = proxy349[287:256];
    assign sel1135 = and1133 ? add1130 : proxy1134;
    assign add1137 = proxy_x_values_stalls358 + 32'h1;
    assign inv1139 = ~ne1103;
    assign and1140 = and1093 & inv1139;
    assign sel1141 = and1140 ? add1137 : sel1135;
    assign eq1143 = reg419 == 5'b1100;
    assign or1144 = eq1081 | eq1034;
    assign or1145 = or1144 | eq984;
    assign or1146 = or1145 | eq950;
    assign or1147 = or1146 | eq903;
    assign or1148 = or1147 | eq849;
    assign or1149 = or1148 | eq829;
    assign or1150 = or1149 | eq791;
    assign or1151 = or1150 | eq730;
    assign or1152 = or1151 | eq696;
    assign or1153 = or1152 | eq656;
    assign or1154 = or1153 | eq639;
    assign inv1155 = ~or1154;
    assign and1156 = inv1155 & eq1143;
    assign sel1157 = and1156 ? 3'b11 : sel1094;
    assign sel1158 = and1156 ? reg113 : sel1101;
    assign ne1161 = reg297 != 8'h20;
    assign and1163 = and1156 & ne1161;
    assign sel1164 = and1163 ? 1'b1 : sel1106;
    assign and1166 = and1163 & io_lsu_rd_req_ready;
    assign sel1167 = and1166 ? 5'b1101 : sel1128;
    assign add1169 = proxy_a_rowind_stalls356 + 32'h1;
    assign inv1171 = ~io_lsu_rd_req_ready;
    assign and1172 = and1163 & inv1171;
    assign proxy1173 = proxy349[223:192];
    assign sel1174 = and1172 ? add1169 : proxy1173;
    assign add1176 = proxy_a_rowind_stalls356 + 32'h1;
    assign inv1178 = ~ne1161;
    assign and1179 = and1156 & inv1178;
    assign sel1180 = and1179 ? add1176 : sel1174;
    assign eq1182 = reg419 == 5'b1101;
    assign or1183 = eq1143 | eq1081;
    assign or1184 = or1183 | eq1034;
    assign or1185 = or1184 | eq984;
    assign or1186 = or1185 | eq950;
    assign or1187 = or1186 | eq903;
    assign or1188 = or1187 | eq849;
    assign or1189 = or1188 | eq829;
    assign or1190 = or1189 | eq791;
    assign or1191 = or1190 | eq730;
    assign or1192 = or1191 | eq696;
    assign or1193 = or1192 | eq656;
    assign or1194 = or1193 | eq639;
    assign inv1195 = ~or1194;
    assign and1196 = inv1195 & eq1182;
    assign sel1197 = and1196 ? 3'b100 : sel1157;
    assign sel1198 = and1196 ? reg113 : sel1158;
    assign ne1200 = reg303 != 8'h20;
    assign and1202 = and1196 & ne1200;
    assign sel1203 = and1202 ? 1'b1 : sel1164;
    assign add1205 = reg113 + 20'h1;
    assign and1207 = and1202 & io_lsu_rd_req_ready;
    assign sel1208 = and1207 ? add1205 : sel1114;
    assign ne1209 = reg113 != reg119;
    assign and1211 = and1207 & ne1209;
    assign sel1212 = and1211 ? 5'b1100 : sel1167;
    assign inv1214 = ~ne1209;
    assign and1215 = and1207 & inv1214;
    assign sel1216 = and1215 ? 5'b1110 : sel1212;
    assign add1218 = proxy_a_values_stalls357 + 32'h1;
    assign inv1220 = ~io_lsu_rd_req_ready;
    assign and1221 = and1202 & inv1220;
    assign proxy1222 = proxy349[255:224];
    assign sel1223 = and1221 ? add1218 : proxy1222;
    assign add1225 = proxy_a_values_stalls357 + 32'h1;
    assign inv1227 = ~ne1200;
    assign and1228 = and1196 & inv1227;
    assign sel1229 = and1228 ? add1225 : sel1223;
    assign eq1231 = reg419 == 5'b1110;
    assign or1232 = eq1182 | eq1143;
    assign or1233 = or1232 | eq1081;
    assign or1234 = or1233 | eq1034;
    assign or1235 = or1234 | eq984;
    assign or1236 = or1235 | eq950;
    assign or1237 = or1236 | eq903;
    assign or1238 = or1237 | eq849;
    assign or1239 = or1238 | eq829;
    assign or1240 = or1239 | eq791;
    assign or1241 = or1240 | eq730;
    assign or1242 = or1241 | eq696;
    assign or1243 = or1242 | eq656;
    assign or1244 = or1243 | eq639;
    assign inv1245 = ~or1244;
    assign and1246 = inv1245 & eq1231;
    assign and1247 = and1246 & bindout245;
    assign sel1248 = and1247 ? bindout248 : reg340;
    assign sel1249 = and1247 ? 1'b1 : 1'b0;
    assign and1251 = reg82 & 20'hf;
    assign sll1254 = and1251 << 20'h5;
    assign srl1256 = sel1248 >> sll1254;
    assign proxy1257 = srl1256;
    assign proxy1258 = proxy1257[31:0];
    assign sel1259 = and1247 ? proxy1258 : proxy134;
    assign and1261 = reg82 & 20'hf;
    assign sll1264 = and1261 << 20'h5;
    assign srl1266 = reg340 >> sll1264;
    assign proxy1267 = srl1266;
    assign proxy1268 = proxy1267[31:0];
    assign inv1269 = ~bindout245;
    assign and1270 = and1246 & inv1269;
    assign sel1271 = and1270 ? proxy1268 : sel1259;
    assign sel1273 = and1246 ? 5'b1111 : sel1216;
    assign eq1275 = reg419 == 5'b1111;
    assign and1277 = reg88 & 20'hf;
    assign sll1280 = and1277 << 20'h5;
    assign srl1282 = bindout200 >> sll1280;
    assign proxy1283 = srl1282;
    assign proxy1284 = proxy1283[19:0];
    assign or1285 = eq1231 | eq1182;
    assign or1286 = or1285 | eq1143;
    assign or1287 = or1286 | eq1081;
    assign or1288 = or1287 | eq1034;
    assign or1289 = or1288 | eq984;
    assign or1290 = or1289 | eq950;
    assign or1291 = or1290 | eq903;
    assign or1292 = or1291 | eq849;
    assign or1293 = or1292 | eq829;
    assign or1294 = or1293 | eq791;
    assign or1295 = or1294 | eq730;
    assign or1296 = or1295 | eq696;
    assign or1297 = or1296 | eq656;
    assign or1298 = or1297 | eq639;
    assign inv1299 = ~or1298;
    assign and1300 = inv1299 & eq1275;
    assign sel1302 = and1300 ? proxy1284 : 20'h0;
    assign and1304 = reg88 & 20'hf;
    assign sll1307 = and1304 << 20'h5;
    assign srl1309 = bindout224 >> sll1307;
    assign proxy1310 = srl1309;
    assign proxy1311 = proxy1310[31:0];
    assign sel1313 = and1300 ? proxy1311 : 32'h0;
    assign proxy1314 = proxy128;
    assign sel1316 = and1300 ? proxy1314 : 32'h0;
    assign sel1318 = and1300 ? 1'b0 : 1'b0;
    assign sel1319 = and1300 ? 1'b1 : 1'b0;
    assign add1321 = reg88 + 20'h1;
    assign and1323 = and1300 & io_pe_ready;
    assign sel1324 = and1323 ? add1321 : sel762;
    assign ne1325 = reg88 != reg94;
    assign inv1337 = ~ne1325;
    assign and1338 = and1323 & inv1337;
    assign sel1341 = and1338 ? 5'b10000 : sel1273;
    assign add1343 = proxy_execute_stalls360 + 32'h1;
    assign inv1345 = ~io_pe_ready;
    assign and1346 = and1300 & inv1345;
    assign proxy1347 = proxy349[351:320];
    assign sel1348 = and1346 ? add1343 : proxy1347;
    assign eq1350 = reg419 == 5'b10000;
    assign add1352 = reg70 + 20'h1;
    assign or1354 = eq1275 | eq1231;
    assign or1355 = or1354 | eq1182;
    assign or1356 = or1355 | eq1143;
    assign or1357 = or1356 | eq1081;
    assign or1358 = or1357 | eq1034;
    assign or1359 = or1358 | eq984;
    assign or1360 = or1359 | eq950;
    assign or1361 = or1360 | eq903;
    assign or1362 = or1361 | eq849;
    assign or1363 = or1362 | eq829;
    assign or1364 = or1363 | eq791;
    assign or1365 = or1364 | eq730;
    assign or1366 = or1365 | eq696;
    assign or1367 = or1366 | eq656;
    assign or1368 = or1367 | eq639;
    assign inv1369 = ~or1368;
    assign and1370 = inv1369 & eq1350;
    assign sel1371 = and1370 ? add1352 : sel642;
    assign ne1372 = reg70 != reg76;
    assign and1375 = reg70 & 20'hf;
    assign ne1378 = and1375 != 20'hf;
    assign and1381 = sel1371 & 20'hf;
    assign sll1384 = and1381 << 20'h5;
    assign srl1386 = reg322 >> sll1384;
    assign proxy1387 = srl1386;
    assign proxy1388 = proxy1387[19:0];
    assign and1389 = and1370 & ne1372;
    assign and1390 = and1389 & ne1378;
    assign sel1391 = and1390 ? proxy1388 : sel750;
    assign and1393 = sel1371 & 20'hf;
    assign sll1396 = and1393 << 20'h5;
    assign srl1398 = reg328 >> sll1396;
    assign proxy1399 = srl1398;
    assign proxy1400 = proxy1399[19:0];
    assign sel1401 = and1390 ? proxy1400 : sel1324;
    assign and1403 = reg70 & 20'hf;
    assign ne1406 = and1403 != 20'hf;
    assign add1409 = sel1371 + 20'h1;
    assign and1412 = add1409 & 20'hf;
    assign sll1415 = and1412 << 20'h5;
    assign srl1417 = reg328 >> sll1415;
    assign proxy1418 = srl1417;
    assign proxy1419 = proxy1418[19:0];
    assign and1420 = and1390 & ne1406;
    assign sel1421 = and1420 ? proxy1419 : sel840;
    assign sel1422 = and1420 ? 5'b110 : sel1341;
    assign inv1423 = ~ne1406;
    assign and1424 = and1390 & inv1423;
    assign sel1425 = and1424 ? 5'b100 : sel1422;
    assign inv1426 = ~ne1378;
    assign and1427 = and1389 & inv1426;
    assign sel1428 = and1427 ? 5'b1 : sel1425;
    assign inv1430 = ~ne1372;
    assign and1431 = and1370 & inv1430;
    assign sel1432 = and1431 ? 5'b10001 : sel1428;
    assign eq1434 = reg419 == 5'b10001;
    assign or1435 = eq1350 | eq1275;
    assign or1436 = or1435 | eq1231;
    assign or1437 = or1436 | eq1182;
    assign or1438 = or1437 | eq1143;
    assign or1439 = or1438 | eq1081;
    assign or1440 = or1439 | eq1034;
    assign or1441 = or1440 | eq984;
    assign or1442 = or1441 | eq950;
    assign or1443 = or1442 | eq903;
    assign or1444 = or1443 | eq849;
    assign or1445 = or1444 | eq829;
    assign or1446 = or1445 | eq791;
    assign or1447 = or1446 | eq730;
    assign or1448 = or1447 | eq696;
    assign or1449 = or1448 | eq656;
    assign or1450 = or1449 | eq639;
    assign inv1451 = ~or1450;
    assign and1452 = inv1451 & eq1434;
    assign sel1453 = and1452 ? 1'b1 : sel1318;
    assign sel1454 = and1452 ? 1'b1 : sel1319;
    assign lt1456 = proxy_min_latency351 < 32'h0;
    assign sel1458 = lt1456 ? proxy_min_latency351 : 32'h0;
    assign eq1461 = proxy_min_latency351 == 32'h0;
    assign sel1463 = eq1461 ? 32'h0 : sel1458;
    assign and1465 = and1452 & io_pe_ready;
    assign proxy1466 = proxy349[63:32];
    assign sel1467 = and1465 ? sel1463 : proxy1466;
    assign gt1468 = proxy_min_latency351 > 32'h0;
    assign sel1470 = gt1468 ? proxy_min_latency351 : 32'h0;
    assign proxy1472 = proxy349[95:64];
    assign sel1473 = and1465 ? sel1470 : proxy1472;
    assign add1474 = proxy_total_latency353 + 32'h0;
    assign proxy1476 = proxy349[127:96];
    assign sel1477 = and1465 ? add1474 : proxy1476;
    assign add1479 = proxy_num_parts350 + 32'h1;
    assign proxy1481 = proxy349[31:0];
    assign sel1482 = and1465 ? add1479 : proxy1481;
    assign sel1483 = and1465 ? 5'b0 : sel1432;
    assign add1485 = proxy_execute_stalls360 + 32'h1;
    assign inv1487 = ~io_pe_ready;
    assign and1488 = and1452 & inv1487;
    assign sel1489 = and1488 ? add1485 : sel1348;

    assign io_ctrl_start_ready = io_ctrl_start_ready11;
    assign io_ctrl_stats = io_ctrl_stats17;
    assign io_lsu_rd_req_valid = sel1203;
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
    wire io_enq_valid2; // #1662 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] io_enq_data5; // #1663 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_enq_ready10; // #1666 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_deq_valid13; // #1667 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] io_deq_data16; // #1668 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_deq_ready21; // #1671 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] ch_pipe_data_t23; // #1672 /home/blaise/dev/cash/src/htl/pipe.h(17)
    wire proxy26; // #1675 /home/blaise/dev/cash/src/htl/pipe.h(18)
    wire[20:0] ch_pipe_data_t28; // #1676 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy32; // #1679 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy33; // #1680 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel36;
    reg[20:0] reg44;
    wire[20:0] proxy45; // #1687 unknown(0)
    wire proxy48; // #1690 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel49;
    reg reg53;
    wire proxy54; // #1693 unknown(0)
    wire[20:0] ch_pipe_data_t56; // #1694 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy60; // #1697 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy61; // #1698 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel64;
    reg[20:0] reg69;
    wire[20:0] proxy70; // #1705 unknown(0)
    wire proxy73; // #1708 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel74;
    reg reg77;
    wire proxy78; // #1711 unknown(0)
    wire[20:0] ch_pipe_data_t80; // #1712 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy84; // #1715 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy85; // #1716 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel88;
    reg[20:0] reg93;
    wire[20:0] proxy94; // #1723 unknown(0)
    wire proxy97; // #1726 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel98;
    reg reg101;
    wire proxy102; // #1729 unknown(0)

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
    wire[479:0] lit498 = 480'h0;
    wire[511:0] lit529 = 512'h0;
    wire[84:0] io_req_data5; // #1646 pe.cpp(14)
    wire[19:0] io_req_data_a_rowind6; // #1647 pe.cpp(14)
    wire[31:0] io_req_data_a_value7; // #1648 pe.cpp(14)
    wire[31:0] io_req_data_x_value8; // #1649 pe.cpp(14)
    wire io_req_data_is_end9; // #1650 pe.cpp(14)
    wire io_req_ready12; // #1651 pe.cpp(14)
    wire[533:0] io_lsu_wr_req_data18; // #1653 pe.cpp(14)
    wire[63:0] io_stats27; // #1658 pe.cpp(14)
    wire io_is_idle32; // #1661 pe.cpp(14)
    wire proxy35; // #1730 /home/blaise/dev/cash/src/module.h(33)
    wire bindin38;
    wire bindin40;
    wire bindin41;
    wire[20:0] proxy43; // #1731 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindin46;
    wire proxy48; // #1734 /home/blaise/dev/cash/src/module.h(33)
    wire bindout49;
    wire bindout52;
    wire[20:0] proxy54; // #1736 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_a_rowind55; // #1737 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_is_end56; // #1738 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindout57;
    wire proxy59; // #1739 /home/blaise/dev/cash/src/module.h(33)
    wire bindin60;
    wire proxy62; // #1808 /home/blaise/dev/cash/src/module.h(33)
    wire bindin64;
    wire bindin65;
    wire bindin66;
    wire[20:0] proxy68; // #1809 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_is_end70; // #1811 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindin71;
    wire bindout77;
    wire[20:0] proxy79; // #1814 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_a_rowind80; // #1815 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_is_end81; // #1816 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindout82;
    wire proxy84; // #1817 /home/blaise/dev/cash/src/module.h(33)
    wire bindin85;
    reg[31:0] mem86[0:31];
    reg[31:0] reg93; // #1818 pe.cpp(14)
    wire[31:0] proxy95; // #1821 pe.cpp(14)
    reg[31:0] reg99; // #1821 pe.cpp(14)
    reg[31:0] reg105; // #1824 pe.cpp(14)
    reg[31:0] reg111; // #1827 pe.cpp(14)
    wire[4:0] proxy115; // #1831 pe.cpp(14)
    wire[4:0] proxy117; // #1832 pe.cpp(14)
    reg[19:0] reg126; // #1834 pe.cpp(14)
    wire[63:0] proxy128; // #1837 pe.cpp(14)
    wire[31:0] proxy_write_value_stalls129; // #1838 pe.cpp(14)
    wire[31:0] proxy_write_mask_stalls130; // #1839 pe.cpp(14)
    wire[63:0] ch_pe_stats_t132; // #1840 /home/blaise/dev/cash/src/seq.h(17)
    reg[63:0] reg137; // #1837 pe.cpp(14)
    wire[31:0] proxy139;
    wire[31:0] sel140;
    reg[1:0] reg147; // #1845 pe.cpp(32)
    wire[31:0] sll150;
    wire[31:0] sll153;
    wire inv155;
    wire eq158;
    wire or160;
    wire proxy161; // #1855 unknown(0)
    wire inv162;
    wire[31:0] and164;
    wire eq167;
    wire and169;
    wire or171;
    wire proxy172; // #1861 unknown(0)
    wire eq174;
    wire eq177;
    wire and179;
    wire proxy180; // #1866 unknown(0)
    wire[31:0] and182;
    wire ne185;
    wire[31:0] sel188;
    wire and190;
    wire proxy191; // #1873 unknown(0)
    wire[31:0] proxy192; // #1874 pe.cpp(63)
    wire[31:0] proxy193; // #1875 pe.cpp(63)
    wire[31:0] fmult194;
    wire and196;
    wire proxy197; // #1877 unknown(0)
    wire[19:0] and200;
    wire[19:0] proxy201; // #1879 unknown(0)
    wire[4:0] proxy202; // #1880 unknown(0)
    wire[31:0] fadd203;
    wire proxy205; // #1882 pe.cpp(75)
    wire eq207;
    wire and209;
    wire inv211;
    wire and213;
    wire inv215;
    wire and217;
    wire[31:0] add220;
    wire[31:0] sel222;
    wire[31:0] sub224;
    wire inv226;
    wire and227;
    wire[31:0] sel228;
    wire inv229;
    wire and231;
    wire inv233;
    wire and235;
    wire ne237;
    wire and239;
    wire[31:0] inv241;
    wire[31:0] and243;
    wire[31:0] or245;
    wire and247;
    wire[31:0] sel248;
    wire[31:0] inv249;
    wire[31:0] and251;
    wire inv253;
    wire and254;
    wire[31:0] sel255;
    wire[31:0] or256;
    wire inv258;
    wire and259;
    wire[31:0] sel260;
    wire[19:0] and263;
    wire[19:0] sel265;
    wire eq267;
    wire inv268;
    wire and270;
    wire sel272;
    wire[19:0] and274;
    wire[19:0] proxy275; // #1912 unknown(0)
    wire[4:0] proxy276; // #1913 unknown(0)
    wire[4:0] sel277;
    wire[31:0] sel278;
    wire[31:0] or279;
    wire and281;
    wire[31:0] sel282;
    wire and283;
    wire and285;
    wire[31:0] sel286;
    wire[31:0] sel287;
    wire[1:0] sel289;
    wire eq291;
    wire[511:0] proxy293; // #1917 pe.cpp(125)
    wire[4:0] proxy295; // #1918 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy299; // #1921 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy303; // #1924 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy307; // #1927 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy311; // #1930 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy315; // #1933 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy319; // #1936 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy323; // #1939 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy327; // #1942 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy331; // #1945 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy335; // #1948 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy339; // #1951 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy343; // #1954 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy347; // #1957 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy351; // #1960 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy355; // #1963 /home/blaise/dev/cash/src/bit.h(282)
    wire inv358;
    wire and359;
    wire[1:0] sel361;
    wire[19:0] sll364;
    wire[19:0] srl368;
    wire[19:0] sel371;
    wire[511:0] sel373;
    wire sel375;
    wire and377;
    wire[1:0] sel378;
    wire[31:0] add380;
    wire inv382;
    wire and383;
    wire[31:0] proxy384;
    wire[31:0] sel385;
    wire eq387;
    wire[511:0] proxy389; // #1973 pe.cpp(144)
    wire[4:0] proxy391; // #1974 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy395; // #1977 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy399; // #1980 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy403; // #1983 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy407; // #1986 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy411; // #1989 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy415; // #1992 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy419; // #1995 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy423; // #1998 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy427; // #2001 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy431; // #2004 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy435; // #2007 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy439; // #2010 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy443; // #2013 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy447; // #2016 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy451; // #2019 /home/blaise/dev/cash/src/bit.h(282)
    wire or454;
    wire inv455;
    wire and456;
    wire[1:0] sel457;
    wire[19:0] sll459;
    wire[19:0] srl462;
    wire[19:0] add466;
    wire[19:0] sel468;
    wire[511:0] sel469;
    wire sel470;
    wire and472;
    wire[1:0] sel473;
    wire[31:0] add475;
    wire inv477;
    wire and478;
    wire[31:0] sel479;
    wire eq481;
    wire or482;
    wire or483;
    wire inv484;
    wire and485;
    wire[1:0] sel486;
    wire[19:0] srl489;
    wire[19:0] sll492;
    wire[19:0] srl495;
    wire[19:0] sel497;
    wire[479:0] proxy499; // #2037 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy501; // #2038 pe.cpp(165)
    wire[19:0] srl503;
    wire[19:0] and507;
    wire[19:0] sll510;
    wire[511:0] sll512;
    wire[511:0] sel514;
    wire sel515;
    wire and516;
    wire[1:0] sel517;
    wire[31:0] add519;
    wire inv521;
    wire and522;
    wire[31:0] proxy523;
    wire[31:0] sel524;

    assign io_req_data5 = io_req_data;
    assign io_req_data_a_rowind6 = io_req_data5[19:0];
    assign io_req_data_a_value7 = io_req_data5[51:20];
    assign io_req_data_x_value8 = io_req_data5[83:52];
    assign io_req_data_is_end9 = io_req_data5[84];
    assign io_req_ready12 = proxy48;
    assign io_lsu_wr_req_data18 = {sel514, sel497, sel486};
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
    always @(posedge clk) mem86[proxy117] = proxy139;
    always @ (posedge clk) reg93 <= reset ? 32'h0 : sel287;
    assign proxy95 = reg99;
    always @ (posedge clk) reg99 <= reset ? 32'h0 : sel286;
    always @ (posedge clk) reg105 <= reset ? 32'h0 : sel260;
    always @ (posedge clk) reg111 <= reset ? 32'h0 : sel228;
    assign proxy115 = proxy202;
    assign proxy117 = sel277;
    always @ (posedge clk) reg126 <= reset ? 20'h0 : sel265;
    assign proxy128 = reg137;
    assign proxy_write_value_stalls129 = proxy128[31:0];
    assign proxy_write_mask_stalls130 = proxy128[63:32];
    assign ch_pe_stats_t132 = {sel524, sel479};
    always @ (posedge clk) reg137 <= reset ? lit135 : ch_pe_stats_t132;
    assign proxy139 = sel140;
    assign sel140 = sel272 ? sel278 : mem86[proxy117];
    always @ (posedge clk) reg147 <= reset ? 2'b0 : sel517;
    assign sll150 = 32'h1 << proxy115;
    assign sll153 = 32'h1 << proxy117;
    assign inv155 = ~bindout77;
    assign eq158 = 2'b0 == reg147;
    assign or160 = eq158 | inv155;
    assign proxy161 = or160;
    assign inv162 = ~bindout52;
    assign and164 = reg105 & sll150;
    assign eq167 = 32'h0 == and164;
    assign and169 = proxy161 & eq167;
    assign or171 = and169 | inv162;
    assign proxy172 = or171;
    assign eq174 = 32'h0 == reg111;
    assign eq177 = reg147 == 2'b0;
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
    assign eq207 = 2'b0 == reg147;
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
    assign eq267 = reg147 == 2'b0;
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
    assign sel289 = and285 ? 2'b1 : reg147;
    assign eq291 = reg147 == 2'b1;
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
    assign inv358 = ~eq267;
    assign and359 = inv358 & eq291;
    assign sel361 = and359 ? 2'b0 : 2'b0;
    assign sll364 = reg126 << 20'h2;
    assign srl368 = sll364 >> 20'h6;
    assign sel371 = and359 ? srl368 : 20'h0;
    assign sel373 = and359 ? proxy293 : lit529;
    assign sel375 = and359 ? 1'b1 : 1'b0;
    assign and377 = and359 & io_lsu_wr_req_ready;
    assign sel378 = and377 ? 2'b10 : sel289;
    assign add380 = proxy_write_value_stalls129 + 32'h1;
    assign inv382 = ~io_lsu_wr_req_ready;
    assign and383 = and359 & inv382;
    assign proxy384 = proxy128[31:0];
    assign sel385 = and383 ? add380 : proxy384;
    assign eq387 = reg147 == 2'b10;
    assign proxy389 = {mem86[proxy451], mem86[proxy447], mem86[proxy443], mem86[proxy439], mem86[proxy435], mem86[proxy431], mem86[proxy427], mem86[proxy423], mem86[proxy419], mem86[proxy415], mem86[proxy411], mem86[proxy407], mem86[proxy403], mem86[proxy399], mem86[proxy395], mem86[proxy391]};
    assign proxy391 = 5'b10000;
    assign proxy395 = 5'b10001;
    assign proxy399 = 5'b10010;
    assign proxy403 = 5'b10011;
    assign proxy407 = 5'b10100;
    assign proxy411 = 5'b10101;
    assign proxy415 = 5'b10110;
    assign proxy419 = 5'b10111;
    assign proxy423 = 5'b11000;
    assign proxy427 = 5'b11001;
    assign proxy431 = 5'b11010;
    assign proxy435 = 5'b11011;
    assign proxy439 = 5'b11100;
    assign proxy443 = 5'b11101;
    assign proxy447 = 5'b11110;
    assign proxy451 = 5'b11111;
    assign or454 = eq291 | eq267;
    assign inv455 = ~or454;
    assign and456 = inv455 & eq387;
    assign sel457 = and456 ? 2'b0 : sel361;
    assign sll459 = reg126 << 20'h2;
    assign srl462 = sll459 >> 20'h6;
    assign add466 = srl462 + 20'h1;
    assign sel468 = and456 ? add466 : sel371;
    assign sel469 = and456 ? proxy389 : sel373;
    assign sel470 = and456 ? 1'b1 : sel375;
    assign and472 = and456 & io_lsu_wr_req_ready;
    assign sel473 = and472 ? 2'b11 : sel378;
    assign add475 = proxy_write_value_stalls129 + 32'h1;
    assign inv477 = ~io_lsu_wr_req_ready;
    assign and478 = and456 & inv477;
    assign sel479 = and478 ? add475 : sel385;
    assign eq481 = reg147 == 2'b11;
    assign or482 = eq387 | eq291;
    assign or483 = or482 | eq267;
    assign inv484 = ~or483;
    assign and485 = inv484 & eq481;
    assign sel486 = and485 ? 2'b1 : sel457;
    assign srl489 = reg126 >> 20'h5;
    assign sll492 = srl489 << 20'h2;
    assign srl495 = sll492 >> 20'h6;
    assign sel497 = and485 ? srl495 : sel468;
    assign proxy499 = lit498;
    assign proxy501 = {proxy499, proxy95};
    assign srl503 = reg126 >> 20'h5;
    assign and507 = srl503 & 20'hf;
    assign sll510 = and507 << 20'h5;
    assign sll512 = proxy501 << sll510;
    assign sel514 = and485 ? sll512 : sel469;
    assign sel515 = and485 ? 1'b1 : sel470;
    assign and516 = and485 & io_lsu_wr_req_ready;
    assign sel517 = and516 ? 2'b0 : sel473;
    assign add519 = proxy_write_mask_stalls130 + 32'h1;
    assign inv521 = ~io_lsu_wr_req_ready;
    assign and522 = and485 & inv521;
    assign proxy523 = proxy128[63:32];
    assign sel524 = and522 ? add519 : proxy523;

    assign io_req_ready = io_req_ready12;
    assign io_lsu_wr_req_valid = sel515;
    assign io_lsu_wr_req_data = io_lsu_wr_req_data18;
    assign io_stats = io_stats27;
    assign io_is_idle = io_is_idle32;

endmodule


module ch_hxbar(
    input wire[2:0] io_sel,
    input wire[71:0] io_in,
    output wire[23:0] io_out
);
    wire[2:0] io_sel2; // #2584 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[71:0] io_in5; // #2585 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy6; // #2586 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy7; // #2587 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy8; // #2588 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] io_out23; // #2601 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[2:0] proxy31; // #2607 /home/blaise/dev/cash/src/htl/xbar.h(20)
    wire eq40;
    wire[23:0] sel41;
    wire eq42;
    wire[23:0] sel43;
    wire eq44;
    wire[23:0] sel45;
    wire[23:0] proxy46; // #2612 unknown(0)

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
    wire[2:0] io_in2; // #2640 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy3; // #2641 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy4; // #2642 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy5; // #2643 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire[2:0] io_grant8; // #2644 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy22; // #2649 /home/blaise/dev/cash/src/seq.h(17)
    reg reg24; // #2648 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire proxy28; // #2652 /home/blaise/dev/cash/src/seq.h(17)
    reg reg30; // #2651 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire proxy46; // #2661 /home/blaise/dev/cash/src/seq.h(17)
    reg reg48; // #2660 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire[2:0] proxy68; // #2672 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy70; // #2673 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy72; // #2674 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy74; // #2675 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire and75;
    wire proxy76; // #2676 unknown(0)
    wire and78;
    wire proxy79; // #2678 unknown(0)
    wire orr82;
    wire inv84;
    wire and86;
    wire proxy87; // #2683 unknown(0)
    wire proxy89; // #2685 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire inv90;
    wire proxy92; // #2687 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire or93;
    wire and95;
    wire proxy96; // #2689 unknown(0)
    wire proxy97; // #2690 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire inv98;
    wire proxy100; // #2692 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire or101;
    wire and103;
    wire proxy104; // #2694 unknown(0)
    wire and105;
    wire proxy106; // #2695 unknown(0)
    wire inv109;
    wire and111;
    wire proxy112; // #2699 unknown(0)
    wire orr114;
    wire inv116;
    wire and118;
    wire proxy119; // #2703 unknown(0)
    wire proxy121; // #2705 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire inv122;
    wire proxy124; // #2707 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire or125;
    wire and127;
    wire proxy128; // #2709 unknown(0)
    wire inv130;
    wire and132;
    wire proxy133; // #2712 unknown(0)
    wire inv135;
    wire and137;
    wire proxy138; // #2715 unknown(0)
    wire orr140;
    wire inv142;
    wire and144;
    wire proxy145; // #2719 unknown(0)

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
    wire io_in_0_valid2; // #2563 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_0_data5; // #2564 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_0_ready10; // #2567 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_valid13; // #2568 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_1_data16; // #2569 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_ready21; // #2572 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_valid24; // #2573 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_2_data27; // #2574 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_ready32; // #2577 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_out_valid35; // #2578 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_out_data38; // #2579 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] io_out_grant46; // #2583 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] proxy49; // #2617 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindin51;
    wire[71:0] proxy53; // #2618 /home/blaise/dev/cash/src/module.h(33)
    wire[71:0] bindin69;
    wire[23:0] proxy71; // #2634 /home/blaise/dev/cash/src/module.h(33)
    wire[23:0] proxy72; // #2635 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_valid73; // #2636 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] proxy_data74; // #2637 /home/blaise/dev/cash/src/module.h(33)
    wire[23:0] bindout77;
    wire[2:0] proxy79; // #2721 /home/blaise/dev/cash/src/module.h(33)
    wire bindin85;
    wire bindin87;
    wire[2:0] bindin88;
    wire[2:0] proxy90; // #2725 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout91;
    wire eq111;
    wire and113;
    wire proxy114; // #2737 unknown(0)
    wire eq117;
    wire and119;
    wire proxy120; // #2740 unknown(0)
    wire eq123;
    wire and125;
    wire proxy126; // #2743 unknown(0)

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
    wire[2:0] io_sel2; // #2790 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[1604:0] io_in5; // #2791 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy6; // #2792 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy7; // #2793 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy8; // #2794 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] io_out26; // #2810 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[2:0] proxy35; // #2817 /home/blaise/dev/cash/src/htl/xbar.h(20)
    wire eq44;
    wire[534:0] sel45;
    wire eq46;
    wire[534:0] sel47;
    wire eq48;
    wire[534:0] sel49;
    wire[534:0] proxy50; // #2822 unknown(0)

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
    wire io_in_0_valid2; // #2765 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_0_data5; // #2766 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_0_ready11; // #2770 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_valid14; // #2771 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_1_data17; // #2772 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_ready23; // #2776 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_valid26; // #2777 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_2_data29; // #2778 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_ready35; // #2782 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_out_valid38; // #2783 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_out_data41; // #2784 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] io_out_grant50; // #2789 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] proxy53; // #2828 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindin55;
    wire[1604:0] proxy57; // #2829 /home/blaise/dev/cash/src/module.h(33)
    wire[1604:0] bindin76;
    wire[534:0] proxy78; // #2848 /home/blaise/dev/cash/src/module.h(33)
    wire[534:0] proxy79; // #2849 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_valid80; // #2850 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] proxy_data81; // #2851 /home/blaise/dev/cash/src/module.h(33)
    wire[534:0] bindout85;
    wire[2:0] proxy87; // #2936 /home/blaise/dev/cash/src/module.h(33)
    wire bindin93;
    wire bindin95;
    wire[2:0] bindin96;
    wire[2:0] proxy98; // #2940 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout99;
    wire eq119;
    wire and121;
    wire proxy122; // #2952 unknown(0)
    wire eq125;
    wire and127;
    wire proxy128; // #2955 unknown(0)
    wire eq131;
    wire and133;
    wire proxy134; // #2958 unknown(0)

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
    reg reg11; // #2984 wrcache.h(58)
    reg[19:0] reg18; // #2987 wrcache.h(58)
    wire proxy20; // #2990 wrcache.h(58)
    wire proxy22; // #2991 wrcache.h(58)
    reg reg38; // #2998 wrcache.h(58)
    wire io_enq_valid40; // #3001 wrcache.h(58)
    wire[533:0] io_enq_data43; // #3002 wrcache.h(58)
    wire[1:0] io_enq_data_owner44; // #3003 wrcache.h(58)
    wire[19:0] io_enq_data_tag45; // #3004 wrcache.h(58)
    wire[511:0] io_enq_data_data46; // #3005 wrcache.h(58)
    wire io_enq_ready49; // #3006 wrcache.h(58)
    wire[533:0] io_evict_data55; // #3008 wrcache.h(58)
    wire[511:0] proxy67;
    wire[511:0] sel68;
    wire[21:0] proxy72;
    wire[21:0] sel73;
    reg[2:0] reg80; // #3018 wrcache.h(72)
    wire[533:0] proxy82; // #3021 wrcache.h(73)
    wire[1:0] proxy_owner83; // #3022 wrcache.h(73)
    wire[19:0] proxy_tag84; // #3023 wrcache.h(73)
    wire[511:0] proxy_data85; // #3024 wrcache.h(73)
    reg[533:0] reg93; // #3021 wrcache.h(73)
    wire proxy94; // #3030 wrcache.h(76)
    wire proxy95; // #3031 wrcache.h(77)
    wire proxy97; // #3032 wrcache.h(78)
    wire proxy98; // #3033 wrcache.h(79)
    wire[533:0] entry_t99; // #3034 wrcache.h(84)
    wire[1:0] entry_t_owner100; // #3035 wrcache.h(84)
    wire[19:0] entry_t_tag101; // #3036 wrcache.h(84)
    wire proxy104; // #3039 /home/blaise/dev/cash/src/bit.h(282)
    wire[1:0] memport_owners106; // #3041 unknown(0)
    wire ne110;
    wire proxy112; // #3045 /home/blaise/dev/cash/src/bit.h(282)
    wire[19:0] memport_tag115; // #3048 unknown(0)
    wire eq116;
    wire and118;
    wire sel121;
    wire proxy122; // #3052 unknown(0)
    wire proxy124; // #3054 /home/blaise/dev/cash/src/bit.h(282)
    wire[1:0] memport_owners126; // #3056 unknown(0)
    wire[1:0] and128;
    wire ne131;
    wire sel134;
    wire proxy135; // #3062 unknown(0)
    wire proxy137; // #3064 /home/blaise/dev/cash/src/bit.h(282)
    wire[1:0] memport_owners139; // #3066 unknown(0)
    wire eq142;
    wire sel145;
    wire proxy146; // #3071 unknown(0)
    wire proxy147; // #3072 wrcache.h(97)
    reg reg149;
    wire proxy150; // #3074 unknown(0)
    wire proxy151; // #3075 wrcache.h(98)
    reg reg153;
    wire proxy154; // #3077 unknown(0)
    wire proxy155; // #3078 wrcache.h(99)
    reg reg157;
    wire proxy158; // #3080 unknown(0)
    wire proxy159; // #3081 wrcache.h(100)
    reg reg161;
    wire proxy162; // #3083 unknown(0)
    wire eq164;
    wire proxy165; // #3085 unknown(0)
    reg reg171; // #3086 wrcache.h(106)
    wire eq173;
    wire and174;
    wire sel175;
    wire[1:0] memport_owners176; // #3091 unknown(0)
    wire[1:0] and178;
    wire ne181;
    wire eq183;
    wire and185;
    wire and187;
    wire sel188;
    wire sel189;
    wire[511:0] or190;
    wire[511:0] sel192;
    wire[1:0] memport_owners193; // #3101 unknown(0)
    wire[1:0] or195;
    wire[1:0] proxy196; // #3103 unknown(0)
    wire[19:0] memport_tag198; // #3106 unknown(0)
    wire[21:0] tag_t200; // #3107 wrcache.h(119)
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
    wire[19:0] memport_tag223; // #3113 unknown(0)
    wire eq224;
    wire[1:0] memport_owners226; // #3116 unknown(0)
    wire ne229;
    wire and231;
    wire and233;
    wire sel234;
    wire sel235;
    wire sel236;
    wire[511:0] or237;
    wire[511:0] sel239;
    wire[1:0] memport_owners240; // #3124 unknown(0)
    wire[1:0] or242;
    wire[1:0] proxy243; // #3126 unknown(0)
    wire[19:0] memport_tag245; // #3129 unknown(0)
    wire[21:0] tag_t247; // #3130 wrcache.h(143)
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
    wire[21:0] tag_t269; // #3134 wrcache.h(163)
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
    wire[1:0] memport_owners289; // #3140 unknown(0)
    wire eq291;
    wire and293;
    wire sel294;
    wire[19:0] memport_tag296; // #3145 unknown(0)
    wire[21:0] tag_t298; // #3146 wrcache.h(186)
    wire[1:0] proxy301; // #3149 wrcache.h(29)
    wire[21:0] sel302;
    wire[2:0] sel304;
    wire[1:0] memport_owners305; // #3151 unknown(0)
    wire[1:0] and307;
    wire ne310;
    wire inv312;
    wire and313;
    wire and314;
    wire sel315;
    wire[1:0] inv316;
    wire[1:0] memport_owners318; // #3158 unknown(0)
    wire[1:0] and320;
    wire[1:0] proxy321; // #3160 unknown(0)
    wire[19:0] memport_tag323; // #3163 unknown(0)
    wire[21:0] tag_t325; // #3164 wrcache.h(194)
    wire[21:0] sel328;
    wire[2:0] sel329;
    wire eq331;
    wire or332;
    wire or333;
    wire inv334;
    wire and335;
    wire sel336;
    wire[1:0] sel338;
    wire[19:0] memport_tag340; // #3170 unknown(0)
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
    wire[1:0] memport_owners356; // #3174 unknown(0)
    wire ne359;
    wire and361;
    wire[1:0] sel362;
    wire[19:0] memport_tag364; // #3180 unknown(0)
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
    assign io_enq_data_owner44 = io_enq_data43[1:0];
    assign io_enq_data_tag45 = io_enq_data43[21:2];
    assign io_enq_data_data46 = io_enq_data43[533:22];
    assign io_enq_ready49 = proxy165;
    assign io_evict_data55 = {sel366, sel365, sel362};
    assign proxy67 = sel68;
    assign sel68 = sel264 ? sel267 : mem3[proxy20];
    assign proxy72 = sel73;
    assign sel73 = sel315 ? sel328 : mem1[proxy20];
    always @ (posedge clk) reg80 <= reset ? 3'b0 : sel388;
    assign proxy82 = reg93;
    assign proxy_owner83 = proxy82[1:0];
    assign proxy_tag84 = proxy82[21:2];
    assign proxy_data85 = proxy82[533:22];
    always @ (posedge clk) reg93 <= reset ? lit91 : sel206;
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
    assign sel258 = and255 ? 3'b10 : sel214;
    assign inv259 = ~ne253;
    assign and260 = and233 & inv259;
    assign sel261 = and260 ? 3'b0 : sel258;
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
    assign sel279 = and277 ? 3'b10 : sel261;
    assign inv280 = ~ne275;
    assign and281 = and263 & inv280;
    assign sel282 = and281 ? 3'b0 : sel279;
    assign eq284 = reg80 == 3'b10;
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
    assign sel304 = and293 ? 3'b11 : sel282;
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
    assign sel329 = and313 ? 3'b0 : sel304;
    assign eq331 = reg80 == 3'b11;
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
    assign sel347 = and346 ? 3'b0 : sel329;
    assign eq349 = reg80 == 3'b100;
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
    wire[533:0] lit420 = 534'b0;
    wire[511:0] lit464 = 512'h0;
    wire[19:0] io_qpi_rd_req_addr5; // #2486 lsu.cpp(19)
    wire[13:0] io_qpi_rd_req_mdata8; // #2487 lsu.cpp(19)
    wire io_qpi_rd_req_valid11; // #2488 lsu.cpp(19)
    wire[13:0] io_qpi_rd_rsp_mdata14; // #2489 lsu.cpp(19)
    wire[511:0] io_qpi_rd_rsp_data17; // #2490 lsu.cpp(19)
    wire[19:0] io_qpi_wr_req_addr26; // #2493 lsu.cpp(19)
    wire[13:0] io_qpi_wr_req_mdata29; // #2494 lsu.cpp(19)
    wire[511:0] io_qpi_wr_req_data32; // #2495 lsu.cpp(19)
    wire io_qpi_wr_req_valid35; // #2496 lsu.cpp(19)
    wire[511:0] io_ctx50; // #2501 lsu.cpp(19)
    wire[131:0] io_ctx_a51; // #2502 lsu.cpp(19)
    wire[19:0] io_ctx_a_col_ptr53; // #2504 lsu.cpp(19)
    wire[19:0] io_ctx_a_col_ind54; // #2505 lsu.cpp(19)
    wire[19:0] io_ctx_a_row_ptr55; // #2506 lsu.cpp(19)
    wire[19:0] io_ctx_a_row_ind56; // #2507 lsu.cpp(19)
    wire[19:0] io_ctx_a_values57; // #2508 lsu.cpp(19)
    wire[39:0] io_ctx_x58; // #2509 lsu.cpp(19)
    wire[19:0] io_ctx_x_values59; // #2510 lsu.cpp(19)
    wire[19:0] io_ctx_x_masks60; // #2511 lsu.cpp(19)
    wire[39:0] io_ctx_y61; // #2512 lsu.cpp(19)
    wire[19:0] io_ctx_y_values62; // #2513 lsu.cpp(19)
    wire[19:0] io_ctx_y_masks63; // #2514 lsu.cpp(19)
    wire[19:0] io_ctx_stats64; // #2515 lsu.cpp(19)
    wire io_ctrl_rd_req_valid68; // #2517 lsu.cpp(19)
    wire[22:0] io_ctrl_rd_req_data71; // #2518 lsu.cpp(19)
    wire io_ctrl_rd_req_ready76; // #2521 lsu.cpp(19)
    wire io_ctrl_wr_req_valid79; // #2522 lsu.cpp(19)
    wire[533:0] io_ctrl_wr_req_data82; // #2523 lsu.cpp(19)
    wire io_ctrl_wr_req_ready88; // #2527 lsu.cpp(19)
    wire io_ctrl_rd_rsp_valid91; // #2528 lsu.cpp(19)
    wire[514:0] io_ctrl_rd_rsp_data94; // #2529 lsu.cpp(19)
    wire[31:0] io_ctrl_outstanding_writes99; // #2532 lsu.cpp(19)
    wire io_walkers_0_rd_req_valid102; // #2533 lsu.cpp(19)
    wire[22:0] io_walkers_0_rd_req_data105; // #2534 lsu.cpp(19)
    wire io_walkers_0_rd_req_ready110; // #2537 lsu.cpp(19)
    wire io_walkers_0_rd_rsp_valid113; // #2538 lsu.cpp(19)
    wire[514:0] io_walkers_0_rd_rsp_data116; // #2539 lsu.cpp(19)
    wire io_walkers_1_rd_req_valid121; // #2542 lsu.cpp(19)
    wire[22:0] io_walkers_1_rd_req_data124; // #2543 lsu.cpp(19)
    wire io_walkers_1_rd_req_ready129; // #2546 lsu.cpp(19)
    wire io_walkers_1_rd_rsp_valid132; // #2547 lsu.cpp(19)
    wire[514:0] io_walkers_1_rd_rsp_data135; // #2548 lsu.cpp(19)
    wire io_PEs_0_wr_req_valid140; // #2551 lsu.cpp(19)
    wire[533:0] io_PEs_0_wr_req_data143; // #2552 lsu.cpp(19)
    wire io_PEs_0_wr_req_ready149; // #2556 lsu.cpp(19)
    wire io_PEs_1_wr_req_valid152; // #2557 lsu.cpp(19)
    wire[533:0] io_PEs_1_wr_req_data155; // #2558 lsu.cpp(19)
    wire io_PEs_1_wr_req_ready161; // #2562 lsu.cpp(19)
    wire proxy164; // #2744 /home/blaise/dev/cash/src/module.h(33)
    wire bindin167;
    wire bindin169;
    wire bindin170;
    wire[22:0] proxy172; // #2745 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin175;
    wire proxy177; // #2748 /home/blaise/dev/cash/src/module.h(33)
    wire bindout178;
    wire proxy180; // #2749 /home/blaise/dev/cash/src/module.h(33)
    wire bindin181;
    wire[22:0] proxy183; // #2750 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin186;
    wire proxy188; // #2753 /home/blaise/dev/cash/src/module.h(33)
    wire bindout189;
    wire proxy191; // #2754 /home/blaise/dev/cash/src/module.h(33)
    wire bindin192;
    wire[22:0] proxy194; // #2755 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin197;
    wire proxy199; // #2758 /home/blaise/dev/cash/src/module.h(33)
    wire bindout200;
    wire proxy202; // #2759 /home/blaise/dev/cash/src/module.h(33)
    wire bindout203;
    wire[22:0] proxy205; // #2760 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy_type206; // #2761 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_addr207; // #2762 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout208;
    wire proxy210; // #2763 /home/blaise/dev/cash/src/module.h(33)
    wire bindin211;
    wire[2:0] proxy213; // #2764 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout214;
    wire proxy216; // #2959 /home/blaise/dev/cash/src/module.h(33)
    wire bindin218;
    wire bindin219;
    wire bindin220;
    wire[533:0] proxy222; // #2960 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin226;
    wire proxy228; // #2964 /home/blaise/dev/cash/src/module.h(33)
    wire bindout229;
    wire proxy231; // #2965 /home/blaise/dev/cash/src/module.h(33)
    wire bindin232;
    wire[533:0] proxy234; // #2966 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin238;
    wire proxy240; // #2970 /home/blaise/dev/cash/src/module.h(33)
    wire bindout241;
    wire proxy243; // #2971 /home/blaise/dev/cash/src/module.h(33)
    wire bindin244;
    wire[533:0] proxy246; // #2972 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin250;
    wire proxy252; // #2976 /home/blaise/dev/cash/src/module.h(33)
    wire bindout253;
    wire bindout256;
    wire[533:0] proxy258; // #2978 /home/blaise/dev/cash/src/module.h(33)
    wire[1:0] proxy_type259; // #2979 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_addr260; // #2980 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] proxy_data261; // #2981 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout262;
    wire proxy264; // #2982 /home/blaise/dev/cash/src/module.h(33)
    wire bindin265;
    wire[2:0] bindout268;
    wire bindin272;
    wire bindin273;
    wire bindin274;
    wire[533:0] proxy276; // #3191 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin280;
    wire bindout283;
    wire bindout286;
    wire[533:0] proxy288; // #3197 /home/blaise/dev/cash/src/module.h(33)
    wire[1:0] proxy_owner289; // #3198 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_tag290; // #3199 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] proxy_data291; // #3200 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout292;
    wire proxy294; // #3201 /home/blaise/dev/cash/src/module.h(33)
    wire bindin295;
    wire bindin298;
    wire inv299;
    wire proxy300; // #3203 unknown(0)
    wire proxy302; // #3204 lsu.cpp(47)
    wire proxy304; // #3205 /home/blaise/dev/cash/src/seq.h(17)
    reg reg307; // #3204 lsu.cpp(47)
    wire[19:0] proxy309; // #3207 lsu.cpp(48)
    wire[19:0] proxy311; // #3208 /home/blaise/dev/cash/src/seq.h(17)
    reg[19:0] reg314; // #3207 lsu.cpp(48)
    wire[13:0] proxy316; // #3210 lsu.cpp(49)
    wire[13:0] proxy318; // #3211 /home/blaise/dev/cash/src/seq.h(17)
    reg[13:0] reg321; // #3210 lsu.cpp(49)
    wire[2:0] proxy322; // #3213 lsu.cpp(53)
    wire eq327;
    wire[19:0] sel328;
    wire eq331;
    wire inv332;
    wire and333;
    wire[19:0] sel334;
    wire eq337;
    wire or338;
    wire inv339;
    wire and340;
    wire[19:0] sel341;
    wire eq344;
    wire or345;
    wire or346;
    wire inv347;
    wire and348;
    wire[19:0] sel349;
    wire eq352;
    wire or353;
    wire or354;
    wire or355;
    wire inv356;
    wire and357;
    wire[19:0] sel358;
    wire eq361;
    wire or362;
    wire or363;
    wire or364;
    wire or365;
    wire inv366;
    wire and367;
    wire[19:0] sel368;
    wire[19:0] add375;
    wire[19:0] proxy376; // #3221 unknown(0)
    wire[5:0] ch_rd_mdata_t378; // #3222 lsu.cpp(55)
    wire[2:0] proxy381; // #3225 lsu.h(39)
    wire[7:0] proxy383; // #3226 /home/blaise/dev/cash/src/bit.h(1020)
    wire[13:0] proxy385; // #3227 lsu.cpp(55)
    reg[2:0] reg391; // #3228 lsu.cpp(70)
    reg reg397; // #3231 lsu.cpp(71)
    wire eq401;
    wire eq404;
    wire proxy405; // #3238 unknown(0)
    wire inv406;
    wire and408;
    wire proxy409; // #3240 unknown(0)
    wire[533:0] proxy411; // #3241 lsu.cpp(81)
    wire[1:0] proxy_type412; // #3242 lsu.cpp(81)
    wire[19:0] proxy_addr413; // #3243 lsu.cpp(81)
    wire[511:0] proxy_data414; // #3244 lsu.cpp(81)
    wire[533:0] ch_lsu_wr_req_t416; // #3245 /home/blaise/dev/cash/src/seq.h(17)
    reg[533:0] reg422; // #3241 lsu.cpp(81)
    wire[2:0] proxy424; // #3250 lsu.cpp(82)
    reg[2:0] reg428; // #3250 lsu.cpp(82)
    wire and429;
    wire or433;
    wire[31:0] sel439;
    wire[31:0] sel440;
    wire[31:0] proxy443; // #3259 lsu.cpp(89)
    reg[31:0] reg447; // #3259 lsu.cpp(89)
    wire proxy449; // #3262 lsu.cpp(91)
    reg reg453; // #3262 lsu.cpp(91)
    wire[19:0] proxy455; // #3265 lsu.cpp(92)
    reg[19:0] reg459; // #3265 lsu.cpp(92)
    wire[511:0] proxy461; // #3268 lsu.cpp(93)
    reg[511:0] reg466; // #3268 lsu.cpp(93)
    wire[13:0] proxy468; // #3271 lsu.cpp(94)
    reg[13:0] reg472; // #3271 lsu.cpp(94)
    wire eq474;
    wire[4:0] ch_wr_mdata_t476; // #3275 lsu.cpp(100)
    wire[1:0] proxy479; // #3278 lsu.cpp(101)
    wire eq484;
    wire[19:0] sel485;
    wire eq488;
    wire inv489;
    wire and490;
    wire[19:0] sel491;
    wire[19:0] add494;
    wire and496;
    wire[19:0] sel497;
    wire[511:0] sel498;
    wire[8:0] proxy500; // #3283 /home/blaise/dev/cash/src/bit.h(1020)
    wire[13:0] proxy502; // #3284 lsu.cpp(103)
    wire[13:0] sel503;
    wire sel505;
    wire proxy506; // #3285 /home/blaise/dev/cash/src/bit.h(1020)
    wire[2:0] proxy508; // #3286 lsu.cpp(109)
    wire[4:0] ch_wr_mdata_t510; // #3287 lsu.cpp(110)
    wire[1:0] proxy513; // #3290 lsu.h(44)
    wire eq518;
    wire[19:0] sel519;
    wire eq521;
    wire inv522;
    wire and523;
    wire[19:0] sel524;
    wire[19:0] add527;
    wire inv529;
    wire and530;
    wire and531;
    wire[19:0] sel532;
    wire[511:0] sel533;
    wire[8:0] proxy534; // #3296 /home/blaise/dev/cash/src/bit.h(1020)
    wire[13:0] proxy536; // #3297 lsu.cpp(113)
    wire[13:0] sel537;
    wire sel538;
    wire eq540;
    wire inv541;
    wire inv543;
    wire and544;
    wire and545;
    wire sel546;
    wire[31:0] add548;
    wire[31:0] sub550;
    wire[31:0] sel552;
    wire sel553;
    wire[31:0] sub556;
    wire eq559;
    wire and560;
    wire[19:0] proxy561;
    wire[19:0] sel562;
    wire[1:0] proxy563;
    wire[1:0] sel564;
    wire[511:0] proxy565;
    wire[511:0] sel566;
    wire[2:0] sel567;
    wire eq569;
    wire eq572;
    wire and574;
    wire and575;
    wire[2:0] sel576;
    wire inv577;
    wire and578;
    wire[2:0] sel579;
    wire inv580;
    wire and581;
    wire[2:0] sel582;
    wire eq584;
    wire inv585;
    wire and586;
    wire sel587;
    wire and588;
    wire[2:0] sel589;
    wire eq591;
    wire[1:0] proxy593; // #3311 lsu.cpp(173)
    wire or594;
    wire inv595;
    wire and596;
    wire[1:0] sel598;
    wire[19:0] sel600;
    wire[511:0] sel602;
    wire sel603;
    wire and604;
    wire[2:0] sel605;
    wire eq607;
    wire or608;
    wire or609;
    wire inv610;
    wire and611;
    wire sel612;
    wire and613;
    wire[2:0] sel614;
    wire eq616;
    wire or617;
    wire or618;
    wire or619;
    wire inv620;
    wire and621;
    wire and622;
    wire[2:0] sel623;
    wire[5:0] proxy629; // #3314 lsu.cpp(19)
    wire[2:0] proxy_type630; // #3315 lsu.cpp(19)
    wire[2:0] proxy_owner631; // #3316 lsu.cpp(19)
    wire eq633;
    wire and635;
    wire proxy636; // #3319 unknown(0)
    wire eq638;
    wire and640;
    wire proxy641; // #3322 unknown(0)
    wire eq643;
    wire and645;
    wire proxy646; // #3325 unknown(0)

    assign io_qpi_rd_req_addr5 = proxy309;
    assign io_qpi_rd_req_mdata8 = proxy316;
    assign io_qpi_rd_req_valid11 = proxy302;
    assign io_qpi_rd_rsp_mdata14 = io_qpi_rd_rsp_mdata;
    assign io_qpi_rd_rsp_data17 = io_qpi_rd_rsp_data;
    assign io_qpi_wr_req_addr26 = proxy455;
    assign io_qpi_wr_req_mdata29 = proxy468;
    assign io_qpi_wr_req_data32 = proxy461;
    assign io_qpi_wr_req_valid35 = proxy449;
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
    assign io_ctrl_rd_rsp_valid91 = proxy636;
    assign io_ctrl_rd_rsp_data94 = {io_qpi_rd_rsp_data17, proxy_type630};
    assign io_ctrl_outstanding_writes99 = proxy443;
    assign io_walkers_0_rd_req_valid102 = io_walkers_0_rd_req_valid;
    assign io_walkers_0_rd_req_data105 = io_walkers_0_rd_req_data;
    assign io_walkers_0_rd_req_ready110 = proxy177;
    assign io_walkers_0_rd_rsp_valid113 = proxy641;
    assign io_walkers_0_rd_rsp_data116 = {io_qpi_rd_rsp_data17, proxy_type630};
    assign io_walkers_1_rd_req_valid121 = io_walkers_1_rd_req_valid;
    assign io_walkers_1_rd_req_data124 = io_walkers_1_rd_req_data;
    assign io_walkers_1_rd_req_ready129 = proxy188;
    assign io_walkers_1_rd_rsp_valid132 = proxy646;
    assign io_walkers_1_rd_rsp_data135 = {io_qpi_rd_rsp_data17, proxy_type630};
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
    assign proxy264 = proxy405;
    assign bindin265 = proxy264;
    assign bindin272 = clk;
    assign bindin273 = reset;
    spmv_write_cache __module28__(.clk(bindin272), .reset(bindin273), .io_enq_valid(bindin274), .io_enq_data(bindin280), .io_evict_ready(bindin295), .io_flush(bindin298), .io_enq_ready(bindout283), .io_evict_valid(bindout286), .io_evict_data(bindout292));
    assign bindin274 = sel603;
    assign proxy276 = {sel602, sel600, sel598};
    assign bindin280 = proxy276;
    assign proxy288 = bindout292;
    assign proxy_owner289 = proxy288[1:0];
    assign proxy_tag290 = proxy288[21:2];
    assign proxy_data291 = proxy288[533:22];
    assign proxy294 = proxy409;
    assign bindin295 = proxy294;
    assign bindin298 = sel612;
    assign inv299 = ~io_qpi_rd_req_almostfull;
    assign proxy300 = inv299;
    assign proxy302 = reg307;
    assign proxy304 = proxy202;
    always @ (posedge clk) reg307 <= reset ? 1'b0 : proxy304;
    assign proxy309 = reg314;
    assign proxy311 = proxy376;
    always @ (posedge clk) reg314 <= reset ? 20'h0 : proxy311;
    assign proxy316 = reg321;
    assign proxy318 = proxy385;
    always @ (posedge clk) reg321 <= reset ? 14'b0 : proxy318;
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
    always @ (posedge clk) reg391 <= reset ? 3'b0 : sel623;
    always @ (posedge clk) reg397 <= reset ? 1'b0 : sel553;
    assign eq401 = reg397 == 1'b0;
    assign eq404 = reg391 == 3'b0;
    assign proxy405 = eq404;
    assign inv406 = ~sel587;
    assign and408 = eq401 & inv406;
    assign proxy409 = and408;
    assign proxy411 = reg422;
    assign proxy_type412 = proxy411[1:0];
    assign proxy_addr413 = proxy411[21:2];
    assign proxy_data414 = proxy411[533:22];
    assign ch_lsu_wr_req_t416 = {sel566, sel562, sel564};
    always @ (posedge clk) reg422 <= reset ? lit420 : ch_lsu_wr_req_t416;
    assign proxy424 = reg428;
    always @ (posedge clk) reg428 <= reset ? 3'b0 : sel567;
    assign and429 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
    assign or433 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
    assign sel439 = or433 ? 32'h1 : 32'h0;
    assign sel440 = and429 ? 32'h2 : sel439;
    assign proxy443 = reg447;
    always @ (posedge clk) reg447 <= reset ? 32'h0 : sel552;
    assign proxy449 = reg453;
    always @ (posedge clk) reg453 <= reset ? 1'b0 : sel546;
    assign proxy455 = reg459;
    always @ (posedge clk) reg459 <= reset ? 20'h0 : sel532;
    assign proxy461 = reg466;
    always @ (posedge clk) reg466 <= reset ? lit464 : sel533;
    assign proxy468 = reg472;
    always @ (posedge clk) reg472 <= reset ? 14'b0 : sel537;
    assign eq474 = reg397 == 1'b0;
    assign ch_wr_mdata_t476 = {proxy424, proxy_type412};
    assign proxy479 = proxy_type412;
    assign eq484 = proxy479 == 2'b0;
    assign sel485 = eq484 ? io_ctx_y_values62 : io_ctx_stats64;
    assign eq488 = proxy479 == 2'b1;
    assign inv489 = ~eq484;
    assign and490 = inv489 & eq488;
    assign sel491 = and490 ? io_ctx_y_masks63 : sel485;
    assign add494 = sel491 + proxy_addr413;
    assign and496 = eq474 & sel587;
    assign sel497 = and496 ? add494 : proxy455;
    assign sel498 = and496 ? proxy_data414 : proxy461;
    assign proxy500 = 9'b0;
    assign proxy502 = {proxy500, ch_wr_mdata_t476};
    assign sel503 = and496 ? proxy502 : proxy468;
    assign sel505 = and496 ? 1'b1 : reg397;
    assign proxy506 = 1'b0;
    assign proxy508 = {proxy506, proxy_owner289};
    assign ch_wr_mdata_t510 = {proxy508, proxy513};
    assign proxy513 = 2'b1;
    assign eq518 = 2'b1 == 2'b0;
    assign sel519 = eq518 ? io_ctx_y_values62 : io_ctx_stats64;
    assign eq521 = 2'b1 == 2'b1;
    assign inv522 = ~eq518;
    assign and523 = inv522 & eq521;
    assign sel524 = and523 ? io_ctx_y_masks63 : sel519;
    assign add527 = sel524 + proxy_tag290;
    assign inv529 = ~sel587;
    assign and530 = eq474 & inv529;
    assign and531 = and530 & bindout286;
    assign sel532 = and531 ? add527 : sel497;
    assign sel533 = and531 ? proxy_data291 : sel498;
    assign proxy534 = 9'b0;
    assign proxy536 = {proxy534, ch_wr_mdata_t510};
    assign sel537 = and531 ? proxy536 : sel503;
    assign sel538 = and531 ? 1'b1 : sel505;
    assign eq540 = reg397 == 1'b1;
    assign inv541 = ~io_qpi_wr_req_almostfull;
    assign inv543 = ~eq474;
    assign and544 = inv543 & eq540;
    assign and545 = and544 & inv541;
    assign sel546 = and545 ? 1'b1 : 1'b0;
    assign add548 = proxy443 + 32'h1;
    assign sub550 = add548 - sel440;
    assign sel552 = and545 ? sub550 : sub556;
    assign sel553 = and545 ? 1'b0 : sel538;
    assign sub556 = proxy443 - sel440;
    assign eq559 = reg391 == 3'b0;
    assign and560 = eq559 & bindout256;
    assign proxy561 = proxy411[21:2];
    assign sel562 = and560 ? proxy_addr260 : proxy561;
    assign proxy563 = proxy411[1:0];
    assign sel564 = and560 ? proxy_type259 : proxy563;
    assign proxy565 = proxy411[533:22];
    assign sel566 = and560 ? proxy_data261 : proxy565;
    assign sel567 = and560 ? bindout268 : proxy424;
    assign eq569 = proxy_type259 == 2'b1;
    assign eq572 = bindout268 == 3'b100;
    assign and574 = and560 & eq569;
    assign and575 = and574 & eq572;
    assign sel576 = and575 ? 3'b11 : reg391;
    assign inv577 = ~eq572;
    assign and578 = and574 & inv577;
    assign sel579 = and578 ? 3'b10 : sel576;
    assign inv580 = ~eq569;
    assign and581 = and560 & inv580;
    assign sel582 = and581 ? 3'b1 : sel579;
    assign eq584 = reg391 == 3'b1;
    assign inv585 = ~eq559;
    assign and586 = inv585 & eq584;
    assign sel587 = and586 ? 1'b1 : 1'b0;
    assign and588 = and586 & eq401;
    assign sel589 = and588 ? 3'b0 : sel582;
    assign eq591 = reg391 == 3'b10;
    assign proxy593 = proxy424[1:0];
    assign or594 = eq584 | eq559;
    assign inv595 = ~or594;
    assign and596 = inv595 & eq591;
    assign sel598 = and596 ? proxy593 : 2'b0;
    assign sel600 = and596 ? proxy_addr413 : 20'h0;
    assign sel602 = and596 ? proxy_data414 : lit464;
    assign sel603 = and596 ? 1'b1 : 1'b0;
    assign and604 = and596 & bindout283;
    assign sel605 = and604 ? 3'b0 : sel589;
    assign eq607 = reg391 == 3'b11;
    assign or608 = eq591 | eq584;
    assign or609 = or608 | eq559;
    assign inv610 = ~or609;
    assign and611 = inv610 & eq607;
    assign sel612 = and611 ? 1'b1 : 1'b0;
    assign and613 = and611 & bindout283;
    assign sel614 = and613 ? 3'b100 : sel605;
    assign eq616 = reg391 == 3'b100;
    assign or617 = eq607 | eq591;
    assign or618 = or617 | eq584;
    assign or619 = or618 | eq559;
    assign inv620 = ~or619;
    assign and621 = inv620 & eq616;
    assign and622 = and621 & bindout283;
    assign sel623 = and622 ? 3'b0 : sel614;
    assign proxy629 = io_qpi_rd_rsp_mdata14[5:0];
    assign proxy_type630 = proxy629[2:0];
    assign proxy_owner631 = proxy629[5:3];
    assign eq633 = proxy_owner631 == 3'b100;
    assign and635 = io_qpi_rd_rsp_valid & eq633;
    assign proxy636 = and635;
    assign eq638 = proxy_owner631 == 3'b1;
    assign and640 = io_qpi_rd_rsp_valid & eq638;
    assign proxy641 = and640;
    assign eq643 = proxy_owner631 == 3'b10;
    assign and645 = io_qpi_rd_rsp_valid & eq643;
    assign proxy646 = and645;

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
    wire io_enq_ready8; // #3406 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #3407 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #3408 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[2:0] io_size20; // #3410 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[2:0] proxy23; // #3411 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy25; // #3412 /home/blaise/dev/cash/src/seq.h(17)
    reg[2:0] reg30; // #3411 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy32; // #3414 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy34; // #3415 /home/blaise/dev/cash/src/seq.h(17)
    reg[2:0] reg36; // #3414 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy38; // #3417 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire[1:0] proxy40; // #3418 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[2:0] add47;
    wire[2:0] sel49;
    wire[2:0] proxy50; // #3423 unknown(0)
    wire[2:0] add52;
    wire[2:0] sel54;
    wire[2:0] proxy55; // #3426 unknown(0)
    reg[511:0] mem56[0:3];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #3429 unknown(0)
    wire proxy63; // #3430 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire proxy64; // #3431 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #3434 unknown(0)
    wire[2:0] sub71;
    wire[2:0] proxy72; // #3435 unknown(0)

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
    wire[63:0] lit528 = 64'h0;
    wire[63:0] lit531 = 64'h1;
    wire[415:0] lit692 = 416'h0;
    wire[511:0] lit780 = 512'h0;
    wire[543:0] lit835 = 544'h20;
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
    wire[131:0] io_ctx_a51; // #18 aal.h(74)
    wire[31:0] io_ctx_a_num_parts52; // #19 aal.h(74)
    wire io_done71; // #34 aal.h(74)
    wire bindin77;
    wire bindin79;
    wire bindin80;
    wire[63:0] bindin86;
    wire bindout89;
    wire[63:0] proxy91; // #811 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindin92;
    wire[351:0] proxy94; // #812 /home/blaise/dev/cash/src/module.h(33)
    wire[351:0] bindout106;
    wire proxy108; // #824 /home/blaise/dev/cash/src/module.h(33)
    wire bindout109;
    wire[22:0] proxy111; // #825 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout114;
    wire proxy116; // #828 /home/blaise/dev/cash/src/module.h(33)
    wire bindin117;
    wire proxy119; // #829 /home/blaise/dev/cash/src/module.h(33)
    wire bindin120;
    wire[514:0] proxy122; // #830 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindin125;
    wire proxy127; // #833 /home/blaise/dev/cash/src/module.h(33)
    wire bindout128;
    wire[84:0] proxy130; // #834 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindout135;
    wire proxy137; // #839 /home/blaise/dev/cash/src/module.h(33)
    wire bindin138;
    wire bindin142;
    wire bindin143;
    wire bindin144;
    wire[63:0] bindin150;
    wire bindout153;
    wire[63:0] proxy155; // #1616 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindin156;
    wire[351:0] proxy158; // #1617 /home/blaise/dev/cash/src/module.h(33)
    wire[351:0] bindout170;
    wire proxy172; // #1629 /home/blaise/dev/cash/src/module.h(33)
    wire bindout173;
    wire[22:0] proxy175; // #1630 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout178;
    wire proxy180; // #1633 /home/blaise/dev/cash/src/module.h(33)
    wire bindin181;
    wire proxy183; // #1634 /home/blaise/dev/cash/src/module.h(33)
    wire bindin184;
    wire[514:0] proxy186; // #1635 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindin189;
    wire proxy191; // #1638 /home/blaise/dev/cash/src/module.h(33)
    wire bindout192;
    wire[84:0] proxy194; // #1639 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindout199;
    wire proxy201; // #1644 /home/blaise/dev/cash/src/module.h(33)
    wire bindin202;
    wire proxy204; // #2048 /home/blaise/dev/cash/src/module.h(33)
    wire bindin206;
    wire bindin207;
    wire bindin208;
    wire[84:0] proxy210; // #2049 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindin215;
    wire proxy217; // #2054 /home/blaise/dev/cash/src/module.h(33)
    wire bindout218;
    wire proxy220; // #2055 /home/blaise/dev/cash/src/module.h(33)
    wire bindout221;
    wire[533:0] proxy223; // #2056 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout227;
    wire proxy229; // #2060 /home/blaise/dev/cash/src/module.h(33)
    wire bindin230;
    wire[63:0] proxy232; // #2061 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindout235;
    wire bindout238;
    wire proxy240; // #2468 /home/blaise/dev/cash/src/module.h(33)
    wire bindin242;
    wire bindin243;
    wire bindin244;
    wire[84:0] proxy246; // #2469 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindin251;
    wire proxy253; // #2474 /home/blaise/dev/cash/src/module.h(33)
    wire bindout254;
    wire proxy256; // #2475 /home/blaise/dev/cash/src/module.h(33)
    wire bindout257;
    wire[533:0] proxy259; // #2476 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout263;
    wire proxy265; // #2480 /home/blaise/dev/cash/src/module.h(33)
    wire bindin266;
    wire[63:0] proxy268; // #2481 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindout271;
    wire bindout274;
    wire proxy276; // #3326 /home/blaise/dev/cash/src/module.h(33)
    wire bindin278;
    wire bindin279;
    wire bindin280;
    wire[19:0] proxy282; // #3327 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] bindout283;
    wire[13:0] proxy285; // #3328 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindout286;
    wire proxy288; // #3329 /home/blaise/dev/cash/src/module.h(33)
    wire bindout289;
    wire[13:0] proxy291; // #3330 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin292;
    wire[511:0] proxy294; // #3331 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin295;
    wire proxy297; // #3332 /home/blaise/dev/cash/src/module.h(33)
    wire bindin298;
    wire proxy300; // #3333 /home/blaise/dev/cash/src/module.h(33)
    wire bindin301;
    wire[19:0] proxy303; // #3334 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] bindout304;
    wire[13:0] proxy306; // #3335 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindout307;
    wire[511:0] proxy309; // #3336 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout310;
    wire proxy312; // #3337 /home/blaise/dev/cash/src/module.h(33)
    wire bindout313;
    wire[13:0] proxy315; // #3338 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin316;
    wire proxy318; // #3339 /home/blaise/dev/cash/src/module.h(33)
    wire bindin319;
    wire[13:0] proxy321; // #3340 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin322;
    wire proxy324; // #3341 /home/blaise/dev/cash/src/module.h(33)
    wire bindin325;
    wire[511:0] proxy327; // #3342 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin343;
    wire bindin346;
    wire[22:0] proxy348; // #3359 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy_type349; // #3360 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin351;
    wire bindout354;
    wire bindin357;
    wire[533:0] proxy359; // #3364 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin363;
    wire bindout366;
    wire bindout369;
    wire[514:0] proxy371; // #3370 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy_type372; // #3371 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] proxy_data373; // #3372 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout374;
    wire[31:0] bindout377;
    wire proxy379; // #3374 /home/blaise/dev/cash/src/module.h(33)
    wire bindin380;
    wire[22:0] proxy382; // #3375 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin385;
    wire proxy387; // #3378 /home/blaise/dev/cash/src/module.h(33)
    wire bindout388;
    wire proxy390; // #3379 /home/blaise/dev/cash/src/module.h(33)
    wire bindout391;
    wire[514:0] proxy393; // #3380 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout396;
    wire proxy398; // #3383 /home/blaise/dev/cash/src/module.h(33)
    wire bindin399;
    wire[22:0] proxy401; // #3384 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin404;
    wire proxy406; // #3387 /home/blaise/dev/cash/src/module.h(33)
    wire bindout407;
    wire proxy409; // #3388 /home/blaise/dev/cash/src/module.h(33)
    wire bindout410;
    wire[514:0] proxy412; // #3389 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout415;
    wire proxy417; // #3392 /home/blaise/dev/cash/src/module.h(33)
    wire bindin418;
    wire[533:0] proxy420; // #3393 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin424;
    wire proxy426; // #3397 /home/blaise/dev/cash/src/module.h(33)
    wire bindout427;
    wire proxy429; // #3398 /home/blaise/dev/cash/src/module.h(33)
    wire bindin430;
    wire[533:0] proxy432; // #3399 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin436;
    wire proxy438; // #3403 /home/blaise/dev/cash/src/module.h(33)
    wire bindout439;
    wire proxy441; // #3436 /home/blaise/dev/cash/src/module.h(33)
    wire bindin443;
    wire bindin444;
    wire bindin445;
    wire[511:0] proxy447; // #3437 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin448;
    wire bindout454;
    wire[511:0] proxy456; // #3440 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout457;
    wire proxy459; // #3441 /home/blaise/dev/cash/src/module.h(33)
    wire bindin460;
    wire[543:0] proxy465; // #3443 spmv.cpp(15)
    wire[543:0] proxy467; // #3444 /home/blaise/dev/cash/src/seq.h(17)
    reg[543:0] reg470; // #3443 spmv.cpp(15)
    reg[4:0] reg477; // #3446 spmv.cpp(15)
    wire[31:0] proxy481; // #3450 /home/blaise/dev/cash/src/seq.h(17)
    reg[31:0] reg484; // #3449 spmv.cpp(15)
    wire[19:0] proxy486; // #3452 spmv.cpp(15)
    reg[19:0] reg491; // #3452 spmv.cpp(15)
    reg[19:0] reg497; // #3455 spmv.cpp(15)
    wire[1:0] proxy499; // #3458 spmv.cpp(15)
    reg[1:0] reg504; // #3458 spmv.cpp(15)
    wire[95:0] proxy506; // #3461 spmv.cpp(15)
    wire[31:0] proxy_a_colptr_stalls507; // #3462 spmv.cpp(15)
    wire[95:0] ch_ctrl_stats_t511; // #3465 /home/blaise/dev/cash/src/seq.h(17)
    reg[95:0] reg517; // #3461 spmv.cpp(15)
    reg[19:0] reg523; // #3470 spmv.cpp(15)
    wire[63:0] proxy525; // #3473 spmv.cpp(32)
    wire[63:0] proxy527; // #3474 /home/blaise/dev/cash/src/seq.h(17)
    reg[63:0] reg530; // #3473 spmv.cpp(32)
    wire[63:0] add533;
    wire[63:0] proxy534; // #3477 unknown(0)
    reg[2:0] reg541; // #3478 spmv.cpp(46)
    wire proxy543; // #3481 spmv.cpp(49)
    reg reg548; // #3481 spmv.cpp(49)
    wire eq550;
    wire and552;
    wire proxy553; // #3486 unknown(0)
    wire[30:0] proxy555; // #3487 /home/blaise/dev/cash/src/bit.h(1020)
    wire[31:0] proxy557; // #3488 spmv.cpp(61)
    wire eq559;
    wire and561;
    wire and563;
    wire proxy564; // #3492 unknown(0)
    wire[30:0] proxy565; // #3493 /home/blaise/dev/cash/src/bit.h(1020)
    wire[31:0] proxy567; // #3494 spmv.cpp(60)
    wire[31:0] add568;
    wire[31:0] sub570;
    wire[31:0] proxy571; // #3496 unknown(0)
    wire and572;
    wire proxy573; // #3497 unknown(0)
    wire and575;
    wire and577;
    wire proxy578; // #3500 unknown(0)
    wire eq580;
    wire ne582;
    wire and584;
    wire and585;
    wire[19:0] sel586;
    wire[31:0] add589;
    wire[31:0] sll593;
    wire[31:0] add597;
    wire[31:0] srl601;
    wire[31:0] proxy602; // #3511 unknown(0)
    wire[19:0] proxy603; // #3512 unknown(0)
    wire[19:0] sub606;
    wire[19:0] sel608;
    wire sel609;
    wire[2:0] sel611;
    wire inv613;
    wire and614;
    wire sel615;
    wire eq617;
    wire ne620;
    wire inv622;
    wire and623;
    wire and624;
    wire sel625;
    wire[19:0] add627;
    wire and629;
    wire[19:0] sel630;
    wire eq631;
    wire and634;
    wire[2:0] sel635;
    wire[31:0] add637;
    wire inv639;
    wire and640;
    wire[31:0] proxy641;
    wire[31:0] sel642;
    wire[31:0] add644;
    wire inv646;
    wire and647;
    wire[31:0] sel648;
    wire eq650;
    wire eq652;
    wire and654;
    wire or657;
    wire inv658;
    wire and659;
    wire and660;
    wire[2:0] sel661;
    wire eq663;
    wire or665;
    wire or666;
    wire inv667;
    wire and668;
    wire[1:0] sel670;
    wire sel671;
    wire and673;
    wire[2:0] sel674;
    wire eq676;
    wire or678;
    wire or679;
    wire or680;
    wire inv681;
    wire and682;
    wire[1:0] sel683;
    wire[17:0] proxy685; // #3531 /home/blaise/dev/cash/src/bit.h(1020)
    wire[19:0] proxy687; // #3532 /home/blaise/dev/cash/src/bit.h(417)
    wire[19:0] proxy688; // #3533 spmv.cpp(130)
    wire[19:0] sel690;
    wire[1:0] proxy691; // #3534 spmv.cpp(131)
    wire[415:0] proxy693; // #3535 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy695; // #3536 /home/blaise/dev/cash/src/bit.h(417)
    wire[511:0] proxy696; // #3537 spmv.cpp(254)
    wire[415:0] ch_stats_t699; // #3539 spmv.cpp(256)
    wire[95:0] proxy715; // #3555 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy717; // #3556 /home/blaise/dev/cash/src/bit.h(417)
    wire[511:0] proxy718; // #3557 spmv.cpp(259)
    wire[415:0] ch_stats_t721; // #3559 spmv.cpp(261)
    wire[95:0] proxy737; // #3575 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy739; // #3576 /home/blaise/dev/cash/src/bit.h(417)
    wire[511:0] proxy740; // #3577 spmv.cpp(264)
    wire eq741;
    wire[511:0] sel742;
    wire eq743;
    wire[511:0] sel744;
    wire[511:0] sel747;
    wire sel748;
    wire[1:0] add750;
    wire and752;
    wire[1:0] sel753;
    wire eq755;
    wire and758;
    wire[2:0] sel759;
    wire eq761;
    wire eq763;
    wire or765;
    wire or766;
    wire or767;
    wire or768;
    wire inv769;
    wire and770;
    wire and771;
    wire[2:0] sel772;
    wire sel773;
    reg[1:0] reg786; // #3586 spmv.cpp(172)
    wire eq788;
    wire and789;
    wire sel790;
    wire eq792;
    wire[19:0] proxy794; // #3592 aal.h(74)
    wire and795;
    wire[19:0] sel796;
    wire eq798;
    wire and801;
    wire[511:0] proxy802;
    wire[4:0] sel805;
    wire[479:0] proxy807;
    wire[31:0] proxy808;
    wire[31:0] proxy809;
    wire[31:0] sel810;
    wire[479:0] proxy811;
    wire[479:0] proxy812;
    wire[479:0] sel813;
    wire inv814;
    wire and815;
    wire[479:0] sel816;
    wire[31:0] proxy817;
    wire[31:0] proxy818;
    wire[31:0] sel819;
    wire[4:0] sel821;
    wire[1:0] sel822;
    wire eq824;
    wire[63:0] proxy825; // #3598 spmv.cpp(15)
    wire[63:0] proxy826; // #3599 spmv.cpp(203)
    wire[63:0] ch_dcsc_part_t827; // #3600 spmv.cpp(203)
    wire inv830;
    wire and831;
    wire and832;
    wire[63:0] sel833;
    wire sel834;
    wire[543:0] srl837;
    wire[543:0] proxy838; // #3604 unknown(0)
    wire[31:0] proxy839;
    wire[31:0] sel840;
    wire[479:0] proxy841;
    wire[479:0] sel842;
    wire[31:0] proxy843;
    wire[31:0] sel844;
    wire[19:0] sub846;
    wire[19:0] sel848;
    wire[4:0] sub851;
    wire[4:0] sel853;
    wire ne855;
    wire ne858;
    wire and860;
    wire and862;
    wire[1:0] sel863;
    wire inv864;
    wire and865;
    wire[1:0] sel866;
    wire inv867;
    wire and868;
    wire[1:0] sel869;
    wire eq871;
    wire[63:0] proxy872; // #3615 spmv.cpp(15)
    wire[63:0] proxy873; // #3616 spmv.cpp(203)
    wire[63:0] ch_dcsc_part_t874; // #3617 spmv.cpp(203)
    wire or877;
    wire inv878;
    wire and879;
    wire and880;
    wire[63:0] sel881;
    wire sel882;
    wire[543:0] srl884;
    wire[543:0] proxy885; // #3621 unknown(0)
    wire[31:0] proxy886;
    wire[31:0] sel887;
    wire[479:0] proxy888;
    wire[479:0] sel889;
    wire[31:0] proxy890;
    wire[31:0] sel891;
    wire[19:0] sub893;
    wire[19:0] sel895;
    wire[4:0] sub897;
    wire[4:0] sel899;
    wire ne901;
    wire ne904;
    wire and906;
    wire and908;
    wire[1:0] sel909;
    wire inv910;
    wire and911;
    wire[1:0] sel912;
    wire inv913;
    wire and914;
    wire[1:0] sel915;

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
    assign io_done71 = proxy543;
    assign bindin77 = clk;
    assign bindin79 = reset;
    spmv_dcsc_walk __module1__(.clk(bindin77), .reset(bindin79), .io_ctrl_start_valid(bindin80), .io_ctrl_start_data(bindin86), .io_ctrl_timer(bindin92), .io_lsu_rd_req_ready(bindin117), .io_lsu_rd_rsp_valid(bindin120), .io_lsu_rd_rsp_data(bindin125), .io_pe_ready(bindin138), .io_ctrl_start_ready(bindout89), .io_ctrl_stats(bindout106), .io_lsu_rd_req_valid(bindout109), .io_lsu_rd_req_data(bindout114), .io_pe_valid(bindout128), .io_pe_data(bindout135));
    assign bindin80 = sel834;
    assign bindin86 = sel833;
    assign proxy91 = proxy525;
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
    assign proxy155 = proxy525;
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
    assign bindin346 = sel625;
    assign proxy348 = {proxy486, 3'b0};
    assign proxy_type349 = proxy348[2:0];
    assign bindin351 = proxy348;
    assign bindin357 = sel748;
    assign proxy359 = {sel747, sel690, sel683};
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
    assign proxy441 = proxy553;
    assign bindin443 = clk;
    assign bindin444 = reset;
    ch_queue_1 __module29__(.clk(bindin443), .reset(bindin444), .io_enq_valid(bindin445), .io_enq_data(bindin448), .io_deq_ready(bindin460), .io_deq_valid(bindout454), .io_deq_data(bindout457));
    assign bindin445 = proxy441;
    assign proxy447 = proxy_data373;
    assign bindin448 = proxy447;
    assign proxy456 = bindout457;
    assign proxy459 = sel790;
    assign bindin460 = proxy459;
    assign proxy465 = reg470;
    assign proxy467 = {sel891, sel889, sel887};
    always @ (posedge clk) reg470 <= reset ? lit468 : proxy467;
    always @ (posedge clk) reg477 <= reset ? 5'b0 : sel899;
    assign proxy481 = proxy571;
    always @ (posedge clk) reg484 <= reset ? 32'h0 : proxy481;
    assign proxy486 = reg491;
    always @ (posedge clk) reg491 <= reset ? 20'h0 : sel630;
    always @ (posedge clk) reg497 <= reset ? 20'h0 : sel608;
    assign proxy499 = reg504;
    always @ (posedge clk) reg504 <= reset ? 2'b0 : sel753;
    assign proxy506 = reg517;
    assign proxy_a_colptr_stalls507 = proxy506[31:0];
    assign ch_ctrl_stats_t511 = {proxy506[95:32], sel648};
    always @ (posedge clk) reg517 <= reset ? lit515 : ch_ctrl_stats_t511;
    always @ (posedge clk) reg523 <= reset ? 20'h0 : sel895;
    assign proxy525 = reg530;
    assign proxy527 = proxy534;
    always @ (posedge clk) reg530 <= reset ? lit528 : proxy527;
    assign add533 = proxy525 + lit531;
    assign proxy534 = add533;
    always @ (posedge clk) reg541 <= reset ? 3'b0 : sel772;
    assign proxy543 = reg548;
    always @ (posedge clk) reg548 <= reset ? 1'b0 : sel773;
    assign eq550 = proxy_type372 == 3'b0;
    assign and552 = bindout369 & eq550;
    assign proxy553 = and552;
    assign proxy555 = 31'b0;
    assign proxy557 = {proxy555, proxy459};
    assign eq559 = proxy_type349 == 3'b0;
    assign and561 = sel625 & bindout354;
    assign and563 = and561 & eq559;
    assign proxy564 = and563;
    assign proxy565 = 31'b0;
    assign proxy567 = {proxy565, proxy564};
    assign add568 = reg484 + proxy567;
    assign sub570 = add568 - proxy557;
    assign proxy571 = sub570;
    assign and572 = bindout89 & bindout238;
    assign proxy573 = proxy578;
    assign and575 = and572 & bindout153;
    assign and577 = and575 & bindout274;
    assign proxy578 = and577;
    assign eq580 = reg541 == 3'b0;
    assign ne582 = io_ctx_a_num_parts52 != 32'h0;
    assign and584 = eq580 & io_start;
    assign and585 = and584 & ne582;
    assign sel586 = and585 ? 20'h0 : proxy486;
    assign add589 = io_ctx_a_num_parts52 + 32'h1;
    assign sll593 = add589 << 32'h2;
    assign add597 = sll593 + 32'h3f;
    assign srl601 = add597 >> 32'h6;
    assign proxy602 = srl601;
    assign proxy603 = proxy602[19:0];
    assign sub606 = proxy603 - 20'h1;
    assign sel608 = and585 ? sub606 : reg497;
    assign sel609 = and585 ? 1'b0 : proxy543;
    assign sel611 = and585 ? 3'b1 : reg541;
    assign inv613 = ~ne582;
    assign and614 = and584 & inv613;
    assign sel615 = and614 ? 1'b1 : sel609;
    assign eq617 = reg541 == 3'b1;
    assign ne620 = reg484 != 32'h4;
    assign inv622 = ~eq580;
    assign and623 = inv622 & eq617;
    assign and624 = and623 & ne620;
    assign sel625 = and624 ? 1'b1 : 1'b0;
    assign add627 = proxy486 + 20'h1;
    assign and629 = and624 & bindout354;
    assign sel630 = and629 ? add627 : sel586;
    assign eq631 = proxy486 == reg497;
    assign and634 = and629 & eq631;
    assign sel635 = and634 ? 3'b10 : sel611;
    assign add637 = proxy_a_colptr_stalls507 + 32'h1;
    assign inv639 = ~bindout354;
    assign and640 = and624 & inv639;
    assign proxy641 = proxy506[31:0];
    assign sel642 = and640 ? add637 : proxy641;
    assign add644 = proxy_a_colptr_stalls507 + 32'h1;
    assign inv646 = ~ne620;
    assign and647 = and623 & inv646;
    assign sel648 = and647 ? add644 : sel642;
    assign eq650 = reg541 == 3'b10;
    assign eq652 = 20'h0 == reg523;
    assign and654 = eq652 & proxy573;
    assign or657 = eq617 | eq580;
    assign inv658 = ~or657;
    assign and659 = inv658 & eq650;
    assign and660 = and659 & and654;
    assign sel661 = and660 ? 3'b11 : sel635;
    assign eq663 = reg541 == 3'b11;
    assign or665 = eq650 | eq617;
    assign or666 = or665 | eq580;
    assign inv667 = ~or666;
    assign and668 = inv667 & eq663;
    assign sel670 = and668 ? 2'b1 : 2'b0;
    assign sel671 = and668 ? 1'b1 : 1'b0;
    assign and673 = and668 & bindout366;
    assign sel674 = and673 ? 3'b100 : sel661;
    assign eq676 = reg541 == 3'b100;
    assign or678 = eq663 | eq650;
    assign or679 = or678 | eq617;
    assign or680 = or679 | eq580;
    assign inv681 = ~or680;
    assign and682 = inv681 & eq676;
    assign sel683 = and682 ? 2'b10 : sel670;
    assign proxy685 = 18'b0;
    assign proxy687 = {proxy685, proxy499};
    assign proxy688 = proxy687;
    assign sel690 = and682 ? proxy688 : 20'h0;
    assign proxy691 = proxy499;
    assign proxy693 = lit692;
    assign proxy695 = {proxy693, proxy506};
    assign proxy696 = proxy695;
    assign ch_stats_t699 = {proxy232, proxy94};
    assign proxy715 = lit515;
    assign proxy717 = {proxy715, ch_stats_t699};
    assign proxy718 = proxy717;
    assign ch_stats_t721 = {proxy268, proxy158};
    assign proxy737 = lit515;
    assign proxy739 = {proxy737, ch_stats_t721};
    assign proxy740 = proxy739;
    assign eq741 = proxy691 == 2'b1;
    assign sel742 = eq741 ? proxy718 : proxy740;
    assign eq743 = proxy691 == 2'b0;
    assign sel744 = eq743 ? proxy696 : sel742;
    assign sel747 = and682 ? sel744 : lit780;
    assign sel748 = and682 ? 1'b1 : sel671;
    assign add750 = proxy499 + 2'b1;
    assign and752 = and682 & bindout366;
    assign sel753 = and752 ? add750 : proxy499;
    assign eq755 = proxy499 == 2'b10;
    assign and758 = and752 & eq755;
    assign sel759 = and758 ? 3'b101 : sel674;
    assign eq761 = reg541 == 3'b101;
    assign eq763 = bindout377 == 32'h0;
    assign or765 = eq676 | eq663;
    assign or766 = or765 | eq650;
    assign or767 = or766 | eq617;
    assign or768 = or767 | eq580;
    assign inv769 = ~or768;
    assign and770 = inv769 & eq761;
    assign and771 = and770 & eq763;
    assign sel772 = and771 ? 3'b0 : sel759;
    assign sel773 = and771 ? 1'b1 : sel615;
    always @ (posedge clk) reg786 <= reset ? 2'b0 : sel915;
    assign eq788 = reg786 == 2'b0;
    assign and789 = eq788 & bindout454;
    assign sel790 = and789 ? 1'b1 : 1'b0;
    assign eq792 = 20'h0 == reg523;
    assign proxy794 = io_ctx_a_num_parts52[19:0];
    assign and795 = and789 & eq792;
    assign sel796 = and795 ? proxy794 : reg523;
    assign eq798 = 5'b0 == reg477;
    assign and801 = and789 & eq798;
    assign proxy802 = proxy465[511:0];
    assign sel805 = and801 ? 5'b1111 : reg477;
    assign proxy807 = proxy456[479:0];
    assign proxy808 = proxy456[31:0];
    assign proxy809 = proxy802[31:0];
    assign sel810 = and801 ? proxy808 : proxy809;
    assign proxy811 = proxy456[511:32];
    assign proxy812 = proxy802[511:32];
    assign sel813 = and801 ? proxy811 : proxy812;
    assign inv814 = ~eq798;
    assign and815 = and789 & inv814;
    assign sel816 = and815 ? proxy807 : sel813;
    assign proxy817 = proxy456[511:480];
    assign proxy818 = proxy465[543:512];
    assign sel819 = and815 ? proxy817 : proxy818;
    assign sel821 = and815 ? 5'b10000 : sel805;
    assign sel822 = and789 ? 2'b1 : reg786;
    assign eq824 = reg786 == 2'b1;
    assign proxy825 = proxy465[63:0];
    assign proxy826 = proxy825;
    assign ch_dcsc_part_t827 = proxy826;
    assign inv830 = ~eq788;
    assign and831 = inv830 & eq824;
    assign and832 = and831 & bindout89;
    assign sel833 = and832 ? ch_dcsc_part_t827 : lit528;
    assign sel834 = and832 ? 1'b1 : 1'b0;
    assign srl837 = proxy465 >> lit835;
    assign proxy838 = srl837;
    assign proxy839 = proxy838[31:0];
    assign sel840 = and832 ? proxy839 : sel810;
    assign proxy841 = proxy838[511:32];
    assign sel842 = and832 ? proxy841 : sel816;
    assign proxy843 = proxy838[543:512];
    assign sel844 = and832 ? proxy843 : sel819;
    assign sub846 = reg523 - 20'h1;
    assign sel848 = and832 ? sub846 : sel796;
    assign sub851 = reg477 - 5'b1;
    assign sel853 = and832 ? sub851 : sel821;
    assign ne855 = reg477 != 5'b1;
    assign ne858 = reg523 != 20'h1;
    assign and860 = ne858 & ne855;
    assign and862 = and832 & and860;
    assign sel863 = and862 ? 2'b10 : sel822;
    assign inv864 = ~and860;
    assign and865 = and832 & inv864;
    assign sel866 = and865 ? 2'b0 : sel863;
    assign inv867 = ~bindout89;
    assign and868 = and831 & inv867;
    assign sel869 = and868 ? 2'b10 : sel866;
    assign eq871 = reg786 == 2'b10;
    assign proxy872 = proxy465[63:0];
    assign proxy873 = proxy872;
    assign ch_dcsc_part_t874 = proxy873;
    assign or877 = eq824 | eq788;
    assign inv878 = ~or877;
    assign and879 = inv878 & eq871;
    assign and880 = and879 & bindout153;
    assign sel881 = and880 ? ch_dcsc_part_t874 : lit528;
    assign sel882 = and880 ? 1'b1 : 1'b0;
    assign srl884 = proxy465 >> lit835;
    assign proxy885 = srl884;
    assign proxy886 = proxy885[31:0];
    assign sel887 = and880 ? proxy886 : sel840;
    assign proxy888 = proxy885[511:32];
    assign sel889 = and880 ? proxy888 : sel842;
    assign proxy890 = proxy885[543:512];
    assign sel891 = and880 ? proxy890 : sel844;
    assign sub893 = reg523 - 20'h1;
    assign sel895 = and880 ? sub893 : sel848;
    assign sub897 = reg477 - 5'b1;
    assign sel899 = and880 ? sub897 : sel853;
    assign ne901 = reg477 != 5'b1;
    assign ne904 = reg523 != 20'h1;
    assign and906 = ne904 & ne901;
    assign and908 = and880 & and906;
    assign sel909 = and908 ? 2'b1 : sel869;
    assign inv910 = ~and906;
    assign and911 = and880 & inv910;
    assign sel912 = and911 ? 2'b0 : sel909;
    assign inv913 = ~bindout153;
    assign and914 = and879 & inv913;
    assign sel915 = and914 ? 2'b1 : sel912;

    assign io_qpi_rd_req_addr = io_qpi_rd_req_addr5;
    assign io_qpi_rd_req_mdata = io_qpi_rd_req_mdata8;
    assign io_qpi_rd_req_valid = io_qpi_rd_req_valid11;
    assign io_qpi_wr_req_addr = io_qpi_wr_req_addr26;
    assign io_qpi_wr_req_mdata = io_qpi_wr_req_mdata29;
    assign io_qpi_wr_req_data = io_qpi_wr_req_data32;
    assign io_qpi_wr_req_valid = io_qpi_wr_req_valid35;
    assign io_done = io_done71;

endmodule
