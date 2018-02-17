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
    wire io_enq_ready8; // /home/blaise/dev/cash/src/htl/queue.h(12) @var112
    wire io_deq_valid11; // /home/blaise/dev/cash/src/htl/queue.h(12) @var113
    wire[511:0] io_deq_data14; // /home/blaise/dev/cash/src/htl/queue.h(12) @var114
    wire[1:0] io_size20; // /home/blaise/dev/cash/src/htl/queue.h(12) @var116
    wire[1:0] proxy23; // /home/blaise/dev/cash/src/htl/queue.h(25) @var117
    wire[1:0] proxy25; // /home/blaise/dev/cash/src/seq.h(17) @var118
    reg[1:0] reg30; // /home/blaise/dev/cash/src/htl/queue.h(25) @var117
    wire[1:0] proxy32; // /home/blaise/dev/cash/src/htl/queue.h(25) @var120
    wire[1:0] proxy34; // /home/blaise/dev/cash/src/seq.h(17) @var121
    reg[1:0] reg36; // /home/blaise/dev/cash/src/htl/queue.h(25) @var120
    wire proxy38; // /home/blaise/dev/cash/src/htl/queue.h(27) @var123
    wire proxy40; // /home/blaise/dev/cash/src/htl/queue.h(28) @var124
    wire and41;
    wire and43;
    wire[1:0] add47;
    wire[1:0] sel49;
    wire[1:0] proxy50; // @var129
    wire[1:0] add52;
    wire[1:0] sel54;
    wire[1:0] proxy55; // @var132
    reg[511:0] mem56[0:1];
    wire[511:0] proxy58; // /home/blaise/dev/cash/src/htl/queue.h(37)
    wire[511:0] sel59; // /home/blaise/dev/cash/src/htl/queue.h(37)
    wire ne61;
    wire proxy62; // @var135
    wire proxy63; // @var136
    wire proxy64; // @var137
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // @var140
    wire[1:0] sub71;
    wire[1:0] proxy72; // @var141

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
    wire io_enq_ready8; // /home/blaise/dev/cash/src/htl/queue.h(12) @var190
    wire io_deq_valid11; // /home/blaise/dev/cash/src/htl/queue.h(12) @var191
    wire[511:0] io_deq_data14; // /home/blaise/dev/cash/src/htl/queue.h(12) @var192
    wire[5:0] io_size20; // /home/blaise/dev/cash/src/htl/queue.h(12) @var194
    wire[5:0] proxy23; // /home/blaise/dev/cash/src/htl/queue.h(25) @var195
    wire[5:0] proxy25; // /home/blaise/dev/cash/src/seq.h(17) @var196
    reg[5:0] reg30; // /home/blaise/dev/cash/src/htl/queue.h(25) @var195
    wire[5:0] proxy32; // /home/blaise/dev/cash/src/htl/queue.h(25) @var198
    wire[5:0] proxy34; // /home/blaise/dev/cash/src/seq.h(17) @var199
    reg[5:0] reg36; // /home/blaise/dev/cash/src/htl/queue.h(25) @var198
    wire[4:0] proxy38; // /home/blaise/dev/cash/src/htl/queue.h(27) @var201
    wire[4:0] proxy40; // /home/blaise/dev/cash/src/htl/queue.h(28) @var202
    wire and41;
    wire and43;
    wire[5:0] add47;
    wire[5:0] sel49;
    wire[5:0] proxy50; // @var207
    wire[5:0] add52;
    wire[5:0] sel54;
    wire[5:0] proxy55; // @var210
    reg[511:0] mem56[0:31];
    wire[511:0] proxy58; // /home/blaise/dev/cash/src/htl/queue.h(37)
    wire[511:0] sel59; // /home/blaise/dev/cash/src/htl/queue.h(37)
    wire ne61;
    wire proxy62; // @var213
    wire proxy63; // @var214
    wire proxy64; // @var215
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // @var218
    wire[5:0] sub71;
    wire[5:0] proxy72; // @var219

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
    wire[84:0] lit641 = 85'b0;
    wire[63:0] io_ctrl_start_data5; // dcsc_walk.cpp(34) @var36
    wire[63:0] proxy6; // part(0) @var37
    wire[31:0] proxy7; // start(0) @var38
    wire[31:0] proxy8; // end(0) @var39
    wire io_ctrl_start_ready11; // dcsc_walk.cpp(34) @var40
    wire[351:0] io_ctrl_stats17; // dcsc_walk.cpp(34) @var42
    wire[22:0] io_lsu_rd_req_data34; // dcsc_walk.cpp(34) @var55
    wire[2:0] proxy35; // type(0) @var56
    wire[514:0] io_lsu_rd_rsp_data45; // dcsc_walk.cpp(34) @var60
    wire[2:0] proxy46; // type(0) @var61
    wire[511:0] proxy47; // data(0) @var62
    wire io_pe_valid50; // dcsc_walk.cpp(34) @var63
    wire[84:0] io_pe_data53; // dcsc_walk.cpp(34) @var64
    reg[19:0] reg70; // dcsc_walk.cpp(34) @var70
    reg[19:0] reg76; // dcsc_walk.cpp(34) @var73
    reg[19:0] reg82; // dcsc_walk.cpp(34) @var76
    reg[19:0] reg88; // dcsc_walk.cpp(34) @var79
    reg[19:0] reg94; // dcsc_walk.cpp(34) @var82
    reg[19:0] reg100; // dcsc_walk.cpp(34) @var85
    reg[19:0] reg107; // dcsc_walk.cpp(34) @var88
    reg[19:0] reg113; // dcsc_walk.cpp(34) @var91
    reg[19:0] reg119; // dcsc_walk.cpp(34) @var94
    reg[19:0] reg125; // dcsc_walk.cpp(34) @var97
    reg[19:0] reg131; // dcsc_walk.cpp(34) @var100
    reg[5:0] reg138; // dcsc_walk.cpp(34) @var103
    wire[31:0] proxy140; // dcsc_walk.cpp(34) @var106
    reg[31:0] reg145; // dcsc_walk.cpp(34) @var106
    wire[31:0] proxy146; // /home/blaise/dev/cash/src/seq.h(20) @var109
    wire proxy148; // /home/blaise/dev/cash/src/module.h(33) @var142
    wire bindin150;
    wire bindin151;
    wire bindin152;
    wire[511:0] proxy154; // /home/blaise/dev/cash/src/module.h(33) @var143
    wire[511:0] bindin155;
    wire bindout161;
    wire[511:0] bindout164;
    wire proxy166; // /home/blaise/dev/cash/src/module.h(33) @var147
    wire bindin167;
    wire proxy172; // /home/blaise/dev/cash/src/module.h(33) @var181
    wire bindin174;
    wire bindin175;
    wire bindin176;
    wire[511:0] proxy178; // /home/blaise/dev/cash/src/module.h(33) @var182
    wire[511:0] bindin179;
    wire bindout185;
    wire[511:0] proxy187; // /home/blaise/dev/cash/src/module.h(33) @var185
    wire[511:0] bindout188;
    wire proxy190; // /home/blaise/dev/cash/src/module.h(33) @var186
    wire bindin191;
    wire proxy196; // /home/blaise/dev/cash/src/module.h(33) @var220
    wire bindin198;
    wire bindin199;
    wire bindin200;
    wire[511:0] proxy202; // /home/blaise/dev/cash/src/module.h(33) @var221
    wire[511:0] bindin203;
    wire[511:0] bindout212;
    wire proxy214; // /home/blaise/dev/cash/src/module.h(33) @var225
    wire bindin215;
    wire proxy220; // /home/blaise/dev/cash/src/module.h(33) @var259
    wire bindin222;
    wire bindin223;
    wire bindin224;
    wire[511:0] proxy226; // /home/blaise/dev/cash/src/module.h(33) @var260
    wire[511:0] bindin227;
    wire[511:0] bindout236;
    wire proxy238; // /home/blaise/dev/cash/src/module.h(33) @var264
    wire bindin239;
    wire[5:0] bindout242;
    wire proxy244; // /home/blaise/dev/cash/src/module.h(33) @var298
    wire bindin246;
    wire bindin247;
    wire bindin248;
    wire[511:0] proxy250; // /home/blaise/dev/cash/src/module.h(33) @var299
    wire[511:0] bindin251;
    wire bindout257;
    wire[511:0] bindout260;
    wire proxy262; // /home/blaise/dev/cash/src/module.h(33) @var303
    wire bindin263;
    wire proxy268; // /home/blaise/dev/cash/src/module.h(33) @var337
    wire bindin270;
    wire bindin271;
    wire bindin272;
    wire[511:0] proxy274; // /home/blaise/dev/cash/src/module.h(33) @var338
    wire[511:0] bindin275;
    wire bindout281;
    wire[511:0] bindout284;
    wire proxy286; // /home/blaise/dev/cash/src/module.h(33) @var342
    wire bindin287;
    reg[7:0] reg297; // dcsc_walk.cpp(34) @var344
    reg[7:0] reg303; // dcsc_walk.cpp(34) @var347
    reg[7:0] reg309; // dcsc_walk.cpp(34) @var350
    reg[7:0] reg315; // dcsc_walk.cpp(34) @var353
    reg[7:0] reg321; // dcsc_walk.cpp(34) @var356
    reg[7:0] reg327; // dcsc_walk.cpp(34) @var359
    reg[511:0] reg334; // dcsc_walk.cpp(34) @var362
    reg[511:0] reg340; // dcsc_walk.cpp(34) @var365
    reg[511:0] reg346; // dcsc_walk.cpp(34) @var368
    reg[511:0] reg352; // dcsc_walk.cpp(34) @var371
    reg[31:0] reg358; // dcsc_walk.cpp(34) @var374
    reg[63:0] reg365; // dcsc_walk.cpp(34) @var377
    wire[351:0] proxy367; // dcsc_walk.cpp(34) @var380
    wire[31:0] proxy368; // num_parts(0) @var381
    wire[31:0] proxy369; // min_latency(0) @var382
    wire[31:0] proxy371; // total_latency(0) @var384
    wire[31:0] proxy372; // a_colind_stalls(0) @var385
    wire[31:0] proxy373; // a_rowptr_stalls(0) @var386
    wire[31:0] proxy374; // a_rowind_stalls(0) @var387
    wire[31:0] proxy375; // a_values_stalls(0) @var388
    wire[31:0] proxy376; // x_values_stalls(0) @var389
    wire[31:0] proxy377; // x_masks_stalls(0) @var390
    wire[31:0] proxy378; // execute_stalls(0) @var391
    wire[351:0] ch_walker_stats_t380; // /home/blaise/dev/cash/src/seq.h(17) @var392
    reg[351:0] reg394; // dcsc_walk.cpp(34) @var380
    wire eq397;
    wire and399;
    wire proxy400; // @var407
    wire eq403;
    wire and405;
    wire proxy406; // @var410
    wire eq409;
    wire and411;
    wire proxy412; // @var413
    wire eq415;
    wire and417;
    wire proxy418; // @var416
    wire eq421;
    wire and423;
    wire proxy424; // @var419
    wire eq427;
    wire and429;
    wire proxy430; // @var422
    reg[4:0] reg437; // dcsc_walk.cpp(64) @var423
    wire eq439;
    wire proxy440; // @var427
    wire eq442;
    wire and444;
    wire and446;
    wire proxy448; // dcsc_walk.cpp(72) @var432
    wire eq451;
    wire and453;
    wire eq456;
    wire and458;
    wire[7:0] add462;
    wire[7:0] sub465;
    wire[7:0] sel467; // dcsc_walk.cpp(73)
    wire eq469;
    wire and471;
    wire and473;
    wire proxy475; // dcsc_walk.cpp(72) @var447
    wire eq477;
    wire and479;
    wire eq482;
    wire and484;
    wire[7:0] add487;
    wire[7:0] sub490;
    wire[7:0] sel492; // dcsc_walk.cpp(73)
    wire eq494;
    wire and496;
    wire and498;
    wire proxy500; // dcsc_walk.cpp(72) @var462
    wire eq502;
    wire and504;
    wire eq507;
    wire and509;
    wire[7:0] add512;
    wire[7:0] sub515;
    wire[7:0] sel517; // dcsc_walk.cpp(73)
    wire eq519;
    wire and521;
    wire and523;
    wire proxy525; // dcsc_walk.cpp(72) @var477
    wire eq527;
    wire and529;
    wire eq532;
    wire and534;
    wire[7:0] add537;
    wire[7:0] sub540;
    wire[7:0] sel542; // dcsc_walk.cpp(73)
    wire eq544;
    wire and546;
    wire and548;
    wire proxy550; // dcsc_walk.cpp(72) @var492
    wire eq552;
    wire and554;
    wire eq557;
    wire and559;
    wire[7:0] add562;
    wire[7:0] sub565;
    wire[7:0] sel567; // dcsc_walk.cpp(73)
    wire eq569;
    wire and571;
    wire and573;
    wire proxy575; // dcsc_walk.cpp(72) @var507
    wire eq577;
    wire and579;
    wire eq582;
    wire and584;
    wire[7:0] add587;
    wire[7:0] sub590;
    wire[7:0] sel592; // dcsc_walk.cpp(73)
    wire proxy594; // dcsc_walk.cpp(104) @var518
    reg reg598; // dcsc_walk.cpp(104) @var518
    wire proxy600; // dcsc_walk.cpp(105) @var521
    reg reg604; // dcsc_walk.cpp(105) @var521
    wire proxy606; // dcsc_walk.cpp(106) @var524
    reg reg610; // dcsc_walk.cpp(106) @var524
    wire proxy612; // dcsc_walk.cpp(107) @var527
    reg reg616; // dcsc_walk.cpp(107) @var527
    wire proxy618; // dcsc_walk.cpp(108) @var530
    reg reg622; // dcsc_walk.cpp(108) @var530
    wire proxy624; // dcsc_walk.cpp(109) @var533
    reg reg628; // dcsc_walk.cpp(109) @var533
    wire[84:0] proxy630; // dcsc_walk.cpp(112) @var536
    wire[84:0] ch_pe_req_t636; // /home/blaise/dev/cash/src/seq.h(17) @var541
    reg[84:0] reg643; // dcsc_walk.cpp(112) @var536
    wire proxy645; // dcsc_walk.cpp(113) @var547
    reg reg649; // dcsc_walk.cpp(113) @var547
    wire[19:0] proxy653; // dcsc_walk.cpp(141) @var551
    wire[19:0] proxy655; // dcsc_walk.cpp(142) @var552
    wire[19:0] sub658;
    wire[19:0] sll664;
    wire[19:0] srl668;
    wire ne672;
    wire[31:0] add678;
    wire[31:0] add681;
    wire[19:0] sll685;
    wire[19:0] srl688;
    wire ne691;
    wire[31:0] add695;
    wire[31:0] add698;
    wire and701;
    wire[19:0] and705;
    wire[19:0] sll709;
    wire[511:0] srl711;
    wire[511:0] proxy712; // @var583
    wire[19:0] proxy714; // dcsc_walk.cpp(193) @var584
    wire[19:0] and716;
    wire[19:0] sll719;
    wire[511:0] srl721;
    wire[511:0] proxy722; // @var589
    wire[19:0] proxy724; // dcsc_walk.cpp(198) @var590
    wire[19:0] and726;
    wire ne729;
    wire[19:0] add735;
    wire[19:0] and738;
    wire[19:0] sll741;
    wire[511:0] srl743;
    wire[511:0] proxy744; // @var602
    wire[19:0] proxy746; // dcsc_walk.cpp(212) @var603
    wire[19:0] add750;
    wire[19:0] sll753;
    wire[19:0] srl756;
    wire ne759;
    wire[31:0] add763;
    wire[31:0] add766;
    wire[19:0] proxy770; // dcsc_walk.cpp(240) @var618
    wire[31:0] add772;
    wire[19:0] sub776;
    wire[19:0] srl779;
    wire[19:0] sll782;
    wire[19:0] srl785;
    wire eq787;
    wire[19:0] and790;
    wire[19:0] sll793;
    wire[511:0] srl795;
    wire[511:0] proxy796; // @var635
    wire[31:0] proxy798; // dcsc_walk.cpp(257) @var636
    wire[19:0] and801;
    wire[31:0] sll804;
    wire[31:0] and806;
    wire ne809;
    wire[19:0] sll816;
    wire[19:0] srl819;
    wire eq821;
    wire ne827;
    wire[31:0] add831;
    wire[31:0] add834;
    wire[19:0] srl838;
    wire[19:0] and841;
    wire[19:0] sll844;
    wire[511:0] srl846;
    wire[511:0] proxy847; // @var664
    wire[31:0] proxy849; // dcsc_walk.cpp(312) @var665
    wire[19:0] and851;
    wire[31:0] sll854;
    wire[31:0] and856;
    wire ne859;
    wire[31:0] add862;
    wire[19:0] sll866;
    wire[19:0] srl869;
    wire ne872;
    wire[31:0] add875;
    wire[31:0] add878;
    wire[19:0] sll882;
    wire[19:0] srl885;
    wire[19:0] sll888;
    wire[19:0] add892;
    wire[19:0] srl895;
    wire[19:0] sub899;
    wire[19:0] proxy900; // @var698
    wire[5:0] proxy902; // dcsc_walk.cpp(353) @var699
    wire[19:0] sub904;
    wire ne910;
    wire[31:0] add914;
    wire[31:0] add917;
    wire ne921;
    wire[19:0] add924;
    wire ne926;
    wire[31:0] add930;
    wire[31:0] add933;
    wire eq936;
    wire[19:0] and939;
    wire[19:0] sll942;
    wire[511:0] srl944;
    wire[511:0] proxy945; // @var725
    wire[31:0] proxy947; // dcsc_walk.cpp(412) @var726
    wire[19:0] and949;
    wire[19:0] sll952;
    wire[511:0] srl954;
    wire[511:0] proxy955; // @var731
    wire[31:0] proxy957; // dcsc_walk.cpp(415) @var732
    wire[31:0] add960;
    wire[19:0] and964;
    wire[19:0] sll967;
    wire[511:0] srl969;
    wire[511:0] proxy970; // @var740
    wire[19:0] proxy972; // dcsc_walk.cpp(426) @var741
    wire[19:0] and974;
    wire[19:0] sll977;
    wire[511:0] srl979;
    wire[511:0] proxy980; // @var746
    wire[31:0] proxy982; // dcsc_walk.cpp(427) @var747
    wire[31:0] proxy983; // dcsc_walk.cpp(428) @var748
    wire[19:0] add985;
    wire ne987;
    wire[19:0] and990;
    wire eq993;
    wire[31:0] add997;
    wire[19:0] add1002;
    wire ne1004;
    wire[19:0] and1007;
    wire ne1010;
    wire[19:0] and1016;
    wire[19:0] sll1019;
    wire[511:0] srl1021;
    wire[511:0] proxy1022; // @var772
    wire[19:0] proxy1024; // dcsc_walk.cpp(482) @var773
    wire[19:0] and1026;
    wire[19:0] sll1029;
    wire[511:0] srl1031;
    wire[511:0] proxy1032; // @var778
    wire[19:0] proxy1034; // dcsc_walk.cpp(484) @var779
    wire[19:0] and1036;
    wire ne1039;
    wire[63:0] sub1042;
    wire[63:0] proxy1043; // @var785
    wire[31:0] proxy1044; // dcsc_walk.cpp(496) @var786
    wire lt1047;
    wire[31:0] sel1049;
    wire eq1052;
    wire[31:0] sel1054;
    wire gt1056;
    wire[31:0] sel1058;
    wire[31:0] add1060;
    wire[31:0] add1063;
    wire[31:0] add1066;
    wire sel1068; // dcsc_walk.cpp(136)
    wire[19:0] sel1069; // dcsc_walk.cpp(136)
    wire[31:0] sel1070; // dcsc_walk.cpp(136)
    wire[31:0] sel1071; // dcsc_walk.cpp(136)
    wire sel1072; // dcsc_walk.cpp(136)
    wire[19:0] sel1073; // dcsc_walk.cpp(136)
    wire[31:0] sel1074; // dcsc_walk.cpp(408)
    wire[31:0] sel1075; // dcsc_walk.cpp(407)
    wire[31:0] sel1076; // dcsc_walk.cpp(136)
    wire[5:0] sel1077; // dcsc_walk.cpp(136)
    wire sel1078; // dcsc_walk.cpp(408)
    wire sel1079; // dcsc_walk.cpp(407)
    wire sel1080; // dcsc_walk.cpp(136)
    wire[19:0] sel1081; // dcsc_walk.cpp(385)
    wire[19:0] sel1082; // dcsc_walk.cpp(382)
    wire[19:0] sel1083; // dcsc_walk.cpp(136)
    wire[19:0] sel1084; // dcsc_walk.cpp(136)
    wire sel1085; // dcsc_walk.cpp(306)
    wire sel1086; // dcsc_walk.cpp(136)
    wire[511:0] sel1087; // dcsc_walk.cpp(306)
    wire[511:0] sel1088; // dcsc_walk.cpp(136)
    wire[2:0] sel1089; // dcsc_walk.cpp(136)
    wire[19:0] sel1090; // dcsc_walk.cpp(136)
    wire[63:0] sel1091; // dcsc_walk.cpp(139)
    wire[63:0] sel1092; // dcsc_walk.cpp(136)
    wire[4:0] sel1093; // dcsc_walk.cpp(139)
    wire[4:0] sel1094; // dcsc_walk.cpp(158)
    wire[4:0] sel1095; // dcsc_walk.cpp(155)
    wire[4:0] sel1096; // dcsc_walk.cpp(176)
    wire[4:0] sel1097; // dcsc_walk.cpp(173)
    wire[4:0] sel1098; // dcsc_walk.cpp(202)
    wire[4:0] sel1099; // dcsc_walk.cpp(190)
    wire[4:0] sel1100; // dcsc_walk.cpp(224)
    wire[4:0] sel1101; // dcsc_walk.cpp(221)
    wire[4:0] sel1102; // dcsc_walk.cpp(238)
    wire[4:0] sel1103; // dcsc_walk.cpp(258)
    wire[4:0] sel1104; // dcsc_walk.cpp(255)
    wire[4:0] sel1105; // dcsc_walk.cpp(275)
    wire[4:0] sel1106; // dcsc_walk.cpp(292)
    wire[4:0] sel1107; // dcsc_walk.cpp(289)
    wire[4:0] sel1108; // dcsc_walk.cpp(313)
    wire[4:0] sel1109; // dcsc_walk.cpp(306)
    wire[4:0] sel1110; // dcsc_walk.cpp(332)
    wire[4:0] sel1111; // dcsc_walk.cpp(329)
    wire[4:0] sel1112; // dcsc_walk.cpp(366)
    wire[4:0] sel1113; // dcsc_walk.cpp(363)
    wire[4:0] sel1114; // dcsc_walk.cpp(387)
    wire[4:0] sel1115; // dcsc_walk.cpp(385)
    wire[4:0] sel1116; // dcsc_walk.cpp(382)
    wire[4:0] sel1117; // dcsc_walk.cpp(407)
    wire[4:0] sel1118; // dcsc_walk.cpp(439)
    wire[4:0] sel1119; // dcsc_walk.cpp(437)
    wire[4:0] sel1120; // dcsc_walk.cpp(433)
    wire[4:0] sel1121; // dcsc_walk.cpp(468)
    wire[4:0] sel1122; // dcsc_walk.cpp(466)
    wire[4:0] sel1123; // dcsc_walk.cpp(486)
    wire[4:0] sel1124; // dcsc_walk.cpp(505)
    wire[4:0] sel1125; // dcsc_walk.cpp(136)
    wire[511:0] sel1126; // dcsc_walk.cpp(190)
    wire[511:0] sel1127; // dcsc_walk.cpp(136)
    wire sel1128; // dcsc_walk.cpp(155)
    wire sel1129; // dcsc_walk.cpp(173)
    wire sel1130; // dcsc_walk.cpp(221)
    wire sel1131; // dcsc_walk.cpp(289)
    wire sel1132; // dcsc_walk.cpp(329)
    wire sel1133; // dcsc_walk.cpp(363)
    wire sel1134; // dcsc_walk.cpp(382)
    wire sel1135; // dcsc_walk.cpp(136)
    wire[19:0] sel1136; // dcsc_walk.cpp(238)
    wire[19:0] sel1137; // dcsc_walk.cpp(136)
    wire[19:0] sel1138; // dcsc_walk.cpp(139)
    wire[19:0] sel1139; // dcsc_walk.cpp(136)
    wire[511:0] sel1140; // dcsc_walk.cpp(190)
    wire[511:0] sel1141; // dcsc_walk.cpp(136)
    wire[19:0] sel1142; // dcsc_walk.cpp(190)
    wire[19:0] sel1143; // dcsc_walk.cpp(136)
    wire[19:0] sel1144; // dcsc_walk.cpp(139)
    wire[19:0] sel1145; // dcsc_walk.cpp(136)
    wire sel1146; // dcsc_walk.cpp(190)
    wire sel1147; // dcsc_walk.cpp(136)
    wire[31:0] sel1148; // dcsc_walk.cpp(136)
    wire sel1149; // dcsc_walk.cpp(190)
    wire sel1150; // dcsc_walk.cpp(238)
    wire sel1151; // dcsc_walk.cpp(136)
    wire sel1152; // dcsc_walk.cpp(439)
    wire sel1153; // dcsc_walk.cpp(437)
    wire sel1154; // dcsc_walk.cpp(433)
    wire sel1155; // dcsc_walk.cpp(136)
    wire[19:0] sel1156; // dcsc_walk.cpp(275)
    wire[19:0] sel1157; // dcsc_walk.cpp(136)
    wire[31:0] proxy1158; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1159; // dcsc_walk.cpp(505)
    wire[31:0] sel1160; // dcsc_walk.cpp(136)
    wire[31:0] proxy1161; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1162; // dcsc_walk.cpp(505)
    wire[31:0] sel1163; // dcsc_walk.cpp(136)
    wire[31:0] proxy1164; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1165; // dcsc_walk.cpp(505)
    wire[31:0] sel1166; // dcsc_walk.cpp(136)
    wire[31:0] proxy1167; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1168; // dcsc_walk.cpp(505)
    wire[31:0] sel1169; // dcsc_walk.cpp(136)
    wire[31:0] proxy1170; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1171; // dcsc_walk.cpp(158)
    wire[31:0] sel1172; // dcsc_walk.cpp(155)
    wire[31:0] sel1173; // dcsc_walk.cpp(136)
    wire[31:0] proxy1174; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1175; // dcsc_walk.cpp(176)
    wire[31:0] sel1176; // dcsc_walk.cpp(173)
    wire[31:0] sel1177; // dcsc_walk.cpp(224)
    wire[31:0] sel1178; // dcsc_walk.cpp(221)
    wire[31:0] sel1179; // dcsc_walk.cpp(238)
    wire[31:0] sel1180; // dcsc_walk.cpp(136)
    wire[31:0] proxy1181; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1182; // dcsc_walk.cpp(366)
    wire[31:0] sel1183; // dcsc_walk.cpp(363)
    wire[31:0] sel1184; // dcsc_walk.cpp(136)
    wire[31:0] proxy1185; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1186; // dcsc_walk.cpp(385)
    wire[31:0] sel1187; // dcsc_walk.cpp(382)
    wire[31:0] sel1188; // dcsc_walk.cpp(407)
    wire[31:0] sel1189; // dcsc_walk.cpp(136)
    wire[31:0] proxy1190; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1191; // dcsc_walk.cpp(332)
    wire[31:0] sel1192; // dcsc_walk.cpp(329)
    wire[31:0] sel1193; // dcsc_walk.cpp(136)
    wire[31:0] proxy1194; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1195; // dcsc_walk.cpp(292)
    wire[31:0] sel1196; // dcsc_walk.cpp(289)
    wire[31:0] sel1197; // dcsc_walk.cpp(306)
    wire[31:0] sel1198; // dcsc_walk.cpp(136)
    wire[31:0] proxy1199; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel1200; // dcsc_walk.cpp(433)
    wire[31:0] sel1201; // dcsc_walk.cpp(505)
    wire[31:0] sel1202; // dcsc_walk.cpp(136)
    wire[19:0] sel1203; // dcsc_walk.cpp(255)
    wire[19:0] sel1204; // dcsc_walk.cpp(136)
    wire[19:0] sel1205; // dcsc_walk.cpp(190)
    wire[19:0] sel1206; // dcsc_walk.cpp(433)
    wire[19:0] sel1207; // dcsc_walk.cpp(136)
    wire sel1208; // dcsc_walk.cpp(439)
    wire sel1209; // dcsc_walk.cpp(437)
    wire sel1210; // dcsc_walk.cpp(433)
    wire sel1211; // dcsc_walk.cpp(136)
    wire[511:0] sel1212; // dcsc_walk.cpp(408)
    wire[511:0] sel1213; // dcsc_walk.cpp(407)
    wire[511:0] sel1214; // dcsc_walk.cpp(136)
    wire[19:0] sel1215; // dcsc_walk.cpp(136)

    assign io_ctrl_start_data5 = io_ctrl_start_data;
    assign proxy6 = io_ctrl_start_data5;
    assign proxy7 = proxy6[31:0];
    assign proxy8 = proxy6[63:32];
    assign io_ctrl_start_ready11 = proxy440;
    assign io_ctrl_stats17 = proxy367;
    assign io_lsu_rd_req_data34 = {sel1090, sel1089};
    assign proxy35 = io_lsu_rd_req_data34[2:0];
    assign io_lsu_rd_rsp_data45 = io_lsu_rd_rsp_data;
    assign proxy46 = io_lsu_rd_rsp_data45[2:0];
    assign proxy47 = io_lsu_rd_rsp_data45[514:3];
    assign io_pe_valid50 = proxy645;
    assign io_pe_data53 = proxy630;
    always @ (posedge clk) reg70 <= reset ? 20'h0 : sel1145;
    always @ (posedge clk) reg76 <= reset ? 20'h0 : sel1139;
    always @ (posedge clk) reg82 <= reset ? 20'h0 : sel1143;
    always @ (posedge clk) reg88 <= reset ? 20'h0 : sel1207;
    always @ (posedge clk) reg94 <= reset ? 20'h0 : sel1137;
    always @ (posedge clk) reg100 <= reset ? 20'h0 : sel1215;
    always @ (posedge clk) reg107 <= reset ? 20'hfffff : sel1204;
    always @ (posedge clk) reg113 <= reset ? 20'hfffff : sel1157;
    always @ (posedge clk) reg119 <= reset ? 20'h0 : sel1083;
    always @ (posedge clk) reg125 <= reset ? 20'h0 : sel1084;
    always @ (posedge clk) reg131 <= reset ? 20'h0 : sel1073;
    always @ (posedge clk) reg138 <= reset ? 6'b0 : sel1077;
    assign proxy140 = reg145;
    always @ (posedge clk) reg145 <= reset ? 32'h0 : sel1076;
    assign proxy146 = proxy140;
    assign proxy148 = proxy400;
    assign bindin150 = clk;
    assign bindin151 = reset;
    ch_queue __module2__(.clk(bindin150), .reset(bindin151), .io_enq_valid(bindin152), .io_enq_data(bindin155), .io_deq_ready(bindin167), .io_deq_valid(bindout161), .io_deq_data(bindout164));
    assign bindin152 = proxy148;
    assign proxy154 = proxy47;
    assign bindin155 = proxy154;
    assign proxy166 = proxy594;
    assign bindin167 = proxy166;
    assign proxy172 = proxy406;
    assign bindin174 = clk;
    assign bindin175 = reset;
    ch_queue __module3__(.clk(bindin174), .reset(bindin175), .io_enq_valid(bindin176), .io_enq_data(bindin179), .io_deq_ready(bindin191), .io_deq_valid(bindout185), .io_deq_data(bindout188));
    assign bindin176 = proxy172;
    assign proxy178 = proxy47;
    assign bindin179 = proxy178;
    assign proxy187 = bindout188;
    assign proxy190 = proxy600;
    assign bindin191 = proxy190;
    assign proxy196 = proxy412;
    assign bindin198 = clk;
    assign bindin199 = reset;
    ch_queue_0 __module4__(.clk(bindin198), .reset(bindin199), .io_enq_valid(bindin200), .io_enq_data(bindin203), .io_deq_ready(bindin215), .io_deq_data(bindout212));
    assign bindin200 = proxy196;
    assign proxy202 = proxy47;
    assign bindin203 = proxy202;
    assign proxy214 = proxy606;
    assign bindin215 = proxy214;
    assign proxy220 = proxy418;
    assign bindin222 = clk;
    assign bindin223 = reset;
    ch_queue_0 __module5__(.clk(bindin222), .reset(bindin223), .io_enq_valid(bindin224), .io_enq_data(bindin227), .io_deq_ready(bindin239), .io_deq_data(bindout236), .io_size(bindout242));
    assign bindin224 = proxy220;
    assign proxy226 = proxy47;
    assign bindin227 = proxy226;
    assign proxy238 = proxy612;
    assign bindin239 = proxy238;
    assign proxy244 = proxy424;
    assign bindin246 = clk;
    assign bindin247 = reset;
    ch_queue __module6__(.clk(bindin246), .reset(bindin247), .io_enq_valid(bindin248), .io_enq_data(bindin251), .io_deq_ready(bindin263), .io_deq_valid(bindout257), .io_deq_data(bindout260));
    assign bindin248 = proxy244;
    assign proxy250 = proxy47;
    assign bindin251 = proxy250;
    assign proxy262 = proxy618;
    assign bindin263 = proxy262;
    assign proxy268 = proxy430;
    assign bindin270 = clk;
    assign bindin271 = reset;
    ch_queue __module7__(.clk(bindin270), .reset(bindin271), .io_enq_valid(bindin272), .io_enq_data(bindin275), .io_deq_ready(bindin287), .io_deq_valid(bindout281), .io_deq_data(bindout284));
    assign bindin272 = proxy268;
    assign proxy274 = proxy47;
    assign bindin275 = proxy274;
    assign proxy286 = proxy624;
    assign bindin287 = proxy286;
    always @ (posedge clk) reg297 <= reset ? 8'h0 : sel467;
    always @ (posedge clk) reg303 <= reset ? 8'h0 : sel492;
    always @ (posedge clk) reg309 <= reset ? 8'h0 : sel517;
    always @ (posedge clk) reg315 <= reset ? 8'h0 : sel542;
    always @ (posedge clk) reg321 <= reset ? 8'h0 : sel567;
    always @ (posedge clk) reg327 <= reset ? 8'h0 : sel592;
    always @ (posedge clk) reg334 <= reset ? lit332 : sel1141;
    always @ (posedge clk) reg340 <= reset ? lit332 : sel1127;
    always @ (posedge clk) reg346 <= reset ? lit332 : sel1088;
    always @ (posedge clk) reg352 <= reset ? lit332 : sel1214;
    always @ (posedge clk) reg358 <= reset ? 32'h0 : sel1148;
    always @ (posedge clk) reg365 <= reset ? lit363 : sel1092;
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
    assign ch_walker_stats_t380 = {sel1202, sel1198, sel1193, sel1189, sel1184, sel1180, sel1173, sel1169, sel1166, sel1163, sel1160};
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
    always @ (posedge clk) reg437 <= reset ? 5'b0 : sel1125;
    assign eq439 = reg437 == 5'b0;
    assign proxy440 = eq439;
    assign eq442 = proxy35 == 3'b1;
    assign and444 = sel1135 & io_lsu_rd_req_ready;
    assign and446 = and444 & eq442;
    assign proxy448 = proxy166;
    assign eq451 = and446 == 1'b0;
    assign and453 = eq451 & proxy448;
    assign eq456 = proxy448 == 1'b0;
    assign and458 = and446 & eq456;
    assign add462 = reg297 + 8'h1;
    assign sub465 = reg297 - 8'h1;
    assign sel467 = 
        and458 ? add462 : 
        and453 ? sub465 : 
        reg297;
    assign eq469 = proxy35 == 3'b10;
    assign and471 = sel1135 & io_lsu_rd_req_ready;
    assign and473 = and471 & eq469;
    assign proxy475 = proxy190;
    assign eq477 = and473 == 1'b0;
    assign and479 = eq477 & proxy475;
    assign eq482 = proxy475 == 1'b0;
    assign and484 = and473 & eq482;
    assign add487 = reg303 + 8'h1;
    assign sub490 = reg303 - 8'h1;
    assign sel492 = 
        and484 ? add487 : 
        and479 ? sub490 : 
        reg303;
    assign eq494 = proxy35 == 3'b11;
    assign and496 = sel1135 & io_lsu_rd_req_ready;
    assign and498 = and496 & eq494;
    assign proxy500 = proxy214;
    assign eq502 = and498 == 1'b0;
    assign and504 = eq502 & proxy500;
    assign eq507 = proxy500 == 1'b0;
    assign and509 = and498 & eq507;
    assign add512 = reg309 + 8'h1;
    assign sub515 = reg309 - 8'h1;
    assign sel517 = 
        and509 ? add512 : 
        and504 ? sub515 : 
        reg309;
    assign eq519 = proxy35 == 3'b100;
    assign and521 = sel1135 & io_lsu_rd_req_ready;
    assign and523 = and521 & eq519;
    assign proxy525 = proxy238;
    assign eq527 = and523 == 1'b0;
    assign and529 = eq527 & proxy525;
    assign eq532 = proxy525 == 1'b0;
    assign and534 = and523 & eq532;
    assign add537 = reg315 + 8'h1;
    assign sub540 = reg315 - 8'h1;
    assign sel542 = 
        and534 ? add537 : 
        and529 ? sub540 : 
        reg315;
    assign eq544 = proxy35 == 3'b101;
    assign and546 = sel1135 & io_lsu_rd_req_ready;
    assign and548 = and546 & eq544;
    assign proxy550 = proxy262;
    assign eq552 = and548 == 1'b0;
    assign and554 = eq552 & proxy550;
    assign eq557 = proxy550 == 1'b0;
    assign and559 = and548 & eq557;
    assign add562 = reg321 + 8'h1;
    assign sub565 = reg321 - 8'h1;
    assign sel567 = 
        and559 ? add562 : 
        and554 ? sub565 : 
        reg321;
    assign eq569 = proxy35 == 3'b110;
    assign and571 = sel1135 & io_lsu_rd_req_ready;
    assign and573 = and571 & eq569;
    assign proxy575 = proxy286;
    assign eq577 = and573 == 1'b0;
    assign and579 = eq577 & proxy575;
    assign eq582 = proxy575 == 1'b0;
    assign and584 = and573 & eq582;
    assign add587 = reg327 + 8'h1;
    assign sub590 = reg327 - 8'h1;
    assign sel592 = 
        and584 ? add587 : 
        and579 ? sub590 : 
        reg327;
    assign proxy594 = reg598;
    always @ (posedge clk) reg598 <= reset ? 1'b0 : sel1147;
    assign proxy600 = reg604;
    always @ (posedge clk) reg604 <= reset ? 1'b0 : sel1151;
    assign proxy606 = reg610;
    always @ (posedge clk) reg610 <= reset ? 1'b0 : sel1211;
    assign proxy612 = reg616;
    always @ (posedge clk) reg616 <= reset ? 1'b0 : sel1155;
    assign proxy618 = reg622;
    always @ (posedge clk) reg622 <= reset ? 1'b0 : sel1080;
    assign proxy624 = reg628;
    always @ (posedge clk) reg628 <= reset ? 1'b0 : sel1086;
    assign proxy630 = reg643;
    assign ch_pe_req_t636 = {sel1072, sel1071, sel1070, sel1069};
    always @ (posedge clk) reg643 <= reset ? lit641 : ch_pe_req_t636;
    assign proxy645 = reg649;
    always @ (posedge clk) reg649 <= reset ? 1'b0 : sel1068;
    assign proxy653 = proxy7[19:0];
    assign proxy655 = proxy8[19:0];
    assign sub658 = proxy655 - 20'h1;
    assign sll664 = reg70 << 20'h2;
    assign srl668 = sll664 >> 20'h6;
    assign ne672 = reg297 != 8'h2;
    assign add678 = proxy372 + 32'h1;
    assign add681 = proxy372 + 32'h1;
    assign sll685 = reg70 << 20'h2;
    assign srl688 = sll685 >> 20'h6;
    assign ne691 = reg303 != 8'h2;
    assign add695 = proxy373 + 32'h1;
    assign add698 = proxy373 + 32'h1;
    assign and701 = bindout161 & bindout185;
    assign and705 = reg70 & 20'hf;
    assign sll709 = and705 << 20'h5;
    assign srl711 = bindout164 >> sll709;
    assign proxy712 = srl711;
    assign proxy714 = proxy712[19:0];
    assign and716 = reg70 & 20'hf;
    assign sll719 = and716 << 20'h5;
    assign srl721 = proxy187 >> sll719;
    assign proxy722 = srl721;
    assign proxy724 = proxy722[19:0];
    assign and726 = reg70 & 20'hf;
    assign ne729 = and726 != 20'hf;
    assign add735 = reg70 + 20'h1;
    assign and738 = add735 & 20'hf;
    assign sll741 = and738 << 20'h5;
    assign srl743 = reg340 >> sll741;
    assign proxy744 = srl743;
    assign proxy746 = proxy744[19:0];
    assign add750 = reg70 + 20'h1;
    assign sll753 = add750 << 20'h2;
    assign srl756 = sll753 >> 20'h6;
    assign ne759 = reg303 != 8'h2;
    assign add763 = proxy373 + 32'h1;
    assign add766 = proxy373 + 32'h1;
    assign proxy770 = proxy187[19:0];
    assign add772 = proxy373 + 32'h1;
    assign sub776 = reg94 - 20'h1;
    assign srl779 = reg82 >> 20'h5;
    assign sll782 = srl779 << 20'h2;
    assign srl785 = sll782 >> 20'h6;
    assign eq787 = srl785 == reg107;
    assign and790 = srl779 & 20'hf;
    assign sll793 = and790 << 20'h5;
    assign srl795 = reg346 >> sll793;
    assign proxy796 = srl795;
    assign proxy798 = proxy796[31:0];
    assign and801 = reg82 & 20'h1f;
    assign sll804 = 32'h1 << and801;
    assign and806 = proxy798 & sll804;
    assign ne809 = and806 != 32'h0;
    assign sll816 = reg82 << 20'h2;
    assign srl819 = sll816 >> 20'h6;
    assign eq821 = srl819 == reg113;
    assign ne827 = reg327 != 8'h2;
    assign add831 = proxy377 + 32'h1;
    assign add834 = proxy377 + 32'h1;
    assign srl838 = reg82 >> 20'h5;
    assign and841 = srl838 & 20'hf;
    assign sll844 = and841 << 20'h5;
    assign srl846 = sel1088 >> sll844;
    assign proxy847 = srl846;
    assign proxy849 = proxy847[31:0];
    assign and851 = reg82 & 20'h1f;
    assign sll854 = 32'h1 << and851;
    assign and856 = proxy849 & sll854;
    assign ne859 = and856 != 32'h0;
    assign add862 = proxy377 + 32'h1;
    assign sll866 = reg82 << 20'h2;
    assign srl869 = sll866 >> 20'h6;
    assign ne872 = reg321 != 8'h2;
    assign add875 = proxy376 + 32'h1;
    assign add878 = proxy376 + 32'h1;
    assign sll882 = reg88 << 20'h2;
    assign srl885 = sll882 >> 20'h6;
    assign sll888 = reg94 << 20'h2;
    assign add892 = sll888 + 20'h3f;
    assign srl895 = add892 >> 20'h6;
    assign sub899 = reg125 - reg119;
    assign proxy900 = sub899;
    assign proxy902 = proxy900[5:0];
    assign sub904 = reg125 - 20'h1;
    assign ne910 = reg309 != 8'h20;
    assign add914 = proxy374 + 32'h1;
    assign add917 = proxy374 + 32'h1;
    assign ne921 = reg315 != 8'h20;
    assign add924 = reg119 + 20'h1;
    assign ne926 = reg119 != reg131;
    assign add930 = proxy375 + 32'h1;
    assign add933 = proxy375 + 32'h1;
    assign eq936 = bindout242 == reg138;
    assign and939 = reg82 & 20'hf;
    assign sll942 = and939 << 20'h5;
    assign srl944 = sel1214 >> sll942;
    assign proxy945 = srl944;
    assign proxy947 = proxy945[31:0];
    assign and949 = reg82 & 20'hf;
    assign sll952 = and949 << 20'h5;
    assign srl954 = reg352 >> sll952;
    assign proxy955 = srl954;
    assign proxy957 = proxy955[31:0];
    assign add960 = proxy375 + 32'h1;
    assign and964 = reg88 & 20'hf;
    assign sll967 = and964 << 20'h5;
    assign srl969 = bindout212 >> sll967;
    assign proxy970 = srl969;
    assign proxy972 = proxy970[19:0];
    assign and974 = reg88 & 20'hf;
    assign sll977 = and974 << 20'h5;
    assign srl979 = bindout236 >> sll977;
    assign proxy980 = srl979;
    assign proxy982 = proxy980[31:0];
    assign proxy983 = proxy140;
    assign add985 = reg88 + 20'h1;
    assign ne987 = reg88 != reg100;
    assign and990 = reg88 & 20'hf;
    assign eq993 = and990 == 20'hf;
    assign add997 = proxy378 + 32'h1;
    assign add1002 = reg70 + 20'h1;
    assign ne1004 = reg70 != reg76;
    assign and1007 = reg70 & 20'hf;
    assign ne1010 = and1007 != 20'hf;
    assign and1016 = reg70 & 20'hf;
    assign sll1019 = and1016 << 20'h5;
    assign srl1021 = reg334 >> sll1019;
    assign proxy1022 = srl1021;
    assign proxy1024 = proxy1022[19:0];
    assign and1026 = reg70 & 20'hf;
    assign sll1029 = and1026 << 20'h5;
    assign srl1031 = reg340 >> sll1029;
    assign proxy1032 = srl1031;
    assign proxy1034 = proxy1032[19:0];
    assign and1036 = reg70 & 20'hf;
    assign ne1039 = and1036 != 20'hf;
    assign sub1042 = io_ctrl_timer - reg365;
    assign proxy1043 = sub1042;
    assign proxy1044 = proxy1043[31:0];
    assign lt1047 = proxy369 < reg358;
    assign sel1049 = lt1047 ? proxy369 : reg358;
    assign eq1052 = proxy369 == 32'h0;
    assign sel1054 = eq1052 ? reg358 : sel1049;
    assign gt1056 = proxy369 > reg358;
    assign sel1058 = gt1056 ? proxy369 : reg358;
    assign add1060 = proxy371 + reg358;
    assign add1063 = proxy368 + 32'h1;
    assign add1066 = proxy378 + 32'h1;
    assign sel1068 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? 1'b1 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b1 : 
        1'b0;
    assign sel1069 = 
        (reg437 == 5'b0) ? 20'h0 : 
        (reg437 == 5'b1) ? 20'h0 : 
        (reg437 == 5'b10) ? 20'h0 : 
        (reg437 == 5'b11) ? 20'h0 : 
        (reg437 == 5'b110) ? 20'h0 : 
        (reg437 == 5'b100) ? 20'h0 : 
        (reg437 == 5'b101) ? 20'h0 : 
        (reg437 == 5'b111) ? 20'h0 : 
        (reg437 == 5'b1000) ? 20'h0 : 
        (reg437 == 5'b1001) ? 20'h0 : 
        (reg437 == 5'b1010) ? 20'h0 : 
        (reg437 == 5'b1011) ? 20'h0 : 
        (reg437 == 5'b1100) ? 20'h0 : 
        (reg437 == 5'b1101) ? 20'h0 : 
        (reg437 == 5'b1110) ? 20'h0 : 
        (reg437 == 5'b1111) ? 20'h0 : 
        (reg437 == 5'b10000) ? 20'h0 : 
        (reg437 == 5'b10001) ? proxy972 : 
        (reg437 == 5'b10010) ? 20'h0 : 
        (reg437 == 5'b10011) ? 20'h0 : 
        (reg437 == 5'b10100) ? 20'h0 : 
        (reg437 == 5'b10101) ? 20'h0 : 
        (reg437 == 5'b10110) ? 20'h0 : 
        20'h0;
    assign sel1070 = 
        (reg437 == 5'b0) ? 32'h0 : 
        (reg437 == 5'b1) ? 32'h0 : 
        (reg437 == 5'b10) ? 32'h0 : 
        (reg437 == 5'b11) ? 32'h0 : 
        (reg437 == 5'b110) ? 32'h0 : 
        (reg437 == 5'b100) ? 32'h0 : 
        (reg437 == 5'b101) ? 32'h0 : 
        (reg437 == 5'b111) ? 32'h0 : 
        (reg437 == 5'b1000) ? 32'h0 : 
        (reg437 == 5'b1001) ? 32'h0 : 
        (reg437 == 5'b1010) ? 32'h0 : 
        (reg437 == 5'b1011) ? 32'h0 : 
        (reg437 == 5'b1100) ? 32'h0 : 
        (reg437 == 5'b1101) ? 32'h0 : 
        (reg437 == 5'b1110) ? 32'h0 : 
        (reg437 == 5'b1111) ? 32'h0 : 
        (reg437 == 5'b10000) ? 32'h0 : 
        (reg437 == 5'b10001) ? proxy982 : 
        (reg437 == 5'b10010) ? 32'h0 : 
        (reg437 == 5'b10011) ? 32'h0 : 
        (reg437 == 5'b10100) ? 32'h0 : 
        (reg437 == 5'b10101) ? 32'h0 : 
        (reg437 == 5'b10110) ? 32'h0 : 
        32'h0;
    assign sel1071 = 
        (reg437 == 5'b0) ? 32'h0 : 
        (reg437 == 5'b1) ? 32'h0 : 
        (reg437 == 5'b10) ? 32'h0 : 
        (reg437 == 5'b11) ? 32'h0 : 
        (reg437 == 5'b110) ? 32'h0 : 
        (reg437 == 5'b100) ? 32'h0 : 
        (reg437 == 5'b101) ? 32'h0 : 
        (reg437 == 5'b111) ? 32'h0 : 
        (reg437 == 5'b1000) ? 32'h0 : 
        (reg437 == 5'b1001) ? 32'h0 : 
        (reg437 == 5'b1010) ? 32'h0 : 
        (reg437 == 5'b1011) ? 32'h0 : 
        (reg437 == 5'b1100) ? 32'h0 : 
        (reg437 == 5'b1101) ? 32'h0 : 
        (reg437 == 5'b1110) ? 32'h0 : 
        (reg437 == 5'b1111) ? 32'h0 : 
        (reg437 == 5'b10000) ? 32'h0 : 
        (reg437 == 5'b10001) ? proxy983 : 
        (reg437 == 5'b10010) ? 32'h0 : 
        (reg437 == 5'b10011) ? 32'h0 : 
        (reg437 == 5'b10100) ? 32'h0 : 
        (reg437 == 5'b10101) ? 32'h0 : 
        (reg437 == 5'b10110) ? 32'h0 : 
        32'h0;
    assign sel1072 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? 1'b0 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b1 : 
        1'b0;
    assign sel1073 = 
        (reg437 == 5'b0) ? reg131 : 
        (reg437 == 5'b1) ? reg131 : 
        (reg437 == 5'b10) ? reg131 : 
        (reg437 == 5'b11) ? reg131 : 
        (reg437 == 5'b110) ? reg131 : 
        (reg437 == 5'b100) ? reg131 : 
        (reg437 == 5'b101) ? reg131 : 
        (reg437 == 5'b111) ? reg131 : 
        (reg437 == 5'b1000) ? reg131 : 
        (reg437 == 5'b1001) ? reg131 : 
        (reg437 == 5'b1010) ? reg131 : 
        (reg437 == 5'b1011) ? reg131 : 
        (reg437 == 5'b1100) ? reg131 : 
        (reg437 == 5'b1101) ? sub904 : 
        (reg437 == 5'b1110) ? reg131 : 
        (reg437 == 5'b1111) ? reg131 : 
        (reg437 == 5'b10000) ? reg131 : 
        (reg437 == 5'b10001) ? reg131 : 
        (reg437 == 5'b10010) ? reg131 : 
        (reg437 == 5'b10011) ? reg131 : 
        (reg437 == 5'b10100) ? reg131 : 
        (reg437 == 5'b10101) ? reg131 : 
        (reg437 == 5'b10110) ? reg131 : 
        reg131;
    assign sel1074 = bindout257 ? proxy947 : proxy957;
    assign sel1075 = eq936 ? sel1074 : proxy146;
    assign sel1076 = 
        (reg437 == 5'b0) ? proxy146 : 
        (reg437 == 5'b1) ? proxy146 : 
        (reg437 == 5'b10) ? proxy146 : 
        (reg437 == 5'b11) ? proxy146 : 
        (reg437 == 5'b110) ? proxy146 : 
        (reg437 == 5'b100) ? proxy146 : 
        (reg437 == 5'b101) ? proxy146 : 
        (reg437 == 5'b111) ? proxy146 : 
        (reg437 == 5'b1000) ? proxy146 : 
        (reg437 == 5'b1001) ? proxy146 : 
        (reg437 == 5'b1010) ? proxy146 : 
        (reg437 == 5'b1011) ? proxy146 : 
        (reg437 == 5'b1100) ? proxy146 : 
        (reg437 == 5'b1101) ? proxy146 : 
        (reg437 == 5'b1110) ? proxy146 : 
        (reg437 == 5'b1111) ? proxy146 : 
        (reg437 == 5'b10000) ? sel1075 : 
        (reg437 == 5'b10001) ? proxy146 : 
        (reg437 == 5'b10010) ? proxy146 : 
        (reg437 == 5'b10011) ? proxy146 : 
        (reg437 == 5'b10100) ? proxy146 : 
        (reg437 == 5'b10101) ? proxy146 : 
        (reg437 == 5'b10110) ? proxy146 : 
        proxy146;
    assign sel1077 = 
        (reg437 == 5'b0) ? reg138 : 
        (reg437 == 5'b1) ? reg138 : 
        (reg437 == 5'b10) ? reg138 : 
        (reg437 == 5'b11) ? reg138 : 
        (reg437 == 5'b110) ? reg138 : 
        (reg437 == 5'b100) ? reg138 : 
        (reg437 == 5'b101) ? reg138 : 
        (reg437 == 5'b111) ? reg138 : 
        (reg437 == 5'b1000) ? reg138 : 
        (reg437 == 5'b1001) ? reg138 : 
        (reg437 == 5'b1010) ? reg138 : 
        (reg437 == 5'b1011) ? reg138 : 
        (reg437 == 5'b1100) ? reg138 : 
        (reg437 == 5'b1101) ? proxy902 : 
        (reg437 == 5'b1110) ? reg138 : 
        (reg437 == 5'b1111) ? reg138 : 
        (reg437 == 5'b10000) ? reg138 : 
        (reg437 == 5'b10001) ? reg138 : 
        (reg437 == 5'b10010) ? reg138 : 
        (reg437 == 5'b10011) ? reg138 : 
        (reg437 == 5'b10100) ? reg138 : 
        (reg437 == 5'b10101) ? reg138 : 
        (reg437 == 5'b10110) ? reg138 : 
        reg138;
    assign sel1078 = bindout257 ? 1'b1 : 1'b0;
    assign sel1079 = eq936 ? sel1078 : 1'b0;
    assign sel1080 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? sel1079 : 
        (reg437 == 5'b10001) ? 1'b0 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1081 = io_lsu_rd_req_ready ? add924 : reg119;
    assign sel1082 = ne921 ? sel1081 : reg119;
    assign sel1083 = 
        (reg437 == 5'b0) ? reg119 : 
        (reg437 == 5'b1) ? reg119 : 
        (reg437 == 5'b10) ? reg119 : 
        (reg437 == 5'b11) ? reg119 : 
        (reg437 == 5'b110) ? reg119 : 
        (reg437 == 5'b100) ? reg119 : 
        (reg437 == 5'b101) ? reg119 : 
        (reg437 == 5'b111) ? reg119 : 
        (reg437 == 5'b1000) ? reg119 : 
        (reg437 == 5'b1001) ? reg119 : 
        (reg437 == 5'b1010) ? reg119 : 
        (reg437 == 5'b1011) ? reg119 : 
        (reg437 == 5'b1100) ? srl885 : 
        (reg437 == 5'b1101) ? reg119 : 
        (reg437 == 5'b1110) ? reg119 : 
        (reg437 == 5'b1111) ? sel1082 : 
        (reg437 == 5'b10000) ? reg119 : 
        (reg437 == 5'b10001) ? reg119 : 
        (reg437 == 5'b10010) ? reg119 : 
        (reg437 == 5'b10011) ? reg119 : 
        (reg437 == 5'b10100) ? reg119 : 
        (reg437 == 5'b10101) ? reg119 : 
        (reg437 == 5'b10110) ? reg119 : 
        reg119;
    assign sel1084 = 
        (reg437 == 5'b0) ? reg125 : 
        (reg437 == 5'b1) ? reg125 : 
        (reg437 == 5'b10) ? reg125 : 
        (reg437 == 5'b11) ? reg125 : 
        (reg437 == 5'b110) ? reg125 : 
        (reg437 == 5'b100) ? reg125 : 
        (reg437 == 5'b101) ? reg125 : 
        (reg437 == 5'b111) ? reg125 : 
        (reg437 == 5'b1000) ? reg125 : 
        (reg437 == 5'b1001) ? reg125 : 
        (reg437 == 5'b1010) ? reg125 : 
        (reg437 == 5'b1011) ? reg125 : 
        (reg437 == 5'b1100) ? srl895 : 
        (reg437 == 5'b1101) ? reg125 : 
        (reg437 == 5'b1110) ? reg125 : 
        (reg437 == 5'b1111) ? reg125 : 
        (reg437 == 5'b10000) ? reg125 : 
        (reg437 == 5'b10001) ? reg125 : 
        (reg437 == 5'b10010) ? reg125 : 
        (reg437 == 5'b10011) ? reg125 : 
        (reg437 == 5'b10100) ? reg125 : 
        (reg437 == 5'b10101) ? reg125 : 
        (reg437 == 5'b10110) ? reg125 : 
        reg125;
    assign sel1085 = bindout281 ? 1'b1 : 1'b0;
    assign sel1086 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? sel1085 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? 1'b0 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1087 = bindout281 ? bindout284 : reg346;
    assign sel1088 = 
        (reg437 == 5'b0) ? reg346 : 
        (reg437 == 5'b1) ? reg346 : 
        (reg437 == 5'b10) ? reg346 : 
        (reg437 == 5'b11) ? reg346 : 
        (reg437 == 5'b110) ? reg346 : 
        (reg437 == 5'b100) ? reg346 : 
        (reg437 == 5'b101) ? reg346 : 
        (reg437 == 5'b111) ? reg346 : 
        (reg437 == 5'b1000) ? reg346 : 
        (reg437 == 5'b1001) ? reg346 : 
        (reg437 == 5'b1010) ? sel1087 : 
        (reg437 == 5'b1011) ? reg346 : 
        (reg437 == 5'b1100) ? reg346 : 
        (reg437 == 5'b1101) ? reg346 : 
        (reg437 == 5'b1110) ? reg346 : 
        (reg437 == 5'b1111) ? reg346 : 
        (reg437 == 5'b10000) ? reg346 : 
        (reg437 == 5'b10001) ? reg346 : 
        (reg437 == 5'b10010) ? reg346 : 
        (reg437 == 5'b10011) ? reg346 : 
        (reg437 == 5'b10100) ? reg346 : 
        (reg437 == 5'b10101) ? reg346 : 
        (reg437 == 5'b10110) ? reg346 : 
        reg346;
    assign sel1089 = 
        (reg437 == 5'b0) ? 3'b0 : 
        (reg437 == 5'b1) ? 3'b1 : 
        (reg437 == 5'b10) ? 3'b10 : 
        (reg437 == 5'b11) ? 3'b0 : 
        (reg437 == 5'b110) ? 3'b0 : 
        (reg437 == 5'b100) ? 3'b10 : 
        (reg437 == 5'b101) ? 3'b0 : 
        (reg437 == 5'b111) ? 3'b0 : 
        (reg437 == 5'b1000) ? 3'b0 : 
        (reg437 == 5'b1001) ? 3'b110 : 
        (reg437 == 5'b1010) ? 3'b0 : 
        (reg437 == 5'b1011) ? 3'b101 : 
        (reg437 == 5'b1100) ? 3'b0 : 
        (reg437 == 5'b1101) ? 3'b0 : 
        (reg437 == 5'b1110) ? 3'b11 : 
        (reg437 == 5'b1111) ? 3'b100 : 
        (reg437 == 5'b10000) ? 3'b0 : 
        (reg437 == 5'b10001) ? 3'b0 : 
        (reg437 == 5'b10010) ? 3'b0 : 
        (reg437 == 5'b10011) ? 3'b0 : 
        (reg437 == 5'b10100) ? 3'b0 : 
        (reg437 == 5'b10101) ? 3'b0 : 
        (reg437 == 5'b10110) ? 3'b0 : 
        3'b0;
    assign sel1090 = 
        (reg437 == 5'b0) ? 20'h0 : 
        (reg437 == 5'b1) ? srl668 : 
        (reg437 == 5'b10) ? srl688 : 
        (reg437 == 5'b11) ? 20'h0 : 
        (reg437 == 5'b110) ? 20'h0 : 
        (reg437 == 5'b100) ? srl756 : 
        (reg437 == 5'b101) ? 20'h0 : 
        (reg437 == 5'b111) ? 20'h0 : 
        (reg437 == 5'b1000) ? 20'h0 : 
        (reg437 == 5'b1001) ? reg107 : 
        (reg437 == 5'b1010) ? 20'h0 : 
        (reg437 == 5'b1011) ? srl869 : 
        (reg437 == 5'b1100) ? 20'h0 : 
        (reg437 == 5'b1101) ? 20'h0 : 
        (reg437 == 5'b1110) ? reg119 : 
        (reg437 == 5'b1111) ? reg119 : 
        (reg437 == 5'b10000) ? 20'h0 : 
        (reg437 == 5'b10001) ? 20'h0 : 
        (reg437 == 5'b10010) ? 20'h0 : 
        (reg437 == 5'b10011) ? 20'h0 : 
        (reg437 == 5'b10100) ? 20'h0 : 
        (reg437 == 5'b10101) ? 20'h0 : 
        (reg437 == 5'b10110) ? 20'h0 : 
        20'h0;
    assign sel1091 = io_ctrl_start_valid ? io_ctrl_timer : reg365;
    assign sel1092 = 
        (reg437 == 5'b0) ? sel1091 : 
        (reg437 == 5'b1) ? reg365 : 
        (reg437 == 5'b10) ? reg365 : 
        (reg437 == 5'b11) ? reg365 : 
        (reg437 == 5'b110) ? reg365 : 
        (reg437 == 5'b100) ? reg365 : 
        (reg437 == 5'b101) ? reg365 : 
        (reg437 == 5'b111) ? reg365 : 
        (reg437 == 5'b1000) ? reg365 : 
        (reg437 == 5'b1001) ? reg365 : 
        (reg437 == 5'b1010) ? reg365 : 
        (reg437 == 5'b1011) ? reg365 : 
        (reg437 == 5'b1100) ? reg365 : 
        (reg437 == 5'b1101) ? reg365 : 
        (reg437 == 5'b1110) ? reg365 : 
        (reg437 == 5'b1111) ? reg365 : 
        (reg437 == 5'b10000) ? reg365 : 
        (reg437 == 5'b10001) ? reg365 : 
        (reg437 == 5'b10010) ? reg365 : 
        (reg437 == 5'b10011) ? reg365 : 
        (reg437 == 5'b10100) ? reg365 : 
        (reg437 == 5'b10101) ? reg365 : 
        (reg437 == 5'b10110) ? reg365 : 
        reg365;
    assign sel1093 = io_ctrl_start_valid ? 5'b1 : reg437;
    assign sel1094 = io_lsu_rd_req_ready ? 5'b10 : reg437;
    assign sel1095 = ne672 ? sel1094 : reg437;
    assign sel1096 = io_lsu_rd_req_ready ? 5'b11 : reg437;
    assign sel1097 = ne691 ? sel1096 : reg437;
    assign sel1098 = ne729 ? 5'b110 : 5'b100;
    assign sel1099 = and701 ? sel1098 : reg437;
    assign sel1100 = io_lsu_rd_req_ready ? 5'b101 : reg437;
    assign sel1101 = ne759 ? sel1100 : reg437;
    assign sel1102 = bindout185 ? 5'b111 : reg437;
    assign sel1103 = ne809 ? 5'b1000 : 5'b10011;
    assign sel1104 = eq787 ? sel1103 : 5'b1001;
    assign sel1105 = eq821 ? 5'b1100 : 5'b1011;
    assign sel1106 = io_lsu_rd_req_ready ? 5'b1010 : reg437;
    assign sel1107 = ne827 ? sel1106 : reg437;
    assign sel1108 = ne859 ? 5'b1000 : 5'b10011;
    assign sel1109 = bindout281 ? sel1108 : reg437;
    assign sel1110 = io_lsu_rd_req_ready ? 5'b1100 : reg437;
    assign sel1111 = ne872 ? sel1110 : reg437;
    assign sel1112 = io_lsu_rd_req_ready ? 5'b1111 : reg437;
    assign sel1113 = ne910 ? sel1112 : reg437;
    assign sel1114 = ne926 ? 5'b1110 : 5'b10000;
    assign sel1115 = io_lsu_rd_req_ready ? sel1114 : reg437;
    assign sel1116 = ne921 ? sel1115 : reg437;
    assign sel1117 = eq936 ? 5'b10001 : reg437;
    assign sel1118 = eq993 ? 5'b10010 : reg437;
    assign sel1119 = ne987 ? sel1118 : 5'b10011;
    assign sel1120 = io_pe_ready ? sel1119 : reg437;
    assign sel1121 = ne1010 ? 5'b10100 : 5'b1;
    assign sel1122 = ne1004 ? sel1121 : 5'b10101;
    assign sel1123 = ne1039 ? 5'b110 : 5'b100;
    assign sel1124 = io_pe_ready ? 5'b0 : reg437;
    assign sel1125 = 
        (reg437 == 5'b0) ? sel1093 : 
        (reg437 == 5'b1) ? sel1095 : 
        (reg437 == 5'b10) ? sel1097 : 
        (reg437 == 5'b11) ? sel1099 : 
        (reg437 == 5'b110) ? 5'b111 : 
        (reg437 == 5'b100) ? sel1101 : 
        (reg437 == 5'b101) ? sel1102 : 
        (reg437 == 5'b111) ? sel1104 : 
        (reg437 == 5'b1000) ? sel1105 : 
        (reg437 == 5'b1001) ? sel1107 : 
        (reg437 == 5'b1010) ? sel1109 : 
        (reg437 == 5'b1011) ? sel1111 : 
        (reg437 == 5'b1100) ? 5'b1101 : 
        (reg437 == 5'b1101) ? 5'b1110 : 
        (reg437 == 5'b1110) ? sel1113 : 
        (reg437 == 5'b1111) ? sel1116 : 
        (reg437 == 5'b10000) ? sel1117 : 
        (reg437 == 5'b10001) ? sel1120 : 
        (reg437 == 5'b10010) ? 5'b10001 : 
        (reg437 == 5'b10011) ? sel1122 : 
        (reg437 == 5'b10100) ? sel1123 : 
        (reg437 == 5'b10101) ? 5'b10110 : 
        (reg437 == 5'b10110) ? sel1124 : 
        reg437;
    assign sel1126 = and701 ? proxy187 : reg340;
    assign sel1127 = 
        (reg437 == 5'b0) ? reg340 : 
        (reg437 == 5'b1) ? reg340 : 
        (reg437 == 5'b10) ? reg340 : 
        (reg437 == 5'b11) ? sel1126 : 
        (reg437 == 5'b110) ? reg340 : 
        (reg437 == 5'b100) ? reg340 : 
        (reg437 == 5'b101) ? reg340 : 
        (reg437 == 5'b111) ? reg340 : 
        (reg437 == 5'b1000) ? reg340 : 
        (reg437 == 5'b1001) ? reg340 : 
        (reg437 == 5'b1010) ? reg340 : 
        (reg437 == 5'b1011) ? reg340 : 
        (reg437 == 5'b1100) ? reg340 : 
        (reg437 == 5'b1101) ? reg340 : 
        (reg437 == 5'b1110) ? reg340 : 
        (reg437 == 5'b1111) ? reg340 : 
        (reg437 == 5'b10000) ? reg340 : 
        (reg437 == 5'b10001) ? reg340 : 
        (reg437 == 5'b10010) ? reg340 : 
        (reg437 == 5'b10011) ? reg340 : 
        (reg437 == 5'b10100) ? reg340 : 
        (reg437 == 5'b10101) ? reg340 : 
        (reg437 == 5'b10110) ? reg340 : 
        reg340;
    assign sel1128 = ne672 ? 1'b1 : 1'b0;
    assign sel1129 = ne691 ? 1'b1 : 1'b0;
    assign sel1130 = ne759 ? 1'b1 : 1'b0;
    assign sel1131 = ne827 ? 1'b1 : 1'b0;
    assign sel1132 = ne872 ? 1'b1 : 1'b0;
    assign sel1133 = ne910 ? 1'b1 : 1'b0;
    assign sel1134 = ne921 ? 1'b1 : 1'b0;
    assign sel1135 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? sel1128 : 
        (reg437 == 5'b10) ? sel1129 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? sel1130 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? sel1131 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? sel1132 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? sel1133 : 
        (reg437 == 5'b1111) ? sel1134 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? 1'b0 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1136 = bindout185 ? proxy770 : reg94;
    assign sel1137 = 
        (reg437 == 5'b0) ? reg94 : 
        (reg437 == 5'b1) ? reg94 : 
        (reg437 == 5'b10) ? reg94 : 
        (reg437 == 5'b11) ? reg94 : 
        (reg437 == 5'b110) ? proxy746 : 
        (reg437 == 5'b100) ? reg94 : 
        (reg437 == 5'b101) ? sel1136 : 
        (reg437 == 5'b111) ? reg94 : 
        (reg437 == 5'b1000) ? reg94 : 
        (reg437 == 5'b1001) ? reg94 : 
        (reg437 == 5'b1010) ? reg94 : 
        (reg437 == 5'b1011) ? reg94 : 
        (reg437 == 5'b1100) ? reg94 : 
        (reg437 == 5'b1101) ? reg94 : 
        (reg437 == 5'b1110) ? reg94 : 
        (reg437 == 5'b1111) ? reg94 : 
        (reg437 == 5'b10000) ? reg94 : 
        (reg437 == 5'b10001) ? reg94 : 
        (reg437 == 5'b10010) ? reg94 : 
        (reg437 == 5'b10011) ? reg94 : 
        (reg437 == 5'b10100) ? reg94 : 
        (reg437 == 5'b10101) ? reg94 : 
        (reg437 == 5'b10110) ? reg94 : 
        reg94;
    assign sel1138 = io_ctrl_start_valid ? sub658 : reg76;
    assign sel1139 = 
        (reg437 == 5'b0) ? sel1138 : 
        (reg437 == 5'b1) ? reg76 : 
        (reg437 == 5'b10) ? reg76 : 
        (reg437 == 5'b11) ? reg76 : 
        (reg437 == 5'b110) ? reg76 : 
        (reg437 == 5'b100) ? reg76 : 
        (reg437 == 5'b101) ? reg76 : 
        (reg437 == 5'b111) ? reg76 : 
        (reg437 == 5'b1000) ? reg76 : 
        (reg437 == 5'b1001) ? reg76 : 
        (reg437 == 5'b1010) ? reg76 : 
        (reg437 == 5'b1011) ? reg76 : 
        (reg437 == 5'b1100) ? reg76 : 
        (reg437 == 5'b1101) ? reg76 : 
        (reg437 == 5'b1110) ? reg76 : 
        (reg437 == 5'b1111) ? reg76 : 
        (reg437 == 5'b10000) ? reg76 : 
        (reg437 == 5'b10001) ? reg76 : 
        (reg437 == 5'b10010) ? reg76 : 
        (reg437 == 5'b10011) ? reg76 : 
        (reg437 == 5'b10100) ? reg76 : 
        (reg437 == 5'b10101) ? reg76 : 
        (reg437 == 5'b10110) ? reg76 : 
        reg76;
    assign sel1140 = and701 ? bindout164 : reg334;
    assign sel1141 = 
        (reg437 == 5'b0) ? reg334 : 
        (reg437 == 5'b1) ? reg334 : 
        (reg437 == 5'b10) ? reg334 : 
        (reg437 == 5'b11) ? sel1140 : 
        (reg437 == 5'b110) ? reg334 : 
        (reg437 == 5'b100) ? reg334 : 
        (reg437 == 5'b101) ? reg334 : 
        (reg437 == 5'b111) ? reg334 : 
        (reg437 == 5'b1000) ? reg334 : 
        (reg437 == 5'b1001) ? reg334 : 
        (reg437 == 5'b1010) ? reg334 : 
        (reg437 == 5'b1011) ? reg334 : 
        (reg437 == 5'b1100) ? reg334 : 
        (reg437 == 5'b1101) ? reg334 : 
        (reg437 == 5'b1110) ? reg334 : 
        (reg437 == 5'b1111) ? reg334 : 
        (reg437 == 5'b10000) ? reg334 : 
        (reg437 == 5'b10001) ? reg334 : 
        (reg437 == 5'b10010) ? reg334 : 
        (reg437 == 5'b10011) ? reg334 : 
        (reg437 == 5'b10100) ? reg334 : 
        (reg437 == 5'b10101) ? reg334 : 
        (reg437 == 5'b10110) ? reg334 : 
        reg334;
    assign sel1142 = and701 ? proxy714 : reg82;
    assign sel1143 = 
        (reg437 == 5'b0) ? reg82 : 
        (reg437 == 5'b1) ? reg82 : 
        (reg437 == 5'b10) ? reg82 : 
        (reg437 == 5'b11) ? sel1142 : 
        (reg437 == 5'b110) ? reg82 : 
        (reg437 == 5'b100) ? reg82 : 
        (reg437 == 5'b101) ? reg82 : 
        (reg437 == 5'b111) ? reg82 : 
        (reg437 == 5'b1000) ? reg82 : 
        (reg437 == 5'b1001) ? reg82 : 
        (reg437 == 5'b1010) ? reg82 : 
        (reg437 == 5'b1011) ? reg82 : 
        (reg437 == 5'b1100) ? reg82 : 
        (reg437 == 5'b1101) ? reg82 : 
        (reg437 == 5'b1110) ? reg82 : 
        (reg437 == 5'b1111) ? reg82 : 
        (reg437 == 5'b10000) ? reg82 : 
        (reg437 == 5'b10001) ? reg82 : 
        (reg437 == 5'b10010) ? reg82 : 
        (reg437 == 5'b10011) ? reg82 : 
        (reg437 == 5'b10100) ? proxy1024 : 
        (reg437 == 5'b10101) ? reg82 : 
        (reg437 == 5'b10110) ? reg82 : 
        reg82;
    assign sel1144 = io_ctrl_start_valid ? proxy653 : reg70;
    assign sel1145 = 
        (reg437 == 5'b0) ? sel1144 : 
        (reg437 == 5'b1) ? reg70 : 
        (reg437 == 5'b10) ? reg70 : 
        (reg437 == 5'b11) ? reg70 : 
        (reg437 == 5'b110) ? reg70 : 
        (reg437 == 5'b100) ? reg70 : 
        (reg437 == 5'b101) ? reg70 : 
        (reg437 == 5'b111) ? reg70 : 
        (reg437 == 5'b1000) ? reg70 : 
        (reg437 == 5'b1001) ? reg70 : 
        (reg437 == 5'b1010) ? reg70 : 
        (reg437 == 5'b1011) ? reg70 : 
        (reg437 == 5'b1100) ? reg70 : 
        (reg437 == 5'b1101) ? reg70 : 
        (reg437 == 5'b1110) ? reg70 : 
        (reg437 == 5'b1111) ? reg70 : 
        (reg437 == 5'b10000) ? reg70 : 
        (reg437 == 5'b10001) ? reg70 : 
        (reg437 == 5'b10010) ? reg70 : 
        (reg437 == 5'b10011) ? add1002 : 
        (reg437 == 5'b10100) ? reg70 : 
        (reg437 == 5'b10101) ? reg70 : 
        (reg437 == 5'b10110) ? reg70 : 
        reg70;
    assign sel1146 = and701 ? 1'b1 : 1'b0;
    assign sel1147 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? sel1146 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? 1'b0 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1148 = 
        (reg437 == 5'b0) ? reg358 : 
        (reg437 == 5'b1) ? reg358 : 
        (reg437 == 5'b10) ? reg358 : 
        (reg437 == 5'b11) ? reg358 : 
        (reg437 == 5'b110) ? reg358 : 
        (reg437 == 5'b100) ? reg358 : 
        (reg437 == 5'b101) ? reg358 : 
        (reg437 == 5'b111) ? reg358 : 
        (reg437 == 5'b1000) ? reg358 : 
        (reg437 == 5'b1001) ? reg358 : 
        (reg437 == 5'b1010) ? reg358 : 
        (reg437 == 5'b1011) ? reg358 : 
        (reg437 == 5'b1100) ? reg358 : 
        (reg437 == 5'b1101) ? reg358 : 
        (reg437 == 5'b1110) ? reg358 : 
        (reg437 == 5'b1111) ? reg358 : 
        (reg437 == 5'b10000) ? reg358 : 
        (reg437 == 5'b10001) ? reg358 : 
        (reg437 == 5'b10010) ? reg358 : 
        (reg437 == 5'b10011) ? reg358 : 
        (reg437 == 5'b10100) ? reg358 : 
        (reg437 == 5'b10101) ? proxy1044 : 
        (reg437 == 5'b10110) ? reg358 : 
        reg358;
    assign sel1149 = and701 ? 1'b1 : 1'b0;
    assign sel1150 = bindout185 ? 1'b1 : 1'b0;
    assign sel1151 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? sel1149 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? sel1150 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? 1'b0 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1152 = eq993 ? 1'b1 : 1'b0;
    assign sel1153 = ne987 ? sel1152 : 1'b1;
    assign sel1154 = io_pe_ready ? sel1153 : 1'b0;
    assign sel1155 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? sel1154 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1156 = eq821 ? reg113 : srl819;
    assign sel1157 = 
        (reg437 == 5'b0) ? reg113 : 
        (reg437 == 5'b1) ? reg113 : 
        (reg437 == 5'b10) ? reg113 : 
        (reg437 == 5'b11) ? reg113 : 
        (reg437 == 5'b110) ? reg113 : 
        (reg437 == 5'b100) ? reg113 : 
        (reg437 == 5'b101) ? reg113 : 
        (reg437 == 5'b111) ? reg113 : 
        (reg437 == 5'b1000) ? sel1156 : 
        (reg437 == 5'b1001) ? reg113 : 
        (reg437 == 5'b1010) ? reg113 : 
        (reg437 == 5'b1011) ? reg113 : 
        (reg437 == 5'b1100) ? reg113 : 
        (reg437 == 5'b1101) ? reg113 : 
        (reg437 == 5'b1110) ? reg113 : 
        (reg437 == 5'b1111) ? reg113 : 
        (reg437 == 5'b10000) ? reg113 : 
        (reg437 == 5'b10001) ? reg113 : 
        (reg437 == 5'b10010) ? reg113 : 
        (reg437 == 5'b10011) ? reg113 : 
        (reg437 == 5'b10100) ? reg113 : 
        (reg437 == 5'b10101) ? reg113 : 
        (reg437 == 5'b10110) ? reg113 : 
        reg113;
    assign proxy1158 = proxy367[31:0];
    assign sel1159 = io_pe_ready ? add1063 : proxy1158;
    assign sel1160 = 
        (reg437 == 5'b0) ? proxy1158 : 
        (reg437 == 5'b1) ? proxy1158 : 
        (reg437 == 5'b10) ? proxy1158 : 
        (reg437 == 5'b11) ? proxy1158 : 
        (reg437 == 5'b110) ? proxy1158 : 
        (reg437 == 5'b100) ? proxy1158 : 
        (reg437 == 5'b101) ? proxy1158 : 
        (reg437 == 5'b111) ? proxy1158 : 
        (reg437 == 5'b1000) ? proxy1158 : 
        (reg437 == 5'b1001) ? proxy1158 : 
        (reg437 == 5'b1010) ? proxy1158 : 
        (reg437 == 5'b1011) ? proxy1158 : 
        (reg437 == 5'b1100) ? proxy1158 : 
        (reg437 == 5'b1101) ? proxy1158 : 
        (reg437 == 5'b1110) ? proxy1158 : 
        (reg437 == 5'b1111) ? proxy1158 : 
        (reg437 == 5'b10000) ? proxy1158 : 
        (reg437 == 5'b10001) ? proxy1158 : 
        (reg437 == 5'b10010) ? proxy1158 : 
        (reg437 == 5'b10011) ? proxy1158 : 
        (reg437 == 5'b10100) ? proxy1158 : 
        (reg437 == 5'b10101) ? proxy1158 : 
        (reg437 == 5'b10110) ? sel1159 : 
        proxy1158;
    assign proxy1161 = proxy367[63:32];
    assign sel1162 = io_pe_ready ? sel1054 : proxy1161;
    assign sel1163 = 
        (reg437 == 5'b0) ? proxy1161 : 
        (reg437 == 5'b1) ? proxy1161 : 
        (reg437 == 5'b10) ? proxy1161 : 
        (reg437 == 5'b11) ? proxy1161 : 
        (reg437 == 5'b110) ? proxy1161 : 
        (reg437 == 5'b100) ? proxy1161 : 
        (reg437 == 5'b101) ? proxy1161 : 
        (reg437 == 5'b111) ? proxy1161 : 
        (reg437 == 5'b1000) ? proxy1161 : 
        (reg437 == 5'b1001) ? proxy1161 : 
        (reg437 == 5'b1010) ? proxy1161 : 
        (reg437 == 5'b1011) ? proxy1161 : 
        (reg437 == 5'b1100) ? proxy1161 : 
        (reg437 == 5'b1101) ? proxy1161 : 
        (reg437 == 5'b1110) ? proxy1161 : 
        (reg437 == 5'b1111) ? proxy1161 : 
        (reg437 == 5'b10000) ? proxy1161 : 
        (reg437 == 5'b10001) ? proxy1161 : 
        (reg437 == 5'b10010) ? proxy1161 : 
        (reg437 == 5'b10011) ? proxy1161 : 
        (reg437 == 5'b10100) ? proxy1161 : 
        (reg437 == 5'b10101) ? proxy1161 : 
        (reg437 == 5'b10110) ? sel1162 : 
        proxy1161;
    assign proxy1164 = proxy367[95:64];
    assign sel1165 = io_pe_ready ? sel1058 : proxy1164;
    assign sel1166 = 
        (reg437 == 5'b0) ? proxy1164 : 
        (reg437 == 5'b1) ? proxy1164 : 
        (reg437 == 5'b10) ? proxy1164 : 
        (reg437 == 5'b11) ? proxy1164 : 
        (reg437 == 5'b110) ? proxy1164 : 
        (reg437 == 5'b100) ? proxy1164 : 
        (reg437 == 5'b101) ? proxy1164 : 
        (reg437 == 5'b111) ? proxy1164 : 
        (reg437 == 5'b1000) ? proxy1164 : 
        (reg437 == 5'b1001) ? proxy1164 : 
        (reg437 == 5'b1010) ? proxy1164 : 
        (reg437 == 5'b1011) ? proxy1164 : 
        (reg437 == 5'b1100) ? proxy1164 : 
        (reg437 == 5'b1101) ? proxy1164 : 
        (reg437 == 5'b1110) ? proxy1164 : 
        (reg437 == 5'b1111) ? proxy1164 : 
        (reg437 == 5'b10000) ? proxy1164 : 
        (reg437 == 5'b10001) ? proxy1164 : 
        (reg437 == 5'b10010) ? proxy1164 : 
        (reg437 == 5'b10011) ? proxy1164 : 
        (reg437 == 5'b10100) ? proxy1164 : 
        (reg437 == 5'b10101) ? proxy1164 : 
        (reg437 == 5'b10110) ? sel1165 : 
        proxy1164;
    assign proxy1167 = proxy367[127:96];
    assign sel1168 = io_pe_ready ? add1060 : proxy1167;
    assign sel1169 = 
        (reg437 == 5'b0) ? proxy1167 : 
        (reg437 == 5'b1) ? proxy1167 : 
        (reg437 == 5'b10) ? proxy1167 : 
        (reg437 == 5'b11) ? proxy1167 : 
        (reg437 == 5'b110) ? proxy1167 : 
        (reg437 == 5'b100) ? proxy1167 : 
        (reg437 == 5'b101) ? proxy1167 : 
        (reg437 == 5'b111) ? proxy1167 : 
        (reg437 == 5'b1000) ? proxy1167 : 
        (reg437 == 5'b1001) ? proxy1167 : 
        (reg437 == 5'b1010) ? proxy1167 : 
        (reg437 == 5'b1011) ? proxy1167 : 
        (reg437 == 5'b1100) ? proxy1167 : 
        (reg437 == 5'b1101) ? proxy1167 : 
        (reg437 == 5'b1110) ? proxy1167 : 
        (reg437 == 5'b1111) ? proxy1167 : 
        (reg437 == 5'b10000) ? proxy1167 : 
        (reg437 == 5'b10001) ? proxy1167 : 
        (reg437 == 5'b10010) ? proxy1167 : 
        (reg437 == 5'b10011) ? proxy1167 : 
        (reg437 == 5'b10100) ? proxy1167 : 
        (reg437 == 5'b10101) ? proxy1167 : 
        (reg437 == 5'b10110) ? sel1168 : 
        proxy1167;
    assign proxy1170 = proxy367[159:128];
    assign sel1171 = io_lsu_rd_req_ready ? proxy1170 : add678;
    assign sel1172 = ne672 ? sel1171 : add681;
    assign sel1173 = 
        (reg437 == 5'b0) ? proxy1170 : 
        (reg437 == 5'b1) ? sel1172 : 
        (reg437 == 5'b10) ? proxy1170 : 
        (reg437 == 5'b11) ? proxy1170 : 
        (reg437 == 5'b110) ? proxy1170 : 
        (reg437 == 5'b100) ? proxy1170 : 
        (reg437 == 5'b101) ? proxy1170 : 
        (reg437 == 5'b111) ? proxy1170 : 
        (reg437 == 5'b1000) ? proxy1170 : 
        (reg437 == 5'b1001) ? proxy1170 : 
        (reg437 == 5'b1010) ? proxy1170 : 
        (reg437 == 5'b1011) ? proxy1170 : 
        (reg437 == 5'b1100) ? proxy1170 : 
        (reg437 == 5'b1101) ? proxy1170 : 
        (reg437 == 5'b1110) ? proxy1170 : 
        (reg437 == 5'b1111) ? proxy1170 : 
        (reg437 == 5'b10000) ? proxy1170 : 
        (reg437 == 5'b10001) ? proxy1170 : 
        (reg437 == 5'b10010) ? proxy1170 : 
        (reg437 == 5'b10011) ? proxy1170 : 
        (reg437 == 5'b10100) ? proxy1170 : 
        (reg437 == 5'b10101) ? proxy1170 : 
        (reg437 == 5'b10110) ? proxy1170 : 
        proxy1170;
    assign proxy1174 = proxy367[191:160];
    assign sel1175 = io_lsu_rd_req_ready ? proxy1174 : add695;
    assign sel1176 = ne691 ? sel1175 : add698;
    assign sel1177 = io_lsu_rd_req_ready ? proxy1174 : add763;
    assign sel1178 = ne759 ? sel1177 : add766;
    assign sel1179 = bindout185 ? proxy1174 : add772;
    assign sel1180 = 
        (reg437 == 5'b0) ? proxy1174 : 
        (reg437 == 5'b1) ? proxy1174 : 
        (reg437 == 5'b10) ? sel1176 : 
        (reg437 == 5'b11) ? proxy1174 : 
        (reg437 == 5'b110) ? proxy1174 : 
        (reg437 == 5'b100) ? sel1178 : 
        (reg437 == 5'b101) ? sel1179 : 
        (reg437 == 5'b111) ? proxy1174 : 
        (reg437 == 5'b1000) ? proxy1174 : 
        (reg437 == 5'b1001) ? proxy1174 : 
        (reg437 == 5'b1010) ? proxy1174 : 
        (reg437 == 5'b1011) ? proxy1174 : 
        (reg437 == 5'b1100) ? proxy1174 : 
        (reg437 == 5'b1101) ? proxy1174 : 
        (reg437 == 5'b1110) ? proxy1174 : 
        (reg437 == 5'b1111) ? proxy1174 : 
        (reg437 == 5'b10000) ? proxy1174 : 
        (reg437 == 5'b10001) ? proxy1174 : 
        (reg437 == 5'b10010) ? proxy1174 : 
        (reg437 == 5'b10011) ? proxy1174 : 
        (reg437 == 5'b10100) ? proxy1174 : 
        (reg437 == 5'b10101) ? proxy1174 : 
        (reg437 == 5'b10110) ? proxy1174 : 
        proxy1174;
    assign proxy1181 = proxy367[223:192];
    assign sel1182 = io_lsu_rd_req_ready ? proxy1181 : add914;
    assign sel1183 = ne910 ? sel1182 : add917;
    assign sel1184 = 
        (reg437 == 5'b0) ? proxy1181 : 
        (reg437 == 5'b1) ? proxy1181 : 
        (reg437 == 5'b10) ? proxy1181 : 
        (reg437 == 5'b11) ? proxy1181 : 
        (reg437 == 5'b110) ? proxy1181 : 
        (reg437 == 5'b100) ? proxy1181 : 
        (reg437 == 5'b101) ? proxy1181 : 
        (reg437 == 5'b111) ? proxy1181 : 
        (reg437 == 5'b1000) ? proxy1181 : 
        (reg437 == 5'b1001) ? proxy1181 : 
        (reg437 == 5'b1010) ? proxy1181 : 
        (reg437 == 5'b1011) ? proxy1181 : 
        (reg437 == 5'b1100) ? proxy1181 : 
        (reg437 == 5'b1101) ? proxy1181 : 
        (reg437 == 5'b1110) ? sel1183 : 
        (reg437 == 5'b1111) ? proxy1181 : 
        (reg437 == 5'b10000) ? proxy1181 : 
        (reg437 == 5'b10001) ? proxy1181 : 
        (reg437 == 5'b10010) ? proxy1181 : 
        (reg437 == 5'b10011) ? proxy1181 : 
        (reg437 == 5'b10100) ? proxy1181 : 
        (reg437 == 5'b10101) ? proxy1181 : 
        (reg437 == 5'b10110) ? proxy1181 : 
        proxy1181;
    assign proxy1185 = proxy367[255:224];
    assign sel1186 = io_lsu_rd_req_ready ? proxy1185 : add930;
    assign sel1187 = ne921 ? sel1186 : add933;
    assign sel1188 = eq936 ? proxy1185 : add960;
    assign sel1189 = 
        (reg437 == 5'b0) ? proxy1185 : 
        (reg437 == 5'b1) ? proxy1185 : 
        (reg437 == 5'b10) ? proxy1185 : 
        (reg437 == 5'b11) ? proxy1185 : 
        (reg437 == 5'b110) ? proxy1185 : 
        (reg437 == 5'b100) ? proxy1185 : 
        (reg437 == 5'b101) ? proxy1185 : 
        (reg437 == 5'b111) ? proxy1185 : 
        (reg437 == 5'b1000) ? proxy1185 : 
        (reg437 == 5'b1001) ? proxy1185 : 
        (reg437 == 5'b1010) ? proxy1185 : 
        (reg437 == 5'b1011) ? proxy1185 : 
        (reg437 == 5'b1100) ? proxy1185 : 
        (reg437 == 5'b1101) ? proxy1185 : 
        (reg437 == 5'b1110) ? proxy1185 : 
        (reg437 == 5'b1111) ? sel1187 : 
        (reg437 == 5'b10000) ? sel1188 : 
        (reg437 == 5'b10001) ? proxy1185 : 
        (reg437 == 5'b10010) ? proxy1185 : 
        (reg437 == 5'b10011) ? proxy1185 : 
        (reg437 == 5'b10100) ? proxy1185 : 
        (reg437 == 5'b10101) ? proxy1185 : 
        (reg437 == 5'b10110) ? proxy1185 : 
        proxy1185;
    assign proxy1190 = proxy367[287:256];
    assign sel1191 = io_lsu_rd_req_ready ? proxy1190 : add875;
    assign sel1192 = ne872 ? sel1191 : add878;
    assign sel1193 = 
        (reg437 == 5'b0) ? proxy1190 : 
        (reg437 == 5'b1) ? proxy1190 : 
        (reg437 == 5'b10) ? proxy1190 : 
        (reg437 == 5'b11) ? proxy1190 : 
        (reg437 == 5'b110) ? proxy1190 : 
        (reg437 == 5'b100) ? proxy1190 : 
        (reg437 == 5'b101) ? proxy1190 : 
        (reg437 == 5'b111) ? proxy1190 : 
        (reg437 == 5'b1000) ? proxy1190 : 
        (reg437 == 5'b1001) ? proxy1190 : 
        (reg437 == 5'b1010) ? proxy1190 : 
        (reg437 == 5'b1011) ? sel1192 : 
        (reg437 == 5'b1100) ? proxy1190 : 
        (reg437 == 5'b1101) ? proxy1190 : 
        (reg437 == 5'b1110) ? proxy1190 : 
        (reg437 == 5'b1111) ? proxy1190 : 
        (reg437 == 5'b10000) ? proxy1190 : 
        (reg437 == 5'b10001) ? proxy1190 : 
        (reg437 == 5'b10010) ? proxy1190 : 
        (reg437 == 5'b10011) ? proxy1190 : 
        (reg437 == 5'b10100) ? proxy1190 : 
        (reg437 == 5'b10101) ? proxy1190 : 
        (reg437 == 5'b10110) ? proxy1190 : 
        proxy1190;
    assign proxy1194 = proxy367[319:288];
    assign sel1195 = io_lsu_rd_req_ready ? proxy1194 : add831;
    assign sel1196 = ne827 ? sel1195 : add834;
    assign sel1197 = bindout281 ? proxy1194 : add862;
    assign sel1198 = 
        (reg437 == 5'b0) ? proxy1194 : 
        (reg437 == 5'b1) ? proxy1194 : 
        (reg437 == 5'b10) ? proxy1194 : 
        (reg437 == 5'b11) ? proxy1194 : 
        (reg437 == 5'b110) ? proxy1194 : 
        (reg437 == 5'b100) ? proxy1194 : 
        (reg437 == 5'b101) ? proxy1194 : 
        (reg437 == 5'b111) ? proxy1194 : 
        (reg437 == 5'b1000) ? proxy1194 : 
        (reg437 == 5'b1001) ? sel1196 : 
        (reg437 == 5'b1010) ? sel1197 : 
        (reg437 == 5'b1011) ? proxy1194 : 
        (reg437 == 5'b1100) ? proxy1194 : 
        (reg437 == 5'b1101) ? proxy1194 : 
        (reg437 == 5'b1110) ? proxy1194 : 
        (reg437 == 5'b1111) ? proxy1194 : 
        (reg437 == 5'b10000) ? proxy1194 : 
        (reg437 == 5'b10001) ? proxy1194 : 
        (reg437 == 5'b10010) ? proxy1194 : 
        (reg437 == 5'b10011) ? proxy1194 : 
        (reg437 == 5'b10100) ? proxy1194 : 
        (reg437 == 5'b10101) ? proxy1194 : 
        (reg437 == 5'b10110) ? proxy1194 : 
        proxy1194;
    assign proxy1199 = proxy367[351:320];
    assign sel1200 = io_pe_ready ? proxy1199 : add997;
    assign sel1201 = io_pe_ready ? proxy1199 : add1066;
    assign sel1202 = 
        (reg437 == 5'b0) ? proxy1199 : 
        (reg437 == 5'b1) ? proxy1199 : 
        (reg437 == 5'b10) ? proxy1199 : 
        (reg437 == 5'b11) ? proxy1199 : 
        (reg437 == 5'b110) ? proxy1199 : 
        (reg437 == 5'b100) ? proxy1199 : 
        (reg437 == 5'b101) ? proxy1199 : 
        (reg437 == 5'b111) ? proxy1199 : 
        (reg437 == 5'b1000) ? proxy1199 : 
        (reg437 == 5'b1001) ? proxy1199 : 
        (reg437 == 5'b1010) ? proxy1199 : 
        (reg437 == 5'b1011) ? proxy1199 : 
        (reg437 == 5'b1100) ? proxy1199 : 
        (reg437 == 5'b1101) ? proxy1199 : 
        (reg437 == 5'b1110) ? proxy1199 : 
        (reg437 == 5'b1111) ? proxy1199 : 
        (reg437 == 5'b10000) ? proxy1199 : 
        (reg437 == 5'b10001) ? sel1200 : 
        (reg437 == 5'b10010) ? proxy1199 : 
        (reg437 == 5'b10011) ? proxy1199 : 
        (reg437 == 5'b10100) ? proxy1199 : 
        (reg437 == 5'b10101) ? proxy1199 : 
        (reg437 == 5'b10110) ? sel1201 : 
        proxy1199;
    assign sel1203 = eq787 ? reg107 : srl785;
    assign sel1204 = 
        (reg437 == 5'b0) ? reg107 : 
        (reg437 == 5'b1) ? reg107 : 
        (reg437 == 5'b10) ? reg107 : 
        (reg437 == 5'b11) ? reg107 : 
        (reg437 == 5'b110) ? reg107 : 
        (reg437 == 5'b100) ? reg107 : 
        (reg437 == 5'b101) ? reg107 : 
        (reg437 == 5'b111) ? sel1203 : 
        (reg437 == 5'b1000) ? reg107 : 
        (reg437 == 5'b1001) ? reg107 : 
        (reg437 == 5'b1010) ? reg107 : 
        (reg437 == 5'b1011) ? reg107 : 
        (reg437 == 5'b1100) ? reg107 : 
        (reg437 == 5'b1101) ? reg107 : 
        (reg437 == 5'b1110) ? reg107 : 
        (reg437 == 5'b1111) ? reg107 : 
        (reg437 == 5'b10000) ? reg107 : 
        (reg437 == 5'b10001) ? reg107 : 
        (reg437 == 5'b10010) ? reg107 : 
        (reg437 == 5'b10011) ? reg107 : 
        (reg437 == 5'b10100) ? reg107 : 
        (reg437 == 5'b10101) ? reg107 : 
        (reg437 == 5'b10110) ? reg107 : 
        reg107;
    assign sel1205 = and701 ? proxy724 : reg88;
    assign sel1206 = io_pe_ready ? add985 : reg88;
    assign sel1207 = 
        (reg437 == 5'b0) ? reg88 : 
        (reg437 == 5'b1) ? reg88 : 
        (reg437 == 5'b10) ? reg88 : 
        (reg437 == 5'b11) ? sel1205 : 
        (reg437 == 5'b110) ? reg88 : 
        (reg437 == 5'b100) ? reg88 : 
        (reg437 == 5'b101) ? reg88 : 
        (reg437 == 5'b111) ? reg88 : 
        (reg437 == 5'b1000) ? reg88 : 
        (reg437 == 5'b1001) ? reg88 : 
        (reg437 == 5'b1010) ? reg88 : 
        (reg437 == 5'b1011) ? reg88 : 
        (reg437 == 5'b1100) ? reg88 : 
        (reg437 == 5'b1101) ? reg88 : 
        (reg437 == 5'b1110) ? reg88 : 
        (reg437 == 5'b1111) ? reg88 : 
        (reg437 == 5'b10000) ? reg88 : 
        (reg437 == 5'b10001) ? sel1206 : 
        (reg437 == 5'b10010) ? reg88 : 
        (reg437 == 5'b10011) ? reg88 : 
        (reg437 == 5'b10100) ? proxy1034 : 
        (reg437 == 5'b10101) ? reg88 : 
        (reg437 == 5'b10110) ? reg88 : 
        reg88;
    assign sel1208 = eq993 ? 1'b1 : 1'b0;
    assign sel1209 = ne987 ? sel1208 : 1'b1;
    assign sel1210 = io_pe_ready ? sel1209 : 1'b0;
    assign sel1211 = 
        (reg437 == 5'b0) ? 1'b0 : 
        (reg437 == 5'b1) ? 1'b0 : 
        (reg437 == 5'b10) ? 1'b0 : 
        (reg437 == 5'b11) ? 1'b0 : 
        (reg437 == 5'b110) ? 1'b0 : 
        (reg437 == 5'b100) ? 1'b0 : 
        (reg437 == 5'b101) ? 1'b0 : 
        (reg437 == 5'b111) ? 1'b0 : 
        (reg437 == 5'b1000) ? 1'b0 : 
        (reg437 == 5'b1001) ? 1'b0 : 
        (reg437 == 5'b1010) ? 1'b0 : 
        (reg437 == 5'b1011) ? 1'b0 : 
        (reg437 == 5'b1100) ? 1'b0 : 
        (reg437 == 5'b1101) ? 1'b0 : 
        (reg437 == 5'b1110) ? 1'b0 : 
        (reg437 == 5'b1111) ? 1'b0 : 
        (reg437 == 5'b10000) ? 1'b0 : 
        (reg437 == 5'b10001) ? sel1210 : 
        (reg437 == 5'b10010) ? 1'b0 : 
        (reg437 == 5'b10011) ? 1'b0 : 
        (reg437 == 5'b10100) ? 1'b0 : 
        (reg437 == 5'b10101) ? 1'b0 : 
        (reg437 == 5'b10110) ? 1'b0 : 
        1'b0;
    assign sel1212 = bindout257 ? bindout260 : reg352;
    assign sel1213 = eq936 ? sel1212 : reg352;
    assign sel1214 = 
        (reg437 == 5'b0) ? reg352 : 
        (reg437 == 5'b1) ? reg352 : 
        (reg437 == 5'b10) ? reg352 : 
        (reg437 == 5'b11) ? reg352 : 
        (reg437 == 5'b110) ? reg352 : 
        (reg437 == 5'b100) ? reg352 : 
        (reg437 == 5'b101) ? reg352 : 
        (reg437 == 5'b111) ? reg352 : 
        (reg437 == 5'b1000) ? reg352 : 
        (reg437 == 5'b1001) ? reg352 : 
        (reg437 == 5'b1010) ? reg352 : 
        (reg437 == 5'b1011) ? reg352 : 
        (reg437 == 5'b1100) ? reg352 : 
        (reg437 == 5'b1101) ? reg352 : 
        (reg437 == 5'b1110) ? reg352 : 
        (reg437 == 5'b1111) ? reg352 : 
        (reg437 == 5'b10000) ? sel1213 : 
        (reg437 == 5'b10001) ? reg352 : 
        (reg437 == 5'b10010) ? reg352 : 
        (reg437 == 5'b10011) ? reg352 : 
        (reg437 == 5'b10100) ? reg352 : 
        (reg437 == 5'b10101) ? reg352 : 
        (reg437 == 5'b10110) ? reg352 : 
        reg352;
    assign sel1215 = 
        (reg437 == 5'b0) ? reg100 : 
        (reg437 == 5'b1) ? reg100 : 
        (reg437 == 5'b10) ? reg100 : 
        (reg437 == 5'b11) ? reg100 : 
        (reg437 == 5'b110) ? reg100 : 
        (reg437 == 5'b100) ? reg100 : 
        (reg437 == 5'b101) ? reg100 : 
        (reg437 == 5'b111) ? sub776 : 
        (reg437 == 5'b1000) ? reg100 : 
        (reg437 == 5'b1001) ? reg100 : 
        (reg437 == 5'b1010) ? reg100 : 
        (reg437 == 5'b1011) ? reg100 : 
        (reg437 == 5'b1100) ? reg100 : 
        (reg437 == 5'b1101) ? reg100 : 
        (reg437 == 5'b1110) ? reg100 : 
        (reg437 == 5'b1111) ? reg100 : 
        (reg437 == 5'b10000) ? reg100 : 
        (reg437 == 5'b10001) ? reg100 : 
        (reg437 == 5'b10010) ? reg100 : 
        (reg437 == 5'b10011) ? reg100 : 
        (reg437 == 5'b10100) ? reg100 : 
        (reg437 == 5'b10101) ? reg100 : 
        (reg437 == 5'b10110) ? reg100 : 
        reg100;

    assign io_ctrl_start_ready = io_ctrl_start_ready11;
    assign io_ctrl_stats = io_ctrl_stats17;
    assign io_lsu_rd_req_valid = sel1135;
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
    wire io_enq_valid2; // /home/blaise/dev/cash/src/htl/pipe.h(9) @var1652
    wire[20:0] io_enq_data5; // /home/blaise/dev/cash/src/htl/pipe.h(9) @var1653
    wire io_enq_ready10; // /home/blaise/dev/cash/src/htl/pipe.h(9) @var1656
    wire io_deq_valid13; // /home/blaise/dev/cash/src/htl/pipe.h(9) @var1657
    wire[20:0] io_deq_data16; // /home/blaise/dev/cash/src/htl/pipe.h(9) @var1658
    wire io_deq_ready21; // /home/blaise/dev/cash/src/htl/pipe.h(9) @var1661
    wire[20:0] ch_pipe_data_t23; // /home/blaise/dev/cash/src/htl/pipe.h(17) @var1662
    wire proxy26; // /home/blaise/dev/cash/src/htl/pipe.h(18) @var1665
    wire[20:0] ch_pipe_data_t28; // /home/blaise/dev/cash/src/htl/pipe.h(20) @var1666
    wire proxy32; // /home/blaise/dev/cash/src/htl/pipe.h(21) @var1669
    wire[20:0] proxy33; // /home/blaise/dev/cash/src/htl/pipe.h(22) @var1670
    wire[20:0] sel36;
    reg[20:0] reg44;
    wire[20:0] proxy45; // @var1677
    wire proxy48; // /home/blaise/dev/cash/src/htl/pipe.h(23) @var1680
    wire sel49;
    reg reg53;
    wire proxy54; // @var1683
    wire[20:0] ch_pipe_data_t56; // /home/blaise/dev/cash/src/htl/pipe.h(20) @var1684
    wire proxy60; // /home/blaise/dev/cash/src/htl/pipe.h(21) @var1687
    wire[20:0] proxy61; // /home/blaise/dev/cash/src/htl/pipe.h(22) @var1688
    wire[20:0] sel64;
    reg[20:0] reg69;
    wire[20:0] proxy70; // @var1695
    wire proxy73; // /home/blaise/dev/cash/src/htl/pipe.h(23) @var1698
    wire sel74;
    reg reg77;
    wire proxy78; // @var1701
    wire[20:0] ch_pipe_data_t80; // /home/blaise/dev/cash/src/htl/pipe.h(20) @var1702
    wire proxy84; // /home/blaise/dev/cash/src/htl/pipe.h(21) @var1705
    wire[20:0] proxy85; // /home/blaise/dev/cash/src/htl/pipe.h(22) @var1706
    wire[20:0] sel88;
    reg[20:0] reg93;
    wire[20:0] proxy94; // @var1713
    wire proxy97; // /home/blaise/dev/cash/src/htl/pipe.h(23) @var1716
    wire sel98;
    reg reg101;
    wire proxy102; // @var1719

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
    wire[511:0] lit264 = 512'h0;
    wire[479:0] lit452 = 480'h0;
    wire[84:0] io_req_data5; // pe.cpp(14) @var1636
    wire[19:0] proxy6; // a_rowind(0) @var1637
    wire[31:0] proxy7; // a_value(0) @var1638
    wire[31:0] proxy8; // x_value(0) @var1639
    wire proxy9; // is_end(0) @var1640
    wire io_req_ready12; // pe.cpp(14) @var1641
    wire[533:0] io_lsu_wr_req_data18; // pe.cpp(14) @var1643
    wire[63:0] io_stats27; // pe.cpp(14) @var1648
    wire io_is_idle32; // pe.cpp(14) @var1651
    wire proxy35; // /home/blaise/dev/cash/src/module.h(33) @var1720
    wire bindin38;
    wire bindin40;
    wire bindin41;
    wire[20:0] proxy43; // /home/blaise/dev/cash/src/module.h(33) @var1721
    wire[20:0] bindin46;
    wire proxy48; // /home/blaise/dev/cash/src/module.h(33) @var1724
    wire bindout49;
    wire bindout52;
    wire[20:0] proxy54; // /home/blaise/dev/cash/src/module.h(33) @var1726
    wire[19:0] proxy55; // a_rowind(0) @var1727
    wire proxy56; // is_end(0) @var1728
    wire[20:0] bindout57;
    wire proxy59; // /home/blaise/dev/cash/src/module.h(33) @var1729
    wire bindin60;
    wire proxy62; // /home/blaise/dev/cash/src/module.h(33) @var1798
    wire bindin64;
    wire bindin65;
    wire bindin66;
    wire[20:0] proxy68; // /home/blaise/dev/cash/src/module.h(33) @var1799
    wire proxy70; // is_end(0) @var1801
    wire[20:0] bindin71;
    wire bindout77;
    wire[20:0] proxy79; // /home/blaise/dev/cash/src/module.h(33) @var1804
    wire[19:0] proxy80; // a_rowind(0) @var1805
    wire proxy81; // is_end(0) @var1806
    wire[20:0] bindout82;
    wire proxy84; // /home/blaise/dev/cash/src/module.h(33) @var1807
    wire bindin85;
    reg[31:0] mem86[0:31];
    reg[31:0] reg93; // pe.cpp(14) @var1808
    wire[31:0] proxy95; // pe.cpp(14) @var1811
    reg[31:0] reg99; // pe.cpp(14) @var1811
    reg[31:0] reg105; // pe.cpp(14) @var1814
    reg[31:0] reg111; // pe.cpp(14) @var1817
    wire[4:0] proxy115; // pe.cpp(14) @var1821
    wire[4:0] proxy117; // pe.cpp(14) @var1822
    reg[19:0] reg126; // pe.cpp(14) @var1824
    wire[63:0] proxy128; // pe.cpp(14) @var1827
    wire[31:0] proxy129; // write_value_stalls(0) @var1828
    wire[31:0] proxy130; // write_mask_stalls(0) @var1829
    wire[63:0] ch_pe_stats_t132; // /home/blaise/dev/cash/src/seq.h(17) @var1830
    reg[63:0] reg137; // pe.cpp(14) @var1827
    wire[31:0] proxy139; // pe.cpp(23)
    wire[31:0] sel140; // pe.cpp(23)
    reg[1:0] reg147; // pe.cpp(32) @var1835
    wire[31:0] sll150;
    wire[31:0] sll153;
    wire eq157;
    wire eq160;
    wire or162;
    wire proxy163; // @var1846
    wire eq165;
    wire[31:0] and167;
    wire eq170;
    wire and172;
    wire or174;
    wire proxy175; // @var1853
    wire eq177;
    wire eq180;
    wire and182;
    wire proxy183; // @var1858
    wire[31:0] and185;
    wire ne188;
    wire[31:0] sel191;
    wire and193;
    wire proxy194; // @var1865
    wire[31:0] proxy195; // pe.cpp(63) @var1866
    wire[31:0] proxy196; // pe.cpp(63) @var1867
    wire[31:0] fmult197;
    wire and199;
    wire proxy200; // @var1869
    wire[19:0] and203;
    wire[19:0] proxy204; // @var1871
    wire[4:0] proxy205; // pe.cpp(70) @var1872
    wire[31:0] fadd206;
    wire proxy208; // pe.cpp(75) @var1874
    wire eq210;
    wire and212;
    wire eq215;
    wire and217;
    wire eq220;
    wire and222;
    wire[31:0] add225;
    wire[31:0] sub228;
    wire[31:0] sel230; // pe.cpp(77)
    wire eq232;
    wire and234;
    wire eq237;
    wire and239;
    wire ne241;
    wire and243;
    wire[31:0] inv245;
    wire[31:0] and247;
    wire[31:0] or249;
    wire[31:0] inv251;
    wire[31:0] and253;
    wire[31:0] or255;
    wire[31:0] sel257; // pe.cpp(88)
    wire[31:0] sel258; // pe.cpp(87)
    wire[19:0] and261;
    wire[19:0] sel263; // pe.cpp(98)
    wire eq268;
    wire and270;
    wire[19:0] and273;
    wire[19:0] proxy274; // @var1909
    wire[4:0] proxy275; // pe.cpp(118) @var1910
    wire[31:0] or276;
    wire and278;
    wire[511:0] proxy283; // pe.cpp(136) @var1914
    wire[4:0] proxy284; // /home/blaise/dev/cash/src/bit.h(287) @var1915
    wire[4:0] proxy288; // /home/blaise/dev/cash/src/bit.h(287) @var1918
    wire[4:0] proxy292; // /home/blaise/dev/cash/src/bit.h(287) @var1921
    wire[4:0] proxy296; // /home/blaise/dev/cash/src/bit.h(287) @var1924
    wire[4:0] proxy300; // /home/blaise/dev/cash/src/bit.h(287) @var1927
    wire[4:0] proxy304; // /home/blaise/dev/cash/src/bit.h(287) @var1930
    wire[4:0] proxy308; // /home/blaise/dev/cash/src/bit.h(287) @var1933
    wire[4:0] proxy312; // /home/blaise/dev/cash/src/bit.h(287) @var1936
    wire[4:0] proxy316; // /home/blaise/dev/cash/src/bit.h(287) @var1939
    wire[4:0] proxy320; // /home/blaise/dev/cash/src/bit.h(287) @var1942
    wire[4:0] proxy324; // /home/blaise/dev/cash/src/bit.h(287) @var1945
    wire[4:0] proxy328; // /home/blaise/dev/cash/src/bit.h(287) @var1948
    wire[4:0] proxy332; // /home/blaise/dev/cash/src/bit.h(287) @var1951
    wire[4:0] proxy336; // /home/blaise/dev/cash/src/bit.h(287) @var1954
    wire[4:0] proxy340; // /home/blaise/dev/cash/src/bit.h(287) @var1957
    wire[4:0] proxy344; // /home/blaise/dev/cash/src/bit.h(287) @var1960
    wire[19:0] sll349;
    wire[19:0] srl353;
    wire[31:0] add358;
    wire[511:0] proxy362; // pe.cpp(155) @var1970
    wire[4:0] proxy364; // /home/blaise/dev/cash/src/bit.h(287) @var1971
    wire[4:0] proxy368; // /home/blaise/dev/cash/src/bit.h(287) @var1974
    wire[4:0] proxy372; // /home/blaise/dev/cash/src/bit.h(287) @var1977
    wire[4:0] proxy376; // /home/blaise/dev/cash/src/bit.h(287) @var1980
    wire[4:0] proxy380; // /home/blaise/dev/cash/src/bit.h(287) @var1983
    wire[4:0] proxy384; // /home/blaise/dev/cash/src/bit.h(287) @var1986
    wire[4:0] proxy388; // /home/blaise/dev/cash/src/bit.h(287) @var1989
    wire[4:0] proxy392; // /home/blaise/dev/cash/src/bit.h(287) @var1992
    wire[4:0] proxy396; // /home/blaise/dev/cash/src/bit.h(287) @var1995
    wire[4:0] proxy400; // /home/blaise/dev/cash/src/bit.h(287) @var1998
    wire[4:0] proxy404; // /home/blaise/dev/cash/src/bit.h(287) @var2001
    wire[4:0] proxy408; // /home/blaise/dev/cash/src/bit.h(287) @var2004
    wire[4:0] proxy412; // /home/blaise/dev/cash/src/bit.h(287) @var2007
    wire[4:0] proxy416; // /home/blaise/dev/cash/src/bit.h(287) @var2010
    wire[4:0] proxy420; // /home/blaise/dev/cash/src/bit.h(287) @var2013
    wire[4:0] proxy424; // /home/blaise/dev/cash/src/bit.h(287) @var2016
    wire[19:0] sll428;
    wire[19:0] srl431;
    wire[19:0] add435;
    wire[31:0] add439;
    wire[19:0] srl444;
    wire[19:0] sll447;
    wire[19:0] srl450;
    wire[479:0] proxy453; // pe.cpp(176) @var2034
    wire[511:0] proxy455; // pe.cpp(176) @var2035
    wire[19:0] srl457;
    wire[19:0] and461;
    wire[19:0] sll464;
    wire[511:0] sll466;
    wire[31:0] add469;
    wire[31:0] proxy471; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel472; // pe.cpp(145)
    wire[31:0] sel473; // pe.cpp(164)
    wire[31:0] sel474; // pe.cpp(114)
    wire[31:0] proxy475; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel476; // pe.cpp(179)
    wire[31:0] sel477; // pe.cpp(114)
    wire sel478; // pe.cpp(114)
    wire[4:0] sel479; // pe.cpp(114)
    wire sel480; // pe.cpp(114)
    wire[31:0] sel481; // pe.cpp(127)
    wire[31:0] sel482; // pe.cpp(114)
    wire[31:0] sel483; // pe.cpp(114)
    wire[1:0] sel484; // pe.cpp(114)
    wire[19:0] sel485; // pe.cpp(114)
    wire[511:0] sel486; // pe.cpp(114)
    wire[31:0] sel487; // pe.cpp(122)
    wire[31:0] sel488; // pe.cpp(127)
    wire[31:0] sel489; // pe.cpp(114)
    wire[1:0] sel490; // pe.cpp(127)
    wire[1:0] sel491; // pe.cpp(145)
    wire[1:0] sel492; // pe.cpp(164)
    wire[1:0] sel493; // pe.cpp(179)
    wire[1:0] sel494; // pe.cpp(114)

    assign io_req_data5 = io_req_data;
    assign proxy6 = io_req_data5[19:0];
    assign proxy7 = io_req_data5[51:20];
    assign proxy8 = io_req_data5[83:52];
    assign proxy9 = io_req_data5[84];
    assign io_req_ready12 = proxy48;
    assign io_lsu_wr_req_data18 = {sel486, sel485, sel484};
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
    always @ (posedge clk) reg93 <= reset ? 32'h0 : sel489;
    assign proxy95 = reg99;
    always @ (posedge clk) reg99 <= reset ? 32'h0 : sel482;
    always @ (posedge clk) reg105 <= reset ? 32'h0 : sel258;
    always @ (posedge clk) reg111 <= reset ? 32'h0 : sel230;
    assign proxy115 = proxy205;
    assign proxy117 = sel479;
    always @ (posedge clk) reg126 <= reset ? 20'h0 : sel263;
    assign proxy128 = reg137;
    assign proxy129 = proxy128[31:0];
    assign proxy130 = proxy128[63:32];
    assign ch_pe_stats_t132 = {sel477, sel474};
    always @ (posedge clk) reg137 <= reset ? lit135 : ch_pe_stats_t132;
    assign proxy139 = sel140;
    assign sel140 = sel480 ? sel483 : mem86[proxy117];
    always @ (posedge clk) reg147 <= reset ? 2'b0 : sel494;
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
    assign sub228 = reg111 - 32'h1;
    assign sel230 = 
        and222 ? add225 : 
        and217 ? sub228 : 
        reg111;
    assign eq232 = proxy70 == 1'b0;
    assign and234 = proxy62 & eq232;
    assign eq237 = proxy81 == 1'b0;
    assign and239 = and212 & eq237;
    assign ne241 = sll150 != sll153;
    assign and243 = and234 & ne241;
    assign inv245 = ~sll153;
    assign and247 = reg105 & inv245;
    assign or249 = and247 | sll150;
    assign inv251 = ~sll153;
    assign and253 = reg105 & inv251;
    assign or255 = reg105 | sll150;
    assign sel257 = and243 ? or249 : and253;
    assign sel258 = 
        and239 ? sel257 : 
        and234 ? or255 : 
        reg105;
    assign and261 = proxy80 & 20'hfffe0;
    assign sel263 = and239 ? and261 : reg126;
    assign eq268 = proxy81 == 1'b0;
    assign and270 = bindout77 & eq268;
    assign and273 = proxy80 & 20'h1f;
    assign proxy274 = and273;
    assign proxy275 = proxy274[4:0];
    assign or276 = reg93 | sll153;
    assign and278 = bindout77 & proxy81;
    assign proxy283 = {mem86[proxy344], mem86[proxy340], mem86[proxy336], mem86[proxy332], mem86[proxy328], mem86[proxy324], mem86[proxy320], mem86[proxy316], mem86[proxy312], mem86[proxy308], mem86[proxy304], mem86[proxy300], mem86[proxy296], mem86[proxy292], mem86[proxy288], mem86[proxy284]};
    assign proxy284 = 5'b0;
    assign proxy288 = 5'b1;
    assign proxy292 = 5'b10;
    assign proxy296 = 5'b11;
    assign proxy300 = 5'b100;
    assign proxy304 = 5'b101;
    assign proxy308 = 5'b110;
    assign proxy312 = 5'b111;
    assign proxy316 = 5'b1000;
    assign proxy320 = 5'b1001;
    assign proxy324 = 5'b1010;
    assign proxy328 = 5'b1011;
    assign proxy332 = 5'b1100;
    assign proxy336 = 5'b1101;
    assign proxy340 = 5'b1110;
    assign proxy344 = 5'b1111;
    assign sll349 = reg126 << 20'h2;
    assign srl353 = sll349 >> 20'h6;
    assign add358 = proxy129 + 32'h1;
    assign proxy362 = {mem86[proxy424], mem86[proxy420], mem86[proxy416], mem86[proxy412], mem86[proxy408], mem86[proxy404], mem86[proxy400], mem86[proxy396], mem86[proxy392], mem86[proxy388], mem86[proxy384], mem86[proxy380], mem86[proxy376], mem86[proxy372], mem86[proxy368], mem86[proxy364]};
    assign proxy364 = 5'b10000;
    assign proxy368 = 5'b10001;
    assign proxy372 = 5'b10010;
    assign proxy376 = 5'b10011;
    assign proxy380 = 5'b10100;
    assign proxy384 = 5'b10101;
    assign proxy388 = 5'b10110;
    assign proxy392 = 5'b10111;
    assign proxy396 = 5'b11000;
    assign proxy400 = 5'b11001;
    assign proxy404 = 5'b11010;
    assign proxy408 = 5'b11011;
    assign proxy412 = 5'b11100;
    assign proxy416 = 5'b11101;
    assign proxy420 = 5'b11110;
    assign proxy424 = 5'b11111;
    assign sll428 = reg126 << 20'h2;
    assign srl431 = sll428 >> 20'h6;
    assign add435 = srl431 + 20'h1;
    assign add439 = proxy129 + 32'h1;
    assign srl444 = reg126 >> 20'h5;
    assign sll447 = srl444 << 20'h2;
    assign srl450 = sll447 >> 20'h6;
    assign proxy453 = lit452;
    assign proxy455 = {proxy453, proxy95};
    assign srl457 = reg126 >> 20'h5;
    assign and461 = srl457 & 20'hf;
    assign sll464 = and461 << 20'h5;
    assign sll466 = proxy455 << sll464;
    assign add469 = proxy130 + 32'h1;
    assign proxy471 = proxy128[31:0];
    assign sel472 = io_lsu_wr_req_ready ? proxy471 : add358;
    assign sel473 = io_lsu_wr_req_ready ? proxy471 : add439;
    assign sel474 = 
        (reg147 == 2'b0) ? proxy471 : 
        (reg147 == 2'b1) ? sel472 : 
        (reg147 == 2'b10) ? sel473 : 
        (reg147 == 2'b11) ? proxy471 : 
        proxy471;
    assign proxy475 = proxy128[63:32];
    assign sel476 = io_lsu_wr_req_ready ? proxy475 : add469;
    assign sel477 = 
        (reg147 == 2'b0) ? proxy475 : 
        (reg147 == 2'b1) ? proxy475 : 
        (reg147 == 2'b10) ? proxy475 : 
        (reg147 == 2'b11) ? sel476 : 
        proxy475;
    assign sel478 = 
        (reg147 == 2'b0) ? 1'b0 : 
        (reg147 == 2'b1) ? 1'b1 : 
        (reg147 == 2'b10) ? 1'b1 : 
        (reg147 == 2'b11) ? 1'b1 : 
        1'b0;
    assign sel479 = 
        (reg147 == 2'b0) ? proxy275 : 
        (reg147 == 2'b1) ? 5'b0 : 
        (reg147 == 2'b10) ? 5'b0 : 
        (reg147 == 2'b11) ? 5'b0 : 
        5'b0;
    assign sel480 = 
        (reg147 == 2'b0) ? and270 : 
        (reg147 == 2'b1) ? 1'b0 : 
        (reg147 == 2'b10) ? 1'b0 : 
        (reg147 == 2'b11) ? 1'b0 : 
        1'b0;
    assign sel481 = and278 ? reg93 : proxy95;
    assign sel482 = 
        (reg147 == 2'b0) ? sel481 : 
        (reg147 == 2'b1) ? proxy95 : 
        (reg147 == 2'b10) ? proxy95 : 
        (reg147 == 2'b11) ? proxy95 : 
        proxy95;
    assign sel483 = 
        (reg147 == 2'b0) ? fadd206 : 
        (reg147 == 2'b1) ? 32'h0 : 
        (reg147 == 2'b10) ? 32'h0 : 
        (reg147 == 2'b11) ? 32'h0 : 
        32'h0;
    assign sel484 = 
        (reg147 == 2'b0) ? 2'b0 : 
        (reg147 == 2'b1) ? 2'b0 : 
        (reg147 == 2'b10) ? 2'b0 : 
        (reg147 == 2'b11) ? 2'b1 : 
        2'b0;
    assign sel485 = 
        (reg147 == 2'b0) ? 20'h0 : 
        (reg147 == 2'b1) ? srl353 : 
        (reg147 == 2'b10) ? add435 : 
        (reg147 == 2'b11) ? srl450 : 
        20'h0;
    assign sel486 = 
        (reg147 == 2'b0) ? lit264 : 
        (reg147 == 2'b1) ? proxy283 : 
        (reg147 == 2'b10) ? proxy362 : 
        (reg147 == 2'b11) ? sll466 : 
        lit264;
    assign sel487 = sel480 ? or276 : reg93;
    assign sel488 = and278 ? 32'h0 : sel487;
    assign sel489 = 
        (reg147 == 2'b0) ? sel488 : 
        (reg147 == 2'b1) ? reg93 : 
        (reg147 == 2'b10) ? reg93 : 
        (reg147 == 2'b11) ? reg93 : 
        reg93;
    assign sel490 = and278 ? 2'b1 : reg147;
    assign sel491 = io_lsu_wr_req_ready ? 2'b10 : reg147;
    assign sel492 = io_lsu_wr_req_ready ? 2'b11 : reg147;
    assign sel493 = io_lsu_wr_req_ready ? 2'b0 : reg147;
    assign sel494 = 
        (reg147 == 2'b0) ? sel490 : 
        (reg147 == 2'b1) ? sel491 : 
        (reg147 == 2'b10) ? sel492 : 
        (reg147 == 2'b11) ? sel493 : 
        reg147;

    assign io_req_ready = io_req_ready12;
    assign io_lsu_wr_req_valid = sel478;
    assign io_lsu_wr_req_data = io_lsu_wr_req_data18;
    assign io_stats = io_stats27;
    assign io_is_idle = io_is_idle32;

endmodule


module ch_hxbar(
    input wire[2:0] io_sel,
    input wire[71:0] io_in,
    output wire[23:0] io_out
);
    wire[2:0] io_sel2; // /home/blaise/dev/cash/src/htl/xbar.h(12) @var2588
    wire[71:0] io_in5; // /home/blaise/dev/cash/src/htl/xbar.h(12) @var2589
    wire[23:0] proxy6; // @var2590
    wire[23:0] proxy7; // @var2591
    wire[23:0] proxy8; // @var2592
    wire[23:0] io_out23; // /home/blaise/dev/cash/src/htl/xbar.h(12) @var2605
    wire[2:0] proxy30; // /home/blaise/dev/cash/src/htl/xbar.h(20) @var2611
    wire eq39;
    wire[23:0] sel40;
    wire eq41;
    wire[23:0] sel42;
    wire eq43;
    wire[23:0] sel44;
    wire[23:0] proxy45; // @var2616

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
    wire[2:0] io_in2; // /home/blaise/dev/cash/src/htl/arbiter.h(13) @var2644
    wire proxy3; // @var2645
    wire proxy4; // @var2646
    wire proxy5; // @var2647
    wire[2:0] io_grant8; // /home/blaise/dev/cash/src/htl/arbiter.h(13) @var2648
    wire proxy22; // /home/blaise/dev/cash/src/seq.h(17) @var2653
    reg reg24; // /home/blaise/dev/cash/src/htl/arbiter.h(20) @var2652
    wire proxy28; // /home/blaise/dev/cash/src/seq.h(17) @var2656
    reg reg30; // /home/blaise/dev/cash/src/htl/arbiter.h(20) @var2655
    wire proxy46; // /home/blaise/dev/cash/src/seq.h(17) @var2665
    reg reg48; // /home/blaise/dev/cash/src/htl/arbiter.h(20) @var2664
    wire[2:0] proxy68; // /home/blaise/dev/cash/src/htl/arbiter.h(21) @var2676
    wire[2:0] proxy70; // /home/blaise/dev/cash/src/htl/arbiter.h(21) @var2677
    wire[2:0] proxy72; // /home/blaise/dev/cash/src/htl/arbiter.h(21) @var2678
    wire[2:0] proxy74; // /home/blaise/dev/cash/src/htl/arbiter.h(22) @var2679
    wire and75;
    wire proxy76; // @var2680
    wire and78;
    wire proxy79; // @var2682
    wire orr82;
    wire inv84;
    wire and86;
    wire proxy87; // @var2687
    wire proxy89; // @var2689
    wire inv90;
    wire proxy92; // @var2691
    wire or93;
    wire and95;
    wire proxy96; // @var2693
    wire proxy97; // @var2694
    wire inv98;
    wire proxy100; // @var2696
    wire or101;
    wire and103;
    wire proxy104; // @var2698
    wire and105;
    wire proxy106; // @var2699
    wire inv109;
    wire and111;
    wire proxy112; // @var2703
    wire orr114;
    wire inv116;
    wire and118;
    wire proxy119; // @var2707
    wire proxy121; // @var2709
    wire inv122;
    wire proxy124; // @var2711
    wire or125;
    wire and127;
    wire proxy128; // @var2713
    wire inv130;
    wire and132;
    wire proxy133; // @var2716
    wire inv135;
    wire and137;
    wire proxy138; // @var2719
    wire orr140;
    wire inv142;
    wire and144;
    wire proxy145; // @var2723

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
    wire io_in_0_valid2; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2567
    wire[22:0] io_in_0_data5; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2568
    wire io_in_0_ready10; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2571
    wire io_in_1_valid13; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2572
    wire[22:0] io_in_1_data16; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2573
    wire io_in_1_ready21; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2576
    wire io_in_2_valid24; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2577
    wire[22:0] io_in_2_data27; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2578
    wire io_in_2_ready32; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2581
    wire io_out_valid35; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2582
    wire[22:0] io_out_data38; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2583
    wire[2:0] io_out_grant46; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2587
    wire[2:0] proxy49; // /home/blaise/dev/cash/src/module.h(33) @var2621
    wire[2:0] bindin51;
    wire[71:0] proxy53; // /home/blaise/dev/cash/src/module.h(33) @var2622
    wire[71:0] bindin69;
    wire[23:0] proxy71; // /home/blaise/dev/cash/src/module.h(33) @var2638
    wire[23:0] proxy72; // @var2639
    wire proxy73; // valid(0) @var2640
    wire[22:0] proxy74; // data(0) @var2641
    wire[23:0] bindout77;
    wire[2:0] proxy79; // /home/blaise/dev/cash/src/module.h(33) @var2725
    wire bindin85;
    wire bindin87;
    wire[2:0] bindin88;
    wire[2:0] proxy90; // /home/blaise/dev/cash/src/module.h(33) @var2729
    wire[2:0] bindout91;
    wire eq111;
    wire and113;
    wire proxy114; // @var2741
    wire eq117;
    wire and119;
    wire proxy120; // @var2744
    wire eq123;
    wire and125;
    wire proxy126; // @var2747

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
    wire[2:0] io_sel2; // /home/blaise/dev/cash/src/htl/xbar.h(12) @var2794
    wire[1604:0] io_in5; // /home/blaise/dev/cash/src/htl/xbar.h(12) @var2795
    wire[534:0] proxy6; // @var2796
    wire[534:0] proxy7; // @var2797
    wire[534:0] proxy8; // @var2798
    wire[534:0] io_out26; // /home/blaise/dev/cash/src/htl/xbar.h(12) @var2814
    wire[2:0] proxy34; // /home/blaise/dev/cash/src/htl/xbar.h(20) @var2821
    wire eq43;
    wire[534:0] sel44;
    wire eq45;
    wire[534:0] sel46;
    wire eq47;
    wire[534:0] sel48;
    wire[534:0] proxy49; // @var2826

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
    wire io_in_0_valid2; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2769
    wire[533:0] io_in_0_data5; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2770
    wire io_in_0_ready11; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2774
    wire io_in_1_valid14; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2775
    wire[533:0] io_in_1_data17; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2776
    wire io_in_1_ready23; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2780
    wire io_in_2_valid26; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2781
    wire[533:0] io_in_2_data29; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2782
    wire io_in_2_ready35; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2786
    wire io_out_valid38; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2787
    wire[533:0] io_out_data41; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2788
    wire[2:0] io_out_grant50; // /home/blaise/dev/cash/src/htl/arbiter.h(42) @var2793
    wire[2:0] proxy53; // /home/blaise/dev/cash/src/module.h(33) @var2832
    wire[2:0] bindin55;
    wire[1604:0] proxy57; // /home/blaise/dev/cash/src/module.h(33) @var2833
    wire[1604:0] bindin76;
    wire[534:0] proxy78; // /home/blaise/dev/cash/src/module.h(33) @var2852
    wire[534:0] proxy79; // @var2853
    wire proxy80; // valid(0) @var2854
    wire[533:0] proxy81; // data(0) @var2855
    wire[534:0] bindout85;
    wire[2:0] proxy87; // /home/blaise/dev/cash/src/module.h(33) @var2940
    wire bindin93;
    wire bindin95;
    wire[2:0] bindin96;
    wire[2:0] proxy98; // /home/blaise/dev/cash/src/module.h(33) @var2944
    wire[2:0] bindout99;
    wire eq119;
    wire and121;
    wire proxy122; // @var2956
    wire eq125;
    wire and127;
    wire proxy128; // @var2959
    wire eq131;
    wire and133;
    wire proxy134; // @var2962

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
    wire[511:0] lit172 = 512'h0;
    reg[21:0] mem1[0:1];
    reg[511:0] mem3[0:1];
    reg reg11; // wrcache.h(58) @var2988
    reg[19:0] reg18; // wrcache.h(58) @var2991
    wire proxy20; // wrcache.h(58) @var2994
    wire proxy22; // wrcache.h(58) @var2995
    reg reg38; // wrcache.h(58) @var3002
    wire io_enq_valid40; // wrcache.h(58) @var3005
    wire[533:0] io_enq_data43; // wrcache.h(58) @var3006
    wire[1:0] proxy44; // owner(0) @var3007
    wire[19:0] proxy45; // tag(0) @var3008
    wire[511:0] proxy46; // data(0) @var3009
    wire io_enq_ready49; // wrcache.h(58) @var3010
    wire[533:0] io_evict_data55; // wrcache.h(58) @var3012
    wire[511:0] proxy67; // wrcache.h(60)
    wire[511:0] sel68; // wrcache.h(60)
    wire[21:0] proxy72; // wrcache.h(65)
    wire[21:0] sel73; // wrcache.h(65)
    reg[2:0] reg80; // wrcache.h(72) @var3022
    wire[533:0] proxy82; // wrcache.h(73) @var3025
    wire[1:0] proxy83; // owner(0) @var3026
    wire[19:0] proxy84; // tag(0) @var3027
    wire[511:0] proxy85; // data(0) @var3028
    reg[533:0] reg93; // wrcache.h(73) @var3025
    wire proxy94; // wrcache.h(76) @var3034
    wire proxy95; // wrcache.h(77) @var3035
    wire proxy97; // wrcache.h(78) @var3036
    wire proxy98; // wrcache.h(79) @var3037
    wire[533:0] entry_t99; // wrcache.h(84) @var3038
    wire[1:0] proxy100; // owner(0) @var3039
    wire[19:0] proxy101; // tag(0) @var3040
    wire proxy104; // /home/blaise/dev/cash/src/bit.h(287) @var3043
    wire[1:0] proxy106; // owners(0) @var3045
    wire ne110;
    wire proxy112; // /home/blaise/dev/cash/src/bit.h(287) @var3049
    wire[19:0] proxy115; // tag(0) @var3052
    wire eq116;
    wire and118;
    wire sel121;
    wire proxy122; // @var3056
    wire proxy124; // /home/blaise/dev/cash/src/bit.h(287) @var3058
    wire[1:0] proxy126; // owners(0) @var3060
    wire[1:0] and128;
    wire ne131;
    wire sel134;
    wire proxy135; // @var3066
    wire proxy137; // /home/blaise/dev/cash/src/bit.h(287) @var3068
    wire[1:0] proxy139; // owners(0) @var3070
    wire eq142;
    wire sel145;
    wire proxy146; // @var3075
    wire proxy147; // wrcache.h(97) @var3076
    reg reg149;
    wire proxy150; // @var3078
    wire proxy151; // wrcache.h(98) @var3079
    reg reg153;
    wire proxy154; // @var3081
    wire proxy155; // wrcache.h(99) @var3082
    reg reg157;
    wire proxy158; // @var3084
    wire proxy159; // wrcache.h(100) @var3085
    reg reg161;
    wire proxy162; // @var3087
    wire eq164;
    wire proxy165; // @var3089
    reg reg171; // wrcache.h(106) @var3090
    wire[1:0] proxy175; // owners(0) @var3095
    wire[1:0] and177;
    wire ne180;
    wire eq182;
    wire and184;
    wire[511:0] or186;
    wire[1:0] proxy188; // owners(0) @var3105
    wire[1:0] or190;
    wire[1:0] proxy191; // @var3107
    wire[19:0] proxy193; // tag(0) @var3110
    wire[21:0] tag_t195; // wrcache.h(133) @var3111
    wire[19:0] proxy203; // tag(0) @var3117
    wire eq204;
    wire[1:0] proxy206; // owners(0) @var3120
    wire ne209;
    wire and211;
    wire[511:0] or213;
    wire[1:0] proxy215; // owners(0) @var3128
    wire[1:0] or217;
    wire[1:0] proxy218; // @var3130
    wire[19:0] proxy220; // tag(0) @var3133
    wire[21:0] tag_t222; // wrcache.h(157) @var3134
    wire ne225;
    wire[21:0] tag_t229; // wrcache.h(177) @var3138
    wire ne232;
    wire[1:0] proxy235; // owners(0) @var3144
    wire eq237;
    wire[19:0] proxy240; // tag(0) @var3149
    wire[21:0] tag_t242; // wrcache.h(200) @var3150
    wire[1:0] proxy245; // wrcache.h(29) @var3153
    wire[1:0] proxy247; // owners(0) @var3155
    wire[1:0] and249;
    wire ne252;
    wire[1:0] inv254;
    wire[1:0] proxy256; // owners(0) @var3162
    wire[1:0] and258;
    wire[1:0] proxy259; // @var3164
    wire[19:0] proxy261; // tag(0) @var3167
    wire[21:0] tag_t263; // wrcache.h(208) @var3168
    wire[19:0] proxy268; // tag(0) @var3174
    wire[1:0] proxy270; // owners(0) @var3178
    wire ne273;
    wire[19:0] proxy276; // tag(0) @var3184
    wire add278;
    wire eq281;
    wire add284;
    wire eq287;
    wire sel289; // wrcache.h(230)
    wire sel290; // wrcache.h(123)
    wire[1:0] sel291; // wrcache.h(123)
    wire[19:0] sel292; // wrcache.h(230)
    wire[19:0] sel293; // wrcache.h(123)
    wire[511:0] sel294; // wrcache.h(230)
    wire[511:0] sel295; // wrcache.h(123)
    wire[19:0] sel296; // wrcache.h(150)
    wire[19:0] sel297; // wrcache.h(147)
    wire[19:0] sel298; // wrcache.h(123)
    wire sel299; // wrcache.h(139)
    wire sel300; // wrcache.h(125)
    wire sel301; // wrcache.h(236)
    wire sel302; // wrcache.h(230)
    wire sel303; // wrcache.h(123)
    wire sel304; // wrcache.h(128)
    wire sel305; // wrcache.h(125)
    wire sel306; // wrcache.h(150)
    wire sel307; // wrcache.h(147)
    wire sel308; // wrcache.h(123)
    wire sel309; // wrcache.h(150)
    wire sel310; // wrcache.h(147)
    wire sel311; // wrcache.h(123)
    wire[511:0] sel312; // wrcache.h(128)
    wire[511:0] sel313; // wrcache.h(125)
    wire[511:0] sel314; // wrcache.h(150)
    wire[511:0] sel315; // wrcache.h(147)
    wire[511:0] sel316; // wrcache.h(123)
    wire sel317; // wrcache.h(147)
    wire sel318; // wrcache.h(123)
    wire sel319; // wrcache.h(125)
    wire sel320; // wrcache.h(150)
    wire sel321; // wrcache.h(147)
    wire sel322; // wrcache.h(123)
    wire[2:0] sel323; // wrcache.h(128)
    wire[2:0] sel324; // wrcache.h(139)
    wire[2:0] sel325; // wrcache.h(125)
    wire[2:0] sel326; // wrcache.h(164)
    wire[2:0] sel327; // wrcache.h(184)
    wire[2:0] sel328; // wrcache.h(150)
    wire[2:0] sel329; // wrcache.h(147)
    wire[2:0] sel330; // wrcache.h(197)
    wire[2:0] sel331; // wrcache.h(222)
    wire[2:0] sel332; // wrcache.h(239)
    wire[2:0] sel333; // wrcache.h(236)
    wire[2:0] sel334; // wrcache.h(247)
    wire[2:0] sel335; // wrcache.h(230)
    wire[2:0] sel336; // wrcache.h(123)
    wire sel337; // wrcache.h(128)
    wire sel338; // wrcache.h(125)
    wire sel339; // wrcache.h(150)
    wire sel340; // wrcache.h(147)
    wire sel341; // wrcache.h(205)
    wire sel342; // wrcache.h(197)
    wire sel343; // wrcache.h(123)
    wire[21:0] sel344; // wrcache.h(128)
    wire[21:0] sel345; // wrcache.h(125)
    wire[21:0] sel346; // wrcache.h(150)
    wire[21:0] sel347; // wrcache.h(147)
    wire[21:0] sel348; // wrcache.h(205)
    wire[21:0] sel349; // wrcache.h(197)
    wire[21:0] sel350; // wrcache.h(123)
    wire sel351; // wrcache.h(164)
    wire sel352; // wrcache.h(184)
    wire sel353; // wrcache.h(150)
    wire sel354; // wrcache.h(147)
    wire sel355; // wrcache.h(123)
    wire[533:0] sel356; // wrcache.h(128)
    wire[533:0] sel357; // wrcache.h(125)
    wire[533:0] sel358; // wrcache.h(123)

    always @(posedge clk) mem1[proxy20] = proxy72;
    always @(posedge clk) mem3[proxy20] = proxy67;
    always @ (posedge clk) reg11 <= reset ? 1'b0 : sel311;
    always @ (posedge clk) reg18 <= reset ? 20'h0 : sel298;
    assign proxy20 = sel322;
    assign proxy22 = sel318;
    always @ (posedge clk) reg38 <= reset ? 1'b0 : sel303;
    assign io_enq_valid40 = io_enq_valid;
    assign io_enq_data43 = io_enq_data;
    assign proxy44 = io_enq_data43[1:0];
    assign proxy45 = io_enq_data43[21:2];
    assign proxy46 = io_enq_data43[533:22];
    assign io_enq_ready49 = proxy165;
    assign io_evict_data55 = {sel295, sel293, sel291};
    assign proxy67 = sel68;
    assign sel68 = sel308 ? sel316 : mem3[proxy20];
    assign proxy72 = sel73;
    assign sel73 = sel343 ? sel350 : mem1[proxy20];
    always @ (posedge clk) reg80 <= reset ? 3'b0 : sel336;
    assign proxy82 = reg93;
    assign proxy83 = proxy82[1:0];
    assign proxy84 = proxy82[21:2];
    assign proxy85 = proxy82[533:22];
    always @ (posedge clk) reg93 <= reset ? lit91 : sel358;
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
    always @ (posedge clk) reg171 <= reset ? 1'b0 : sel355;
    assign proxy175 = mem1[proxy20][1:0];
    assign and177 = proxy175 & proxy44;
    assign ne180 = and177 != 2'b0;
    assign eq182 = proxy45 == reg18;
    assign and184 = eq182 & ne180;
    assign or186 = mem3[proxy20] | proxy46;
    assign proxy188 = mem1[proxy20][1:0];
    assign or190 = proxy188 | proxy44;
    assign proxy191 = or190;
    assign proxy193 = mem1[proxy20][21:2];
    assign tag_t195 = {proxy193, proxy191};
    assign proxy203 = mem1[proxy22][21:2];
    assign eq204 = proxy203 == proxy84;
    assign proxy206 = mem1[proxy22][1:0];
    assign ne209 = proxy206 != 2'b0;
    assign and211 = ne209 & eq204;
    assign or213 = mem3[proxy20] | proxy85;
    assign proxy215 = mem1[proxy20][1:0];
    assign or217 = proxy215 | proxy83;
    assign proxy218 = or217;
    assign proxy220 = mem1[proxy20][21:2];
    assign tag_t222 = {proxy220, proxy218};
    assign ne225 = proxy94 != proxy95;
    assign tag_t229 = {proxy84, proxy83};
    assign ne232 = proxy97 != proxy95;
    assign proxy235 = mem1[proxy20][1:0];
    assign eq237 = proxy235 == proxy83;
    assign proxy240 = mem1[proxy20][21:2];
    assign tag_t242 = {proxy240, proxy245};
    assign proxy245 = 2'b0;
    assign proxy247 = mem1[proxy20][1:0];
    assign and249 = proxy247 & proxy83;
    assign ne252 = and249 != 2'b0;
    assign inv254 = ~proxy83;
    assign proxy256 = mem1[proxy20][1:0];
    assign and258 = proxy256 & inv254;
    assign proxy259 = and258;
    assign proxy261 = mem1[proxy20][21:2];
    assign tag_t263 = {proxy261, proxy259};
    assign proxy268 = mem1[proxy20][21:2];
    assign proxy270 = mem1[proxy20][1:0];
    assign ne273 = proxy270 != 2'b0;
    assign proxy276 = mem1[proxy20][21:2];
    assign add278 = reg38 + 1'b1;
    assign eq281 = reg38 == 1'b1;
    assign add284 = reg38 + 1'b1;
    assign eq287 = reg38 == 1'b1;
    assign sel289 = ne273 ? 1'b1 : 1'b0;
    assign sel290 = 
        (reg80 == 3'b0) ? 1'b0 : 
        (reg80 == 3'b1) ? 1'b0 : 
        (reg80 == 3'b10) ? 1'b0 : 
        (reg80 == 3'b11) ? 1'b1 : 
        (reg80 == 3'b100) ? sel289 : 
        1'b0;
    assign sel291 = 
        (reg80 == 3'b0) ? 2'b0 : 
        (reg80 == 3'b1) ? 2'b0 : 
        (reg80 == 3'b10) ? 2'b0 : 
        (reg80 == 3'b11) ? proxy83 : 
        (reg80 == 3'b100) ? 2'b0 : 
        2'b0;
    assign sel292 = ne273 ? proxy276 : 20'h0;
    assign sel293 = 
        (reg80 == 3'b0) ? 20'h0 : 
        (reg80 == 3'b1) ? 20'h0 : 
        (reg80 == 3'b10) ? 20'h0 : 
        (reg80 == 3'b11) ? proxy268 : 
        (reg80 == 3'b100) ? sel292 : 
        20'h0;
    assign sel294 = ne273 ? mem3[proxy20] : lit172;
    assign sel295 = 
        (reg80 == 3'b0) ? lit172 : 
        (reg80 == 3'b1) ? lit172 : 
        (reg80 == 3'b10) ? lit172 : 
        (reg80 == 3'b11) ? mem3[proxy20] : 
        (reg80 == 3'b100) ? sel294 : 
        lit172;
    assign sel296 = and211 ? proxy84 : proxy84;
    assign sel297 = proxy98 ? sel296 : reg18;
    assign sel298 = 
        (reg80 == 3'b0) ? reg18 : 
        (reg80 == 3'b1) ? sel297 : 
        (reg80 == 3'b10) ? reg18 : 
        (reg80 == 3'b11) ? reg18 : 
        (reg80 == 3'b100) ? reg18 : 
        reg18;
    assign sel299 = io_flush ? 1'b0 : reg38;
    assign sel300 = io_enq_valid40 ? reg38 : sel299;
    assign sel301 = io_evict_ready ? add278 : reg38;
    assign sel302 = ne273 ? sel301 : add284;
    assign sel303 = 
        (reg80 == 3'b0) ? sel300 : 
        (reg80 == 3'b1) ? reg38 : 
        (reg80 == 3'b10) ? reg38 : 
        (reg80 == 3'b11) ? reg38 : 
        (reg80 == 3'b100) ? sel302 : 
        reg38;
    assign sel304 = and184 ? 1'b1 : 1'b0;
    assign sel305 = io_enq_valid40 ? sel304 : 1'b0;
    assign sel306 = and211 ? 1'b1 : 1'b1;
    assign sel307 = proxy98 ? sel306 : 1'b0;
    assign sel308 = 
        (reg80 == 3'b0) ? sel305 : 
        (reg80 == 3'b1) ? sel307 : 
        (reg80 == 3'b10) ? 1'b0 : 
        (reg80 == 3'b11) ? 1'b0 : 
        (reg80 == 3'b100) ? 1'b0 : 
        1'b0;
    assign sel309 = and211 ? proxy94 : proxy97;
    assign sel310 = proxy98 ? sel309 : reg11;
    assign sel311 = 
        (reg80 == 3'b0) ? reg11 : 
        (reg80 == 3'b1) ? sel310 : 
        (reg80 == 3'b10) ? reg11 : 
        (reg80 == 3'b11) ? reg11 : 
        (reg80 == 3'b100) ? reg11 : 
        reg11;
    assign sel312 = and184 ? or186 : lit172;
    assign sel313 = io_enq_valid40 ? sel312 : lit172;
    assign sel314 = and211 ? or213 : proxy85;
    assign sel315 = proxy98 ? sel314 : lit172;
    assign sel316 = 
        (reg80 == 3'b0) ? sel313 : 
        (reg80 == 3'b1) ? sel315 : 
        (reg80 == 3'b10) ? lit172 : 
        (reg80 == 3'b11) ? lit172 : 
        (reg80 == 3'b100) ? lit172 : 
        lit172;
    assign sel317 = proxy98 ? proxy94 : 1'b0;
    assign sel318 = 
        (reg80 == 3'b0) ? 1'b0 : 
        (reg80 == 3'b1) ? sel317 : 
        (reg80 == 3'b10) ? 1'b0 : 
        (reg80 == 3'b11) ? 1'b0 : 
        (reg80 == 3'b100) ? 1'b0 : 
        1'b0;
    assign sel319 = io_enq_valid40 ? reg11 : 1'b0;
    assign sel320 = and211 ? proxy94 : proxy97;
    assign sel321 = proxy98 ? sel320 : 1'b0;
    assign sel322 = 
        (reg80 == 3'b0) ? sel319 : 
        (reg80 == 3'b1) ? sel321 : 
        (reg80 == 3'b10) ? reg171 : 
        (reg80 == 3'b11) ? reg171 : 
        (reg80 == 3'b100) ? reg38 : 
        1'b0;
    assign sel323 = and184 ? reg80 : 3'b1;
    assign sel324 = io_flush ? 3'b100 : reg80;
    assign sel325 = io_enq_valid40 ? sel323 : sel324;
    assign sel326 = ne225 ? 3'b10 : 3'b0;
    assign sel327 = ne232 ? 3'b10 : 3'b0;
    assign sel328 = and211 ? sel326 : sel327;
    assign sel329 = proxy98 ? sel328 : reg80;
    assign sel330 = eq237 ? 3'b11 : 3'b0;
    assign sel331 = io_evict_ready ? 3'b0 : reg80;
    assign sel332 = eq281 ? 3'b0 : reg80;
    assign sel333 = io_evict_ready ? sel332 : reg80;
    assign sel334 = eq287 ? 3'b0 : reg80;
    assign sel335 = ne273 ? sel333 : sel334;
    assign sel336 = 
        (reg80 == 3'b0) ? sel325 : 
        (reg80 == 3'b1) ? sel329 : 
        (reg80 == 3'b10) ? sel330 : 
        (reg80 == 3'b11) ? sel331 : 
        (reg80 == 3'b100) ? sel335 : 
        reg80;
    assign sel337 = and184 ? 1'b1 : 1'b0;
    assign sel338 = io_enq_valid40 ? sel337 : 1'b0;
    assign sel339 = and211 ? 1'b1 : 1'b1;
    assign sel340 = proxy98 ? sel339 : 1'b0;
    assign sel341 = ne252 ? 1'b1 : 1'b0;
    assign sel342 = eq237 ? 1'b1 : sel341;
    assign sel343 = 
        (reg80 == 3'b0) ? sel338 : 
        (reg80 == 3'b1) ? sel340 : 
        (reg80 == 3'b10) ? sel342 : 
        (reg80 == 3'b11) ? 1'b0 : 
        (reg80 == 3'b100) ? 1'b0 : 
        1'b0;
    assign sel344 = and184 ? tag_t195 : 22'b0;
    assign sel345 = io_enq_valid40 ? sel344 : 22'b0;
    assign sel346 = and211 ? tag_t222 : tag_t229;
    assign sel347 = proxy98 ? sel346 : 22'b0;
    assign sel348 = ne252 ? tag_t263 : 22'b0;
    assign sel349 = eq237 ? tag_t242 : sel348;
    assign sel350 = 
        (reg80 == 3'b0) ? sel345 : 
        (reg80 == 3'b1) ? sel347 : 
        (reg80 == 3'b10) ? sel349 : 
        (reg80 == 3'b11) ? 22'b0 : 
        (reg80 == 3'b100) ? 22'b0 : 
        22'b0;
    assign sel351 = ne225 ? proxy95 : reg171;
    assign sel352 = ne232 ? proxy95 : reg171;
    assign sel353 = and211 ? sel351 : sel352;
    assign sel354 = proxy98 ? sel353 : reg171;
    assign sel355 = 
        (reg80 == 3'b0) ? reg171 : 
        (reg80 == 3'b1) ? sel354 : 
        (reg80 == 3'b10) ? reg171 : 
        (reg80 == 3'b11) ? reg171 : 
        (reg80 == 3'b100) ? reg171 : 
        reg171;
    assign sel356 = and184 ? proxy82 : io_enq_data43;
    assign sel357 = io_enq_valid40 ? sel356 : proxy82;
    assign sel358 = 
        (reg80 == 3'b0) ? sel357 : 
        (reg80 == 3'b1) ? proxy82 : 
        (reg80 == 3'b10) ? proxy82 : 
        (reg80 == 3'b11) ? proxy82 : 
        (reg80 == 3'b100) ? proxy82 : 
        proxy82;

    assign io_enq_ready = io_enq_ready49;
    assign io_evict_valid = sel290;
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
    wire[533:0] lit385 = 534'b0;
    wire[511:0] lit429 = 512'h0;
    wire[19:0] io_qpi_rd_req_addr5; // lsu.cpp(19) @var2490
    wire[13:0] io_qpi_rd_req_mdata8; // lsu.cpp(19) @var2491
    wire io_qpi_rd_req_valid11; // lsu.cpp(19) @var2492
    wire[13:0] io_qpi_rd_rsp_mdata14; // lsu.cpp(19) @var2493
    wire[511:0] io_qpi_rd_rsp_data17; // lsu.cpp(19) @var2494
    wire[19:0] io_qpi_wr_req_addr26; // lsu.cpp(19) @var2497
    wire[13:0] io_qpi_wr_req_mdata29; // lsu.cpp(19) @var2498
    wire[511:0] io_qpi_wr_req_data32; // lsu.cpp(19) @var2499
    wire io_qpi_wr_req_valid35; // lsu.cpp(19) @var2500
    wire[511:0] io_ctx50; // lsu.cpp(19) @var2505
    wire[131:0] proxy51; // a(0) @var2506
    wire[19:0] proxy53; // col_ptr(0) @var2508
    wire[19:0] proxy54; // col_ind(0) @var2509
    wire[19:0] proxy55; // row_ptr(0) @var2510
    wire[19:0] proxy56; // row_ind(0) @var2511
    wire[19:0] proxy57; // values(0) @var2512
    wire[39:0] proxy58; // x(0) @var2513
    wire[19:0] proxy59; // values(0) @var2514
    wire[19:0] proxy60; // masks(0) @var2515
    wire[39:0] proxy61; // y(0) @var2516
    wire[19:0] proxy62; // values(0) @var2517
    wire[19:0] proxy63; // masks(0) @var2518
    wire[19:0] proxy64; // stats(0) @var2519
    wire io_ctrl_rd_req_valid68; // lsu.cpp(19) @var2521
    wire[22:0] io_ctrl_rd_req_data71; // lsu.cpp(19) @var2522
    wire io_ctrl_rd_req_ready76; // lsu.cpp(19) @var2525
    wire io_ctrl_wr_req_valid79; // lsu.cpp(19) @var2526
    wire[533:0] io_ctrl_wr_req_data82; // lsu.cpp(19) @var2527
    wire io_ctrl_wr_req_ready88; // lsu.cpp(19) @var2531
    wire io_ctrl_rd_rsp_valid91; // lsu.cpp(19) @var2532
    wire[514:0] io_ctrl_rd_rsp_data94; // lsu.cpp(19) @var2533
    wire[31:0] io_ctrl_outstanding_writes99; // lsu.cpp(19) @var2536
    wire io_walkers_0_rd_req_valid102; // lsu.cpp(19) @var2537
    wire[22:0] io_walkers_0_rd_req_data105; // lsu.cpp(19) @var2538
    wire io_walkers_0_rd_req_ready110; // lsu.cpp(19) @var2541
    wire io_walkers_0_rd_rsp_valid113; // lsu.cpp(19) @var2542
    wire[514:0] io_walkers_0_rd_rsp_data116; // lsu.cpp(19) @var2543
    wire io_walkers_1_rd_req_valid121; // lsu.cpp(19) @var2546
    wire[22:0] io_walkers_1_rd_req_data124; // lsu.cpp(19) @var2547
    wire io_walkers_1_rd_req_ready129; // lsu.cpp(19) @var2550
    wire io_walkers_1_rd_rsp_valid132; // lsu.cpp(19) @var2551
    wire[514:0] io_walkers_1_rd_rsp_data135; // lsu.cpp(19) @var2552
    wire io_PEs_0_wr_req_valid140; // lsu.cpp(19) @var2555
    wire[533:0] io_PEs_0_wr_req_data143; // lsu.cpp(19) @var2556
    wire io_PEs_0_wr_req_ready149; // lsu.cpp(19) @var2560
    wire io_PEs_1_wr_req_valid152; // lsu.cpp(19) @var2561
    wire[533:0] io_PEs_1_wr_req_data155; // lsu.cpp(19) @var2562
    wire io_PEs_1_wr_req_ready161; // lsu.cpp(19) @var2566
    wire proxy164; // /home/blaise/dev/cash/src/module.h(33) @var2748
    wire bindin167;
    wire bindin169;
    wire bindin170;
    wire[22:0] proxy172; // /home/blaise/dev/cash/src/module.h(33) @var2749
    wire[22:0] bindin175;
    wire proxy177; // /home/blaise/dev/cash/src/module.h(33) @var2752
    wire bindout178;
    wire proxy180; // /home/blaise/dev/cash/src/module.h(33) @var2753
    wire bindin181;
    wire[22:0] proxy183; // /home/blaise/dev/cash/src/module.h(33) @var2754
    wire[22:0] bindin186;
    wire proxy188; // /home/blaise/dev/cash/src/module.h(33) @var2757
    wire bindout189;
    wire proxy191; // /home/blaise/dev/cash/src/module.h(33) @var2758
    wire bindin192;
    wire[22:0] proxy194; // /home/blaise/dev/cash/src/module.h(33) @var2759
    wire[22:0] bindin197;
    wire proxy199; // /home/blaise/dev/cash/src/module.h(33) @var2762
    wire bindout200;
    wire proxy202; // /home/blaise/dev/cash/src/module.h(33) @var2763
    wire bindout203;
    wire[22:0] proxy205; // /home/blaise/dev/cash/src/module.h(33) @var2764
    wire[2:0] proxy206; // type(0) @var2765
    wire[19:0] proxy207; // addr(0) @var2766
    wire[22:0] bindout208;
    wire proxy210; // /home/blaise/dev/cash/src/module.h(33) @var2767
    wire bindin211;
    wire[2:0] proxy213; // /home/blaise/dev/cash/src/module.h(33) @var2768
    wire[2:0] bindout214;
    wire proxy216; // /home/blaise/dev/cash/src/module.h(33) @var2963
    wire bindin218;
    wire bindin219;
    wire bindin220;
    wire[533:0] proxy222; // /home/blaise/dev/cash/src/module.h(33) @var2964
    wire[533:0] bindin226;
    wire proxy228; // /home/blaise/dev/cash/src/module.h(33) @var2968
    wire bindout229;
    wire proxy231; // /home/blaise/dev/cash/src/module.h(33) @var2969
    wire bindin232;
    wire[533:0] proxy234; // /home/blaise/dev/cash/src/module.h(33) @var2970
    wire[533:0] bindin238;
    wire proxy240; // /home/blaise/dev/cash/src/module.h(33) @var2974
    wire bindout241;
    wire proxy243; // /home/blaise/dev/cash/src/module.h(33) @var2975
    wire bindin244;
    wire[533:0] proxy246; // /home/blaise/dev/cash/src/module.h(33) @var2976
    wire[533:0] bindin250;
    wire proxy252; // /home/blaise/dev/cash/src/module.h(33) @var2980
    wire bindout253;
    wire bindout256;
    wire[533:0] proxy258; // /home/blaise/dev/cash/src/module.h(33) @var2982
    wire[1:0] proxy259; // type(0) @var2983
    wire[19:0] proxy260; // addr(0) @var2984
    wire[511:0] proxy261; // data(0) @var2985
    wire[533:0] bindout262;
    wire proxy264; // /home/blaise/dev/cash/src/module.h(33) @var2986
    wire bindin265;
    wire[2:0] bindout268;
    wire bindin272;
    wire bindin273;
    wire bindin274;
    wire[533:0] proxy276; // /home/blaise/dev/cash/src/module.h(33) @var3195
    wire[533:0] bindin280;
    wire bindout283;
    wire bindout286;
    wire[533:0] proxy288; // /home/blaise/dev/cash/src/module.h(33) @var3201
    wire[1:0] proxy289; // owner(0) @var3202
    wire[19:0] proxy290; // tag(0) @var3203
    wire[511:0] proxy291; // data(0) @var3204
    wire[533:0] bindout292;
    wire proxy294; // /home/blaise/dev/cash/src/module.h(33) @var3205
    wire bindin295;
    wire bindin298;
    wire eq301;
    wire proxy302; // @var3208
    wire proxy304; // lsu.cpp(47) @var3209
    wire proxy306; // /home/blaise/dev/cash/src/seq.h(17) @var3210
    reg reg308; // lsu.cpp(47) @var3209
    wire[19:0] proxy310; // lsu.cpp(48) @var3212
    wire[19:0] proxy312; // /home/blaise/dev/cash/src/seq.h(17) @var3213
    reg[19:0] reg315; // lsu.cpp(48) @var3212
    wire[13:0] proxy317; // lsu.cpp(49) @var3215
    wire[13:0] proxy319; // /home/blaise/dev/cash/src/seq.h(17) @var3216
    reg[13:0] reg322; // lsu.cpp(49) @var3215
    wire[2:0] proxy323; // lsu.cpp(53) @var3218
    wire[19:0] sel338; // lsu.cpp(260)
    wire[19:0] add339;
    wire[19:0] proxy340; // @var3226
    wire[5:0] ch_rd_mdata_t342; // lsu.cpp(55) @var3227
    wire[2:0] proxy345; // lsu.h(39) @var3230
    wire[7:0] proxy347; // lsu.cpp(55) @var3231
    wire[13:0] proxy349; // lsu.cpp(55) @var3232
    reg[2:0] reg355; // lsu.cpp(70) @var3233
    reg reg361; // lsu.cpp(71) @var3236
    wire eq365;
    wire eq368;
    wire proxy369; // @var3243
    wire eq371;
    wire and373;
    wire proxy374; // @var3246
    wire[533:0] proxy376; // lsu.cpp(81) @var3247
    wire[1:0] proxy377; // type(0) @var3248
    wire[19:0] proxy378; // addr(0) @var3249
    wire[511:0] proxy379; // data(0) @var3250
    wire[533:0] ch_lsu_wr_req_t381; // /home/blaise/dev/cash/src/seq.h(17) @var3251
    reg[533:0] reg387; // lsu.cpp(81) @var3247
    wire[2:0] proxy389; // lsu.cpp(82) @var3256
    reg[2:0] reg393; // lsu.cpp(82) @var3256
    wire and394;
    wire or398;
    wire[31:0] sel404;
    wire[31:0] sel405;
    wire[31:0] proxy408; // lsu.cpp(91) @var3265
    reg[31:0] reg412; // lsu.cpp(91) @var3265
    wire proxy414; // lsu.cpp(94) @var3268
    reg reg418; // lsu.cpp(94) @var3268
    wire[19:0] proxy420; // lsu.cpp(95) @var3271
    reg[19:0] reg424; // lsu.cpp(95) @var3271
    wire[511:0] proxy426; // lsu.cpp(96) @var3274
    reg[511:0] reg431; // lsu.cpp(96) @var3274
    wire[13:0] proxy433; // lsu.cpp(97) @var3277
    reg[13:0] reg437; // lsu.cpp(97) @var3277
    wire[31:0] sub438;
    wire[4:0] ch_wr_mdata_t442; // lsu.cpp(107) @var3282
    wire[1:0] proxy445; // lsu.cpp(108) @var3285
    wire[19:0] add452;
    wire[8:0] proxy455; // lsu.cpp(110) @var3290
    wire[13:0] proxy457; // lsu.cpp(110) @var3291
    wire proxy459; // lsu.cpp(116) @var3292
    wire[2:0] proxy461; // lsu.cpp(116) @var3293
    wire[4:0] ch_wr_mdata_t463; // lsu.cpp(117) @var3294
    wire[1:0] proxy466; // lsu.h(44) @var3297
    wire[19:0] add472;
    wire[8:0] proxy474; // lsu.cpp(120) @var3303
    wire[13:0] proxy476; // lsu.cpp(120) @var3304
    wire eq479;
    wire[31:0] add482;
    wire[31:0] sub484;
    wire[31:0] sel486; // lsu.cpp(127)
    wire[31:0] sel487; // lsu.cpp(103)
    wire[19:0] sel488; // lsu.cpp(114)
    wire[19:0] sel489; // lsu.cpp(105)
    wire[19:0] sel490; // lsu.cpp(103)
    wire[19:0] sel491; // lsu.cpp(273)
    wire[511:0] sel492; // lsu.cpp(114)
    wire[511:0] sel493; // lsu.cpp(105)
    wire[511:0] sel494; // lsu.cpp(103)
    wire sel495; // lsu.cpp(127)
    wire sel496; // lsu.cpp(103)
    wire sel497; // lsu.cpp(114)
    wire sel498; // lsu.cpp(105)
    wire sel499; // lsu.cpp(127)
    wire sel500; // lsu.cpp(103)
    wire[19:0] sel501; // lsu.cpp(273)
    wire[13:0] sel502; // lsu.cpp(114)
    wire[13:0] sel503; // lsu.cpp(105)
    wire[13:0] sel504; // lsu.cpp(103)
    wire eq507;
    wire eq510;
    wire[1:0] proxy515; // lsu.cpp(186) @var3318
    wire sel518; // lsu.cpp(158)
    wire sel519; // lsu.cpp(158)
    wire[1:0] sel520; // lsu.cpp(158)
    wire[19:0] sel521; // lsu.cpp(158)
    wire[511:0] sel522; // lsu.cpp(158)
    wire sel523; // lsu.cpp(158)
    wire[2:0] sel524; // lsu.cpp(166)
    wire[2:0] sel525; // lsu.cpp(165)
    wire[2:0] sel526; // lsu.cpp(160)
    wire[2:0] sel527; // lsu.cpp(179)
    wire[2:0] sel528; // lsu.cpp(191)
    wire[2:0] sel529; // lsu.cpp(200)
    wire[2:0] sel530; // lsu.cpp(207)
    wire[2:0] sel531; // lsu.cpp(158)
    wire[2:0] sel532; // lsu.cpp(160)
    wire[2:0] sel533; // lsu.cpp(158)
    wire[1:0] proxy534; // /home/blaise/dev/cash/src/seq.h(17)
    wire[1:0] sel535; // lsu.cpp(160)
    wire[1:0] sel536; // lsu.cpp(158)
    wire[19:0] proxy537; // /home/blaise/dev/cash/src/seq.h(17)
    wire[19:0] sel538; // lsu.cpp(160)
    wire[19:0] sel539; // lsu.cpp(158)
    wire[511:0] proxy540; // /home/blaise/dev/cash/src/seq.h(17)
    wire[511:0] sel541; // lsu.cpp(160)
    wire[511:0] sel542; // lsu.cpp(158)
    wire[5:0] proxy544; // lsu.cpp(229) @var3321
    wire[2:0] proxy545; // type(0) @var3322
    wire[2:0] proxy546; // owner(0) @var3323
    wire eq548;
    wire and550;
    wire proxy551; // @var3326
    wire eq553;
    wire and555;
    wire proxy556; // @var3329
    wire eq558;
    wire and560;
    wire proxy561; // @var3332

    assign io_qpi_rd_req_addr5 = proxy310;
    assign io_qpi_rd_req_mdata8 = proxy317;
    assign io_qpi_rd_req_valid11 = proxy304;
    assign io_qpi_rd_rsp_mdata14 = io_qpi_rd_rsp_mdata;
    assign io_qpi_rd_rsp_data17 = io_qpi_rd_rsp_data;
    assign io_qpi_wr_req_addr26 = proxy420;
    assign io_qpi_wr_req_mdata29 = proxy433;
    assign io_qpi_wr_req_data32 = proxy426;
    assign io_qpi_wr_req_valid35 = proxy414;
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
    assign io_ctrl_rd_rsp_valid91 = proxy551;
    assign io_ctrl_rd_rsp_data94 = {io_qpi_rd_rsp_data17, proxy545};
    assign io_ctrl_outstanding_writes99 = proxy408;
    assign io_walkers_0_rd_req_valid102 = io_walkers_0_rd_req_valid;
    assign io_walkers_0_rd_req_data105 = io_walkers_0_rd_req_data;
    assign io_walkers_0_rd_req_ready110 = proxy177;
    assign io_walkers_0_rd_rsp_valid113 = proxy556;
    assign io_walkers_0_rd_rsp_data116 = {io_qpi_rd_rsp_data17, proxy545};
    assign io_walkers_1_rd_req_valid121 = io_walkers_1_rd_req_valid;
    assign io_walkers_1_rd_req_data124 = io_walkers_1_rd_req_data;
    assign io_walkers_1_rd_req_ready129 = proxy188;
    assign io_walkers_1_rd_rsp_valid132 = proxy561;
    assign io_walkers_1_rd_rsp_data135 = {io_qpi_rd_rsp_data17, proxy545};
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
    assign proxy264 = proxy369;
    assign bindin265 = proxy264;
    assign bindin272 = clk;
    assign bindin273 = reset;
    spmv_write_cache __module28__(.clk(bindin272), .reset(bindin273), .io_enq_valid(bindin274), .io_enq_data(bindin280), .io_evict_ready(bindin295), .io_flush(bindin298), .io_enq_ready(bindout283), .io_evict_valid(bindout286), .io_evict_data(bindout292));
    assign bindin274 = sel519;
    assign proxy276 = {sel522, sel521, sel520};
    assign bindin280 = proxy276;
    assign proxy288 = bindout292;
    assign proxy289 = proxy288[1:0];
    assign proxy290 = proxy288[21:2];
    assign proxy291 = proxy288[533:22];
    assign proxy294 = proxy374;
    assign bindin295 = proxy294;
    assign bindin298 = sel518;
    assign eq301 = io_qpi_rd_req_almostfull == 1'b0;
    assign proxy302 = eq301;
    assign proxy304 = reg308;
    assign proxy306 = proxy202;
    always @ (posedge clk) reg308 <= reset ? 1'b0 : proxy306;
    assign proxy310 = reg315;
    assign proxy312 = proxy340;
    always @ (posedge clk) reg315 <= reset ? 20'h0 : proxy312;
    assign proxy317 = reg322;
    assign proxy319 = proxy349;
    always @ (posedge clk) reg322 <= reset ? 14'b0 : proxy319;
    assign proxy323 = proxy206;
    assign sel338 = 
        (proxy323 == 3'b0) ? proxy53 : 
        (proxy323 == 3'b1) ? proxy54 : 
        (proxy323 == 3'b10) ? proxy55 : 
        (proxy323 == 3'b11) ? proxy56 : 
        (proxy323 == 3'b100) ? proxy57 : 
        (proxy323 == 3'b101) ? proxy59 : 
        proxy60;
    assign add339 = sel338 + proxy207;
    assign proxy340 = add339;
    assign ch_rd_mdata_t342 = {proxy345, proxy206};
    assign proxy345 = proxy213;
    assign proxy347 = 8'h0;
    assign proxy349 = {proxy347, ch_rd_mdata_t342};
    always @ (posedge clk) reg355 <= reset ? 3'b0 : sel531;
    always @ (posedge clk) reg361 <= reset ? 1'b0 : sel500;
    assign eq365 = reg361 == 1'b0;
    assign eq368 = reg355 == 3'b0;
    assign proxy369 = eq368;
    assign eq371 = sel523 == 1'b0;
    assign and373 = eq365 & eq371;
    assign proxy374 = and373;
    assign proxy376 = reg387;
    assign proxy377 = proxy376[1:0];
    assign proxy378 = proxy376[21:2];
    assign proxy379 = proxy376[533:22];
    assign ch_lsu_wr_req_t381 = {sel542, sel539, sel536};
    always @ (posedge clk) reg387 <= reset ? lit385 : ch_lsu_wr_req_t381;
    assign proxy389 = reg393;
    always @ (posedge clk) reg393 <= reset ? 3'b0 : sel533;
    assign and394 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
    assign or398 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
    assign sel404 = or398 ? 32'h1 : 32'h0;
    assign sel405 = and394 ? 32'h2 : sel404;
    assign proxy408 = reg412;
    always @ (posedge clk) reg412 <= reset ? 32'h0 : sel487;
    assign proxy414 = reg418;
    always @ (posedge clk) reg418 <= reset ? 1'b0 : sel496;
    assign proxy420 = reg424;
    always @ (posedge clk) reg424 <= reset ? 20'h0 : sel490;
    assign proxy426 = reg431;
    always @ (posedge clk) reg431 <= reset ? lit429 : sel494;
    assign proxy433 = reg437;
    always @ (posedge clk) reg437 <= reset ? 14'b0 : sel504;
    assign sub438 = proxy408 - sel405;
    assign ch_wr_mdata_t442 = {proxy389, proxy377};
    assign proxy445 = proxy377;
    assign add452 = sel491 + proxy378;
    assign proxy455 = 9'b0;
    assign proxy457 = {proxy455, ch_wr_mdata_t442};
    assign proxy459 = 1'b0;
    assign proxy461 = {proxy459, proxy289};
    assign ch_wr_mdata_t463 = {proxy461, proxy466};
    assign proxy466 = 2'b1;
    assign add472 = sel501 + proxy290;
    assign proxy474 = 9'b0;
    assign proxy476 = {proxy474, ch_wr_mdata_t463};
    assign eq479 = io_qpi_wr_req_almostfull == 1'b0;
    assign add482 = proxy408 + 32'h1;
    assign sub484 = add482 - sel405;
    assign sel486 = eq479 ? sub484 : sub438;
    assign sel487 = 
        (reg361 == 1'b0) ? sub438 : 
        (reg361 == 1'b1) ? sel486 : 
        sub438;
    assign sel488 = bindout286 ? add472 : proxy420;
    assign sel489 = sel523 ? add452 : sel488;
    assign sel490 = 
        (reg361 == 1'b0) ? sel489 : 
        (reg361 == 1'b1) ? proxy420 : 
        proxy420;
    assign sel491 = 
        (proxy445 == 2'b0) ? proxy62 : 
        (proxy445 == 2'b1) ? proxy63 : 
        proxy64;
    assign sel492 = bindout286 ? proxy291 : proxy426;
    assign sel493 = sel523 ? proxy379 : sel492;
    assign sel494 = 
        (reg361 == 1'b0) ? sel493 : 
        (reg361 == 1'b1) ? proxy426 : 
        proxy426;
    assign sel495 = eq479 ? 1'b1 : 1'b0;
    assign sel496 = 
        (reg361 == 1'b0) ? 1'b0 : 
        (reg361 == 1'b1) ? sel495 : 
        1'b0;
    assign sel497 = bindout286 ? 1'b1 : reg361;
    assign sel498 = sel523 ? 1'b1 : sel497;
    assign sel499 = eq479 ? 1'b0 : reg361;
    assign sel500 = 
        (reg361 == 1'b0) ? sel498 : 
        (reg361 == 1'b1) ? sel499 : 
        reg361;
    assign sel501 = 
        (2'b1 == 2'b0) ? proxy62 : 
        (2'b1 == 2'b1) ? proxy63 : 
        proxy64;
    assign sel502 = bindout286 ? proxy476 : proxy433;
    assign sel503 = sel523 ? proxy457 : sel502;
    assign sel504 = 
        (reg361 == 1'b0) ? sel503 : 
        (reg361 == 1'b1) ? proxy433 : 
        proxy433;
    assign eq507 = proxy259 == 2'b1;
    assign eq510 = bindout268 == 3'b100;
    assign proxy515 = proxy389[1:0];
    assign sel518 = 
        (reg355 == 3'b0) ? 1'b0 : 
        (reg355 == 3'b1) ? 1'b0 : 
        (reg355 == 3'b10) ? 1'b0 : 
        (reg355 == 3'b11) ? 1'b1 : 
        (reg355 == 3'b100) ? 1'b0 : 
        1'b0;
    assign sel519 = 
        (reg355 == 3'b0) ? 1'b0 : 
        (reg355 == 3'b1) ? 1'b0 : 
        (reg355 == 3'b10) ? 1'b1 : 
        (reg355 == 3'b11) ? 1'b0 : 
        (reg355 == 3'b100) ? 1'b0 : 
        1'b0;
    assign sel520 = 
        (reg355 == 3'b0) ? 2'b0 : 
        (reg355 == 3'b1) ? 2'b0 : 
        (reg355 == 3'b10) ? proxy515 : 
        (reg355 == 3'b11) ? 2'b0 : 
        (reg355 == 3'b100) ? 2'b0 : 
        2'b0;
    assign sel521 = 
        (reg355 == 3'b0) ? 20'h0 : 
        (reg355 == 3'b1) ? 20'h0 : 
        (reg355 == 3'b10) ? proxy378 : 
        (reg355 == 3'b11) ? 20'h0 : 
        (reg355 == 3'b100) ? 20'h0 : 
        20'h0;
    assign sel522 = 
        (reg355 == 3'b0) ? lit429 : 
        (reg355 == 3'b1) ? lit429 : 
        (reg355 == 3'b10) ? proxy379 : 
        (reg355 == 3'b11) ? lit429 : 
        (reg355 == 3'b100) ? lit429 : 
        lit429;
    assign sel523 = 
        (reg355 == 3'b0) ? 1'b0 : 
        (reg355 == 3'b1) ? 1'b1 : 
        (reg355 == 3'b10) ? 1'b0 : 
        (reg355 == 3'b11) ? 1'b0 : 
        (reg355 == 3'b100) ? 1'b0 : 
        1'b0;
    assign sel524 = eq510 ? 3'b11 : 3'b10;
    assign sel525 = eq507 ? sel524 : 3'b1;
    assign sel526 = bindout256 ? sel525 : reg355;
    assign sel527 = eq365 ? 3'b0 : reg355;
    assign sel528 = bindout283 ? 3'b0 : reg355;
    assign sel529 = bindout283 ? 3'b100 : reg355;
    assign sel530 = bindout283 ? 3'b0 : reg355;
    assign sel531 = 
        (reg355 == 3'b0) ? sel526 : 
        (reg355 == 3'b1) ? sel527 : 
        (reg355 == 3'b10) ? sel528 : 
        (reg355 == 3'b11) ? sel529 : 
        (reg355 == 3'b100) ? sel530 : 
        reg355;
    assign sel532 = bindout256 ? bindout268 : proxy389;
    assign sel533 = 
        (reg355 == 3'b0) ? sel532 : 
        (reg355 == 3'b1) ? proxy389 : 
        (reg355 == 3'b10) ? proxy389 : 
        (reg355 == 3'b11) ? proxy389 : 
        (reg355 == 3'b100) ? proxy389 : 
        proxy389;
    assign proxy534 = proxy376[1:0];
    assign sel535 = bindout256 ? proxy259 : proxy534;
    assign sel536 = 
        (reg355 == 3'b0) ? sel535 : 
        (reg355 == 3'b1) ? proxy534 : 
        (reg355 == 3'b10) ? proxy534 : 
        (reg355 == 3'b11) ? proxy534 : 
        (reg355 == 3'b100) ? proxy534 : 
        proxy534;
    assign proxy537 = proxy376[21:2];
    assign sel538 = bindout256 ? proxy260 : proxy537;
    assign sel539 = 
        (reg355 == 3'b0) ? sel538 : 
        (reg355 == 3'b1) ? proxy537 : 
        (reg355 == 3'b10) ? proxy537 : 
        (reg355 == 3'b11) ? proxy537 : 
        (reg355 == 3'b100) ? proxy537 : 
        proxy537;
    assign proxy540 = proxy376[533:22];
    assign sel541 = bindout256 ? proxy261 : proxy540;
    assign sel542 = 
        (reg355 == 3'b0) ? sel541 : 
        (reg355 == 3'b1) ? proxy540 : 
        (reg355 == 3'b10) ? proxy540 : 
        (reg355 == 3'b11) ? proxy540 : 
        (reg355 == 3'b100) ? proxy540 : 
        proxy540;
    assign proxy544 = io_qpi_rd_rsp_mdata14[5:0];
    assign proxy545 = proxy544[2:0];
    assign proxy546 = proxy544[5:3];
    assign eq548 = proxy546 == 3'b100;
    assign and550 = io_qpi_rd_rsp_valid & eq548;
    assign proxy551 = and550;
    assign eq553 = proxy546 == 3'b1;
    assign and555 = io_qpi_rd_rsp_valid & eq553;
    assign proxy556 = and555;
    assign eq558 = proxy546 == 3'b10;
    assign and560 = io_qpi_rd_rsp_valid & eq558;
    assign proxy561 = and560;

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
    wire io_enq_ready8; // /home/blaise/dev/cash/src/htl/queue.h(12) @var3413
    wire io_deq_valid11; // /home/blaise/dev/cash/src/htl/queue.h(12) @var3414
    wire[511:0] io_deq_data14; // /home/blaise/dev/cash/src/htl/queue.h(12) @var3415
    wire[2:0] io_size20; // /home/blaise/dev/cash/src/htl/queue.h(12) @var3417
    wire[2:0] proxy23; // /home/blaise/dev/cash/src/htl/queue.h(25) @var3418
    wire[2:0] proxy25; // /home/blaise/dev/cash/src/seq.h(17) @var3419
    reg[2:0] reg30; // /home/blaise/dev/cash/src/htl/queue.h(25) @var3418
    wire[2:0] proxy32; // /home/blaise/dev/cash/src/htl/queue.h(25) @var3421
    wire[2:0] proxy34; // /home/blaise/dev/cash/src/seq.h(17) @var3422
    reg[2:0] reg36; // /home/blaise/dev/cash/src/htl/queue.h(25) @var3421
    wire[1:0] proxy38; // /home/blaise/dev/cash/src/htl/queue.h(27) @var3424
    wire[1:0] proxy40; // /home/blaise/dev/cash/src/htl/queue.h(28) @var3425
    wire and41;
    wire and43;
    wire[2:0] add47;
    wire[2:0] sel49;
    wire[2:0] proxy50; // @var3430
    wire[2:0] add52;
    wire[2:0] sel54;
    wire[2:0] proxy55; // @var3433
    reg[511:0] mem56[0:3];
    wire[511:0] proxy58; // /home/blaise/dev/cash/src/htl/queue.h(37)
    wire[511:0] sel59; // /home/blaise/dev/cash/src/htl/queue.h(37)
    wire ne61;
    wire proxy62; // @var3436
    wire proxy63; // @var3437
    wire proxy64; // @var3438
    wire eq65;
    wire ne67;
    wire or69;
    wire proxy70; // @var3441
    wire[2:0] sub71;
    wire[2:0] proxy72; // @var3442

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
    wire[511:0] lit614 = 512'h0;
    wire[415:0] lit654 = 416'h0;
    wire[543:0] lit771 = 544'h20;
    wire io_qpi_rd_req_almostfull2; // aal.h(74) @var1
    wire[19:0] io_qpi_rd_req_addr5; // aal.h(74) @var2
    wire[13:0] io_qpi_rd_req_mdata8; // aal.h(74) @var3
    wire io_qpi_rd_req_valid11; // aal.h(74) @var4
    wire[13:0] io_qpi_rd_rsp_mdata14; // aal.h(74) @var5
    wire[511:0] io_qpi_rd_rsp_data17; // aal.h(74) @var6
    wire io_qpi_rd_rsp_valid20; // aal.h(74) @var7
    wire io_qpi_wr_req_almostfull23; // aal.h(74) @var8
    wire[19:0] io_qpi_wr_req_addr26; // aal.h(74) @var9
    wire[13:0] io_qpi_wr_req_mdata29; // aal.h(74) @var10
    wire[511:0] io_qpi_wr_req_data32; // aal.h(74) @var11
    wire io_qpi_wr_req_valid35; // aal.h(74) @var12
    wire[13:0] io_qpi_wr_rsp0_mdata38; // aal.h(74) @var13
    wire io_qpi_wr_rsp0_valid41; // aal.h(74) @var14
    wire[13:0] io_qpi_wr_rsp1_mdata44; // aal.h(74) @var15
    wire io_qpi_wr_rsp1_valid47; // aal.h(74) @var16
    wire[511:0] io_ctx50; // aal.h(74) @var17
    wire[131:0] proxy51; // a(0) @var18
    wire[31:0] proxy52; // num_parts(0) @var19
    wire io_done71; // aal.h(74) @var34
    wire bindin77;
    wire bindin79;
    wire bindin80;
    wire[63:0] bindin86;
    wire bindout89;
    wire[63:0] proxy91; // /home/blaise/dev/cash/src/module.h(33) @var806
    wire[63:0] bindin92;
    wire[351:0] proxy94; // /home/blaise/dev/cash/src/module.h(33) @var807
    wire[351:0] bindout106;
    wire proxy108; // /home/blaise/dev/cash/src/module.h(33) @var819
    wire bindout109;
    wire[22:0] proxy111; // /home/blaise/dev/cash/src/module.h(33) @var820
    wire[22:0] bindout114;
    wire proxy116; // /home/blaise/dev/cash/src/module.h(33) @var823
    wire bindin117;
    wire proxy119; // /home/blaise/dev/cash/src/module.h(33) @var824
    wire bindin120;
    wire[514:0] proxy122; // /home/blaise/dev/cash/src/module.h(33) @var825
    wire[514:0] bindin125;
    wire proxy127; // /home/blaise/dev/cash/src/module.h(33) @var828
    wire bindout128;
    wire[84:0] proxy130; // /home/blaise/dev/cash/src/module.h(33) @var829
    wire[84:0] bindout135;
    wire proxy137; // /home/blaise/dev/cash/src/module.h(33) @var834
    wire bindin138;
    wire bindin142;
    wire bindin143;
    wire bindin144;
    wire[63:0] bindin150;
    wire bindout153;
    wire[63:0] proxy155; // /home/blaise/dev/cash/src/module.h(33) @var1606
    wire[63:0] bindin156;
    wire[351:0] proxy158; // /home/blaise/dev/cash/src/module.h(33) @var1607
    wire[351:0] bindout170;
    wire proxy172; // /home/blaise/dev/cash/src/module.h(33) @var1619
    wire bindout173;
    wire[22:0] proxy175; // /home/blaise/dev/cash/src/module.h(33) @var1620
    wire[22:0] bindout178;
    wire proxy180; // /home/blaise/dev/cash/src/module.h(33) @var1623
    wire bindin181;
    wire proxy183; // /home/blaise/dev/cash/src/module.h(33) @var1624
    wire bindin184;
    wire[514:0] proxy186; // /home/blaise/dev/cash/src/module.h(33) @var1625
    wire[514:0] bindin189;
    wire proxy191; // /home/blaise/dev/cash/src/module.h(33) @var1628
    wire bindout192;
    wire[84:0] proxy194; // /home/blaise/dev/cash/src/module.h(33) @var1629
    wire[84:0] bindout199;
    wire proxy201; // /home/blaise/dev/cash/src/module.h(33) @var1634
    wire bindin202;
    wire proxy204; // /home/blaise/dev/cash/src/module.h(33) @var2045
    wire bindin206;
    wire bindin207;
    wire bindin208;
    wire[84:0] proxy210; // /home/blaise/dev/cash/src/module.h(33) @var2046
    wire[84:0] bindin215;
    wire proxy217; // /home/blaise/dev/cash/src/module.h(33) @var2051
    wire bindout218;
    wire proxy220; // /home/blaise/dev/cash/src/module.h(33) @var2052
    wire bindout221;
    wire[533:0] proxy223; // /home/blaise/dev/cash/src/module.h(33) @var2053
    wire[533:0] bindout227;
    wire proxy229; // /home/blaise/dev/cash/src/module.h(33) @var2057
    wire bindin230;
    wire[63:0] proxy232; // /home/blaise/dev/cash/src/module.h(33) @var2058
    wire[63:0] bindout235;
    wire bindout238;
    wire proxy240; // /home/blaise/dev/cash/src/module.h(33) @var2472
    wire bindin242;
    wire bindin243;
    wire bindin244;
    wire[84:0] proxy246; // /home/blaise/dev/cash/src/module.h(33) @var2473
    wire[84:0] bindin251;
    wire proxy253; // /home/blaise/dev/cash/src/module.h(33) @var2478
    wire bindout254;
    wire proxy256; // /home/blaise/dev/cash/src/module.h(33) @var2479
    wire bindout257;
    wire[533:0] proxy259; // /home/blaise/dev/cash/src/module.h(33) @var2480
    wire[533:0] bindout263;
    wire proxy265; // /home/blaise/dev/cash/src/module.h(33) @var2484
    wire bindin266;
    wire[63:0] proxy268; // /home/blaise/dev/cash/src/module.h(33) @var2485
    wire[63:0] bindout271;
    wire bindout274;
    wire proxy276; // /home/blaise/dev/cash/src/module.h(33) @var3333
    wire bindin278;
    wire bindin279;
    wire bindin280;
    wire[19:0] proxy282; // /home/blaise/dev/cash/src/module.h(33) @var3334
    wire[19:0] bindout283;
    wire[13:0] proxy285; // /home/blaise/dev/cash/src/module.h(33) @var3335
    wire[13:0] bindout286;
    wire proxy288; // /home/blaise/dev/cash/src/module.h(33) @var3336
    wire bindout289;
    wire[13:0] proxy291; // /home/blaise/dev/cash/src/module.h(33) @var3337
    wire[13:0] bindin292;
    wire[511:0] proxy294; // /home/blaise/dev/cash/src/module.h(33) @var3338
    wire[511:0] bindin295;
    wire proxy297; // /home/blaise/dev/cash/src/module.h(33) @var3339
    wire bindin298;
    wire proxy300; // /home/blaise/dev/cash/src/module.h(33) @var3340
    wire bindin301;
    wire[19:0] proxy303; // /home/blaise/dev/cash/src/module.h(33) @var3341
    wire[19:0] bindout304;
    wire[13:0] proxy306; // /home/blaise/dev/cash/src/module.h(33) @var3342
    wire[13:0] bindout307;
    wire[511:0] proxy309; // /home/blaise/dev/cash/src/module.h(33) @var3343
    wire[511:0] bindout310;
    wire proxy312; // /home/blaise/dev/cash/src/module.h(33) @var3344
    wire bindout313;
    wire[13:0] proxy315; // /home/blaise/dev/cash/src/module.h(33) @var3345
    wire[13:0] bindin316;
    wire proxy318; // /home/blaise/dev/cash/src/module.h(33) @var3346
    wire bindin319;
    wire[13:0] proxy321; // /home/blaise/dev/cash/src/module.h(33) @var3347
    wire[13:0] bindin322;
    wire proxy324; // /home/blaise/dev/cash/src/module.h(33) @var3348
    wire bindin325;
    wire[511:0] proxy327; // /home/blaise/dev/cash/src/module.h(33) @var3349
    wire[511:0] bindin343;
    wire bindin346;
    wire[22:0] proxy348; // /home/blaise/dev/cash/src/module.h(33) @var3366
    wire[2:0] proxy349; // type(0) @var3367
    wire[22:0] bindin351;
    wire bindout354;
    wire bindin357;
    wire[533:0] proxy359; // /home/blaise/dev/cash/src/module.h(33) @var3371
    wire[533:0] bindin363;
    wire bindout366;
    wire bindout369;
    wire[514:0] proxy371; // /home/blaise/dev/cash/src/module.h(33) @var3377
    wire[2:0] proxy372; // type(0) @var3378
    wire[511:0] proxy373; // data(0) @var3379
    wire[514:0] bindout374;
    wire[31:0] bindout377;
    wire proxy379; // /home/blaise/dev/cash/src/module.h(33) @var3381
    wire bindin380;
    wire[22:0] proxy382; // /home/blaise/dev/cash/src/module.h(33) @var3382
    wire[22:0] bindin385;
    wire proxy387; // /home/blaise/dev/cash/src/module.h(33) @var3385
    wire bindout388;
    wire proxy390; // /home/blaise/dev/cash/src/module.h(33) @var3386
    wire bindout391;
    wire[514:0] proxy393; // /home/blaise/dev/cash/src/module.h(33) @var3387
    wire[514:0] bindout396;
    wire proxy398; // /home/blaise/dev/cash/src/module.h(33) @var3390
    wire bindin399;
    wire[22:0] proxy401; // /home/blaise/dev/cash/src/module.h(33) @var3391
    wire[22:0] bindin404;
    wire proxy406; // /home/blaise/dev/cash/src/module.h(33) @var3394
    wire bindout407;
    wire proxy409; // /home/blaise/dev/cash/src/module.h(33) @var3395
    wire bindout410;
    wire[514:0] proxy412; // /home/blaise/dev/cash/src/module.h(33) @var3396
    wire[514:0] bindout415;
    wire proxy417; // /home/blaise/dev/cash/src/module.h(33) @var3399
    wire bindin418;
    wire[533:0] proxy420; // /home/blaise/dev/cash/src/module.h(33) @var3400
    wire[533:0] bindin424;
    wire proxy426; // /home/blaise/dev/cash/src/module.h(33) @var3404
    wire bindout427;
    wire proxy429; // /home/blaise/dev/cash/src/module.h(33) @var3405
    wire bindin430;
    wire[533:0] proxy432; // /home/blaise/dev/cash/src/module.h(33) @var3406
    wire[533:0] bindin436;
    wire proxy438; // /home/blaise/dev/cash/src/module.h(33) @var3410
    wire bindout439;
    wire proxy441; // /home/blaise/dev/cash/src/module.h(33) @var3443
    wire bindin443;
    wire bindin444;
    wire bindin445;
    wire[511:0] proxy447; // /home/blaise/dev/cash/src/module.h(33) @var3444
    wire[511:0] bindin448;
    wire bindout454;
    wire[511:0] proxy456; // /home/blaise/dev/cash/src/module.h(33) @var3447
    wire[511:0] bindout457;
    wire proxy459; // /home/blaise/dev/cash/src/module.h(33) @var3448
    wire bindin460;
    wire[543:0] proxy465; // spmv.cpp(15) @var3450
    wire[543:0] proxy467; // /home/blaise/dev/cash/src/seq.h(17) @var3451
    reg[543:0] reg470; // spmv.cpp(15) @var3450
    reg[4:0] reg477; // spmv.cpp(15) @var3453
    wire[31:0] proxy481; // /home/blaise/dev/cash/src/seq.h(17) @var3457
    reg[31:0] reg484; // spmv.cpp(15) @var3456
    wire[19:0] proxy486; // spmv.cpp(15) @var3459
    reg[19:0] reg491; // spmv.cpp(15) @var3459
    wire[19:0] proxy495; // /home/blaise/dev/cash/src/seq.h(17) @var3463
    reg[19:0] reg497; // spmv.cpp(15) @var3462
    wire[1:0] proxy499; // spmv.cpp(15) @var3465
    reg[1:0] reg504; // spmv.cpp(15) @var3465
    wire[95:0] proxy506; // spmv.cpp(15) @var3468
    wire[31:0] proxy507; // a_colptr_stalls(0) @var3469
    wire[95:0] ch_ctrl_stats_t511; // /home/blaise/dev/cash/src/seq.h(17) @var3472
    reg[95:0] reg517; // spmv.cpp(15) @var3468
    wire[19:0] proxy519; // spmv.cpp(15) @var3477
    reg[19:0] reg525; // spmv.cpp(15) @var3478
    wire[19:0] proxy529; // /home/blaise/dev/cash/src/seq.h(17) @var3482
    reg[19:0] reg531; // spmv.cpp(15) @var3481
    wire[19:0] proxy533; // spmv.cpp(32) @var3484
    wire[19:0] sub536;
    wire[19:0] proxy537; // @var3486
    wire[63:0] proxy539; // spmv.cpp(36) @var3487
    wire[63:0] proxy541; // /home/blaise/dev/cash/src/seq.h(17) @var3488
    reg[63:0] reg544; // spmv.cpp(36) @var3487
    wire[63:0] add547;
    wire[63:0] proxy548; // @var3491
    reg[2:0] reg555; // spmv.cpp(54) @var3492
    wire proxy557; // spmv.cpp(57) @var3495
    reg reg562; // spmv.cpp(57) @var3495
    wire eq564;
    wire and566;
    wire proxy567; // @var3500
    wire[30:0] proxy569; // spmv.cpp(69) @var3501
    wire[31:0] proxy571; // spmv.cpp(69) @var3502
    wire eq573;
    wire and575;
    wire and577;
    wire proxy578; // @var3506
    wire[30:0] proxy579; // spmv.cpp(68) @var3507
    wire[31:0] proxy581; // spmv.cpp(68) @var3508
    wire[31:0] add582;
    wire[31:0] sub584;
    wire[31:0] proxy585; // @var3510
    wire and586;
    wire proxy587; // @var3511
    wire and589;
    wire and591;
    wire proxy592; // @var3514
    wire[31:0] add595;
    wire[31:0] sll599;
    wire[31:0] add603;
    wire[31:0] srl607;
    wire[31:0] proxy608; // @var3522
    wire[19:0] proxy610; // spmv.cpp(84) @var3523
    wire[19:0] sub612;
    wire[19:0] proxy613; // @var3525
    wire ne617;
    wire ne624;
    wire[19:0] add627;
    wire eq629;
    wire[31:0] add633;
    wire[31:0] add636;
    wire eq639;
    wire and641;
    wire[17:0] proxy650; // spmv.cpp(149) @var3544
    wire[19:0] proxy652; // spmv.cpp(149) @var3545
    wire[1:0] proxy653; // spmv.cpp(150) @var3546
    wire[415:0] proxy655; // spmv.cpp(260) @var3547
    wire[511:0] proxy657; // spmv.cpp(260) @var3548
    wire[415:0] ch_stats_t660; // spmv.cpp(262) @var3550
    wire[95:0] proxy676; // spmv.cpp(265) @var3566
    wire[511:0] proxy678; // spmv.cpp(265) @var3567
    wire[415:0] ch_stats_t681; // spmv.cpp(267) @var3569
    wire[95:0] proxy697; // spmv.cpp(270) @var3585
    wire[511:0] proxy699; // spmv.cpp(270) @var3586
    wire eq700;
    wire[511:0] sel701;
    wire eq702;
    wire[511:0] sel703;
    wire[1:0] add706;
    wire eq709;
    wire eq714;
    wire[1:0] sel716; // spmv.cpp(153)
    wire[1:0] sel717; // spmv.cpp(96)
    wire sel718; // spmv.cpp(96)
    wire sel719; // spmv.cpp(99)
    wire sel720; // spmv.cpp(98)
    wire sel721; // spmv.cpp(163)
    wire sel722; // spmv.cpp(96)
    wire sel723; // spmv.cpp(111)
    wire sel724; // spmv.cpp(96)
    wire[19:0] sel725; // spmv.cpp(99)
    wire[19:0] sel726; // spmv.cpp(98)
    wire[19:0] sel727; // spmv.cpp(114)
    wire[19:0] sel728; // spmv.cpp(111)
    wire[19:0] sel729; // spmv.cpp(96)
    wire[2:0] sel730; // spmv.cpp(99)
    wire[2:0] sel731; // spmv.cpp(98)
    wire[2:0] sel732; // spmv.cpp(116)
    wire[2:0] sel733; // spmv.cpp(114)
    wire[2:0] sel734; // spmv.cpp(111)
    wire[2:0] sel735; // spmv.cpp(131)
    wire[2:0] sel736; // spmv.cpp(141)
    wire[2:0] sel737; // spmv.cpp(155)
    wire[2:0] sel738; // spmv.cpp(153)
    wire[2:0] sel739; // spmv.cpp(163)
    wire[2:0] sel740; // spmv.cpp(96)
    wire[31:0] proxy741; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel742; // spmv.cpp(114)
    wire[31:0] sel743; // spmv.cpp(111)
    wire[31:0] sel744; // spmv.cpp(96)
    wire[1:0] sel745; // spmv.cpp(96)
    wire[19:0] sel746; // spmv.cpp(96)
    wire[511:0] sel747; // spmv.cpp(96)
    reg[1:0] reg753; // spmv.cpp(181) @var3595
    wire eq756;
    wire[31:0] proxy761; // /home/blaise/dev/cash/src/module.h(33)
    wire[479:0] proxy762; // /home/blaise/dev/cash/src/module.h(33)
    wire[479:0] proxy763; // /home/blaise/dev/cash/src/module.h(33)
    wire[31:0] proxy764; // /home/blaise/dev/cash/src/module.h(33)
    wire[63:0] proxy768; // spmv.cpp(216) @var3604
    wire[543:0] srl773;
    wire[543:0] proxy774; // @var3608
    wire[31:0] proxy775;
    wire[479:0] proxy776;
    wire[31:0] proxy777;
    wire[19:0] add779;
    wire[4:0] sub783;
    wire ne787;
    wire ne789;
    wire and791;
    wire[63:0] proxy795; // spmv.cpp(216) @var3618
    wire[543:0] srl799;
    wire[543:0] proxy800; // @var3622
    wire[31:0] proxy801;
    wire[479:0] proxy802;
    wire[31:0] proxy803;
    wire[19:0] add805;
    wire[4:0] sub808;
    wire ne811;
    wire ne813;
    wire and815;
    wire sel817; // spmv.cpp(214)
    wire sel818; // spmv.cpp(192)
    wire[63:0] sel819; // spmv.cpp(214)
    wire[63:0] sel820; // spmv.cpp(192)
    wire sel821; // spmv.cpp(214)
    wire sel822; // spmv.cpp(192)
    wire[63:0] sel823; // spmv.cpp(214)
    wire[63:0] sel824; // spmv.cpp(192)
    wire[19:0] sel825; // spmv.cpp(214)
    wire[19:0] sel826; // spmv.cpp(214)
    wire[19:0] sel827; // spmv.cpp(192)
    wire[1:0] sel828; // spmv.cpp(195)
    wire[1:0] sel829; // spmv.cpp(233)
    wire[1:0] sel830; // spmv.cpp(214)
    wire[1:0] sel831; // spmv.cpp(233)
    wire[1:0] sel832; // spmv.cpp(214)
    wire[1:0] sel833; // spmv.cpp(192)
    wire[4:0] sel834; // spmv.cpp(197)
    wire[4:0] sel835; // spmv.cpp(195)
    wire[4:0] sel836; // spmv.cpp(214)
    wire[4:0] sel837; // spmv.cpp(214)
    wire[4:0] sel838; // spmv.cpp(192)
    wire[31:0] proxy839; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel840; // spmv.cpp(197)
    wire[31:0] sel841; // spmv.cpp(195)
    wire[31:0] sel842; // spmv.cpp(214)
    wire[31:0] sel843; // spmv.cpp(214)
    wire[31:0] sel844; // spmv.cpp(192)
    wire[479:0] proxy845; // /home/blaise/dev/cash/src/seq.h(17)
    wire[479:0] sel846; // spmv.cpp(197)
    wire[479:0] sel847; // spmv.cpp(195)
    wire[479:0] sel848; // spmv.cpp(214)
    wire[479:0] sel849; // spmv.cpp(214)
    wire[479:0] sel850; // spmv.cpp(192)
    wire[31:0] proxy851; // /home/blaise/dev/cash/src/seq.h(17)
    wire[31:0] sel852; // spmv.cpp(197)
    wire[31:0] sel853; // spmv.cpp(195)
    wire[31:0] sel854; // spmv.cpp(214)
    wire[31:0] sel855; // spmv.cpp(214)
    wire[31:0] sel856; // spmv.cpp(192)
    wire sel857; // spmv.cpp(195)
    wire sel858; // spmv.cpp(192)

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
    assign bindin80 = sel822;
    assign bindin86 = sel824;
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
    assign bindin144 = sel818;
    assign bindin150 = sel820;
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
    assign bindin346 = sel724;
    assign proxy348 = {proxy486, 3'b0};
    assign proxy349 = proxy348[2:0];
    assign bindin351 = proxy348;
    assign bindin357 = sel718;
    assign proxy359 = {sel747, sel746, sel745};
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
    assign proxy459 = sel858;
    assign bindin460 = proxy459;
    assign proxy465 = reg470;
    assign proxy467 = {sel856, sel850, sel844};
    always @ (posedge clk) reg470 <= reset ? lit468 : proxy467;
    always @ (posedge clk) reg477 <= reset ? 5'b0 : sel838;
    assign proxy481 = proxy585;
    always @ (posedge clk) reg484 <= reset ? 32'h0 : proxy481;
    assign proxy486 = reg491;
    always @ (posedge clk) reg491 <= reset ? 20'h0 : sel729;
    assign proxy495 = proxy613;
    always @ (posedge clk) reg497 <= reset ? 20'h0 : proxy495;
    assign proxy499 = reg504;
    always @ (posedge clk) reg504 <= reset ? 2'b0 : sel717;
    assign proxy506 = reg517;
    assign proxy507 = proxy506[31:0];
    assign ch_ctrl_stats_t511 = {proxy506[95:32], sel744};
    always @ (posedge clk) reg517 <= reset ? lit515 : ch_ctrl_stats_t511;
    assign proxy519 = proxy533;
    always @ (posedge clk) reg525 <= reset ? 20'h0 : sel827;
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
    always @ (posedge clk) reg555 <= reset ? 3'b0 : sel740;
    assign proxy557 = reg562;
    always @ (posedge clk) reg562 <= reset ? 1'b0 : sel722;
    assign eq564 = proxy372 == 3'b0;
    assign and566 = bindout369 & eq564;
    assign proxy567 = and566;
    assign proxy569 = 31'b0;
    assign proxy571 = {proxy569, proxy459};
    assign eq573 = proxy349 == 3'b0;
    assign and575 = sel724 & bindout354;
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
    assign ne617 = proxy52 != 32'h0;
    assign ne624 = reg484 != 32'h4;
    assign add627 = proxy486 + 20'h1;
    assign eq629 = proxy486 == reg497;
    assign add633 = proxy507 + 32'h1;
    assign add636 = proxy507 + 32'h1;
    assign eq639 = reg525 == proxy519;
    assign and641 = eq639 & proxy587;
    assign proxy650 = 18'b0;
    assign proxy652 = {proxy650, proxy499};
    assign proxy653 = proxy499;
    assign proxy655 = lit654;
    assign proxy657 = {proxy655, proxy506};
    assign ch_stats_t660 = {proxy232, proxy94};
    assign proxy676 = lit515;
    assign proxy678 = {proxy676, ch_stats_t660};
    assign ch_stats_t681 = {proxy268, proxy158};
    assign proxy697 = lit515;
    assign proxy699 = {proxy697, ch_stats_t681};
    assign eq700 = proxy653 == 2'b1;
    assign sel701 = eq700 ? proxy678 : proxy699;
    assign eq702 = proxy653 == 2'b0;
    assign sel703 = eq702 ? proxy657 : sel701;
    assign add706 = proxy499 + 2'b1;
    assign eq709 = proxy499 == 2'b10;
    assign eq714 = bindout377 == 32'h0;
    assign sel716 = bindout366 ? add706 : proxy499;
    assign sel717 = 
        (reg555 == 3'b0) ? proxy499 : 
        (reg555 == 3'b1) ? proxy499 : 
        (reg555 == 3'b10) ? proxy499 : 
        (reg555 == 3'b11) ? proxy499 : 
        (reg555 == 3'b100) ? sel716 : 
        (reg555 == 3'b101) ? proxy499 : 
        proxy499;
    assign sel718 = 
        (reg555 == 3'b0) ? 1'b0 : 
        (reg555 == 3'b1) ? 1'b0 : 
        (reg555 == 3'b10) ? 1'b0 : 
        (reg555 == 3'b11) ? 1'b1 : 
        (reg555 == 3'b100) ? 1'b1 : 
        (reg555 == 3'b101) ? 1'b0 : 
        1'b0;
    assign sel719 = ne617 ? 1'b0 : 1'b1;
    assign sel720 = io_start ? sel719 : proxy557;
    assign sel721 = eq714 ? 1'b1 : proxy557;
    assign sel722 = 
        (reg555 == 3'b0) ? sel720 : 
        (reg555 == 3'b1) ? proxy557 : 
        (reg555 == 3'b10) ? proxy557 : 
        (reg555 == 3'b11) ? proxy557 : 
        (reg555 == 3'b100) ? proxy557 : 
        (reg555 == 3'b101) ? sel721 : 
        proxy557;
    assign sel723 = ne624 ? 1'b1 : 1'b0;
    assign sel724 = 
        (reg555 == 3'b0) ? 1'b0 : 
        (reg555 == 3'b1) ? sel723 : 
        (reg555 == 3'b10) ? 1'b0 : 
        (reg555 == 3'b11) ? 1'b0 : 
        (reg555 == 3'b100) ? 1'b0 : 
        (reg555 == 3'b101) ? 1'b0 : 
        1'b0;
    assign sel725 = ne617 ? 20'h0 : proxy486;
    assign sel726 = io_start ? sel725 : proxy486;
    assign sel727 = bindout354 ? add627 : proxy486;
    assign sel728 = ne624 ? sel727 : proxy486;
    assign sel729 = 
        (reg555 == 3'b0) ? sel726 : 
        (reg555 == 3'b1) ? sel728 : 
        (reg555 == 3'b10) ? proxy486 : 
        (reg555 == 3'b11) ? proxy486 : 
        (reg555 == 3'b100) ? proxy486 : 
        (reg555 == 3'b101) ? proxy486 : 
        proxy486;
    assign sel730 = ne617 ? 3'b1 : reg555;
    assign sel731 = io_start ? sel730 : reg555;
    assign sel732 = eq629 ? 3'b10 : reg555;
    assign sel733 = bindout354 ? sel732 : reg555;
    assign sel734 = ne624 ? sel733 : reg555;
    assign sel735 = and641 ? 3'b11 : reg555;
    assign sel736 = bindout366 ? 3'b100 : reg555;
    assign sel737 = eq709 ? 3'b101 : reg555;
    assign sel738 = bindout366 ? sel737 : reg555;
    assign sel739 = eq714 ? 3'b0 : reg555;
    assign sel740 = 
        (reg555 == 3'b0) ? sel731 : 
        (reg555 == 3'b1) ? sel734 : 
        (reg555 == 3'b10) ? sel735 : 
        (reg555 == 3'b11) ? sel736 : 
        (reg555 == 3'b100) ? sel738 : 
        (reg555 == 3'b101) ? sel739 : 
        reg555;
    assign proxy741 = proxy506[31:0];
    assign sel742 = bindout354 ? proxy741 : add633;
    assign sel743 = ne624 ? sel742 : add636;
    assign sel744 = 
        (reg555 == 3'b0) ? proxy741 : 
        (reg555 == 3'b1) ? sel743 : 
        (reg555 == 3'b10) ? proxy741 : 
        (reg555 == 3'b11) ? proxy741 : 
        (reg555 == 3'b100) ? proxy741 : 
        (reg555 == 3'b101) ? proxy741 : 
        proxy741;
    assign sel745 = 
        (reg555 == 3'b0) ? 2'b0 : 
        (reg555 == 3'b1) ? 2'b0 : 
        (reg555 == 3'b10) ? 2'b0 : 
        (reg555 == 3'b11) ? 2'b1 : 
        (reg555 == 3'b100) ? 2'b10 : 
        (reg555 == 3'b101) ? 2'b0 : 
        2'b0;
    assign sel746 = 
        (reg555 == 3'b0) ? 20'h0 : 
        (reg555 == 3'b1) ? 20'h0 : 
        (reg555 == 3'b10) ? 20'h0 : 
        (reg555 == 3'b11) ? 20'h0 : 
        (reg555 == 3'b100) ? proxy652 : 
        (reg555 == 3'b101) ? 20'h0 : 
        20'h0;
    assign sel747 = 
        (reg555 == 3'b0) ? lit614 : 
        (reg555 == 3'b1) ? lit614 : 
        (reg555 == 3'b10) ? lit614 : 
        (reg555 == 3'b11) ? lit614 : 
        (reg555 == 3'b100) ? sel703 : 
        (reg555 == 3'b101) ? lit614 : 
        lit614;
    always @ (posedge clk) reg753 <= reset ? 2'b0 : sel833;
    assign eq756 = 5'b0 == reg477;
    assign proxy761 = proxy456[31:0];
    assign proxy762 = proxy456[511:32];
    assign proxy763 = proxy456[479:0];
    assign proxy764 = proxy456[511:480];
    assign proxy768 = proxy465[63:0];
    assign srl773 = proxy465 >> lit771;
    assign proxy774 = srl773;
    assign proxy775 = proxy774[31:0];
    assign proxy776 = proxy774[511:32];
    assign proxy777 = proxy774[543:512];
    assign add779 = reg525 + 20'h1;
    assign sub783 = reg477 - 5'b1;
    assign ne787 = reg477 != 5'b10;
    assign ne789 = reg525 != reg531;
    assign and791 = ne789 & ne787;
    assign proxy795 = proxy465[63:0];
    assign srl799 = proxy465 >> lit771;
    assign proxy800 = srl799;
    assign proxy801 = proxy800[31:0];
    assign proxy802 = proxy800[511:32];
    assign proxy803 = proxy800[543:512];
    assign add805 = reg525 + 20'h1;
    assign sub808 = reg477 - 5'b1;
    assign ne811 = reg477 != 5'b10;
    assign ne813 = reg525 != reg531;
    assign and815 = ne813 & ne811;
    assign sel817 = bindout153 ? 1'b1 : 1'b0;
    assign sel818 = 
        (reg753 == 2'b0) ? 1'b0 : 
        (reg753 == 2'b1) ? 1'b0 : 
        (reg753 == 2'b10) ? sel817 : 
        1'b0;
    assign sel819 = bindout153 ? proxy795 : lit542;
    assign sel820 = 
        (reg753 == 2'b0) ? lit542 : 
        (reg753 == 2'b1) ? lit542 : 
        (reg753 == 2'b10) ? sel819 : 
        lit542;
    assign sel821 = bindout89 ? 1'b1 : 1'b0;
    assign sel822 = 
        (reg753 == 2'b0) ? 1'b0 : 
        (reg753 == 2'b1) ? sel821 : 
        (reg753 == 2'b10) ? 1'b0 : 
        1'b0;
    assign sel823 = bindout89 ? proxy768 : lit542;
    assign sel824 = 
        (reg753 == 2'b0) ? lit542 : 
        (reg753 == 2'b1) ? sel823 : 
        (reg753 == 2'b10) ? lit542 : 
        lit542;
    assign sel825 = bindout89 ? add779 : reg525;
    assign sel826 = bindout153 ? add805 : reg525;
    assign sel827 = 
        (reg753 == 2'b0) ? reg525 : 
        (reg753 == 2'b1) ? sel825 : 
        (reg753 == 2'b10) ? sel826 : 
        reg525;
    assign sel828 = bindout454 ? 2'b1 : reg753;
    assign sel829 = and791 ? 2'b10 : 2'b0;
    assign sel830 = bindout89 ? sel829 : 2'b10;
    assign sel831 = and815 ? 2'b1 : 2'b0;
    assign sel832 = bindout153 ? sel831 : 2'b1;
    assign sel833 = 
        (reg753 == 2'b0) ? sel828 : 
        (reg753 == 2'b1) ? sel830 : 
        (reg753 == 2'b10) ? sel832 : 
        reg753;
    assign sel834 = eq756 ? 5'b10000 : 5'b10001;
    assign sel835 = bindout454 ? sel834 : reg477;
    assign sel836 = bindout89 ? sub783 : reg477;
    assign sel837 = bindout153 ? sub808 : reg477;
    assign sel838 = 
        (reg753 == 2'b0) ? sel835 : 
        (reg753 == 2'b1) ? sel836 : 
        (reg753 == 2'b10) ? sel837 : 
        reg477;
    assign proxy839 = proxy465[31:0];
    assign sel840 = eq756 ? proxy761 : proxy839;
    assign sel841 = bindout454 ? sel840 : proxy839;
    assign sel842 = bindout89 ? proxy775 : proxy839;
    assign sel843 = bindout153 ? proxy801 : proxy839;
    assign sel844 = 
        (reg753 == 2'b0) ? sel841 : 
        (reg753 == 2'b1) ? sel842 : 
        (reg753 == 2'b10) ? sel843 : 
        proxy839;
    assign proxy845 = proxy465[511:32];
    assign sel846 = eq756 ? proxy762 : proxy763;
    assign sel847 = bindout454 ? sel846 : proxy845;
    assign sel848 = bindout89 ? proxy776 : proxy845;
    assign sel849 = bindout153 ? proxy802 : proxy845;
    assign sel850 = 
        (reg753 == 2'b0) ? sel847 : 
        (reg753 == 2'b1) ? sel848 : 
        (reg753 == 2'b10) ? sel849 : 
        proxy845;
    assign proxy851 = proxy465[543:512];
    assign sel852 = eq756 ? proxy851 : proxy764;
    assign sel853 = bindout454 ? sel852 : proxy851;
    assign sel854 = bindout89 ? proxy777 : proxy851;
    assign sel855 = bindout153 ? proxy803 : proxy851;
    assign sel856 = 
        (reg753 == 2'b0) ? sel853 : 
        (reg753 == 2'b1) ? sel854 : 
        (reg753 == 2'b10) ? sel855 : 
        proxy851;
    assign sel857 = bindout454 ? 1'b1 : 1'b0;
    assign sel858 = 
        (reg753 == 2'b0) ? sel857 : 
        (reg753 == 2'b1) ? 1'b0 : 
        (reg753 == 2'b10) ? 1'b0 : 
        1'b0;

    assign io_qpi_rd_req_addr = io_qpi_rd_req_addr5;
    assign io_qpi_rd_req_mdata = io_qpi_rd_req_mdata8;
    assign io_qpi_rd_req_valid = io_qpi_rd_req_valid11;
    assign io_qpi_wr_req_addr = io_qpi_wr_req_addr26;
    assign io_qpi_wr_req_mdata = io_qpi_wr_req_mdata29;
    assign io_qpi_wr_req_data = io_qpi_wr_req_data32;
    assign io_qpi_wr_req_valid = io_qpi_wr_req_valid35;
    assign io_done = io_done71;

endmodule
