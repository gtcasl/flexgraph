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
    wire[63:0] io_ctrl_start_data5; // #36 dcsc_walk.cpp(27)
    wire[63:0] io_ctrl_start_data_part6; // #37 dcsc_walk.cpp(27)
    wire[31:0] io_ctrl_start_data_part_start7; // #38 dcsc_walk.cpp(27)
    wire[31:0] io_ctrl_start_data_part_end8; // #39 dcsc_walk.cpp(27)
    wire io_ctrl_start_ready11; // #40 dcsc_walk.cpp(27)
    wire[351:0] io_ctrl_stats17; // #42 dcsc_walk.cpp(27)
    wire[22:0] io_lsu_rd_req_data34; // #55 dcsc_walk.cpp(27)
    wire[2:0] io_lsu_rd_req_data_type35; // #56 dcsc_walk.cpp(27)
    wire[514:0] io_lsu_rd_rsp_data45; // #60 dcsc_walk.cpp(27)
    wire[2:0] io_lsu_rd_rsp_data_type46; // #61 dcsc_walk.cpp(27)
    wire[511:0] io_lsu_rd_rsp_data_data47; // #62 dcsc_walk.cpp(27)
    wire io_pe_valid50; // #63 dcsc_walk.cpp(27)
    wire[84:0] io_pe_data53; // #64 dcsc_walk.cpp(27)
    reg[19:0] reg70; // #70 dcsc_walk.cpp(27)
    reg[19:0] reg76; // #73 dcsc_walk.cpp(27)
    reg[19:0] reg82; // #76 dcsc_walk.cpp(27)
    reg[19:0] reg88; // #79 dcsc_walk.cpp(27)
    reg[19:0] reg94; // #82 dcsc_walk.cpp(27)
    wire[19:0] proxy96; // #85 dcsc_walk.cpp(27)
    wire[19:0] proxy98; // #86 /home/blaise/dev/cash/src/seq.h(26)
    reg[19:0] reg101; // #85 dcsc_walk.cpp(27)
    reg[19:0] reg107; // #88 dcsc_walk.cpp(27)
    reg[19:0] reg113; // #91 dcsc_walk.cpp(27)
    reg[19:0] reg119; // #94 dcsc_walk.cpp(27)
    wire[31:0] proxy128; // #100 dcsc_walk.cpp(27)
    reg[31:0] reg133; // #100 dcsc_walk.cpp(27)
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
    wire proxy274; // #336 /home/blaise/dev/cash/src/module.h(33)
    wire bindin275;
    reg[7:0] reg285; // #338 dcsc_walk.cpp(27)
    reg[7:0] reg291; // #341 dcsc_walk.cpp(27)
    reg[7:0] reg297; // #344 dcsc_walk.cpp(27)
    reg[7:0] reg303; // #347 dcsc_walk.cpp(27)
    reg[7:0] reg309; // #350 dcsc_walk.cpp(27)
    reg[7:0] reg315; // #353 dcsc_walk.cpp(27)
    reg[511:0] reg322; // #356 dcsc_walk.cpp(27)
    reg[511:0] reg328; // #359 dcsc_walk.cpp(27)
    reg[511:0] reg340; // #365 dcsc_walk.cpp(27)
    wire[351:0] proxy349; // #371 dcsc_walk.cpp(27)
    wire[31:0] proxy_num_parts350; // #372 dcsc_walk.cpp(27)
    wire[31:0] proxy_min_latency351; // #373 dcsc_walk.cpp(27)
    wire[31:0] proxy_total_latency353; // #375 dcsc_walk.cpp(27)
    wire[31:0] proxy_a_colind_stalls354; // #376 dcsc_walk.cpp(27)
    wire[31:0] proxy_a_rowptr_stalls355; // #377 dcsc_walk.cpp(27)
    wire[31:0] proxy_a_rowind_stalls356; // #378 dcsc_walk.cpp(27)
    wire[31:0] proxy_a_values_stalls357; // #379 dcsc_walk.cpp(27)
    wire[31:0] proxy_x_values_stalls358; // #380 dcsc_walk.cpp(27)
    wire[31:0] proxy_x_masks_stalls359; // #381 dcsc_walk.cpp(27)
    wire[31:0] proxy_execute_stalls360; // #382 dcsc_walk.cpp(27)
    wire[351:0] ch_walker_stats_t362; // #383 /home/blaise/dev/cash/src/seq.h(17)
    reg[351:0] reg376; // #371 dcsc_walk.cpp(27)
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
    reg[3:0] reg419; // #414 dcsc_walk.cpp(57)
    wire eq421;
    wire proxy422; // #418 unknown(0)
    wire eq424;
    wire and426;
    wire and428;
    wire proxy430; // #423 dcsc_walk.cpp(65)
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
    wire proxy457; // #436 dcsc_walk.cpp(65)
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
    wire proxy483; // #449 dcsc_walk.cpp(65)
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
    wire proxy509; // #462 dcsc_walk.cpp(65)
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
    wire proxy535; // #475 dcsc_walk.cpp(65)
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
    wire proxy561; // #488 dcsc_walk.cpp(65)
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
    wire proxy581; // #497 dcsc_walk.cpp(97)
    reg reg586; // #497 dcsc_walk.cpp(97)
    wire proxy588; // #500 dcsc_walk.cpp(98)
    reg reg592; // #500 dcsc_walk.cpp(98)
    wire proxy606; // #509 dcsc_walk.cpp(101)
    reg reg610; // #509 dcsc_walk.cpp(101)
    wire proxy612; // #512 dcsc_walk.cpp(102)
    reg reg616; // #512 dcsc_walk.cpp(102)
    wire[84:0] proxy618; // #515 dcsc_walk.cpp(105)
    wire[84:0] ch_pe_req_t624; // #520 /home/blaise/dev/cash/src/seq.h(17)
    reg[84:0] reg631; // #515 dcsc_walk.cpp(105)
    wire proxy633; // #526 dcsc_walk.cpp(106)
    reg reg637; // #526 dcsc_walk.cpp(106)
    wire eq639;
    wire[19:0] proxy640; // #530 dcsc_walk.cpp(27)
    wire and641;
    wire[19:0] sel642;
    wire[19:0] proxy643; // #531 dcsc_walk.cpp(27)
    wire[19:0] sel644;
    wire ne645;
    wire and647;
    wire[3:0] sel650;
    wire eq652;
    wire inv653;
    wire and654;
    wire[2:0] sel656;
    wire[19:0] sll659;
    wire[19:0] srl663;
    wire[19:0] sel666;
    wire ne669;
    wire and672;
    wire sel673;
    wire and675;
    wire[3:0] sel676;
    wire[31:0] add679;
    wire inv681;
    wire and682;
    wire[31:0] proxy683;
    wire[31:0] sel684;
    wire[31:0] add686;
    wire inv688;
    wire and689;
    wire[31:0] sel690;
    wire eq692;
    wire or693;
    wire inv694;
    wire and695;
    wire[2:0] sel696;
    wire[19:0] sll698;
    wire[19:0] srl701;
    wire[19:0] sel703;
    wire ne705;
    wire and707;
    wire sel708;
    wire and710;
    wire[3:0] sel711;
    wire[31:0] add713;
    wire inv715;
    wire and716;
    wire[31:0] proxy717;
    wire[31:0] sel718;
    wire[31:0] add720;
    wire inv722;
    wire and723;
    wire[31:0] sel724;
    wire eq726;
    wire and727;
    wire or729;
    wire or730;
    wire inv731;
    wire and732;
    wire and733;
    wire[511:0] sel734;
    wire[19:0] and737;
    wire[19:0] sll741;
    wire[511:0] srl743;
    wire[511:0] proxy744; // #561 unknown(0)
    wire[19:0] proxy745; // #562 unknown(0)
    wire[19:0] sel746;
    wire sel747;
    wire[511:0] sel748;
    wire[19:0] and750;
    wire[19:0] sll753;
    wire[511:0] srl755;
    wire[511:0] proxy756; // #567 unknown(0)
    wire[19:0] proxy757; // #568 unknown(0)
    wire[19:0] sel758;
    wire sel759;
    wire[19:0] and761;
    wire ne764;
    wire[19:0] add768;
    wire[19:0] and771;
    wire[19:0] sll774;
    wire[511:0] srl776;
    wire[511:0] proxy777; // #579 unknown(0)
    wire[19:0] proxy778; // #580 unknown(0)
    wire and779;
    wire[19:0] sel780;
    wire[3:0] sel782;
    wire inv784;
    wire and785;
    wire[3:0] sel786;
    wire eq788;
    wire or789;
    wire or790;
    wire or791;
    wire inv792;
    wire and793;
    wire[2:0] sel794;
    wire[19:0] sel795;
    wire ne797;
    wire and799;
    wire sel800;
    wire and802;
    wire[3:0] sel803;
    wire[31:0] add805;
    wire inv807;
    wire and808;
    wire[31:0] sel809;
    wire[31:0] add811;
    wire inv813;
    wire and814;
    wire[31:0] sel815;
    wire eq817;
    wire[511:0] proxy818; // #589 dcsc_walk.cpp(213)
    wire or819;
    wire or820;
    wire or821;
    wire or822;
    wire inv823;
    wire and824;
    wire and825;
    wire sel826;
    wire[19:0] proxy827; // #590 dcsc_walk.cpp(213)
    wire[19:0] sel828;
    wire[3:0] sel829;
    wire[31:0] add831;
    wire inv833;
    wire and834;
    wire[31:0] sel835;
    wire eq837;
    wire[19:0] sll839;
    wire[19:0] srl842;
    wire eq844;
    wire[19:0] sll847;
    wire[19:0] srl850;
    wire or852;
    wire or853;
    wire or854;
    wire or855;
    wire or856;
    wire inv857;
    wire and858;
    wire and859;
    wire[19:0] sel860;
    wire[19:0] sll862;
    wire[19:0] add866;
    wire[19:0] srl869;
    wire[19:0] sel871;
    wire[3:0] sel874;
    wire inv875;
    wire and876;
    wire[19:0] sel877;
    wire[3:0] sel879;
    wire eq882;
    wire or883;
    wire or884;
    wire or885;
    wire or886;
    wire or887;
    wire or888;
    wire inv889;
    wire and890;
    wire[2:0] sel891;
    wire[19:0] sel892;
    wire ne894;
    wire and896;
    wire sel897;
    wire and899;
    wire[3:0] sel900;
    wire[31:0] add902;
    wire inv904;
    wire and905;
    wire[31:0] proxy906;
    wire[31:0] sel907;
    wire[31:0] add909;
    wire inv911;
    wire and912;
    wire[31:0] sel913;
    wire eq915;
    wire eq917;
    wire[19:0] sll920;
    wire[19:0] srl923;
    wire or925;
    wire or926;
    wire or927;
    wire or928;
    wire or929;
    wire or930;
    wire or931;
    wire inv932;
    wire and933;
    wire and934;
    wire and935;
    wire[19:0] sel936;
    wire[19:0] sll938;
    wire[19:0] add941;
    wire[19:0] srl944;
    wire[19:0] sel946;
    wire[3:0] sel948;
    wire inv949;
    wire and950;
    wire[19:0] sel951;
    wire[3:0] sel952;
    wire[31:0] add954;
    wire inv956;
    wire and957;
    wire[31:0] sel958;
    wire eq960;
    wire or961;
    wire or962;
    wire or963;
    wire or964;
    wire or965;
    wire or966;
    wire or967;
    wire or968;
    wire inv969;
    wire and970;
    wire[2:0] sel971;
    wire[19:0] sll973;
    wire[19:0] srl976;
    wire[19:0] sel978;
    wire ne980;
    wire and982;
    wire sel983;
    wire[19:0] sll985;
    wire[19:0] srl988;
    wire and990;
    wire[19:0] sel991;
    wire[19:0] sll993;
    wire[19:0] add996;
    wire[19:0] srl999;
    wire[19:0] sel1001;
    wire[3:0] sel1003;
    wire[31:0] add1005;
    wire inv1007;
    wire and1008;
    wire[31:0] proxy1009;
    wire[31:0] sel1010;
    wire[31:0] add1012;
    wire inv1014;
    wire and1015;
    wire[31:0] sel1016;
    wire eq1018;
    wire or1019;
    wire or1020;
    wire or1021;
    wire or1022;
    wire or1023;
    wire or1024;
    wire or1025;
    wire or1026;
    wire or1027;
    wire inv1028;
    wire and1029;
    wire[2:0] sel1030;
    wire[19:0] sel1031;
    wire ne1034;
    wire and1036;
    wire sel1037;
    wire and1039;
    wire[3:0] sel1040;
    wire[31:0] add1042;
    wire inv1044;
    wire and1045;
    wire[31:0] proxy1046;
    wire[31:0] sel1047;
    wire[31:0] add1049;
    wire inv1051;
    wire and1052;
    wire[31:0] sel1053;
    wire eq1055;
    wire or1056;
    wire or1057;
    wire or1058;
    wire or1059;
    wire or1060;
    wire or1061;
    wire or1062;
    wire or1063;
    wire or1064;
    wire or1065;
    wire inv1066;
    wire and1067;
    wire[2:0] sel1068;
    wire[19:0] sel1069;
    wire ne1071;
    wire and1073;
    wire sel1074;
    wire and1075;
    wire[19:0] sel1076;
    wire ne1077;
    wire and1079;
    wire[3:0] sel1080;
    wire inv1082;
    wire and1083;
    wire[3:0] sel1084;
    wire[31:0] add1086;
    wire inv1088;
    wire and1089;
    wire[31:0] proxy1090;
    wire[31:0] sel1091;
    wire[31:0] add1093;
    wire inv1095;
    wire and1096;
    wire[31:0] sel1097;
    wire eq1099;
    wire or1100;
    wire or1101;
    wire or1102;
    wire or1103;
    wire or1104;
    wire or1105;
    wire or1106;
    wire or1107;
    wire or1108;
    wire or1109;
    wire or1110;
    wire inv1111;
    wire and1112;
    wire and1113;
    wire[511:0] sel1114;
    wire sel1115;
    wire[19:0] and1117;
    wire[19:0] sll1120;
    wire[511:0] srl1122;
    wire[511:0] proxy1123; // #672 unknown(0)
    wire[31:0] proxy1124; // #673 unknown(0)
    wire[31:0] sel1125;
    wire[19:0] and1127;
    wire[19:0] sll1130;
    wire[511:0] srl1132;
    wire[511:0] proxy1133; // #678 unknown(0)
    wire[31:0] proxy1134; // #679 unknown(0)
    wire inv1135;
    wire and1136;
    wire[31:0] sel1137;
    wire[3:0] sel1139;
    wire eq1141;
    wire[19:0] and1143;
    wire[19:0] sll1146;
    wire[511:0] srl1148;
    wire[511:0] proxy1149; // #685 unknown(0)
    wire[19:0] proxy1150; // #686 unknown(0)
    wire or1151;
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
    wire inv1163;
    wire and1164;
    wire[19:0] sel1166;
    wire[19:0] and1168;
    wire[19:0] sll1171;
    wire[511:0] srl1173;
    wire[511:0] proxy1174; // #691 unknown(0)
    wire[31:0] proxy1175; // #692 unknown(0)
    wire[31:0] sel1177;
    wire[31:0] proxy1178; // #693 dcsc_walk.cpp(402)
    wire[31:0] sel1180;
    wire sel1182;
    wire sel1183;
    wire[19:0] add1185;
    wire and1187;
    wire[19:0] sel1188;
    wire ne1189;
    wire inv1201;
    wire and1202;
    wire[3:0] sel1206;
    wire[31:0] add1208;
    wire inv1210;
    wire and1211;
    wire[31:0] proxy1212;
    wire[31:0] sel1213;
    wire eq1215;
    wire[19:0] add1217;
    wire or1219;
    wire or1220;
    wire or1221;
    wire or1222;
    wire or1223;
    wire or1224;
    wire or1225;
    wire or1226;
    wire or1227;
    wire or1228;
    wire or1229;
    wire or1230;
    wire or1231;
    wire inv1232;
    wire and1233;
    wire[19:0] sel1234;
    wire ne1235;
    wire[19:0] and1238;
    wire ne1241;
    wire[19:0] and1244;
    wire[19:0] sll1247;
    wire[511:0] srl1249;
    wire[511:0] proxy1250; // #715 unknown(0)
    wire[19:0] proxy1251; // #716 unknown(0)
    wire and1252;
    wire and1253;
    wire[19:0] sel1254;
    wire[19:0] and1256;
    wire[19:0] sll1259;
    wire[511:0] srl1261;
    wire[511:0] proxy1262; // #721 unknown(0)
    wire[19:0] proxy1263; // #722 unknown(0)
    wire[19:0] sel1264;
    wire[19:0] and1266;
    wire ne1269;
    wire[19:0] add1272;
    wire[19:0] and1275;
    wire[19:0] sll1278;
    wire[511:0] srl1280;
    wire[511:0] proxy1281; // #733 unknown(0)
    wire[19:0] proxy1282; // #734 unknown(0)
    wire and1283;
    wire[19:0] sel1284;
    wire[3:0] sel1285;
    wire inv1286;
    wire and1287;
    wire[3:0] sel1288;
    wire inv1289;
    wire and1290;
    wire[3:0] sel1291;
    wire inv1293;
    wire and1294;
    wire[3:0] sel1295;
    wire eq1297;
    wire or1298;
    wire or1299;
    wire or1300;
    wire or1301;
    wire or1302;
    wire or1303;
    wire or1304;
    wire or1305;
    wire or1306;
    wire or1307;
    wire or1308;
    wire or1309;
    wire or1310;
    wire or1311;
    wire inv1312;
    wire and1313;
    wire sel1314;
    wire sel1315;
    wire lt1317;
    wire[31:0] sel1319;
    wire eq1322;
    wire[31:0] sel1324;
    wire and1326;
    wire[31:0] proxy1327;
    wire[31:0] sel1328;
    wire gt1329;
    wire[31:0] sel1331;
    wire[31:0] proxy1333;
    wire[31:0] sel1334;
    wire[31:0] add1335;
    wire[31:0] proxy1337;
    wire[31:0] sel1338;
    wire[31:0] add1340;
    wire[31:0] proxy1342;
    wire[31:0] sel1343;
    wire[3:0] sel1344;
    wire[31:0] add1346;
    wire inv1348;
    wire and1349;
    wire[31:0] sel1350;
    wire or1352;
    wire or1353;
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
    wire inv1367;
    wire sel1368;

    assign io_ctrl_start_data5 = io_ctrl_start_data;
    assign io_ctrl_start_data_part6 = io_ctrl_start_data5;
    assign io_ctrl_start_data_part_start7 = io_ctrl_start_data_part6[31:0];
    assign io_ctrl_start_data_part_end8 = io_ctrl_start_data_part6[63:32];
    assign io_ctrl_start_ready11 = proxy422;
    assign io_ctrl_stats17 = proxy349;
    assign io_lsu_rd_req_data34 = {sel1069, sel1068};
    assign io_lsu_rd_req_data_type35 = io_lsu_rd_req_data34[2:0];
    assign io_lsu_rd_rsp_data45 = io_lsu_rd_rsp_data;
    assign io_lsu_rd_rsp_data_type46 = io_lsu_rd_rsp_data45[2:0];
    assign io_lsu_rd_rsp_data_data47 = io_lsu_rd_rsp_data45[514:3];
    assign io_pe_valid50 = proxy633;
    assign io_pe_data53 = proxy618;
    always @ (posedge clk) reg70 <= reset ? 20'h0 : sel1234;
    always @ (posedge clk) reg76 <= reset ? 20'h0 : sel644;
    always @ (posedge clk) reg82 <= reset ? 20'h0 : sel1254;
    always @ (posedge clk) reg88 <= reset ? 20'h0 : sel1264;
    always @ (posedge clk) reg94 <= reset ? 20'h0 : sel1284;
    assign proxy96 = reg101;
    assign proxy98 = proxy96;
    always @ (posedge clk) reg101 <= reset ? 20'hfffff : proxy98;
    always @ (posedge clk) reg107 <= reset ? 20'hfffff : sel951;
    always @ (posedge clk) reg113 <= reset ? 20'h0 : sel1076;
    always @ (posedge clk) reg119 <= reset ? 20'h0 : sel1001;
    assign proxy128 = reg133;
    always @ (posedge clk) reg133 <= reset ? 32'h0 : sel1137;
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
    ch_queue __module7__(.clk(bindin258), .reset(bindin259), .io_enq_valid(bindin260), .io_enq_data(bindin263), .io_deq_ready(bindin275), .io_deq_valid(bindout269));
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
    always @ (posedge clk) reg322 <= reset ? lit320 : sel734;
    always @ (posedge clk) reg328 <= reset ? lit320 : sel748;
    always @ (posedge clk) reg340 <= reset ? lit320 : sel1114;
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
    assign ch_walker_stats_t362 = {sel1350, sel958, sel1016, sel1097, sel1053, sel835, sel690, sel1338, sel1334, sel1328, sel1343};
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
    always @ (posedge clk) reg419 <= reset ? 4'h0 : sel1344;
    assign eq421 = reg419 == 4'h0;
    assign proxy422 = eq421;
    assign eq424 = io_lsu_rd_req_data_type35 == 3'b1;
    assign and426 = sel1074 & io_lsu_rd_req_ready;
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
    assign and453 = sel1074 & io_lsu_rd_req_ready;
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
    assign and479 = sel1074 & io_lsu_rd_req_ready;
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
    assign and505 = sel1074 & io_lsu_rd_req_ready;
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
    assign and531 = sel1074 & io_lsu_rd_req_ready;
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
    assign and557 = sel1074 & io_lsu_rd_req_ready;
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
    always @ (posedge clk) reg586 <= reset ? 1'b0 : sel747;
    assign proxy588 = reg592;
    always @ (posedge clk) reg592 <= reset ? 1'b0 : sel826;
    assign proxy606 = reg610;
    always @ (posedge clk) reg610 <= reset ? 1'b0 : sel1115;
    assign proxy612 = reg616;
    always @ (posedge clk) reg616 <= reset ? 1'b0 : sel1368;
    assign proxy618 = reg631;
    assign ch_pe_req_t624 = {sel1314, sel1180, sel1177, sel1166};
    always @ (posedge clk) reg631 <= reset ? lit629 : ch_pe_req_t624;
    assign proxy633 = reg637;
    always @ (posedge clk) reg637 <= reset ? 1'b0 : sel1315;
    assign eq639 = reg419 == 4'h0;
    assign proxy640 = io_ctrl_start_data_part_start7[19:0];
    assign and641 = eq639 & io_ctrl_start_valid;
    assign sel642 = and641 ? proxy640 : reg70;
    assign proxy643 = io_ctrl_start_data_part_end8[19:0];
    assign sel644 = and641 ? proxy643 : reg76;
    assign ne645 = sel1234 != sel644;
    assign and647 = and641 & ne645;
    assign sel650 = and647 ? 4'h1 : reg419;
    assign eq652 = reg419 == 4'h1;
    assign inv653 = ~eq639;
    assign and654 = inv653 & eq652;
    assign sel656 = and654 ? 3'b1 : 3'b0;
    assign sll659 = reg70 << 20'h2;
    assign srl663 = sll659 >> 20'h6;
    assign sel666 = and654 ? srl663 : 20'h0;
    assign ne669 = reg285 != 8'h2;
    assign and672 = and654 & ne669;
    assign sel673 = and672 ? 1'b1 : 1'b0;
    assign and675 = and672 & io_lsu_rd_req_ready;
    assign sel676 = and675 ? 4'h2 : sel650;
    assign add679 = proxy_a_colind_stalls354 + 32'h1;
    assign inv681 = ~io_lsu_rd_req_ready;
    assign and682 = and672 & inv681;
    assign proxy683 = proxy349[159:128];
    assign sel684 = and682 ? add679 : proxy683;
    assign add686 = proxy_a_colind_stalls354 + 32'h1;
    assign inv688 = ~ne669;
    assign and689 = and654 & inv688;
    assign sel690 = and689 ? add686 : sel684;
    assign eq692 = reg419 == 4'h2;
    assign or693 = eq652 | eq639;
    assign inv694 = ~or693;
    assign and695 = inv694 & eq692;
    assign sel696 = and695 ? 3'b10 : sel656;
    assign sll698 = reg70 << 20'h2;
    assign srl701 = sll698 >> 20'h6;
    assign sel703 = and695 ? srl701 : sel666;
    assign ne705 = reg291 != 8'h2;
    assign and707 = and695 & ne705;
    assign sel708 = and707 ? 1'b1 : sel673;
    assign and710 = and707 & io_lsu_rd_req_ready;
    assign sel711 = and710 ? 4'h3 : sel676;
    assign add713 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv715 = ~io_lsu_rd_req_ready;
    assign and716 = and707 & inv715;
    assign proxy717 = proxy349[191:160];
    assign sel718 = and716 ? add713 : proxy717;
    assign add720 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv722 = ~ne705;
    assign and723 = and695 & inv722;
    assign sel724 = and723 ? add720 : sel718;
    assign eq726 = reg419 == 4'h3;
    assign and727 = bindout149 & bindout173;
    assign or729 = eq692 | eq652;
    assign or730 = or729 | eq639;
    assign inv731 = ~or730;
    assign and732 = inv731 & eq726;
    assign and733 = and732 & and727;
    assign sel734 = and733 ? bindout152 : reg322;
    assign and737 = reg70 & 20'hf;
    assign sll741 = and737 << 20'h5;
    assign srl743 = sel734 >> sll741;
    assign proxy744 = srl743;
    assign proxy745 = proxy744[19:0];
    assign sel746 = and733 ? proxy745 : reg82;
    assign sel747 = and733 ? 1'b1 : 1'b0;
    assign sel748 = and733 ? proxy175 : reg328;
    assign and750 = reg70 & 20'hf;
    assign sll753 = and750 << 20'h5;
    assign srl755 = sel748 >> sll753;
    assign proxy756 = srl755;
    assign proxy757 = proxy756[19:0];
    assign sel758 = and733 ? proxy757 : reg88;
    assign sel759 = and733 ? 1'b1 : 1'b0;
    assign and761 = reg70 & 20'hf;
    assign ne764 = and761 != 20'hf;
    assign add768 = reg70 + 20'h1;
    assign and771 = add768 & 20'hf;
    assign sll774 = and771 << 20'h5;
    assign srl776 = sel748 >> sll774;
    assign proxy777 = srl776;
    assign proxy778 = proxy777[19:0];
    assign and779 = and733 & ne764;
    assign sel780 = and779 ? proxy778 : reg94;
    assign sel782 = and779 ? 4'h6 : sel711;
    assign inv784 = ~ne764;
    assign and785 = and733 & inv784;
    assign sel786 = and785 ? 4'h4 : sel782;
    assign eq788 = reg419 == 4'h4;
    assign or789 = eq726 | eq692;
    assign or790 = or789 | eq652;
    assign or791 = or790 | eq639;
    assign inv792 = ~or791;
    assign and793 = inv792 & eq788;
    assign sel794 = and793 ? 3'b10 : sel696;
    assign sel795 = and793 ? 20'h0 : sel703;
    assign ne797 = reg291 != 8'h2;
    assign and799 = and793 & ne797;
    assign sel800 = and799 ? 1'b1 : sel708;
    assign and802 = and799 & io_lsu_rd_req_ready;
    assign sel803 = and802 ? 4'h5 : sel786;
    assign add805 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv807 = ~io_lsu_rd_req_ready;
    assign and808 = and799 & inv807;
    assign sel809 = and808 ? add805 : sel724;
    assign add811 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv813 = ~ne797;
    assign and814 = and793 & inv813;
    assign sel815 = and814 ? add811 : sel809;
    assign eq817 = reg419 == 4'h5;
    assign proxy818 = proxy175;
    assign or819 = eq788 | eq726;
    assign or820 = or819 | eq692;
    assign or821 = or820 | eq652;
    assign or822 = or821 | eq639;
    assign inv823 = ~or822;
    assign and824 = inv823 & eq817;
    assign and825 = and824 & bindout173;
    assign sel826 = and825 ? 1'b1 : sel759;
    assign proxy827 = proxy818[19:0];
    assign sel828 = and825 ? proxy827 : sel780;
    assign sel829 = and825 ? 4'h6 : sel803;
    assign add831 = proxy_a_rowptr_stalls355 + 32'h1;
    assign inv833 = ~bindout173;
    assign and834 = and824 & inv833;
    assign sel835 = and834 ? add831 : sel815;
    assign eq837 = reg419 == 4'h6;
    assign sll839 = reg82 << 20'h2;
    assign srl842 = sll839 >> 20'h6;
    assign eq844 = srl842 == reg107;
    assign sll847 = reg88 << 20'h2;
    assign srl850 = sll847 >> 20'h6;
    assign or852 = eq817 | eq788;
    assign or853 = or852 | eq726;
    assign or854 = or853 | eq692;
    assign or855 = or854 | eq652;
    assign or856 = or855 | eq639;
    assign inv857 = ~or856;
    assign and858 = inv857 & eq837;
    assign and859 = and858 & eq844;
    assign sel860 = and859 ? srl850 : reg113;
    assign sll862 = reg94 << 20'h2;
    assign add866 = sll862 + 20'h3f;
    assign srl869 = add866 >> 20'h6;
    assign sel871 = and859 ? srl869 : reg119;
    assign sel874 = and859 ? 4'ha : sel829;
    assign inv875 = ~eq844;
    assign and876 = and858 & inv875;
    assign sel877 = and876 ? srl842 : reg107;
    assign sel879 = and876 ? 4'h9 : sel874;
    assign eq882 = reg419 == 4'h7;
    assign or883 = eq837 | eq817;
    assign or884 = or883 | eq788;
    assign or885 = or884 | eq726;
    assign or886 = or885 | eq692;
    assign or887 = or886 | eq652;
    assign or888 = or887 | eq639;
    assign inv889 = ~or888;
    assign and890 = inv889 & eq882;
    assign sel891 = and890 ? 3'b110 : sel794;
    assign sel892 = and890 ? proxy96 : sel795;
    assign ne894 = reg315 != 8'h2;
    assign and896 = and890 & ne894;
    assign sel897 = and896 ? 1'b1 : sel800;
    assign and899 = and896 & io_lsu_rd_req_ready;
    assign sel900 = and899 ? 4'h8 : sel879;
    assign add902 = proxy_x_masks_stalls359 + 32'h1;
    assign inv904 = ~io_lsu_rd_req_ready;
    assign and905 = and896 & inv904;
    assign proxy906 = proxy349[319:288];
    assign sel907 = and905 ? add902 : proxy906;
    assign add909 = proxy_x_masks_stalls359 + 32'h1;
    assign inv911 = ~ne894;
    assign and912 = and890 & inv911;
    assign sel913 = and912 ? add909 : sel907;
    assign eq915 = reg419 == 4'h8;
    assign eq917 = 20'h0 == reg107;
    assign sll920 = reg88 << 20'h2;
    assign srl923 = sll920 >> 20'h6;
    assign or925 = eq882 | eq837;
    assign or926 = or925 | eq817;
    assign or927 = or926 | eq788;
    assign or928 = or927 | eq726;
    assign or929 = or928 | eq692;
    assign or930 = or929 | eq652;
    assign or931 = or930 | eq639;
    assign inv932 = ~or931;
    assign and933 = inv932 & eq915;
    assign and934 = and933 & bindout269;
    assign and935 = and934 & eq917;
    assign sel936 = and935 ? srl923 : sel860;
    assign sll938 = reg94 << 20'h2;
    assign add941 = sll938 + 20'h3f;
    assign srl944 = add941 >> 20'h6;
    assign sel946 = and935 ? srl944 : sel871;
    assign sel948 = and935 ? 4'ha : sel900;
    assign inv949 = ~eq917;
    assign and950 = and934 & inv949;
    assign sel951 = and950 ? 20'h0 : sel877;
    assign sel952 = and950 ? 4'h9 : sel948;
    assign add954 = proxy_x_masks_stalls359 + 32'h1;
    assign inv956 = ~bindout269;
    assign and957 = and933 & inv956;
    assign sel958 = and957 ? add954 : sel913;
    assign eq960 = reg419 == 4'h9;
    assign or961 = eq915 | eq882;
    assign or962 = or961 | eq837;
    assign or963 = or962 | eq817;
    assign or964 = or963 | eq788;
    assign or965 = or964 | eq726;
    assign or966 = or965 | eq692;
    assign or967 = or966 | eq652;
    assign or968 = or967 | eq639;
    assign inv969 = ~or968;
    assign and970 = inv969 & eq960;
    assign sel971 = and970 ? 3'b101 : sel891;
    assign sll973 = reg82 << 20'h2;
    assign srl976 = sll973 >> 20'h6;
    assign sel978 = and970 ? srl976 : sel892;
    assign ne980 = reg309 != 8'h2;
    assign and982 = and970 & ne980;
    assign sel983 = and982 ? 1'b1 : sel897;
    assign sll985 = reg88 << 20'h2;
    assign srl988 = sll985 >> 20'h6;
    assign and990 = and982 & io_lsu_rd_req_ready;
    assign sel991 = and990 ? srl988 : sel936;
    assign sll993 = reg94 << 20'h2;
    assign add996 = sll993 + 20'h3f;
    assign srl999 = add996 >> 20'h6;
    assign sel1001 = and990 ? srl999 : sel946;
    assign sel1003 = and990 ? 4'ha : sel952;
    assign add1005 = proxy_x_values_stalls358 + 32'h1;
    assign inv1007 = ~io_lsu_rd_req_ready;
    assign and1008 = and982 & inv1007;
    assign proxy1009 = proxy349[287:256];
    assign sel1010 = and1008 ? add1005 : proxy1009;
    assign add1012 = proxy_x_values_stalls358 + 32'h1;
    assign inv1014 = ~ne980;
    assign and1015 = and970 & inv1014;
    assign sel1016 = and1015 ? add1012 : sel1010;
    assign eq1018 = reg419 == 4'ha;
    assign or1019 = eq960 | eq915;
    assign or1020 = or1019 | eq882;
    assign or1021 = or1020 | eq837;
    assign or1022 = or1021 | eq817;
    assign or1023 = or1022 | eq788;
    assign or1024 = or1023 | eq726;
    assign or1025 = or1024 | eq692;
    assign or1026 = or1025 | eq652;
    assign or1027 = or1026 | eq639;
    assign inv1028 = ~or1027;
    assign and1029 = inv1028 & eq1018;
    assign sel1030 = and1029 ? 3'b11 : sel971;
    assign sel1031 = and1029 ? reg113 : sel978;
    assign ne1034 = reg297 != 8'h20;
    assign and1036 = and1029 & ne1034;
    assign sel1037 = and1036 ? 1'b1 : sel983;
    assign and1039 = and1036 & io_lsu_rd_req_ready;
    assign sel1040 = and1039 ? 4'hb : sel1003;
    assign add1042 = proxy_a_rowind_stalls356 + 32'h1;
    assign inv1044 = ~io_lsu_rd_req_ready;
    assign and1045 = and1036 & inv1044;
    assign proxy1046 = proxy349[223:192];
    assign sel1047 = and1045 ? add1042 : proxy1046;
    assign add1049 = proxy_a_rowind_stalls356 + 32'h1;
    assign inv1051 = ~ne1034;
    assign and1052 = and1029 & inv1051;
    assign sel1053 = and1052 ? add1049 : sel1047;
    assign eq1055 = reg419 == 4'hb;
    assign or1056 = eq1018 | eq960;
    assign or1057 = or1056 | eq915;
    assign or1058 = or1057 | eq882;
    assign or1059 = or1058 | eq837;
    assign or1060 = or1059 | eq817;
    assign or1061 = or1060 | eq788;
    assign or1062 = or1061 | eq726;
    assign or1063 = or1062 | eq692;
    assign or1064 = or1063 | eq652;
    assign or1065 = or1064 | eq639;
    assign inv1066 = ~or1065;
    assign and1067 = inv1066 & eq1055;
    assign sel1068 = and1067 ? 3'b100 : sel1030;
    assign sel1069 = and1067 ? reg113 : sel1031;
    assign ne1071 = reg303 != 8'h20;
    assign and1073 = and1067 & ne1071;
    assign sel1074 = and1073 ? 1'b1 : sel1037;
    assign and1075 = and1073 & io_lsu_rd_req_ready;
    assign sel1076 = and1075 ? 20'h0 : sel991;
    assign ne1077 = reg113 != reg119;
    assign and1079 = and1075 & ne1077;
    assign sel1080 = and1079 ? 4'ha : sel1040;
    assign inv1082 = ~ne1077;
    assign and1083 = and1075 & inv1082;
    assign sel1084 = and1083 ? 4'hc : sel1080;
    assign add1086 = proxy_a_values_stalls357 + 32'h1;
    assign inv1088 = ~io_lsu_rd_req_ready;
    assign and1089 = and1073 & inv1088;
    assign proxy1090 = proxy349[255:224];
    assign sel1091 = and1089 ? add1086 : proxy1090;
    assign add1093 = proxy_a_values_stalls357 + 32'h1;
    assign inv1095 = ~ne1071;
    assign and1096 = and1067 & inv1095;
    assign sel1097 = and1096 ? add1093 : sel1091;
    assign eq1099 = reg419 == 4'hc;
    assign or1100 = eq1055 | eq1018;
    assign or1101 = or1100 | eq960;
    assign or1102 = or1101 | eq915;
    assign or1103 = or1102 | eq882;
    assign or1104 = or1103 | eq837;
    assign or1105 = or1104 | eq817;
    assign or1106 = or1105 | eq788;
    assign or1107 = or1106 | eq726;
    assign or1108 = or1107 | eq692;
    assign or1109 = or1108 | eq652;
    assign or1110 = or1109 | eq639;
    assign inv1111 = ~or1110;
    assign and1112 = inv1111 & eq1099;
    assign and1113 = and1112 & bindout245;
    assign sel1114 = and1113 ? bindout248 : reg340;
    assign sel1115 = and1113 ? 1'b1 : 1'b0;
    assign and1117 = reg82 & 20'hf;
    assign sll1120 = and1117 << 20'h5;
    assign srl1122 = sel1114 >> sll1120;
    assign proxy1123 = srl1122;
    assign proxy1124 = proxy1123[31:0];
    assign sel1125 = and1113 ? proxy1124 : proxy134;
    assign and1127 = reg82 & 20'hf;
    assign sll1130 = and1127 << 20'h5;
    assign srl1132 = reg340 >> sll1130;
    assign proxy1133 = srl1132;
    assign proxy1134 = proxy1133[31:0];
    assign inv1135 = ~bindout245;
    assign and1136 = and1112 & inv1135;
    assign sel1137 = and1136 ? proxy1134 : sel1125;
    assign sel1139 = and1112 ? 4'hd : sel1084;
    assign eq1141 = reg419 == 4'hd;
    assign and1143 = reg88 & 20'hf;
    assign sll1146 = and1143 << 20'h5;
    assign srl1148 = bindout200 >> sll1146;
    assign proxy1149 = srl1148;
    assign proxy1150 = proxy1149[19:0];
    assign or1151 = eq1099 | eq1055;
    assign or1152 = or1151 | eq1018;
    assign or1153 = or1152 | eq960;
    assign or1154 = or1153 | eq915;
    assign or1155 = or1154 | eq882;
    assign or1156 = or1155 | eq837;
    assign or1157 = or1156 | eq817;
    assign or1158 = or1157 | eq788;
    assign or1159 = or1158 | eq726;
    assign or1160 = or1159 | eq692;
    assign or1161 = or1160 | eq652;
    assign or1162 = or1161 | eq639;
    assign inv1163 = ~or1162;
    assign and1164 = inv1163 & eq1141;
    assign sel1166 = and1164 ? proxy1150 : 20'h0;
    assign and1168 = reg88 & 20'hf;
    assign sll1171 = and1168 << 20'h5;
    assign srl1173 = bindout224 >> sll1171;
    assign proxy1174 = srl1173;
    assign proxy1175 = proxy1174[31:0];
    assign sel1177 = and1164 ? proxy1175 : 32'h0;
    assign proxy1178 = proxy128;
    assign sel1180 = and1164 ? proxy1178 : 32'h0;
    assign sel1182 = and1164 ? 1'b0 : 1'b0;
    assign sel1183 = and1164 ? 1'b1 : 1'b0;
    assign add1185 = reg88 + 20'h1;
    assign and1187 = and1164 & io_pe_ready;
    assign sel1188 = and1187 ? add1185 : sel758;
    assign ne1189 = reg88 != reg94;
    assign inv1201 = ~ne1189;
    assign and1202 = and1187 & inv1201;
    assign sel1206 = and1202 ? 4'he : sel1139;
    assign add1208 = proxy_execute_stalls360 + 32'h1;
    assign inv1210 = ~io_pe_ready;
    assign and1211 = and1164 & inv1210;
    assign proxy1212 = proxy349[351:320];
    assign sel1213 = and1211 ? add1208 : proxy1212;
    assign eq1215 = reg419 == 4'he;
    assign add1217 = reg70 + 20'h1;
    assign or1219 = eq1141 | eq1099;
    assign or1220 = or1219 | eq1055;
    assign or1221 = or1220 | eq1018;
    assign or1222 = or1221 | eq960;
    assign or1223 = or1222 | eq915;
    assign or1224 = or1223 | eq882;
    assign or1225 = or1224 | eq837;
    assign or1226 = or1225 | eq817;
    assign or1227 = or1226 | eq788;
    assign or1228 = or1227 | eq726;
    assign or1229 = or1228 | eq692;
    assign or1230 = or1229 | eq652;
    assign or1231 = or1230 | eq639;
    assign inv1232 = ~or1231;
    assign and1233 = inv1232 & eq1215;
    assign sel1234 = and1233 ? add1217 : sel642;
    assign ne1235 = reg70 != reg76;
    assign and1238 = reg70 & 20'hf;
    assign ne1241 = and1238 != 20'hf;
    assign and1244 = sel1234 & 20'hf;
    assign sll1247 = and1244 << 20'h5;
    assign srl1249 = reg322 >> sll1247;
    assign proxy1250 = srl1249;
    assign proxy1251 = proxy1250[19:0];
    assign and1252 = and1233 & ne1235;
    assign and1253 = and1252 & ne1241;
    assign sel1254 = and1253 ? proxy1251 : sel746;
    assign and1256 = sel1234 & 20'hf;
    assign sll1259 = and1256 << 20'h5;
    assign srl1261 = reg328 >> sll1259;
    assign proxy1262 = srl1261;
    assign proxy1263 = proxy1262[19:0];
    assign sel1264 = and1253 ? proxy1263 : sel1188;
    assign and1266 = reg70 & 20'hf;
    assign ne1269 = and1266 != 20'hf;
    assign add1272 = sel1234 + 20'h1;
    assign and1275 = add1272 & 20'hf;
    assign sll1278 = and1275 << 20'h5;
    assign srl1280 = reg328 >> sll1278;
    assign proxy1281 = srl1280;
    assign proxy1282 = proxy1281[19:0];
    assign and1283 = and1253 & ne1269;
    assign sel1284 = and1283 ? proxy1282 : sel828;
    assign sel1285 = and1283 ? 4'h6 : sel1206;
    assign inv1286 = ~ne1269;
    assign and1287 = and1253 & inv1286;
    assign sel1288 = and1287 ? 4'h4 : sel1285;
    assign inv1289 = ~ne1241;
    assign and1290 = and1252 & inv1289;
    assign sel1291 = and1290 ? 4'h1 : sel1288;
    assign inv1293 = ~ne1235;
    assign and1294 = and1233 & inv1293;
    assign sel1295 = and1294 ? 4'hf : sel1291;
    assign eq1297 = reg419 == 4'hf;
    assign or1298 = eq1215 | eq1141;
    assign or1299 = or1298 | eq1099;
    assign or1300 = or1299 | eq1055;
    assign or1301 = or1300 | eq1018;
    assign or1302 = or1301 | eq960;
    assign or1303 = or1302 | eq915;
    assign or1304 = or1303 | eq882;
    assign or1305 = or1304 | eq837;
    assign or1306 = or1305 | eq817;
    assign or1307 = or1306 | eq788;
    assign or1308 = or1307 | eq726;
    assign or1309 = or1308 | eq692;
    assign or1310 = or1309 | eq652;
    assign or1311 = or1310 | eq639;
    assign inv1312 = ~or1311;
    assign and1313 = inv1312 & eq1297;
    assign sel1314 = and1313 ? 1'b1 : sel1182;
    assign sel1315 = and1313 ? 1'b1 : sel1183;
    assign lt1317 = proxy_min_latency351 < 32'h0;
    assign sel1319 = lt1317 ? proxy_min_latency351 : 32'h0;
    assign eq1322 = proxy_min_latency351 == 32'h0;
    assign sel1324 = eq1322 ? 32'h0 : sel1319;
    assign and1326 = and1313 & io_pe_ready;
    assign proxy1327 = proxy349[63:32];
    assign sel1328 = and1326 ? sel1324 : proxy1327;
    assign gt1329 = proxy_min_latency351 > 32'h0;
    assign sel1331 = gt1329 ? proxy_min_latency351 : 32'h0;
    assign proxy1333 = proxy349[95:64];
    assign sel1334 = and1326 ? sel1331 : proxy1333;
    assign add1335 = proxy_total_latency353 + 32'h0;
    assign proxy1337 = proxy349[127:96];
    assign sel1338 = and1326 ? add1335 : proxy1337;
    assign add1340 = proxy_num_parts350 + 32'h1;
    assign proxy1342 = proxy349[31:0];
    assign sel1343 = and1326 ? add1340 : proxy1342;
    assign sel1344 = and1326 ? 4'h0 : sel1295;
    assign add1346 = proxy_execute_stalls360 + 32'h1;
    assign inv1348 = ~io_pe_ready;
    assign and1349 = and1313 & inv1348;
    assign sel1350 = and1349 ? add1346 : sel1213;
    assign or1352 = eq1297 | eq1215;
    assign or1353 = or1352 | eq1141;
    assign or1354 = or1353 | eq1099;
    assign or1355 = or1354 | eq1055;
    assign or1356 = or1355 | eq1018;
    assign or1357 = or1356 | eq960;
    assign or1358 = or1357 | eq915;
    assign or1359 = or1358 | eq882;
    assign or1360 = or1359 | eq837;
    assign or1361 = or1360 | eq817;
    assign or1362 = or1361 | eq788;
    assign or1363 = or1362 | eq726;
    assign or1364 = or1363 | eq692;
    assign or1365 = or1364 | eq652;
    assign or1366 = or1365 | eq639;
    assign inv1367 = ~or1366;
    assign sel1368 = inv1367 ? 1'b0 : proxy612;

    assign io_ctrl_start_ready = io_ctrl_start_ready11;
    assign io_ctrl_stats = io_ctrl_stats17;
    assign io_lsu_rd_req_valid = sel1074;
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
    wire io_enq_valid2; // #1550 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] io_enq_data5; // #1551 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_enq_ready10; // #1554 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_deq_valid13; // #1555 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] io_deq_data16; // #1556 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire io_deq_ready21; // #1559 /home/blaise/dev/cash/src/htl/pipe.h(9)
    wire[20:0] ch_pipe_data_t23; // #1560 /home/blaise/dev/cash/src/htl/pipe.h(17)
    wire proxy26; // #1563 /home/blaise/dev/cash/src/htl/pipe.h(18)
    wire[20:0] ch_pipe_data_t28; // #1564 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy32; // #1567 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy33; // #1568 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel36;
    reg[20:0] reg44;
    wire[20:0] proxy45; // #1575 unknown(0)
    wire proxy48; // #1578 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel49;
    reg reg53;
    wire proxy54; // #1581 unknown(0)
    wire[20:0] ch_pipe_data_t56; // #1582 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy60; // #1585 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy61; // #1586 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel64;
    reg[20:0] reg69;
    wire[20:0] proxy70; // #1593 unknown(0)
    wire proxy73; // #1596 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel74;
    reg reg77;
    wire proxy78; // #1599 unknown(0)
    wire[20:0] ch_pipe_data_t80; // #1600 /home/blaise/dev/cash/src/htl/pipe.h(20)
    wire proxy84; // #1603 /home/blaise/dev/cash/src/htl/pipe.h(21)
    wire[20:0] proxy85; // #1604 /home/blaise/dev/cash/src/htl/pipe.h(22)
    wire[20:0] sel88;
    reg[20:0] reg93;
    wire[20:0] proxy94; // #1611 unknown(0)
    wire proxy97; // #1614 /home/blaise/dev/cash/src/htl/pipe.h(23)
    wire sel98;
    reg reg101;
    wire proxy102; // #1617 unknown(0)

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
    wire[84:0] io_req_data5; // #1534 pe.cpp(14)
    wire[19:0] io_req_data_a_rowind6; // #1535 pe.cpp(14)
    wire[31:0] io_req_data_a_value7; // #1536 pe.cpp(14)
    wire[31:0] io_req_data_x_value8; // #1537 pe.cpp(14)
    wire io_req_data_is_end9; // #1538 pe.cpp(14)
    wire io_req_ready12; // #1539 pe.cpp(14)
    wire[533:0] io_lsu_wr_req_data18; // #1541 pe.cpp(14)
    wire[63:0] io_stats27; // #1546 pe.cpp(14)
    wire io_is_idle32; // #1549 pe.cpp(14)
    wire proxy35; // #1618 /home/blaise/dev/cash/src/module.h(33)
    wire bindin38;
    wire bindin40;
    wire bindin41;
    wire[20:0] proxy43; // #1619 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindin46;
    wire proxy48; // #1622 /home/blaise/dev/cash/src/module.h(33)
    wire bindout49;
    wire bindout52;
    wire[20:0] proxy54; // #1624 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_a_rowind55; // #1625 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_is_end56; // #1626 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindout57;
    wire proxy59; // #1627 /home/blaise/dev/cash/src/module.h(33)
    wire bindin60;
    wire proxy62; // #1696 /home/blaise/dev/cash/src/module.h(33)
    wire bindin64;
    wire bindin65;
    wire bindin66;
    wire[20:0] proxy68; // #1697 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_is_end70; // #1699 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindin71;
    wire bindout77;
    wire[20:0] proxy79; // #1702 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_a_rowind80; // #1703 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_is_end81; // #1704 /home/blaise/dev/cash/src/module.h(33)
    wire[20:0] bindout82;
    wire proxy84; // #1705 /home/blaise/dev/cash/src/module.h(33)
    wire bindin85;
    reg[31:0] mem86[0:31];
    reg[31:0] reg93; // #1706 pe.cpp(14)
    wire[31:0] proxy95; // #1709 pe.cpp(14)
    reg[31:0] reg99; // #1709 pe.cpp(14)
    reg[31:0] reg105; // #1712 pe.cpp(14)
    reg[31:0] reg111; // #1715 pe.cpp(14)
    wire[4:0] proxy115; // #1719 pe.cpp(14)
    wire[4:0] proxy117; // #1720 pe.cpp(14)
    reg[19:0] reg126; // #1722 pe.cpp(14)
    wire[63:0] proxy128; // #1725 pe.cpp(14)
    wire[31:0] proxy_write_value_stalls129; // #1726 pe.cpp(14)
    wire[31:0] proxy_write_mask_stalls130; // #1727 pe.cpp(14)
    wire[63:0] ch_pe_stats_t132; // #1728 /home/blaise/dev/cash/src/seq.h(17)
    reg[63:0] reg137; // #1725 pe.cpp(14)
    wire[31:0] proxy139;
    wire[31:0] sel140;
    reg[1:0] reg147; // #1733 pe.cpp(32)
    wire[31:0] sll150;
    wire[31:0] sll153;
    wire inv155;
    wire eq158;
    wire or160;
    wire proxy161; // #1743 unknown(0)
    wire inv162;
    wire[31:0] and164;
    wire eq167;
    wire and169;
    wire or171;
    wire proxy172; // #1749 unknown(0)
    wire eq174;
    wire eq177;
    wire and179;
    wire proxy180; // #1754 unknown(0)
    wire[31:0] and182;
    wire ne185;
    wire[31:0] sel188;
    wire and190;
    wire proxy191; // #1761 unknown(0)
    wire[31:0] proxy192; // #1762 pe.cpp(63)
    wire[31:0] proxy193; // #1763 pe.cpp(63)
    wire[31:0] fmult194;
    wire and196;
    wire proxy197; // #1765 unknown(0)
    wire[19:0] and200;
    wire[19:0] proxy201; // #1767 unknown(0)
    wire[4:0] proxy202; // #1768 unknown(0)
    wire[31:0] fadd203;
    wire proxy205; // #1770 pe.cpp(75)
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
    wire[19:0] proxy275; // #1800 unknown(0)
    wire[4:0] proxy276; // #1801 unknown(0)
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
    wire[511:0] proxy293; // #1805 pe.cpp(125)
    wire[4:0] proxy295; // #1806 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy299; // #1809 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy303; // #1812 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy307; // #1815 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy311; // #1818 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy315; // #1821 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy319; // #1824 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy323; // #1827 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy327; // #1830 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy331; // #1833 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy335; // #1836 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy339; // #1839 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy343; // #1842 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy347; // #1845 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy351; // #1848 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy355; // #1851 /home/blaise/dev/cash/src/bit.h(282)
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
    wire[511:0] proxy389; // #1861 pe.cpp(144)
    wire[4:0] proxy391; // #1862 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy395; // #1865 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy399; // #1868 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy403; // #1871 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy407; // #1874 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy411; // #1877 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy415; // #1880 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy419; // #1883 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy423; // #1886 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy427; // #1889 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy431; // #1892 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy435; // #1895 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy439; // #1898 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy443; // #1901 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy447; // #1904 /home/blaise/dev/cash/src/bit.h(282)
    wire[4:0] proxy451; // #1907 /home/blaise/dev/cash/src/bit.h(282)
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
    wire[479:0] proxy499; // #1925 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy501; // #1926 pe.cpp(165)
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
    wire[2:0] io_sel2; // #2472 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[71:0] io_in5; // #2473 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy6; // #2474 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy7; // #2475 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] proxy8; // #2476 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[23:0] io_out23; // #2489 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[2:0] proxy31; // #2495 /home/blaise/dev/cash/src/htl/xbar.h(20)
    wire eq40;
    wire[23:0] sel41;
    wire eq42;
    wire[23:0] sel43;
    wire eq44;
    wire[23:0] sel45;
    wire[23:0] proxy46; // #2500 unknown(0)

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
    wire[2:0] io_in2; // #2528 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy3; // #2529 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy4; // #2530 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy5; // #2531 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire[2:0] io_grant8; // #2532 /home/blaise/dev/cash/src/htl/arbiter.h(13)
    wire proxy22; // #2537 /home/blaise/dev/cash/src/seq.h(17)
    reg reg24; // #2536 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire proxy28; // #2540 /home/blaise/dev/cash/src/seq.h(17)
    reg reg30; // #2539 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire proxy46; // #2549 /home/blaise/dev/cash/src/seq.h(17)
    reg reg48; // #2548 /home/blaise/dev/cash/src/htl/arbiter.h(20)
    wire[2:0] proxy68; // #2560 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy70; // #2561 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy72; // #2562 /home/blaise/dev/cash/src/htl/arbiter.h(21)
    wire[2:0] proxy74; // #2563 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire and75;
    wire proxy76; // #2564 unknown(0)
    wire and78;
    wire proxy79; // #2566 unknown(0)
    wire orr82;
    wire inv84;
    wire and86;
    wire proxy87; // #2571 unknown(0)
    wire proxy89; // #2573 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire inv90;
    wire proxy92; // #2575 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire or93;
    wire and95;
    wire proxy96; // #2577 unknown(0)
    wire proxy97; // #2578 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire inv98;
    wire proxy100; // #2580 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire or101;
    wire and103;
    wire proxy104; // #2582 unknown(0)
    wire and105;
    wire proxy106; // #2583 unknown(0)
    wire inv109;
    wire and111;
    wire proxy112; // #2587 unknown(0)
    wire orr114;
    wire inv116;
    wire and118;
    wire proxy119; // #2591 unknown(0)
    wire proxy121; // #2593 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire inv122;
    wire proxy124; // #2595 /home/blaise/dev/cash/src/htl/arbiter.h(22)
    wire or125;
    wire and127;
    wire proxy128; // #2597 unknown(0)
    wire inv130;
    wire and132;
    wire proxy133; // #2600 unknown(0)
    wire inv135;
    wire and137;
    wire proxy138; // #2603 unknown(0)
    wire orr140;
    wire inv142;
    wire and144;
    wire proxy145; // #2607 unknown(0)

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
    wire io_in_0_valid2; // #2451 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_0_data5; // #2452 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_0_ready10; // #2455 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_valid13; // #2456 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_1_data16; // #2457 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_ready21; // #2460 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_valid24; // #2461 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_in_2_data27; // #2462 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_ready32; // #2465 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_out_valid35; // #2466 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[22:0] io_out_data38; // #2467 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] io_out_grant46; // #2471 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] proxy49; // #2505 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindin51;
    wire[71:0] proxy53; // #2506 /home/blaise/dev/cash/src/module.h(33)
    wire[71:0] bindin69;
    wire[23:0] proxy71; // #2522 /home/blaise/dev/cash/src/module.h(33)
    wire[23:0] proxy72; // #2523 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_valid73; // #2524 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] proxy_data74; // #2525 /home/blaise/dev/cash/src/module.h(33)
    wire[23:0] bindout77;
    wire[2:0] proxy79; // #2609 /home/blaise/dev/cash/src/module.h(33)
    wire bindin85;
    wire bindin87;
    wire[2:0] bindin88;
    wire[2:0] proxy90; // #2613 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout91;
    wire eq111;
    wire and113;
    wire proxy114; // #2625 unknown(0)
    wire eq117;
    wire and119;
    wire proxy120; // #2628 unknown(0)
    wire eq123;
    wire and125;
    wire proxy126; // #2631 unknown(0)

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
    wire[2:0] io_sel2; // #2678 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[1604:0] io_in5; // #2679 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy6; // #2680 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy7; // #2681 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] proxy8; // #2682 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[534:0] io_out26; // #2698 /home/blaise/dev/cash/src/htl/xbar.h(12)
    wire[2:0] proxy35; // #2705 /home/blaise/dev/cash/src/htl/xbar.h(20)
    wire eq44;
    wire[534:0] sel45;
    wire eq46;
    wire[534:0] sel47;
    wire eq48;
    wire[534:0] sel49;
    wire[534:0] proxy50; // #2710 unknown(0)

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
    wire io_in_0_valid2; // #2653 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_0_data5; // #2654 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_0_ready11; // #2658 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_valid14; // #2659 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_1_data17; // #2660 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_1_ready23; // #2664 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_valid26; // #2665 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_in_2_data29; // #2666 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_in_2_ready35; // #2670 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire io_out_valid38; // #2671 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[533:0] io_out_data41; // #2672 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] io_out_grant50; // #2677 /home/blaise/dev/cash/src/htl/arbiter.h(42)
    wire[2:0] proxy53; // #2716 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindin55;
    wire[1604:0] proxy57; // #2717 /home/blaise/dev/cash/src/module.h(33)
    wire[1604:0] bindin76;
    wire[534:0] proxy78; // #2736 /home/blaise/dev/cash/src/module.h(33)
    wire[534:0] proxy79; // #2737 /home/blaise/dev/cash/src/module.h(33)
    wire proxy_valid80; // #2738 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] proxy_data81; // #2739 /home/blaise/dev/cash/src/module.h(33)
    wire[534:0] bindout85;
    wire[2:0] proxy87; // #2824 /home/blaise/dev/cash/src/module.h(33)
    wire bindin93;
    wire bindin95;
    wire[2:0] bindin96;
    wire[2:0] proxy98; // #2828 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout99;
    wire eq119;
    wire and121;
    wire proxy122; // #2840 unknown(0)
    wire eq125;
    wire and127;
    wire proxy128; // #2843 unknown(0)
    wire eq131;
    wire and133;
    wire proxy134; // #2846 unknown(0)

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
    reg reg11; // #2872 wrcache.h(58)
    reg[19:0] reg18; // #2875 wrcache.h(58)
    wire proxy20; // #2878 wrcache.h(58)
    wire proxy22; // #2879 wrcache.h(58)
    reg reg38; // #2886 wrcache.h(58)
    wire io_enq_valid40; // #2889 wrcache.h(58)
    wire[533:0] io_enq_data43; // #2890 wrcache.h(58)
    wire[1:0] io_enq_data_owner44; // #2891 wrcache.h(58)
    wire[19:0] io_enq_data_tag45; // #2892 wrcache.h(58)
    wire[511:0] io_enq_data_data46; // #2893 wrcache.h(58)
    wire io_enq_ready49; // #2894 wrcache.h(58)
    wire[533:0] io_evict_data55; // #2896 wrcache.h(58)
    wire[511:0] proxy67;
    wire[511:0] sel68;
    wire[21:0] proxy72;
    wire[21:0] sel73;
    reg[2:0] reg80; // #2906 wrcache.h(72)
    wire[533:0] proxy82; // #2909 wrcache.h(73)
    wire[1:0] proxy_owner83; // #2910 wrcache.h(73)
    wire[19:0] proxy_tag84; // #2911 wrcache.h(73)
    wire[511:0] proxy_data85; // #2912 wrcache.h(73)
    reg[533:0] reg93; // #2909 wrcache.h(73)
    wire proxy94; // #2918 wrcache.h(76)
    wire proxy95; // #2919 wrcache.h(77)
    wire proxy97; // #2920 wrcache.h(78)
    wire proxy98; // #2921 wrcache.h(79)
    wire[533:0] entry_t99; // #2922 wrcache.h(84)
    wire[1:0] entry_t_owner100; // #2923 wrcache.h(84)
    wire[19:0] entry_t_tag101; // #2924 wrcache.h(84)
    wire proxy104; // #2927 /home/blaise/dev/cash/src/bit.h(282)
    wire[1:0] memport_owners106; // #2929 unknown(0)
    wire ne110;
    wire proxy112; // #2933 /home/blaise/dev/cash/src/bit.h(282)
    wire[19:0] memport_tag115; // #2936 unknown(0)
    wire eq116;
    wire and118;
    wire sel121;
    wire proxy122; // #2940 unknown(0)
    wire proxy124; // #2942 /home/blaise/dev/cash/src/bit.h(282)
    wire[1:0] memport_owners126; // #2944 unknown(0)
    wire[1:0] and128;
    wire ne131;
    wire sel134;
    wire proxy135; // #2950 unknown(0)
    wire proxy137; // #2952 /home/blaise/dev/cash/src/bit.h(282)
    wire[1:0] memport_owners139; // #2954 unknown(0)
    wire eq142;
    wire sel145;
    wire proxy146; // #2959 unknown(0)
    wire proxy147; // #2960 wrcache.h(97)
    reg reg149;
    wire proxy150; // #2962 unknown(0)
    wire proxy151; // #2963 wrcache.h(98)
    reg reg153;
    wire proxy154; // #2965 unknown(0)
    wire proxy155; // #2966 wrcache.h(99)
    reg reg157;
    wire proxy158; // #2968 unknown(0)
    wire proxy159; // #2969 wrcache.h(100)
    reg reg161;
    wire proxy162; // #2971 unknown(0)
    wire eq164;
    wire proxy165; // #2973 unknown(0)
    reg reg171; // #2974 wrcache.h(106)
    wire eq173;
    wire and174;
    wire sel175;
    wire[1:0] memport_owners176; // #2979 unknown(0)
    wire[1:0] and178;
    wire ne181;
    wire eq183;
    wire and185;
    wire and187;
    wire sel188;
    wire sel189;
    wire[511:0] or190;
    wire[511:0] sel192;
    wire[1:0] memport_owners193; // #2989 unknown(0)
    wire[1:0] or195;
    wire[1:0] proxy196; // #2991 unknown(0)
    wire[19:0] memport_tag198; // #2994 unknown(0)
    wire[21:0] tag_t200; // #2995 wrcache.h(119)
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
    wire[19:0] memport_tag223; // #3001 unknown(0)
    wire eq224;
    wire[1:0] memport_owners226; // #3004 unknown(0)
    wire ne229;
    wire and231;
    wire and233;
    wire sel234;
    wire sel235;
    wire sel236;
    wire[511:0] or237;
    wire[511:0] sel239;
    wire[1:0] memport_owners240; // #3012 unknown(0)
    wire[1:0] or242;
    wire[1:0] proxy243; // #3014 unknown(0)
    wire[19:0] memport_tag245; // #3017 unknown(0)
    wire[21:0] tag_t247; // #3018 wrcache.h(143)
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
    wire[21:0] tag_t269; // #3022 wrcache.h(163)
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
    wire[1:0] memport_owners289; // #3028 unknown(0)
    wire eq291;
    wire and293;
    wire sel294;
    wire[19:0] memport_tag296; // #3033 unknown(0)
    wire[21:0] tag_t298; // #3034 wrcache.h(186)
    wire[1:0] proxy301; // #3037 wrcache.h(29)
    wire[21:0] sel302;
    wire[2:0] sel304;
    wire[1:0] memport_owners305; // #3039 unknown(0)
    wire[1:0] and307;
    wire ne310;
    wire inv312;
    wire and313;
    wire and314;
    wire sel315;
    wire[1:0] inv316;
    wire[1:0] memport_owners318; // #3046 unknown(0)
    wire[1:0] and320;
    wire[1:0] proxy321; // #3048 unknown(0)
    wire[19:0] memport_tag323; // #3051 unknown(0)
    wire[21:0] tag_t325; // #3052 wrcache.h(194)
    wire[21:0] sel328;
    wire[2:0] sel329;
    wire eq331;
    wire or332;
    wire or333;
    wire inv334;
    wire and335;
    wire sel336;
    wire[1:0] sel338;
    wire[19:0] memport_tag340; // #3058 unknown(0)
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
    wire[1:0] memport_owners356; // #3062 unknown(0)
    wire ne359;
    wire and361;
    wire[1:0] sel362;
    wire[19:0] memport_tag364; // #3068 unknown(0)
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
    wire[19:0] io_qpi_rd_req_addr5; // #2374 lsu.cpp(19)
    wire[13:0] io_qpi_rd_req_mdata8; // #2375 lsu.cpp(19)
    wire io_qpi_rd_req_valid11; // #2376 lsu.cpp(19)
    wire[13:0] io_qpi_rd_rsp_mdata14; // #2377 lsu.cpp(19)
    wire[511:0] io_qpi_rd_rsp_data17; // #2378 lsu.cpp(19)
    wire[19:0] io_qpi_wr_req_addr26; // #2381 lsu.cpp(19)
    wire[13:0] io_qpi_wr_req_mdata29; // #2382 lsu.cpp(19)
    wire[511:0] io_qpi_wr_req_data32; // #2383 lsu.cpp(19)
    wire io_qpi_wr_req_valid35; // #2384 lsu.cpp(19)
    wire[511:0] io_ctx50; // #2389 lsu.cpp(19)
    wire[131:0] io_ctx_a51; // #2390 lsu.cpp(19)
    wire[19:0] io_ctx_a_col_ptr53; // #2392 lsu.cpp(19)
    wire[19:0] io_ctx_a_col_ind54; // #2393 lsu.cpp(19)
    wire[19:0] io_ctx_a_row_ptr55; // #2394 lsu.cpp(19)
    wire[19:0] io_ctx_a_row_ind56; // #2395 lsu.cpp(19)
    wire[19:0] io_ctx_a_values57; // #2396 lsu.cpp(19)
    wire[39:0] io_ctx_x58; // #2397 lsu.cpp(19)
    wire[19:0] io_ctx_x_values59; // #2398 lsu.cpp(19)
    wire[19:0] io_ctx_x_masks60; // #2399 lsu.cpp(19)
    wire[39:0] io_ctx_y61; // #2400 lsu.cpp(19)
    wire[19:0] io_ctx_y_values62; // #2401 lsu.cpp(19)
    wire[19:0] io_ctx_y_masks63; // #2402 lsu.cpp(19)
    wire[19:0] io_ctx_stats64; // #2403 lsu.cpp(19)
    wire io_ctrl_rd_req_valid68; // #2405 lsu.cpp(19)
    wire[22:0] io_ctrl_rd_req_data71; // #2406 lsu.cpp(19)
    wire io_ctrl_rd_req_ready76; // #2409 lsu.cpp(19)
    wire io_ctrl_wr_req_valid79; // #2410 lsu.cpp(19)
    wire[533:0] io_ctrl_wr_req_data82; // #2411 lsu.cpp(19)
    wire io_ctrl_wr_req_ready88; // #2415 lsu.cpp(19)
    wire io_ctrl_rd_rsp_valid91; // #2416 lsu.cpp(19)
    wire[514:0] io_ctrl_rd_rsp_data94; // #2417 lsu.cpp(19)
    wire[31:0] io_ctrl_outstanding_writes99; // #2420 lsu.cpp(19)
    wire io_walkers_0_rd_req_valid102; // #2421 lsu.cpp(19)
    wire[22:0] io_walkers_0_rd_req_data105; // #2422 lsu.cpp(19)
    wire io_walkers_0_rd_req_ready110; // #2425 lsu.cpp(19)
    wire io_walkers_0_rd_rsp_valid113; // #2426 lsu.cpp(19)
    wire[514:0] io_walkers_0_rd_rsp_data116; // #2427 lsu.cpp(19)
    wire io_walkers_1_rd_req_valid121; // #2430 lsu.cpp(19)
    wire[22:0] io_walkers_1_rd_req_data124; // #2431 lsu.cpp(19)
    wire io_walkers_1_rd_req_ready129; // #2434 lsu.cpp(19)
    wire io_walkers_1_rd_rsp_valid132; // #2435 lsu.cpp(19)
    wire[514:0] io_walkers_1_rd_rsp_data135; // #2436 lsu.cpp(19)
    wire io_PEs_0_wr_req_valid140; // #2439 lsu.cpp(19)
    wire[533:0] io_PEs_0_wr_req_data143; // #2440 lsu.cpp(19)
    wire io_PEs_0_wr_req_ready149; // #2444 lsu.cpp(19)
    wire io_PEs_1_wr_req_valid152; // #2445 lsu.cpp(19)
    wire[533:0] io_PEs_1_wr_req_data155; // #2446 lsu.cpp(19)
    wire io_PEs_1_wr_req_ready161; // #2450 lsu.cpp(19)
    wire proxy164; // #2632 /home/blaise/dev/cash/src/module.h(33)
    wire bindin167;
    wire bindin169;
    wire bindin170;
    wire[22:0] proxy172; // #2633 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin175;
    wire proxy177; // #2636 /home/blaise/dev/cash/src/module.h(33)
    wire bindout178;
    wire proxy180; // #2637 /home/blaise/dev/cash/src/module.h(33)
    wire bindin181;
    wire[22:0] proxy183; // #2638 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin186;
    wire proxy188; // #2641 /home/blaise/dev/cash/src/module.h(33)
    wire bindout189;
    wire proxy191; // #2642 /home/blaise/dev/cash/src/module.h(33)
    wire bindin192;
    wire[22:0] proxy194; // #2643 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin197;
    wire proxy199; // #2646 /home/blaise/dev/cash/src/module.h(33)
    wire bindout200;
    wire proxy202; // #2647 /home/blaise/dev/cash/src/module.h(33)
    wire bindout203;
    wire[22:0] proxy205; // #2648 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy_type206; // #2649 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_addr207; // #2650 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout208;
    wire proxy210; // #2651 /home/blaise/dev/cash/src/module.h(33)
    wire bindin211;
    wire[2:0] proxy213; // #2652 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] bindout214;
    wire proxy216; // #2847 /home/blaise/dev/cash/src/module.h(33)
    wire bindin218;
    wire bindin219;
    wire bindin220;
    wire[533:0] proxy222; // #2848 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin226;
    wire proxy228; // #2852 /home/blaise/dev/cash/src/module.h(33)
    wire bindout229;
    wire proxy231; // #2853 /home/blaise/dev/cash/src/module.h(33)
    wire bindin232;
    wire[533:0] proxy234; // #2854 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin238;
    wire proxy240; // #2858 /home/blaise/dev/cash/src/module.h(33)
    wire bindout241;
    wire proxy243; // #2859 /home/blaise/dev/cash/src/module.h(33)
    wire bindin244;
    wire[533:0] proxy246; // #2860 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin250;
    wire proxy252; // #2864 /home/blaise/dev/cash/src/module.h(33)
    wire bindout253;
    wire bindout256;
    wire[533:0] proxy258; // #2866 /home/blaise/dev/cash/src/module.h(33)
    wire[1:0] proxy_type259; // #2867 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_addr260; // #2868 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] proxy_data261; // #2869 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout262;
    wire proxy264; // #2870 /home/blaise/dev/cash/src/module.h(33)
    wire bindin265;
    wire[2:0] bindout268;
    wire bindin272;
    wire bindin273;
    wire bindin274;
    wire[533:0] proxy276; // #3079 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin280;
    wire bindout283;
    wire bindout286;
    wire[533:0] proxy288; // #3085 /home/blaise/dev/cash/src/module.h(33)
    wire[1:0] proxy_owner289; // #3086 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] proxy_tag290; // #3087 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] proxy_data291; // #3088 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout292;
    wire proxy294; // #3089 /home/blaise/dev/cash/src/module.h(33)
    wire bindin295;
    wire bindin298;
    wire inv299;
    wire proxy300; // #3091 unknown(0)
    wire proxy302; // #3092 lsu.cpp(47)
    wire proxy304; // #3093 /home/blaise/dev/cash/src/seq.h(17)
    reg reg307; // #3092 lsu.cpp(47)
    wire[19:0] proxy309; // #3095 lsu.cpp(48)
    wire[19:0] proxy311; // #3096 /home/blaise/dev/cash/src/seq.h(17)
    reg[19:0] reg314; // #3095 lsu.cpp(48)
    wire[13:0] proxy316; // #3098 lsu.cpp(49)
    wire[13:0] proxy318; // #3099 /home/blaise/dev/cash/src/seq.h(17)
    reg[13:0] reg321; // #3098 lsu.cpp(49)
    wire[2:0] proxy322; // #3101 lsu.cpp(53)
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
    wire[19:0] proxy376; // #3109 unknown(0)
    wire[5:0] ch_rd_mdata_t378; // #3110 lsu.cpp(55)
    wire[2:0] proxy381; // #3113 lsu.h(39)
    wire[7:0] proxy383; // #3114 /home/blaise/dev/cash/src/bit.h(1020)
    wire[13:0] proxy385; // #3115 lsu.cpp(55)
    reg[2:0] reg391; // #3116 lsu.cpp(70)
    reg reg397; // #3119 lsu.cpp(71)
    wire eq401;
    wire eq404;
    wire proxy405; // #3126 unknown(0)
    wire inv406;
    wire and408;
    wire proxy409; // #3128 unknown(0)
    wire[533:0] proxy411; // #3129 lsu.cpp(81)
    wire[1:0] proxy_type412; // #3130 lsu.cpp(81)
    wire[19:0] proxy_addr413; // #3131 lsu.cpp(81)
    wire[511:0] proxy_data414; // #3132 lsu.cpp(81)
    wire[533:0] ch_lsu_wr_req_t416; // #3133 /home/blaise/dev/cash/src/seq.h(17)
    reg[533:0] reg422; // #3129 lsu.cpp(81)
    wire[2:0] proxy424; // #3138 lsu.cpp(82)
    reg[2:0] reg428; // #3138 lsu.cpp(82)
    wire and429;
    wire or433;
    wire[31:0] sel439;
    wire[31:0] sel440;
    wire[31:0] proxy443; // #3147 lsu.cpp(89)
    reg[31:0] reg447; // #3147 lsu.cpp(89)
    wire proxy449; // #3150 lsu.cpp(91)
    reg reg453; // #3150 lsu.cpp(91)
    wire[19:0] proxy455; // #3153 lsu.cpp(92)
    reg[19:0] reg459; // #3153 lsu.cpp(92)
    wire[511:0] proxy461; // #3156 lsu.cpp(93)
    reg[511:0] reg466; // #3156 lsu.cpp(93)
    wire[13:0] proxy468; // #3159 lsu.cpp(94)
    reg[13:0] reg472; // #3159 lsu.cpp(94)
    wire eq474;
    wire[4:0] ch_wr_mdata_t476; // #3163 lsu.cpp(100)
    wire[1:0] proxy479; // #3166 lsu.cpp(101)
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
    wire[8:0] proxy500; // #3171 /home/blaise/dev/cash/src/bit.h(1020)
    wire[13:0] proxy502; // #3172 lsu.cpp(103)
    wire[13:0] sel503;
    wire sel505;
    wire proxy506; // #3173 /home/blaise/dev/cash/src/bit.h(1020)
    wire[2:0] proxy508; // #3174 lsu.cpp(109)
    wire[4:0] ch_wr_mdata_t510; // #3175 lsu.cpp(110)
    wire[1:0] proxy513; // #3178 lsu.h(44)
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
    wire[8:0] proxy534; // #3184 /home/blaise/dev/cash/src/bit.h(1020)
    wire[13:0] proxy536; // #3185 lsu.cpp(113)
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
    wire[1:0] proxy593; // #3199 lsu.cpp(173)
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
    wire[5:0] proxy629; // #3202 lsu.cpp(19)
    wire[2:0] proxy_type630; // #3203 lsu.cpp(19)
    wire[2:0] proxy_owner631; // #3204 lsu.cpp(19)
    wire eq633;
    wire and635;
    wire proxy636; // #3207 unknown(0)
    wire eq638;
    wire and640;
    wire proxy641; // #3210 unknown(0)
    wire eq643;
    wire and645;
    wire proxy646; // #3213 unknown(0)

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
    wire io_enq_ready8; // #3294 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire io_deq_valid11; // #3295 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[511:0] io_deq_data14; // #3296 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[2:0] io_size20; // #3298 /home/blaise/dev/cash/src/htl/queue.h(12)
    wire[2:0] proxy23; // #3299 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy25; // #3300 /home/blaise/dev/cash/src/seq.h(17)
    reg[2:0] reg30; // #3299 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy32; // #3302 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[2:0] proxy34; // #3303 /home/blaise/dev/cash/src/seq.h(17)
    reg[2:0] reg36; // #3302 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire[1:0] proxy38; // #3305 /home/blaise/dev/cash/src/htl/queue.h(27)
    wire[1:0] proxy40; // #3306 /home/blaise/dev/cash/src/htl/queue.h(28)
    wire and41;
    wire and43;
    wire[2:0] add47;
    wire[2:0] sel49;
    wire[2:0] proxy50; // #3311 unknown(0)
    wire[2:0] add52;
    wire[2:0] sel54;
    wire[2:0] proxy55; // #3314 unknown(0)
    reg[511:0] mem56[0:3];
    wire[511:0] proxy58;
    wire[511:0] sel59;
    wire ne61;
    wire proxy62; // #3317 unknown(0)
    wire proxy63; // #3318 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire proxy64; // #3319 /home/blaise/dev/cash/src/htl/queue.h(25)
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // #3322 unknown(0)
    wire[2:0] sub71;
    wire[2:0] proxy72; // #3323 unknown(0)

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
    wire[95:0] lit521 = 96'h0;
    wire[63:0] lit531 = 64'h0;
    wire[63:0] lit534 = 64'h1;
    wire[415:0] lit695 = 416'h0;
    wire[511:0] lit783 = 512'h0;
    wire[543:0] lit832 = 544'h20;
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
    wire[63:0] proxy91; // #755 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindin92;
    wire[351:0] proxy94; // #756 /home/blaise/dev/cash/src/module.h(33)
    wire[351:0] bindout106;
    wire proxy108; // #768 /home/blaise/dev/cash/src/module.h(33)
    wire bindout109;
    wire[22:0] proxy111; // #769 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout114;
    wire proxy116; // #772 /home/blaise/dev/cash/src/module.h(33)
    wire bindin117;
    wire proxy119; // #773 /home/blaise/dev/cash/src/module.h(33)
    wire bindin120;
    wire[514:0] proxy122; // #774 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindin125;
    wire proxy127; // #777 /home/blaise/dev/cash/src/module.h(33)
    wire bindout128;
    wire[84:0] proxy130; // #778 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindout135;
    wire proxy137; // #783 /home/blaise/dev/cash/src/module.h(33)
    wire bindin138;
    wire bindin142;
    wire bindin143;
    wire bindin144;
    wire[63:0] bindin150;
    wire bindout153;
    wire[63:0] proxy155; // #1504 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindin156;
    wire[351:0] proxy158; // #1505 /home/blaise/dev/cash/src/module.h(33)
    wire[351:0] bindout170;
    wire proxy172; // #1517 /home/blaise/dev/cash/src/module.h(33)
    wire bindout173;
    wire[22:0] proxy175; // #1518 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindout178;
    wire proxy180; // #1521 /home/blaise/dev/cash/src/module.h(33)
    wire bindin181;
    wire proxy183; // #1522 /home/blaise/dev/cash/src/module.h(33)
    wire bindin184;
    wire[514:0] proxy186; // #1523 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindin189;
    wire proxy191; // #1526 /home/blaise/dev/cash/src/module.h(33)
    wire bindout192;
    wire[84:0] proxy194; // #1527 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindout199;
    wire proxy201; // #1532 /home/blaise/dev/cash/src/module.h(33)
    wire bindin202;
    wire proxy204; // #1936 /home/blaise/dev/cash/src/module.h(33)
    wire bindin206;
    wire bindin207;
    wire bindin208;
    wire[84:0] proxy210; // #1937 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindin215;
    wire proxy217; // #1942 /home/blaise/dev/cash/src/module.h(33)
    wire bindout218;
    wire proxy220; // #1943 /home/blaise/dev/cash/src/module.h(33)
    wire bindout221;
    wire[533:0] proxy223; // #1944 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout227;
    wire proxy229; // #1948 /home/blaise/dev/cash/src/module.h(33)
    wire bindin230;
    wire[63:0] proxy232; // #1949 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindout235;
    wire bindout238;
    wire proxy240; // #2356 /home/blaise/dev/cash/src/module.h(33)
    wire bindin242;
    wire bindin243;
    wire bindin244;
    wire[84:0] proxy246; // #2357 /home/blaise/dev/cash/src/module.h(33)
    wire[84:0] bindin251;
    wire proxy253; // #2362 /home/blaise/dev/cash/src/module.h(33)
    wire bindout254;
    wire proxy256; // #2363 /home/blaise/dev/cash/src/module.h(33)
    wire bindout257;
    wire[533:0] proxy259; // #2364 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindout263;
    wire proxy265; // #2368 /home/blaise/dev/cash/src/module.h(33)
    wire bindin266;
    wire[63:0] proxy268; // #2369 /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] bindout271;
    wire bindout274;
    wire proxy276; // #3214 /home/blaise/dev/cash/src/module.h(33)
    wire bindin278;
    wire bindin279;
    wire bindin280;
    wire[19:0] proxy282; // #3215 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] bindout283;
    wire[13:0] proxy285; // #3216 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindout286;
    wire proxy288; // #3217 /home/blaise/dev/cash/src/module.h(33)
    wire bindout289;
    wire[13:0] proxy291; // #3218 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin292;
    wire[511:0] proxy294; // #3219 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin295;
    wire proxy297; // #3220 /home/blaise/dev/cash/src/module.h(33)
    wire bindin298;
    wire proxy300; // #3221 /home/blaise/dev/cash/src/module.h(33)
    wire bindin301;
    wire[19:0] proxy303; // #3222 /home/blaise/dev/cash/src/module.h(33)
    wire[19:0] bindout304;
    wire[13:0] proxy306; // #3223 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindout307;
    wire[511:0] proxy309; // #3224 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout310;
    wire proxy312; // #3225 /home/blaise/dev/cash/src/module.h(33)
    wire bindout313;
    wire[13:0] proxy315; // #3226 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin316;
    wire proxy318; // #3227 /home/blaise/dev/cash/src/module.h(33)
    wire bindin319;
    wire[13:0] proxy321; // #3228 /home/blaise/dev/cash/src/module.h(33)
    wire[13:0] bindin322;
    wire proxy324; // #3229 /home/blaise/dev/cash/src/module.h(33)
    wire bindin325;
    wire[511:0] proxy327; // #3230 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin343;
    wire bindin346;
    wire[22:0] proxy348; // #3247 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy_type349; // #3248 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin351;
    wire bindout354;
    wire bindin357;
    wire[533:0] proxy359; // #3252 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin363;
    wire bindout366;
    wire bindout369;
    wire[514:0] proxy371; // #3258 /home/blaise/dev/cash/src/module.h(33)
    wire[2:0] proxy_type372; // #3259 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] proxy_data373; // #3260 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout374;
    wire[31:0] bindout377;
    wire proxy379; // #3262 /home/blaise/dev/cash/src/module.h(33)
    wire bindin380;
    wire[22:0] proxy382; // #3263 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin385;
    wire proxy387; // #3266 /home/blaise/dev/cash/src/module.h(33)
    wire bindout388;
    wire proxy390; // #3267 /home/blaise/dev/cash/src/module.h(33)
    wire bindout391;
    wire[514:0] proxy393; // #3268 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout396;
    wire proxy398; // #3271 /home/blaise/dev/cash/src/module.h(33)
    wire bindin399;
    wire[22:0] proxy401; // #3272 /home/blaise/dev/cash/src/module.h(33)
    wire[22:0] bindin404;
    wire proxy406; // #3275 /home/blaise/dev/cash/src/module.h(33)
    wire bindout407;
    wire proxy409; // #3276 /home/blaise/dev/cash/src/module.h(33)
    wire bindout410;
    wire[514:0] proxy412; // #3277 /home/blaise/dev/cash/src/module.h(33)
    wire[514:0] bindout415;
    wire proxy417; // #3280 /home/blaise/dev/cash/src/module.h(33)
    wire bindin418;
    wire[533:0] proxy420; // #3281 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin424;
    wire proxy426; // #3285 /home/blaise/dev/cash/src/module.h(33)
    wire bindout427;
    wire proxy429; // #3286 /home/blaise/dev/cash/src/module.h(33)
    wire bindin430;
    wire[533:0] proxy432; // #3287 /home/blaise/dev/cash/src/module.h(33)
    wire[533:0] bindin436;
    wire proxy438; // #3291 /home/blaise/dev/cash/src/module.h(33)
    wire bindout439;
    wire proxy441; // #3324 /home/blaise/dev/cash/src/module.h(33)
    wire bindin443;
    wire bindin444;
    wire bindin445;
    wire[511:0] proxy447; // #3325 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindin448;
    wire bindout454;
    wire[511:0] proxy456; // #3328 /home/blaise/dev/cash/src/module.h(33)
    wire[511:0] bindout457;
    wire proxy459; // #3329 /home/blaise/dev/cash/src/module.h(33)
    wire bindin460;
    wire[543:0] proxy465; // #3331 spmv.cpp(15)
    wire[543:0] proxy467; // #3332 /home/blaise/dev/cash/src/seq.h(17)
    reg[543:0] reg470; // #3331 spmv.cpp(15)
    reg[4:0] reg477; // #3334 spmv.cpp(15)
    wire[31:0] proxy481; // #3338 /home/blaise/dev/cash/src/seq.h(17)
    reg[31:0] reg484; // #3337 spmv.cpp(15)
    reg[19:0] reg491; // #3340 spmv.cpp(15)
    reg[19:0] reg497; // #3343 spmv.cpp(15)
    reg[19:0] reg503; // #3346 spmv.cpp(15)
    wire[1:0] proxy505; // #3349 spmv.cpp(15)
    reg[1:0] reg510; // #3349 spmv.cpp(15)
    wire[95:0] proxy512; // #3352 spmv.cpp(15)
    wire[31:0] proxy_a_colptr_stalls513; // #3353 spmv.cpp(15)
    wire[95:0] ch_ctrl_stats_t517; // #3356 /home/blaise/dev/cash/src/seq.h(17)
    reg[95:0] reg523; // #3352 spmv.cpp(15)
    wire[19:0] proxy525; // #3361 spmv.cpp(15)
    wire[19:0] proxy526; // #3362 aal.h(74)
    wire[63:0] proxy528; // #3363 spmv.cpp(35)
    wire[63:0] proxy530; // #3364 /home/blaise/dev/cash/src/seq.h(17)
    reg[63:0] reg533; // #3363 spmv.cpp(35)
    wire[63:0] add536;
    wire[63:0] proxy537; // #3367 unknown(0)
    reg[2:0] reg544; // #3368 spmv.cpp(49)
    wire proxy546; // #3371 spmv.cpp(52)
    reg reg551; // #3371 spmv.cpp(52)
    wire eq553;
    wire and555;
    wire proxy556; // #3376 unknown(0)
    wire[30:0] proxy558; // #3377 /home/blaise/dev/cash/src/bit.h(1020)
    wire[31:0] proxy560; // #3378 spmv.cpp(64)
    wire eq562;
    wire and564;
    wire and566;
    wire proxy567; // #3382 unknown(0)
    wire[30:0] proxy568; // #3383 /home/blaise/dev/cash/src/bit.h(1020)
    wire[31:0] proxy570; // #3384 spmv.cpp(63)
    wire[31:0] add571;
    wire[31:0] sub573;
    wire[31:0] proxy574; // #3386 unknown(0)
    wire and575;
    wire proxy576; // #3387 unknown(0)
    wire and578;
    wire and580;
    wire proxy581; // #3390 unknown(0)
    wire eq583;
    wire ne585;
    wire and587;
    wire and588;
    wire[19:0] sel589;
    wire[31:0] add592;
    wire[31:0] sll596;
    wire[31:0] add600;
    wire[31:0] srl604;
    wire[31:0] proxy605; // #3401 unknown(0)
    wire[19:0] proxy606; // #3402 unknown(0)
    wire[19:0] sel607;
    wire sel608;
    wire[2:0] sel610;
    wire inv612;
    wire and613;
    wire sel614;
    wire eq616;
    wire inv617;
    wire and618;
    wire[2:0] sel620;
    wire[19:0] sel622;
    wire ne625;
    wire and627;
    wire sel628;
    wire[19:0] add631;
    wire and633;
    wire[19:0] sel634;
    wire eq635;
    wire and638;
    wire[2:0] sel639;
    wire[31:0] add641;
    wire inv643;
    wire and644;
    wire[31:0] proxy645;
    wire[31:0] sel646;
    wire[31:0] add648;
    wire inv650;
    wire and651;
    wire[31:0] sel652;
    wire eq654;
    wire eq655;
    wire and657;
    wire or660;
    wire inv661;
    wire and662;
    wire and663;
    wire[2:0] sel664;
    wire eq666;
    wire or668;
    wire or669;
    wire inv670;
    wire and671;
    wire[1:0] sel673;
    wire sel674;
    wire and676;
    wire[2:0] sel677;
    wire eq679;
    wire or681;
    wire or682;
    wire or683;
    wire inv684;
    wire and685;
    wire[1:0] sel686;
    wire[17:0] proxy688; // #3418 /home/blaise/dev/cash/src/bit.h(1020)
    wire[19:0] proxy690; // #3419 /home/blaise/dev/cash/src/bit.h(417)
    wire[19:0] proxy691; // #3420 spmv.cpp(131)
    wire[19:0] sel693;
    wire[1:0] proxy694; // #3421 spmv.cpp(132)
    wire[415:0] proxy696; // #3422 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy698; // #3423 /home/blaise/dev/cash/src/bit.h(417)
    wire[511:0] proxy699; // #3424 spmv.cpp(254)
    wire[415:0] ch_stats_t702; // #3426 spmv.cpp(256)
    wire[95:0] proxy718; // #3442 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy720; // #3443 /home/blaise/dev/cash/src/bit.h(417)
    wire[511:0] proxy721; // #3444 spmv.cpp(259)
    wire[415:0] ch_stats_t724; // #3446 spmv.cpp(261)
    wire[95:0] proxy740; // #3462 /home/blaise/dev/cash/src/bit.h(1020)
    wire[511:0] proxy742; // #3463 /home/blaise/dev/cash/src/bit.h(417)
    wire[511:0] proxy743; // #3464 spmv.cpp(264)
    wire eq744;
    wire[511:0] sel745;
    wire eq746;
    wire[511:0] sel747;
    wire[511:0] sel750;
    wire sel751;
    wire[1:0] add753;
    wire and755;
    wire[1:0] sel756;
    wire eq758;
    wire and761;
    wire[2:0] sel762;
    wire eq764;
    wire eq766;
    wire or768;
    wire or769;
    wire or770;
    wire or771;
    wire inv772;
    wire and773;
    wire and774;
    wire[2:0] sel775;
    wire sel776;
    reg[1:0] reg789; // #3473 spmv.cpp(175)
    wire eq791;
    wire and792;
    wire sel793;
    wire eq795;
    wire and798;
    wire[511:0] proxy799;
    wire[4:0] sel802;
    wire[479:0] proxy804;
    wire[31:0] proxy805;
    wire[31:0] proxy806;
    wire[31:0] sel807;
    wire[479:0] proxy808;
    wire[479:0] proxy809;
    wire[479:0] sel810;
    wire inv811;
    wire and812;
    wire[479:0] sel813;
    wire[31:0] proxy814;
    wire[31:0] proxy815;
    wire[31:0] sel816;
    wire[4:0] sel818;
    wire[1:0] sel819;
    wire eq821;
    wire[63:0] proxy822; // #3482 spmv.cpp(15)
    wire[63:0] proxy823; // #3483 spmv.cpp(203)
    wire[63:0] ch_dcsc_part_t824; // #3484 spmv.cpp(203)
    wire inv827;
    wire and828;
    wire and829;
    wire[63:0] sel830;
    wire sel831;
    wire[543:0] srl834;
    wire[543:0] proxy835; // #3488 unknown(0)
    wire[31:0] proxy836;
    wire[31:0] sel837;
    wire[479:0] proxy838;
    wire[479:0] sel839;
    wire[31:0] proxy840;
    wire[31:0] sel841;
    wire[19:0] add843;
    wire[19:0] sel845;
    wire[4:0] sub848;
    wire[4:0] sel850;
    wire ne852;
    wire ne854;
    wire and856;
    wire and858;
    wire[1:0] sel859;
    wire inv860;
    wire and861;
    wire[1:0] sel862;
    wire inv863;
    wire and864;
    wire[1:0] sel865;
    wire eq867;
    wire[63:0] proxy868; // #3498 spmv.cpp(15)
    wire[63:0] proxy869; // #3499 spmv.cpp(203)
    wire[63:0] ch_dcsc_part_t870; // #3500 spmv.cpp(203)
    wire or873;
    wire inv874;
    wire and875;
    wire and876;
    wire[63:0] sel877;
    wire sel878;
    wire[543:0] srl880;
    wire[543:0] proxy881; // #3504 unknown(0)
    wire[31:0] proxy882;
    wire[31:0] sel883;
    wire[479:0] proxy884;
    wire[479:0] sel885;
    wire[31:0] proxy886;
    wire[31:0] sel887;
    wire[19:0] add889;
    wire[19:0] sel891;
    wire[4:0] sub893;
    wire[4:0] sel895;
    wire ne897;
    wire ne899;
    wire and901;
    wire and903;
    wire[1:0] sel904;
    wire inv905;
    wire and906;
    wire[1:0] sel907;
    wire inv908;
    wire and909;
    wire[1:0] sel910;

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
    assign io_done71 = proxy546;
    assign bindin77 = clk;
    assign bindin79 = reset;
    spmv_dcsc_walk __module1__(.clk(bindin77), .reset(bindin79), .io_ctrl_start_valid(bindin80), .io_ctrl_start_data(bindin86), .io_ctrl_timer(bindin92), .io_lsu_rd_req_ready(bindin117), .io_lsu_rd_rsp_valid(bindin120), .io_lsu_rd_rsp_data(bindin125), .io_pe_ready(bindin138), .io_ctrl_start_ready(bindout89), .io_ctrl_stats(bindout106), .io_lsu_rd_req_valid(bindout109), .io_lsu_rd_req_data(bindout114), .io_pe_valid(bindout128), .io_pe_data(bindout135));
    assign bindin80 = sel831;
    assign bindin86 = sel830;
    assign proxy91 = proxy528;
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
    assign bindin144 = sel878;
    assign bindin150 = sel877;
    assign proxy155 = proxy528;
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
    assign bindin346 = sel628;
    assign proxy348 = {sel622, sel620};
    assign proxy_type349 = proxy348[2:0];
    assign bindin351 = proxy348;
    assign bindin357 = sel751;
    assign proxy359 = {sel750, sel693, sel686};
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
    assign proxy441 = proxy556;
    assign bindin443 = clk;
    assign bindin444 = reset;
    ch_queue_1 __module29__(.clk(bindin443), .reset(bindin444), .io_enq_valid(bindin445), .io_enq_data(bindin448), .io_deq_ready(bindin460), .io_deq_valid(bindout454), .io_deq_data(bindout457));
    assign bindin445 = proxy441;
    assign proxy447 = proxy_data373;
    assign bindin448 = proxy447;
    assign proxy456 = bindout457;
    assign proxy459 = sel793;
    assign bindin460 = proxy459;
    assign proxy465 = reg470;
    assign proxy467 = {sel887, sel885, sel883};
    always @ (posedge clk) reg470 <= reset ? lit468 : proxy467;
    always @ (posedge clk) reg477 <= reset ? 5'b0 : sel895;
    assign proxy481 = proxy574;
    always @ (posedge clk) reg484 <= reset ? 32'h0 : proxy481;
    always @ (posedge clk) reg491 <= reset ? 20'h0 : sel634;
    always @ (posedge clk) reg497 <= reset ? 20'h0 : sel607;
    always @ (posedge clk) reg503 <= reset ? 20'h0 : sel891;
    assign proxy505 = reg510;
    always @ (posedge clk) reg510 <= reset ? 2'b0 : sel756;
    assign proxy512 = reg523;
    assign proxy_a_colptr_stalls513 = proxy512[31:0];
    assign ch_ctrl_stats_t517 = {proxy512[95:32], sel652};
    always @ (posedge clk) reg523 <= reset ? lit521 : ch_ctrl_stats_t517;
    assign proxy525 = proxy526;
    assign proxy526 = io_ctx_a_num_parts52[19:0];
    assign proxy528 = reg533;
    assign proxy530 = proxy537;
    always @ (posedge clk) reg533 <= reset ? lit531 : proxy530;
    assign add536 = proxy528 + lit534;
    assign proxy537 = add536;
    always @ (posedge clk) reg544 <= reset ? 3'b0 : sel775;
    assign proxy546 = reg551;
    always @ (posedge clk) reg551 <= reset ? 1'b0 : sel776;
    assign eq553 = proxy_type372 == 3'b0;
    assign and555 = bindout369 & eq553;
    assign proxy556 = and555;
    assign proxy558 = 31'b0;
    assign proxy560 = {proxy558, proxy459};
    assign eq562 = proxy_type349 == 3'b0;
    assign and564 = sel628 & bindout354;
    assign and566 = and564 & eq562;
    assign proxy567 = and566;
    assign proxy568 = 31'b0;
    assign proxy570 = {proxy568, proxy567};
    assign add571 = reg484 + proxy570;
    assign sub573 = add571 - proxy560;
    assign proxy574 = sub573;
    assign and575 = bindout89 & bindout238;
    assign proxy576 = proxy581;
    assign and578 = and575 & bindout153;
    assign and580 = and578 & bindout274;
    assign proxy581 = and580;
    assign eq583 = reg544 == 3'b0;
    assign ne585 = io_ctx_a_num_parts52 != 32'h0;
    assign and587 = eq583 & io_start;
    assign and588 = and587 & ne585;
    assign sel589 = and588 ? 20'h0 : reg491;
    assign add592 = io_ctx_a_num_parts52 + 32'h1;
    assign sll596 = add592 << 32'h2;
    assign add600 = sll596 + 32'h3f;
    assign srl604 = add600 >> 32'h6;
    assign proxy605 = srl604;
    assign proxy606 = proxy605[19:0];
    assign sel607 = and588 ? proxy606 : reg497;
    assign sel608 = and588 ? 1'b0 : proxy546;
    assign sel610 = and588 ? 3'b1 : reg544;
    assign inv612 = ~ne585;
    assign and613 = and587 & inv612;
    assign sel614 = and613 ? 1'b1 : sel608;
    assign eq616 = reg544 == 3'b1;
    assign inv617 = ~eq583;
    assign and618 = inv617 & eq616;
    assign sel620 = and618 ? 3'b0 : 3'b0;
    assign sel622 = and618 ? reg491 : 20'h0;
    assign ne625 = reg484 != 32'h4;
    assign and627 = and618 & ne625;
    assign sel628 = and627 ? 1'b1 : 1'b0;
    assign add631 = reg491 + 20'h1;
    assign and633 = and627 & bindout354;
    assign sel634 = and633 ? add631 : sel589;
    assign eq635 = reg491 == reg497;
    assign and638 = and633 & eq635;
    assign sel639 = and638 ? 3'b10 : sel610;
    assign add641 = proxy_a_colptr_stalls513 + 32'h1;
    assign inv643 = ~bindout354;
    assign and644 = and627 & inv643;
    assign proxy645 = proxy512[31:0];
    assign sel646 = and644 ? add641 : proxy645;
    assign add648 = proxy_a_colptr_stalls513 + 32'h1;
    assign inv650 = ~ne625;
    assign and651 = and618 & inv650;
    assign sel652 = and651 ? add648 : sel646;
    assign eq654 = reg544 == 3'b10;
    assign eq655 = reg503 == proxy525;
    assign and657 = eq655 & proxy576;
    assign or660 = eq616 | eq583;
    assign inv661 = ~or660;
    assign and662 = inv661 & eq654;
    assign and663 = and662 & and657;
    assign sel664 = and663 ? 3'b11 : sel639;
    assign eq666 = reg544 == 3'b11;
    assign or668 = eq654 | eq616;
    assign or669 = or668 | eq583;
    assign inv670 = ~or669;
    assign and671 = inv670 & eq666;
    assign sel673 = and671 ? 2'b1 : 2'b0;
    assign sel674 = and671 ? 1'b1 : 1'b0;
    assign and676 = and671 & bindout366;
    assign sel677 = and676 ? 3'b100 : sel664;
    assign eq679 = reg544 == 3'b100;
    assign or681 = eq666 | eq654;
    assign or682 = or681 | eq616;
    assign or683 = or682 | eq583;
    assign inv684 = ~or683;
    assign and685 = inv684 & eq679;
    assign sel686 = and685 ? 2'b10 : sel673;
    assign proxy688 = 18'b0;
    assign proxy690 = {proxy688, proxy505};
    assign proxy691 = proxy690;
    assign sel693 = and685 ? proxy691 : 20'h0;
    assign proxy694 = proxy505;
    assign proxy696 = lit695;
    assign proxy698 = {proxy696, proxy512};
    assign proxy699 = proxy698;
    assign ch_stats_t702 = {proxy232, proxy94};
    assign proxy718 = lit521;
    assign proxy720 = {proxy718, ch_stats_t702};
    assign proxy721 = proxy720;
    assign ch_stats_t724 = {proxy268, proxy158};
    assign proxy740 = lit521;
    assign proxy742 = {proxy740, ch_stats_t724};
    assign proxy743 = proxy742;
    assign eq744 = proxy694 == 2'b1;
    assign sel745 = eq744 ? proxy721 : proxy743;
    assign eq746 = proxy694 == 2'b0;
    assign sel747 = eq746 ? proxy699 : sel745;
    assign sel750 = and685 ? sel747 : lit783;
    assign sel751 = and685 ? 1'b1 : sel674;
    assign add753 = proxy505 + 2'b1;
    assign and755 = and685 & bindout366;
    assign sel756 = and755 ? add753 : proxy505;
    assign eq758 = proxy505 == 2'b10;
    assign and761 = and755 & eq758;
    assign sel762 = and761 ? 3'b101 : sel677;
    assign eq764 = reg544 == 3'b101;
    assign eq766 = bindout377 == 32'h0;
    assign or768 = eq679 | eq666;
    assign or769 = or768 | eq654;
    assign or770 = or769 | eq616;
    assign or771 = or770 | eq583;
    assign inv772 = ~or771;
    assign and773 = inv772 & eq764;
    assign and774 = and773 & eq766;
    assign sel775 = and774 ? 3'b0 : sel762;
    assign sel776 = and774 ? 1'b1 : sel614;
    always @ (posedge clk) reg789 <= reset ? 2'b0 : sel910;
    assign eq791 = reg789 == 2'b0;
    assign and792 = eq791 & bindout454;
    assign sel793 = and792 ? 1'b1 : 1'b0;
    assign eq795 = reg477 == 5'b0;
    assign and798 = and792 & eq795;
    assign proxy799 = proxy465[511:0];
    assign sel802 = and798 ? 5'b10000 : reg477;
    assign proxy804 = proxy456[479:0];
    assign proxy805 = proxy456[31:0];
    assign proxy806 = proxy799[31:0];
    assign sel807 = and798 ? proxy805 : proxy806;
    assign proxy808 = proxy456[511:32];
    assign proxy809 = proxy799[511:32];
    assign sel810 = and798 ? proxy808 : proxy809;
    assign inv811 = ~eq795;
    assign and812 = and792 & inv811;
    assign sel813 = and812 ? proxy804 : sel810;
    assign proxy814 = proxy456[511:480];
    assign proxy815 = proxy465[543:512];
    assign sel816 = and812 ? proxy814 : proxy815;
    assign sel818 = and812 ? 5'b10001 : sel802;
    assign sel819 = and792 ? 2'b1 : reg789;
    assign eq821 = reg789 == 2'b1;
    assign proxy822 = proxy465[63:0];
    assign proxy823 = proxy822;
    assign ch_dcsc_part_t824 = proxy823;
    assign inv827 = ~eq791;
    assign and828 = inv827 & eq821;
    assign and829 = and828 & bindout89;
    assign sel830 = and829 ? ch_dcsc_part_t824 : lit531;
    assign sel831 = and829 ? 1'b1 : 1'b0;
    assign srl834 = proxy465 >> lit832;
    assign proxy835 = srl834;
    assign proxy836 = proxy835[31:0];
    assign sel837 = and829 ? proxy836 : sel807;
    assign proxy838 = proxy835[511:32];
    assign sel839 = and829 ? proxy838 : sel813;
    assign proxy840 = proxy835[543:512];
    assign sel841 = and829 ? proxy840 : sel816;
    assign add843 = reg503 + 20'h1;
    assign sel845 = and829 ? add843 : reg503;
    assign sub848 = reg477 - 5'b1;
    assign sel850 = and829 ? sub848 : sel818;
    assign ne852 = reg477 != 5'b1;
    assign ne854 = reg503 != proxy525;
    assign and856 = ne854 & ne852;
    assign and858 = and829 & and856;
    assign sel859 = and858 ? 2'b10 : sel819;
    assign inv860 = ~and856;
    assign and861 = and829 & inv860;
    assign sel862 = and861 ? 2'b0 : sel859;
    assign inv863 = ~bindout89;
    assign and864 = and828 & inv863;
    assign sel865 = and864 ? 2'b10 : sel862;
    assign eq867 = reg789 == 2'b10;
    assign proxy868 = proxy465[63:0];
    assign proxy869 = proxy868;
    assign ch_dcsc_part_t870 = proxy869;
    assign or873 = eq821 | eq791;
    assign inv874 = ~or873;
    assign and875 = inv874 & eq867;
    assign and876 = and875 & bindout153;
    assign sel877 = and876 ? ch_dcsc_part_t870 : lit531;
    assign sel878 = and876 ? 1'b1 : 1'b0;
    assign srl880 = proxy465 >> lit832;
    assign proxy881 = srl880;
    assign proxy882 = proxy881[31:0];
    assign sel883 = and876 ? proxy882 : sel837;
    assign proxy884 = proxy881[511:32];
    assign sel885 = and876 ? proxy884 : sel839;
    assign proxy886 = proxy881[543:512];
    assign sel887 = and876 ? proxy886 : sel841;
    assign add889 = reg503 + 20'h1;
    assign sel891 = and876 ? add889 : sel845;
    assign sub893 = reg477 - 5'b1;
    assign sel895 = and876 ? sub893 : sel850;
    assign ne897 = reg477 != 5'b1;
    assign ne899 = reg503 != proxy525;
    assign and901 = ne899 & ne897;
    assign and903 = and876 & and901;
    assign sel904 = and903 ? 2'b1 : sel865;
    assign inv905 = ~and901;
    assign and906 = and876 & inv905;
    assign sel907 = and906 ? 2'b0 : sel904;
    assign inv908 = ~bindout153;
    assign and909 = and875 & inv908;
    assign sel910 = and909 ? 2'b1 : sel907;

    assign io_qpi_rd_req_addr = io_qpi_rd_req_addr5;
    assign io_qpi_rd_req_mdata = io_qpi_rd_req_mdata8;
    assign io_qpi_rd_req_valid = io_qpi_rd_req_valid11;
    assign io_qpi_wr_req_addr = io_qpi_wr_req_addr26;
    assign io_qpi_wr_req_mdata = io_qpi_wr_req_mdata29;
    assign io_qpi_wr_req_data = io_qpi_wr_req_data32;
    assign io_qpi_wr_req_valid = io_qpi_wr_req_valid35;
    assign io_done = io_done71;

endmodule
