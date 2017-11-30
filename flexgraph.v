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
    reg[1:0] r27, r32;
    wire w36, w38, a39, a40, a51, a54, a55, a56;
    wire[1:0] a42, s43, a44, s45, a57;
    reg[511:0] m46[0:1];
    wire[511:0] s49;

    always @ (posedge clk)
    r27 <= reset ? 2'b0 : s43;
    always @ (posedge clk)
    r32 <= reset ? 2'b0 : s45;
    assign w36 = r27[0];
    assign w38 = r32[0];
    assign a39 = io_deq_ready & a51;
    assign a40 = io_enq_valid & a56;
    assign a42 = r27 + 2'b1;
    assign s43 = a39 ? a42 : r27;
    assign a44 = r32 + 2'b1;
    assign s45 = a40 ? a44 : r32;
    always @(posedge clk)
    m46[w38] = s49;
    assign s49 = a40 ? io_enq_data : m46[w38];
    assign a51 = r32 != r27;
    assign a54 = r32[1] == r27[1];
    assign a55 = w38 != w36;
    assign a56 = a55 | a54;
    assign a57 = r32 - r27;

    assign io_enq_ready = a56;
    assign io_deq_valid = a51;
    assign io_deq_data = m46[w36];
    assign io_size = a57;

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
    reg[5:0] r27, r32;
    wire[4:0] w36, w38;
    wire a39, a40, a51, a54, a55, a56;
    wire[5:0] a42, s43, a44, s45, a57;
    reg[511:0] m46[0:31];
    wire[511:0] s49;

    always @ (posedge clk)
    r27 <= reset ? 6'b0 : s43;
    always @ (posedge clk)
    r32 <= reset ? 6'b0 : s45;
    assign w36 = r27[4:0];
    assign w38 = r32[4:0];
    assign a39 = io_deq_ready & a51;
    assign a40 = io_enq_valid & a56;
    assign a42 = r27 + 6'b1;
    assign s43 = a39 ? a42 : r27;
    assign a44 = r32 + 6'b1;
    assign s45 = a40 ? a44 : r32;
    always @(posedge clk)
    m46[w38] = s49;
    assign s49 = a40 ? io_enq_data : m46[w38];
    assign a51 = r32 != r27;
    assign a54 = r32[5] == r27[5];
    assign a55 = w38 != w36;
    assign a56 = a55 | a54;
    assign a57 = r32 - r27;

    assign io_enq_ready = a56;
    assign io_deq_valid = a51;
    assign io_deq_data = m46[w36];
    assign io_size = a57;

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
    wire[511:0] l277 = 512'h0;
    wire[63:0] l298 = 64'h0;
    wire[351:0] l304 = 352'h0;
    wire[22:0] w20;
    wire[84:0] w35;
    reg[19:0] r45, r50, r55, r60, r65, r71, r76, r81, r86;
    reg[5:0] r92;
    reg[31:0] r98;
    wire b105, b106, b107, b116, b122, b129, b130, b131, b140, b146, b153, b154, b155, b170, b177, b178, b179, b194, b201, b202, b203, b212, b218, b225, b226, b227, b236, b242, a313, a314, a316, a317, a319, a320, a322, a323, a325, a326, a328, a329, a336, a338, a339, a340, a342, a343, a347, a348, a350, a351, a353, a354, a355, a357, a358, a361, a362, a364, a365, a367, a368, a369, a371, a372, a375, a376, a378, a379, a381, a382, a383, a385, a386, a389, a390, a392, a393, a395, a396, a397, a399, a400, a403, a404, a406, a407, a409, a410, a411, a413, a414, a417, a418, a420, a421, a423, a427, a432, a433, a437, a438, a439, a449, a451, s452, a454, a459, a460, a464, a465, a467, a468, a469, a470, a475, a476, s477, a479, a483, a484, a488, a489, a491, a492, a493, a494, a495, a496, a497, s506, s513, a515, a522, a527, a528, a530, a531, a532, a533, a534, a535, a541, a542, s543, a545, a548, a549, a552, a553, a555, a557, a558, a559, a560, a561, a562, a563, s564, a569, a570, a572, a576, a586, a589, a592, a593, a594, a595, a596, a597, a598, a599, a600, a601, a613, a614, a619, a620, a622, a623, a627, a628, a629, a630, a631, a632, a633, a634, a635, a638, a639, s640, a642, a646, a647, a651, a652, a654, a655, a656, a657, a658, a659, a660, a661, a662, a663, a664, s666, a676, a679, a682, a683, a693, a694, a697, a698, a701, a702, a704, a705, a706, a707, a708, a709, a710, a711, a712, a713, a714, a719, a720, s721, a724, a736, a737, a741, a742, a744, a745, a746, a747, a748, a749, a750, a751, a752, a753, a754, a755, a759, a760, s761, a763, a767, a768, a772, a773, a775, a776, a777, a778, a779, a780, a781, a782, a783, a784, a785, a786, a787, a790, a791, s792, a794, a796, a797, a800, a801, a805, a806, a810, a811, a813, a814, a815, a816, a817, a818, a819, a820, a821, a822, a823, a824, a825, a826, a827, a828, a829, s831, a843, a844, a849, a850, a852, a857, a858, a859, a860, a861, a862, a863, a864, a865, a866, a867, a868, a869, a870, s885, s886, a888, a890, a892, a893, a894, s895, s896, a897, a898, s899, s900, a904, a905, a908, a910, a911, a912, a913, a914, a915, a916, a917, a918, a919, a920, a921, a922, a923, a924, a926, a928, a933, a934, a942, a948, a951, a952, a954, a955, a958, a959, a961, a962, a963, a964, a965, a966, a967, a968, a969, a970, a971, a972, a973, a974, a975, a976, a977, s981, s982, a987, a989, a991, a994, a1008, a1009;
    wire[511:0] b110, b119, b134, b143, b158, b167, b182, b191, b206, b215, b230, b239, s498, a503, s507, a510, a520, a579, s665, a670, s830, a834, a840, a855, a875, a931, a938, a946;
    wire[5:0] b197, s610, s691, s732;
    reg[7:0] r249, r254, r259, r264, r269, r274;
    reg[511:0] r280, r285, r290, r295;
    reg[63:0] r301;
    wire[351:0] w306;
    reg[351:0] r307;
    reg[15:0] r333;
    wire[2:0] w337, s441, s471, s536, s636, s715, s756, s788;
    wire[7:0] a345, s346, a349, s352, a359, s360, a363, s366, a373, s374, a377, s380, a387, s388, a391, s394, a401, s402, a405, s408, a415, s416, a419, s422;
    wire[31:0] w425, w429, a458, s462, a463, s466, a482, s486, a487, s490, a547, s550, a551, s554, a568, s571, a584, a585, a645, s649, a650, s653, a674, a675, a700, s703, a735, s739, a740, s743, a766, s770, a771, s774, a804, s808, a809, s812, s837, s845, a848, s851, s879, s882, a903, s907, s979, s980, s988, s990, s993, s995, s997, a999, s1001, a1003, s1005, a1007, s1010;
    wire[19:0] w426, s428, w430, s431, a443, a445, s447, a472, a473, s474, a500, a502, s505, a508, a509, s512, a514, a517, a518, a519, s523, a537, a538, a539, s540, s566, a573, a574, a575, a577, a578, a583, a587, a588, a590, a591, s602, a603, a605, a606, s607, a608, s615, s624, s637, a667, a668, a669, a673, a677, a678, a680, a681, s684, a685, a686, a687, s688, a689, s695, a716, a717, s718, a722, a723, s725, a726, a727, a728, s729, a730, s757, s789, a793, s795, a832, a833, a838, a839, a853, a854, s872, a873, a874, a887, s889, a891, a909, s925, a927, a929, a930, s935, a936, a937, s940, a941, a943, a944, a945, s949, s978;
    wire[63:0] s434, a983;
    wire[15:0] s436, s455, s480, s525, s529, s546, s567, s612, s617, s621, s626, s643, s692, s696, s699, s733, s764, s798, s802, s847, s901, s950, s953, s956, s960, s1006;

    assign w20 = {s789, s788};
    assign w35 = {s981, s980, s979, s978};
    always @ (posedge clk)
    r45 <= reset ? 20'h0 : s925;
    always @ (posedge clk)
    r50 <= reset ? 20'h0 : s431;
    always @ (posedge clk)
    r55 <= reset ? 20'h0 : s935;
    always @ (posedge clk)
    r60 <= reset ? 20'h0 : s940;
    always @ (posedge clk)
    r65 <= reset ? 20'h0 : s949;
    always @ (posedge clk)
    r71 <= reset ? 20'hfffff : s624;
    always @ (posedge clk)
    r76 <= reset ? 20'hfffff : s695;
    always @ (posedge clk)
    r81 <= reset ? 20'h0 : s795;
    always @ (posedge clk)
    r86 <= reset ? 20'h0 : s729;
    always @ (posedge clk)
    r92 <= reset ? 6'b0 : s732;
    always @ (posedge clk)
    r98 <= reset ? 32'h0 : s845;
    assign b105 = clk;
    assign b106 = reset;
    ch_queue __module2__(.clk(b105), .reset(b106), .io_enq_valid(b107), .io_enq_data(b110), .io_deq_ready(b122), .io_deq_valid(b116), .io_deq_data(b119));
    assign b107 = a314;
    assign b110 = io_lsu_rd_rsp_data[514:3];
    assign b122 = s506;
    assign b129 = clk;
    assign b130 = reset;
    ch_queue __module3__(.clk(b129), .reset(b130), .io_enq_valid(b131), .io_enq_data(b134), .io_deq_ready(b146), .io_deq_valid(b140), .io_deq_data(b143));
    assign b131 = a317;
    assign b134 = io_lsu_rd_rsp_data[514:3];
    assign b146 = s564;
    assign b153 = clk;
    assign b154 = reset;
    ch_queue_0 __module4__(.clk(b153), .reset(b154), .io_enq_valid(b155), .io_enq_data(b158), .io_deq_ready(b170), .io_deq_data(b167));
    assign b155 = a320;
    assign b158 = io_lsu_rd_rsp_data[514:3];
    assign b170 = s899;
    assign b177 = clk;
    assign b178 = reset;
    ch_queue_0 __module5__(.clk(b177), .reset(b178), .io_enq_valid(b179), .io_enq_data(b182), .io_deq_ready(b194), .io_deq_data(b191), .io_size(b197));
    assign b179 = a323;
    assign b182 = io_lsu_rd_rsp_data[514:3];
    assign b194 = s900;
    assign b201 = clk;
    assign b202 = reset;
    ch_queue __module6__(.clk(b201), .reset(b202), .io_enq_valid(b203), .io_enq_data(b206), .io_deq_ready(b218), .io_deq_valid(b212), .io_deq_data(b215));
    assign b203 = a326;
    assign b206 = io_lsu_rd_rsp_data[514:3];
    assign b218 = s831;
    assign b225 = clk;
    assign b226 = reset;
    ch_queue __module7__(.clk(b225), .reset(b226), .io_enq_valid(b227), .io_enq_data(b230), .io_deq_ready(b242), .io_deq_valid(b236), .io_deq_data(b239));
    assign b227 = a329;
    assign b230 = io_lsu_rd_rsp_data[514:3];
    assign b242 = s666;
    always @ (posedge clk)
    r249 <= reset ? 8'h0 : s352;
    always @ (posedge clk)
    r254 <= reset ? 8'h0 : s366;
    always @ (posedge clk)
    r259 <= reset ? 8'h0 : s380;
    always @ (posedge clk)
    r264 <= reset ? 8'h0 : s394;
    always @ (posedge clk)
    r269 <= reset ? 8'h0 : s408;
    always @ (posedge clk)
    r274 <= reset ? 8'h0 : s422;
    always @ (posedge clk)
    r280 <= reset ? l277 : s498;
    always @ (posedge clk)
    r285 <= reset ? l277 : s507;
    always @ (posedge clk)
    r290 <= reset ? l277 : s665;
    always @ (posedge clk)
    r295 <= reset ? l277 : s830;
    always @ (posedge clk)
    r301 <= reset ? l298 : s434;
    assign w306 = {s1010, s703, s743, s851, s774, s571, s466, s1001, s997, s993, s1005};
    always @ (posedge clk)
    r307 <= reset ? l304 : w306;
    assign a313 = io_lsu_rd_rsp_data[2:0] == 3'b1;
    assign a314 = io_lsu_rd_rsp_valid & a313;
    assign a316 = io_lsu_rd_rsp_data[2:0] == 3'b10;
    assign a317 = io_lsu_rd_rsp_valid & a316;
    assign a319 = io_lsu_rd_rsp_data[2:0] == 3'b11;
    assign a320 = io_lsu_rd_rsp_valid & a319;
    assign a322 = io_lsu_rd_rsp_data[2:0] == 3'b100;
    assign a323 = io_lsu_rd_rsp_valid & a322;
    assign a325 = io_lsu_rd_rsp_data[2:0] == 3'b101;
    assign a326 = io_lsu_rd_rsp_valid & a325;
    assign a328 = io_lsu_rd_rsp_data[2:0] == 3'b110;
    assign a329 = io_lsu_rd_rsp_valid & a328;
    always @ (posedge clk)
    r333 <= reset ? 16'h1 : s1006;
    assign a336 = r333 == 16'h1;
    assign w337 = w20[2:0];
    assign a338 = w337 == 3'b1;
    assign a339 = s792 & io_lsu_rd_req_ready;
    assign a340 = a339 & a338;
    assign a342 = ~s506;
    assign a343 = a340 & a342;
    assign a345 = r249 + 8'h1;
    assign s346 = a343 ? a345 : r249;
    assign a347 = ~a340;
    assign a348 = a347 & s506;
    assign a349 = r249 - 8'h1;
    assign a350 = ~a343;
    assign a351 = a350 & a348;
    assign s352 = a351 ? a349 : s346;
    assign a353 = w337 == 3'b10;
    assign a354 = s792 & io_lsu_rd_req_ready;
    assign a355 = a354 & a353;
    assign a357 = ~s564;
    assign a358 = a355 & a357;
    assign a359 = r254 + 8'h1;
    assign s360 = a358 ? a359 : r254;
    assign a361 = ~a355;
    assign a362 = a361 & s564;
    assign a363 = r254 - 8'h1;
    assign a364 = ~a358;
    assign a365 = a364 & a362;
    assign s366 = a365 ? a363 : s360;
    assign a367 = w337 == 3'b11;
    assign a368 = s792 & io_lsu_rd_req_ready;
    assign a369 = a368 & a367;
    assign a371 = ~s899;
    assign a372 = a369 & a371;
    assign a373 = r259 + 8'h1;
    assign s374 = a372 ? a373 : r259;
    assign a375 = ~a369;
    assign a376 = a375 & s899;
    assign a377 = r259 - 8'h1;
    assign a378 = ~a372;
    assign a379 = a378 & a376;
    assign s380 = a379 ? a377 : s374;
    assign a381 = w337 == 3'b100;
    assign a382 = s792 & io_lsu_rd_req_ready;
    assign a383 = a382 & a381;
    assign a385 = ~s900;
    assign a386 = a383 & a385;
    assign a387 = r264 + 8'h1;
    assign s388 = a386 ? a387 : r264;
    assign a389 = ~a383;
    assign a390 = a389 & s900;
    assign a391 = r264 - 8'h1;
    assign a392 = ~a386;
    assign a393 = a392 & a390;
    assign s394 = a393 ? a391 : s388;
    assign a395 = w337 == 3'b101;
    assign a396 = s792 & io_lsu_rd_req_ready;
    assign a397 = a396 & a395;
    assign a399 = ~s831;
    assign a400 = a397 & a399;
    assign a401 = r269 + 8'h1;
    assign s402 = a400 ? a401 : r269;
    assign a403 = ~a397;
    assign a404 = a403 & s831;
    assign a405 = r269 - 8'h1;
    assign a406 = ~a400;
    assign a407 = a406 & a404;
    assign s408 = a407 ? a405 : s402;
    assign a409 = w337 == 3'b110;
    assign a410 = s792 & io_lsu_rd_req_ready;
    assign a411 = a410 & a409;
    assign a413 = ~s666;
    assign a414 = a411 & a413;
    assign a415 = r274 + 8'h1;
    assign s416 = a414 ? a415 : r274;
    assign a417 = ~a411;
    assign a418 = a417 & s666;
    assign a419 = r274 - 8'h1;
    assign a420 = ~a414;
    assign a421 = a420 & a418;
    assign s422 = a421 ? a419 : s416;
    assign a423 = r333 == 16'h1;
    assign w425 = io_ctrl_start_data[31:0];
    assign w426 = w425[19:0];
    assign a427 = a423 & io_ctrl_start_valid;
    assign s428 = a427 ? w426 : r45;
    assign w429 = io_ctrl_start_data[63:32];
    assign w430 = w429[19:0];
    assign s431 = a427 ? w430 : r50;
    assign a432 = s925 != s431;
    assign a433 = a427 & a432;
    assign s434 = a433 ? io_ctrl_timer : r301;
    assign s436 = a433 ? 16'h2 : r333;
    assign a437 = r333 == 16'h2;
    assign a438 = ~a423;
    assign a439 = a438 & a437;
    assign s441 = a439 ? 3'b1 : 3'b0;
    assign a443 = r45 << 20'h2;
    assign a445 = a443 >> 20'h6;
    assign s447 = a439 ? a445 : 20'h0;
    assign a449 = r249 != 8'h2;
    assign a451 = a439 & a449;
    assign s452 = a451 ? 1'b1 : 1'b0;
    assign a454 = a451 & io_lsu_rd_req_ready;
    assign s455 = a454 ? 16'h4 : s436;
    assign a458 = r307[159:128] + 32'h1;
    assign a459 = ~io_lsu_rd_req_ready;
    assign a460 = a451 & a459;
    assign s462 = a460 ? a458 : r307[159:128];
    assign a463 = r307[159:128] + 32'h1;
    assign a464 = ~a449;
    assign a465 = a439 & a464;
    assign s466 = a465 ? a463 : s462;
    assign a467 = r333 == 16'h4;
    assign a468 = a437 | a423;
    assign a469 = ~a468;
    assign a470 = a469 & a467;
    assign s471 = a470 ? 3'b10 : s441;
    assign a472 = r45 << 20'h2;
    assign a473 = a472 >> 20'h6;
    assign s474 = a470 ? a473 : s447;
    assign a475 = r254 != 8'h2;
    assign a476 = a470 & a475;
    assign s477 = a476 ? 1'b1 : s452;
    assign a479 = a476 & io_lsu_rd_req_ready;
    assign s480 = a479 ? 16'h8 : s455;
    assign a482 = r307[191:160] + 32'h1;
    assign a483 = ~io_lsu_rd_req_ready;
    assign a484 = a476 & a483;
    assign s486 = a484 ? a482 : r307[191:160];
    assign a487 = r307[191:160] + 32'h1;
    assign a488 = ~a475;
    assign a489 = a470 & a488;
    assign s490 = a489 ? a487 : s486;
    assign a491 = r333 == 16'h8;
    assign a492 = b116 & b140;
    assign a493 = a467 | a437;
    assign a494 = a493 | a423;
    assign a495 = ~a494;
    assign a496 = a495 & a491;
    assign a497 = a496 & a492;
    assign s498 = a497 ? b119 : r280;
    assign a500 = r45 & 20'hf;
    assign a502 = a500 << 20'h5;
    assign a503 = s498 >> a502;
    assign s505 = a497 ? a503[19:0] : r55;
    assign s506 = a497 ? 1'b1 : 1'b0;
    assign s507 = a497 ? b143 : r285;
    assign a508 = r45 & 20'hf;
    assign a509 = a508 << 20'h5;
    assign a510 = s507 >> a509;
    assign s512 = a497 ? a510[19:0] : r60;
    assign s513 = a497 ? 1'b1 : 1'b0;
    assign a514 = r45 & 20'hf;
    assign a515 = a514 != 20'hf;
    assign a517 = r45 + 20'h1;
    assign a518 = a517 & 20'hf;
    assign a519 = a518 << 20'h5;
    assign a520 = s507 >> a519;
    assign a522 = a497 & a515;
    assign s523 = a522 ? a520[19:0] : r65;
    assign s525 = a522 ? 16'h40 : s480;
    assign a527 = ~a515;
    assign a528 = a497 & a527;
    assign s529 = a528 ? 16'h10 : s525;
    assign a530 = r333 == 16'h10;
    assign a531 = a491 | a467;
    assign a532 = a531 | a437;
    assign a533 = a532 | a423;
    assign a534 = ~a533;
    assign a535 = a534 & a530;
    assign s536 = a535 ? 3'b10 : s471;
    assign a537 = r45 + 20'h1;
    assign a538 = a537 << 20'h2;
    assign a539 = a538 >> 20'h6;
    assign s540 = a535 ? a539 : s474;
    assign a541 = r254 != 8'h2;
    assign a542 = a535 & a541;
    assign s543 = a542 ? 1'b1 : s477;
    assign a545 = a542 & io_lsu_rd_req_ready;
    assign s546 = a545 ? 16'h20 : s529;
    assign a547 = r307[191:160] + 32'h1;
    assign a548 = ~io_lsu_rd_req_ready;
    assign a549 = a542 & a548;
    assign s550 = a549 ? a547 : s490;
    assign a551 = r307[191:160] + 32'h1;
    assign a552 = ~a541;
    assign a553 = a535 & a552;
    assign s554 = a553 ? a551 : s550;
    assign a555 = r333 == 16'h20;
    assign a557 = a530 | a491;
    assign a558 = a557 | a467;
    assign a559 = a558 | a437;
    assign a560 = a559 | a423;
    assign a561 = ~a560;
    assign a562 = a561 & a555;
    assign a563 = a562 & b140;
    assign s564 = a563 ? 1'b1 : s513;
    assign s566 = a563 ? b143[19:0] : s523;
    assign s567 = a563 ? 16'h40 : s546;
    assign a568 = r307[191:160] + 32'h1;
    assign a569 = ~b140;
    assign a570 = a562 & a569;
    assign s571 = a570 ? a568 : s554;
    assign a572 = r333 == 16'h40;
    assign a573 = r55 >> 20'h5;
    assign a574 = a573 << 20'h2;
    assign a575 = a574 >> 20'h6;
    assign a576 = a575 == r71;
    assign a577 = a573 & 20'hf;
    assign a578 = a577 << 20'h5;
    assign a579 = r290 >> a578;
    assign a583 = r55 & 20'h1f;
    assign a584 = 32'h1 << a583;
    assign a585 = a579[31:0] & a584;
    assign a586 = a585 != 32'h0;
    assign a587 = r55 << 20'h2;
    assign a588 = a587 >> 20'h6;
    assign a589 = a588 == r76;
    assign a590 = r60 << 20'h2;
    assign a591 = a590 >> 20'h6;
    assign a592 = a555 | a530;
    assign a593 = a592 | a491;
    assign a594 = a593 | a467;
    assign a595 = a594 | a437;
    assign a596 = a595 | a423;
    assign a597 = ~a596;
    assign a598 = a597 & a572;
    assign a599 = a598 & a576;
    assign a600 = a599 & a586;
    assign a601 = a600 & a589;
    assign s602 = a601 ? a591 : r81;
    assign a603 = r65 << 20'h2;
    assign a605 = a603 + 20'h3f;
    assign a606 = a605 >> 20'h6;
    assign s607 = a601 ? a606 : r86;
    assign a608 = s729 - s795;
    assign s610 = a601 ? a608[5:0] : r92;
    assign s612 = a601 ? 16'h400 : s567;
    assign a613 = ~a589;
    assign a614 = a600 & a613;
    assign s615 = a614 ? a588 : r76;
    assign s617 = a614 ? 16'h200 : s612;
    assign a619 = ~a586;
    assign a620 = a599 & a619;
    assign s621 = a620 ? 16'h4000 : s617;
    assign a622 = ~a576;
    assign a623 = a598 & a622;
    assign s624 = a623 ? a575 : r71;
    assign s626 = a623 ? 16'h80 : s621;
    assign a627 = r333 == 16'h80;
    assign a628 = a572 | a555;
    assign a629 = a628 | a530;
    assign a630 = a629 | a491;
    assign a631 = a630 | a467;
    assign a632 = a631 | a437;
    assign a633 = a632 | a423;
    assign a634 = ~a633;
    assign a635 = a634 & a627;
    assign s636 = a635 ? 3'b110 : s536;
    assign s637 = a635 ? r71 : s540;
    assign a638 = r274 != 8'h2;
    assign a639 = a635 & a638;
    assign s640 = a639 ? 1'b1 : s543;
    assign a642 = a639 & io_lsu_rd_req_ready;
    assign s643 = a642 ? 16'h100 : s626;
    assign a645 = r307[319:288] + 32'h1;
    assign a646 = ~io_lsu_rd_req_ready;
    assign a647 = a639 & a646;
    assign s649 = a647 ? a645 : r307[319:288];
    assign a650 = r307[319:288] + 32'h1;
    assign a651 = ~a638;
    assign a652 = a635 & a651;
    assign s653 = a652 ? a650 : s649;
    assign a654 = r333 == 16'h100;
    assign a655 = a627 | a572;
    assign a656 = a655 | a555;
    assign a657 = a656 | a530;
    assign a658 = a657 | a491;
    assign a659 = a658 | a467;
    assign a660 = a659 | a437;
    assign a661 = a660 | a423;
    assign a662 = ~a661;
    assign a663 = a662 & a654;
    assign a664 = a663 & b236;
    assign s665 = a664 ? b239 : r290;
    assign s666 = a664 ? 1'b1 : 1'b0;
    assign a667 = r55 >> 20'h5;
    assign a668 = a667 & 20'hf;
    assign a669 = a668 << 20'h5;
    assign a670 = s665 >> a669;
    assign a673 = r55 & 20'h1f;
    assign a674 = 32'h1 << a673;
    assign a675 = a670[31:0] & a674;
    assign a676 = a675 != 32'h0;
    assign a677 = r55 << 20'h2;
    assign a678 = a677 >> 20'h6;
    assign a679 = a678 == r76;
    assign a680 = r60 << 20'h2;
    assign a681 = a680 >> 20'h6;
    assign a682 = a664 & a676;
    assign a683 = a682 & a679;
    assign s684 = a683 ? a681 : s602;
    assign a685 = r65 << 20'h2;
    assign a686 = a685 + 20'h3f;
    assign a687 = a686 >> 20'h6;
    assign s688 = a683 ? a687 : s607;
    assign a689 = s729 - s795;
    assign s691 = a683 ? a689[5:0] : s610;
    assign s692 = a683 ? 16'h400 : s643;
    assign a693 = ~a679;
    assign a694 = a682 & a693;
    assign s695 = a694 ? a678 : s615;
    assign s696 = a694 ? 16'h200 : s692;
    assign a697 = ~a676;
    assign a698 = a664 & a697;
    assign s699 = a698 ? 16'h4000 : s696;
    assign a700 = r307[319:288] + 32'h1;
    assign a701 = ~b236;
    assign a702 = a663 & a701;
    assign s703 = a702 ? a700 : s653;
    assign a704 = r333 == 16'h200;
    assign a705 = a654 | a627;
    assign a706 = a705 | a572;
    assign a707 = a706 | a555;
    assign a708 = a707 | a530;
    assign a709 = a708 | a491;
    assign a710 = a709 | a467;
    assign a711 = a710 | a437;
    assign a712 = a711 | a423;
    assign a713 = ~a712;
    assign a714 = a713 & a704;
    assign s715 = a714 ? 3'b101 : s636;
    assign a716 = r55 << 20'h2;
    assign a717 = a716 >> 20'h6;
    assign s718 = a714 ? a717 : s637;
    assign a719 = r269 != 8'h2;
    assign a720 = a714 & a719;
    assign s721 = a720 ? 1'b1 : s640;
    assign a722 = r60 << 20'h2;
    assign a723 = a722 >> 20'h6;
    assign a724 = a720 & io_lsu_rd_req_ready;
    assign s725 = a724 ? a723 : s684;
    assign a726 = r65 << 20'h2;
    assign a727 = a726 + 20'h3f;
    assign a728 = a727 >> 20'h6;
    assign s729 = a724 ? a728 : s688;
    assign a730 = s729 - s795;
    assign s732 = a724 ? a730[5:0] : s691;
    assign s733 = a724 ? 16'h400 : s699;
    assign a735 = r307[287:256] + 32'h1;
    assign a736 = ~io_lsu_rd_req_ready;
    assign a737 = a720 & a736;
    assign s739 = a737 ? a735 : r307[287:256];
    assign a740 = r307[287:256] + 32'h1;
    assign a741 = ~a719;
    assign a742 = a714 & a741;
    assign s743 = a742 ? a740 : s739;
    assign a744 = r333 == 16'h400;
    assign a745 = a704 | a654;
    assign a746 = a745 | a627;
    assign a747 = a746 | a572;
    assign a748 = a747 | a555;
    assign a749 = a748 | a530;
    assign a750 = a749 | a491;
    assign a751 = a750 | a467;
    assign a752 = a751 | a437;
    assign a753 = a752 | a423;
    assign a754 = ~a753;
    assign a755 = a754 & a744;
    assign s756 = a755 ? 3'b11 : s715;
    assign s757 = a755 ? r81 : s718;
    assign a759 = r259 != 8'h20;
    assign a760 = a755 & a759;
    assign s761 = a760 ? 1'b1 : s721;
    assign a763 = a760 & io_lsu_rd_req_ready;
    assign s764 = a763 ? 16'h800 : s733;
    assign a766 = r307[223:192] + 32'h1;
    assign a767 = ~io_lsu_rd_req_ready;
    assign a768 = a760 & a767;
    assign s770 = a768 ? a766 : r307[223:192];
    assign a771 = r307[223:192] + 32'h1;
    assign a772 = ~a759;
    assign a773 = a755 & a772;
    assign s774 = a773 ? a771 : s770;
    assign a775 = r333 == 16'h800;
    assign a776 = a744 | a704;
    assign a777 = a776 | a654;
    assign a778 = a777 | a627;
    assign a779 = a778 | a572;
    assign a780 = a779 | a555;
    assign a781 = a780 | a530;
    assign a782 = a781 | a491;
    assign a783 = a782 | a467;
    assign a784 = a783 | a437;
    assign a785 = a784 | a423;
    assign a786 = ~a785;
    assign a787 = a786 & a775;
    assign s788 = a787 ? 3'b100 : s756;
    assign s789 = a787 ? r81 : s757;
    assign a790 = r264 != 8'h20;
    assign a791 = a787 & a790;
    assign s792 = a791 ? 1'b1 : s761;
    assign a793 = r81 + 20'h1;
    assign a794 = a791 & io_lsu_rd_req_ready;
    assign s795 = a794 ? a793 : s725;
    assign a796 = s795 != r86;
    assign a797 = a794 & a796;
    assign s798 = a797 ? 16'h400 : s764;
    assign a800 = ~a796;
    assign a801 = a794 & a800;
    assign s802 = a801 ? 16'h1000 : s798;
    assign a804 = r307[255:224] + 32'h1;
    assign a805 = ~io_lsu_rd_req_ready;
    assign a806 = a791 & a805;
    assign s808 = a806 ? a804 : r307[255:224];
    assign a809 = r307[255:224] + 32'h1;
    assign a810 = ~a790;
    assign a811 = a787 & a810;
    assign s812 = a811 ? a809 : s808;
    assign a813 = r333 == 16'h1000;
    assign a814 = b197 == r92;
    assign a815 = a775 | a744;
    assign a816 = a815 | a704;
    assign a817 = a816 | a654;
    assign a818 = a817 | a627;
    assign a819 = a818 | a572;
    assign a820 = a819 | a555;
    assign a821 = a820 | a530;
    assign a822 = a821 | a491;
    assign a823 = a822 | a467;
    assign a824 = a823 | a437;
    assign a825 = a824 | a423;
    assign a826 = ~a825;
    assign a827 = a826 & a813;
    assign a828 = a827 & a814;
    assign a829 = a828 & b212;
    assign s830 = a829 ? b215 : r295;
    assign s831 = a829 ? 1'b1 : 1'b0;
    assign a832 = r55 & 20'hf;
    assign a833 = a832 << 20'h5;
    assign a834 = s830 >> a833;
    assign s837 = a829 ? a834[31:0] : r98;
    assign a838 = r55 & 20'hf;
    assign a839 = a838 << 20'h5;
    assign a840 = r295 >> a839;
    assign a843 = ~b212;
    assign a844 = a828 & a843;
    assign s845 = a844 ? a840[31:0] : s837;
    assign s847 = a828 ? 16'h2000 : s802;
    assign a848 = r307[255:224] + 32'h1;
    assign a849 = ~a814;
    assign a850 = a827 & a849;
    assign s851 = a850 ? a848 : s812;
    assign a852 = r333 == 16'h2000;
    assign a853 = r60 & 20'hf;
    assign a854 = a853 << 20'h5;
    assign a855 = b167 >> a854;
    assign a857 = a813 | a775;
    assign a858 = a857 | a744;
    assign a859 = a858 | a704;
    assign a860 = a859 | a654;
    assign a861 = a860 | a627;
    assign a862 = a861 | a572;
    assign a863 = a862 | a555;
    assign a864 = a863 | a530;
    assign a865 = a864 | a491;
    assign a866 = a865 | a467;
    assign a867 = a866 | a437;
    assign a868 = a867 | a423;
    assign a869 = ~a868;
    assign a870 = a869 & a852;
    assign s872 = a870 ? a855[19:0] : 20'h0;
    assign a873 = r60 & 20'hf;
    assign a874 = a873 << 20'h5;
    assign a875 = b191 >> a874;
    assign s879 = a870 ? a875[31:0] : 32'h0;
    assign s882 = a870 ? r98 : 32'h0;
    assign s885 = a870 ? 1'b0 : 1'b0;
    assign s886 = a870 ? 1'b1 : 1'b0;
    assign a887 = r60 + 20'h1;
    assign a888 = a870 & io_pe_ready;
    assign s889 = a888 ? a887 : s512;
    assign a890 = s940 != r65;
    assign a891 = r60 & 20'hf;
    assign a892 = a891 == 20'hf;
    assign a893 = a888 & a890;
    assign a894 = a893 & a892;
    assign s895 = a894 ? 1'b1 : 1'b0;
    assign s896 = a894 ? 1'b1 : 1'b0;
    assign a897 = ~a890;
    assign a898 = a888 & a897;
    assign s899 = a898 ? 1'b1 : s895;
    assign s900 = a898 ? 1'b1 : s896;
    assign s901 = a898 ? 16'h4000 : s847;
    assign a903 = r307[351:320] + 32'h1;
    assign a904 = ~io_pe_ready;
    assign a905 = a870 & a904;
    assign s907 = a905 ? a903 : r307[351:320];
    assign a908 = r333 == 16'h4000;
    assign a909 = r45 + 20'h1;
    assign a910 = a852 | a813;
    assign a911 = a910 | a775;
    assign a912 = a911 | a744;
    assign a913 = a912 | a704;
    assign a914 = a913 | a654;
    assign a915 = a914 | a627;
    assign a916 = a915 | a572;
    assign a917 = a916 | a555;
    assign a918 = a917 | a530;
    assign a919 = a918 | a491;
    assign a920 = a919 | a467;
    assign a921 = a920 | a437;
    assign a922 = a921 | a423;
    assign a923 = ~a922;
    assign a924 = a923 & a908;
    assign s925 = a924 ? a909 : s428;
    assign a926 = s925 != r50;
    assign a927 = r45 & 20'hf;
    assign a928 = a927 != 20'hf;
    assign a929 = s925 & 20'hf;
    assign a930 = a929 << 20'h5;
    assign a931 = r280 >> a930;
    assign a933 = a924 & a926;
    assign a934 = a933 & a928;
    assign s935 = a934 ? a931[19:0] : s505;
    assign a936 = s925 & 20'hf;
    assign a937 = a936 << 20'h5;
    assign a938 = r285 >> a937;
    assign s940 = a934 ? a938[19:0] : s889;
    assign a941 = s925 & 20'hf;
    assign a942 = a941 != 20'hf;
    assign a943 = s925 + 20'h1;
    assign a944 = a943 & 20'hf;
    assign a945 = a944 << 20'h5;
    assign a946 = r285 >> a945;
    assign a948 = a934 & a942;
    assign s949 = a948 ? a946[19:0] : s566;
    assign s950 = a948 ? 16'h40 : s901;
    assign a951 = ~a942;
    assign a952 = a934 & a951;
    assign s953 = a952 ? 16'h10 : s950;
    assign a954 = ~a928;
    assign a955 = a933 & a954;
    assign s956 = a955 ? 16'h2 : s953;
    assign a958 = ~a926;
    assign a959 = a924 & a958;
    assign s960 = a959 ? 16'h8000 : s956;
    assign a961 = r333 == 16'h8000;
    assign a962 = a908 | a852;
    assign a963 = a962 | a813;
    assign a964 = a963 | a775;
    assign a965 = a964 | a744;
    assign a966 = a965 | a704;
    assign a967 = a966 | a654;
    assign a968 = a967 | a627;
    assign a969 = a968 | a572;
    assign a970 = a969 | a555;
    assign a971 = a970 | a530;
    assign a972 = a971 | a491;
    assign a973 = a972 | a467;
    assign a974 = a973 | a437;
    assign a975 = a974 | a423;
    assign a976 = ~a975;
    assign a977 = a976 & a961;
    assign s978 = a977 ? 20'h0 : s872;
    assign s979 = a977 ? 32'h0 : s879;
    assign s980 = a977 ? 32'h0 : s882;
    assign s981 = a977 ? 1'b1 : s885;
    assign s982 = a977 ? 1'b1 : s886;
    assign a983 = io_ctrl_timer - r301;
    assign a987 = r307[63:32] < a983[31:0];
    assign s988 = a987 ? r307[63:32] : a983[31:0];
    assign a989 = r307[63:32] == 32'h0;
    assign s990 = a989 ? a983[31:0] : s988;
    assign a991 = a977 & io_pe_ready;
    assign s993 = a991 ? s990 : r307[63:32];
    assign a994 = r307[63:32] > a983[31:0];
    assign s995 = a994 ? r307[63:32] : a983[31:0];
    assign s997 = a991 ? s995 : r307[95:64];
    assign a999 = r307[127:96] + a983[31:0];
    assign s1001 = a991 ? a999 : r307[127:96];
    assign a1003 = r307[31:0] + 32'h1;
    assign s1005 = a991 ? a1003 : r307[31:0];
    assign s1006 = a991 ? 16'h1 : s960;
    assign a1007 = r307[351:320] + 32'h1;
    assign a1008 = ~io_pe_ready;
    assign a1009 = a977 & a1008;
    assign s1010 = a1009 ? a1007 : s907;

    assign io_ctrl_start_ready = a336;
    assign io_ctrl_stats = r307;
    assign io_lsu_rd_req_valid = s792;
    assign io_lsu_rd_req_data = w20;
    assign io_pe_valid = s982;
    assign io_pe_data = w35;

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
    wire[20:0] s23, s35, s43;
    reg[20:0] r27, r36, r44;
    wire s30, s39, s47;
    reg r32, r40, r48;

    assign s23 = io_deq_ready ? io_enq_data : r27;
    always @ (posedge clk)
    r27 <= reset ? 21'b0 : s23;
    assign s30 = io_deq_ready ? io_enq_valid : r32;
    always @ (posedge clk)
    r32 <= reset ? 1'b0 : s30;
    assign s35 = io_deq_ready ? r27 : r36;
    always @ (posedge clk)
    r36 <= reset ? 21'b0 : s35;
    assign s39 = io_deq_ready ? r32 : r40;
    always @ (posedge clk)
    r40 <= reset ? 1'b0 : s39;
    assign s43 = io_deq_ready ? r36 : r44;
    always @ (posedge clk)
    r44 <= reset ? 21'b0 : s43;
    assign s47 = io_deq_ready ? r40 : r48;
    always @ (posedge clk)
    r48 <= reset ? 1'b0 : s47;

    assign io_enq_ready = io_deq_ready;
    assign io_deq_valid = r48;
    assign io_deq_data = r44;

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
    wire[63:0] l97 = 64'h0;
    wire[479:0] l333 = 480'h0;
    wire[511:0] l355 = 512'h0;
    wire[533:0] w14;
    wire b29, b31, b32, b38, b41, b47, b51, b52, b53, b62, b68, a123, a124, a125, a126, a128, a129, a130, a131, a132, a133, a136, w139, a140, w147, a148, a154, a155, a156, a157, a160, a161, a163, a164, w166, a167, a168, a170, a171, a172, a173, a177, a181, a182, a185, a186, a192, a193, a194, s195, a201, a203, a204, a209, a245, a246, s258, a260, a264, a265, a268, a303, a304, a305, s313, a315, a318, a319, a321, a323, a324, a325, a326, s342, a343, a347, a348;
    wire[20:0] w34, b35, b44, w55, b56, b65;
    reg[31:0] m69[0:31];
    reg[31:0] r73, r78, r83, r88;
    reg[19:0] r94;
    wire[63:0] w99;
    reg[63:0] r100;
    wire[31:0] s111, a121, a122, a127, a135, s137, a145, a152, a158, s159, a162, s165, a174, a175, a176, s178, a179, a180, s183, a184, s187, s199, a200, s202, s205, s206, a263, s267, a317, s320, a346, s350;
    reg[3:0] r115;
    wire[19:0] w138, w146, a150, a190, s191, a196, a250, a252, s254, a307, a308, a310, s311, a329, a330, a331, s332, a336, a338, a339;
    wire[4:0] w151, s198;
    wire[3:0] s208, s261, s316, s344;
    wire[511:0] w211, s256, w270, s312, w335, a340, s341;
    wire[1:0] s248, s306, s327;

    assign w14 = {s341, s332, s327};
    assign b29 = clk;
    assign b31 = reset;
    ch_pipe __module16__(.clk(b29), .reset(b31), .io_enq_valid(b32), .io_enq_data(b35), .io_deq_ready(b47), .io_enq_ready(b38), .io_deq_valid(b41), .io_deq_data(b44));
    assign b32 = a140;
    assign w34 = {w139, w138};
    assign b35 = w34;
    assign b47 = a130;
    assign b51 = clk;
    assign b52 = reset;
    ch_pipe __module17__(.clk(b51), .reset(b52), .io_enq_valid(b53), .io_enq_data(b56), .io_deq_ready(b68), .io_deq_valid(b62), .io_deq_data(b65));
    assign b53 = a148;
    assign w55 = {w147, w146};
    assign b56 = w55;
    assign b68 = a125;
    always @(posedge clk)
    m69[s198] = s111;
    always @ (posedge clk)
    r73 <= reset ? 32'h0 : s206;
    always @ (posedge clk)
    r78 <= reset ? 32'h0 : s205;
    always @ (posedge clk)
    r83 <= reset ? 32'h0 : s187;
    always @ (posedge clk)
    r88 <= reset ? 32'h0 : s165;
    always @ (posedge clk)
    r94 <= reset ? 20'h0 : s191;
    assign w99 = {s350, s320};
    always @ (posedge clk)
    r100 <= reset ? l97 : w99;
    assign s111 = s195 ? s199 : m69[s198];
    always @ (posedge clk)
    r115 <= reset ? 4'h1 : s344;
    assign a121 = 32'h1 << w151;
    assign a122 = 32'h1 << s198;
    assign a123 = ~b62;
    assign a124 = 4'h1 == r115;
    assign a125 = a124 | a123;
    assign a126 = ~b41;
    assign a127 = r83 & a121;
    assign a128 = 32'h0 == a127;
    assign a129 = a125 & a128;
    assign a130 = a129 | a126;
    assign a131 = 32'h0 == r88;
    assign a132 = r115 == 4'h1;
    assign a133 = a132 & a131;
    assign a135 = r73 & a121;
    assign a136 = 32'h0 != a135;
    assign s137 = a136 ? m69[w151] : 32'h0;
    assign w138 = io_req_data[19:0];
    assign w139 = io_req_data[84];
    assign a140 = io_req_valid & b38;
    fp_mult __fp_mult_145__(.clock(clk), .clk_en(a130), .dataa(io_req_data[51:20]), .datab(io_req_data[83:52]), .result(a145));
    assign w146 = b44[19:0];
    assign w147 = b44[20];
    assign a148 = b41 & a130;
    assign a150 = w146 & 20'h1f;
    assign w151 = a150[4:0];
    fp_add __fp_add_sub_152__(.clock(clk), .clk_en(a125), .dataa(a145), .datab(s137), .result(a152));
    assign a154 = 4'h1 == r115;
    assign a155 = a154 & b62;
    assign a156 = ~a155;
    assign a157 = a140 & a156;
    assign a158 = r88 + 32'h1;
    assign s159 = a157 ? a158 : r88;
    assign a160 = ~a140;
    assign a161 = a160 & a155;
    assign a162 = r88 - 32'h1;
    assign a163 = ~a157;
    assign a164 = a163 & a161;
    assign s165 = a164 ? a162 : s159;
    assign w166 = w55[20];
    assign a167 = ~w166;
    assign a168 = a148 & a167;
    assign a170 = ~b65[20];
    assign a171 = a155 & a170;
    assign a172 = a121 != a122;
    assign a173 = a168 & a172;
    assign a174 = ~a122;
    assign a175 = r83 & a174;
    assign a176 = a175 | a121;
    assign a177 = a171 & a173;
    assign s178 = a177 ? a176 : r83;
    assign a179 = ~a122;
    assign a180 = r83 & a179;
    assign a181 = ~a173;
    assign a182 = a171 & a181;
    assign s183 = a182 ? a180 : s178;
    assign a184 = r83 | a121;
    assign a185 = ~a171;
    assign a186 = a185 & a168;
    assign s187 = a186 ? a184 : s183;
    assign a190 = b65[19:0] & 20'hfffe0;
    assign s191 = a171 ? a190 : r94;
    assign a192 = r115 == 4'h1;
    assign a193 = ~b65[20];
    assign a194 = b62 & a193;
    assign s195 = a192 ? a194 : 1'b0;
    assign a196 = b65[19:0] & 20'h1f;
    assign s198 = a192 ? a196[4:0] : 5'b0;
    assign s199 = a192 ? a152 : 32'h0;
    assign a200 = r73 | a122;
    assign a201 = a192 & s195;
    assign s202 = a201 ? a200 : r73;
    assign a203 = b62 & b65[20];
    assign a204 = a192 & a203;
    assign s205 = a204 ? r73 : r78;
    assign s206 = a204 ? 32'h0 : s202;
    assign s208 = a204 ? 4'h2 : r115;
    assign a209 = r115 == 4'h2;
    assign w211 = {m69[5'b1111], m69[5'b1110], m69[5'b1101], m69[5'b1100], m69[5'b1011], m69[5'b1010], m69[5'b1001], m69[5'b1000], m69[5'b111], m69[5'b110], m69[5'b101], m69[5'b100], m69[5'b11], m69[5'b10], m69[5'b1], m69[5'b0]};
    assign a245 = ~a192;
    assign a246 = a245 & a209;
    assign s248 = a246 ? 2'b0 : 2'b0;
    assign a250 = r94 << 20'h2;
    assign a252 = a250 >> 20'h6;
    assign s254 = a246 ? a252 : 20'h0;
    assign s256 = a246 ? w211 : l355;
    assign s258 = a246 ? 1'b1 : 1'b0;
    assign a260 = a246 & io_lsu_wr_req_ready;
    assign s261 = a260 ? 4'h4 : s208;
    assign a263 = r100[31:0] + 32'h1;
    assign a264 = ~io_lsu_wr_req_ready;
    assign a265 = a246 & a264;
    assign s267 = a265 ? a263 : r100[31:0];
    assign a268 = r115 == 4'h4;
    assign w270 = {m69[5'b11111], m69[5'b11110], m69[5'b11101], m69[5'b11100], m69[5'b11011], m69[5'b11010], m69[5'b11001], m69[5'b11000], m69[5'b10111], m69[5'b10110], m69[5'b10101], m69[5'b10100], m69[5'b10011], m69[5'b10010], m69[5'b10001], m69[5'b10000]};
    assign a303 = a209 | a192;
    assign a304 = ~a303;
    assign a305 = a304 & a268;
    assign s306 = a305 ? 2'b0 : s248;
    assign a307 = r94 << 20'h2;
    assign a308 = a307 >> 20'h6;
    assign a310 = a308 + 20'h1;
    assign s311 = a305 ? a310 : s254;
    assign s312 = a305 ? w270 : s256;
    assign s313 = a305 ? 1'b1 : s258;
    assign a315 = a305 & io_lsu_wr_req_ready;
    assign s316 = a315 ? 4'h8 : s261;
    assign a317 = r100[31:0] + 32'h1;
    assign a318 = ~io_lsu_wr_req_ready;
    assign a319 = a305 & a318;
    assign s320 = a319 ? a317 : s267;
    assign a321 = r115 == 4'h8;
    assign a323 = a268 | a209;
    assign a324 = a323 | a192;
    assign a325 = ~a324;
    assign a326 = a325 & a321;
    assign s327 = a326 ? 2'b1 : s306;
    assign a329 = r94 >> 20'h5;
    assign a330 = a329 << 20'h2;
    assign a331 = a330 >> 20'h6;
    assign s332 = a326 ? a331 : s311;
    assign w335 = {l333, r78};
    assign a336 = r94 >> 20'h5;
    assign a338 = a336 & 20'hf;
    assign a339 = a338 << 20'h5;
    assign a340 = w335 << a339;
    assign s341 = a326 ? a340 : s312;
    assign s342 = a326 ? 1'b1 : s313;
    assign a343 = a326 & io_lsu_wr_req_ready;
    assign s344 = a343 ? 4'h1 : s316;
    assign a346 = r100[63:32] + 32'h1;
    assign a347 = ~io_lsu_wr_req_ready;
    assign a348 = a326 & a347;
    assign s350 = a348 ? a346 : r100[63:32];

    assign io_req_ready = b38;
    assign io_lsu_wr_req_valid = s342;
    assign io_lsu_wr_req_data = w14;
    assign io_stats = r100;
    assign io_is_idle = a133;

endmodule


module ch_hxbar(
    input wire[2:0] io_sel,
    input wire[71:0] io_in,
    output wire[23:0] io_out
);
    wire a19, a21, a23;
    wire[23:0] s20, s22, s24;

    assign a19 = io_sel == 3'b100;
    assign s20 = a19 ? io_in[71:48] : 24'h0;
    assign a21 = io_sel == 3'b10;
    assign s22 = a21 ? io_in[47:24] : s20;
    assign a23 = io_sel == 3'b1;
    assign s24 = a23 ? io_in[23:0] : s22;

    assign io_out = s24;

endmodule

module ch_rrArbiter(
    input wire clk,
    input wire reset,
    input wire[2:0] io_in,
    output wire[2:0] io_grant
);
    reg r17, r22, r37;
    wire a56, a59, a64, a65, a66, w69, a70, w71, a72, a73, w74, a75, w76, a77, a78, a80, a81, a82, a83, a84, a85, w86, a87, w88, a89, a90, a91, a93, a94, a95, a96, a97, a98;
    wire[2:0] w58, w61, w63, w68;

    always @ (posedge clk)
    r17 <= reset ? 1'b0 : a73;
    always @ (posedge clk)
    r22 <= reset ? 1'b0 : a78;
    always @ (posedge clk)
    r37 <= reset ? 1'b0 : a90;
    assign a56 = r17 & io_in[0];
    assign w58 = {a95, 1'b0, a56};
    assign a59 = r22 & io_in[0];
    assign w61 = {1'b0, a80, a59};
    assign w63 = {a93, a82, 1'b0};
    assign a64 = |w63;
    assign a65 = ~a64;
    assign a66 = io_in[0] & a65;
    assign w68 = {a98, a85, a66};
    assign w69 = w68[0];
    assign a70 = ~w69;
    assign w71 = w68[1];
    assign a72 = r17 | w71;
    assign a73 = a72 & a70;
    assign w74 = w68[0];
    assign a75 = ~w74;
    assign w76 = w68[2];
    assign a77 = r22 | w76;
    assign a78 = a77 & a75;
    assign a80 = r37 & io_in[1];
    assign a81 = ~r17;
    assign a82 = a81 & io_in[1];
    assign a83 = |w58;
    assign a84 = ~a83;
    assign a85 = io_in[1] & a84;
    assign w86 = w68[1];
    assign a87 = ~w86;
    assign w88 = w68[2];
    assign a89 = r37 | w88;
    assign a90 = a89 & a87;
    assign a91 = ~r22;
    assign a93 = a91 & io_in[2];
    assign a94 = ~r37;
    assign a95 = a94 & io_in[2];
    assign a96 = |w61;
    assign a97 = ~a96;
    assign a98 = io_in[2] & a97;

    assign io_grant = w68;

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
    wire[2:0] b43, w51, b57, b60;
    wire[71:0] w45, b46;
    wire[23:0] b49;
    wire b54, b56, a76, a77, a79, a80, a82, a83;

    ch_hxbar __module23__(.io_sel(b43), .io_in(b46), .io_out(b49));
    assign b43 = b60;
    assign w45 = {io_in_2_data, io_in_2_valid, io_in_1_data, io_in_1_valid, io_in_0_data, io_in_0_valid};
    assign b46 = w45;
    assign w51 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
    assign b54 = clk;
    assign b56 = reset;
    ch_rrArbiter __module24__(.clk(b54), .reset(b56), .io_in(b57), .io_grant(b60));
    assign b57 = w51;
    assign a76 = b60 == 3'b1;
    assign a77 = io_out_ready & a76;
    assign a79 = b60 == 3'b10;
    assign a80 = io_out_ready & a79;
    assign a82 = b60 == 3'b100;
    assign a83 = io_out_ready & a82;

    assign io_in_0_ready = a77;
    assign io_in_1_ready = a80;
    assign io_in_2_ready = a83;
    assign io_out_valid = b49[0];
    assign io_out_data = b49[23:1];
    assign io_out_grant = b60;

endmodule

module ch_hxbar_0(
    input wire[2:0] io_sel,
    input wire[1604:0] io_in,
    output wire[534:0] io_out
);
    wire[534:0] l18 = 535'b0;
    wire a19, a21, a23;
    wire[534:0] s20, s22, s24;

    assign a19 = io_sel == 3'b100;
    assign s20 = a19 ? io_in[1604:1070] : l18;
    assign a21 = io_sel == 3'b10;
    assign s22 = a21 ? io_in[1069:535] : s20;
    assign a23 = io_sel == 3'b1;
    assign s24 = a23 ? io_in[534:0] : s22;

    assign io_out = s24;

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
    wire[2:0] b43, w51, b57, b60;
    wire[1604:0] w45, b46;
    wire[534:0] b49;
    wire b54, b56, a76, a77, a79, a80, a82, a83;

    ch_hxbar_0 __module26__(.io_sel(b43), .io_in(b46), .io_out(b49));
    assign b43 = b60;
    assign w45 = {io_in_2_data, io_in_2_valid, io_in_1_data, io_in_1_valid, io_in_0_data, io_in_0_valid};
    assign b46 = w45;
    assign w51 = {io_in_2_valid, io_in_1_valid, io_in_0_valid};
    assign b54 = clk;
    assign b56 = reset;
    ch_rrArbiter __module27__(.clk(b54), .reset(b56), .io_in(b57), .io_grant(b60));
    assign b57 = w51;
    assign a76 = b60 == 3'b1;
    assign a77 = io_out_ready & a76;
    assign a79 = b60 == 3'b10;
    assign a80 = io_out_ready & a79;
    assign a82 = b60 == 3'b100;
    assign a83 = io_out_ready & a82;

    assign io_in_0_ready = a77;
    assign io_in_1_ready = a80;
    assign io_in_2_ready = a83;
    assign io_out_valid = b49[0];
    assign io_out_data = b49[534:1];
    assign io_out_grant = b60;

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
    wire[533:0] l65 = 534'b0;
    wire[511:0] l273 = 512'h0;
    reg[21:0] m1[0:1];
    reg[511:0] m3[0:1];
    reg r8, r19, r95, r96, r97, r98, r102;
    reg[19:0] r14;
    wire[533:0] w35, s129;
    wire[511:0] s51, a119, s120, a157, s158, s181, s236, s253;
    wire[21:0] s58, w124, s126, w163, s165, w183, s184, w204, s206, w220, s222;
    reg[4:0] r62;
    reg[533:0] r68;
    wire[1:0] w76, w85, a86, w91, w109, a110, w121, a122, w149, w159, w160, a161, w199, w209, a210, a216, w217, a218, s231, w247, s250;
    wire a77, a80, a81, s82, a87, s88, a92, s93, a99, a105, a106, s107, a111, a113, a114, a115, s116, s117, a127, a128, a132, a133, a134, s135, a138, a141, a142, a143, s144, a148, a150, a151, a152, s153, s154, s155, s167, a168, a169, s170, a173, a174, a176, a177, s178, s179, s180, s186, a187, a188, s189, a191, a192, a194, a195, a196, a197, s198, a200, a201, s202, a211, a212, a213, a214, s215, a224, a225, a226, a227, a228, s229, s237, a238, a240, a241, a242, a243, a244, a245, s246, a248, a249, s254, a255, a256, s257, a258, a259, a261, a262, a263, s264, a265, a266;
    wire[19:0] w79, w125, w146, w147, w164, s166, s185, w205, w221, w232, s234, w251, s252;
    wire[4:0] s131, s137, s172, s175, s190, s193, s208, s223, s239, s260, s267;

    always @(posedge clk)
    m1[s246] = s58;
    always @(posedge clk)
    m3[s246] = s51;
    always @ (posedge clk)
    r8 <= reset ? 1'b0 : s186;
    always @ (posedge clk)
    r14 <= reset ? 20'h0 : s185;
    always @ (posedge clk)
    r19 <= reset ? 1'b0 : s264;
    assign w35 = {s253, s252, s250};
    assign s51 = s178 ? s181 : m3[s246];
    assign s58 = s215 ? s222 : m1[s246];
    always @ (posedge clk)
    r62 <= reset ? 5'b1 : s267;
    always @ (posedge clk)
    r68 <= reset ? l65 : s129;
    assign w76 = m1[1'b1][1:0];
    assign a77 = w76 != 2'b0;
    assign w79 = m1[1'b1][21:2];
    assign a80 = w79 == io_enq_data[21:2];
    assign a81 = a80 & a77;
    assign s82 = a81 ? 1'b1 : 1'b0;
    assign w85 = m1[1'b1][1:0];
    assign a86 = w85 & io_enq_data[1:0];
    assign a87 = a86 != 2'b0;
    assign s88 = a87 ? 1'b1 : 1'b0;
    assign w91 = m1[1'b0][1:0];
    assign a92 = w91 == 2'b0;
    assign s93 = a92 ? 1'b0 : 1'b1;
    always @ (posedge clk)
    r95 <= reset ? 1'b0 : s82;
    always @ (posedge clk)
    r96 <= reset ? 1'b0 : s88;
    always @ (posedge clk)
    r97 <= reset ? 1'b0 : s93;
    always @ (posedge clk)
    r98 <= reset ? 1'b0 : io_enq_valid;
    assign a99 = r62 == 5'b1;
    always @ (posedge clk)
    r102 <= reset ? 1'b0 : s189;
    assign a105 = r62 == 5'b1;
    assign a106 = a105 & io_enq_valid;
    assign s107 = a106 ? r8 : 1'b0;
    assign w109 = m1[s246][1:0];
    assign a110 = w109 & io_enq_data[1:0];
    assign a111 = a110 != 2'b0;
    assign a113 = io_enq_data[21:2] == r14;
    assign a114 = a113 & a111;
    assign a115 = a106 & a114;
    assign s116 = a115 ? 1'b1 : 1'b0;
    assign s117 = a115 ? 1'b1 : 1'b0;
    assign a119 = m3[s246] | io_enq_data[533:22];
    assign s120 = a115 ? a119 : l273;
    assign w121 = m1[s246][1:0];
    assign a122 = w121 | io_enq_data[1:0];
    assign w124 = {w125, a122};
    assign w125 = m1[s246][21:2];
    assign s126 = a115 ? w124 : 22'b0;
    assign a127 = ~a114;
    assign a128 = a106 & a127;
    assign s129 = a128 ? io_enq_data : r68;
    assign s131 = a128 ? 5'b10 : r62;
    assign a132 = ~io_enq_valid;
    assign a133 = a105 & a132;
    assign a134 = a133 & io_flush;
    assign s135 = a134 ? 1'b0 : r19;
    assign s137 = a134 ? 5'b10000 : s131;
    assign a138 = r62 == 5'b10;
    assign a141 = ~a105;
    assign a142 = a141 & a138;
    assign a143 = a142 & r98;
    assign s144 = a143 ? r95 : 1'b0;
    assign w146 = r68[21:2];
    assign w147 = m1[s144][21:2];
    assign a148 = w147 == w146;
    assign w149 = m1[s144][1:0];
    assign a150 = w149 != 2'b0;
    assign a151 = a150 & a148;
    assign a152 = a143 & a151;
    assign s153 = a152 ? 1'b1 : s116;
    assign s154 = a152 ? 1'b1 : s117;
    assign s155 = a152 ? r95 : s107;
    assign a157 = m3[s246] | r68[533:22];
    assign s158 = a152 ? a157 : s120;
    assign w159 = r68[1:0];
    assign w160 = m1[s246][1:0];
    assign a161 = w160 | w159;
    assign w163 = {w164, a161};
    assign w164 = m1[s246][21:2];
    assign s165 = a152 ? w163 : s126;
    assign s166 = a152 ? w146 : r14;
    assign s167 = a152 ? r95 : r8;
    assign a168 = r95 != r96;
    assign a169 = a152 & a168;
    assign s170 = a169 ? r96 : r102;
    assign s172 = a169 ? 5'b100 : s137;
    assign a173 = ~a168;
    assign a174 = a152 & a173;
    assign s175 = a174 ? 5'b1 : s172;
    assign a176 = ~a151;
    assign a177 = a143 & a176;
    assign s178 = a177 ? 1'b1 : s153;
    assign s179 = a177 ? 1'b1 : s154;
    assign s180 = a177 ? r97 : s155;
    assign s181 = a177 ? r68[533:22] : s158;
    assign w183 = {w146, w159};
    assign s184 = a177 ? w183 : s165;
    assign s185 = a177 ? w146 : s166;
    assign s186 = a177 ? r97 : s167;
    assign a187 = r97 != r96;
    assign a188 = a177 & a187;
    assign s189 = a188 ? r96 : s170;
    assign s190 = a188 ? 5'b100 : s175;
    assign a191 = ~a187;
    assign a192 = a177 & a191;
    assign s193 = a192 ? 5'b1 : s190;
    assign a194 = r62 == 5'b100;
    assign a195 = a138 | a105;
    assign a196 = ~a195;
    assign a197 = a196 & a194;
    assign s198 = a197 ? r102 : s180;
    assign w199 = m1[s246][1:0];
    assign a200 = w199 == w159;
    assign a201 = a197 & a200;
    assign s202 = a201 ? 1'b1 : s179;
    assign w204 = {w205, 2'b0};
    assign w205 = m1[s246][21:2];
    assign s206 = a201 ? w204 : s184;
    assign s208 = a201 ? 5'b1000 : s193;
    assign w209 = m1[s246][1:0];
    assign a210 = w209 & w159;
    assign a211 = a210 != 2'b0;
    assign a212 = ~a200;
    assign a213 = a197 & a212;
    assign a214 = a213 & a211;
    assign s215 = a214 ? 1'b1 : s202;
    assign a216 = ~w159;
    assign w217 = m1[s246][1:0];
    assign a218 = w217 & a216;
    assign w220 = {w221, a218};
    assign w221 = m1[s246][21:2];
    assign s222 = a214 ? w220 : s206;
    assign s223 = a213 ? 5'b1 : s208;
    assign a224 = r62 == 5'b1000;
    assign a225 = a194 | a138;
    assign a226 = a225 | a105;
    assign a227 = ~a226;
    assign a228 = a227 & a224;
    assign s229 = a228 ? r102 : s198;
    assign s231 = a228 ? w159 : 2'b0;
    assign w232 = m1[s246][21:2];
    assign s234 = a228 ? w232 : 20'h0;
    assign s236 = a228 ? m3[s246] : l273;
    assign s237 = a228 ? 1'b1 : 1'b0;
    assign a238 = a228 & io_evict_ready;
    assign s239 = a238 ? 5'b1 : s223;
    assign a240 = r62 == 5'b10000;
    assign a241 = a224 | a194;
    assign a242 = a241 | a138;
    assign a243 = a242 | a105;
    assign a244 = ~a243;
    assign a245 = a244 & a240;
    assign s246 = a245 ? r19 : s229;
    assign w247 = m1[s246][1:0];
    assign a248 = w247 != 2'b0;
    assign a249 = a245 & a248;
    assign s250 = a249 ? 2'b0 : s231;
    assign w251 = m1[s246][21:2];
    assign s252 = a249 ? w251 : s234;
    assign s253 = a249 ? m3[s246] : s236;
    assign s254 = a249 ? 1'b1 : s237;
    assign a255 = r19 + 1'b1;
    assign a256 = a249 & io_evict_ready;
    assign s257 = a256 ? a255 : s135;
    assign a258 = r19 == 1'b1;
    assign a259 = a256 & a258;
    assign s260 = a259 ? 5'b1 : s239;
    assign a261 = r19 + 1'b1;
    assign a262 = ~a248;
    assign a263 = a245 & a262;
    assign s264 = a263 ? a261 : s257;
    assign a265 = r19 == 1'b1;
    assign a266 = a263 & a265;
    assign s267 = a266 ? 5'b1 : s260;

    assign io_enq_ready = a99;
    assign io_evict_valid = s254;
    assign io_evict_data = w35;

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
    wire[533:0] l339 = 534'b0;
    wire[511:0] l372 = 512'h0;
    wire[514:0] w74, w92, w107;
    wire b131, b133, b134, b140, b143, b149, b152, b158, b161, b167, b174, b175, b176, b182, b185, b191, b194, b200, b203, b209, b216, b217, b218, b224, b227, b233, b236, a237, a259, a266, a268, a269, a272, a274, a275, a276, a279, a281, a282, a283, a284, a287, a289, a290, a291, a292, a293, a296, a299, a300, a301, a302, a303, a304, a333, a334, a337, a338, a350, a352, a383, a391, a395, a397, a398, a405, a422, a424, a425, a426, a432, a433, a434, a442, a443, a445, a446, a447, s448, a456, a458, a468, a469, a471, a472, a475, a476, a479, a480, a482, a483, a484, s485, a486, a488, a491, a492, a493, s500, a501, a503, a504, a505, a506, a507, s508, a510, a512, a513, a514, a515, a516, a517, a518, a527, a528, a530, a531, a532, a533;
    wire[22:0] b137, b146, b155, b164;
    wire[2:0] b170, b212, w256, w416, s467, w526, w529;
    wire[533:0] b179, b188, b197, b206, w220, b221, b230, w341;
    reg r241, r364;
    reg[19:0] r247, r369;
    reg[13:0] r253, r380;
    wire[131:0] w260;
    wire[19:0] w261, s264, w267, s270, w273, s277, w280, s285, w288, s294, w298, s305, w306, a314, w393, s394, w396, s399, a404, s406, s423, s427, a431, s435, s460, s497;
    wire[39:0] w297, w392;
    wire[5:0] w317, w525;
    wire[13:0] w320, w411, s412, w439, s440;
    reg[4:0] r324;
    reg[1:0] r330;
    reg[533:0] r342;
    reg[2:0] r347;
    wire[31:0] s355, s356, a449, a450, s451, a455;
    reg[31:0] r359;
    reg[511:0] r375;
    wire[4:0] w385, w419, s473, s477, s481, s487, s502, s511, s519;
    wire[1:0] w386, s414, w417, s441, s452, s463, s495;
    wire[511:0] s408, s437, s466, s499;

    assign w74 = {io_qpi_rd_rsp_data, w529};
    assign w92 = {io_qpi_rd_rsp_data, w529};
    assign w107 = {io_qpi_rd_rsp_data, w529};
    assign b131 = clk;
    assign b133 = reset;
    ch_xbar_switch __module22__(.clk(b131), .reset(b133), .io_in_0_valid(b134), .io_in_0_data(b137), .io_in_1_valid(b143), .io_in_1_data(b146), .io_in_2_valid(b152), .io_in_2_data(b155), .io_out_ready(b167), .io_in_0_ready(b140), .io_in_1_ready(b149), .io_in_2_ready(b158), .io_out_valid(b161), .io_out_data(b164), .io_out_grant(b170));
    assign b134 = io_walkers_0_rd_req_valid;
    assign b137 = io_walkers_0_rd_req_data;
    assign b143 = io_walkers_1_rd_req_valid;
    assign b146 = io_walkers_1_rd_req_data;
    assign b152 = io_ctrl_rd_req_valid;
    assign b155 = io_ctrl_rd_req_data;
    assign b167 = a237;
    assign b174 = clk;
    assign b175 = reset;
    ch_xbar_switch_0 __module25__(.clk(b174), .reset(b175), .io_in_0_valid(b176), .io_in_0_data(b179), .io_in_1_valid(b185), .io_in_1_data(b188), .io_in_2_valid(b194), .io_in_2_data(b197), .io_out_ready(b209), .io_in_0_ready(b182), .io_in_1_ready(b191), .io_in_2_ready(b200), .io_out_valid(b203), .io_out_data(b206), .io_out_grant(b212));
    assign b176 = io_PEs_0_wr_req_valid;
    assign b179 = io_PEs_0_wr_req_data;
    assign b185 = io_PEs_1_wr_req_valid;
    assign b188 = io_PEs_1_wr_req_data;
    assign b194 = io_ctrl_wr_req_valid;
    assign b197 = io_ctrl_wr_req_data;
    assign b209 = a334;
    assign b216 = clk;
    assign b217 = reset;
    spmv_write_cache __module28__(.clk(b216), .reset(b217), .io_enq_valid(b218), .io_enq_data(b221), .io_evict_ready(b233), .io_flush(b236), .io_enq_ready(b224), .io_evict_valid(b227), .io_evict_data(b230));
    assign b218 = s500;
    assign w220 = {s499, s497, s495};
    assign b221 = w220;
    assign b233 = a338;
    assign b236 = s508;
    assign a237 = ~io_qpi_rd_req_almostfull;
    always @ (posedge clk)
    r241 <= reset ? 1'b0 : b161;
    always @ (posedge clk)
    r247 <= reset ? 20'h0 : a314;
    always @ (posedge clk)
    r253 <= reset ? 14'b0 : w320;
    assign w256 = b164[2:0];
    assign a259 = w256 == 3'b0;
    assign w260 = io_ctx[131:0];
    assign w261 = w260[51:32];
    assign s264 = a259 ? w261 : w306;
    assign a266 = w256 == 3'b1;
    assign w267 = w260[71:52];
    assign a268 = ~a259;
    assign a269 = a268 & a266;
    assign s270 = a269 ? w267 : s264;
    assign a272 = w256 == 3'b10;
    assign w273 = w260[91:72];
    assign a274 = a266 | a259;
    assign a275 = ~a274;
    assign a276 = a275 & a272;
    assign s277 = a276 ? w273 : s270;
    assign a279 = w256 == 3'b11;
    assign w280 = w260[111:92];
    assign a281 = a272 | a266;
    assign a282 = a281 | a259;
    assign a283 = ~a282;
    assign a284 = a283 & a279;
    assign s285 = a284 ? w280 : s277;
    assign a287 = w256 == 3'b100;
    assign w288 = w260[131:112];
    assign a289 = a279 | a272;
    assign a290 = a289 | a266;
    assign a291 = a290 | a259;
    assign a292 = ~a291;
    assign a293 = a292 & a287;
    assign s294 = a293 ? w288 : s285;
    assign a296 = w256 == 3'b101;
    assign w297 = io_ctx[171:132];
    assign w298 = w297[19:0];
    assign a299 = a287 | a279;
    assign a300 = a299 | a272;
    assign a301 = a300 | a266;
    assign a302 = a301 | a259;
    assign a303 = ~a302;
    assign a304 = a303 & a296;
    assign s305 = a304 ? w298 : s294;
    assign w306 = w297[39:20];
    assign a314 = s305 + b164[22:3];
    assign w317 = {b170, w256};
    assign w320 = {8'h0, w317};
    always @ (posedge clk)
    r324 <= reset ? 5'b1 : s519;
    always @ (posedge clk)
    r330 <= reset ? 2'b1 : s452;
    assign a333 = r330 == 2'b1;
    assign a334 = r324 == 5'b1;
    assign a337 = ~s485;
    assign a338 = a333 & a337;
    assign w341 = {s466, s460, s463};
    always @ (posedge clk)
    r342 <= reset ? l339 : w341;
    always @ (posedge clk)
    r347 <= reset ? 3'b0 : s467;
    assign a350 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
    assign a352 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
    assign s355 = a352 ? 32'h1 : 32'h0;
    assign s356 = a350 ? 32'h2 : s355;
    always @ (posedge clk)
    r359 <= reset ? 32'h0 : s451;
    always @ (posedge clk)
    r364 <= reset ? 1'b0 : s448;
    always @ (posedge clk)
    r369 <= reset ? 20'h0 : s435;
    always @ (posedge clk)
    r375 <= reset ? l372 : s437;
    always @ (posedge clk)
    r380 <= reset ? 14'b0 : s440;
    assign a383 = r330 == 2'b1;
    assign w385 = {r347, w386};
    assign w386 = r342[1:0];
    assign a391 = w386 == 2'b0;
    assign w392 = io_ctx[211:172];
    assign w393 = w392[19:0];
    assign s394 = a391 ? w393 : io_ctx[231:212];
    assign a395 = w386 == 2'b1;
    assign w396 = w392[39:20];
    assign a397 = ~a391;
    assign a398 = a397 & a395;
    assign s399 = a398 ? w396 : s394;
    assign a404 = s399 + r342[21:2];
    assign a405 = a383 & s485;
    assign s406 = a405 ? a404 : r369;
    assign s408 = a405 ? r342[533:22] : r375;
    assign w411 = {9'b0, w385};
    assign s412 = a405 ? w411 : r380;
    assign s414 = a405 ? 2'b10 : r330;
    assign w416 = {1'b0, w417};
    assign w417 = b230[1:0];
    assign w419 = {w416, 2'b1};
    assign a422 = 2'b1 == 2'b0;
    assign s423 = a422 ? w393 : io_ctx[231:212];
    assign a424 = 2'b1 == 2'b1;
    assign a425 = ~a422;
    assign a426 = a425 & a424;
    assign s427 = a426 ? w396 : s423;
    assign a431 = s427 + b230[21:2];
    assign a432 = ~s485;
    assign a433 = a383 & a432;
    assign a434 = a433 & b227;
    assign s435 = a434 ? a431 : s406;
    assign s437 = a434 ? b230[533:22] : s408;
    assign w439 = {9'b0, w419};
    assign s440 = a434 ? w439 : s412;
    assign s441 = a434 ? 2'b10 : s414;
    assign a442 = r330 == 2'b10;
    assign a443 = ~io_qpi_wr_req_almostfull;
    assign a445 = ~a383;
    assign a446 = a445 & a442;
    assign a447 = a446 & a443;
    assign s448 = a447 ? 1'b1 : 1'b0;
    assign a449 = r359 + 32'h1;
    assign a450 = a449 - s356;
    assign s451 = a447 ? a450 : a455;
    assign s452 = a447 ? 2'b1 : s441;
    assign a455 = r359 - s356;
    assign a456 = r324 == 5'b1;
    assign a458 = a456 & b203;
    assign s460 = a458 ? b206[21:2] : r342[21:2];
    assign s463 = a458 ? b206[1:0] : r342[1:0];
    assign s466 = a458 ? b206[533:22] : r342[533:22];
    assign s467 = a458 ? b212 : r347;
    assign a468 = b206[1:0] == 2'b1;
    assign a469 = b212 == 3'b100;
    assign a471 = a458 & a468;
    assign a472 = a471 & a469;
    assign s473 = a472 ? 5'b1000 : r324;
    assign a475 = ~a469;
    assign a476 = a471 & a475;
    assign s477 = a476 ? 5'b100 : s473;
    assign a479 = ~a468;
    assign a480 = a458 & a479;
    assign s481 = a480 ? 5'b10 : s477;
    assign a482 = r324 == 5'b10;
    assign a483 = ~a456;
    assign a484 = a483 & a482;
    assign s485 = a484 ? 1'b1 : 1'b0;
    assign a486 = a484 & a333;
    assign s487 = a486 ? 5'b1 : s481;
    assign a488 = r324 == 5'b100;
    assign a491 = a482 | a456;
    assign a492 = ~a491;
    assign a493 = a492 & a488;
    assign s495 = a493 ? r347[1:0] : 2'b0;
    assign s497 = a493 ? r342[21:2] : 20'h0;
    assign s499 = a493 ? r342[533:22] : l372;
    assign s500 = a493 ? 1'b1 : 1'b0;
    assign a501 = a493 & b224;
    assign s502 = a501 ? 5'b1 : s487;
    assign a503 = r324 == 5'b1000;
    assign a504 = a488 | a482;
    assign a505 = a504 | a456;
    assign a506 = ~a505;
    assign a507 = a506 & a503;
    assign s508 = a507 ? 1'b1 : 1'b0;
    assign a510 = a507 & b224;
    assign s511 = a510 ? 5'b10000 : s502;
    assign a512 = r324 == 5'b10000;
    assign a513 = a503 | a488;
    assign a514 = a513 | a482;
    assign a515 = a514 | a456;
    assign a516 = ~a515;
    assign a517 = a516 & a512;
    assign a518 = a517 & b224;
    assign s519 = a518 ? 5'b1 : s511;
    assign w525 = io_qpi_rd_rsp_mdata[5:0];
    assign w526 = w525[5:3];
    assign a527 = w526 == 3'b100;
    assign a528 = io_qpi_rd_rsp_valid & a527;
    assign w529 = w525[2:0];
    assign a530 = w526 == 3'b1;
    assign a531 = io_qpi_rd_rsp_valid & a530;
    assign a532 = w526 == 3'b10;
    assign a533 = io_qpi_rd_rsp_valid & a532;

    assign io_qpi_rd_req_addr = r247;
    assign io_qpi_rd_req_mdata = r253;
    assign io_qpi_rd_req_valid = r241;
    assign io_qpi_wr_req_addr = r369;
    assign io_qpi_wr_req_mdata = r380;
    assign io_qpi_wr_req_data = r375;
    assign io_qpi_wr_req_valid = r364;
    assign io_ctrl_rd_req_ready = b158;
    assign io_ctrl_wr_req_ready = b200;
    assign io_ctrl_rd_rsp_valid = a528;
    assign io_ctrl_rd_rsp_data = w74;
    assign io_ctrl_outstanding_writes = r359;
    assign io_walkers_0_rd_req_ready = b140;
    assign io_walkers_0_rd_rsp_valid = a531;
    assign io_walkers_0_rd_rsp_data = w92;
    assign io_walkers_1_rd_req_ready = b149;
    assign io_walkers_1_rd_rsp_valid = a533;
    assign io_walkers_1_rd_rsp_data = w107;
    assign io_PEs_0_wr_req_ready = b182;
    assign io_PEs_1_wr_req_ready = b191;

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
    reg[2:0] r27, r32;
    wire[1:0] w36, w38;
    wire a39, a40, a51, a54, a55, a56;
    wire[2:0] a42, s43, a44, s45, a57;
    reg[511:0] m46[0:3];
    wire[511:0] s49;

    always @ (posedge clk)
    r27 <= reset ? 3'b0 : s43;
    always @ (posedge clk)
    r32 <= reset ? 3'b0 : s45;
    assign w36 = r27[1:0];
    assign w38 = r32[1:0];
    assign a39 = io_deq_ready & a51;
    assign a40 = io_enq_valid & a56;
    assign a42 = r27 + 3'b1;
    assign s43 = a39 ? a42 : r27;
    assign a44 = r32 + 3'b1;
    assign s45 = a40 ? a44 : r32;
    always @(posedge clk)
    m46[w38] = s49;
    assign s49 = a40 ? io_enq_data : m46[w38];
    assign a51 = r32 != r27;
    assign a54 = r32[2] == r27[2];
    assign a55 = w38 != w36;
    assign a56 = a55 | a54;
    assign a57 = r32 - r27;

    assign io_enq_ready = a56;
    assign io_deq_valid = a51;
    assign io_deq_data = m46[w36];
    assign io_size = a57;

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
    wire[543:0] l351 = 544'h0;
    wire[95:0] l391 = 96'h0;
    wire[63:0] l402 = 64'h0;
    wire[63:0] l408 = 64'h1;
    wire[415:0] l528 = 416'h0;
    wire[511:0] l570 = 512'h0;
    wire[543:0] l610 = 544'h20;
    wire b62, b64, b65, b71, b80, b86, b89, b95, b101, b105, b106, b107, b113, b122, b128, b131, b137, b143, b147, b148, b149, b155, b158, b164, b170, b174, b175, b176, b182, b185, b191, b197, b201, b202, b203, b212, b221, b224, b236, b242, b248, b254, b260, b263, b269, b272, b281, b287, b290, b296, b302, b305, b311, b317, b320, b326, b330, b331, b332, b341, b347, a425, a426, a431, a432, a433, a438, a439, a440, a442, a443, a444, a445, s457, a461, a462, s463, a464, a465, a466, a472, a473, s474, a477, a479, a481, a485, a486, a490, a491, a493, a494, a495, a497, a498, a499, a500, a502, a504, a505, a506, a507, s510, a512, a514, a516, a517, a518, a519, a520, a539, a541, s545, a547, a549, a551, a553, a554, a555, a556, a557, a558, a559, a560, a561, s563, a576, a577, s578, a579, a580, a592, a593, a601, a605, a606, a607, s609, a623, a624, a625, a626, a628, a629, a631, a632, a634, a638, a639, a640, a641, s643, a655, a656, a657, a658, a660, a661, a663, a664;
    wire[63:0] b68, b74, b110, b116, b167, b194, a409, s608, s642;
    wire[351:0] b77, b119;
    wire[22:0] b83, b125, w256, b257, b284, b299;
    wire[514:0] b92, b134, b275, b293, b308;
    wire[84:0] b98, b140, b152, b179;
    wire[533:0] b161, b188, w265, b266, b314, b323;
    wire[19:0] b206, b227, w399, s446, s456, s470, a476, s478, w524, s526, a618, s619, a651, s652;
    wire[13:0] b209, b215, b230, b239, b245;
    wire[511:0] b218, b233, b251, b335, b344, w530, w534, w538, s540, s542, s544, w581;
    wire[31:0] b278, w398, w429, w435, a436, a437, a448, a450, a452, a454, a484, s488, a489, s492, w587, s588, s597, s613, s617, s646, s650;
    wire[543:0] w353, a611, a644;
    reg[543:0] r354;
    reg[4:0] r360;
    reg[31:0] r366;
    reg[19:0] r372, r377, r382;
    reg[1:0] r388, r573;
    wire[95:0] w393;
    reg[95:0] r394;
    wire[131:0] w397;
    reg[63:0] r405;
    reg[5:0] r413;
    reg r419;
    wire[2:0] w430, s468;
    wire[5:0] s459, s482, s501, s513, s552, s562;
    wire[1:0] s509, s521, a546, s548, s600, s627, s630, s633, s659, s662, s665;
    wire[415:0] w532, w536;
    wire[4:0] s584, s599, a621, s622, a653, s654;
    wire[479:0] w590, s591, s594, s615, s648;

    assign b62 = clk;
    assign b64 = reset;
    spmv_dcsc_walk __module1__(.clk(b62), .reset(b64), .io_ctrl_start_valid(b65), .io_ctrl_start_data(b68), .io_ctrl_timer(b74), .io_lsu_rd_req_ready(b86), .io_lsu_rd_rsp_valid(b89), .io_lsu_rd_rsp_data(b92), .io_pe_ready(b101), .io_ctrl_start_ready(b71), .io_ctrl_stats(b77), .io_lsu_rd_req_valid(b80), .io_lsu_rd_req_data(b83), .io_pe_valid(b95), .io_pe_data(b98));
    assign b65 = s609;
    assign b68 = s608;
    assign b74 = r405;
    assign b86 = b287;
    assign b89 = b290;
    assign b92 = b293;
    assign b101 = b155;
    assign b105 = clk;
    assign b106 = reset;
    spmv_dcsc_walk __module8__(.clk(b105), .reset(b106), .io_ctrl_start_valid(b107), .io_ctrl_start_data(b110), .io_ctrl_timer(b116), .io_lsu_rd_req_ready(b128), .io_lsu_rd_rsp_valid(b131), .io_lsu_rd_rsp_data(b134), .io_pe_ready(b143), .io_ctrl_start_ready(b113), .io_ctrl_stats(b119), .io_lsu_rd_req_valid(b122), .io_lsu_rd_req_data(b125), .io_pe_valid(b137), .io_pe_data(b140));
    assign b107 = s643;
    assign b110 = s642;
    assign b116 = r405;
    assign b128 = b302;
    assign b131 = b305;
    assign b134 = b308;
    assign b143 = b182;
    assign b147 = clk;
    assign b148 = reset;
    spmv_pe __module15__(.clk(b147), .reset(b148), .io_req_valid(b149), .io_req_data(b152), .io_lsu_wr_req_ready(b164), .io_req_ready(b155), .io_lsu_wr_req_valid(b158), .io_lsu_wr_req_data(b161), .io_stats(b167), .io_is_idle(b170));
    assign b149 = b95;
    assign b152 = b98;
    assign b164 = b317;
    assign b174 = clk;
    assign b175 = reset;
    spmv_pe __module18__(.clk(b174), .reset(b175), .io_req_valid(b176), .io_req_data(b179), .io_lsu_wr_req_ready(b191), .io_req_ready(b182), .io_lsu_wr_req_valid(b185), .io_lsu_wr_req_data(b188), .io_stats(b194), .io_is_idle(b197));
    assign b176 = b137;
    assign b179 = b140;
    assign b191 = b326;
    assign b201 = clk;
    assign b202 = reset;
    spmv_lsu __module21__(.clk(b201), .reset(b202), .io_qpi_rd_req_almostfull(b203), .io_qpi_rd_rsp_mdata(b215), .io_qpi_rd_rsp_data(b218), .io_qpi_rd_rsp_valid(b221), .io_qpi_wr_req_almostfull(b224), .io_qpi_wr_rsp0_mdata(b239), .io_qpi_wr_rsp0_valid(b242), .io_qpi_wr_rsp1_mdata(b245), .io_qpi_wr_rsp1_valid(b248), .io_ctx(b251), .io_ctrl_rd_req_valid(b254), .io_ctrl_rd_req_data(b257), .io_ctrl_wr_req_valid(b263), .io_ctrl_wr_req_data(b266), .io_walkers_0_rd_req_valid(b281), .io_walkers_0_rd_req_data(b284), .io_walkers_1_rd_req_valid(b296), .io_walkers_1_rd_req_data(b299), .io_PEs_0_wr_req_valid(b311), .io_PEs_0_wr_req_data(b314), .io_PEs_1_wr_req_valid(b320), .io_PEs_1_wr_req_data(b323), .io_qpi_rd_req_addr(b206), .io_qpi_rd_req_mdata(b209), .io_qpi_rd_req_valid(b212), .io_qpi_wr_req_addr(b227), .io_qpi_wr_req_mdata(b230), .io_qpi_wr_req_data(b233), .io_qpi_wr_req_valid(b236), .io_ctrl_rd_req_ready(b260), .io_ctrl_wr_req_ready(b269), .io_ctrl_rd_rsp_valid(b272), .io_ctrl_rd_rsp_data(b275), .io_ctrl_outstanding_writes(b278), .io_walkers_0_rd_req_ready(b287), .io_walkers_0_rd_rsp_valid(b290), .io_walkers_0_rd_rsp_data(b293), .io_walkers_1_rd_req_ready(b302), .io_walkers_1_rd_rsp_valid(b305), .io_walkers_1_rd_rsp_data(b308), .io_PEs_0_wr_req_ready(b317), .io_PEs_1_wr_req_ready(b326));
    assign b203 = io_qpi_rd_req_almostfull;
    assign b215 = io_qpi_rd_rsp_mdata;
    assign b218 = io_qpi_rd_rsp_data;
    assign b221 = io_qpi_rd_rsp_valid;
    assign b224 = io_qpi_wr_req_almostfull;
    assign b239 = io_qpi_wr_rsp0_mdata;
    assign b242 = io_qpi_wr_rsp0_valid;
    assign b245 = io_qpi_wr_rsp1_mdata;
    assign b248 = io_qpi_wr_rsp1_valid;
    assign b251 = io_ctx;
    assign b254 = s474;
    assign w256 = {s470, s468};
    assign b257 = w256;
    assign b263 = s545;
    assign w265 = {s544, s526, s521};
    assign b266 = w265;
    assign b281 = b80;
    assign b284 = b83;
    assign b296 = b122;
    assign b299 = b125;
    assign b311 = b158;
    assign b314 = b161;
    assign b320 = b185;
    assign b323 = b188;
    assign b330 = clk;
    assign b331 = reset;
    ch_queue_1 __module29__(.clk(b330), .reset(b331), .io_enq_valid(b332), .io_enq_data(b335), .io_deq_ready(b347), .io_deq_valid(b341), .io_deq_data(b344));
    assign b332 = a426;
    assign b335 = b275[514:3];
    assign b347 = s578;
    assign w353 = {s650, s648, s646};
    always @ (posedge clk)
    r354 <= reset ? l351 : w353;
    always @ (posedge clk)
    r360 <= reset ? 5'b0 : s654;
    always @ (posedge clk)
    r366 <= reset ? 32'h0 : a437;
    always @ (posedge clk)
    r372 <= reset ? 20'h0 : s478;
    always @ (posedge clk)
    r377 <= reset ? 20'h0 : s456;
    always @ (posedge clk)
    r382 <= reset ? 20'h0 : s652;
    always @ (posedge clk)
    r388 <= reset ? 2'b0 : s548;
    assign w393 = {r394[95:32], s492};
    always @ (posedge clk)
    r394 <= reset ? l391 : w393;
    assign w397 = io_ctx[131:0];
    assign w398 = w397[31:0];
    assign w399 = w398[19:0];
    always @ (posedge clk)
    r405 <= reset ? l402 : a409;
    assign a409 = r405 + l408;
    always @ (posedge clk)
    r413 <= reset ? 6'b1 : s562;
    always @ (posedge clk)
    r419 <= reset ? 1'b0 : s563;
    assign a425 = b275[2:0] == 3'b0;
    assign a426 = b272 & a425;
    assign w429 = {31'b0, s578};
    assign w430 = w256[2:0];
    assign a431 = w430 == 3'b0;
    assign a432 = s474 & b260;
    assign a433 = a432 & a431;
    assign w435 = {31'b0, a433};
    assign a436 = r366 + w435;
    assign a437 = a436 - w429;
    assign a438 = b71 & b170;
    assign a439 = a438 & b113;
    assign a440 = a439 & b197;
    assign a442 = r413 == 6'b1;
    assign a443 = w398 != 32'h0;
    assign a444 = a442 & io_start;
    assign a445 = a444 & a443;
    assign s446 = a445 ? 20'h0 : r372;
    assign a448 = w398 + 32'h1;
    assign a450 = a448 << 32'h2;
    assign a452 = a450 + 32'h3f;
    assign a454 = a452 >> 32'h6;
    assign s456 = a445 ? a454[19:0] : r377;
    assign s457 = a445 ? 1'b0 : r419;
    assign s459 = a445 ? 6'b10 : r413;
    assign a461 = ~a443;
    assign a462 = a444 & a461;
    assign s463 = a462 ? 1'b1 : s457;
    assign a464 = r413 == 6'b10;
    assign a465 = ~a442;
    assign a466 = a465 & a464;
    assign s468 = a466 ? 3'b0 : 3'b0;
    assign s470 = a466 ? r372 : 20'h0;
    assign a472 = r366 != 32'h4;
    assign a473 = a466 & a472;
    assign s474 = a473 ? 1'b1 : 1'b0;
    assign a476 = r372 + 20'h1;
    assign a477 = a473 & b260;
    assign s478 = a477 ? a476 : s446;
    assign a479 = s478 == r377;
    assign a481 = a477 & a479;
    assign s482 = a481 ? 6'b100 : s459;
    assign a484 = r394[31:0] + 32'h1;
    assign a485 = ~b260;
    assign a486 = a473 & a485;
    assign s488 = a486 ? a484 : r394[31:0];
    assign a489 = r394[31:0] + 32'h1;
    assign a490 = ~a472;
    assign a491 = a466 & a490;
    assign s492 = a491 ? a489 : s488;
    assign a493 = r413 == 6'b100;
    assign a494 = r382 == w399;
    assign a495 = a494 & a440;
    assign a497 = a464 | a442;
    assign a498 = ~a497;
    assign a499 = a498 & a493;
    assign a500 = a499 & a495;
    assign s501 = a500 ? 6'b1000 : s482;
    assign a502 = r413 == 6'b1000;
    assign a504 = a493 | a464;
    assign a505 = a504 | a442;
    assign a506 = ~a505;
    assign a507 = a506 & a502;
    assign s509 = a507 ? 2'b1 : 2'b0;
    assign s510 = a507 ? 1'b1 : 1'b0;
    assign a512 = a507 & b269;
    assign s513 = a512 ? 6'b10000 : s501;
    assign a514 = r413 == 6'b10000;
    assign a516 = a502 | a493;
    assign a517 = a516 | a464;
    assign a518 = a517 | a442;
    assign a519 = ~a518;
    assign a520 = a519 & a514;
    assign s521 = a520 ? 2'b10 : s509;
    assign w524 = {18'b0, r388};
    assign s526 = a520 ? w524 : 20'h0;
    assign w530 = {l528, r394};
    assign w532 = {b167, b77};
    assign w534 = {l391, w532};
    assign w536 = {b194, b119};
    assign w538 = {l391, w536};
    assign a539 = r388 == 2'b1;
    assign s540 = a539 ? w534 : w538;
    assign a541 = r388 == 2'b0;
    assign s542 = a541 ? w530 : s540;
    assign s544 = a520 ? s542 : l570;
    assign s545 = a520 ? 1'b1 : s510;
    assign a546 = r388 + 2'b1;
    assign a547 = a520 & b269;
    assign s548 = a547 ? a546 : r388;
    assign a549 = r388 == 2'b10;
    assign a551 = a547 & a549;
    assign s552 = a551 ? 6'b100000 : s513;
    assign a553 = r413 == 6'b100000;
    assign a554 = b278 == 32'h0;
    assign a555 = a514 | a502;
    assign a556 = a555 | a493;
    assign a557 = a556 | a464;
    assign a558 = a557 | a442;
    assign a559 = ~a558;
    assign a560 = a559 & a553;
    assign a561 = a560 & a554;
    assign s562 = a561 ? 6'b1 : s552;
    assign s563 = a561 ? 1'b1 : s463;
    always @ (posedge clk)
    r573 <= reset ? 2'b0 : s665;
    assign a576 = r573 == 2'b0;
    assign a577 = a576 & b341;
    assign s578 = a577 ? 1'b1 : 1'b0;
    assign a579 = r360 == 5'b0;
    assign a580 = a577 & a579;
    assign w581 = r354[511:0];
    assign s584 = a580 ? 5'b10000 : r360;
    assign w587 = w581[31:0];
    assign s588 = a580 ? b344[31:0] : w587;
    assign w590 = w581[511:32];
    assign s591 = a580 ? b344[511:32] : w590;
    assign a592 = ~a579;
    assign a593 = a577 & a592;
    assign s594 = a593 ? b344[479:0] : s591;
    assign s597 = a593 ? b344[511:480] : r354[543:512];
    assign s599 = a593 ? 5'b10001 : s584;
    assign s600 = a577 ? 2'b1 : r573;
    assign a601 = r573 == 2'b1;
    assign a605 = ~a576;
    assign a606 = a605 & a601;
    assign a607 = a606 & b71;
    assign s608 = a607 ? r354[63:0] : l402;
    assign s609 = a607 ? 1'b1 : 1'b0;
    assign a611 = r354 >> l610;
    assign s613 = a607 ? a611[31:0] : s588;
    assign s615 = a607 ? a611[511:32] : s594;
    assign s617 = a607 ? a611[543:512] : s597;
    assign a618 = r382 + 20'h1;
    assign s619 = a607 ? a618 : r382;
    assign a621 = r360 - 5'b1;
    assign s622 = a607 ? a621 : s599;
    assign a623 = s654 != 5'b1;
    assign a624 = s652 != w399;
    assign a625 = a624 & a623;
    assign a626 = a607 & a625;
    assign s627 = a626 ? 2'b10 : s600;
    assign a628 = ~a625;
    assign a629 = a607 & a628;
    assign s630 = a629 ? 2'b0 : s627;
    assign a631 = ~b71;
    assign a632 = a606 & a631;
    assign s633 = a632 ? 2'b10 : s630;
    assign a634 = r573 == 2'b10;
    assign a638 = a601 | a576;
    assign a639 = ~a638;
    assign a640 = a639 & a634;
    assign a641 = a640 & b113;
    assign s642 = a641 ? r354[63:0] : l402;
    assign s643 = a641 ? 1'b1 : 1'b0;
    assign a644 = r354 >> l610;
    assign s646 = a641 ? a644[31:0] : s613;
    assign s648 = a641 ? a644[511:32] : s615;
    assign s650 = a641 ? a644[543:512] : s617;
    assign a651 = r382 + 20'h1;
    assign s652 = a641 ? a651 : s619;
    assign a653 = r360 - 5'b1;
    assign s654 = a641 ? a653 : s622;
    assign a655 = s654 != 5'b1;
    assign a656 = s652 != w399;
    assign a657 = a656 & a655;
    assign a658 = a641 & a657;
    assign s659 = a658 ? 2'b1 : s633;
    assign a660 = ~a657;
    assign a661 = a641 & a660;
    assign s662 = a661 ? 2'b0 : s659;
    assign a663 = ~b113;
    assign a664 = a640 & a663;
    assign s665 = a664 ? 2'b1 : s662;

    assign io_qpi_rd_req_addr = b206;
    assign io_qpi_rd_req_mdata = b209;
    assign io_qpi_rd_req_valid = b212;
    assign io_qpi_wr_req_addr = b227;
    assign io_qpi_wr_req_mdata = b230;
    assign io_qpi_wr_req_data = b233;
    assign io_qpi_wr_req_valid = b236;
    assign io_done = r419;

endmodule
