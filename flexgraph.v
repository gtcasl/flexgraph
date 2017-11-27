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
    wire[63:0] l308 = 64'h0;
    wire[351:0] l314 = 352'h0;
    wire[22:0] w20;
    wire[84:0] w35;
    reg[19:0] r45, r50, r55, r60, r65, r71, r76, r81, r86;
    reg[5:0] r92;
    reg[31:0] r98;
    wire b105, b106, b107, b116, b122, b129, b130, b131, b140, b146, b153, b154, b155, b170, b177, b178, b179, b194, b201, b202, b203, b212, b218, b225, b226, b227, b236, b242, a323, a324, a326, a327, a329, a330, a332, a333, a335, a336, a338, a339, a346, a348, a349, a350, a352, a353, a357, a358, a362, a363, a364, a366, a367, a370, a371, a375, a376, a377, a379, a380, a383, a384, a388, a389, a390, a392, a393, a396, a397, a401, a402, a403, a405, a406, a409, a410, a414, a415, a416, a418, a419, a422, a423, a427, a431, a436, a437, a441, a452, a454, s455, a457, a459, a463, a466, a468, a470, a476, a477, s478, a480, a482, a485, a488, a490, a492, a494, a495, s504, s511, a513, a520, a524, a526, a528, a535, a536, s537, a539, a541, a543, a545, a547, a549, a552, s553, a557, a559, a561, a566, a576, a579, a582, a583, a584, a596, a597, a601, a603, a605, a606, a610, a614, a615, s616, a618, a620, a623, a626, a628, a630, a632, s634, a644, a647, a650, a651, a661, a662, a665, a666, a668, a670, a672, a678, a679, s680, a683, a693, a696, a699, a701, a703, a708, a709, s710, a712, a714, a717, a720, a722, a724, a728, a729, s730, a732, a734, a735, a737, a739, a741, a744, a747, a749, a751, a753, a754, a755, s757, a764, a770, s774, s775, a778, a780, a782, s802, s803, a805, a807, a809, a810, a811, s814, s815, a816, a817, a819, a822, a825, a829, a831, a836, a837, a845, a851, a854, a855, a857, a858, a860, a862, a864, s869, s870, a875, a877, a879, a882, a895, a897;
    wire[511:0] b110, b119, b134, b143, b158, b167, b182, b191, b206, b215, b230, b239, s496, a501, s505, a508, a518, a569, s633, a638, s756, a760, a767, s772, s773, a786, a792, s812, s813, a834, a841, a849;
    wire[5:0] b197, s593, s659, s691;
    reg[7:0] r249, r254, r259, r264, r269, r274;
    reg[511:0] r280, r285, r290, r295, r300, r305;
    reg[63:0] r311;
    wire[351:0] w316;
    reg[351:0] r317;
    reg[3:0] r343;
    wire[2:0] w347, s444, s472, s530, s612, s674, s705, s726;
    wire[7:0] a355, s356, a360, s361, a368, s369, a373, s374, a381, s382, a386, s387, a394, s395, a399, s400, a407, s408, a412, s413, a420, s421, a425, s426;
    wire[31:0] w429, w433, a462, s465, a467, s469, a484, s487, a489, s491, a542, s544, a546, s548, a558, s560, a574, a575, a622, s625, a627, s629, a642, a643, a669, s671, a695, s698, a700, s702, a716, s719, a721, s723, a743, s746, a748, s750, s763, s771, a779, s781, s796, s799, a821, s824, s867, s868, s876, s878, s881, s883, s885, a887, s889, a891, s893, a896, s898;
    wire[19:0] w430, s432, w434, s435, a446, a448, s450, a473, a474, s475, a498, a500, s503, a506, a507, s510, a512, a515, a516, a517, s521, a531, a532, a533, s534, s555, a563, a564, a565, a567, a568, a573, a577, a578, a580, a581, s585, a586, a588, a589, s590, a591, s598, s607, s613, a635, a636, a637, a641, a645, a646, a648, a649, s652, a653, a654, a655, s656, a657, s663, a675, a676, s677, a681, a682, s684, a685, a686, a687, s688, a689, s706, s727, a731, s733, a758, a759, a765, a766, a784, a785, s789, a790, a791, a804, s806, a808, a827, s828, a830, a832, a833, s838, a839, a840, s843, a844, a846, a847, a848, s852, s866;
    wire[63:0] s438, a871;
    wire[3:0] s440, s458, s481, s523, s527, s540, s556, s595, s600, s604, s609, s619, s660, s664, s667, s692, s713, s736, s740, s777, s818, s853, s856, s859, s863, s894;

    assign w20 = {s727, s726};
    assign w35 = {s869, s868, s867, s866};
    always @ (posedge clk)
    r45 <= reset ? 20'h0 : s828;
    always @ (posedge clk)
    r50 <= reset ? 20'h0 : s435;
    always @ (posedge clk)
    r55 <= reset ? 20'h0 : s838;
    always @ (posedge clk)
    r60 <= reset ? 20'h0 : s843;
    always @ (posedge clk)
    r65 <= reset ? 20'h0 : s852;
    always @ (posedge clk)
    r71 <= reset ? 20'hfffff : s607;
    always @ (posedge clk)
    r76 <= reset ? 20'hfffff : s663;
    always @ (posedge clk)
    r81 <= reset ? 20'h0 : s733;
    always @ (posedge clk)
    r86 <= reset ? 20'h0 : s688;
    always @ (posedge clk)
    r92 <= reset ? 6'b0 : s691;
    always @ (posedge clk)
    r98 <= reset ? 32'h0 : s771;
    assign b105 = clk;
    assign b106 = reset;
    ch_queue __module2__(.clk(b105), .reset(b106), .io_enq_valid(b107), .io_enq_data(b110), .io_deq_ready(b122), .io_deq_valid(b116), .io_deq_data(b119));
    assign b107 = a324;
    assign b110 = io_lsu_rd_rsp_data[514:3];
    assign b122 = s504;
    assign b129 = clk;
    assign b130 = reset;
    ch_queue __module3__(.clk(b129), .reset(b130), .io_enq_valid(b131), .io_enq_data(b134), .io_deq_ready(b146), .io_deq_valid(b140), .io_deq_data(b143));
    assign b131 = a327;
    assign b134 = io_lsu_rd_rsp_data[514:3];
    assign b146 = s553;
    assign b153 = clk;
    assign b154 = reset;
    ch_queue_0 __module4__(.clk(b153), .reset(b154), .io_enq_valid(b155), .io_enq_data(b158), .io_deq_ready(b170), .io_deq_data(b167));
    assign b155 = a330;
    assign b158 = io_lsu_rd_rsp_data[514:3];
    assign b170 = s814;
    assign b177 = clk;
    assign b178 = reset;
    ch_queue_0 __module5__(.clk(b177), .reset(b178), .io_enq_valid(b179), .io_enq_data(b182), .io_deq_ready(b194), .io_deq_data(b191), .io_size(b197));
    assign b179 = a333;
    assign b182 = io_lsu_rd_rsp_data[514:3];
    assign b194 = s815;
    assign b201 = clk;
    assign b202 = reset;
    ch_queue __module6__(.clk(b201), .reset(b202), .io_enq_valid(b203), .io_enq_data(b206), .io_deq_ready(b218), .io_deq_valid(b212), .io_deq_data(b215));
    assign b203 = a336;
    assign b206 = io_lsu_rd_rsp_data[514:3];
    assign b218 = s757;
    assign b225 = clk;
    assign b226 = reset;
    ch_queue __module7__(.clk(b225), .reset(b226), .io_enq_valid(b227), .io_enq_data(b230), .io_deq_ready(b242), .io_deq_valid(b236), .io_deq_data(b239));
    assign b227 = a339;
    assign b230 = io_lsu_rd_rsp_data[514:3];
    assign b242 = s634;
    always @ (posedge clk)
    r249 <= reset ? 8'h0 : s361;
    always @ (posedge clk)
    r254 <= reset ? 8'h0 : s374;
    always @ (posedge clk)
    r259 <= reset ? 8'h0 : s387;
    always @ (posedge clk)
    r264 <= reset ? 8'h0 : s400;
    always @ (posedge clk)
    r269 <= reset ? 8'h0 : s413;
    always @ (posedge clk)
    r274 <= reset ? 8'h0 : s426;
    always @ (posedge clk)
    r280 <= reset ? l277 : s496;
    always @ (posedge clk)
    r285 <= reset ? l277 : s505;
    always @ (posedge clk)
    r290 <= reset ? l277 : s812;
    always @ (posedge clk)
    r295 <= reset ? l277 : s813;
    always @ (posedge clk)
    r300 <= reset ? l277 : s633;
    always @ (posedge clk)
    r305 <= reset ? l277 : s756;
    always @ (posedge clk)
    r311 <= reset ? l308 : s438;
    assign w316 = {s898, s671, s702, s781, s723, s560, s469, s889, s885, s881, s893};
    always @ (posedge clk)
    r317 <= reset ? l314 : w316;
    assign a323 = io_lsu_rd_rsp_data[2:0] == 3'b1;
    assign a324 = io_lsu_rd_rsp_valid & a323;
    assign a326 = io_lsu_rd_rsp_data[2:0] == 3'b10;
    assign a327 = io_lsu_rd_rsp_valid & a326;
    assign a329 = io_lsu_rd_rsp_data[2:0] == 3'b11;
    assign a330 = io_lsu_rd_rsp_valid & a329;
    assign a332 = io_lsu_rd_rsp_data[2:0] == 3'b100;
    assign a333 = io_lsu_rd_rsp_valid & a332;
    assign a335 = io_lsu_rd_rsp_data[2:0] == 3'b101;
    assign a336 = io_lsu_rd_rsp_valid & a335;
    assign a338 = io_lsu_rd_rsp_data[2:0] == 3'b110;
    assign a339 = io_lsu_rd_rsp_valid & a338;
    always @ (posedge clk)
    r343 <= reset ? 4'h0 : s894;
    assign a346 = r343 == 4'h0;
    assign w347 = w20[2:0];
    assign a348 = w347 == 3'b1;
    assign a349 = s730 & io_lsu_rd_req_ready;
    assign a350 = a349 & a348;
    assign a352 = ~s504;
    assign a353 = a350 & a352;
    assign a355 = r249 + 8'h1;
    assign s356 = a353 ? a355 : r249;
    assign a357 = ~a350;
    assign a358 = a357 & s504;
    assign a360 = r249 - 8'h1;
    assign s361 = a358 ? a360 : s356;
    assign a362 = w347 == 3'b10;
    assign a363 = s730 & io_lsu_rd_req_ready;
    assign a364 = a363 & a362;
    assign a366 = ~s553;
    assign a367 = a364 & a366;
    assign a368 = r254 + 8'h1;
    assign s369 = a367 ? a368 : r254;
    assign a370 = ~a364;
    assign a371 = a370 & s553;
    assign a373 = r254 - 8'h1;
    assign s374 = a371 ? a373 : s369;
    assign a375 = w347 == 3'b11;
    assign a376 = s730 & io_lsu_rd_req_ready;
    assign a377 = a376 & a375;
    assign a379 = ~s814;
    assign a380 = a377 & a379;
    assign a381 = r259 + 8'h1;
    assign s382 = a380 ? a381 : r259;
    assign a383 = ~a377;
    assign a384 = a383 & s814;
    assign a386 = r259 - 8'h1;
    assign s387 = a384 ? a386 : s382;
    assign a388 = w347 == 3'b100;
    assign a389 = s730 & io_lsu_rd_req_ready;
    assign a390 = a389 & a388;
    assign a392 = ~s815;
    assign a393 = a390 & a392;
    assign a394 = r264 + 8'h1;
    assign s395 = a393 ? a394 : r264;
    assign a396 = ~a390;
    assign a397 = a396 & s815;
    assign a399 = r264 - 8'h1;
    assign s400 = a397 ? a399 : s395;
    assign a401 = w347 == 3'b101;
    assign a402 = s730 & io_lsu_rd_req_ready;
    assign a403 = a402 & a401;
    assign a405 = ~s757;
    assign a406 = a403 & a405;
    assign a407 = r269 + 8'h1;
    assign s408 = a406 ? a407 : r269;
    assign a409 = ~a403;
    assign a410 = a409 & s757;
    assign a412 = r269 - 8'h1;
    assign s413 = a410 ? a412 : s408;
    assign a414 = w347 == 3'b110;
    assign a415 = s730 & io_lsu_rd_req_ready;
    assign a416 = a415 & a414;
    assign a418 = ~s634;
    assign a419 = a416 & a418;
    assign a420 = r274 + 8'h1;
    assign s421 = a419 ? a420 : r274;
    assign a422 = ~a416;
    assign a423 = a422 & s634;
    assign a425 = r274 - 8'h1;
    assign s426 = a423 ? a425 : s421;
    assign a427 = r343 == 4'h0;
    assign w429 = io_ctrl_start_data[31:0];
    assign w430 = w429[19:0];
    assign a431 = a427 & io_ctrl_start_valid;
    assign s432 = a431 ? w430 : r45;
    assign w433 = io_ctrl_start_data[63:32];
    assign w434 = w433[19:0];
    assign s435 = a431 ? w434 : r50;
    assign a436 = s828 != s435;
    assign a437 = a431 & a436;
    assign s438 = a437 ? io_ctrl_timer : r311;
    assign s440 = a437 ? 4'h1 : r343;
    assign a441 = r343 == 4'h1;
    assign s444 = a441 ? 3'b1 : 3'b0;
    assign a446 = r45 << 20'h2;
    assign a448 = a446 >> 20'h6;
    assign s450 = a441 ? a448 : 20'h0;
    assign a452 = r249 != 8'h2;
    assign a454 = a441 & a452;
    assign s455 = a454 ? 1'b1 : 1'b0;
    assign a457 = a454 & io_lsu_rd_req_ready;
    assign s458 = a457 ? 4'h2 : s440;
    assign a459 = ~io_lsu_rd_req_ready;
    assign a462 = r317[159:128] + 32'h1;
    assign a463 = a454 & a459;
    assign s465 = a463 ? a462 : r317[159:128];
    assign a466 = ~a452;
    assign a467 = r317[159:128] + 32'h1;
    assign a468 = a441 & a466;
    assign s469 = a468 ? a467 : s465;
    assign a470 = r343 == 4'h2;
    assign s472 = a470 ? 3'b10 : s444;
    assign a473 = r45 << 20'h2;
    assign a474 = a473 >> 20'h6;
    assign s475 = a470 ? a474 : s450;
    assign a476 = r254 != 8'h2;
    assign a477 = a470 & a476;
    assign s478 = a477 ? 1'b1 : s455;
    assign a480 = a477 & io_lsu_rd_req_ready;
    assign s481 = a480 ? 4'h3 : s458;
    assign a482 = ~io_lsu_rd_req_ready;
    assign a484 = r317[191:160] + 32'h1;
    assign a485 = a477 & a482;
    assign s487 = a485 ? a484 : r317[191:160];
    assign a488 = ~a476;
    assign a489 = r317[191:160] + 32'h1;
    assign a490 = a470 & a488;
    assign s491 = a490 ? a489 : s487;
    assign a492 = r343 == 4'h3;
    assign a494 = b116 & b140;
    assign a495 = a492 & a494;
    assign s496 = a495 ? b119 : r280;
    assign a498 = r45 & 20'hf;
    assign a500 = a498 << 20'h5;
    assign a501 = s496 >> a500;
    assign s503 = a495 ? a501[19:0] : r55;
    assign s504 = a495 ? 1'b1 : 1'b0;
    assign s505 = a495 ? b143 : r285;
    assign a506 = r45 & 20'hf;
    assign a507 = a506 << 20'h5;
    assign a508 = s505 >> a507;
    assign s510 = a495 ? a508[19:0] : r60;
    assign s511 = a495 ? 1'b1 : 1'b0;
    assign a512 = r45 & 20'hf;
    assign a513 = a512 != 20'hf;
    assign a515 = r45 + 20'h1;
    assign a516 = a515 & 20'hf;
    assign a517 = a516 << 20'h5;
    assign a518 = s505 >> a517;
    assign a520 = a495 & a513;
    assign s521 = a520 ? a518[19:0] : r65;
    assign s523 = a520 ? 4'h6 : s481;
    assign a524 = ~a513;
    assign a526 = a495 & a524;
    assign s527 = a526 ? 4'h4 : s523;
    assign a528 = r343 == 4'h4;
    assign s530 = a528 ? 3'b10 : s472;
    assign a531 = r45 + 20'h1;
    assign a532 = a531 << 20'h2;
    assign a533 = a532 >> 20'h6;
    assign s534 = a528 ? a533 : s475;
    assign a535 = r254 != 8'h2;
    assign a536 = a528 & a535;
    assign s537 = a536 ? 1'b1 : s478;
    assign a539 = a536 & io_lsu_rd_req_ready;
    assign s540 = a539 ? 4'h5 : s527;
    assign a541 = ~io_lsu_rd_req_ready;
    assign a542 = r317[191:160] + 32'h1;
    assign a543 = a536 & a541;
    assign s544 = a543 ? a542 : s491;
    assign a545 = ~a535;
    assign a546 = r317[191:160] + 32'h1;
    assign a547 = a528 & a545;
    assign s548 = a547 ? a546 : s544;
    assign a549 = r343 == 4'h5;
    assign a552 = a549 & b140;
    assign s553 = a552 ? 1'b1 : s511;
    assign s555 = a552 ? b143[19:0] : s521;
    assign s556 = a552 ? 4'h6 : s540;
    assign a557 = ~b140;
    assign a558 = r317[191:160] + 32'h1;
    assign a559 = a549 & a557;
    assign s560 = a559 ? a558 : s548;
    assign a561 = r343 == 4'h6;
    assign a563 = r55 >> 20'h5;
    assign a564 = a563 << 20'h2;
    assign a565 = a564 >> 20'h6;
    assign a566 = a565 == r71;
    assign a567 = a563 & 20'hf;
    assign a568 = a567 << 20'h5;
    assign a569 = r300 >> a568;
    assign a573 = r55 & 20'h1f;
    assign a574 = 32'h1 << a573;
    assign a575 = a569[31:0] & a574;
    assign a576 = a575 != 32'h0;
    assign a577 = r55 << 20'h2;
    assign a578 = a577 >> 20'h6;
    assign a579 = a578 == r76;
    assign a580 = r60 << 20'h2;
    assign a581 = a580 >> 20'h6;
    assign a582 = a561 & a566;
    assign a583 = a582 & a576;
    assign a584 = a583 & a579;
    assign s585 = a584 ? a581 : r81;
    assign a586 = r65 << 20'h2;
    assign a588 = a586 + 20'h3f;
    assign a589 = a588 >> 20'h6;
    assign s590 = a584 ? a589 : r86;
    assign a591 = s688 - s733;
    assign s593 = a584 ? a591[5:0] : r92;
    assign s595 = a584 ? 4'ha : s556;
    assign a596 = ~a579;
    assign a597 = a583 & a596;
    assign s598 = a597 ? a578 : r76;
    assign s600 = a597 ? 4'h9 : s595;
    assign a601 = ~a576;
    assign a603 = a582 & a601;
    assign s604 = a603 ? 4'he : s600;
    assign a605 = ~a566;
    assign a606 = a561 & a605;
    assign s607 = a606 ? a565 : r71;
    assign s609 = a606 ? 4'h7 : s604;
    assign a610 = r343 == 4'h7;
    assign s612 = a610 ? 3'b110 : s530;
    assign s613 = a610 ? r71 : s534;
    assign a614 = r274 != 8'h2;
    assign a615 = a610 & a614;
    assign s616 = a615 ? 1'b1 : s537;
    assign a618 = a615 & io_lsu_rd_req_ready;
    assign s619 = a618 ? 4'h8 : s609;
    assign a620 = ~io_lsu_rd_req_ready;
    assign a622 = r317[319:288] + 32'h1;
    assign a623 = a615 & a620;
    assign s625 = a623 ? a622 : r317[319:288];
    assign a626 = ~a614;
    assign a627 = r317[319:288] + 32'h1;
    assign a628 = a610 & a626;
    assign s629 = a628 ? a627 : s625;
    assign a630 = r343 == 4'h8;
    assign a632 = a630 & b236;
    assign s633 = a632 ? b239 : r300;
    assign s634 = a632 ? 1'b1 : 1'b0;
    assign a635 = r55 >> 20'h5;
    assign a636 = a635 & 20'hf;
    assign a637 = a636 << 20'h5;
    assign a638 = s633 >> a637;
    assign a641 = r55 & 20'h1f;
    assign a642 = 32'h1 << a641;
    assign a643 = a638[31:0] & a642;
    assign a644 = a643 != 32'h0;
    assign a645 = r55 << 20'h2;
    assign a646 = a645 >> 20'h6;
    assign a647 = a646 == r76;
    assign a648 = r60 << 20'h2;
    assign a649 = a648 >> 20'h6;
    assign a650 = a632 & a644;
    assign a651 = a650 & a647;
    assign s652 = a651 ? a649 : s585;
    assign a653 = r65 << 20'h2;
    assign a654 = a653 + 20'h3f;
    assign a655 = a654 >> 20'h6;
    assign s656 = a651 ? a655 : s590;
    assign a657 = s688 - s733;
    assign s659 = a651 ? a657[5:0] : s593;
    assign s660 = a651 ? 4'ha : s619;
    assign a661 = ~a647;
    assign a662 = a650 & a661;
    assign s663 = a662 ? a646 : s598;
    assign s664 = a662 ? 4'h9 : s660;
    assign a665 = ~a644;
    assign a666 = a632 & a665;
    assign s667 = a666 ? 4'he : s664;
    assign a668 = ~b236;
    assign a669 = r317[319:288] + 32'h1;
    assign a670 = a630 & a668;
    assign s671 = a670 ? a669 : s629;
    assign a672 = r343 == 4'h9;
    assign s674 = a672 ? 3'b101 : s612;
    assign a675 = r55 << 20'h2;
    assign a676 = a675 >> 20'h6;
    assign s677 = a672 ? a676 : s613;
    assign a678 = r269 != 8'h2;
    assign a679 = a672 & a678;
    assign s680 = a679 ? 1'b1 : s616;
    assign a681 = r60 << 20'h2;
    assign a682 = a681 >> 20'h6;
    assign a683 = a679 & io_lsu_rd_req_ready;
    assign s684 = a683 ? a682 : s652;
    assign a685 = r65 << 20'h2;
    assign a686 = a685 + 20'h3f;
    assign a687 = a686 >> 20'h6;
    assign s688 = a683 ? a687 : s656;
    assign a689 = s688 - s733;
    assign s691 = a683 ? a689[5:0] : s659;
    assign s692 = a683 ? 4'ha : s667;
    assign a693 = ~io_lsu_rd_req_ready;
    assign a695 = r317[287:256] + 32'h1;
    assign a696 = a679 & a693;
    assign s698 = a696 ? a695 : r317[287:256];
    assign a699 = ~a678;
    assign a700 = r317[287:256] + 32'h1;
    assign a701 = a672 & a699;
    assign s702 = a701 ? a700 : s698;
    assign a703 = r343 == 4'ha;
    assign s705 = a703 ? 3'b11 : s674;
    assign s706 = a703 ? r81 : s677;
    assign a708 = r259 != 8'h20;
    assign a709 = a703 & a708;
    assign s710 = a709 ? 1'b1 : s680;
    assign a712 = a709 & io_lsu_rd_req_ready;
    assign s713 = a712 ? 4'hb : s692;
    assign a714 = ~io_lsu_rd_req_ready;
    assign a716 = r317[223:192] + 32'h1;
    assign a717 = a709 & a714;
    assign s719 = a717 ? a716 : r317[223:192];
    assign a720 = ~a708;
    assign a721 = r317[223:192] + 32'h1;
    assign a722 = a703 & a720;
    assign s723 = a722 ? a721 : s719;
    assign a724 = r343 == 4'hb;
    assign s726 = a724 ? 3'b100 : s705;
    assign s727 = a724 ? r81 : s706;
    assign a728 = r264 != 8'h20;
    assign a729 = a724 & a728;
    assign s730 = a729 ? 1'b1 : s710;
    assign a731 = r81 + 20'h1;
    assign a732 = a729 & io_lsu_rd_req_ready;
    assign s733 = a732 ? a731 : s684;
    assign a734 = s733 != r86;
    assign a735 = a732 & a734;
    assign s736 = a735 ? 4'ha : s713;
    assign a737 = ~a734;
    assign a739 = a732 & a737;
    assign s740 = a739 ? 4'hc : s736;
    assign a741 = ~io_lsu_rd_req_ready;
    assign a743 = r317[255:224] + 32'h1;
    assign a744 = a729 & a741;
    assign s746 = a744 ? a743 : r317[255:224];
    assign a747 = ~a728;
    assign a748 = r317[255:224] + 32'h1;
    assign a749 = a724 & a747;
    assign s750 = a749 ? a748 : s746;
    assign a751 = r343 == 4'hc;
    assign a753 = b197 == r92;
    assign a754 = a751 & a753;
    assign a755 = a754 & b212;
    assign s756 = a755 ? b215 : r305;
    assign s757 = a755 ? 1'b1 : 1'b0;
    assign a758 = r55 & 20'hf;
    assign a759 = a758 << 20'h5;
    assign a760 = s756 >> a759;
    assign s763 = a755 ? a760[31:0] : r98;
    assign a764 = ~b212;
    assign a765 = r55 & 20'hf;
    assign a766 = a765 << 20'h5;
    assign a767 = r305 >> a766;
    assign a770 = a754 & a764;
    assign s771 = a770 ? a767[31:0] : s763;
    assign s772 = a754 ? b167 : r290;
    assign s773 = a754 ? b191 : r295;
    assign s774 = a754 ? 1'b1 : 1'b0;
    assign s775 = a754 ? 1'b1 : 1'b0;
    assign s777 = a754 ? 4'hd : s740;
    assign a778 = ~a753;
    assign a779 = r317[255:224] + 32'h1;
    assign a780 = a751 & a778;
    assign s781 = a780 ? a779 : s750;
    assign a782 = r343 == 4'hd;
    assign a784 = r60 & 20'hf;
    assign a785 = a784 << 20'h5;
    assign a786 = r290 >> a785;
    assign s789 = a782 ? a786[19:0] : 20'h0;
    assign a790 = r60 & 20'hf;
    assign a791 = a790 << 20'h5;
    assign a792 = r295 >> a791;
    assign s796 = a782 ? a792[31:0] : 32'h0;
    assign s799 = a782 ? r98 : 32'h0;
    assign s802 = a782 ? 1'b0 : 1'b0;
    assign s803 = a782 ? 1'b1 : 1'b0;
    assign a804 = r60 + 20'h1;
    assign a805 = a782 & io_pe_ready;
    assign s806 = a805 ? a804 : s510;
    assign a807 = s843 != r65;
    assign a808 = r60 & 20'hf;
    assign a809 = a808 == 20'hf;
    assign a810 = a805 & a807;
    assign a811 = a810 & a809;
    assign s812 = a811 ? b167 : s772;
    assign s813 = a811 ? b191 : s773;
    assign s814 = a811 ? 1'b1 : s774;
    assign s815 = a811 ? 1'b1 : s775;
    assign a816 = ~a807;
    assign a817 = a805 & a816;
    assign s818 = a817 ? 4'he : s777;
    assign a819 = ~io_pe_ready;
    assign a821 = r317[351:320] + 32'h1;
    assign a822 = a782 & a819;
    assign s824 = a822 ? a821 : r317[351:320];
    assign a825 = r343 == 4'he;
    assign a827 = r45 + 20'h1;
    assign s828 = a825 ? a827 : s432;
    assign a829 = s828 != r50;
    assign a830 = r45 & 20'hf;
    assign a831 = a830 != 20'hf;
    assign a832 = s828 & 20'hf;
    assign a833 = a832 << 20'h5;
    assign a834 = r280 >> a833;
    assign a836 = a825 & a829;
    assign a837 = a836 & a831;
    assign s838 = a837 ? a834[19:0] : s503;
    assign a839 = s828 & 20'hf;
    assign a840 = a839 << 20'h5;
    assign a841 = r285 >> a840;
    assign s843 = a837 ? a841[19:0] : s806;
    assign a844 = s828 & 20'hf;
    assign a845 = a844 != 20'hf;
    assign a846 = s828 + 20'h1;
    assign a847 = a846 & 20'hf;
    assign a848 = a847 << 20'h5;
    assign a849 = r285 >> a848;
    assign a851 = a837 & a845;
    assign s852 = a851 ? a849[19:0] : s555;
    assign s853 = a851 ? 4'h6 : s818;
    assign a854 = ~a845;
    assign a855 = a837 & a854;
    assign s856 = a855 ? 4'h4 : s853;
    assign a857 = ~a831;
    assign a858 = a836 & a857;
    assign s859 = a858 ? 4'h1 : s856;
    assign a860 = ~a829;
    assign a862 = a825 & a860;
    assign s863 = a862 ? 4'hf : s859;
    assign a864 = r343 == 4'hf;
    assign s866 = a864 ? 20'h0 : s789;
    assign s867 = a864 ? 32'h0 : s796;
    assign s868 = a864 ? 32'h0 : s799;
    assign s869 = a864 ? 1'b1 : s802;
    assign s870 = a864 ? 1'b1 : s803;
    assign a871 = io_ctrl_timer - r311;
    assign a875 = r317[63:32] < a871[31:0];
    assign s876 = a875 ? r317[63:32] : a871[31:0];
    assign a877 = r317[63:32] == 32'h0;
    assign s878 = a877 ? a871[31:0] : s876;
    assign a879 = a864 & io_pe_ready;
    assign s881 = a879 ? s878 : r317[63:32];
    assign a882 = r317[63:32] > a871[31:0];
    assign s883 = a882 ? r317[63:32] : a871[31:0];
    assign s885 = a879 ? s883 : r317[95:64];
    assign a887 = r317[127:96] + a871[31:0];
    assign s889 = a879 ? a887 : r317[127:96];
    assign a891 = r317[31:0] + 32'h1;
    assign s893 = a879 ? a891 : r317[31:0];
    assign s894 = a879 ? 4'h0 : s863;
    assign a895 = ~io_pe_ready;
    assign a896 = r317[351:320] + 32'h1;
    assign a897 = a864 & a895;
    assign s898 = a897 ? a896 : s824;

    assign io_ctrl_start_ready = a346;
    assign io_ctrl_stats = r317;
    assign io_lsu_rd_req_valid = s730;
    assign io_lsu_rd_req_data = w20;
    assign io_pe_valid = s870;
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
    wire[479:0] l324 = 480'h0;
    wire[511:0] l343 = 512'h0;
    wire[533:0] w14;
    wire b29, b31, b32, b38, b41, b47, b51, b52, b53, b62, b68, a123, a124, a125, a126, a128, a129, a130, a131, a132, a133, a136, w139, a140, w147, a148, a154, a155, a156, a157, a160, a161, w165, a166, a167, a169, a170, a171, a172, a176, a178, a181, a183, a185, a191, a192, a193, s194, a200, a202, a203, a208, s255, a257, a259, a262, a265, s308, a310, a312, a314, a316, s333, a334, a336, a339;
    wire[20:0] w34, b35, b44, w55, b56, b65;
    reg[31:0] m69[0:31];
    reg[31:0] r73, r78, r83, r88;
    reg[19:0] r94;
    wire[63:0] w99;
    reg[63:0] r100;
    wire[31:0] s111, a121, a122, a127, a135, s137, a145, a152, a158, s159, a163, s164, a173, a174, a175, s177, a179, a180, s182, a184, s186, s198, a199, s201, s204, s205, a261, s264, a313, s315, a338, s341;
    reg[1:0] r115;
    wire[19:0] w138, w146, a150, a189, s190, a195, a247, a249, s251, a302, a303, a305, s306, a320, a321, a322, s323, a327, a329, a330;
    wire[4:0] w151, s197;
    wire[1:0] s207, s245, s258, s301, s311, s318, s335;
    wire[511:0] w211, s253, w268, s307, w326, a331, s332;

    assign w14 = {s332, s323, s318};
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
    m69[s197] = s111;
    always @ (posedge clk)
    r73 <= reset ? 32'h0 : s205;
    always @ (posedge clk)
    r78 <= reset ? 32'h0 : s204;
    always @ (posedge clk)
    r83 <= reset ? 32'h0 : s186;
    always @ (posedge clk)
    r88 <= reset ? 32'h0 : s164;
    always @ (posedge clk)
    r94 <= reset ? 20'h0 : s190;
    assign w99 = {s341, s315};
    always @ (posedge clk)
    r100 <= reset ? l97 : w99;
    assign s111 = s194 ? s198 : m69[s197];
    always @ (posedge clk)
    r115 <= reset ? 2'b0 : s335;
    assign a121 = 32'h1 << w151;
    assign a122 = 32'h1 << s197;
    assign a123 = ~b62;
    assign a124 = 2'b0 == r115;
    assign a125 = a124 | a123;
    assign a126 = ~b41;
    assign a127 = r83 & a121;
    assign a128 = 32'h0 == a127;
    assign a129 = a125 & a128;
    assign a130 = a129 | a126;
    assign a131 = 32'h0 == r88;
    assign a132 = r115 == 2'b0;
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
    assign a154 = 2'b0 == r115;
    assign a155 = a154 & b62;
    assign a156 = ~a155;
    assign a157 = a140 & a156;
    assign a158 = r88 + 32'h1;
    assign s159 = a157 ? a158 : r88;
    assign a160 = ~a140;
    assign a161 = a160 & a155;
    assign a163 = r88 - 32'h1;
    assign s164 = a161 ? a163 : s159;
    assign w165 = w55[20];
    assign a166 = ~w165;
    assign a167 = a148 & a166;
    assign a169 = ~b65[20];
    assign a170 = a155 & a169;
    assign a171 = a121 != a122;
    assign a172 = a167 & a171;
    assign a173 = ~a122;
    assign a174 = r83 & a173;
    assign a175 = a174 | a121;
    assign a176 = a170 & a172;
    assign s177 = a176 ? a175 : r83;
    assign a178 = ~a172;
    assign a179 = ~a122;
    assign a180 = r83 & a179;
    assign a181 = a170 & a178;
    assign s182 = a181 ? a180 : s177;
    assign a183 = ~a170;
    assign a184 = r83 | a121;
    assign a185 = a183 & a167;
    assign s186 = a185 ? a184 : s182;
    assign a189 = b65[19:0] & 20'hfffe0;
    assign s190 = a170 ? a189 : r94;
    assign a191 = r115 == 2'b0;
    assign a192 = ~b65[20];
    assign a193 = b62 & a192;
    assign s194 = a191 ? a193 : 1'b0;
    assign a195 = b65[19:0] & 20'h1f;
    assign s197 = a191 ? a195[4:0] : 5'b0;
    assign s198 = a191 ? a152 : 32'h0;
    assign a199 = r73 | a122;
    assign a200 = a191 & s194;
    assign s201 = a200 ? a199 : r73;
    assign a202 = b62 & b65[20];
    assign a203 = a191 & a202;
    assign s204 = a203 ? r73 : r78;
    assign s205 = a203 ? 32'h0 : s201;
    assign s207 = a203 ? 2'b1 : r115;
    assign a208 = r115 == 2'b1;
    assign w211 = {m69[5'b1111], m69[5'b1110], m69[5'b1101], m69[5'b1100], m69[5'b1011], m69[5'b1010], m69[5'b1001], m69[5'b1000], m69[5'b111], m69[5'b110], m69[5'b101], m69[5'b100], m69[5'b11], m69[5'b10], m69[5'b1], m69[5'b0]};
    assign s245 = a208 ? 2'b0 : 2'b0;
    assign a247 = r94 << 20'h2;
    assign a249 = a247 >> 20'h6;
    assign s251 = a208 ? a249 : 20'h0;
    assign s253 = a208 ? w211 : l343;
    assign s255 = a208 ? 1'b1 : 1'b0;
    assign a257 = a208 & io_lsu_wr_req_ready;
    assign s258 = a257 ? 2'b10 : s207;
    assign a259 = ~io_lsu_wr_req_ready;
    assign a261 = r100[31:0] + 32'h1;
    assign a262 = a208 & a259;
    assign s264 = a262 ? a261 : r100[31:0];
    assign a265 = r115 == 2'b10;
    assign w268 = {m69[5'b11111], m69[5'b11110], m69[5'b11101], m69[5'b11100], m69[5'b11011], m69[5'b11010], m69[5'b11001], m69[5'b11000], m69[5'b10111], m69[5'b10110], m69[5'b10101], m69[5'b10100], m69[5'b10011], m69[5'b10010], m69[5'b10001], m69[5'b10000]};
    assign s301 = a265 ? 2'b0 : s245;
    assign a302 = r94 << 20'h2;
    assign a303 = a302 >> 20'h6;
    assign a305 = a303 + 20'h1;
    assign s306 = a265 ? a305 : s251;
    assign s307 = a265 ? w268 : s253;
    assign s308 = a265 ? 1'b1 : s255;
    assign a310 = a265 & io_lsu_wr_req_ready;
    assign s311 = a310 ? 2'b11 : s258;
    assign a312 = ~io_lsu_wr_req_ready;
    assign a313 = r100[31:0] + 32'h1;
    assign a314 = a265 & a312;
    assign s315 = a314 ? a313 : s264;
    assign a316 = r115 == 2'b11;
    assign s318 = a316 ? 2'b1 : s301;
    assign a320 = r94 >> 20'h5;
    assign a321 = a320 << 20'h2;
    assign a322 = a321 >> 20'h6;
    assign s323 = a316 ? a322 : s306;
    assign w326 = {l324, r78};
    assign a327 = r94 >> 20'h5;
    assign a329 = a327 & 20'hf;
    assign a330 = a329 << 20'h5;
    assign a331 = w326 << a330;
    assign s332 = a316 ? a331 : s307;
    assign s333 = a316 ? 1'b1 : s308;
    assign a334 = a316 & io_lsu_wr_req_ready;
    assign s335 = a334 ? 2'b0 : s311;
    assign a336 = ~io_lsu_wr_req_ready;
    assign a338 = r100[63:32] + 32'h1;
    assign a339 = a316 & a336;
    assign s341 = a339 ? a338 : r100[63:32];

    assign io_req_ready = b38;
    assign io_lsu_wr_req_valid = s333;
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
    wire[511:0] l259 = 512'h0;
    reg[21:0] m1[0:1];
    reg[511:0] m3[0:1];
    reg r8, r19, r95, r96, r97, r98, r102;
    reg[19:0] r14;
    wire[533:0] w35, s129;
    wire[511:0] s51, a119, s120, a156, s157, s180, s230, s243;
    wire[21:0] s58, w124, s126, w162, s164, w182, s183, w201, s203, w217, s219;
    reg[2:0] r62;
    reg[533:0] r68;
    wire[1:0] w76, w85, a86, w91, w109, a110, w121, a122, w148, w158, w159, a160, w196, w207, a208, a213, w214, a215, s225, w237, s240;
    wire a77, a80, a81, s82, a87, s88, a92, s93, a99, a105, a106, s107, a111, a113, a114, a115, s116, s117, a127, a128, a132, a133, a134, s135, a138, a142, s143, a147, a149, a150, a151, s152, s153, s154, s166, a167, a168, s169, a172, a173, a175, a176, s177, s178, s179, s185, a186, a187, s188, a190, a191, a193, s195, a197, a198, s199, a206, a209, a210, a211, s212, a221, s223, s231, a232, a234, s236, a238, a239, s244, a245, a246, s247, a248, a249, a251, a252, a253, s254, a255, a256;
    wire[19:0] w79, w125, w145, w146, w163, s165, s184, w202, w218, w226, s228, w241, s242;
    wire[2:0] s131, s137, s171, s174, s189, s192, s205, s220, s233, s250, s257;

    always @(posedge clk)
    m1[s236] = s58;
    always @(posedge clk)
    m3[s236] = s51;
    always @ (posedge clk)
    r8 <= reset ? 1'b0 : s185;
    always @ (posedge clk)
    r14 <= reset ? 20'h0 : s184;
    always @ (posedge clk)
    r19 <= reset ? 1'b0 : s254;
    assign w35 = {s243, s242, s240};
    assign s51 = s177 ? s180 : m3[s236];
    assign s58 = s212 ? s219 : m1[s236];
    always @ (posedge clk)
    r62 <= reset ? 3'b0 : s257;
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
    assign a99 = r62 == 3'b0;
    always @ (posedge clk)
    r102 <= reset ? 1'b0 : s188;
    assign a105 = r62 == 3'b0;
    assign a106 = a105 & io_enq_valid;
    assign s107 = a106 ? r8 : 1'b0;
    assign w109 = m1[s236][1:0];
    assign a110 = w109 & io_enq_data[1:0];
    assign a111 = a110 != 2'b0;
    assign a113 = io_enq_data[21:2] == r14;
    assign a114 = a113 & a111;
    assign a115 = a106 & a114;
    assign s116 = a115 ? 1'b1 : 1'b0;
    assign s117 = a115 ? 1'b1 : 1'b0;
    assign a119 = m3[s236] | io_enq_data[533:22];
    assign s120 = a115 ? a119 : l259;
    assign w121 = m1[s236][1:0];
    assign a122 = w121 | io_enq_data[1:0];
    assign w124 = {w125, a122};
    assign w125 = m1[s236][21:2];
    assign s126 = a115 ? w124 : 22'b0;
    assign a127 = ~a114;
    assign a128 = a106 & a127;
    assign s129 = a128 ? io_enq_data : r68;
    assign s131 = a128 ? 3'b1 : r62;
    assign a132 = ~io_enq_valid;
    assign a133 = a105 & a132;
    assign a134 = a133 & io_flush;
    assign s135 = a134 ? 1'b0 : r19;
    assign s137 = a134 ? 3'b100 : s131;
    assign a138 = r62 == 3'b1;
    assign a142 = a138 & r98;
    assign s143 = a142 ? r95 : 1'b0;
    assign w145 = r68[21:2];
    assign w146 = m1[s143][21:2];
    assign a147 = w146 == w145;
    assign w148 = m1[s143][1:0];
    assign a149 = w148 != 2'b0;
    assign a150 = a149 & a147;
    assign a151 = a142 & a150;
    assign s152 = a151 ? 1'b1 : s116;
    assign s153 = a151 ? 1'b1 : s117;
    assign s154 = a151 ? r95 : s107;
    assign a156 = m3[s236] | r68[533:22];
    assign s157 = a151 ? a156 : s120;
    assign w158 = r68[1:0];
    assign w159 = m1[s236][1:0];
    assign a160 = w159 | w158;
    assign w162 = {w163, a160};
    assign w163 = m1[s236][21:2];
    assign s164 = a151 ? w162 : s126;
    assign s165 = a151 ? w145 : r14;
    assign s166 = a151 ? r95 : r8;
    assign a167 = r95 != r96;
    assign a168 = a151 & a167;
    assign s169 = a168 ? r96 : r102;
    assign s171 = a168 ? 3'b10 : s137;
    assign a172 = ~a167;
    assign a173 = a151 & a172;
    assign s174 = a173 ? 3'b0 : s171;
    assign a175 = ~a150;
    assign a176 = a142 & a175;
    assign s177 = a176 ? 1'b1 : s152;
    assign s178 = a176 ? 1'b1 : s153;
    assign s179 = a176 ? r97 : s154;
    assign s180 = a176 ? r68[533:22] : s157;
    assign w182 = {w145, w158};
    assign s183 = a176 ? w182 : s164;
    assign s184 = a176 ? w145 : s165;
    assign s185 = a176 ? r97 : s166;
    assign a186 = r97 != r96;
    assign a187 = a176 & a186;
    assign s188 = a187 ? r96 : s169;
    assign s189 = a187 ? 3'b10 : s174;
    assign a190 = ~a186;
    assign a191 = a176 & a190;
    assign s192 = a191 ? 3'b0 : s189;
    assign a193 = r62 == 3'b10;
    assign s195 = a193 ? r102 : s179;
    assign w196 = m1[s236][1:0];
    assign a197 = w196 == w158;
    assign a198 = a193 & a197;
    assign s199 = a198 ? 1'b1 : s178;
    assign w201 = {w202, 2'b0};
    assign w202 = m1[s236][21:2];
    assign s203 = a198 ? w201 : s183;
    assign s205 = a198 ? 3'b11 : s192;
    assign a206 = ~a197;
    assign w207 = m1[s236][1:0];
    assign a208 = w207 & w158;
    assign a209 = a208 != 2'b0;
    assign a210 = a193 & a206;
    assign a211 = a210 & a209;
    assign s212 = a211 ? 1'b1 : s199;
    assign a213 = ~w158;
    assign w214 = m1[s236][1:0];
    assign a215 = w214 & a213;
    assign w217 = {w218, a215};
    assign w218 = m1[s236][21:2];
    assign s219 = a211 ? w217 : s203;
    assign s220 = a210 ? 3'b0 : s205;
    assign a221 = r62 == 3'b11;
    assign s223 = a221 ? r102 : s195;
    assign s225 = a221 ? w158 : 2'b0;
    assign w226 = m1[s236][21:2];
    assign s228 = a221 ? w226 : 20'h0;
    assign s230 = a221 ? m3[s236] : l259;
    assign s231 = a221 ? 1'b1 : 1'b0;
    assign a232 = a221 & io_evict_ready;
    assign s233 = a232 ? 3'b0 : s220;
    assign a234 = r62 == 3'b100;
    assign s236 = a234 ? r19 : s223;
    assign w237 = m1[s236][1:0];
    assign a238 = w237 != 2'b0;
    assign a239 = a234 & a238;
    assign s240 = a239 ? 2'b0 : s225;
    assign w241 = m1[s236][21:2];
    assign s242 = a239 ? w241 : s228;
    assign s243 = a239 ? m3[s236] : s230;
    assign s244 = a239 ? 1'b1 : s231;
    assign a245 = r19 + 1'b1;
    assign a246 = a239 & io_evict_ready;
    assign s247 = a246 ? a245 : s135;
    assign a248 = r19 == 1'b1;
    assign a249 = a246 & a248;
    assign s250 = a249 ? 3'b0 : s233;
    assign a251 = ~a238;
    assign a252 = r19 + 1'b1;
    assign a253 = a234 & a251;
    assign s254 = a253 ? a252 : s247;
    assign a255 = r19 == 1'b1;
    assign a256 = a253 & a255;
    assign s257 = a256 ? 3'b0 : s250;

    assign io_enq_ready = a99;
    assign io_evict_valid = s244;
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
    wire[533:0] l317 = 534'b0;
    wire[511:0] l350 = 512'h0;
    wire[514:0] w74, w92, w107;
    wire b131, b133, b134, b140, b143, b149, b152, b158, b161, b167, b174, b175, b176, b182, b185, b191, b194, b200, b203, b209, b216, b217, b218, b224, b227, b233, b236, a237, a259, a266, a271, a276, a281, a286, a311, a312, a315, a316, a328, a330, a361, a369, a374, a382, s391, a392, a400, a402, a408, a409, s416, a417, a419, a420, s421, s425, a428, a430, a440, a441, a442, a443, a445, a446, a448, a449, a451, s453, a454, a456, s466, a467, a469, s471, a472, a474, a476, a481, a482, a484, a485, a486, a487;
    wire[22:0] b137, b146, b155, b164;
    wire[2:0] b170, b212, w256, w394, s439, s444, s447, s450, s455, s468, s473, s477, w480, w483;
    wire[533:0] b179, b188, b197, b206, w220, b221, b230, w319;
    reg r241, r308, r342;
    reg[19:0] r247, r347;
    reg[13:0] r253, r358;
    wire[131:0] w260;
    wire[19:0] w261, s264, w268, s269, w273, s274, w278, s279, w283, s284, w289, s290, w292, a294, w371, s372, w376, s377, a381, s383, s401, s404, a407, s410, s432, s463;
    wire[39:0] w288, w370;
    wire[5:0] w297, w479;
    wire[13:0] w300, w388, s389, w414, s415;
    reg[2:0] r303, r325;
    reg[533:0] r320;
    wire[31:0] s333, s334, a422, a423, s424, a427;
    reg[31:0] r337;
    reg[511:0] r353;
    wire[4:0] w363, w397;
    wire[1:0] w364, w395, s435, s461;
    wire[511:0] s385, s412, s438, s465;

    assign w74 = {io_qpi_rd_rsp_data, w483};
    assign w92 = {io_qpi_rd_rsp_data, w483};
    assign w107 = {io_qpi_rd_rsp_data, w483};
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
    assign b209 = a312;
    assign b216 = clk;
    assign b217 = reset;
    spmv_write_cache __module28__(.clk(b216), .reset(b217), .io_enq_valid(b218), .io_enq_data(b221), .io_evict_ready(b233), .io_flush(b236), .io_enq_ready(b224), .io_evict_valid(b227), .io_evict_data(b230));
    assign b218 = s466;
    assign w220 = {s465, s463, s461};
    assign b221 = w220;
    assign b233 = a316;
    assign b236 = s471;
    assign a237 = ~io_qpi_rd_req_almostfull;
    always @ (posedge clk)
    r241 <= reset ? 1'b0 : b161;
    always @ (posedge clk)
    r247 <= reset ? 20'h0 : a294;
    always @ (posedge clk)
    r253 <= reset ? 14'b0 : w300;
    assign w256 = b164[2:0];
    assign a259 = w256 == 3'b0;
    assign w260 = io_ctx[131:0];
    assign w261 = w260[51:32];
    assign s264 = a259 ? w261 : w292;
    assign a266 = w256 == 3'b1;
    assign w268 = w260[71:52];
    assign s269 = a266 ? w268 : s264;
    assign a271 = w256 == 3'b10;
    assign w273 = w260[91:72];
    assign s274 = a271 ? w273 : s269;
    assign a276 = w256 == 3'b11;
    assign w278 = w260[111:92];
    assign s279 = a276 ? w278 : s274;
    assign a281 = w256 == 3'b100;
    assign w283 = w260[131:112];
    assign s284 = a281 ? w283 : s279;
    assign a286 = w256 == 3'b101;
    assign w288 = io_ctx[171:132];
    assign w289 = w288[19:0];
    assign s290 = a286 ? w289 : s284;
    assign w292 = w288[39:20];
    assign a294 = s290 + b164[22:3];
    assign w297 = {b170, w256};
    assign w300 = {8'h0, w297};
    always @ (posedge clk)
    r303 <= reset ? 3'b0 : s477;
    always @ (posedge clk)
    r308 <= reset ? 1'b0 : s425;
    assign a311 = r308 == 1'b0;
    assign a312 = r303 == 3'b0;
    assign a315 = ~s453;
    assign a316 = a311 & a315;
    assign w319 = {s438, s432, s435};
    always @ (posedge clk)
    r320 <= reset ? l317 : w319;
    always @ (posedge clk)
    r325 <= reset ? 3'b0 : s439;
    assign a328 = io_qpi_wr_rsp0_valid & io_qpi_wr_rsp1_valid;
    assign a330 = io_qpi_wr_rsp0_valid | io_qpi_wr_rsp1_valid;
    assign s333 = a330 ? 32'h1 : 32'h0;
    assign s334 = a328 ? 32'h2 : s333;
    always @ (posedge clk)
    r337 <= reset ? 32'h0 : s424;
    always @ (posedge clk)
    r342 <= reset ? 1'b0 : s421;
    always @ (posedge clk)
    r347 <= reset ? 20'h0 : s410;
    always @ (posedge clk)
    r353 <= reset ? l350 : s412;
    always @ (posedge clk)
    r358 <= reset ? 14'b0 : s415;
    assign a361 = r308 == 1'b0;
    assign w363 = {r325, w364};
    assign w364 = r320[1:0];
    assign a369 = w364 == 2'b0;
    assign w370 = io_ctx[211:172];
    assign w371 = w370[19:0];
    assign s372 = a369 ? w371 : io_ctx[231:212];
    assign a374 = w364 == 2'b1;
    assign w376 = w370[39:20];
    assign s377 = a374 ? w376 : s372;
    assign a381 = s377 + r320[21:2];
    assign a382 = a361 & s453;
    assign s383 = a382 ? a381 : r347;
    assign s385 = a382 ? r320[533:22] : r353;
    assign w388 = {9'b0, w363};
    assign s389 = a382 ? w388 : r358;
    assign s391 = a382 ? 1'b1 : r308;
    assign a392 = ~s453;
    assign w394 = {1'b0, w395};
    assign w395 = b230[1:0];
    assign w397 = {w394, 2'b1};
    assign a400 = 2'b1 == 2'b0;
    assign s401 = a400 ? w371 : io_ctx[231:212];
    assign a402 = 2'b1 == 2'b1;
    assign s404 = a402 ? w376 : s401;
    assign a407 = s404 + b230[21:2];
    assign a408 = a361 & a392;
    assign a409 = a408 & b227;
    assign s410 = a409 ? a407 : s383;
    assign s412 = a409 ? b230[533:22] : s385;
    assign w414 = {9'b0, w397};
    assign s415 = a409 ? w414 : s389;
    assign s416 = a409 ? 1'b1 : s391;
    assign a417 = r308 == 1'b1;
    assign a419 = ~io_qpi_wr_req_almostfull;
    assign a420 = a417 & a419;
    assign s421 = a420 ? 1'b1 : 1'b0;
    assign a422 = r337 + 32'h1;
    assign a423 = a422 - s334;
    assign s424 = a420 ? a423 : a427;
    assign s425 = a420 ? 1'b0 : s416;
    assign a427 = r337 - s334;
    assign a428 = r303 == 3'b0;
    assign a430 = a428 & b203;
    assign s432 = a430 ? b206[21:2] : r320[21:2];
    assign s435 = a430 ? b206[1:0] : r320[1:0];
    assign s438 = a430 ? b206[533:22] : r320[533:22];
    assign s439 = a430 ? b212 : r325;
    assign a440 = b206[1:0] == 2'b1;
    assign a441 = b212 == 3'b100;
    assign a442 = a430 & a440;
    assign a443 = a442 & a441;
    assign s444 = a443 ? 3'b11 : r303;
    assign a445 = ~a441;
    assign a446 = a442 & a445;
    assign s447 = a446 ? 3'b10 : s444;
    assign a448 = ~a440;
    assign a449 = a430 & a448;
    assign s450 = a449 ? 3'b1 : s447;
    assign a451 = r303 == 3'b1;
    assign s453 = a451 ? 1'b1 : 1'b0;
    assign a454 = a451 & a311;
    assign s455 = a454 ? 3'b0 : s450;
    assign a456 = r303 == 3'b10;
    assign s461 = a456 ? r325[1:0] : 2'b0;
    assign s463 = a456 ? r320[21:2] : 20'h0;
    assign s465 = a456 ? r320[533:22] : l350;
    assign s466 = a456 ? 1'b1 : 1'b0;
    assign a467 = a456 & b224;
    assign s468 = a467 ? 3'b0 : s455;
    assign a469 = r303 == 3'b11;
    assign s471 = a469 ? 1'b1 : 1'b0;
    assign a472 = a469 & b224;
    assign s473 = a472 ? 3'b100 : s468;
    assign a474 = r303 == 3'b100;
    assign a476 = a474 & b224;
    assign s477 = a476 ? 3'b0 : s473;
    assign w479 = io_qpi_rd_rsp_mdata[5:0];
    assign w480 = w479[5:3];
    assign a481 = w480 == 3'b100;
    assign a482 = io_qpi_rd_rsp_valid & a481;
    assign w483 = w479[2:0];
    assign a484 = w480 == 3'b1;
    assign a485 = io_qpi_rd_rsp_valid & a484;
    assign a486 = w480 == 3'b10;
    assign a487 = io_qpi_rd_rsp_valid & a486;

    assign io_qpi_rd_req_addr = r247;
    assign io_qpi_rd_req_mdata = r253;
    assign io_qpi_rd_req_valid = r241;
    assign io_qpi_wr_req_addr = r347;
    assign io_qpi_wr_req_mdata = r358;
    assign io_qpi_wr_req_data = r353;
    assign io_qpi_wr_req_valid = r342;
    assign io_ctrl_rd_req_ready = b158;
    assign io_ctrl_wr_req_ready = b200;
    assign io_ctrl_rd_rsp_valid = a482;
    assign io_ctrl_rd_rsp_data = w74;
    assign io_ctrl_outstanding_writes = r337;
    assign io_walkers_0_rd_req_ready = b140;
    assign io_walkers_0_rd_rsp_valid = a485;
    assign io_walkers_0_rd_rsp_data = w92;
    assign io_walkers_1_rd_req_ready = b149;
    assign io_walkers_1_rd_rsp_valid = a487;
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
    wire[415:0] l517 = 416'h0;
    wire[511:0] l549 = 512'h0;
    wire[543:0] l588 = 544'h20;
    wire b62, b64, b65, b71, b80, b86, b89, b95, b101, b105, b106, b107, b113, b122, b128, b131, b137, b143, b147, b148, b149, b155, b158, b164, b170, b174, b175, b176, b182, b185, b191, b197, b201, b202, b203, b212, b221, b224, b236, b242, b248, b254, b260, b263, b269, b272, b281, b287, b290, b296, b302, b305, b311, b317, b320, b326, b330, b331, b332, b341, b347, a424, a425, a430, a431, a432, a437, a438, a439, a441, a442, a443, a444, s456, a459, a461, s462, a463, a470, a471, s472, a475, a477, a479, a481, a484, a487, a489, a491, a493, a494, a496, a498, s503, a505, a507, a528, a530, s534, a536, a538, a540, a542, a544, a545, s547, a555, a556, s557, a558, a559, a564, a572, a580, a585, s587, a601, a602, a603, a604, a606, a607, a609, a610, a612, a617, s619, a631, a632, a633, a634, a636, a637, a639, a640;
    wire[63:0] b68, b74, b110, b116, b167, b194, a409, s586, s618;
    wire[351:0] b77, b119;
    wire[22:0] b83, b125, w256, b257, b284, b299;
    wire[514:0] b92, b134, b275, b293, b308;
    wire[84:0] b98, b140, b152, b179;
    wire[533:0] b161, b188, w265, b266, b314, b323;
    wire[19:0] b206, b227, w399, s445, s455, s468, a474, s476, w513, s515, a596, s597, a627, s628;
    wire[13:0] b209, b215, b230, b239, b245;
    wire[511:0] b218, b233, b251, b335, b344, w519, w523, w527, s529, s531, s533, w560;
    wire[31:0] b278, w398, w428, w434, a435, a436, a447, a449, a451, a453, a483, s486, a488, s490, w567, s568, s576, s591, s595, s622, s626;
    wire[543:0] w353, a589, a620;
    reg[543:0] r354;
    reg[4:0] r360;
    reg[31:0] r366;
    reg[19:0] r372, r377, r382;
    reg[1:0] r388, r552;
    wire[95:0] w393;
    reg[95:0] r394;
    wire[131:0] w397;
    reg[63:0] r405;
    reg[2:0] r413;
    reg r419;
    wire[2:0] w429, s458, s466, s480, s497, s506, s541, s546;
    wire[1:0] s502, s510, a535, s537, s579, s605, s608, s611, s635, s638, s641;
    wire[415:0] w521, w525;
    wire[4:0] s563, s578, a599, s600, a629, s630;
    wire[479:0] w570, s571, s573, s593, s624;

    assign b62 = clk;
    assign b64 = reset;
    spmv_dcsc_walk __module1__(.clk(b62), .reset(b64), .io_ctrl_start_valid(b65), .io_ctrl_start_data(b68), .io_ctrl_timer(b74), .io_lsu_rd_req_ready(b86), .io_lsu_rd_rsp_valid(b89), .io_lsu_rd_rsp_data(b92), .io_pe_ready(b101), .io_ctrl_start_ready(b71), .io_ctrl_stats(b77), .io_lsu_rd_req_valid(b80), .io_lsu_rd_req_data(b83), .io_pe_valid(b95), .io_pe_data(b98));
    assign b65 = s587;
    assign b68 = s586;
    assign b74 = r405;
    assign b86 = b287;
    assign b89 = b290;
    assign b92 = b293;
    assign b101 = b155;
    assign b105 = clk;
    assign b106 = reset;
    spmv_dcsc_walk __module8__(.clk(b105), .reset(b106), .io_ctrl_start_valid(b107), .io_ctrl_start_data(b110), .io_ctrl_timer(b116), .io_lsu_rd_req_ready(b128), .io_lsu_rd_rsp_valid(b131), .io_lsu_rd_rsp_data(b134), .io_pe_ready(b143), .io_ctrl_start_ready(b113), .io_ctrl_stats(b119), .io_lsu_rd_req_valid(b122), .io_lsu_rd_req_data(b125), .io_pe_valid(b137), .io_pe_data(b140));
    assign b107 = s619;
    assign b110 = s618;
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
    assign b254 = s472;
    assign w256 = {s468, s466};
    assign b257 = w256;
    assign b263 = s534;
    assign w265 = {s533, s515, s510};
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
    assign b332 = a425;
    assign b335 = b275[514:3];
    assign b347 = s557;
    assign w353 = {s626, s624, s622};
    always @ (posedge clk)
    r354 <= reset ? l351 : w353;
    always @ (posedge clk)
    r360 <= reset ? 5'b0 : s630;
    always @ (posedge clk)
    r366 <= reset ? 32'h0 : a436;
    always @ (posedge clk)
    r372 <= reset ? 20'h0 : s476;
    always @ (posedge clk)
    r377 <= reset ? 20'h0 : s455;
    always @ (posedge clk)
    r382 <= reset ? 20'h0 : s628;
    always @ (posedge clk)
    r388 <= reset ? 2'b0 : s537;
    assign w393 = {r394[95:32], s490};
    always @ (posedge clk)
    r394 <= reset ? l391 : w393;
    assign w397 = io_ctx[131:0];
    assign w398 = w397[31:0];
    assign w399 = w398[19:0];
    always @ (posedge clk)
    r405 <= reset ? l402 : a409;
    assign a409 = r405 + l408;
    always @ (posedge clk)
    r413 <= reset ? 3'b0 : s546;
    always @ (posedge clk)
    r419 <= reset ? 1'b0 : s547;
    assign a424 = b275[2:0] == 3'b0;
    assign a425 = b272 & a424;
    assign w428 = {31'b0, s557};
    assign w429 = w256[2:0];
    assign a430 = w429 == 3'b0;
    assign a431 = s472 & b260;
    assign a432 = a431 & a430;
    assign w434 = {31'b0, a432};
    assign a435 = r366 + w434;
    assign a436 = a435 - w428;
    assign a437 = b71 & b170;
    assign a438 = a437 & b113;
    assign a439 = a438 & b197;
    assign a441 = r413 == 3'b0;
    assign a442 = w398 != 32'h0;
    assign a443 = a441 & io_start;
    assign a444 = a443 & a442;
    assign s445 = a444 ? 20'h0 : r372;
    assign a447 = w398 + 32'h1;
    assign a449 = a447 << 32'h2;
    assign a451 = a449 + 32'h3f;
    assign a453 = a451 >> 32'h6;
    assign s455 = a444 ? a453[19:0] : r377;
    assign s456 = a444 ? 1'b0 : r419;
    assign s458 = a444 ? 3'b1 : r413;
    assign a459 = ~a442;
    assign a461 = a443 & a459;
    assign s462 = a461 ? 1'b1 : s456;
    assign a463 = r413 == 3'b1;
    assign s466 = a463 ? 3'b0 : 3'b0;
    assign s468 = a463 ? r372 : 20'h0;
    assign a470 = r366 != 32'h4;
    assign a471 = a463 & a470;
    assign s472 = a471 ? 1'b1 : 1'b0;
    assign a474 = r372 + 20'h1;
    assign a475 = a471 & b260;
    assign s476 = a475 ? a474 : s445;
    assign a477 = s476 == r377;
    assign a479 = a475 & a477;
    assign s480 = a479 ? 3'b10 : s458;
    assign a481 = ~b260;
    assign a483 = r394[31:0] + 32'h1;
    assign a484 = a471 & a481;
    assign s486 = a484 ? a483 : r394[31:0];
    assign a487 = ~a470;
    assign a488 = r394[31:0] + 32'h1;
    assign a489 = a463 & a487;
    assign s490 = a489 ? a488 : s486;
    assign a491 = r413 == 3'b10;
    assign a493 = r382 == w399;
    assign a494 = a493 & a439;
    assign a496 = a491 & a494;
    assign s497 = a496 ? 3'b11 : s480;
    assign a498 = r413 == 3'b11;
    assign s502 = a498 ? 2'b1 : 2'b0;
    assign s503 = a498 ? 1'b1 : 1'b0;
    assign a505 = a498 & b269;
    assign s506 = a505 ? 3'b100 : s497;
    assign a507 = r413 == 3'b100;
    assign s510 = a507 ? 2'b10 : s502;
    assign w513 = {18'b0, r388};
    assign s515 = a507 ? w513 : 20'h0;
    assign w519 = {l517, r394};
    assign w521 = {b167, b77};
    assign w523 = {l391, w521};
    assign w525 = {b194, b119};
    assign w527 = {l391, w525};
    assign a528 = r388 == 2'b1;
    assign s529 = a528 ? w523 : w527;
    assign a530 = r388 == 2'b0;
    assign s531 = a530 ? w519 : s529;
    assign s533 = a507 ? s531 : l549;
    assign s534 = a507 ? 1'b1 : s503;
    assign a535 = r388 + 2'b1;
    assign a536 = a507 & b269;
    assign s537 = a536 ? a535 : r388;
    assign a538 = r388 == 2'b10;
    assign a540 = a536 & a538;
    assign s541 = a540 ? 3'b101 : s506;
    assign a542 = r413 == 3'b101;
    assign a544 = b278 == 32'h0;
    assign a545 = a542 & a544;
    assign s546 = a545 ? 3'b0 : s541;
    assign s547 = a545 ? 1'b1 : s462;
    always @ (posedge clk)
    r552 <= reset ? 2'b0 : s641;
    assign a555 = r552 == 2'b0;
    assign a556 = a555 & b341;
    assign s557 = a556 ? 1'b1 : 1'b0;
    assign a558 = r360 == 5'b0;
    assign a559 = a556 & a558;
    assign w560 = r354[511:0];
    assign s563 = a559 ? 5'b10000 : r360;
    assign a564 = ~a558;
    assign w567 = w560[31:0];
    assign s568 = a559 ? b344[31:0] : w567;
    assign w570 = w560[511:32];
    assign s571 = a559 ? b344[511:32] : w570;
    assign a572 = a556 & a564;
    assign s573 = a572 ? b344[479:0] : s571;
    assign s576 = a572 ? b344[511:480] : r354[543:512];
    assign s578 = a572 ? 5'b10001 : s563;
    assign s579 = a556 ? 2'b1 : r552;
    assign a580 = r552 == 2'b1;
    assign a585 = a580 & b71;
    assign s586 = a585 ? r354[63:0] : l402;
    assign s587 = a585 ? 1'b1 : 1'b0;
    assign a589 = r354 >> l588;
    assign s591 = a585 ? a589[31:0] : s568;
    assign s593 = a585 ? a589[511:32] : s573;
    assign s595 = a585 ? a589[543:512] : s576;
    assign a596 = r382 + 20'h1;
    assign s597 = a585 ? a596 : r382;
    assign a599 = r360 - 5'b1;
    assign s600 = a585 ? a599 : s578;
    assign a601 = s630 != 5'b1;
    assign a602 = s628 != w399;
    assign a603 = a602 & a601;
    assign a604 = a585 & a603;
    assign s605 = a604 ? 2'b10 : s579;
    assign a606 = ~a603;
    assign a607 = a585 & a606;
    assign s608 = a607 ? 2'b0 : s605;
    assign a609 = ~b71;
    assign a610 = a580 & a609;
    assign s611 = a610 ? 2'b10 : s608;
    assign a612 = r552 == 2'b10;
    assign a617 = a612 & b113;
    assign s618 = a617 ? r354[63:0] : l402;
    assign s619 = a617 ? 1'b1 : 1'b0;
    assign a620 = r354 >> l588;
    assign s622 = a617 ? a620[31:0] : s591;
    assign s624 = a617 ? a620[511:32] : s593;
    assign s626 = a617 ? a620[543:512] : s595;
    assign a627 = r382 + 20'h1;
    assign s628 = a617 ? a627 : s597;
    assign a629 = r360 - 5'b1;
    assign s630 = a617 ? a629 : s600;
    assign a631 = s630 != 5'b1;
    assign a632 = s628 != w399;
    assign a633 = a632 & a631;
    assign a634 = a617 & a633;
    assign s635 = a634 ? 2'b1 : s611;
    assign a636 = ~a633;
    assign a637 = a617 & a636;
    assign s638 = a637 ? 2'b0 : s635;
    assign a639 = ~b113;
    assign a640 = a612 & a639;
    assign s641 = a640 ? 2'b1 : s638;

    assign io_qpi_rd_req_addr = b206;
    assign io_qpi_rd_req_mdata = b209;
    assign io_qpi_rd_req_valid = b212;
    assign io_qpi_wr_req_addr = b227;
    assign io_qpi_wr_req_mdata = b230;
    assign io_qpi_wr_req_data = b233;
    assign io_qpi_wr_req_valid = b236;
    assign io_done = r419;

endmodule