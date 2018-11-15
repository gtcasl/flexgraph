function simjit(ptr) : int

/tmp/libjit-dump.o:     file format elf64-x86-64


Disassembly of section .text:

00007f01bb3fa01d <.text>:
    7f01bb3fa01d:	55                   	push   %rbp
    7f01bb3fa01e:	48 8b ec             	mov    %rsp,%rbp
    7f01bb3fa021:	48 81 ec 70 2a 00 00 	sub    $0x2a70,%rsp
    7f01bb3fa028:	48 89 1c 24          	mov    %rbx,(%rsp)
    7f01bb3fa02c:	4c 89 64 24 08       	mov    %r12,0x8(%rsp)
    7f01bb3fa031:	4c 89 6c 24 10       	mov    %r13,0x10(%rsp)
    7f01bb3fa036:	4c 89 74 24 18       	mov    %r14,0x18(%rsp)
    7f01bb3fa03b:	4c 89 7c 24 20       	mov    %r15,0x20(%rsp)
    7f01bb3fa040:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7f01bb3fa044:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7f01bb3fa048:	4c 8b 78 08          	mov    0x8(%rax),%r15
    7f01bb3fa04c:	48 8b 00             	mov    (%rax),%rax
    7f01bb3fa04f:	41 8b 8f 80 41 00 00 	mov    0x4180(%r15),%ecx
    7f01bb3fa056:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    7f01bb3fa059:	41 8b 8f 08 42 00 00 	mov    0x4208(%r15),%ecx
    7f01bb3fa060:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    7f01bb3fa063:	41 8b 8f 90 42 00 00 	mov    0x4290(%r15),%ecx
    7f01bb3fa06a:	89 4d e0             	mov    %ecx,-0x20(%rbp)
    7f01bb3fa06d:	41 8b 8f 98 42 00 00 	mov    0x4298(%r15),%ecx
    7f01bb3fa074:	89 4d d8             	mov    %ecx,-0x28(%rbp)
    7f01bb3fa077:	41 8b 8f a0 42 00 00 	mov    0x42a0(%r15),%ecx
    7f01bb3fa07e:	89 4d d0             	mov    %ecx,-0x30(%rbp)
    7f01bb3fa081:	41 8b 8f a8 42 00 00 	mov    0x42a8(%r15),%ecx
    7f01bb3fa088:	89 4d c8             	mov    %ecx,-0x38(%rbp)
    7f01bb3fa08b:	41 8b 8f b0 42 00 00 	mov    0x42b0(%r15),%ecx
    7f01bb3fa092:	89 4d c0             	mov    %ecx,-0x40(%rbp)
    7f01bb3fa095:	41 8b 8f b8 42 00 00 	mov    0x42b8(%r15),%ecx
    7f01bb3fa09c:	89 4d b8             	mov    %ecx,-0x48(%rbp)
    7f01bb3fa09f:	41 8b 8f c0 42 00 00 	mov    0x42c0(%r15),%ecx
    7f01bb3fa0a6:	89 4d b0             	mov    %ecx,-0x50(%rbp)
    7f01bb3fa0a9:	41 8b 8f 48 43 00 00 	mov    0x4348(%r15),%ecx
    7f01bb3fa0b0:	89 4d a8             	mov    %ecx,-0x58(%rbp)
    7f01bb3fa0b3:	41 8b 8f 50 43 00 00 	mov    0x4350(%r15),%ecx
    7f01bb3fa0ba:	89 4d a0             	mov    %ecx,-0x60(%rbp)
    7f01bb3fa0bd:	41 8b 8f 58 43 00 00 	mov    0x4358(%r15),%ecx
    7f01bb3fa0c4:	89 4d 98             	mov    %ecx,-0x68(%rbp)
    7f01bb3fa0c7:	41 8b 8f 60 43 00 00 	mov    0x4360(%r15),%ecx
    7f01bb3fa0ce:	89 4d 90             	mov    %ecx,-0x70(%rbp)
    7f01bb3fa0d1:	41 8b 8f 68 43 00 00 	mov    0x4368(%r15),%ecx
    7f01bb3fa0d8:	89 4d 88             	mov    %ecx,-0x78(%rbp)
    7f01bb3fa0db:	41 8b 8f 70 43 00 00 	mov    0x4370(%r15),%ecx
    7f01bb3fa0e2:	89 4d 80             	mov    %ecx,-0x80(%rbp)
    7f01bb3fa0e5:	41 8b 8f 78 43 00 00 	mov    0x4378(%r15),%ecx
    7f01bb3fa0ec:	89 8d 78 ff ff ff    	mov    %ecx,-0x88(%rbp)
    7f01bb3fa0f2:	41 8b 8f c0 43 00 00 	mov    0x43c0(%r15),%ecx
    7f01bb3fa0f9:	89 8d 70 ff ff ff    	mov    %ecx,-0x90(%rbp)
    7f01bb3fa0ff:	41 8b 8f 48 44 00 00 	mov    0x4448(%r15),%ecx
    7f01bb3fa106:	89 8d 68 ff ff ff    	mov    %ecx,-0x98(%rbp)
    7f01bb3fa10c:	41 8b 8f d0 44 00 00 	mov    0x44d0(%r15),%ecx
    7f01bb3fa113:	89 8d 60 ff ff ff    	mov    %ecx,-0xa0(%rbp)
    7f01bb3fa119:	41 8b 8f d8 44 00 00 	mov    0x44d8(%r15),%ecx
    7f01bb3fa120:	89 8d 58 ff ff ff    	mov    %ecx,-0xa8(%rbp)
    7f01bb3fa126:	41 8b 8f e0 44 00 00 	mov    0x44e0(%r15),%ecx
    7f01bb3fa12d:	89 8d 50 ff ff ff    	mov    %ecx,-0xb0(%rbp)
    7f01bb3fa133:	41 8b 8f e8 44 00 00 	mov    0x44e8(%r15),%ecx
    7f01bb3fa13a:	89 8d 48 ff ff ff    	mov    %ecx,-0xb8(%rbp)
    7f01bb3fa140:	41 8b 8f f0 44 00 00 	mov    0x44f0(%r15),%ecx
    7f01bb3fa147:	89 8d 40 ff ff ff    	mov    %ecx,-0xc0(%rbp)
    7f01bb3fa14d:	41 8b 8f f8 44 00 00 	mov    0x44f8(%r15),%ecx
    7f01bb3fa154:	89 8d 38 ff ff ff    	mov    %ecx,-0xc8(%rbp)
    7f01bb3fa15a:	41 8b 8f 00 45 00 00 	mov    0x4500(%r15),%ecx
    7f01bb3fa161:	89 8d 30 ff ff ff    	mov    %ecx,-0xd0(%rbp)
    7f01bb3fa167:	41 8b 8f 08 45 00 00 	mov    0x4508(%r15),%ecx
    7f01bb3fa16e:	89 8d 28 ff ff ff    	mov    %ecx,-0xd8(%rbp)
    7f01bb3fa174:	41 8b 8f 10 45 00 00 	mov    0x4510(%r15),%ecx
    7f01bb3fa17b:	89 8d 20 ff ff ff    	mov    %ecx,-0xe0(%rbp)
    7f01bb3fa181:	41 8b 8f 18 45 00 00 	mov    0x4518(%r15),%ecx
    7f01bb3fa188:	89 8d 18 ff ff ff    	mov    %ecx,-0xe8(%rbp)
    7f01bb3fa18e:	41 8b 8f 20 45 00 00 	mov    0x4520(%r15),%ecx
    7f01bb3fa195:	89 8d 10 ff ff ff    	mov    %ecx,-0xf0(%rbp)
    7f01bb3fa19b:	41 8b 8f 28 45 00 00 	mov    0x4528(%r15),%ecx
    7f01bb3fa1a2:	89 8d 08 ff ff ff    	mov    %ecx,-0xf8(%rbp)
    7f01bb3fa1a8:	41 8b 8f 30 45 00 00 	mov    0x4530(%r15),%ecx
    7f01bb3fa1af:	89 8d 00 ff ff ff    	mov    %ecx,-0x100(%rbp)
    7f01bb3fa1b5:	41 8b 8f 38 45 00 00 	mov    0x4538(%r15),%ecx
    7f01bb3fa1bc:	89 8d f8 fe ff ff    	mov    %ecx,-0x108(%rbp)
    7f01bb3fa1c2:	41 8b 8f 40 45 00 00 	mov    0x4540(%r15),%ecx
    7f01bb3fa1c9:	89 8d f0 fe ff ff    	mov    %ecx,-0x110(%rbp)
    7f01bb3fa1cf:	41 8b 8f 48 45 00 00 	mov    0x4548(%r15),%ecx
    7f01bb3fa1d6:	89 8d e8 fe ff ff    	mov    %ecx,-0x118(%rbp)
    7f01bb3fa1dc:	41 8b 8f 50 45 00 00 	mov    0x4550(%r15),%ecx
    7f01bb3fa1e3:	89 8d e0 fe ff ff    	mov    %ecx,-0x120(%rbp)
    7f01bb3fa1e9:	41 8b 8f 58 45 00 00 	mov    0x4558(%r15),%ecx
    7f01bb3fa1f0:	89 8d d8 fe ff ff    	mov    %ecx,-0x128(%rbp)
    7f01bb3fa1f6:	41 8b 8f 60 45 00 00 	mov    0x4560(%r15),%ecx
    7f01bb3fa1fd:	89 8d d0 fe ff ff    	mov    %ecx,-0x130(%rbp)
    7f01bb3fa203:	41 8b 8f 68 46 00 00 	mov    0x4668(%r15),%ecx
    7f01bb3fa20a:	89 8d c8 fe ff ff    	mov    %ecx,-0x138(%rbp)
    7f01bb3fa210:	49 8b 8f 70 46 00 00 	mov    0x4670(%r15),%rcx
    7f01bb3fa217:	48 89 8d c0 fe ff ff 	mov    %rcx,-0x140(%rbp)
    7f01bb3fa21e:	45 8b af a8 46 00 00 	mov    0x46a8(%r15),%r13d
    7f01bb3fa225:	41 8b 8f b0 46 00 00 	mov    0x46b0(%r15),%ecx
    7f01bb3fa22c:	89 8d b8 fe ff ff    	mov    %ecx,-0x148(%rbp)
    7f01bb3fa232:	41 8b 8f b8 46 00 00 	mov    0x46b8(%r15),%ecx
    7f01bb3fa239:	89 8d b0 fe ff ff    	mov    %ecx,-0x150(%rbp)
    7f01bb3fa23f:	41 8b 8f c0 46 00 00 	mov    0x46c0(%r15),%ecx
    7f01bb3fa246:	89 8d a8 fe ff ff    	mov    %ecx,-0x158(%rbp)
    7f01bb3fa24c:	41 8b 8f c8 46 00 00 	mov    0x46c8(%r15),%ecx
    7f01bb3fa253:	89 8d a0 fe ff ff    	mov    %ecx,-0x160(%rbp)
    7f01bb3fa259:	41 8b 8f d0 46 00 00 	mov    0x46d0(%r15),%ecx
    7f01bb3fa260:	89 8d 98 fe ff ff    	mov    %ecx,-0x168(%rbp)
    7f01bb3fa266:	41 8b 8f e8 46 00 00 	mov    0x46e8(%r15),%ecx
    7f01bb3fa26d:	89 8d 90 fe ff ff    	mov    %ecx,-0x170(%rbp)
    7f01bb3fa273:	41 8b 8f f0 46 00 00 	mov    0x46f0(%r15),%ecx
    7f01bb3fa27a:	89 8d 88 fe ff ff    	mov    %ecx,-0x178(%rbp)
    7f01bb3fa280:	41 8b 8f 78 47 00 00 	mov    0x4778(%r15),%ecx
    7f01bb3fa287:	89 8d 80 fe ff ff    	mov    %ecx,-0x180(%rbp)
    7f01bb3fa28d:	41 8b 8f 00 48 00 00 	mov    0x4800(%r15),%ecx
    7f01bb3fa294:	89 8d 78 fe ff ff    	mov    %ecx,-0x188(%rbp)
    7f01bb3fa29a:	41 8b 8f 08 48 00 00 	mov    0x4808(%r15),%ecx
    7f01bb3fa2a1:	89 8d 70 fe ff ff    	mov    %ecx,-0x190(%rbp)
    7f01bb3fa2a7:	41 8b 8f 10 48 00 00 	mov    0x4810(%r15),%ecx
    7f01bb3fa2ae:	89 8d 68 fe ff ff    	mov    %ecx,-0x198(%rbp)
    7f01bb3fa2b4:	41 8b 8f 18 48 00 00 	mov    0x4818(%r15),%ecx
    7f01bb3fa2bb:	89 8d 60 fe ff ff    	mov    %ecx,-0x1a0(%rbp)
    7f01bb3fa2c1:	41 8b 8f 20 48 00 00 	mov    0x4820(%r15),%ecx
    7f01bb3fa2c8:	89 8d 58 fe ff ff    	mov    %ecx,-0x1a8(%rbp)
    7f01bb3fa2ce:	41 8b 8f 28 48 00 00 	mov    0x4828(%r15),%ecx
    7f01bb3fa2d5:	89 8d 50 fe ff ff    	mov    %ecx,-0x1b0(%rbp)
    7f01bb3fa2db:	41 8b 8f 30 48 00 00 	mov    0x4830(%r15),%ecx
    7f01bb3fa2e2:	89 8d 48 fe ff ff    	mov    %ecx,-0x1b8(%rbp)
    7f01bb3fa2e8:	41 8b 8f 78 48 00 00 	mov    0x4878(%r15),%ecx
    7f01bb3fa2ef:	89 8d 40 fe ff ff    	mov    %ecx,-0x1c0(%rbp)
    7f01bb3fa2f5:	41 8b 8f 80 48 00 00 	mov    0x4880(%r15),%ecx
    7f01bb3fa2fc:	89 8d 38 fe ff ff    	mov    %ecx,-0x1c8(%rbp)
    7f01bb3fa302:	41 8b 8f 88 48 00 00 	mov    0x4888(%r15),%ecx
    7f01bb3fa309:	89 8d 30 fe ff ff    	mov    %ecx,-0x1d0(%rbp)
    7f01bb3fa30f:	41 8b 8f 90 48 00 00 	mov    0x4890(%r15),%ecx
    7f01bb3fa316:	89 8d 28 fe ff ff    	mov    %ecx,-0x1d8(%rbp)
    7f01bb3fa31c:	41 8b 8f 98 48 00 00 	mov    0x4898(%r15),%ecx
    7f01bb3fa323:	89 8d 20 fe ff ff    	mov    %ecx,-0x1e0(%rbp)
    7f01bb3fa329:	41 8b 8f a0 48 00 00 	mov    0x48a0(%r15),%ecx
    7f01bb3fa330:	89 8d 18 fe ff ff    	mov    %ecx,-0x1e8(%rbp)
    7f01bb3fa336:	41 8b 8f a8 48 00 00 	mov    0x48a8(%r15),%ecx
    7f01bb3fa33d:	89 8d 10 fe ff ff    	mov    %ecx,-0x1f0(%rbp)
    7f01bb3fa343:	41 8b 8f f0 48 00 00 	mov    0x48f0(%r15),%ecx
    7f01bb3fa34a:	89 8d 08 fe ff ff    	mov    %ecx,-0x1f8(%rbp)
    7f01bb3fa350:	41 8b 8f 78 49 00 00 	mov    0x4978(%r15),%ecx
    7f01bb3fa357:	89 8d 00 fe ff ff    	mov    %ecx,-0x200(%rbp)
    7f01bb3fa35d:	41 8b 8f 00 4a 00 00 	mov    0x4a00(%r15),%ecx
    7f01bb3fa364:	89 8d f8 fd ff ff    	mov    %ecx,-0x208(%rbp)
    7f01bb3fa36a:	41 8b 8f 08 4a 00 00 	mov    0x4a08(%r15),%ecx
    7f01bb3fa371:	89 8d f0 fd ff ff    	mov    %ecx,-0x210(%rbp)
    7f01bb3fa377:	41 8b 8f 10 4a 00 00 	mov    0x4a10(%r15),%ecx
    7f01bb3fa37e:	89 8d e8 fd ff ff    	mov    %ecx,-0x218(%rbp)
    7f01bb3fa384:	41 8b 8f 18 4a 00 00 	mov    0x4a18(%r15),%ecx
    7f01bb3fa38b:	89 8d e0 fd ff ff    	mov    %ecx,-0x220(%rbp)
    7f01bb3fa391:	41 8b 8f 20 4a 00 00 	mov    0x4a20(%r15),%ecx
    7f01bb3fa398:	89 8d d8 fd ff ff    	mov    %ecx,-0x228(%rbp)
    7f01bb3fa39e:	41 8b 8f 28 4a 00 00 	mov    0x4a28(%r15),%ecx
    7f01bb3fa3a5:	89 8d d0 fd ff ff    	mov    %ecx,-0x230(%rbp)
    7f01bb3fa3ab:	41 8b 8f 30 4a 00 00 	mov    0x4a30(%r15),%ecx
    7f01bb3fa3b2:	89 8d c8 fd ff ff    	mov    %ecx,-0x238(%rbp)
    7f01bb3fa3b8:	41 8b 8f 38 4a 00 00 	mov    0x4a38(%r15),%ecx
    7f01bb3fa3bf:	89 8d c0 fd ff ff    	mov    %ecx,-0x240(%rbp)
    7f01bb3fa3c5:	41 8b 8f 40 4a 00 00 	mov    0x4a40(%r15),%ecx
    7f01bb3fa3cc:	89 8d b8 fd ff ff    	mov    %ecx,-0x248(%rbp)
    7f01bb3fa3d2:	41 8b 8f 48 4a 00 00 	mov    0x4a48(%r15),%ecx
    7f01bb3fa3d9:	89 8d b0 fd ff ff    	mov    %ecx,-0x250(%rbp)
    7f01bb3fa3df:	41 8b 8f 50 4a 00 00 	mov    0x4a50(%r15),%ecx
    7f01bb3fa3e6:	89 8d a8 fd ff ff    	mov    %ecx,-0x258(%rbp)
    7f01bb3fa3ec:	41 8b 8f 58 4a 00 00 	mov    0x4a58(%r15),%ecx
    7f01bb3fa3f3:	89 8d a0 fd ff ff    	mov    %ecx,-0x260(%rbp)
    7f01bb3fa3f9:	41 8b 8f 60 4a 00 00 	mov    0x4a60(%r15),%ecx
    7f01bb3fa400:	89 8d 98 fd ff ff    	mov    %ecx,-0x268(%rbp)
    7f01bb3fa406:	41 8b 8f 68 4a 00 00 	mov    0x4a68(%r15),%ecx
    7f01bb3fa40d:	89 8d 90 fd ff ff    	mov    %ecx,-0x270(%rbp)
    7f01bb3fa413:	41 8b 8f 70 4a 00 00 	mov    0x4a70(%r15),%ecx
    7f01bb3fa41a:	89 8d 88 fd ff ff    	mov    %ecx,-0x278(%rbp)
    7f01bb3fa420:	41 8b 8f 78 4a 00 00 	mov    0x4a78(%r15),%ecx
    7f01bb3fa427:	89 8d 80 fd ff ff    	mov    %ecx,-0x280(%rbp)
    7f01bb3fa42d:	41 8b 8f 80 4a 00 00 	mov    0x4a80(%r15),%ecx
    7f01bb3fa434:	89 8d 78 fd ff ff    	mov    %ecx,-0x288(%rbp)
    7f01bb3fa43a:	41 8b 8f 88 4a 00 00 	mov    0x4a88(%r15),%ecx
    7f01bb3fa441:	89 8d 70 fd ff ff    	mov    %ecx,-0x290(%rbp)
    7f01bb3fa447:	41 8b 8f 90 4a 00 00 	mov    0x4a90(%r15),%ecx
    7f01bb3fa44e:	89 8d 68 fd ff ff    	mov    %ecx,-0x298(%rbp)
    7f01bb3fa454:	41 8b 8f 98 4b 00 00 	mov    0x4b98(%r15),%ecx
    7f01bb3fa45b:	89 8d 60 fd ff ff    	mov    %ecx,-0x2a0(%rbp)
    7f01bb3fa461:	49 8b 8f a0 4b 00 00 	mov    0x4ba0(%r15),%rcx
    7f01bb3fa468:	48 89 8d 58 fd ff ff 	mov    %rcx,-0x2a8(%rbp)
    7f01bb3fa46f:	45 8b b7 d8 4b 00 00 	mov    0x4bd8(%r15),%r14d
    7f01bb3fa476:	41 8b 8f e0 4b 00 00 	mov    0x4be0(%r15),%ecx
    7f01bb3fa47d:	89 8d 50 fd ff ff    	mov    %ecx,-0x2b0(%rbp)
    7f01bb3fa483:	41 8b 8f e8 4b 00 00 	mov    0x4be8(%r15),%ecx
    7f01bb3fa48a:	89 8d 48 fd ff ff    	mov    %ecx,-0x2b8(%rbp)
    7f01bb3fa490:	41 8b 8f f0 4b 00 00 	mov    0x4bf0(%r15),%ecx
    7f01bb3fa497:	89 8d 40 fd ff ff    	mov    %ecx,-0x2c0(%rbp)
    7f01bb3fa49d:	41 8b 8f f8 4b 00 00 	mov    0x4bf8(%r15),%ecx
    7f01bb3fa4a4:	89 8d 38 fd ff ff    	mov    %ecx,-0x2c8(%rbp)
    7f01bb3fa4aa:	41 8b 8f 00 4c 00 00 	mov    0x4c00(%r15),%ecx
    7f01bb3fa4b1:	89 8d 30 fd ff ff    	mov    %ecx,-0x2d0(%rbp)
    7f01bb3fa4b7:	41 8b 8f 18 4c 00 00 	mov    0x4c18(%r15),%ecx
    7f01bb3fa4be:	89 8d 28 fd ff ff    	mov    %ecx,-0x2d8(%rbp)
    7f01bb3fa4c4:	41 8b 8f 20 4c 00 00 	mov    0x4c20(%r15),%ecx
    7f01bb3fa4cb:	89 8d 20 fd ff ff    	mov    %ecx,-0x2e0(%rbp)
    7f01bb3fa4d1:	41 8b 8f 28 4c 00 00 	mov    0x4c28(%r15),%ecx
    7f01bb3fa4d8:	89 8d 18 fd ff ff    	mov    %ecx,-0x2e8(%rbp)
    7f01bb3fa4de:	41 8b 8f 30 4c 00 00 	mov    0x4c30(%r15),%ecx
    7f01bb3fa4e5:	89 8d 10 fd ff ff    	mov    %ecx,-0x2f0(%rbp)
    7f01bb3fa4eb:	41 8b 8f 38 4c 00 00 	mov    0x4c38(%r15),%ecx
    7f01bb3fa4f2:	89 8d 08 fd ff ff    	mov    %ecx,-0x2f8(%rbp)
    7f01bb3fa4f8:	41 8b 8f 40 4c 00 00 	mov    0x4c40(%r15),%ecx
    7f01bb3fa4ff:	89 8d 00 fd ff ff    	mov    %ecx,-0x300(%rbp)
    7f01bb3fa505:	41 8b 8f 48 4c 00 00 	mov    0x4c48(%r15),%ecx
    7f01bb3fa50c:	89 8d f8 fc ff ff    	mov    %ecx,-0x308(%rbp)
    7f01bb3fa512:	41 8b 8f 50 4c 00 00 	mov    0x4c50(%r15),%ecx
    7f01bb3fa519:	89 8d f0 fc ff ff    	mov    %ecx,-0x310(%rbp)
    7f01bb3fa51f:	41 8b 8f 58 4c 00 00 	mov    0x4c58(%r15),%ecx
    7f01bb3fa526:	89 8d e8 fc ff ff    	mov    %ecx,-0x318(%rbp)
    7f01bb3fa52c:	41 8b 8f 60 4c 00 00 	mov    0x4c60(%r15),%ecx
    7f01bb3fa533:	89 8d e0 fc ff ff    	mov    %ecx,-0x320(%rbp)
    7f01bb3fa539:	41 8b 8f 68 4c 00 00 	mov    0x4c68(%r15),%ecx
    7f01bb3fa540:	89 8d d8 fc ff ff    	mov    %ecx,-0x328(%rbp)
    7f01bb3fa546:	41 8b 8f 70 4c 00 00 	mov    0x4c70(%r15),%ecx
    7f01bb3fa54d:	89 8d d0 fc ff ff    	mov    %ecx,-0x330(%rbp)
    7f01bb3fa553:	41 8b 8f 78 4c 00 00 	mov    0x4c78(%r15),%ecx
    7f01bb3fa55a:	89 8d c8 fc ff ff    	mov    %ecx,-0x338(%rbp)
    7f01bb3fa560:	41 8b 8f 80 4c 00 00 	mov    0x4c80(%r15),%ecx
    7f01bb3fa567:	89 8d c0 fc ff ff    	mov    %ecx,-0x340(%rbp)
    7f01bb3fa56d:	49 8b 8f 88 4c 00 00 	mov    0x4c88(%r15),%rcx
    7f01bb3fa574:	48 89 8d b8 fc ff ff 	mov    %rcx,-0x348(%rbp)
    7f01bb3fa57b:	41 8b 8f 90 4c 00 00 	mov    0x4c90(%r15),%ecx
    7f01bb3fa582:	89 8d b0 fc ff ff    	mov    %ecx,-0x350(%rbp)
    7f01bb3fa588:	41 8b 8f 98 4c 00 00 	mov    0x4c98(%r15),%ecx
    7f01bb3fa58f:	89 8d a8 fc ff ff    	mov    %ecx,-0x358(%rbp)
    7f01bb3fa595:	41 8b 8f d8 4c 00 00 	mov    0x4cd8(%r15),%ecx
    7f01bb3fa59c:	89 8d a0 fc ff ff    	mov    %ecx,-0x360(%rbp)
    7f01bb3fa5a2:	41 8b 8f e8 4c 00 00 	mov    0x4ce8(%r15),%ecx
    7f01bb3fa5a9:	89 8d 98 fc ff ff    	mov    %ecx,-0x368(%rbp)
    7f01bb3fa5af:	41 8b 8f 28 4d 00 00 	mov    0x4d28(%r15),%ecx
    7f01bb3fa5b6:	89 8d 90 fc ff ff    	mov    %ecx,-0x370(%rbp)
    7f01bb3fa5bc:	41 8b 8f 38 4d 00 00 	mov    0x4d38(%r15),%ecx
    7f01bb3fa5c3:	89 8d 88 fc ff ff    	mov    %ecx,-0x378(%rbp)
    7f01bb3fa5c9:	41 8b 8f 40 4d 00 00 	mov    0x4d40(%r15),%ecx
    7f01bb3fa5d0:	89 8d 80 fc ff ff    	mov    %ecx,-0x380(%rbp)
    7f01bb3fa5d6:	41 8b 8f 48 4d 00 00 	mov    0x4d48(%r15),%ecx
    7f01bb3fa5dd:	89 8d 78 fc ff ff    	mov    %ecx,-0x388(%rbp)
    7f01bb3fa5e3:	41 8b 8f 50 4d 00 00 	mov    0x4d50(%r15),%ecx
    7f01bb3fa5ea:	89 8d 70 fc ff ff    	mov    %ecx,-0x390(%rbp)
    7f01bb3fa5f0:	41 8b 8f 58 4d 00 00 	mov    0x4d58(%r15),%ecx
    7f01bb3fa5f7:	89 8d 68 fc ff ff    	mov    %ecx,-0x398(%rbp)
    7f01bb3fa5fd:	41 8b 8f 60 4d 00 00 	mov    0x4d60(%r15),%ecx
    7f01bb3fa604:	89 8d 60 fc ff ff    	mov    %ecx,-0x3a0(%rbp)
    7f01bb3fa60a:	41 8b 8f 68 4d 00 00 	mov    0x4d68(%r15),%ecx
    7f01bb3fa611:	89 8d 58 fc ff ff    	mov    %ecx,-0x3a8(%rbp)
    7f01bb3fa617:	41 8b 8f 70 4d 00 00 	mov    0x4d70(%r15),%ecx
    7f01bb3fa61e:	89 8d 50 fc ff ff    	mov    %ecx,-0x3b0(%rbp)
    7f01bb3fa624:	41 8b 8f 78 4d 00 00 	mov    0x4d78(%r15),%ecx
    7f01bb3fa62b:	89 8d 48 fc ff ff    	mov    %ecx,-0x3b8(%rbp)
    7f01bb3fa631:	41 8b 8f 80 4d 00 00 	mov    0x4d80(%r15),%ecx
    7f01bb3fa638:	89 8d 40 fc ff ff    	mov    %ecx,-0x3c0(%rbp)
    7f01bb3fa63e:	41 8b 8f 88 4d 00 00 	mov    0x4d88(%r15),%ecx
    7f01bb3fa645:	89 8d 38 fc ff ff    	mov    %ecx,-0x3c8(%rbp)
    7f01bb3fa64b:	41 8b 8f 90 4d 00 00 	mov    0x4d90(%r15),%ecx
    7f01bb3fa652:	89 8d 30 fc ff ff    	mov    %ecx,-0x3d0(%rbp)
    7f01bb3fa658:	41 8b 8f 98 4d 00 00 	mov    0x4d98(%r15),%ecx
    7f01bb3fa65f:	89 8d 28 fc ff ff    	mov    %ecx,-0x3d8(%rbp)
    7f01bb3fa665:	49 8b 8f a0 4d 00 00 	mov    0x4da0(%r15),%rcx
    7f01bb3fa66c:	48 89 8d 20 fc ff ff 	mov    %rcx,-0x3e0(%rbp)
    7f01bb3fa673:	41 8b 8f a8 4d 00 00 	mov    0x4da8(%r15),%ecx
    7f01bb3fa67a:	89 8d 18 fc ff ff    	mov    %ecx,-0x3e8(%rbp)
    7f01bb3fa680:	41 8b 8f b0 4d 00 00 	mov    0x4db0(%r15),%ecx
    7f01bb3fa687:	89 8d 10 fc ff ff    	mov    %ecx,-0x3f0(%rbp)
    7f01bb3fa68d:	41 8b 8f f0 4d 00 00 	mov    0x4df0(%r15),%ecx
    7f01bb3fa694:	89 8d 08 fc ff ff    	mov    %ecx,-0x3f8(%rbp)
    7f01bb3fa69a:	41 8b 8f 00 4e 00 00 	mov    0x4e00(%r15),%ecx
    7f01bb3fa6a1:	89 8d 00 fc ff ff    	mov    %ecx,-0x400(%rbp)
    7f01bb3fa6a7:	41 8b 8f 40 4e 00 00 	mov    0x4e40(%r15),%ecx
    7f01bb3fa6ae:	89 8d f8 fb ff ff    	mov    %ecx,-0x408(%rbp)
    7f01bb3fa6b4:	41 8b 8f 50 4e 00 00 	mov    0x4e50(%r15),%ecx
    7f01bb3fa6bb:	89 8d f0 fb ff ff    	mov    %ecx,-0x410(%rbp)
    7f01bb3fa6c1:	41 8b 8f 58 4e 00 00 	mov    0x4e58(%r15),%ecx
    7f01bb3fa6c8:	89 8d e8 fb ff ff    	mov    %ecx,-0x418(%rbp)
    7f01bb3fa6ce:	41 8b 8f 60 4e 00 00 	mov    0x4e60(%r15),%ecx
    7f01bb3fa6d5:	89 8d e0 fb ff ff    	mov    %ecx,-0x420(%rbp)
    7f01bb3fa6db:	41 8b 8f 68 4e 00 00 	mov    0x4e68(%r15),%ecx
    7f01bb3fa6e2:	89 8d d8 fb ff ff    	mov    %ecx,-0x428(%rbp)
    7f01bb3fa6e8:	41 8b 8f 70 4e 00 00 	mov    0x4e70(%r15),%ecx
    7f01bb3fa6ef:	89 8d d0 fb ff ff    	mov    %ecx,-0x430(%rbp)
    7f01bb3fa6f5:	41 8b 8f 78 4e 00 00 	mov    0x4e78(%r15),%ecx
    7f01bb3fa6fc:	89 8d c8 fb ff ff    	mov    %ecx,-0x438(%rbp)
    7f01bb3fa702:	41 8b 9f 80 4e 00 00 	mov    0x4e80(%r15),%ebx
    7f01bb3fa709:	41 8b 8f d0 4e 00 00 	mov    0x4ed0(%r15),%ecx
    7f01bb3fa710:	89 8d c0 fb ff ff    	mov    %ecx,-0x440(%rbp)
    7f01bb3fa716:	41 8b 8f d8 4e 00 00 	mov    0x4ed8(%r15),%ecx
    7f01bb3fa71d:	89 8d b8 fb ff ff    	mov    %ecx,-0x448(%rbp)
    7f01bb3fa723:	41 8b 8f e0 4e 00 00 	mov    0x4ee0(%r15),%ecx
    7f01bb3fa72a:	89 8d b0 fb ff ff    	mov    %ecx,-0x450(%rbp)
    7f01bb3fa730:	41 8b 8f e8 4e 00 00 	mov    0x4ee8(%r15),%ecx
    7f01bb3fa737:	89 8d a8 fb ff ff    	mov    %ecx,-0x458(%rbp)
    7f01bb3fa73d:	41 8b 8f f0 4e 00 00 	mov    0x4ef0(%r15),%ecx
    7f01bb3fa744:	89 8d a0 fb ff ff    	mov    %ecx,-0x460(%rbp)
    7f01bb3fa74a:	41 8b 8f f8 4e 00 00 	mov    0x4ef8(%r15),%ecx
    7f01bb3fa751:	89 8d 98 fb ff ff    	mov    %ecx,-0x468(%rbp)
    7f01bb3fa757:	41 8b 8f 00 4f 00 00 	mov    0x4f00(%r15),%ecx
    7f01bb3fa75e:	89 8d 90 fb ff ff    	mov    %ecx,-0x470(%rbp)
    7f01bb3fa764:	41 8b 8f 08 4f 00 00 	mov    0x4f08(%r15),%ecx
    7f01bb3fa76b:	89 8d 88 fb ff ff    	mov    %ecx,-0x478(%rbp)
    7f01bb3fa771:	41 8b 8f 10 4f 00 00 	mov    0x4f10(%r15),%ecx
    7f01bb3fa778:	89 8d 80 fb ff ff    	mov    %ecx,-0x480(%rbp)
    7f01bb3fa77e:	41 8b 8f 18 4f 00 00 	mov    0x4f18(%r15),%ecx
    7f01bb3fa785:	89 8d 78 fb ff ff    	mov    %ecx,-0x488(%rbp)
    7f01bb3fa78b:	41 8b 8f 68 4f 00 00 	mov    0x4f68(%r15),%ecx
    7f01bb3fa792:	89 8d 70 fb ff ff    	mov    %ecx,-0x490(%rbp)
    7f01bb3fa798:	41 8b 8f 70 4f 00 00 	mov    0x4f70(%r15),%ecx
    7f01bb3fa79f:	89 8d 68 fb ff ff    	mov    %ecx,-0x498(%rbp)
    7f01bb3fa7a5:	41 8b 8f 78 4f 00 00 	mov    0x4f78(%r15),%ecx
    7f01bb3fa7ac:	89 8d 60 fb ff ff    	mov    %ecx,-0x4a0(%rbp)
    7f01bb3fa7b2:	41 8b 8f 80 4f 00 00 	mov    0x4f80(%r15),%ecx
    7f01bb3fa7b9:	89 8d 58 fb ff ff    	mov    %ecx,-0x4a8(%rbp)
    7f01bb3fa7bf:	41 8b 8f c8 4f 00 00 	mov    0x4fc8(%r15),%ecx
    7f01bb3fa7c6:	89 8d 50 fb ff ff    	mov    %ecx,-0x4b0(%rbp)
    7f01bb3fa7cc:	41 8b 8f d0 4f 00 00 	mov    0x4fd0(%r15),%ecx
    7f01bb3fa7d3:	89 8d 48 fb ff ff    	mov    %ecx,-0x4b8(%rbp)
    7f01bb3fa7d9:	41 8b 8f 20 51 00 00 	mov    0x5120(%r15),%ecx
    7f01bb3fa7e0:	89 8d 40 fb ff ff    	mov    %ecx,-0x4c0(%rbp)
    7f01bb3fa7e6:	41 8b 8f 28 51 00 00 	mov    0x5128(%r15),%ecx
    7f01bb3fa7ed:	89 8d 38 fb ff ff    	mov    %ecx,-0x4c8(%rbp)
    7f01bb3fa7f3:	41 8b 8f 30 51 00 00 	mov    0x5130(%r15),%ecx
    7f01bb3fa7fa:	89 8d 30 fb ff ff    	mov    %ecx,-0x4d0(%rbp)
    7f01bb3fa800:	41 8b 8f 38 51 00 00 	mov    0x5138(%r15),%ecx
    7f01bb3fa807:	89 8d 28 fb ff ff    	mov    %ecx,-0x4d8(%rbp)
    7f01bb3fa80d:	41 8b 8f 40 51 00 00 	mov    0x5140(%r15),%ecx
    7f01bb3fa814:	89 8d 20 fb ff ff    	mov    %ecx,-0x4e0(%rbp)
    7f01bb3fa81a:	41 8b 8f 48 51 00 00 	mov    0x5148(%r15),%ecx
    7f01bb3fa821:	89 8d 18 fb ff ff    	mov    %ecx,-0x4e8(%rbp)
    7f01bb3fa827:	41 8b 8f 50 51 00 00 	mov    0x5150(%r15),%ecx
    7f01bb3fa82e:	89 8d 10 fb ff ff    	mov    %ecx,-0x4f0(%rbp)
    7f01bb3fa834:	49 8b 8f 68 51 00 00 	mov    0x5168(%r15),%rcx
    7f01bb3fa83b:	48 89 8d 08 fb ff ff 	mov    %rcx,-0x4f8(%rbp)
    7f01bb3fa842:	41 8b 8f 70 51 00 00 	mov    0x5170(%r15),%ecx
    7f01bb3fa849:	89 8d 00 fb ff ff    	mov    %ecx,-0x500(%rbp)
    7f01bb3fa84f:	41 8b 8f 78 51 00 00 	mov    0x5178(%r15),%ecx
    7f01bb3fa856:	89 8d f8 fa ff ff    	mov    %ecx,-0x508(%rbp)
    7f01bb3fa85c:	41 8b 8f 80 51 00 00 	mov    0x5180(%r15),%ecx
    7f01bb3fa863:	89 8d f0 fa ff ff    	mov    %ecx,-0x510(%rbp)
    7f01bb3fa869:	48 89 85 e8 fa ff ff 	mov    %rax,-0x518(%rbp)
    7f01bb3fa870:	48 8b 00             	mov    (%rax),%rax
    7f01bb3fa873:	8b 00                	mov    (%rax),%eax
    7f01bb3fa875:	41 8b 0f             	mov    (%r15),%ecx
    7f01bb3fa878:	33 c8                	xor    %eax,%ecx
    7f01bb3fa87a:	23 c8                	and    %eax,%ecx
    7f01bb3fa87c:	41 89 07             	mov    %eax,(%r15)
    7f01bb3fa87f:	85 c9                	test   %ecx,%ecx
    7f01bb3fa881:	0f 84 95 f6 00 00    	je     0x7f01bb409f1c
    7f01bb3fa887:	48 8b 8d e8 fa ff ff 	mov    -0x518(%rbp),%rcx
    7f01bb3fa88e:	48 8b 41 08          	mov    0x8(%rcx),%rax
    7f01bb3fa892:	8b 00                	mov    (%rax),%eax
    7f01bb3fa894:	48 8b 49 10          	mov    0x10(%rcx),%rcx
    7f01bb3fa898:	8b 09                	mov    (%rcx),%ecx
    7f01bb3fa89a:	8b d1                	mov    %ecx,%edx
    7f01bb3fa89c:	c1 ea 03             	shr    $0x3,%edx
    7f01bb3fa89f:	83 e2 07             	and    $0x7,%edx
    7f01bb3fa8a2:	89 95 e0 fa ff ff    	mov    %edx,-0x520(%rbp)
    7f01bb3fa8a8:	83 fa 01             	cmp    $0x1,%edx
    7f01bb3fa8ab:	0f 94 c2             	sete   %dl
    7f01bb3fa8ae:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fa8b1:	89 85 d8 fa ff ff    	mov    %eax,-0x528(%rbp)
    7f01bb3fa8b7:	23 c2                	and    %edx,%eax
    7f01bb3fa8b9:	83 e1 07             	and    $0x7,%ecx
    7f01bb3fa8bc:	89 8d d0 fa ff ff    	mov    %ecx,-0x530(%rbp)
    7f01bb3fa8c2:	83 f9 01             	cmp    $0x1,%ecx
    7f01bb3fa8c5:	0f 94 c1             	sete   %cl
    7f01bb3fa8c8:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fa8cb:	89 85 c8 fa ff ff    	mov    %eax,-0x538(%rbp)
    7f01bb3fa8d1:	89 8d c0 fa ff ff    	mov    %ecx,-0x540(%rbp)
    7f01bb3fa8d7:	23 c1                	and    %ecx,%eax
    7f01bb3fa8d9:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    7f01bb3fa8dc:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fa8df:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fa8e2:	85 c9                	test   %ecx,%ecx
    7f01bb3fa8e4:	0f 94 c1             	sete   %cl
    7f01bb3fa8e7:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fa8ea:	23 c1                	and    %ecx,%eax
    7f01bb3fa8ec:	8b 4d f0             	mov    -0x10(%rbp),%ecx
    7f01bb3fa8ef:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fa8f2:	89 8d b8 fa ff ff    	mov    %ecx,-0x548(%rbp)
    7f01bb3fa8f8:	85 c9                	test   %ecx,%ecx
    7f01bb3fa8fa:	0f 94 c1             	sete   %cl
    7f01bb3fa8fd:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fa900:	89 8d b0 fa ff ff    	mov    %ecx,-0x550(%rbp)
    7f01bb3fa906:	8b 95 b8 fe ff ff    	mov    -0x148(%rbp),%edx
    7f01bb3fa90c:	23 ca                	and    %edx,%ecx
    7f01bb3fa90e:	8b d1                	mov    %ecx,%edx
    7f01bb3fa910:	85 d2                	test   %edx,%edx
    7f01bb3fa912:	0f 94 c2             	sete   %dl
    7f01bb3fa915:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fa918:	89 95 a8 fa ff ff    	mov    %edx,-0x558(%rbp)
    7f01bb3fa91e:	23 d0                	and    %eax,%edx
    7f01bb3fa920:	8b 75 f0             	mov    -0x10(%rbp),%esi
    7f01bb3fa923:	83 e6 03             	and    $0x3,%esi
    7f01bb3fa926:	d1 e6                	shl    %esi
    7f01bb3fa928:	89 b5 a0 fa ff ff    	mov    %esi,-0x560(%rbp)
    7f01bb3fa92e:	89 85 98 fa ff ff    	mov    %eax,-0x568(%rbp)
    7f01bb3fa934:	85 c0                	test   %eax,%eax
    7f01bb3fa936:	0f 94 c0             	sete   %al
    7f01bb3fa939:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fa93c:	89 8d 90 fa ff ff    	mov    %ecx,-0x570(%rbp)
    7f01bb3fa942:	23 c8                	and    %eax,%ecx
    7f01bb3fa944:	89 8d 88 fa ff ff    	mov    %ecx,-0x578(%rbp)
    7f01bb3fa94a:	8b 45 f0             	mov    -0x10(%rbp),%eax
    7f01bb3fa94d:	d1 e8                	shr    %eax
    7f01bb3fa94f:	83 e0 03             	and    $0x3,%eax
    7f01bb3fa952:	89 85 80 fa ff ff    	mov    %eax,-0x580(%rbp)
    7f01bb3fa958:	85 d2                	test   %edx,%edx
    7f01bb3fa95a:	0f 84 11 00 00 00    	je     0x7f01bb3fa971
    7f01bb3fa960:	8b 85 a0 fa ff ff    	mov    -0x560(%rbp),%eax
    7f01bb3fa966:	89 85 78 fa ff ff    	mov    %eax,-0x588(%rbp)
    7f01bb3fa96c:	e9 28 00 00 00       	jmpq   0x7f01bb3fa999
    7f01bb3fa971:	8b 85 88 fa ff ff    	mov    -0x578(%rbp),%eax
    7f01bb3fa977:	85 c0                	test   %eax,%eax
    7f01bb3fa979:	0f 84 11 00 00 00    	je     0x7f01bb3fa990
    7f01bb3fa97f:	8b 85 80 fa ff ff    	mov    -0x580(%rbp),%eax
    7f01bb3fa985:	89 85 78 fa ff ff    	mov    %eax,-0x588(%rbp)
    7f01bb3fa98b:	e9 09 00 00 00       	jmpq   0x7f01bb3fa999
    7f01bb3fa990:	8b 45 f0             	mov    -0x10(%rbp),%eax
    7f01bb3fa993:	89 85 78 fa ff ff    	mov    %eax,-0x588(%rbp)
    7f01bb3fa999:	48 8b 8d e8 fa ff ff 	mov    -0x518(%rbp),%rcx
    7f01bb3fa9a0:	48 8b 41 20          	mov    0x20(%rcx),%rax
    7f01bb3fa9a4:	44 8b 20             	mov    (%rax),%r12d
    7f01bb3fa9a7:	8b 85 98 fa ff ff    	mov    -0x568(%rbp),%eax
    7f01bb3fa9ad:	23 85 b8 fa ff ff    	and    -0x548(%rbp),%eax
    7f01bb3fa9b3:	8b 95 90 fa ff ff    	mov    -0x570(%rbp),%edx
    7f01bb3fa9b9:	0b c2                	or     %edx,%eax
    7f01bb3fa9bb:	89 85 70 fa ff ff    	mov    %eax,-0x590(%rbp)
    7f01bb3fa9c1:	8b 45 f0             	mov    -0x10(%rbp),%eax
    7f01bb3fa9c4:	d1 e8                	shr    %eax
    7f01bb3fa9c6:	83 e0 01             	and    $0x1,%eax
    7f01bb3fa9c9:	89 85 68 fa ff ff    	mov    %eax,-0x598(%rbp)
    7f01bb3fa9cf:	8b 95 a8 fa ff ff    	mov    -0x558(%rbp),%edx
    7f01bb3fa9d5:	0b c2                	or     %edx,%eax
    7f01bb3fa9d7:	48 8b 49 18          	mov    0x18(%rcx),%rcx
    7f01bb3fa9db:	48 89 8d 60 fa ff ff 	mov    %rcx,-0x5a0(%rbp)
    7f01bb3fa9e2:	85 c0                	test   %eax,%eax
    7f01bb3fa9e4:	0f 84 31 00 00 00    	je     0x7f01bb3faa1b
    7f01bb3fa9ea:	49 8b c7             	mov    %r15,%rax
    7f01bb3fa9ed:	48 83 c0 08          	add    $0x8,%rax
    7f01bb3fa9f1:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fa9f8:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fa9fb:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fa9fe:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3faa02:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3faa06:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3faa0a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3faa0e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3faa12:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3faa16:	e9 2f 00 00 00       	jmpq   0x7f01bb3faa4a
    7f01bb3faa1b:	49 8b c7             	mov    %r15,%rax
    7f01bb3faa1e:	48 83 c0 08          	add    $0x8,%rax
    7f01bb3faa22:	49 8b cf             	mov    %r15,%rcx
    7f01bb3faa25:	48 81 c1 c8 41 00 00 	add    $0x41c8,%rcx
    7f01bb3faa2c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3faa2f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3faa32:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3faa36:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3faa3a:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3faa3e:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3faa42:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3faa46:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3faa4a:	8b 85 70 fa ff ff    	mov    -0x590(%rbp),%eax
    7f01bb3faa50:	85 c0                	test   %eax,%eax
    7f01bb3faa52:	0f 84 31 00 00 00    	je     0x7f01bb3faa89
    7f01bb3faa58:	49 8b c7             	mov    %r15,%rax
    7f01bb3faa5b:	48 83 c0 48          	add    $0x48,%rax
    7f01bb3faa5f:	49 8b cf             	mov    %r15,%rcx
    7f01bb3faa62:	48 83 c1 08          	add    $0x8,%rcx
    7f01bb3faa66:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3faa69:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3faa6c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3faa70:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3faa74:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3faa78:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3faa7c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3faa80:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3faa84:	e9 2f 00 00 00       	jmpq   0x7f01bb3faab8
    7f01bb3faa89:	49 8b c7             	mov    %r15,%rax
    7f01bb3faa8c:	48 83 c0 48          	add    $0x48,%rax
    7f01bb3faa90:	49 8b cf             	mov    %r15,%rcx
    7f01bb3faa93:	48 81 c1 88 41 00 00 	add    $0x4188,%rcx
    7f01bb3faa9a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3faa9d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3faaa0:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3faaa4:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3faaa8:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3faaac:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3faab0:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3faab4:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3faab8:	8b 85 98 fa ff ff    	mov    -0x568(%rbp),%eax
    7f01bb3faabe:	23 85 68 fa ff ff    	and    -0x598(%rbp),%eax
    7f01bb3faac4:	8b 8d 90 fa ff ff    	mov    -0x570(%rbp),%ecx
    7f01bb3faaca:	0b c1                	or     %ecx,%eax
    7f01bb3faacc:	85 c0                	test   %eax,%eax
    7f01bb3faace:	0f 84 33 00 00 00    	je     0x7f01bb3fab07
    7f01bb3faad4:	49 8b c7             	mov    %r15,%rax
    7f01bb3faad7:	48 05 88 00 00 00    	add    $0x88,%rax
    7f01bb3faadd:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3faae4:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3faae7:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3faaea:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3faaee:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3faaf2:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3faaf6:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3faafa:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3faafe:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fab02:	e9 31 00 00 00       	jmpq   0x7f01bb3fab38
    7f01bb3fab07:	49 8b c7             	mov    %r15,%rax
    7f01bb3fab0a:	48 05 88 00 00 00    	add    $0x88,%rax
    7f01bb3fab10:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fab13:	48 81 c1 c8 41 00 00 	add    $0x41c8,%rcx
    7f01bb3fab1a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fab1d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fab20:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fab24:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fab28:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fab2c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fab30:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fab34:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fab38:	8b 85 d0 fa ff ff    	mov    -0x530(%rbp),%eax
    7f01bb3fab3e:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fab41:	0f 94 c0             	sete   %al
    7f01bb3fab44:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fab47:	89 85 58 fa ff ff    	mov    %eax,-0x5a8(%rbp)
    7f01bb3fab4d:	8b 8d c8 fa ff ff    	mov    -0x538(%rbp),%ecx
    7f01bb3fab53:	23 c1                	and    %ecx,%eax
    7f01bb3fab55:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    7f01bb3fab58:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fab5b:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fab5e:	85 c9                	test   %ecx,%ecx
    7f01bb3fab60:	0f 94 c1             	sete   %cl
    7f01bb3fab63:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fab66:	23 c1                	and    %ecx,%eax
    7f01bb3fab68:	8b 4d e8             	mov    -0x18(%rbp),%ecx
    7f01bb3fab6b:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fab6e:	89 8d 50 fa ff ff    	mov    %ecx,-0x5b0(%rbp)
    7f01bb3fab74:	85 c9                	test   %ecx,%ecx
    7f01bb3fab76:	0f 94 c1             	sete   %cl
    7f01bb3fab79:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fab7c:	89 8d 48 fa ff ff    	mov    %ecx,-0x5b8(%rbp)
    7f01bb3fab82:	8b 95 b0 fe ff ff    	mov    -0x150(%rbp),%edx
    7f01bb3fab88:	23 ca                	and    %edx,%ecx
    7f01bb3fab8a:	8b d1                	mov    %ecx,%edx
    7f01bb3fab8c:	85 d2                	test   %edx,%edx
    7f01bb3fab8e:	0f 94 c2             	sete   %dl
    7f01bb3fab91:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fab94:	89 95 40 fa ff ff    	mov    %edx,-0x5c0(%rbp)
    7f01bb3fab9a:	23 d0                	and    %eax,%edx
    7f01bb3fab9c:	8b 75 e8             	mov    -0x18(%rbp),%esi
    7f01bb3fab9f:	83 e6 03             	and    $0x3,%esi
    7f01bb3faba2:	d1 e6                	shl    %esi
    7f01bb3faba4:	89 b5 38 fa ff ff    	mov    %esi,-0x5c8(%rbp)
    7f01bb3fabaa:	89 85 30 fa ff ff    	mov    %eax,-0x5d0(%rbp)
    7f01bb3fabb0:	85 c0                	test   %eax,%eax
    7f01bb3fabb2:	0f 94 c0             	sete   %al
    7f01bb3fabb5:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fabb8:	89 8d 28 fa ff ff    	mov    %ecx,-0x5d8(%rbp)
    7f01bb3fabbe:	23 c8                	and    %eax,%ecx
    7f01bb3fabc0:	89 8d 20 fa ff ff    	mov    %ecx,-0x5e0(%rbp)
    7f01bb3fabc6:	8b 45 e8             	mov    -0x18(%rbp),%eax
    7f01bb3fabc9:	d1 e8                	shr    %eax
    7f01bb3fabcb:	83 e0 03             	and    $0x3,%eax
    7f01bb3fabce:	89 85 18 fa ff ff    	mov    %eax,-0x5e8(%rbp)
    7f01bb3fabd4:	85 d2                	test   %edx,%edx
    7f01bb3fabd6:	0f 84 11 00 00 00    	je     0x7f01bb3fabed
    7f01bb3fabdc:	8b 85 38 fa ff ff    	mov    -0x5c8(%rbp),%eax
    7f01bb3fabe2:	89 85 10 fa ff ff    	mov    %eax,-0x5f0(%rbp)
    7f01bb3fabe8:	e9 28 00 00 00       	jmpq   0x7f01bb3fac15
    7f01bb3fabed:	8b 85 20 fa ff ff    	mov    -0x5e0(%rbp),%eax
    7f01bb3fabf3:	85 c0                	test   %eax,%eax
    7f01bb3fabf5:	0f 84 11 00 00 00    	je     0x7f01bb3fac0c
    7f01bb3fabfb:	8b 85 18 fa ff ff    	mov    -0x5e8(%rbp),%eax
    7f01bb3fac01:	89 85 10 fa ff ff    	mov    %eax,-0x5f0(%rbp)
    7f01bb3fac07:	e9 09 00 00 00       	jmpq   0x7f01bb3fac15
    7f01bb3fac0c:	8b 45 e8             	mov    -0x18(%rbp),%eax
    7f01bb3fac0f:	89 85 10 fa ff ff    	mov    %eax,-0x5f0(%rbp)
    7f01bb3fac15:	8b 85 30 fa ff ff    	mov    -0x5d0(%rbp),%eax
    7f01bb3fac1b:	23 85 50 fa ff ff    	and    -0x5b0(%rbp),%eax
    7f01bb3fac21:	8b 8d 28 fa ff ff    	mov    -0x5d8(%rbp),%ecx
    7f01bb3fac27:	0b c1                	or     %ecx,%eax
    7f01bb3fac29:	89 85 08 fa ff ff    	mov    %eax,-0x5f8(%rbp)
    7f01bb3fac2f:	8b 45 e8             	mov    -0x18(%rbp),%eax
    7f01bb3fac32:	d1 e8                	shr    %eax
    7f01bb3fac34:	83 e0 01             	and    $0x1,%eax
    7f01bb3fac37:	89 85 00 fa ff ff    	mov    %eax,-0x600(%rbp)
    7f01bb3fac3d:	8b 8d 40 fa ff ff    	mov    -0x5c0(%rbp),%ecx
    7f01bb3fac43:	0b c1                	or     %ecx,%eax
    7f01bb3fac45:	85 c0                	test   %eax,%eax
    7f01bb3fac47:	0f 84 33 00 00 00    	je     0x7f01bb3fac80
    7f01bb3fac4d:	49 8b c7             	mov    %r15,%rax
    7f01bb3fac50:	48 05 c8 00 00 00    	add    $0xc8,%rax
    7f01bb3fac56:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fac5d:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fac60:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fac63:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fac67:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fac6b:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fac6f:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fac73:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fac77:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fac7b:	e9 31 00 00 00       	jmpq   0x7f01bb3facb1
    7f01bb3fac80:	49 8b c7             	mov    %r15,%rax
    7f01bb3fac83:	48 05 c8 00 00 00    	add    $0xc8,%rax
    7f01bb3fac89:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fac8c:	48 81 c1 50 42 00 00 	add    $0x4250,%rcx
    7f01bb3fac93:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fac96:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fac99:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fac9d:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3faca1:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3faca5:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3faca9:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3facad:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3facb1:	8b 85 08 fa ff ff    	mov    -0x5f8(%rbp),%eax
    7f01bb3facb7:	85 c0                	test   %eax,%eax
    7f01bb3facb9:	0f 84 36 00 00 00    	je     0x7f01bb3facf5
    7f01bb3facbf:	49 8b c7             	mov    %r15,%rax
    7f01bb3facc2:	48 05 08 01 00 00    	add    $0x108,%rax
    7f01bb3facc8:	49 8b cf             	mov    %r15,%rcx
    7f01bb3faccb:	48 81 c1 c8 00 00 00 	add    $0xc8,%rcx
    7f01bb3facd2:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3facd5:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3facd8:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3facdc:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3face0:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3face4:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3face8:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3facec:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3facf0:	e9 31 00 00 00       	jmpq   0x7f01bb3fad26
    7f01bb3facf5:	49 8b c7             	mov    %r15,%rax
    7f01bb3facf8:	48 05 08 01 00 00    	add    $0x108,%rax
    7f01bb3facfe:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fad01:	48 81 c1 10 42 00 00 	add    $0x4210,%rcx
    7f01bb3fad08:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fad0b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fad0e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fad12:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fad16:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fad1a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fad1e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fad22:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fad26:	8b 85 30 fa ff ff    	mov    -0x5d0(%rbp),%eax
    7f01bb3fad2c:	23 85 00 fa ff ff    	and    -0x600(%rbp),%eax
    7f01bb3fad32:	8b 8d 28 fa ff ff    	mov    -0x5d8(%rbp),%ecx
    7f01bb3fad38:	0b c1                	or     %ecx,%eax
    7f01bb3fad3a:	85 c0                	test   %eax,%eax
    7f01bb3fad3c:	0f 84 33 00 00 00    	je     0x7f01bb3fad75
    7f01bb3fad42:	49 8b c7             	mov    %r15,%rax
    7f01bb3fad45:	48 05 48 01 00 00    	add    $0x148,%rax
    7f01bb3fad4b:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fad52:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fad55:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fad58:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fad5c:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fad60:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fad64:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fad68:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fad6c:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fad70:	e9 31 00 00 00       	jmpq   0x7f01bb3fada6
    7f01bb3fad75:	49 8b c7             	mov    %r15,%rax
    7f01bb3fad78:	48 05 48 01 00 00    	add    $0x148,%rax
    7f01bb3fad7e:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fad81:	48 81 c1 50 42 00 00 	add    $0x4250,%rcx
    7f01bb3fad88:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fad8b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fad8e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fad92:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fad96:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fad9a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fad9e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fada2:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fada6:	8b 85 d0 fa ff ff    	mov    -0x530(%rbp),%eax
    7f01bb3fadac:	83 f8 03             	cmp    $0x3,%eax
    7f01bb3fadaf:	0f 94 c0             	sete   %al
    7f01bb3fadb2:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fadb5:	89 85 f8 f9 ff ff    	mov    %eax,-0x608(%rbp)
    7f01bb3fadbb:	8b 8d c8 fa ff ff    	mov    -0x538(%rbp),%ecx
    7f01bb3fadc1:	23 c1                	and    %ecx,%eax
    7f01bb3fadc3:	8b 4d d0             	mov    -0x30(%rbp),%ecx
    7f01bb3fadc6:	85 c9                	test   %ecx,%ecx
    7f01bb3fadc8:	0f 94 c1             	sete   %cl
    7f01bb3fadcb:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fadce:	23 c1                	and    %ecx,%eax
    7f01bb3fadd0:	8b 4d d8             	mov    -0x28(%rbp),%ecx
    7f01bb3fadd3:	85 c9                	test   %ecx,%ecx
    7f01bb3fadd5:	0f 94 c1             	sete   %cl
    7f01bb3fadd8:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3faddb:	8b 95 a8 fe ff ff    	mov    -0x158(%rbp),%edx
    7f01bb3fade1:	23 ca                	and    %edx,%ecx
    7f01bb3fade3:	8b d1                	mov    %ecx,%edx
    7f01bb3fade5:	85 d2                	test   %edx,%edx
    7f01bb3fade7:	0f 94 c2             	sete   %dl
    7f01bb3fadea:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3faded:	89 95 f0 f9 ff ff    	mov    %edx,-0x610(%rbp)
    7f01bb3fadf3:	23 d0                	and    %eax,%edx
    7f01bb3fadf5:	8b 75 e0             	mov    -0x20(%rbp),%esi
    7f01bb3fadf8:	ff c6                	inc    %esi
    7f01bb3fadfa:	83 e6 3f             	and    $0x3f,%esi
    7f01bb3fadfd:	89 b5 e8 f9 ff ff    	mov    %esi,-0x618(%rbp)
    7f01bb3fae03:	89 85 e0 f9 ff ff    	mov    %eax,-0x620(%rbp)
    7f01bb3fae09:	85 c0                	test   %eax,%eax
    7f01bb3fae0b:	0f 94 c0             	sete   %al
    7f01bb3fae0e:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fae11:	89 8d d8 f9 ff ff    	mov    %ecx,-0x628(%rbp)
    7f01bb3fae17:	89 85 d0 f9 ff ff    	mov    %eax,-0x630(%rbp)
    7f01bb3fae1d:	23 c8                	and    %eax,%ecx
    7f01bb3fae1f:	89 8d c8 f9 ff ff    	mov    %ecx,-0x638(%rbp)
    7f01bb3fae25:	8b 45 e0             	mov    -0x20(%rbp),%eax
    7f01bb3fae28:	ff c8                	dec    %eax
    7f01bb3fae2a:	83 e0 3f             	and    $0x3f,%eax
    7f01bb3fae2d:	89 85 c0 f9 ff ff    	mov    %eax,-0x640(%rbp)
    7f01bb3fae33:	89 95 b8 f9 ff ff    	mov    %edx,-0x648(%rbp)
    7f01bb3fae39:	85 d2                	test   %edx,%edx
    7f01bb3fae3b:	0f 84 11 00 00 00    	je     0x7f01bb3fae52
    7f01bb3fae41:	8b 85 e8 f9 ff ff    	mov    -0x618(%rbp),%eax
    7f01bb3fae47:	89 85 b0 f9 ff ff    	mov    %eax,-0x650(%rbp)
    7f01bb3fae4d:	e9 28 00 00 00       	jmpq   0x7f01bb3fae7a
    7f01bb3fae52:	8b 85 c8 f9 ff ff    	mov    -0x638(%rbp),%eax
    7f01bb3fae58:	85 c0                	test   %eax,%eax
    7f01bb3fae5a:	0f 84 11 00 00 00    	je     0x7f01bb3fae71
    7f01bb3fae60:	8b 85 c0 f9 ff ff    	mov    -0x640(%rbp),%eax
    7f01bb3fae66:	89 85 b0 f9 ff ff    	mov    %eax,-0x650(%rbp)
    7f01bb3fae6c:	e9 09 00 00 00       	jmpq   0x7f01bb3fae7a
    7f01bb3fae71:	8b 45 e0             	mov    -0x20(%rbp),%eax
    7f01bb3fae74:	89 85 b0 f9 ff ff    	mov    %eax,-0x650(%rbp)
    7f01bb3fae7a:	8b 45 e0             	mov    -0x20(%rbp),%eax
    7f01bb3fae7d:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3fae80:	0f 94 c0             	sete   %al
    7f01bb3fae83:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fae86:	23 85 d8 f9 ff ff    	and    -0x628(%rbp),%eax
    7f01bb3fae8c:	23 85 d0 f9 ff ff    	and    -0x630(%rbp),%eax
    7f01bb3fae92:	85 c0                	test   %eax,%eax
    7f01bb3fae94:	0f 84 0f 00 00 00    	je     0x7f01bb3faea9
    7f01bb3fae9a:	c7 85 a8 f9 ff ff 01 	movl   $0x1,-0x658(%rbp)
    7f01bb3faea1:	00 00 00 
    7f01bb3faea4:	e9 26 00 00 00       	jmpq   0x7f01bb3faecf
    7f01bb3faea9:	8b 85 b8 f9 ff ff    	mov    -0x648(%rbp),%eax
    7f01bb3faeaf:	85 c0                	test   %eax,%eax
    7f01bb3faeb1:	0f 84 0f 00 00 00    	je     0x7f01bb3faec6
    7f01bb3faeb7:	c7 85 a8 f9 ff ff 00 	movl   $0x0,-0x658(%rbp)
    7f01bb3faebe:	00 00 00 
    7f01bb3faec1:	e9 09 00 00 00       	jmpq   0x7f01bb3faecf
    7f01bb3faec6:	8b 45 d8             	mov    -0x28(%rbp),%eax
    7f01bb3faec9:	89 85 a8 f9 ff ff    	mov    %eax,-0x658(%rbp)
    7f01bb3faecf:	8b 45 e0             	mov    -0x20(%rbp),%eax
    7f01bb3faed2:	83 f8 1f             	cmp    $0x1f,%eax
    7f01bb3faed5:	0f 94 c0             	sete   %al
    7f01bb3faed8:	0f b6 c0             	movzbl %al,%eax
    7f01bb3faedb:	23 85 e0 f9 ff ff    	and    -0x620(%rbp),%eax
    7f01bb3faee1:	23 85 f0 f9 ff ff    	and    -0x610(%rbp),%eax
    7f01bb3faee7:	85 c0                	test   %eax,%eax
    7f01bb3faee9:	0f 84 0f 00 00 00    	je     0x7f01bb3faefe
    7f01bb3faeef:	c7 85 a0 f9 ff ff 01 	movl   $0x1,-0x660(%rbp)
    7f01bb3faef6:	00 00 00 
    7f01bb3faef9:	e9 26 00 00 00       	jmpq   0x7f01bb3faf24
    7f01bb3faefe:	8b 85 c8 f9 ff ff    	mov    -0x638(%rbp),%eax
    7f01bb3faf04:	85 c0                	test   %eax,%eax
    7f01bb3faf06:	0f 84 0f 00 00 00    	je     0x7f01bb3faf1b
    7f01bb3faf0c:	c7 85 a0 f9 ff ff 00 	movl   $0x0,-0x660(%rbp)
    7f01bb3faf13:	00 00 00 
    7f01bb3faf16:	e9 09 00 00 00       	jmpq   0x7f01bb3faf24
    7f01bb3faf1b:	8b 45 d0             	mov    -0x30(%rbp),%eax
    7f01bb3faf1e:	89 85 a0 f9 ff ff    	mov    %eax,-0x660(%rbp)
    7f01bb3faf24:	8b 45 c8             	mov    -0x38(%rbp),%eax
    7f01bb3faf27:	ff c0                	inc    %eax
    7f01bb3faf29:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3faf2c:	89 85 98 f9 ff ff    	mov    %eax,-0x668(%rbp)
    7f01bb3faf32:	8b 85 e0 f9 ff ff    	mov    -0x620(%rbp),%eax
    7f01bb3faf38:	85 c0                	test   %eax,%eax
    7f01bb3faf3a:	0f 84 11 00 00 00    	je     0x7f01bb3faf51
    7f01bb3faf40:	8b 85 98 f9 ff ff    	mov    -0x668(%rbp),%eax
    7f01bb3faf46:	89 85 90 f9 ff ff    	mov    %eax,-0x670(%rbp)
    7f01bb3faf4c:	e9 09 00 00 00       	jmpq   0x7f01bb3faf5a
    7f01bb3faf51:	8b 45 c8             	mov    -0x38(%rbp),%eax
    7f01bb3faf54:	89 85 90 f9 ff ff    	mov    %eax,-0x670(%rbp)
    7f01bb3faf5a:	8b 85 d8 f9 ff ff    	mov    -0x628(%rbp),%eax
    7f01bb3faf60:	85 c0                	test   %eax,%eax
    7f01bb3faf62:	0f 84 0e 00 00 00    	je     0x7f01bb3faf76
    7f01bb3faf68:	8b 45 b8             	mov    -0x48(%rbp),%eax
    7f01bb3faf6b:	89 85 88 f9 ff ff    	mov    %eax,-0x678(%rbp)
    7f01bb3faf71:	e9 09 00 00 00       	jmpq   0x7f01bb3faf7f
    7f01bb3faf76:	8b 45 c0             	mov    -0x40(%rbp),%eax
    7f01bb3faf79:	89 85 88 f9 ff ff    	mov    %eax,-0x678(%rbp)
    7f01bb3faf7f:	8b 45 c0             	mov    -0x40(%rbp),%eax
    7f01bb3faf82:	83 c0 02             	add    $0x2,%eax
    7f01bb3faf85:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3faf88:	89 85 80 f9 ff ff    	mov    %eax,-0x680(%rbp)
    7f01bb3faf8e:	8b 85 d8 f9 ff ff    	mov    -0x628(%rbp),%eax
    7f01bb3faf94:	85 c0                	test   %eax,%eax
    7f01bb3faf96:	0f 84 11 00 00 00    	je     0x7f01bb3fafad
    7f01bb3faf9c:	8b 85 80 f9 ff ff    	mov    -0x680(%rbp),%eax
    7f01bb3fafa2:	89 85 78 f9 ff ff    	mov    %eax,-0x688(%rbp)
    7f01bb3fafa8:	e9 09 00 00 00       	jmpq   0x7f01bb3fafb6
    7f01bb3fafad:	8b 45 b8             	mov    -0x48(%rbp),%eax
    7f01bb3fafb0:	89 85 78 f9 ff ff    	mov    %eax,-0x688(%rbp)
    7f01bb3fafb6:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fafbb:	3b 45 e0             	cmp    -0x20(%rbp),%eax
    7f01bb3fafbe:	0f 94 c0             	sete   %al
    7f01bb3fafc1:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fafc4:	23 85 d8 f9 ff ff    	and    -0x628(%rbp),%eax
    7f01bb3fafca:	8b 4d d8             	mov    -0x28(%rbp),%ecx
    7f01bb3fafcd:	0b c1                	or     %ecx,%eax
    7f01bb3fafcf:	8b 8d e0 f9 ff ff    	mov    -0x620(%rbp),%ecx
    7f01bb3fafd5:	23 c1                	and    %ecx,%eax
    7f01bb3fafd7:	89 85 70 f9 ff ff    	mov    %eax,-0x690(%rbp)
    7f01bb3fafdd:	8b 8d 88 f9 ff ff    	mov    -0x678(%rbp),%ecx
    7f01bb3fafe3:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb3fafe6:	0f 93 c0             	setae  %al
    7f01bb3fafe9:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fafec:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb3fafef:	0f 92 c1             	setb   %cl
    7f01bb3faff2:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3faff5:	23 c1                	and    %ecx,%eax
    7f01bb3faff7:	85 c0                	test   %eax,%eax
    7f01bb3faff9:	0f 85 0a 00 00 00    	jne    0x7f01bb3fb009
    7f01bb3fafff:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fb004:	e9 15 ef 00 00       	jmpq   0x7f01bb409f1e
    7f01bb3fb009:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb00c:	48 05 88 01 00 00    	add    $0x188,%rax
    7f01bb3fb012:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb015:	48 81 c1 88 09 00 00 	add    $0x988,%rcx
    7f01bb3fb01c:	8b 95 88 f9 ff ff    	mov    -0x678(%rbp),%edx
    7f01bb3fb022:	c1 e2 06             	shl    $0x6,%edx
    7f01bb3fb025:	8b d2                	mov    %edx,%edx
    7f01bb3fb027:	48 03 c2             	add    %rdx,%rax
    7f01bb3fb02a:	0f 10 00             	movups (%rax),%xmm0
    7f01bb3fb02d:	0f 11 01             	movups %xmm0,(%rcx)
    7f01bb3fb030:	0f 10 40 10          	movups 0x10(%rax),%xmm0
    7f01bb3fb034:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
    7f01bb3fb038:	0f 10 40 20          	movups 0x20(%rax),%xmm0
    7f01bb3fb03c:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
    7f01bb3fb040:	0f 10 40 30          	movups 0x30(%rax),%xmm0
    7f01bb3fb044:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
    7f01bb3fb048:	8b 85 d0 fa ff ff    	mov    -0x530(%rbp),%eax
    7f01bb3fb04e:	83 f8 04             	cmp    $0x4,%eax
    7f01bb3fb051:	0f 94 c0             	sete   %al
    7f01bb3fb054:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb057:	89 85 68 f9 ff ff    	mov    %eax,-0x698(%rbp)
    7f01bb3fb05d:	8b 8d c8 fa ff ff    	mov    -0x538(%rbp),%ecx
    7f01bb3fb063:	23 c1                	and    %ecx,%eax
    7f01bb3fb065:	8b 4d 98             	mov    -0x68(%rbp),%ecx
    7f01bb3fb068:	85 c9                	test   %ecx,%ecx
    7f01bb3fb06a:	0f 94 c1             	sete   %cl
    7f01bb3fb06d:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb070:	23 c1                	and    %ecx,%eax
    7f01bb3fb072:	8b 4d a0             	mov    -0x60(%rbp),%ecx
    7f01bb3fb075:	85 c9                	test   %ecx,%ecx
    7f01bb3fb077:	0f 94 c1             	sete   %cl
    7f01bb3fb07a:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb07d:	8b 95 a8 fe ff ff    	mov    -0x158(%rbp),%edx
    7f01bb3fb083:	23 ca                	and    %edx,%ecx
    7f01bb3fb085:	8b d1                	mov    %ecx,%edx
    7f01bb3fb087:	85 d2                	test   %edx,%edx
    7f01bb3fb089:	0f 94 c2             	sete   %dl
    7f01bb3fb08c:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fb08f:	89 95 60 f9 ff ff    	mov    %edx,-0x6a0(%rbp)
    7f01bb3fb095:	23 d0                	and    %eax,%edx
    7f01bb3fb097:	8b 75 a8             	mov    -0x58(%rbp),%esi
    7f01bb3fb09a:	ff c6                	inc    %esi
    7f01bb3fb09c:	83 e6 3f             	and    $0x3f,%esi
    7f01bb3fb09f:	89 b5 58 f9 ff ff    	mov    %esi,-0x6a8(%rbp)
    7f01bb3fb0a5:	89 85 50 f9 ff ff    	mov    %eax,-0x6b0(%rbp)
    7f01bb3fb0ab:	85 c0                	test   %eax,%eax
    7f01bb3fb0ad:	0f 94 c0             	sete   %al
    7f01bb3fb0b0:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb0b3:	89 8d 48 f9 ff ff    	mov    %ecx,-0x6b8(%rbp)
    7f01bb3fb0b9:	89 85 40 f9 ff ff    	mov    %eax,-0x6c0(%rbp)
    7f01bb3fb0bf:	23 c8                	and    %eax,%ecx
    7f01bb3fb0c1:	89 8d 38 f9 ff ff    	mov    %ecx,-0x6c8(%rbp)
    7f01bb3fb0c7:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7f01bb3fb0ca:	ff c8                	dec    %eax
    7f01bb3fb0cc:	83 e0 3f             	and    $0x3f,%eax
    7f01bb3fb0cf:	89 85 30 f9 ff ff    	mov    %eax,-0x6d0(%rbp)
    7f01bb3fb0d5:	89 95 28 f9 ff ff    	mov    %edx,-0x6d8(%rbp)
    7f01bb3fb0db:	85 d2                	test   %edx,%edx
    7f01bb3fb0dd:	0f 84 11 00 00 00    	je     0x7f01bb3fb0f4
    7f01bb3fb0e3:	8b 85 58 f9 ff ff    	mov    -0x6a8(%rbp),%eax
    7f01bb3fb0e9:	89 85 20 f9 ff ff    	mov    %eax,-0x6e0(%rbp)
    7f01bb3fb0ef:	e9 28 00 00 00       	jmpq   0x7f01bb3fb11c
    7f01bb3fb0f4:	8b 85 38 f9 ff ff    	mov    -0x6c8(%rbp),%eax
    7f01bb3fb0fa:	85 c0                	test   %eax,%eax
    7f01bb3fb0fc:	0f 84 11 00 00 00    	je     0x7f01bb3fb113
    7f01bb3fb102:	8b 85 30 f9 ff ff    	mov    -0x6d0(%rbp),%eax
    7f01bb3fb108:	89 85 20 f9 ff ff    	mov    %eax,-0x6e0(%rbp)
    7f01bb3fb10e:	e9 09 00 00 00       	jmpq   0x7f01bb3fb11c
    7f01bb3fb113:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7f01bb3fb116:	89 85 20 f9 ff ff    	mov    %eax,-0x6e0(%rbp)
    7f01bb3fb11c:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7f01bb3fb11f:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3fb122:	0f 94 c0             	sete   %al
    7f01bb3fb125:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb128:	23 85 48 f9 ff ff    	and    -0x6b8(%rbp),%eax
    7f01bb3fb12e:	23 85 40 f9 ff ff    	and    -0x6c0(%rbp),%eax
    7f01bb3fb134:	85 c0                	test   %eax,%eax
    7f01bb3fb136:	0f 84 0f 00 00 00    	je     0x7f01bb3fb14b
    7f01bb3fb13c:	c7 85 18 f9 ff ff 01 	movl   $0x1,-0x6e8(%rbp)
    7f01bb3fb143:	00 00 00 
    7f01bb3fb146:	e9 26 00 00 00       	jmpq   0x7f01bb3fb171
    7f01bb3fb14b:	8b 85 28 f9 ff ff    	mov    -0x6d8(%rbp),%eax
    7f01bb3fb151:	85 c0                	test   %eax,%eax
    7f01bb3fb153:	0f 84 0f 00 00 00    	je     0x7f01bb3fb168
    7f01bb3fb159:	c7 85 18 f9 ff ff 00 	movl   $0x0,-0x6e8(%rbp)
    7f01bb3fb160:	00 00 00 
    7f01bb3fb163:	e9 09 00 00 00       	jmpq   0x7f01bb3fb171
    7f01bb3fb168:	8b 45 a0             	mov    -0x60(%rbp),%eax
    7f01bb3fb16b:	89 85 18 f9 ff ff    	mov    %eax,-0x6e8(%rbp)
    7f01bb3fb171:	8b 45 a8             	mov    -0x58(%rbp),%eax
    7f01bb3fb174:	83 f8 1f             	cmp    $0x1f,%eax
    7f01bb3fb177:	0f 94 c0             	sete   %al
    7f01bb3fb17a:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb17d:	23 85 50 f9 ff ff    	and    -0x6b0(%rbp),%eax
    7f01bb3fb183:	23 85 60 f9 ff ff    	and    -0x6a0(%rbp),%eax
    7f01bb3fb189:	85 c0                	test   %eax,%eax
    7f01bb3fb18b:	0f 84 0f 00 00 00    	je     0x7f01bb3fb1a0
    7f01bb3fb191:	c7 85 10 f9 ff ff 01 	movl   $0x1,-0x6f0(%rbp)
    7f01bb3fb198:	00 00 00 
    7f01bb3fb19b:	e9 26 00 00 00       	jmpq   0x7f01bb3fb1c6
    7f01bb3fb1a0:	8b 85 38 f9 ff ff    	mov    -0x6c8(%rbp),%eax
    7f01bb3fb1a6:	85 c0                	test   %eax,%eax
    7f01bb3fb1a8:	0f 84 0f 00 00 00    	je     0x7f01bb3fb1bd
    7f01bb3fb1ae:	c7 85 10 f9 ff ff 00 	movl   $0x0,-0x6f0(%rbp)
    7f01bb3fb1b5:	00 00 00 
    7f01bb3fb1b8:	e9 09 00 00 00       	jmpq   0x7f01bb3fb1c6
    7f01bb3fb1bd:	8b 45 98             	mov    -0x68(%rbp),%eax
    7f01bb3fb1c0:	89 85 10 f9 ff ff    	mov    %eax,-0x6f0(%rbp)
    7f01bb3fb1c6:	8b 45 90             	mov    -0x70(%rbp),%eax
    7f01bb3fb1c9:	ff c0                	inc    %eax
    7f01bb3fb1cb:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3fb1ce:	89 85 08 f9 ff ff    	mov    %eax,-0x6f8(%rbp)
    7f01bb3fb1d4:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    7f01bb3fb1da:	85 c0                	test   %eax,%eax
    7f01bb3fb1dc:	0f 84 11 00 00 00    	je     0x7f01bb3fb1f3
    7f01bb3fb1e2:	8b 85 08 f9 ff ff    	mov    -0x6f8(%rbp),%eax
    7f01bb3fb1e8:	89 85 00 f9 ff ff    	mov    %eax,-0x700(%rbp)
    7f01bb3fb1ee:	e9 09 00 00 00       	jmpq   0x7f01bb3fb1fc
    7f01bb3fb1f3:	8b 45 90             	mov    -0x70(%rbp),%eax
    7f01bb3fb1f6:	89 85 00 f9 ff ff    	mov    %eax,-0x700(%rbp)
    7f01bb3fb1fc:	8b 85 48 f9 ff ff    	mov    -0x6b8(%rbp),%eax
    7f01bb3fb202:	85 c0                	test   %eax,%eax
    7f01bb3fb204:	0f 84 0e 00 00 00    	je     0x7f01bb3fb218
    7f01bb3fb20a:	8b 45 80             	mov    -0x80(%rbp),%eax
    7f01bb3fb20d:	89 85 f8 f8 ff ff    	mov    %eax,-0x708(%rbp)
    7f01bb3fb213:	e9 09 00 00 00       	jmpq   0x7f01bb3fb221
    7f01bb3fb218:	8b 45 88             	mov    -0x78(%rbp),%eax
    7f01bb3fb21b:	89 85 f8 f8 ff ff    	mov    %eax,-0x708(%rbp)
    7f01bb3fb221:	8b 45 88             	mov    -0x78(%rbp),%eax
    7f01bb3fb224:	83 c0 02             	add    $0x2,%eax
    7f01bb3fb227:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3fb22a:	89 85 f0 f8 ff ff    	mov    %eax,-0x710(%rbp)
    7f01bb3fb230:	8b 85 48 f9 ff ff    	mov    -0x6b8(%rbp),%eax
    7f01bb3fb236:	85 c0                	test   %eax,%eax
    7f01bb3fb238:	0f 84 11 00 00 00    	je     0x7f01bb3fb24f
    7f01bb3fb23e:	8b 85 f0 f8 ff ff    	mov    -0x710(%rbp),%eax
    7f01bb3fb244:	89 85 e8 f8 ff ff    	mov    %eax,-0x718(%rbp)
    7f01bb3fb24a:	e9 09 00 00 00       	jmpq   0x7f01bb3fb258
    7f01bb3fb24f:	8b 45 80             	mov    -0x80(%rbp),%eax
    7f01bb3fb252:	89 85 e8 f8 ff ff    	mov    %eax,-0x718(%rbp)
    7f01bb3fb258:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fb25d:	3b 45 a8             	cmp    -0x58(%rbp),%eax
    7f01bb3fb260:	0f 94 c0             	sete   %al
    7f01bb3fb263:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb266:	23 85 48 f9 ff ff    	and    -0x6b8(%rbp),%eax
    7f01bb3fb26c:	8b 4d a0             	mov    -0x60(%rbp),%ecx
    7f01bb3fb26f:	0b c1                	or     %ecx,%eax
    7f01bb3fb271:	8b 8d 50 f9 ff ff    	mov    -0x6b0(%rbp),%ecx
    7f01bb3fb277:	23 c1                	and    %ecx,%eax
    7f01bb3fb279:	89 85 e0 f8 ff ff    	mov    %eax,-0x720(%rbp)
    7f01bb3fb27f:	8b 8d f8 f8 ff ff    	mov    -0x708(%rbp),%ecx
    7f01bb3fb285:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb3fb288:	0f 93 c0             	setae  %al
    7f01bb3fb28b:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb28e:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb3fb291:	0f 92 c1             	setb   %cl
    7f01bb3fb294:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb297:	23 c1                	and    %ecx,%eax
    7f01bb3fb299:	85 c0                	test   %eax,%eax
    7f01bb3fb29b:	0f 85 0a 00 00 00    	jne    0x7f01bb3fb2ab
    7f01bb3fb2a1:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fb2a6:	e9 73 ec 00 00       	jmpq   0x7f01bb409f1e
    7f01bb3fb2ab:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb2ae:	48 05 c8 09 00 00    	add    $0x9c8,%rax
    7f01bb3fb2b4:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb2b7:	48 81 c1 c8 11 00 00 	add    $0x11c8,%rcx
    7f01bb3fb2be:	8b 95 f8 f8 ff ff    	mov    -0x708(%rbp),%edx
    7f01bb3fb2c4:	c1 e2 06             	shl    $0x6,%edx
    7f01bb3fb2c7:	8b d2                	mov    %edx,%edx
    7f01bb3fb2c9:	48 03 c2             	add    %rdx,%rax
    7f01bb3fb2cc:	0f 10 00             	movups (%rax),%xmm0
    7f01bb3fb2cf:	0f 11 01             	movups %xmm0,(%rcx)
    7f01bb3fb2d2:	0f 10 40 10          	movups 0x10(%rax),%xmm0
    7f01bb3fb2d6:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
    7f01bb3fb2da:	0f 10 40 20          	movups 0x20(%rax),%xmm0
    7f01bb3fb2de:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
    7f01bb3fb2e2:	0f 10 40 30          	movups 0x30(%rax),%xmm0
    7f01bb3fb2e6:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
    7f01bb3fb2ea:	8b 85 d0 fa ff ff    	mov    -0x530(%rbp),%eax
    7f01bb3fb2f0:	83 f8 05             	cmp    $0x5,%eax
    7f01bb3fb2f3:	0f 94 c0             	sete   %al
    7f01bb3fb2f6:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb2f9:	89 85 d8 f8 ff ff    	mov    %eax,-0x728(%rbp)
    7f01bb3fb2ff:	8b 8d c8 fa ff ff    	mov    -0x538(%rbp),%ecx
    7f01bb3fb305:	23 c1                	and    %ecx,%eax
    7f01bb3fb307:	8b 8d 70 ff ff ff    	mov    -0x90(%rbp),%ecx
    7f01bb3fb30d:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fb310:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fb313:	85 c9                	test   %ecx,%ecx
    7f01bb3fb315:	0f 94 c1             	sete   %cl
    7f01bb3fb318:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb31b:	23 c1                	and    %ecx,%eax
    7f01bb3fb31d:	8b 8d 70 ff ff ff    	mov    -0x90(%rbp),%ecx
    7f01bb3fb323:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fb326:	89 8d d0 f8 ff ff    	mov    %ecx,-0x730(%rbp)
    7f01bb3fb32c:	85 c9                	test   %ecx,%ecx
    7f01bb3fb32e:	0f 94 c1             	sete   %cl
    7f01bb3fb331:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb334:	89 8d c8 f8 ff ff    	mov    %ecx,-0x738(%rbp)
    7f01bb3fb33a:	8b 95 a0 fe ff ff    	mov    -0x160(%rbp),%edx
    7f01bb3fb340:	23 ca                	and    %edx,%ecx
    7f01bb3fb342:	8b d1                	mov    %ecx,%edx
    7f01bb3fb344:	85 d2                	test   %edx,%edx
    7f01bb3fb346:	0f 94 c2             	sete   %dl
    7f01bb3fb349:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fb34c:	89 95 c0 f8 ff ff    	mov    %edx,-0x740(%rbp)
    7f01bb3fb352:	23 d0                	and    %eax,%edx
    7f01bb3fb354:	8b b5 70 ff ff ff    	mov    -0x90(%rbp),%esi
    7f01bb3fb35a:	83 e6 03             	and    $0x3,%esi
    7f01bb3fb35d:	d1 e6                	shl    %esi
    7f01bb3fb35f:	89 b5 b8 f8 ff ff    	mov    %esi,-0x748(%rbp)
    7f01bb3fb365:	89 85 b0 f8 ff ff    	mov    %eax,-0x750(%rbp)
    7f01bb3fb36b:	85 c0                	test   %eax,%eax
    7f01bb3fb36d:	0f 94 c0             	sete   %al
    7f01bb3fb370:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb373:	89 8d a8 f8 ff ff    	mov    %ecx,-0x758(%rbp)
    7f01bb3fb379:	23 c8                	and    %eax,%ecx
    7f01bb3fb37b:	89 8d a0 f8 ff ff    	mov    %ecx,-0x760(%rbp)
    7f01bb3fb381:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    7f01bb3fb387:	d1 e8                	shr    %eax
    7f01bb3fb389:	83 e0 03             	and    $0x3,%eax
    7f01bb3fb38c:	89 85 98 f8 ff ff    	mov    %eax,-0x768(%rbp)
    7f01bb3fb392:	85 d2                	test   %edx,%edx
    7f01bb3fb394:	0f 84 11 00 00 00    	je     0x7f01bb3fb3ab
    7f01bb3fb39a:	8b 85 b8 f8 ff ff    	mov    -0x748(%rbp),%eax
    7f01bb3fb3a0:	89 85 90 f8 ff ff    	mov    %eax,-0x770(%rbp)
    7f01bb3fb3a6:	e9 2b 00 00 00       	jmpq   0x7f01bb3fb3d6
    7f01bb3fb3ab:	8b 85 a0 f8 ff ff    	mov    -0x760(%rbp),%eax
    7f01bb3fb3b1:	85 c0                	test   %eax,%eax
    7f01bb3fb3b3:	0f 84 11 00 00 00    	je     0x7f01bb3fb3ca
    7f01bb3fb3b9:	8b 85 98 f8 ff ff    	mov    -0x768(%rbp),%eax
    7f01bb3fb3bf:	89 85 90 f8 ff ff    	mov    %eax,-0x770(%rbp)
    7f01bb3fb3c5:	e9 0c 00 00 00       	jmpq   0x7f01bb3fb3d6
    7f01bb3fb3ca:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    7f01bb3fb3d0:	89 85 90 f8 ff ff    	mov    %eax,-0x770(%rbp)
    7f01bb3fb3d6:	8b 85 b0 f8 ff ff    	mov    -0x750(%rbp),%eax
    7f01bb3fb3dc:	23 85 d0 f8 ff ff    	and    -0x730(%rbp),%eax
    7f01bb3fb3e2:	8b 8d a8 f8 ff ff    	mov    -0x758(%rbp),%ecx
    7f01bb3fb3e8:	0b c1                	or     %ecx,%eax
    7f01bb3fb3ea:	89 85 88 f8 ff ff    	mov    %eax,-0x778(%rbp)
    7f01bb3fb3f0:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
    7f01bb3fb3f6:	d1 e8                	shr    %eax
    7f01bb3fb3f8:	83 e0 01             	and    $0x1,%eax
    7f01bb3fb3fb:	89 85 80 f8 ff ff    	mov    %eax,-0x780(%rbp)
    7f01bb3fb401:	8b 8d c0 f8 ff ff    	mov    -0x740(%rbp),%ecx
    7f01bb3fb407:	0b c1                	or     %ecx,%eax
    7f01bb3fb409:	85 c0                	test   %eax,%eax
    7f01bb3fb40b:	0f 84 33 00 00 00    	je     0x7f01bb3fb444
    7f01bb3fb411:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb414:	48 05 08 12 00 00    	add    $0x1208,%rax
    7f01bb3fb41a:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fb421:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb424:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb427:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb42b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb42f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb433:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb437:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb43b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb43f:	e9 31 00 00 00       	jmpq   0x7f01bb3fb475
    7f01bb3fb444:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb447:	48 05 08 12 00 00    	add    $0x1208,%rax
    7f01bb3fb44d:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb450:	48 81 c1 08 44 00 00 	add    $0x4408,%rcx
    7f01bb3fb457:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb45a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb45d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb461:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb465:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb469:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb46d:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb471:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb475:	8b 85 88 f8 ff ff    	mov    -0x778(%rbp),%eax
    7f01bb3fb47b:	85 c0                	test   %eax,%eax
    7f01bb3fb47d:	0f 84 36 00 00 00    	je     0x7f01bb3fb4b9
    7f01bb3fb483:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb486:	48 05 48 12 00 00    	add    $0x1248,%rax
    7f01bb3fb48c:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb48f:	48 81 c1 08 12 00 00 	add    $0x1208,%rcx
    7f01bb3fb496:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb499:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb49c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb4a0:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb4a4:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb4a8:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb4ac:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb4b0:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb4b4:	e9 31 00 00 00       	jmpq   0x7f01bb3fb4ea
    7f01bb3fb4b9:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb4bc:	48 05 48 12 00 00    	add    $0x1248,%rax
    7f01bb3fb4c2:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb4c5:	48 81 c1 c8 43 00 00 	add    $0x43c8,%rcx
    7f01bb3fb4cc:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb4cf:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb4d2:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb4d6:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb4da:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb4de:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb4e2:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb4e6:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb4ea:	8b 85 b0 f8 ff ff    	mov    -0x750(%rbp),%eax
    7f01bb3fb4f0:	23 85 80 f8 ff ff    	and    -0x780(%rbp),%eax
    7f01bb3fb4f6:	8b 8d a8 f8 ff ff    	mov    -0x758(%rbp),%ecx
    7f01bb3fb4fc:	0b c1                	or     %ecx,%eax
    7f01bb3fb4fe:	85 c0                	test   %eax,%eax
    7f01bb3fb500:	0f 84 33 00 00 00    	je     0x7f01bb3fb539
    7f01bb3fb506:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb509:	48 05 88 12 00 00    	add    $0x1288,%rax
    7f01bb3fb50f:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fb516:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb519:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb51c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb520:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb524:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb528:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb52c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb530:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb534:	e9 31 00 00 00       	jmpq   0x7f01bb3fb56a
    7f01bb3fb539:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb53c:	48 05 88 12 00 00    	add    $0x1288,%rax
    7f01bb3fb542:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb545:	48 81 c1 08 44 00 00 	add    $0x4408,%rcx
    7f01bb3fb54c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb54f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb552:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb556:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb55a:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb55e:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb562:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb566:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb56a:	8b 85 d0 fa ff ff    	mov    -0x530(%rbp),%eax
    7f01bb3fb570:	83 f8 06             	cmp    $0x6,%eax
    7f01bb3fb573:	0f 94 c0             	sete   %al
    7f01bb3fb576:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb579:	89 85 78 f8 ff ff    	mov    %eax,-0x788(%rbp)
    7f01bb3fb57f:	8b 8d c8 fa ff ff    	mov    -0x538(%rbp),%ecx
    7f01bb3fb585:	23 c1                	and    %ecx,%eax
    7f01bb3fb587:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
    7f01bb3fb58d:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fb590:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fb593:	85 c9                	test   %ecx,%ecx
    7f01bb3fb595:	0f 94 c1             	sete   %cl
    7f01bb3fb598:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb59b:	23 c1                	and    %ecx,%eax
    7f01bb3fb59d:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
    7f01bb3fb5a3:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fb5a6:	89 8d 70 f8 ff ff    	mov    %ecx,-0x790(%rbp)
    7f01bb3fb5ac:	85 c9                	test   %ecx,%ecx
    7f01bb3fb5ae:	0f 94 c1             	sete   %cl
    7f01bb3fb5b1:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb5b4:	89 8d 68 f8 ff ff    	mov    %ecx,-0x798(%rbp)
    7f01bb3fb5ba:	8b 95 98 fe ff ff    	mov    -0x168(%rbp),%edx
    7f01bb3fb5c0:	23 ca                	and    %edx,%ecx
    7f01bb3fb5c2:	8b d1                	mov    %ecx,%edx
    7f01bb3fb5c4:	85 d2                	test   %edx,%edx
    7f01bb3fb5c6:	0f 94 c2             	sete   %dl
    7f01bb3fb5c9:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fb5cc:	89 95 60 f8 ff ff    	mov    %edx,-0x7a0(%rbp)
    7f01bb3fb5d2:	23 d0                	and    %eax,%edx
    7f01bb3fb5d4:	8b b5 68 ff ff ff    	mov    -0x98(%rbp),%esi
    7f01bb3fb5da:	83 e6 03             	and    $0x3,%esi
    7f01bb3fb5dd:	d1 e6                	shl    %esi
    7f01bb3fb5df:	89 b5 58 f8 ff ff    	mov    %esi,-0x7a8(%rbp)
    7f01bb3fb5e5:	89 85 50 f8 ff ff    	mov    %eax,-0x7b0(%rbp)
    7f01bb3fb5eb:	85 c0                	test   %eax,%eax
    7f01bb3fb5ed:	0f 94 c0             	sete   %al
    7f01bb3fb5f0:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb5f3:	89 8d 48 f8 ff ff    	mov    %ecx,-0x7b8(%rbp)
    7f01bb3fb5f9:	23 c8                	and    %eax,%ecx
    7f01bb3fb5fb:	89 8d 40 f8 ff ff    	mov    %ecx,-0x7c0(%rbp)
    7f01bb3fb601:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    7f01bb3fb607:	d1 e8                	shr    %eax
    7f01bb3fb609:	83 e0 03             	and    $0x3,%eax
    7f01bb3fb60c:	89 85 38 f8 ff ff    	mov    %eax,-0x7c8(%rbp)
    7f01bb3fb612:	85 d2                	test   %edx,%edx
    7f01bb3fb614:	0f 84 11 00 00 00    	je     0x7f01bb3fb62b
    7f01bb3fb61a:	8b 85 58 f8 ff ff    	mov    -0x7a8(%rbp),%eax
    7f01bb3fb620:	89 85 30 f8 ff ff    	mov    %eax,-0x7d0(%rbp)
    7f01bb3fb626:	e9 2b 00 00 00       	jmpq   0x7f01bb3fb656
    7f01bb3fb62b:	8b 85 40 f8 ff ff    	mov    -0x7c0(%rbp),%eax
    7f01bb3fb631:	85 c0                	test   %eax,%eax
    7f01bb3fb633:	0f 84 11 00 00 00    	je     0x7f01bb3fb64a
    7f01bb3fb639:	8b 85 38 f8 ff ff    	mov    -0x7c8(%rbp),%eax
    7f01bb3fb63f:	89 85 30 f8 ff ff    	mov    %eax,-0x7d0(%rbp)
    7f01bb3fb645:	e9 0c 00 00 00       	jmpq   0x7f01bb3fb656
    7f01bb3fb64a:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    7f01bb3fb650:	89 85 30 f8 ff ff    	mov    %eax,-0x7d0(%rbp)
    7f01bb3fb656:	8b 85 50 f8 ff ff    	mov    -0x7b0(%rbp),%eax
    7f01bb3fb65c:	23 85 70 f8 ff ff    	and    -0x790(%rbp),%eax
    7f01bb3fb662:	8b 8d 48 f8 ff ff    	mov    -0x7b8(%rbp),%ecx
    7f01bb3fb668:	0b c1                	or     %ecx,%eax
    7f01bb3fb66a:	89 85 28 f8 ff ff    	mov    %eax,-0x7d8(%rbp)
    7f01bb3fb670:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
    7f01bb3fb676:	d1 e8                	shr    %eax
    7f01bb3fb678:	83 e0 01             	and    $0x1,%eax
    7f01bb3fb67b:	89 85 20 f8 ff ff    	mov    %eax,-0x7e0(%rbp)
    7f01bb3fb681:	8b 8d 60 f8 ff ff    	mov    -0x7a0(%rbp),%ecx
    7f01bb3fb687:	0b c1                	or     %ecx,%eax
    7f01bb3fb689:	85 c0                	test   %eax,%eax
    7f01bb3fb68b:	0f 84 33 00 00 00    	je     0x7f01bb3fb6c4
    7f01bb3fb691:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb694:	48 05 c8 12 00 00    	add    $0x12c8,%rax
    7f01bb3fb69a:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fb6a1:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb6a4:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb6a7:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb6ab:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb6af:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb6b3:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb6b7:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb6bb:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb6bf:	e9 31 00 00 00       	jmpq   0x7f01bb3fb6f5
    7f01bb3fb6c4:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb6c7:	48 05 c8 12 00 00    	add    $0x12c8,%rax
    7f01bb3fb6cd:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb6d0:	48 81 c1 90 44 00 00 	add    $0x4490,%rcx
    7f01bb3fb6d7:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb6da:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb6dd:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb6e1:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb6e5:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb6e9:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb6ed:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb6f1:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb6f5:	8b 85 28 f8 ff ff    	mov    -0x7d8(%rbp),%eax
    7f01bb3fb6fb:	85 c0                	test   %eax,%eax
    7f01bb3fb6fd:	0f 84 36 00 00 00    	je     0x7f01bb3fb739
    7f01bb3fb703:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb706:	48 05 08 13 00 00    	add    $0x1308,%rax
    7f01bb3fb70c:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb70f:	48 81 c1 c8 12 00 00 	add    $0x12c8,%rcx
    7f01bb3fb716:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb719:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb71c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb720:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb724:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb728:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb72c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb730:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb734:	e9 31 00 00 00       	jmpq   0x7f01bb3fb76a
    7f01bb3fb739:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb73c:	48 05 08 13 00 00    	add    $0x1308,%rax
    7f01bb3fb742:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb745:	48 81 c1 50 44 00 00 	add    $0x4450,%rcx
    7f01bb3fb74c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb74f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb752:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb756:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb75a:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb75e:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb762:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb766:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb76a:	8b 85 50 f8 ff ff    	mov    -0x7b0(%rbp),%eax
    7f01bb3fb770:	23 85 20 f8 ff ff    	and    -0x7e0(%rbp),%eax
    7f01bb3fb776:	8b 8d 48 f8 ff ff    	mov    -0x7b8(%rbp),%ecx
    7f01bb3fb77c:	0b c1                	or     %ecx,%eax
    7f01bb3fb77e:	85 c0                	test   %eax,%eax
    7f01bb3fb780:	0f 84 33 00 00 00    	je     0x7f01bb3fb7b9
    7f01bb3fb786:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb789:	48 05 48 13 00 00    	add    $0x1348,%rax
    7f01bb3fb78f:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fb796:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb799:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb79c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb7a0:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb7a4:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb7a8:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb7ac:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb7b0:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb7b4:	e9 31 00 00 00       	jmpq   0x7f01bb3fb7ea
    7f01bb3fb7b9:	49 8b c7             	mov    %r15,%rax
    7f01bb3fb7bc:	48 05 48 13 00 00    	add    $0x1348,%rax
    7f01bb3fb7c2:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fb7c5:	48 81 c1 90 44 00 00 	add    $0x4490,%rcx
    7f01bb3fb7cc:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fb7cf:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fb7d2:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fb7d6:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fb7da:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fb7de:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fb7e2:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fb7e6:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fb7ea:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb3fb7f0:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3fb7f3:	0f 94 c0             	sete   %al
    7f01bb3fb7f6:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fb7f9:	41 83 fd 01          	cmp    $0x1,%r13d
    7f01bb3fb7fd:	0f 94 c1             	sete   %cl
    7f01bb3fb800:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fb803:	89 8d 18 f8 ff ff    	mov    %ecx,-0x7e8(%rbp)
    7f01bb3fb809:	23 c1                	and    %ecx,%eax
    7f01bb3fb80b:	89 85 10 f8 ff ff    	mov    %eax,-0x7f0(%rbp)
    7f01bb3fb811:	85 c0                	test   %eax,%eax
    7f01bb3fb813:	0f 84 0f 00 00 00    	je     0x7f01bb3fb828
    7f01bb3fb819:	c7 85 08 f8 ff ff 01 	movl   $0x1,-0x7f8(%rbp)
    7f01bb3fb820:	00 00 00 
    7f01bb3fb823:	e9 0a 00 00 00       	jmpq   0x7f01bb3fb832
    7f01bb3fb828:	c7 85 08 f8 ff ff 00 	movl   $0x0,-0x7f8(%rbp)
    7f01bb3fb82f:	00 00 00 
    7f01bb3fb832:	49 8b 87 d8 50 00 00 	mov    0x50d8(%r15),%rax
    7f01bb3fb839:	48 89 85 00 f8 ff ff 	mov    %rax,-0x800(%rbp)
    7f01bb3fb840:	8b 85 10 f8 ff ff    	mov    -0x7f0(%rbp),%eax
    7f01bb3fb846:	85 c0                	test   %eax,%eax
    7f01bb3fb848:	0f 84 13 00 00 00    	je     0x7f01bb3fb861
    7f01bb3fb84e:	48 8b 85 00 f8 ff ff 	mov    -0x800(%rbp),%rax
    7f01bb3fb855:	48 89 85 f8 f7 ff ff 	mov    %rax,-0x808(%rbp)
    7f01bb3fb85c:	e9 0b 00 00 00       	jmpq   0x7f01bb3fb86c
    7f01bb3fb861:	48 c7 85 f8 f7 ff ff 	movq   $0x0,-0x808(%rbp)
    7f01bb3fb868:	00 00 00 00 
    7f01bb3fb86c:	48 8b 85 f8 f7 ff ff 	mov    -0x808(%rbp),%rax
    7f01bb3fb873:	48 25 ff ff 0f 00    	and    $0xfffff,%rax
    7f01bb3fb879:	89 85 f0 f7 ff ff    	mov    %eax,-0x810(%rbp)
    7f01bb3fb87f:	8b 85 08 f8 ff ff    	mov    -0x7f8(%rbp),%eax
    7f01bb3fb885:	85 c0                	test   %eax,%eax
    7f01bb3fb887:	0f 84 11 00 00 00    	je     0x7f01bb3fb89e
    7f01bb3fb88d:	8b 85 f0 f7 ff ff    	mov    -0x810(%rbp),%eax
    7f01bb3fb893:	89 85 e8 f7 ff ff    	mov    %eax,-0x818(%rbp)
    7f01bb3fb899:	e9 0c 00 00 00       	jmpq   0x7f01bb3fb8aa
    7f01bb3fb89e:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    7f01bb3fb8a4:	89 85 e8 f7 ff ff    	mov    %eax,-0x818(%rbp)
    7f01bb3fb8aa:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    7f01bb3fb8b0:	ff c0                	inc    %eax
    7f01bb3fb8b2:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fb8b7:	89 85 e0 f7 ff ff    	mov    %eax,-0x820(%rbp)
    7f01bb3fb8bd:	41 83 fd 01          	cmp    $0x1,%r13d
    7f01bb3fb8c1:	0f 85 11 00 00 00    	jne    0x7f01bb3fb8d8
    7f01bb3fb8c7:	8b 85 e8 f7 ff ff    	mov    -0x818(%rbp),%eax
    7f01bb3fb8cd:	89 85 d8 f7 ff ff    	mov    %eax,-0x828(%rbp)
    7f01bb3fb8d3:	e9 2a 00 00 00       	jmpq   0x7f01bb3fb902
    7f01bb3fb8d8:	41 81 fd 00 00 08 00 	cmp    $0x80000,%r13d
    7f01bb3fb8df:	0f 85 11 00 00 00    	jne    0x7f01bb3fb8f6
    7f01bb3fb8e5:	8b 85 e0 f7 ff ff    	mov    -0x820(%rbp),%eax
    7f01bb3fb8eb:	89 85 d8 f7 ff ff    	mov    %eax,-0x828(%rbp)
    7f01bb3fb8f1:	e9 0c 00 00 00       	jmpq   0x7f01bb3fb902
    7f01bb3fb8f6:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    7f01bb3fb8fc:	89 85 d8 f7 ff ff    	mov    %eax,-0x828(%rbp)
    7f01bb3fb902:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb3fb908:	23 85 08 f8 ff ff    	and    -0x7f8(%rbp),%eax
    7f01bb3fb90e:	48 8b 8d f8 f7 ff ff 	mov    -0x808(%rbp),%rcx
    7f01bb3fb915:	48 c1 e9 20          	shr    $0x20,%rcx
    7f01bb3fb919:	48 81 e1 ff ff 0f 00 	and    $0xfffff,%rcx
    7f01bb3fb920:	ff c9                	dec    %ecx
    7f01bb3fb922:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3fb928:	89 8d d0 f7 ff ff    	mov    %ecx,-0x830(%rbp)
    7f01bb3fb92e:	89 85 c8 f7 ff ff    	mov    %eax,-0x838(%rbp)
    7f01bb3fb934:	85 c0                	test   %eax,%eax
    7f01bb3fb936:	0f 84 11 00 00 00    	je     0x7f01bb3fb94d
    7f01bb3fb93c:	8b 85 d0 f7 ff ff    	mov    -0x830(%rbp),%eax
    7f01bb3fb942:	89 85 c0 f7 ff ff    	mov    %eax,-0x840(%rbp)
    7f01bb3fb948:	e9 0c 00 00 00       	jmpq   0x7f01bb3fb959
    7f01bb3fb94d:	8b 85 58 ff ff ff    	mov    -0xa8(%rbp),%eax
    7f01bb3fb953:	89 85 c0 f7 ff ff    	mov    %eax,-0x840(%rbp)
    7f01bb3fb959:	8b 85 b0 fa ff ff    	mov    -0x550(%rbp),%eax
    7f01bb3fb95f:	23 85 48 fa ff ff    	and    -0x5b8(%rbp),%eax
    7f01bb3fb965:	8b 8d 60 ff ff ff    	mov    -0xa0(%rbp),%ecx
    7f01bb3fb96b:	83 e1 0f             	and    $0xf,%ecx
    7f01bb3fb96e:	89 8d b8 f7 ff ff    	mov    %ecx,-0x848(%rbp)
    7f01bb3fb974:	c1 e1 05             	shl    $0x5,%ecx
    7f01bb3fb977:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3fb97d:	49 8b d7             	mov    %r15,%rdx
    7f01bb3fb980:	48 81 c2 88 41 00 00 	add    $0x4188,%rdx
    7f01bb3fb987:	49 8b f7             	mov    %r15,%rsi
    7f01bb3fb98a:	48 81 c6 88 13 00 00 	add    $0x1388,%rsi
    7f01bb3fb991:	44 8b c1             	mov    %ecx,%r8d
    7f01bb3fb994:	89 8d b0 f7 ff ff    	mov    %ecx,-0x850(%rbp)
    7f01bb3fb99a:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fb99f:	48 89 95 a8 f7 ff ff 	mov    %rdx,-0x858(%rbp)
    7f01bb3fb9a6:	48 89 b5 a0 f7 ff ff 	mov    %rsi,-0x860(%rbp)
    7f01bb3fb9ad:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fb9b2:	48 8b bd a0 f7 ff ff 	mov    -0x860(%rbp),%rdi
    7f01bb3fb9b9:	89 85 98 f7 ff ff    	mov    %eax,-0x868(%rbp)
    7f01bb3fb9bf:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fb9c4:	e8 71 5b 8d ff       	callq  0x7f01bacd153a
    7f01bb3fb9c9:	41 8b 87 87 13 00 00 	mov    0x1387(%r15),%eax
    7f01bb3fb9d0:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fb9d3:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fb9d8:	89 85 90 f7 ff ff    	mov    %eax,-0x870(%rbp)
    7f01bb3fb9de:	8b 85 98 f7 ff ff    	mov    -0x868(%rbp),%eax
    7f01bb3fb9e4:	85 c0                	test   %eax,%eax
    7f01bb3fb9e6:	0f 84 11 00 00 00    	je     0x7f01bb3fb9fd
    7f01bb3fb9ec:	8b 85 90 f7 ff ff    	mov    -0x870(%rbp),%eax
    7f01bb3fb9f2:	89 85 88 f7 ff ff    	mov    %eax,-0x878(%rbp)
    7f01bb3fb9f8:	e9 0c 00 00 00       	jmpq   0x7f01bb3fba09
    7f01bb3fb9fd:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    7f01bb3fba03:	89 85 88 f7 ff ff    	mov    %eax,-0x878(%rbp)
    7f01bb3fba09:	49 8b c7             	mov    %r15,%rax
    7f01bb3fba0c:	48 05 68 45 00 00    	add    $0x4568,%rax
    7f01bb3fba12:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fba15:	48 81 c1 c8 13 00 00 	add    $0x13c8,%rcx
    7f01bb3fba1c:	44 8b 85 b0 f7 ff ff 	mov    -0x850(%rbp),%r8d
    7f01bb3fba23:	48 89 8d 80 f7 ff ff 	mov    %rcx,-0x880(%rbp)
    7f01bb3fba2a:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fba2f:	48 8b d0             	mov    %rax,%rdx
    7f01bb3fba32:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fba37:	48 8b bd 80 f7 ff ff 	mov    -0x880(%rbp),%rdi
    7f01bb3fba3e:	48 89 85 78 f7 ff ff 	mov    %rax,-0x888(%rbp)
    7f01bb3fba45:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fba4a:	e8 eb 5a 8d ff       	callq  0x7f01bacd153a
    7f01bb3fba4f:	41 8b 87 c7 13 00 00 	mov    0x13c7(%r15),%eax
    7f01bb3fba56:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fba59:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fba5e:	89 85 70 f7 ff ff    	mov    %eax,-0x890(%rbp)
    7f01bb3fba64:	41 83 fd 08          	cmp    $0x8,%r13d
    7f01bb3fba68:	0f 85 11 00 00 00    	jne    0x7f01bb3fba7f
    7f01bb3fba6e:	8b 85 88 f7 ff ff    	mov    -0x878(%rbp),%eax
    7f01bb3fba74:	89 85 68 f7 ff ff    	mov    %eax,-0x898(%rbp)
    7f01bb3fba7a:	e9 2a 00 00 00       	jmpq   0x7f01bb3fbaa9
    7f01bb3fba7f:	41 81 fd 00 00 10 00 	cmp    $0x100000,%r13d
    7f01bb3fba86:	0f 85 11 00 00 00    	jne    0x7f01bb3fba9d
    7f01bb3fba8c:	8b 85 70 f7 ff ff    	mov    -0x890(%rbp),%eax
    7f01bb3fba92:	89 85 68 f7 ff ff    	mov    %eax,-0x898(%rbp)
    7f01bb3fba98:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbaa9
    7f01bb3fba9d:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    7f01bb3fbaa3:	89 85 68 f7 ff ff    	mov    %eax,-0x898(%rbp)
    7f01bb3fbaa9:	49 8b c7             	mov    %r15,%rax
    7f01bb3fbaac:	48 05 10 42 00 00    	add    $0x4210,%rax
    7f01bb3fbab2:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fbab5:	48 81 c1 08 14 00 00 	add    $0x1408,%rcx
    7f01bb3fbabc:	44 8b 85 b0 f7 ff ff 	mov    -0x850(%rbp),%r8d
    7f01bb3fbac3:	48 89 8d 60 f7 ff ff 	mov    %rcx,-0x8a0(%rbp)
    7f01bb3fbaca:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fbacf:	48 8b d0             	mov    %rax,%rdx
    7f01bb3fbad2:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fbad7:	48 8b bd 60 f7 ff ff 	mov    -0x8a0(%rbp),%rdi
    7f01bb3fbade:	48 89 85 58 f7 ff ff 	mov    %rax,-0x8a8(%rbp)
    7f01bb3fbae5:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fbaea:	e8 4b 5a 8d ff       	callq  0x7f01bacd153a
    7f01bb3fbaef:	41 8b 87 07 14 00 00 	mov    0x1407(%r15),%eax
    7f01bb3fbaf6:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fbaf9:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbafe:	89 85 50 f7 ff ff    	mov    %eax,-0x8b0(%rbp)
    7f01bb3fbb04:	8b 85 98 f7 ff ff    	mov    -0x868(%rbp),%eax
    7f01bb3fbb0a:	85 c0                	test   %eax,%eax
    7f01bb3fbb0c:	0f 84 11 00 00 00    	je     0x7f01bb3fbb23
    7f01bb3fbb12:	8b 85 50 f7 ff ff    	mov    -0x8b0(%rbp),%eax
    7f01bb3fbb18:	89 85 48 f7 ff ff    	mov    %eax,-0x8b8(%rbp)
    7f01bb3fbb1e:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbb2f
    7f01bb3fbb23:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    7f01bb3fbb29:	89 85 48 f7 ff ff    	mov    %eax,-0x8b8(%rbp)
    7f01bb3fbb2f:	8b 85 20 fd ff ff    	mov    -0x2e0(%rbp),%eax
    7f01bb3fbb35:	83 e0 01             	and    $0x1,%eax
    7f01bb3fbb38:	89 85 40 f7 ff ff    	mov    %eax,-0x8c0(%rbp)
    7f01bb3fbb3e:	f7 d0                	not    %eax
    7f01bb3fbb40:	83 e0 01             	and    $0x1,%eax
    7f01bb3fbb43:	8b 8d 20 fd ff ff    	mov    -0x2e0(%rbp),%ecx
    7f01bb3fbb49:	d1 e9                	shr    %ecx
    7f01bb3fbb4b:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fbb4e:	89 8d 38 f7 ff ff    	mov    %ecx,-0x8c8(%rbp)
    7f01bb3fbb54:	f7 d1                	not    %ecx
    7f01bb3fbb56:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fbb59:	8b 95 20 fd ff ff    	mov    -0x2e0(%rbp),%edx
    7f01bb3fbb5f:	c1 ea 02             	shr    $0x2,%edx
    7f01bb3fbb62:	83 e2 01             	and    $0x1,%edx
    7f01bb3fbb65:	8b f2                	mov    %edx,%esi
    7f01bb3fbb67:	f7 d6                	not    %esi
    7f01bb3fbb69:	83 e6 01             	and    $0x1,%esi
    7f01bb3fbb6c:	33 ff                	xor    %edi,%edi
    7f01bb3fbb6e:	3b bd b0 fc ff ff    	cmp    -0x350(%rbp),%edi
    7f01bb3fbb74:	40 0f 94 c7          	sete   %dil
    7f01bb3fbb78:	40 0f b6 ff          	movzbl %dil,%edi
    7f01bb3fbb7c:	44 8b 85 00 fd ff ff 	mov    -0x300(%rbp),%r8d
    7f01bb3fbb83:	41 c1 e8 02          	shr    $0x2,%r8d
    7f01bb3fbb87:	41 83 e0 01          	and    $0x1,%r8d
    7f01bb3fbb8b:	44 89 85 30 f7 ff ff 	mov    %r8d,-0x8d0(%rbp)
    7f01bb3fbb92:	45 85 c0             	test   %r8d,%r8d
    7f01bb3fbb95:	41 0f 94 c0          	sete   %r8b
    7f01bb3fbb99:	45 0f b6 c0          	movzbl %r8b,%r8d
    7f01bb3fbb9d:	89 bd 28 f7 ff ff    	mov    %edi,-0x8d8(%rbp)
    7f01bb3fbba3:	41 0b f8             	or     %r8d,%edi
    7f01bb3fbba6:	44 8b 85 08 fd ff ff 	mov    -0x2f8(%rbp),%r8d
    7f01bb3fbbad:	41 81 e0 ff ff 0f 00 	and    $0xfffff,%r8d
    7f01bb3fbbb4:	41 83 e0 1f          	and    $0x1f,%r8d
    7f01bb3fbbb8:	41 83 e0 1f          	and    $0x1f,%r8d
    7f01bb3fbbbc:	89 8d 20 f7 ff ff    	mov    %ecx,-0x8e0(%rbp)
    7f01bb3fbbc2:	44 89 85 18 f7 ff ff 	mov    %r8d,-0x8e8(%rbp)
    7f01bb3fbbc9:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    7f01bb3fbbcf:	8b 8d 18 f7 ff ff    	mov    -0x8e8(%rbp),%ecx
    7f01bb3fbbd5:	41 d3 e0             	shl    %cl,%r8d
    7f01bb3fbbd8:	44 89 85 10 f7 ff ff 	mov    %r8d,-0x8f0(%rbp)
    7f01bb3fbbdf:	8b 8d d0 fc ff ff    	mov    -0x330(%rbp),%ecx
    7f01bb3fbbe5:	44 23 c1             	and    %ecx,%r8d
    7f01bb3fbbe8:	33 c9                	xor    %ecx,%ecx
    7f01bb3fbbea:	41 3b c8             	cmp    %r8d,%ecx
    7f01bb3fbbed:	0f 94 c1             	sete   %cl
    7f01bb3fbbf0:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fbbf3:	89 bd 08 f7 ff ff    	mov    %edi,-0x8f8(%rbp)
    7f01bb3fbbf9:	23 f9                	and    %ecx,%edi
    7f01bb3fbbfb:	89 95 00 f7 ff ff    	mov    %edx,-0x900(%rbp)
    7f01bb3fbc01:	85 d2                	test   %edx,%edx
    7f01bb3fbc03:	0f 94 c1             	sete   %cl
    7f01bb3fbc06:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fbc09:	0b f9                	or     %ecx,%edi
    7f01bb3fbc0b:	89 bd f8 f6 ff ff    	mov    %edi,-0x908(%rbp)
    7f01bb3fbc11:	0b f7                	or     %edi,%esi
    7f01bb3fbc13:	89 b5 f0 f6 ff ff    	mov    %esi,-0x910(%rbp)
    7f01bb3fbc19:	8b 8d 20 f7 ff ff    	mov    -0x8e0(%rbp),%ecx
    7f01bb3fbc1f:	0b f1                	or     %ecx,%esi
    7f01bb3fbc21:	89 b5 e8 f6 ff ff    	mov    %esi,-0x918(%rbp)
    7f01bb3fbc27:	0b c6                	or     %esi,%eax
    7f01bb3fbc29:	8b 8d 48 ff ff ff    	mov    -0xb8(%rbp),%ecx
    7f01bb3fbc2f:	ff c1                	inc    %ecx
    7f01bb3fbc31:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3fbc37:	89 8d e0 f6 ff ff    	mov    %ecx,-0x920(%rbp)
    7f01bb3fbc3d:	89 85 d8 f6 ff ff    	mov    %eax,-0x928(%rbp)
    7f01bb3fbc43:	85 c0                	test   %eax,%eax
    7f01bb3fbc45:	0f 84 11 00 00 00    	je     0x7f01bb3fbc5c
    7f01bb3fbc4b:	8b 85 e0 f6 ff ff    	mov    -0x920(%rbp),%eax
    7f01bb3fbc51:	89 85 d0 f6 ff ff    	mov    %eax,-0x930(%rbp)
    7f01bb3fbc57:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbc68
    7f01bb3fbc5c:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    7f01bb3fbc62:	89 85 d0 f6 ff ff    	mov    %eax,-0x930(%rbp)
    7f01bb3fbc68:	49 8b c7             	mov    %r15,%rax
    7f01bb3fbc6b:	48 05 a8 45 00 00    	add    $0x45a8,%rax
    7f01bb3fbc71:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fbc74:	48 81 c1 48 14 00 00 	add    $0x1448,%rcx
    7f01bb3fbc7b:	44 8b 85 b0 f7 ff ff 	mov    -0x850(%rbp),%r8d
    7f01bb3fbc82:	48 89 8d c8 f6 ff ff 	mov    %rcx,-0x938(%rbp)
    7f01bb3fbc89:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fbc8e:	48 8b d0             	mov    %rax,%rdx
    7f01bb3fbc91:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fbc96:	48 8b bd c8 f6 ff ff 	mov    -0x938(%rbp),%rdi
    7f01bb3fbc9d:	48 89 85 c0 f6 ff ff 	mov    %rax,-0x940(%rbp)
    7f01bb3fbca4:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fbca9:	e8 8c 58 8d ff       	callq  0x7f01bacd153a
    7f01bb3fbcae:	41 8b 87 47 14 00 00 	mov    0x1447(%r15),%eax
    7f01bb3fbcb5:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fbcb8:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbcbd:	89 85 b8 f6 ff ff    	mov    %eax,-0x948(%rbp)
    7f01bb3fbcc3:	41 83 fd 08          	cmp    $0x8,%r13d
    7f01bb3fbcc7:	0f 85 11 00 00 00    	jne    0x7f01bb3fbcde
    7f01bb3fbccd:	8b 85 48 f7 ff ff    	mov    -0x8b8(%rbp),%eax
    7f01bb3fbcd3:	89 85 b0 f6 ff ff    	mov    %eax,-0x950(%rbp)
    7f01bb3fbcd9:	e9 48 00 00 00       	jmpq   0x7f01bb3fbd26
    7f01bb3fbcde:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fbce5:	0f 85 11 00 00 00    	jne    0x7f01bb3fbcfc
    7f01bb3fbceb:	8b 85 d0 f6 ff ff    	mov    -0x930(%rbp),%eax
    7f01bb3fbcf1:	89 85 b0 f6 ff ff    	mov    %eax,-0x950(%rbp)
    7f01bb3fbcf7:	e9 2a 00 00 00       	jmpq   0x7f01bb3fbd26
    7f01bb3fbcfc:	41 81 fd 00 00 10 00 	cmp    $0x100000,%r13d
    7f01bb3fbd03:	0f 85 11 00 00 00    	jne    0x7f01bb3fbd1a
    7f01bb3fbd09:	8b 85 b8 f6 ff ff    	mov    -0x948(%rbp),%eax
    7f01bb3fbd0f:	89 85 b0 f6 ff ff    	mov    %eax,-0x950(%rbp)
    7f01bb3fbd15:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbd26
    7f01bb3fbd1a:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    7f01bb3fbd20:	89 85 b0 f6 ff ff    	mov    %eax,-0x950(%rbp)
    7f01bb3fbd26:	8b 85 e0 f7 ff ff    	mov    -0x820(%rbp),%eax
    7f01bb3fbd2c:	83 e0 0f             	and    $0xf,%eax
    7f01bb3fbd2f:	c1 e0 05             	shl    $0x5,%eax
    7f01bb3fbd32:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbd37:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fbd3a:	48 81 c1 a8 45 00 00 	add    $0x45a8,%rcx
    7f01bb3fbd41:	49 8b d7             	mov    %r15,%rdx
    7f01bb3fbd44:	48 81 c2 88 14 00 00 	add    $0x1488,%rdx
    7f01bb3fbd4b:	44 8b c0             	mov    %eax,%r8d
    7f01bb3fbd4e:	48 89 8d a8 f6 ff ff 	mov    %rcx,-0x958(%rbp)
    7f01bb3fbd55:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fbd5a:	48 89 95 a0 f6 ff ff 	mov    %rdx,-0x960(%rbp)
    7f01bb3fbd61:	48 8b 95 a8 f6 ff ff 	mov    -0x958(%rbp),%rdx
    7f01bb3fbd68:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fbd6d:	48 8b bd a0 f6 ff ff 	mov    -0x960(%rbp),%rdi
    7f01bb3fbd74:	89 85 98 f6 ff ff    	mov    %eax,-0x968(%rbp)
    7f01bb3fbd7a:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fbd7f:	e8 b6 57 8d ff       	callq  0x7f01bacd153a
    7f01bb3fbd84:	41 8b 87 87 14 00 00 	mov    0x1487(%r15),%eax
    7f01bb3fbd8b:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fbd8e:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbd93:	89 85 90 f6 ff ff    	mov    %eax,-0x970(%rbp)
    7f01bb3fbd99:	41 8b 87 0f 42 00 00 	mov    0x420f(%r15),%eax
    7f01bb3fbda0:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fbda3:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbda8:	89 85 88 f6 ff ff    	mov    %eax,-0x978(%rbp)
    7f01bb3fbdae:	8b 85 48 fa ff ff    	mov    -0x5b8(%rbp),%eax
    7f01bb3fbdb4:	85 c0                	test   %eax,%eax
    7f01bb3fbdb6:	0f 84 11 00 00 00    	je     0x7f01bb3fbdcd
    7f01bb3fbdbc:	8b 85 88 f6 ff ff    	mov    -0x978(%rbp),%eax
    7f01bb3fbdc2:	89 85 80 f6 ff ff    	mov    %eax,-0x980(%rbp)
    7f01bb3fbdc8:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbdd9
    7f01bb3fbdcd:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
    7f01bb3fbdd3:	89 85 80 f6 ff ff    	mov    %eax,-0x980(%rbp)
    7f01bb3fbdd9:	41 83 fd 40          	cmp    $0x40,%r13d
    7f01bb3fbddd:	0f 85 11 00 00 00    	jne    0x7f01bb3fbdf4
    7f01bb3fbde3:	8b 85 90 f6 ff ff    	mov    -0x970(%rbp),%eax
    7f01bb3fbde9:	89 85 78 f6 ff ff    	mov    %eax,-0x988(%rbp)
    7f01bb3fbdef:	e9 27 00 00 00       	jmpq   0x7f01bb3fbe1b
    7f01bb3fbdf4:	41 83 fd 20          	cmp    $0x20,%r13d
    7f01bb3fbdf8:	0f 85 11 00 00 00    	jne    0x7f01bb3fbe0f
    7f01bb3fbdfe:	8b 85 80 f6 ff ff    	mov    -0x980(%rbp),%eax
    7f01bb3fbe04:	89 85 78 f6 ff ff    	mov    %eax,-0x988(%rbp)
    7f01bb3fbe0a:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbe1b
    7f01bb3fbe0f:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
    7f01bb3fbe15:	89 85 78 f6 ff ff    	mov    %eax,-0x988(%rbp)
    7f01bb3fbe1b:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
    7f01bb3fbe21:	ff c8                	dec    %eax
    7f01bb3fbe23:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbe28:	89 85 70 f6 ff ff    	mov    %eax,-0x990(%rbp)
    7f01bb3fbe2e:	41 81 fd 80 00 00 00 	cmp    $0x80,%r13d
    7f01bb3fbe35:	0f 85 11 00 00 00    	jne    0x7f01bb3fbe4c
    7f01bb3fbe3b:	8b 85 70 f6 ff ff    	mov    -0x990(%rbp),%eax
    7f01bb3fbe41:	89 85 68 f6 ff ff    	mov    %eax,-0x998(%rbp)
    7f01bb3fbe47:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbe58
    7f01bb3fbe4c:	8b 85 38 ff ff ff    	mov    -0xc8(%rbp),%eax
    7f01bb3fbe52:	89 85 68 f6 ff ff    	mov    %eax,-0x998(%rbp)
    7f01bb3fbe58:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    7f01bb3fbe5e:	c1 e8 05             	shr    $0x5,%eax
    7f01bb3fbe61:	89 85 60 f6 ff ff    	mov    %eax,-0x9a0(%rbp)
    7f01bb3fbe67:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3fbe6a:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbe6f:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3fbe72:	89 85 58 f6 ff ff    	mov    %eax,-0x9a8(%rbp)
    7f01bb3fbe78:	3b 85 30 ff ff ff    	cmp    -0xd0(%rbp),%eax
    7f01bb3fbe7e:	0f 94 c0             	sete   %al
    7f01bb3fbe81:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fbe84:	89 85 50 f6 ff ff    	mov    %eax,-0x9b0(%rbp)
    7f01bb3fbe8a:	85 c0                	test   %eax,%eax
    7f01bb3fbe8c:	0f 84 11 00 00 00    	je     0x7f01bb3fbea3
    7f01bb3fbe92:	8b 85 30 ff ff ff    	mov    -0xd0(%rbp),%eax
    7f01bb3fbe98:	89 85 48 f6 ff ff    	mov    %eax,-0x9b8(%rbp)
    7f01bb3fbe9e:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbeaf
    7f01bb3fbea3:	8b 85 58 f6 ff ff    	mov    -0x9a8(%rbp),%eax
    7f01bb3fbea9:	89 85 48 f6 ff ff    	mov    %eax,-0x9b8(%rbp)
    7f01bb3fbeaf:	41 81 fd 80 00 00 00 	cmp    $0x80,%r13d
    7f01bb3fbeb6:	0f 85 11 00 00 00    	jne    0x7f01bb3fbecd
    7f01bb3fbebc:	8b 85 48 f6 ff ff    	mov    -0x9b8(%rbp),%eax
    7f01bb3fbec2:	89 85 40 f6 ff ff    	mov    %eax,-0x9c0(%rbp)
    7f01bb3fbec8:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbed9
    7f01bb3fbecd:	8b 85 30 ff ff ff    	mov    -0xd0(%rbp),%eax
    7f01bb3fbed3:	89 85 40 f6 ff ff    	mov    %eax,-0x9c0(%rbp)
    7f01bb3fbed9:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    7f01bb3fbedf:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3fbee2:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbee7:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3fbeea:	89 85 38 f6 ff ff    	mov    %eax,-0x9c8(%rbp)
    7f01bb3fbef0:	3b 85 28 ff ff ff    	cmp    -0xd8(%rbp),%eax
    7f01bb3fbef6:	0f 94 c0             	sete   %al
    7f01bb3fbef9:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fbefc:	89 85 30 f6 ff ff    	mov    %eax,-0x9d0(%rbp)
    7f01bb3fbf02:	85 c0                	test   %eax,%eax
    7f01bb3fbf04:	0f 84 11 00 00 00    	je     0x7f01bb3fbf1b
    7f01bb3fbf0a:	8b 85 28 ff ff ff    	mov    -0xd8(%rbp),%eax
    7f01bb3fbf10:	89 85 28 f6 ff ff    	mov    %eax,-0x9d8(%rbp)
    7f01bb3fbf16:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbf27
    7f01bb3fbf1b:	8b 85 38 f6 ff ff    	mov    -0x9c8(%rbp),%eax
    7f01bb3fbf21:	89 85 28 f6 ff ff    	mov    %eax,-0x9d8(%rbp)
    7f01bb3fbf27:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
    7f01bb3fbf2e:	0f 85 11 00 00 00    	jne    0x7f01bb3fbf45
    7f01bb3fbf34:	8b 85 28 f6 ff ff    	mov    -0x9d8(%rbp),%eax
    7f01bb3fbf3a:	89 85 20 f6 ff ff    	mov    %eax,-0x9e0(%rbp)
    7f01bb3fbf40:	e9 0c 00 00 00       	jmpq   0x7f01bb3fbf51
    7f01bb3fbf45:	8b 85 28 ff ff ff    	mov    -0xd8(%rbp),%eax
    7f01bb3fbf4b:	89 85 20 f6 ff ff    	mov    %eax,-0x9e0(%rbp)
    7f01bb3fbf51:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
    7f01bb3fbf57:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3fbf5a:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fbf5f:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3fbf62:	89 85 18 f6 ff ff    	mov    %eax,-0x9e8(%rbp)
    7f01bb3fbf68:	8b 85 e0 fe ff ff    	mov    -0x120(%rbp),%eax
    7f01bb3fbf6e:	83 f8 20             	cmp    $0x20,%eax
    7f01bb3fbf71:	0f 95 c0             	setne  %al
    7f01bb3fbf74:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fbf77:	89 85 10 f6 ff ff    	mov    %eax,-0x9f0(%rbp)
    7f01bb3fbf7d:	48 8b 85 e8 fa ff ff 	mov    -0x518(%rbp),%rax
    7f01bb3fbf84:	48 8b 40 28          	mov    0x28(%rax),%rax
    7f01bb3fbf88:	8b 00                	mov    (%rax),%eax
    7f01bb3fbf8a:	85 c0                	test   %eax,%eax
    7f01bb3fbf8c:	0f 94 c0             	sete   %al
    7f01bb3fbf8f:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fbf92:	89 85 08 f6 ff ff    	mov    %eax,-0x9f8(%rbp)
    7f01bb3fbf98:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    7f01bb3fbf9e:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fbfa1:	0f 95 c0             	setne  %al
    7f01bb3fbfa4:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fbfa7:	89 85 00 f6 ff ff    	mov    %eax,-0xa00(%rbp)
    7f01bb3fbfad:	85 c0                	test   %eax,%eax
    7f01bb3fbfaf:	0f 84 0f 00 00 00    	je     0x7f01bb3fbfc4
    7f01bb3fbfb5:	c7 85 f8 f5 ff ff 01 	movl   $0x1,-0xa08(%rbp)
    7f01bb3fbfbc:	00 00 00 
    7f01bb3fbfbf:	e9 0a 00 00 00       	jmpq   0x7f01bb3fbfce
    7f01bb3fbfc4:	c7 85 f8 f5 ff ff 00 	movl   $0x0,-0xa08(%rbp)
    7f01bb3fbfcb:	00 00 00 
    7f01bb3fbfce:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
    7f01bb3fbfd4:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fbfd7:	0f 95 c0             	setne  %al
    7f01bb3fbfda:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fbfdd:	89 85 f0 f5 ff ff    	mov    %eax,-0xa10(%rbp)
    7f01bb3fbfe3:	85 c0                	test   %eax,%eax
    7f01bb3fbfe5:	0f 84 0f 00 00 00    	je     0x7f01bb3fbffa
    7f01bb3fbfeb:	c7 85 e8 f5 ff ff 01 	movl   $0x1,-0xa18(%rbp)
    7f01bb3fbff2:	00 00 00 
    7f01bb3fbff5:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc004
    7f01bb3fbffa:	c7 85 e8 f5 ff ff 00 	movl   $0x0,-0xa18(%rbp)
    7f01bb3fc001:	00 00 00 
    7f01bb3fc004:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    7f01bb3fc00a:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc00d:	0f 95 c0             	setne  %al
    7f01bb3fc010:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc013:	89 85 e0 f5 ff ff    	mov    %eax,-0xa20(%rbp)
    7f01bb3fc019:	85 c0                	test   %eax,%eax
    7f01bb3fc01b:	0f 84 0f 00 00 00    	je     0x7f01bb3fc030
    7f01bb3fc021:	c7 85 d8 f5 ff ff 01 	movl   $0x1,-0xa28(%rbp)
    7f01bb3fc028:	00 00 00 
    7f01bb3fc02b:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc03a
    7f01bb3fc030:	c7 85 d8 f5 ff ff 00 	movl   $0x0,-0xa28(%rbp)
    7f01bb3fc037:	00 00 00 
    7f01bb3fc03a:	8b 85 d8 fe ff ff    	mov    -0x128(%rbp),%eax
    7f01bb3fc040:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc043:	0f 95 c0             	setne  %al
    7f01bb3fc046:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc049:	89 85 d0 f5 ff ff    	mov    %eax,-0xa30(%rbp)
    7f01bb3fc04f:	85 c0                	test   %eax,%eax
    7f01bb3fc051:	0f 84 0f 00 00 00    	je     0x7f01bb3fc066
    7f01bb3fc057:	c7 85 c8 f5 ff ff 01 	movl   $0x1,-0xa38(%rbp)
    7f01bb3fc05e:	00 00 00 
    7f01bb3fc061:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc070
    7f01bb3fc066:	c7 85 c8 f5 ff ff 00 	movl   $0x0,-0xa38(%rbp)
    7f01bb3fc06d:	00 00 00 
    7f01bb3fc070:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    7f01bb3fc076:	83 f8 20             	cmp    $0x20,%eax
    7f01bb3fc079:	0f 95 c0             	setne  %al
    7f01bb3fc07c:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc07f:	89 85 c0 f5 ff ff    	mov    %eax,-0xa40(%rbp)
    7f01bb3fc085:	85 c0                	test   %eax,%eax
    7f01bb3fc087:	0f 84 0f 00 00 00    	je     0x7f01bb3fc09c
    7f01bb3fc08d:	c7 85 b8 f5 ff ff 01 	movl   $0x1,-0xa48(%rbp)
    7f01bb3fc094:	00 00 00 
    7f01bb3fc097:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc0a6
    7f01bb3fc09c:	c7 85 b8 f5 ff ff 00 	movl   $0x0,-0xa48(%rbp)
    7f01bb3fc0a3:	00 00 00 
    7f01bb3fc0a6:	8b 85 10 f6 ff ff    	mov    -0x9f0(%rbp),%eax
    7f01bb3fc0ac:	85 c0                	test   %eax,%eax
    7f01bb3fc0ae:	0f 84 0f 00 00 00    	je     0x7f01bb3fc0c3
    7f01bb3fc0b4:	c7 85 b0 f5 ff ff 01 	movl   $0x1,-0xa50(%rbp)
    7f01bb3fc0bb:	00 00 00 
    7f01bb3fc0be:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc0cd
    7f01bb3fc0c3:	c7 85 b0 f5 ff ff 00 	movl   $0x0,-0xa50(%rbp)
    7f01bb3fc0ca:	00 00 00 
    7f01bb3fc0cd:	41 83 fd 02          	cmp    $0x2,%r13d
    7f01bb3fc0d1:	0f 85 11 00 00 00    	jne    0x7f01bb3fc0e8
    7f01bb3fc0d7:	8b 85 f8 f5 ff ff    	mov    -0xa08(%rbp),%eax
    7f01bb3fc0dd:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc0e3:	e9 b8 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc0e8:	41 83 fd 04          	cmp    $0x4,%r13d
    7f01bb3fc0ec:	0f 85 11 00 00 00    	jne    0x7f01bb3fc103
    7f01bb3fc0f2:	8b 85 e8 f5 ff ff    	mov    -0xa18(%rbp),%eax
    7f01bb3fc0f8:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc0fe:	e9 9d 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc103:	41 83 fd 10          	cmp    $0x10,%r13d
    7f01bb3fc107:	0f 85 11 00 00 00    	jne    0x7f01bb3fc11e
    7f01bb3fc10d:	8b 85 e8 f5 ff ff    	mov    -0xa18(%rbp),%eax
    7f01bb3fc113:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc119:	e9 82 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc11e:	41 81 fd 00 02 00 00 	cmp    $0x200,%r13d
    7f01bb3fc125:	0f 85 11 00 00 00    	jne    0x7f01bb3fc13c
    7f01bb3fc12b:	8b 85 d8 f5 ff ff    	mov    -0xa28(%rbp),%eax
    7f01bb3fc131:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc137:	e9 64 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc13c:	41 81 fd 00 08 00 00 	cmp    $0x800,%r13d
    7f01bb3fc143:	0f 85 11 00 00 00    	jne    0x7f01bb3fc15a
    7f01bb3fc149:	8b 85 c8 f5 ff ff    	mov    -0xa38(%rbp),%eax
    7f01bb3fc14f:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc155:	e9 46 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc15a:	41 81 fd 00 40 00 00 	cmp    $0x4000,%r13d
    7f01bb3fc161:	0f 85 11 00 00 00    	jne    0x7f01bb3fc178
    7f01bb3fc167:	8b 85 b8 f5 ff ff    	mov    -0xa48(%rbp),%eax
    7f01bb3fc16d:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc173:	e9 28 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc178:	41 81 fd 00 80 00 00 	cmp    $0x8000,%r13d
    7f01bb3fc17f:	0f 85 11 00 00 00    	jne    0x7f01bb3fc196
    7f01bb3fc185:	8b 85 b0 f5 ff ff    	mov    -0xa50(%rbp),%eax
    7f01bb3fc18b:	89 85 a8 f5 ff ff    	mov    %eax,-0xa58(%rbp)
    7f01bb3fc191:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc1a0
    7f01bb3fc196:	c7 85 a8 f5 ff ff 00 	movl   $0x0,-0xa58(%rbp)
    7f01bb3fc19d:	00 00 00 
    7f01bb3fc1a0:	8b 85 90 fd ff ff    	mov    -0x270(%rbp),%eax
    7f01bb3fc1a6:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc1a9:	0f 95 c0             	setne  %al
    7f01bb3fc1ac:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc1af:	89 85 a0 f5 ff ff    	mov    %eax,-0xa60(%rbp)
    7f01bb3fc1b5:	85 c0                	test   %eax,%eax
    7f01bb3fc1b7:	0f 84 0f 00 00 00    	je     0x7f01bb3fc1cc
    7f01bb3fc1bd:	c7 85 98 f5 ff ff 01 	movl   $0x1,-0xa68(%rbp)
    7f01bb3fc1c4:	00 00 00 
    7f01bb3fc1c7:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc1d6
    7f01bb3fc1cc:	c7 85 98 f5 ff ff 00 	movl   $0x0,-0xa68(%rbp)
    7f01bb3fc1d3:	00 00 00 
    7f01bb3fc1d6:	8b 85 88 fd ff ff    	mov    -0x278(%rbp),%eax
    7f01bb3fc1dc:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc1df:	0f 95 c0             	setne  %al
    7f01bb3fc1e2:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc1e5:	89 85 90 f5 ff ff    	mov    %eax,-0xa70(%rbp)
    7f01bb3fc1eb:	85 c0                	test   %eax,%eax
    7f01bb3fc1ed:	0f 84 0f 00 00 00    	je     0x7f01bb3fc202
    7f01bb3fc1f3:	c7 85 88 f5 ff ff 01 	movl   $0x1,-0xa78(%rbp)
    7f01bb3fc1fa:	00 00 00 
    7f01bb3fc1fd:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc20c
    7f01bb3fc202:	c7 85 88 f5 ff ff 00 	movl   $0x0,-0xa78(%rbp)
    7f01bb3fc209:	00 00 00 
    7f01bb3fc20c:	8b 85 68 fd ff ff    	mov    -0x298(%rbp),%eax
    7f01bb3fc212:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc215:	0f 95 c0             	setne  %al
    7f01bb3fc218:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc21b:	89 85 80 f5 ff ff    	mov    %eax,-0xa80(%rbp)
    7f01bb3fc221:	85 c0                	test   %eax,%eax
    7f01bb3fc223:	0f 84 0f 00 00 00    	je     0x7f01bb3fc238
    7f01bb3fc229:	c7 85 78 f5 ff ff 01 	movl   $0x1,-0xa88(%rbp)
    7f01bb3fc230:	00 00 00 
    7f01bb3fc233:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc242
    7f01bb3fc238:	c7 85 78 f5 ff ff 00 	movl   $0x0,-0xa88(%rbp)
    7f01bb3fc23f:	00 00 00 
    7f01bb3fc242:	8b 85 70 fd ff ff    	mov    -0x290(%rbp),%eax
    7f01bb3fc248:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc24b:	0f 95 c0             	setne  %al
    7f01bb3fc24e:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc251:	89 85 70 f5 ff ff    	mov    %eax,-0xa90(%rbp)
    7f01bb3fc257:	85 c0                	test   %eax,%eax
    7f01bb3fc259:	0f 84 0f 00 00 00    	je     0x7f01bb3fc26e
    7f01bb3fc25f:	c7 85 68 f5 ff ff 01 	movl   $0x1,-0xa98(%rbp)
    7f01bb3fc266:	00 00 00 
    7f01bb3fc269:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc278
    7f01bb3fc26e:	c7 85 68 f5 ff ff 00 	movl   $0x0,-0xa98(%rbp)
    7f01bb3fc275:	00 00 00 
    7f01bb3fc278:	8b 85 80 fd ff ff    	mov    -0x280(%rbp),%eax
    7f01bb3fc27e:	83 f8 20             	cmp    $0x20,%eax
    7f01bb3fc281:	0f 95 c0             	setne  %al
    7f01bb3fc284:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc287:	89 85 60 f5 ff ff    	mov    %eax,-0xaa0(%rbp)
    7f01bb3fc28d:	85 c0                	test   %eax,%eax
    7f01bb3fc28f:	0f 84 0f 00 00 00    	je     0x7f01bb3fc2a4
    7f01bb3fc295:	c7 85 58 f5 ff ff 01 	movl   $0x1,-0xaa8(%rbp)
    7f01bb3fc29c:	00 00 00 
    7f01bb3fc29f:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc2ae
    7f01bb3fc2a4:	c7 85 58 f5 ff ff 00 	movl   $0x0,-0xaa8(%rbp)
    7f01bb3fc2ab:	00 00 00 
    7f01bb3fc2ae:	8b 85 78 fd ff ff    	mov    -0x288(%rbp),%eax
    7f01bb3fc2b4:	83 f8 20             	cmp    $0x20,%eax
    7f01bb3fc2b7:	0f 95 c0             	setne  %al
    7f01bb3fc2ba:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc2bd:	89 85 50 f5 ff ff    	mov    %eax,-0xab0(%rbp)
    7f01bb3fc2c3:	85 c0                	test   %eax,%eax
    7f01bb3fc2c5:	0f 84 0f 00 00 00    	je     0x7f01bb3fc2da
    7f01bb3fc2cb:	c7 85 48 f5 ff ff 01 	movl   $0x1,-0xab8(%rbp)
    7f01bb3fc2d2:	00 00 00 
    7f01bb3fc2d5:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc2e4
    7f01bb3fc2da:	c7 85 48 f5 ff ff 00 	movl   $0x0,-0xab8(%rbp)
    7f01bb3fc2e1:	00 00 00 
    7f01bb3fc2e4:	41 83 fe 02          	cmp    $0x2,%r14d
    7f01bb3fc2e8:	0f 85 11 00 00 00    	jne    0x7f01bb3fc2ff
    7f01bb3fc2ee:	8b 85 98 f5 ff ff    	mov    -0xa68(%rbp),%eax
    7f01bb3fc2f4:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc2fa:	e9 b8 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc2ff:	41 83 fe 04          	cmp    $0x4,%r14d
    7f01bb3fc303:	0f 85 11 00 00 00    	jne    0x7f01bb3fc31a
    7f01bb3fc309:	8b 85 88 f5 ff ff    	mov    -0xa78(%rbp),%eax
    7f01bb3fc30f:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc315:	e9 9d 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc31a:	41 83 fe 10          	cmp    $0x10,%r14d
    7f01bb3fc31e:	0f 85 11 00 00 00    	jne    0x7f01bb3fc335
    7f01bb3fc324:	8b 85 88 f5 ff ff    	mov    -0xa78(%rbp),%eax
    7f01bb3fc32a:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc330:	e9 82 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc335:	41 81 fe 00 02 00 00 	cmp    $0x200,%r14d
    7f01bb3fc33c:	0f 85 11 00 00 00    	jne    0x7f01bb3fc353
    7f01bb3fc342:	8b 85 78 f5 ff ff    	mov    -0xa88(%rbp),%eax
    7f01bb3fc348:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc34e:	e9 64 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc353:	41 81 fe 00 08 00 00 	cmp    $0x800,%r14d
    7f01bb3fc35a:	0f 85 11 00 00 00    	jne    0x7f01bb3fc371
    7f01bb3fc360:	8b 85 68 f5 ff ff    	mov    -0xa98(%rbp),%eax
    7f01bb3fc366:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc36c:	e9 46 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc371:	41 81 fe 00 40 00 00 	cmp    $0x4000,%r14d
    7f01bb3fc378:	0f 85 11 00 00 00    	jne    0x7f01bb3fc38f
    7f01bb3fc37e:	8b 85 58 f5 ff ff    	mov    -0xaa8(%rbp),%eax
    7f01bb3fc384:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc38a:	e9 28 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc38f:	41 81 fe 00 80 00 00 	cmp    $0x8000,%r14d
    7f01bb3fc396:	0f 85 11 00 00 00    	jne    0x7f01bb3fc3ad
    7f01bb3fc39c:	8b 85 48 f5 ff ff    	mov    -0xab8(%rbp),%eax
    7f01bb3fc3a2:	89 85 40 f5 ff ff    	mov    %eax,-0xac0(%rbp)
    7f01bb3fc3a8:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc3b7
    7f01bb3fc3ad:	c7 85 40 f5 ff ff 00 	movl   $0x0,-0xac0(%rbp)
    7f01bb3fc3b4:	00 00 00 
    7f01bb3fc3b7:	8b 85 f0 fb ff ff    	mov    -0x410(%rbp),%eax
    7f01bb3fc3bd:	d1 e8                	shr    %eax
    7f01bb3fc3bf:	83 e0 01             	and    $0x1,%eax
    7f01bb3fc3c2:	89 85 38 f5 ff ff    	mov    %eax,-0xac8(%rbp)
    7f01bb3fc3c8:	f7 d0                	not    %eax
    7f01bb3fc3ca:	83 e0 01             	and    $0x1,%eax
    7f01bb3fc3cd:	8b 8d 40 f5 ff ff    	mov    -0xac0(%rbp),%ecx
    7f01bb3fc3d3:	23 c1                	and    %ecx,%eax
    7f01bb3fc3d5:	89 85 30 f5 ff ff    	mov    %eax,-0xad0(%rbp)
    7f01bb3fc3db:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb3fc3e1:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3fc3e4:	0f 94 c0             	sete   %al
    7f01bb3fc3e7:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc3ea:	8b 8d 38 fb ff ff    	mov    -0x4c8(%rbp),%ecx
    7f01bb3fc3f0:	83 f9 04             	cmp    $0x4,%ecx
    7f01bb3fc3f3:	0f 95 c1             	setne  %cl
    7f01bb3fc3f6:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fc3f9:	89 8d 28 f5 ff ff    	mov    %ecx,-0xad8(%rbp)
    7f01bb3fc3ff:	23 c1                	and    %ecx,%eax
    7f01bb3fc401:	85 c0                	test   %eax,%eax
    7f01bb3fc403:	0f 84 0f 00 00 00    	je     0x7f01bb3fc418
    7f01bb3fc409:	c7 85 20 f5 ff ff 01 	movl   $0x1,-0xae0(%rbp)
    7f01bb3fc410:	00 00 00 
    7f01bb3fc413:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc422
    7f01bb3fc418:	c7 85 20 f5 ff ff 00 	movl   $0x0,-0xae0(%rbp)
    7f01bb3fc41f:	00 00 00 
    7f01bb3fc422:	8b 85 f0 fb ff ff    	mov    -0x410(%rbp),%eax
    7f01bb3fc428:	c1 e8 02             	shr    $0x2,%eax
    7f01bb3fc42b:	83 e0 01             	and    $0x1,%eax
    7f01bb3fc42e:	8b c8                	mov    %eax,%ecx
    7f01bb3fc430:	f7 d1                	not    %ecx
    7f01bb3fc432:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fc435:	8b 95 20 f5 ff ff    	mov    -0xae0(%rbp),%edx
    7f01bb3fc43b:	23 ca                	and    %edx,%ecx
    7f01bb3fc43d:	8b b5 30 f5 ff ff    	mov    -0xad0(%rbp),%esi
    7f01bb3fc443:	d1 e6                	shl    %esi
    7f01bb3fc445:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb3fc448:	0b f1                	or     %ecx,%esi
    7f01bb3fc44a:	8b ce                	mov    %esi,%ecx
    7f01bb3fc44c:	85 c9                	test   %ecx,%ecx
    7f01bb3fc44e:	0f 95 c1             	setne  %cl
    7f01bb3fc451:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fc454:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fc457:	f7 d1                	not    %ecx
    7f01bb3fc459:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fc45c:	8b b5 a8 f5 ff ff    	mov    -0xa58(%rbp),%esi
    7f01bb3fc462:	23 ce                	and    %esi,%ecx
    7f01bb3fc464:	23 b5 38 f5 ff ff    	and    -0xac8(%rbp),%esi
    7f01bb3fc46a:	8b bd f0 fb ff ff    	mov    -0x410(%rbp),%edi
    7f01bb3fc470:	c1 ef 05             	shr    $0x5,%edi
    7f01bb3fc473:	83 e7 01             	and    $0x1,%edi
    7f01bb3fc476:	44 8b c7             	mov    %edi,%r8d
    7f01bb3fc479:	41 f7 d0             	not    %r8d
    7f01bb3fc47c:	41 83 e0 01          	and    $0x1,%r8d
    7f01bb3fc480:	44 23 c2             	and    %edx,%r8d
    7f01bb3fc483:	41 c1 e0 02          	shl    $0x2,%r8d
    7f01bb3fc487:	41 0b f0             	or     %r8d,%esi
    7f01bb3fc48a:	85 f6                	test   %esi,%esi
    7f01bb3fc48c:	40 0f 95 c6          	setne  %sil
    7f01bb3fc490:	40 0f b6 f6          	movzbl %sil,%esi
    7f01bb3fc494:	83 e6 01             	and    $0x1,%esi
    7f01bb3fc497:	f7 d6                	not    %esi
    7f01bb3fc499:	83 e6 01             	and    $0x1,%esi
    7f01bb3fc49c:	44 8b 85 40 f5 ff ff 	mov    -0xac0(%rbp),%r8d
    7f01bb3fc4a3:	41 23 f0             	and    %r8d,%esi
    7f01bb3fc4a6:	89 85 18 f5 ff ff    	mov    %eax,-0xae8(%rbp)
    7f01bb3fc4ac:	44 8b 8d a8 f5 ff ff 	mov    -0xa58(%rbp),%r9d
    7f01bb3fc4b3:	41 23 c1             	and    %r9d,%eax
    7f01bb3fc4b6:	89 bd 10 f5 ff ff    	mov    %edi,-0xaf0(%rbp)
    7f01bb3fc4bc:	41 23 f8             	and    %r8d,%edi
    7f01bb3fc4bf:	d1 e7                	shl    %edi
    7f01bb3fc4c1:	0b c7                	or     %edi,%eax
    7f01bb3fc4c3:	85 c0                	test   %eax,%eax
    7f01bb3fc4c5:	0f 95 c0             	setne  %al
    7f01bb3fc4c8:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc4cb:	83 e0 01             	and    $0x1,%eax
    7f01bb3fc4ce:	f7 d0                	not    %eax
    7f01bb3fc4d0:	83 e0 01             	and    $0x1,%eax
    7f01bb3fc4d3:	23 d0                	and    %eax,%edx
    7f01bb3fc4d5:	89 b5 08 f5 ff ff    	mov    %esi,-0xaf8(%rbp)
    7f01bb3fc4db:	d1 e6                	shl    %esi
    7f01bb3fc4dd:	89 8d 00 f5 ff ff    	mov    %ecx,-0xb00(%rbp)
    7f01bb3fc4e3:	0b ce                	or     %esi,%ecx
    7f01bb3fc4e5:	89 95 f8 f4 ff ff    	mov    %edx,-0xb08(%rbp)
    7f01bb3fc4eb:	c1 e2 02             	shl    $0x2,%edx
    7f01bb3fc4ee:	0b ca                	or     %edx,%ecx
    7f01bb3fc4f0:	89 8d f0 f4 ff ff    	mov    %ecx,-0xb10(%rbp)
    7f01bb3fc4f6:	83 f9 01             	cmp    $0x1,%ecx
    7f01bb3fc4f9:	0f 94 c0             	sete   %al
    7f01bb3fc4fc:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc4ff:	8b 8d 08 f6 ff ff    	mov    -0x9f8(%rbp),%ecx
    7f01bb3fc505:	23 c1                	and    %ecx,%eax
    7f01bb3fc507:	89 85 e8 f4 ff ff    	mov    %eax,-0xb18(%rbp)
    7f01bb3fc50d:	8b 8d 10 f6 ff ff    	mov    -0x9f0(%rbp),%ecx
    7f01bb3fc513:	23 c1                	and    %ecx,%eax
    7f01bb3fc515:	8b 8d 20 ff ff ff    	mov    -0xe0(%rbp),%ecx
    7f01bb3fc51b:	ff c1                	inc    %ecx
    7f01bb3fc51d:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3fc523:	89 8d e0 f4 ff ff    	mov    %ecx,-0xb20(%rbp)
    7f01bb3fc529:	89 85 d8 f4 ff ff    	mov    %eax,-0xb28(%rbp)
    7f01bb3fc52f:	85 c0                	test   %eax,%eax
    7f01bb3fc531:	0f 84 11 00 00 00    	je     0x7f01bb3fc548
    7f01bb3fc537:	8b 85 e0 f4 ff ff    	mov    -0xb20(%rbp),%eax
    7f01bb3fc53d:	89 85 d0 f4 ff ff    	mov    %eax,-0xb30(%rbp)
    7f01bb3fc543:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc554
    7f01bb3fc548:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
    7f01bb3fc54e:	89 85 d0 f4 ff ff    	mov    %eax,-0xb30(%rbp)
    7f01bb3fc554:	41 81 fd 00 10 00 00 	cmp    $0x1000,%r13d
    7f01bb3fc55b:	0f 85 11 00 00 00    	jne    0x7f01bb3fc572
    7f01bb3fc561:	8b 85 18 f6 ff ff    	mov    -0x9e8(%rbp),%eax
    7f01bb3fc567:	89 85 c8 f4 ff ff    	mov    %eax,-0xb38(%rbp)
    7f01bb3fc56d:	e9 2a 00 00 00       	jmpq   0x7f01bb3fc59c
    7f01bb3fc572:	41 81 fd 00 80 00 00 	cmp    $0x8000,%r13d
    7f01bb3fc579:	0f 85 11 00 00 00    	jne    0x7f01bb3fc590
    7f01bb3fc57f:	8b 85 d0 f4 ff ff    	mov    -0xb30(%rbp),%eax
    7f01bb3fc585:	89 85 c8 f4 ff ff    	mov    %eax,-0xb38(%rbp)
    7f01bb3fc58b:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc59c
    7f01bb3fc590:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
    7f01bb3fc596:	89 85 c8 f4 ff ff    	mov    %eax,-0xb38(%rbp)
    7f01bb3fc59c:	8b 85 40 ff ff ff    	mov    -0xc0(%rbp),%eax
    7f01bb3fc5a2:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3fc5a5:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fc5aa:	83 c0 3f             	add    $0x3f,%eax
    7f01bb3fc5ad:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fc5b2:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3fc5b5:	89 85 c0 f4 ff ff    	mov    %eax,-0xb40(%rbp)
    7f01bb3fc5bb:	41 81 fd 00 10 00 00 	cmp    $0x1000,%r13d
    7f01bb3fc5c2:	0f 85 11 00 00 00    	jne    0x7f01bb3fc5d9
    7f01bb3fc5c8:	8b 85 c0 f4 ff ff    	mov    -0xb40(%rbp),%eax
    7f01bb3fc5ce:	89 85 b8 f4 ff ff    	mov    %eax,-0xb48(%rbp)
    7f01bb3fc5d4:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc5e5
    7f01bb3fc5d9:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
    7f01bb3fc5df:	89 85 b8 f4 ff ff    	mov    %eax,-0xb48(%rbp)
    7f01bb3fc5e5:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
    7f01bb3fc5eb:	ff c8                	dec    %eax
    7f01bb3fc5ed:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fc5f2:	89 85 b0 f4 ff ff    	mov    %eax,-0xb50(%rbp)
    7f01bb3fc5f8:	41 81 fd 00 20 00 00 	cmp    $0x2000,%r13d
    7f01bb3fc5ff:	0f 85 11 00 00 00    	jne    0x7f01bb3fc616
    7f01bb3fc605:	8b 85 b0 f4 ff ff    	mov    -0xb50(%rbp),%eax
    7f01bb3fc60b:	89 85 a8 f4 ff ff    	mov    %eax,-0xb58(%rbp)
    7f01bb3fc611:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc622
    7f01bb3fc616:	8b 85 10 ff ff ff    	mov    -0xf0(%rbp),%eax
    7f01bb3fc61c:	89 85 a8 f4 ff ff    	mov    %eax,-0xb58(%rbp)
    7f01bb3fc622:	8b 85 18 ff ff ff    	mov    -0xe8(%rbp),%eax
    7f01bb3fc628:	2b 85 20 ff ff ff    	sub    -0xe0(%rbp),%eax
    7f01bb3fc62e:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fc633:	83 e0 3f             	and    $0x3f,%eax
    7f01bb3fc636:	89 85 a0 f4 ff ff    	mov    %eax,-0xb60(%rbp)
    7f01bb3fc63c:	41 81 fd 00 20 00 00 	cmp    $0x2000,%r13d
    7f01bb3fc643:	0f 85 11 00 00 00    	jne    0x7f01bb3fc65a
    7f01bb3fc649:	8b 85 a0 f4 ff ff    	mov    -0xb60(%rbp),%eax
    7f01bb3fc64f:	89 85 98 f4 ff ff    	mov    %eax,-0xb68(%rbp)
    7f01bb3fc655:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc666
    7f01bb3fc65a:	8b 85 08 ff ff ff    	mov    -0xf8(%rbp),%eax
    7f01bb3fc660:	89 85 98 f4 ff ff    	mov    %eax,-0xb68(%rbp)
    7f01bb3fc666:	41 81 fd 00 00 01 00 	cmp    $0x10000,%r13d
    7f01bb3fc66d:	0f 94 c0             	sete   %al
    7f01bb3fc670:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc673:	8b 4d a8             	mov    -0x58(%rbp),%ecx
    7f01bb3fc676:	3b 8d 08 ff ff ff    	cmp    -0xf8(%rbp),%ecx
    7f01bb3fc67c:	0f 94 c1             	sete   %cl
    7f01bb3fc67f:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fc682:	89 85 90 f4 ff ff    	mov    %eax,-0xb70(%rbp)
    7f01bb3fc688:	89 8d 88 f4 ff ff    	mov    %ecx,-0xb78(%rbp)
    7f01bb3fc68e:	23 c1                	and    %ecx,%eax
    7f01bb3fc690:	89 85 80 f4 ff ff    	mov    %eax,-0xb80(%rbp)
    7f01bb3fc696:	8b 85 50 ff ff ff    	mov    -0xb0(%rbp),%eax
    7f01bb3fc69c:	83 e0 0f             	and    $0xf,%eax
    7f01bb3fc69f:	c1 e0 05             	shl    $0x5,%eax
    7f01bb3fc6a2:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fc6a7:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fc6aa:	48 81 c1 c8 43 00 00 	add    $0x43c8,%rcx
    7f01bb3fc6b1:	49 8b d7             	mov    %r15,%rdx
    7f01bb3fc6b4:	48 81 c2 c8 14 00 00 	add    $0x14c8,%rdx
    7f01bb3fc6bb:	44 8b c0             	mov    %eax,%r8d
    7f01bb3fc6be:	48 89 8d 78 f4 ff ff 	mov    %rcx,-0xb88(%rbp)
    7f01bb3fc6c5:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fc6ca:	48 89 95 70 f4 ff ff 	mov    %rdx,-0xb90(%rbp)
    7f01bb3fc6d1:	48 8b 95 78 f4 ff ff 	mov    -0xb88(%rbp),%rdx
    7f01bb3fc6d8:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fc6dd:	48 8b bd 70 f4 ff ff 	mov    -0xb90(%rbp),%rdi
    7f01bb3fc6e4:	89 85 68 f4 ff ff    	mov    %eax,-0xb98(%rbp)
    7f01bb3fc6ea:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fc6ef:	e8 46 4e 8d ff       	callq  0x7f01bacd153a
    7f01bb3fc6f4:	41 8b 87 c8 14 00 00 	mov    0x14c8(%r15),%eax
    7f01bb3fc6fb:	89 85 60 f4 ff ff    	mov    %eax,-0xba0(%rbp)
    7f01bb3fc701:	49 8b c7             	mov    %r15,%rax
    7f01bb3fc704:	48 05 28 46 00 00    	add    $0x4628,%rax
    7f01bb3fc70a:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fc70d:	48 81 c1 08 15 00 00 	add    $0x1508,%rcx
    7f01bb3fc714:	44 8b 85 68 f4 ff ff 	mov    -0xb98(%rbp),%r8d
    7f01bb3fc71b:	48 89 8d 58 f4 ff ff 	mov    %rcx,-0xba8(%rbp)
    7f01bb3fc722:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fc727:	48 8b d0             	mov    %rax,%rdx
    7f01bb3fc72a:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fc72f:	48 8b bd 58 f4 ff ff 	mov    -0xba8(%rbp),%rdi
    7f01bb3fc736:	48 89 85 50 f4 ff ff 	mov    %rax,-0xbb0(%rbp)
    7f01bb3fc73d:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fc742:	e8 f3 4d 8d ff       	callq  0x7f01bacd153a
    7f01bb3fc747:	41 8b 87 08 15 00 00 	mov    0x1508(%r15),%eax
    7f01bb3fc74e:	89 85 48 f4 ff ff    	mov    %eax,-0xbb8(%rbp)
    7f01bb3fc754:	8b 85 c8 f8 ff ff    	mov    -0x738(%rbp),%eax
    7f01bb3fc75a:	85 c0                	test   %eax,%eax
    7f01bb3fc75c:	0f 84 11 00 00 00    	je     0x7f01bb3fc773
    7f01bb3fc762:	8b 85 60 f4 ff ff    	mov    -0xba0(%rbp),%eax
    7f01bb3fc768:	89 85 40 f4 ff ff    	mov    %eax,-0xbc0(%rbp)
    7f01bb3fc76e:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc77f
    7f01bb3fc773:	8b 85 48 f4 ff ff    	mov    -0xbb8(%rbp),%eax
    7f01bb3fc779:	89 85 40 f4 ff ff    	mov    %eax,-0xbc0(%rbp)
    7f01bb3fc77f:	8b 85 80 f4 ff ff    	mov    -0xb80(%rbp),%eax
    7f01bb3fc785:	85 c0                	test   %eax,%eax
    7f01bb3fc787:	0f 84 11 00 00 00    	je     0x7f01bb3fc79e
    7f01bb3fc78d:	8b 85 40 f4 ff ff    	mov    -0xbc0(%rbp),%eax
    7f01bb3fc793:	89 85 38 f4 ff ff    	mov    %eax,-0xbc8(%rbp)
    7f01bb3fc799:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc7aa
    7f01bb3fc79e:	8b 85 00 ff ff ff    	mov    -0x100(%rbp),%eax
    7f01bb3fc7a4:	89 85 38 f4 ff ff    	mov    %eax,-0xbc8(%rbp)
    7f01bb3fc7aa:	8b 85 a8 f5 ff ff    	mov    -0xa58(%rbp),%eax
    7f01bb3fc7b0:	23 85 e8 f4 ff ff    	and    -0xb18(%rbp),%eax
    7f01bb3fc7b6:	89 85 30 f4 ff ff    	mov    %eax,-0xbd0(%rbp)
    7f01bb3fc7bc:	41 83 fd 02          	cmp    $0x2,%r13d
    7f01bb3fc7c0:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc7d5
    7f01bb3fc7c6:	c7 85 28 f4 ff ff 01 	movl   $0x1,-0xbd8(%rbp)
    7f01bb3fc7cd:	00 00 00 
    7f01bb3fc7d0:	e9 ac 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc7d5:	41 83 fd 04          	cmp    $0x4,%r13d
    7f01bb3fc7d9:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc7ee
    7f01bb3fc7df:	c7 85 28 f4 ff ff 02 	movl   $0x2,-0xbd8(%rbp)
    7f01bb3fc7e6:	00 00 00 
    7f01bb3fc7e9:	e9 93 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc7ee:	41 83 fd 10          	cmp    $0x10,%r13d
    7f01bb3fc7f2:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc807
    7f01bb3fc7f8:	c7 85 28 f4 ff ff 02 	movl   $0x2,-0xbd8(%rbp)
    7f01bb3fc7ff:	00 00 00 
    7f01bb3fc802:	e9 7a 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc807:	41 81 fd 00 02 00 00 	cmp    $0x200,%r13d
    7f01bb3fc80e:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc823
    7f01bb3fc814:	c7 85 28 f4 ff ff 06 	movl   $0x6,-0xbd8(%rbp)
    7f01bb3fc81b:	00 00 00 
    7f01bb3fc81e:	e9 5e 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc823:	41 81 fd 00 08 00 00 	cmp    $0x800,%r13d
    7f01bb3fc82a:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc83f
    7f01bb3fc830:	c7 85 28 f4 ff ff 05 	movl   $0x5,-0xbd8(%rbp)
    7f01bb3fc837:	00 00 00 
    7f01bb3fc83a:	e9 42 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc83f:	41 81 fd 00 40 00 00 	cmp    $0x4000,%r13d
    7f01bb3fc846:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc85b
    7f01bb3fc84c:	c7 85 28 f4 ff ff 03 	movl   $0x3,-0xbd8(%rbp)
    7f01bb3fc853:	00 00 00 
    7f01bb3fc856:	e9 26 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc85b:	41 81 fd 00 80 00 00 	cmp    $0x8000,%r13d
    7f01bb3fc862:	0f 85 0f 00 00 00    	jne    0x7f01bb3fc877
    7f01bb3fc868:	c7 85 28 f4 ff ff 04 	movl   $0x4,-0xbd8(%rbp)
    7f01bb3fc86f:	00 00 00 
    7f01bb3fc872:	e9 0a 00 00 00       	jmpq   0x7f01bb3fc881
    7f01bb3fc877:	c7 85 28 f4 ff ff 00 	movl   $0x0,-0xbd8(%rbp)
    7f01bb3fc87e:	00 00 00 
    7f01bb3fc881:	8b 85 28 f4 ff ff    	mov    -0xbd8(%rbp),%eax
    7f01bb3fc887:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3fc88a:	0f 94 c0             	sete   %al
    7f01bb3fc88d:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc890:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
    7f01bb3fc896:	23 c1                	and    %ecx,%eax
    7f01bb3fc898:	8b 95 b8 fe ff ff    	mov    -0x148(%rbp),%edx
    7f01bb3fc89e:	8b ca                	mov    %edx,%ecx
    7f01bb3fc8a0:	85 c9                	test   %ecx,%ecx
    7f01bb3fc8a2:	0f 94 c1             	sete   %cl
    7f01bb3fc8a5:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fc8a8:	23 c8                	and    %eax,%ecx
    7f01bb3fc8aa:	8b b5 f8 fe ff ff    	mov    -0x108(%rbp),%esi
    7f01bb3fc8b0:	ff c6                	inc    %esi
    7f01bb3fc8b2:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3fc8b8:	89 b5 20 f4 ff ff    	mov    %esi,-0xbe0(%rbp)
    7f01bb3fc8be:	85 c0                	test   %eax,%eax
    7f01bb3fc8c0:	0f 94 c0             	sete   %al
    7f01bb3fc8c3:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc8c6:	23 d0                	and    %eax,%edx
    7f01bb3fc8c8:	89 95 18 f4 ff ff    	mov    %edx,-0xbe8(%rbp)
    7f01bb3fc8ce:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    7f01bb3fc8d4:	ff c8                	dec    %eax
    7f01bb3fc8d6:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fc8db:	89 85 10 f4 ff ff    	mov    %eax,-0xbf0(%rbp)
    7f01bb3fc8e1:	85 c9                	test   %ecx,%ecx
    7f01bb3fc8e3:	0f 84 11 00 00 00    	je     0x7f01bb3fc8fa
    7f01bb3fc8e9:	8b 85 20 f4 ff ff    	mov    -0xbe0(%rbp),%eax
    7f01bb3fc8ef:	89 85 08 f4 ff ff    	mov    %eax,-0xbf8(%rbp)
    7f01bb3fc8f5:	e9 2b 00 00 00       	jmpq   0x7f01bb3fc925
    7f01bb3fc8fa:	8b 85 18 f4 ff ff    	mov    -0xbe8(%rbp),%eax
    7f01bb3fc900:	85 c0                	test   %eax,%eax
    7f01bb3fc902:	0f 84 11 00 00 00    	je     0x7f01bb3fc919
    7f01bb3fc908:	8b 85 10 f4 ff ff    	mov    -0xbf0(%rbp),%eax
    7f01bb3fc90e:	89 85 08 f4 ff ff    	mov    %eax,-0xbf8(%rbp)
    7f01bb3fc914:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc925
    7f01bb3fc919:	8b 85 f8 fe ff ff    	mov    -0x108(%rbp),%eax
    7f01bb3fc91f:	89 85 08 f4 ff ff    	mov    %eax,-0xbf8(%rbp)
    7f01bb3fc925:	8b 85 28 f4 ff ff    	mov    -0xbd8(%rbp),%eax
    7f01bb3fc92b:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fc92e:	0f 94 c0             	sete   %al
    7f01bb3fc931:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc934:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
    7f01bb3fc93a:	23 c1                	and    %ecx,%eax
    7f01bb3fc93c:	8b 95 b0 fe ff ff    	mov    -0x150(%rbp),%edx
    7f01bb3fc942:	8b ca                	mov    %edx,%ecx
    7f01bb3fc944:	85 c9                	test   %ecx,%ecx
    7f01bb3fc946:	0f 94 c1             	sete   %cl
    7f01bb3fc949:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fc94c:	23 c8                	and    %eax,%ecx
    7f01bb3fc94e:	8b b5 f0 fe ff ff    	mov    -0x110(%rbp),%esi
    7f01bb3fc954:	ff c6                	inc    %esi
    7f01bb3fc956:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3fc95c:	89 b5 00 f4 ff ff    	mov    %esi,-0xc00(%rbp)
    7f01bb3fc962:	85 c0                	test   %eax,%eax
    7f01bb3fc964:	0f 94 c0             	sete   %al
    7f01bb3fc967:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc96a:	23 d0                	and    %eax,%edx
    7f01bb3fc96c:	89 95 f8 f3 ff ff    	mov    %edx,-0xc08(%rbp)
    7f01bb3fc972:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
    7f01bb3fc978:	ff c8                	dec    %eax
    7f01bb3fc97a:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fc97f:	89 85 f0 f3 ff ff    	mov    %eax,-0xc10(%rbp)
    7f01bb3fc985:	85 c9                	test   %ecx,%ecx
    7f01bb3fc987:	0f 84 11 00 00 00    	je     0x7f01bb3fc99e
    7f01bb3fc98d:	8b 85 00 f4 ff ff    	mov    -0xc00(%rbp),%eax
    7f01bb3fc993:	89 85 e8 f3 ff ff    	mov    %eax,-0xc18(%rbp)
    7f01bb3fc999:	e9 2b 00 00 00       	jmpq   0x7f01bb3fc9c9
    7f01bb3fc99e:	8b 85 f8 f3 ff ff    	mov    -0xc08(%rbp),%eax
    7f01bb3fc9a4:	85 c0                	test   %eax,%eax
    7f01bb3fc9a6:	0f 84 11 00 00 00    	je     0x7f01bb3fc9bd
    7f01bb3fc9ac:	8b 85 f0 f3 ff ff    	mov    -0xc10(%rbp),%eax
    7f01bb3fc9b2:	89 85 e8 f3 ff ff    	mov    %eax,-0xc18(%rbp)
    7f01bb3fc9b8:	e9 0c 00 00 00       	jmpq   0x7f01bb3fc9c9
    7f01bb3fc9bd:	8b 85 f0 fe ff ff    	mov    -0x110(%rbp),%eax
    7f01bb3fc9c3:	89 85 e8 f3 ff ff    	mov    %eax,-0xc18(%rbp)
    7f01bb3fc9c9:	8b 85 28 f4 ff ff    	mov    -0xbd8(%rbp),%eax
    7f01bb3fc9cf:	83 f8 03             	cmp    $0x3,%eax
    7f01bb3fc9d2:	0f 94 c0             	sete   %al
    7f01bb3fc9d5:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fc9d8:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
    7f01bb3fc9de:	23 c1                	and    %ecx,%eax
    7f01bb3fc9e0:	8b 95 a8 fe ff ff    	mov    -0x158(%rbp),%edx
    7f01bb3fc9e6:	8b ca                	mov    %edx,%ecx
    7f01bb3fc9e8:	85 c9                	test   %ecx,%ecx
    7f01bb3fc9ea:	0f 94 c1             	sete   %cl
    7f01bb3fc9ed:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fc9f0:	89 8d e0 f3 ff ff    	mov    %ecx,-0xc20(%rbp)
    7f01bb3fc9f6:	23 c8                	and    %eax,%ecx
    7f01bb3fc9f8:	8b b5 e8 fe ff ff    	mov    -0x118(%rbp),%esi
    7f01bb3fc9fe:	ff c6                	inc    %esi
    7f01bb3fca00:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3fca06:	89 b5 d8 f3 ff ff    	mov    %esi,-0xc28(%rbp)
    7f01bb3fca0c:	85 c0                	test   %eax,%eax
    7f01bb3fca0e:	0f 94 c0             	sete   %al
    7f01bb3fca11:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fca14:	23 d0                	and    %eax,%edx
    7f01bb3fca16:	89 95 d0 f3 ff ff    	mov    %edx,-0xc30(%rbp)
    7f01bb3fca1c:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    7f01bb3fca22:	ff c8                	dec    %eax
    7f01bb3fca24:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fca29:	89 85 c8 f3 ff ff    	mov    %eax,-0xc38(%rbp)
    7f01bb3fca2f:	85 c9                	test   %ecx,%ecx
    7f01bb3fca31:	0f 84 11 00 00 00    	je     0x7f01bb3fca48
    7f01bb3fca37:	8b 85 d8 f3 ff ff    	mov    -0xc28(%rbp),%eax
    7f01bb3fca3d:	89 85 c0 f3 ff ff    	mov    %eax,-0xc40(%rbp)
    7f01bb3fca43:	e9 2b 00 00 00       	jmpq   0x7f01bb3fca73
    7f01bb3fca48:	8b 85 d0 f3 ff ff    	mov    -0xc30(%rbp),%eax
    7f01bb3fca4e:	85 c0                	test   %eax,%eax
    7f01bb3fca50:	0f 84 11 00 00 00    	je     0x7f01bb3fca67
    7f01bb3fca56:	8b 85 c8 f3 ff ff    	mov    -0xc38(%rbp),%eax
    7f01bb3fca5c:	89 85 c0 f3 ff ff    	mov    %eax,-0xc40(%rbp)
    7f01bb3fca62:	e9 0c 00 00 00       	jmpq   0x7f01bb3fca73
    7f01bb3fca67:	8b 85 e8 fe ff ff    	mov    -0x118(%rbp),%eax
    7f01bb3fca6d:	89 85 c0 f3 ff ff    	mov    %eax,-0xc40(%rbp)
    7f01bb3fca73:	8b 85 28 f4 ff ff    	mov    -0xbd8(%rbp),%eax
    7f01bb3fca79:	83 f8 04             	cmp    $0x4,%eax
    7f01bb3fca7c:	0f 94 c0             	sete   %al
    7f01bb3fca7f:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fca82:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
    7f01bb3fca88:	23 c1                	and    %ecx,%eax
    7f01bb3fca8a:	8b c8                	mov    %eax,%ecx
    7f01bb3fca8c:	23 8d e0 f3 ff ff    	and    -0xc20(%rbp),%ecx
    7f01bb3fca92:	8b 95 e0 fe ff ff    	mov    -0x120(%rbp),%edx
    7f01bb3fca98:	ff c2                	inc    %edx
    7f01bb3fca9a:	81 e2 ff 00 00 00    	and    $0xff,%edx
    7f01bb3fcaa0:	89 95 b8 f3 ff ff    	mov    %edx,-0xc48(%rbp)
    7f01bb3fcaa6:	85 c0                	test   %eax,%eax
    7f01bb3fcaa8:	0f 94 c0             	sete   %al
    7f01bb3fcaab:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcaae:	23 85 a8 fe ff ff    	and    -0x158(%rbp),%eax
    7f01bb3fcab4:	89 85 b0 f3 ff ff    	mov    %eax,-0xc50(%rbp)
    7f01bb3fcaba:	8b 85 e0 fe ff ff    	mov    -0x120(%rbp),%eax
    7f01bb3fcac0:	ff c8                	dec    %eax
    7f01bb3fcac2:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fcac7:	89 85 a8 f3 ff ff    	mov    %eax,-0xc58(%rbp)
    7f01bb3fcacd:	85 c9                	test   %ecx,%ecx
    7f01bb3fcacf:	0f 84 11 00 00 00    	je     0x7f01bb3fcae6
    7f01bb3fcad5:	8b 85 b8 f3 ff ff    	mov    -0xc48(%rbp),%eax
    7f01bb3fcadb:	89 85 a0 f3 ff ff    	mov    %eax,-0xc60(%rbp)
    7f01bb3fcae1:	e9 2b 00 00 00       	jmpq   0x7f01bb3fcb11
    7f01bb3fcae6:	8b 85 b0 f3 ff ff    	mov    -0xc50(%rbp),%eax
    7f01bb3fcaec:	85 c0                	test   %eax,%eax
    7f01bb3fcaee:	0f 84 11 00 00 00    	je     0x7f01bb3fcb05
    7f01bb3fcaf4:	8b 85 a8 f3 ff ff    	mov    -0xc58(%rbp),%eax
    7f01bb3fcafa:	89 85 a0 f3 ff ff    	mov    %eax,-0xc60(%rbp)
    7f01bb3fcb00:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcb11
    7f01bb3fcb05:	8b 85 e0 fe ff ff    	mov    -0x120(%rbp),%eax
    7f01bb3fcb0b:	89 85 a0 f3 ff ff    	mov    %eax,-0xc60(%rbp)
    7f01bb3fcb11:	8b 85 28 f4 ff ff    	mov    -0xbd8(%rbp),%eax
    7f01bb3fcb17:	83 f8 05             	cmp    $0x5,%eax
    7f01bb3fcb1a:	0f 94 c0             	sete   %al
    7f01bb3fcb1d:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcb20:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
    7f01bb3fcb26:	23 c1                	and    %ecx,%eax
    7f01bb3fcb28:	8b 95 a0 fe ff ff    	mov    -0x160(%rbp),%edx
    7f01bb3fcb2e:	8b ca                	mov    %edx,%ecx
    7f01bb3fcb30:	85 c9                	test   %ecx,%ecx
    7f01bb3fcb32:	0f 94 c1             	sete   %cl
    7f01bb3fcb35:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fcb38:	23 c8                	and    %eax,%ecx
    7f01bb3fcb3a:	8b b5 d8 fe ff ff    	mov    -0x128(%rbp),%esi
    7f01bb3fcb40:	ff c6                	inc    %esi
    7f01bb3fcb42:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3fcb48:	89 b5 98 f3 ff ff    	mov    %esi,-0xc68(%rbp)
    7f01bb3fcb4e:	85 c0                	test   %eax,%eax
    7f01bb3fcb50:	0f 94 c0             	sete   %al
    7f01bb3fcb53:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcb56:	23 d0                	and    %eax,%edx
    7f01bb3fcb58:	89 95 90 f3 ff ff    	mov    %edx,-0xc70(%rbp)
    7f01bb3fcb5e:	8b 85 d8 fe ff ff    	mov    -0x128(%rbp),%eax
    7f01bb3fcb64:	ff c8                	dec    %eax
    7f01bb3fcb66:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fcb6b:	89 85 88 f3 ff ff    	mov    %eax,-0xc78(%rbp)
    7f01bb3fcb71:	85 c9                	test   %ecx,%ecx
    7f01bb3fcb73:	0f 84 11 00 00 00    	je     0x7f01bb3fcb8a
    7f01bb3fcb79:	8b 85 98 f3 ff ff    	mov    -0xc68(%rbp),%eax
    7f01bb3fcb7f:	89 85 80 f3 ff ff    	mov    %eax,-0xc80(%rbp)
    7f01bb3fcb85:	e9 2b 00 00 00       	jmpq   0x7f01bb3fcbb5
    7f01bb3fcb8a:	8b 85 90 f3 ff ff    	mov    -0xc70(%rbp),%eax
    7f01bb3fcb90:	85 c0                	test   %eax,%eax
    7f01bb3fcb92:	0f 84 11 00 00 00    	je     0x7f01bb3fcba9
    7f01bb3fcb98:	8b 85 88 f3 ff ff    	mov    -0xc78(%rbp),%eax
    7f01bb3fcb9e:	89 85 80 f3 ff ff    	mov    %eax,-0xc80(%rbp)
    7f01bb3fcba4:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcbb5
    7f01bb3fcba9:	8b 85 d8 fe ff ff    	mov    -0x128(%rbp),%eax
    7f01bb3fcbaf:	89 85 80 f3 ff ff    	mov    %eax,-0xc80(%rbp)
    7f01bb3fcbb5:	8b 85 28 f4 ff ff    	mov    -0xbd8(%rbp),%eax
    7f01bb3fcbbb:	83 f8 06             	cmp    $0x6,%eax
    7f01bb3fcbbe:	0f 94 c0             	sete   %al
    7f01bb3fcbc1:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcbc4:	8b 8d 30 f4 ff ff    	mov    -0xbd0(%rbp),%ecx
    7f01bb3fcbca:	23 c1                	and    %ecx,%eax
    7f01bb3fcbcc:	8b 95 98 fe ff ff    	mov    -0x168(%rbp),%edx
    7f01bb3fcbd2:	8b ca                	mov    %edx,%ecx
    7f01bb3fcbd4:	85 c9                	test   %ecx,%ecx
    7f01bb3fcbd6:	0f 94 c1             	sete   %cl
    7f01bb3fcbd9:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fcbdc:	23 c8                	and    %eax,%ecx
    7f01bb3fcbde:	8b b5 d0 fe ff ff    	mov    -0x130(%rbp),%esi
    7f01bb3fcbe4:	ff c6                	inc    %esi
    7f01bb3fcbe6:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3fcbec:	89 b5 78 f3 ff ff    	mov    %esi,-0xc88(%rbp)
    7f01bb3fcbf2:	85 c0                	test   %eax,%eax
    7f01bb3fcbf4:	0f 94 c0             	sete   %al
    7f01bb3fcbf7:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcbfa:	23 d0                	and    %eax,%edx
    7f01bb3fcbfc:	89 95 70 f3 ff ff    	mov    %edx,-0xc90(%rbp)
    7f01bb3fcc02:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    7f01bb3fcc08:	ff c8                	dec    %eax
    7f01bb3fcc0a:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fcc0f:	89 85 68 f3 ff ff    	mov    %eax,-0xc98(%rbp)
    7f01bb3fcc15:	85 c9                	test   %ecx,%ecx
    7f01bb3fcc17:	0f 84 11 00 00 00    	je     0x7f01bb3fcc2e
    7f01bb3fcc1d:	8b 85 78 f3 ff ff    	mov    -0xc88(%rbp),%eax
    7f01bb3fcc23:	89 85 60 f3 ff ff    	mov    %eax,-0xca0(%rbp)
    7f01bb3fcc29:	e9 2b 00 00 00       	jmpq   0x7f01bb3fcc59
    7f01bb3fcc2e:	8b 85 70 f3 ff ff    	mov    -0xc90(%rbp),%eax
    7f01bb3fcc34:	85 c0                	test   %eax,%eax
    7f01bb3fcc36:	0f 84 11 00 00 00    	je     0x7f01bb3fcc4d
    7f01bb3fcc3c:	8b 85 68 f3 ff ff    	mov    -0xc98(%rbp),%eax
    7f01bb3fcc42:	89 85 60 f3 ff ff    	mov    %eax,-0xca0(%rbp)
    7f01bb3fcc48:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcc59
    7f01bb3fcc4d:	8b 85 d0 fe ff ff    	mov    -0x130(%rbp),%eax
    7f01bb3fcc53:	89 85 60 f3 ff ff    	mov    %eax,-0xca0(%rbp)
    7f01bb3fcc59:	41 83 fd 08          	cmp    $0x8,%r13d
    7f01bb3fcc5d:	0f 94 c0             	sete   %al
    7f01bb3fcc60:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcc63:	23 85 98 f7 ff ff    	and    -0x868(%rbp),%eax
    7f01bb3fcc69:	89 85 58 f3 ff ff    	mov    %eax,-0xca8(%rbp)
    7f01bb3fcc6f:	85 c0                	test   %eax,%eax
    7f01bb3fcc71:	0f 84 36 00 00 00    	je     0x7f01bb3fccad
    7f01bb3fcc77:	49 8b c7             	mov    %r15,%rax
    7f01bb3fcc7a:	48 05 48 15 00 00    	add    $0x1548,%rax
    7f01bb3fcc80:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fcc83:	48 81 c1 88 41 00 00 	add    $0x4188,%rcx
    7f01bb3fcc8a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fcc8d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fcc90:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fcc94:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fcc98:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fcc9c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fcca0:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fcca4:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fcca8:	e9 31 00 00 00       	jmpq   0x7f01bb3fccde
    7f01bb3fccad:	49 8b c7             	mov    %r15,%rax
    7f01bb3fccb0:	48 05 48 15 00 00    	add    $0x1548,%rax
    7f01bb3fccb6:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fccb9:	48 81 c1 68 45 00 00 	add    $0x4568,%rcx
    7f01bb3fccc0:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fccc3:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fccc6:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fccca:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fccce:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fccd2:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fccd6:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fccda:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fccde:	8b 85 58 f3 ff ff    	mov    -0xca8(%rbp),%eax
    7f01bb3fcce4:	85 c0                	test   %eax,%eax
    7f01bb3fcce6:	0f 84 36 00 00 00    	je     0x7f01bb3fcd22
    7f01bb3fccec:	49 8b c7             	mov    %r15,%rax
    7f01bb3fccef:	48 05 88 15 00 00    	add    $0x1588,%rax
    7f01bb3fccf5:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fccf8:	48 81 c1 10 42 00 00 	add    $0x4210,%rcx
    7f01bb3fccff:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fcd02:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fcd05:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fcd09:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fcd0d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fcd11:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fcd15:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fcd19:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fcd1d:	e9 31 00 00 00       	jmpq   0x7f01bb3fcd53
    7f01bb3fcd22:	49 8b c7             	mov    %r15,%rax
    7f01bb3fcd25:	48 05 88 15 00 00    	add    $0x1588,%rax
    7f01bb3fcd2b:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fcd2e:	48 81 c1 a8 45 00 00 	add    $0x45a8,%rcx
    7f01bb3fcd35:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fcd38:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fcd3b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fcd3f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fcd43:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fcd47:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fcd4b:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fcd4f:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fcd53:	41 81 fd 00 04 00 00 	cmp    $0x400,%r13d
    7f01bb3fcd5a:	0f 94 c0             	sete   %al
    7f01bb3fcd5d:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcd60:	23 85 68 f8 ff ff    	and    -0x798(%rbp),%eax
    7f01bb3fcd66:	89 85 50 f3 ff ff    	mov    %eax,-0xcb0(%rbp)
    7f01bb3fcd6c:	85 c0                	test   %eax,%eax
    7f01bb3fcd6e:	0f 84 36 00 00 00    	je     0x7f01bb3fcdaa
    7f01bb3fcd74:	49 8b c7             	mov    %r15,%rax
    7f01bb3fcd77:	48 05 c8 15 00 00    	add    $0x15c8,%rax
    7f01bb3fcd7d:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fcd80:	48 81 c1 50 44 00 00 	add    $0x4450,%rcx
    7f01bb3fcd87:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fcd8a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fcd8d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fcd91:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fcd95:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fcd99:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fcd9d:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fcda1:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fcda5:	e9 31 00 00 00       	jmpq   0x7f01bb3fcddb
    7f01bb3fcdaa:	49 8b c7             	mov    %r15,%rax
    7f01bb3fcdad:	48 05 c8 15 00 00    	add    $0x15c8,%rax
    7f01bb3fcdb3:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fcdb6:	48 81 c1 e8 45 00 00 	add    $0x45e8,%rcx
    7f01bb3fcdbd:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fcdc0:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fcdc3:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fcdc7:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fcdcb:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fcdcf:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fcdd3:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fcdd7:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fcddb:	8b 85 88 f4 ff ff    	mov    -0xb78(%rbp),%eax
    7f01bb3fcde1:	23 85 c8 f8 ff ff    	and    -0x738(%rbp),%eax
    7f01bb3fcde7:	8b 8d 90 f4 ff ff    	mov    -0xb70(%rbp),%ecx
    7f01bb3fcded:	23 c1                	and    %ecx,%eax
    7f01bb3fcdef:	89 85 48 f3 ff ff    	mov    %eax,-0xcb8(%rbp)
    7f01bb3fcdf5:	85 c0                	test   %eax,%eax
    7f01bb3fcdf7:	0f 84 36 00 00 00    	je     0x7f01bb3fce33
    7f01bb3fcdfd:	49 8b c7             	mov    %r15,%rax
    7f01bb3fce00:	48 05 08 16 00 00    	add    $0x1608,%rax
    7f01bb3fce06:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fce09:	48 81 c1 c8 43 00 00 	add    $0x43c8,%rcx
    7f01bb3fce10:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fce13:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fce16:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fce1a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fce1e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fce22:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fce26:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fce2a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fce2e:	e9 31 00 00 00       	jmpq   0x7f01bb3fce64
    7f01bb3fce33:	49 8b c7             	mov    %r15,%rax
    7f01bb3fce36:	48 05 08 16 00 00    	add    $0x1608,%rax
    7f01bb3fce3c:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fce3f:	48 81 c1 28 46 00 00 	add    $0x4628,%rcx
    7f01bb3fce46:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fce49:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fce4c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fce50:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fce54:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fce58:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fce5c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fce60:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fce64:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    7f01bb3fce6b:	48 2b 85 c0 fe ff ff 	sub    -0x140(%rbp),%rax
    7f01bb3fce72:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb3fce77:	48 23 c1             	and    %rcx,%rax
    7f01bb3fce7a:	89 85 40 f3 ff ff    	mov    %eax,-0xcc0(%rbp)
    7f01bb3fce80:	41 81 fd 00 00 20 00 	cmp    $0x200000,%r13d
    7f01bb3fce87:	0f 85 11 00 00 00    	jne    0x7f01bb3fce9e
    7f01bb3fce8d:	8b 85 40 f3 ff ff    	mov    -0xcc0(%rbp),%eax
    7f01bb3fce93:	89 85 38 f3 ff ff    	mov    %eax,-0xcc8(%rbp)
    7f01bb3fce99:	e9 0c 00 00 00       	jmpq   0x7f01bb3fceaa
    7f01bb3fce9e:	8b 85 c8 fe ff ff    	mov    -0x138(%rbp),%eax
    7f01bb3fcea4:	89 85 38 f3 ff ff    	mov    %eax,-0xcc8(%rbp)
    7f01bb3fceaa:	8b 85 c8 f7 ff ff    	mov    -0x838(%rbp),%eax
    7f01bb3fceb0:	85 c0                	test   %eax,%eax
    7f01bb3fceb2:	0f 84 13 00 00 00    	je     0x7f01bb3fcecb
    7f01bb3fceb8:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    7f01bb3fcebf:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
    7f01bb3fcec6:	e9 0e 00 00 00       	jmpq   0x7f01bb3fced9
    7f01bb3fcecb:	48 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%rax
    7f01bb3fced2:	48 89 85 30 f3 ff ff 	mov    %rax,-0xcd0(%rbp)
    7f01bb3fced9:	41 81 fd 00 00 40 00 	cmp    $0x400000,%r13d
    7f01bb3fcee0:	0f 94 c0             	sete   %al
    7f01bb3fcee3:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcee6:	23 85 d8 f6 ff ff    	and    -0x928(%rbp),%eax
    7f01bb3fceec:	41 8b 8f 78 46 00 00 	mov    0x4678(%r15),%ecx
    7f01bb3fcef3:	89 8d 28 f3 ff ff    	mov    %ecx,-0xcd8(%rbp)
    7f01bb3fcef9:	ff c1                	inc    %ecx
    7f01bb3fcefb:	89 8d 20 f3 ff ff    	mov    %ecx,-0xce0(%rbp)
    7f01bb3fcf01:	89 85 18 f3 ff ff    	mov    %eax,-0xce8(%rbp)
    7f01bb3fcf07:	85 c0                	test   %eax,%eax
    7f01bb3fcf09:	0f 84 11 00 00 00    	je     0x7f01bb3fcf20
    7f01bb3fcf0f:	8b 85 20 f3 ff ff    	mov    -0xce0(%rbp),%eax
    7f01bb3fcf15:	89 85 10 f3 ff ff    	mov    %eax,-0xcf0(%rbp)
    7f01bb3fcf1b:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcf2c
    7f01bb3fcf20:	8b 85 28 f3 ff ff    	mov    -0xcd8(%rbp),%eax
    7f01bb3fcf26:	89 85 10 f3 ff ff    	mov    %eax,-0xcf0(%rbp)
    7f01bb3fcf2c:	41 8b 87 7c 46 00 00 	mov    0x467c(%r15),%eax
    7f01bb3fcf33:	85 c0                	test   %eax,%eax
    7f01bb3fcf35:	0f 94 c1             	sete   %cl
    7f01bb3fcf38:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fcf3b:	89 8d 08 f3 ff ff    	mov    %ecx,-0xcf8(%rbp)
    7f01bb3fcf41:	89 85 00 f3 ff ff    	mov    %eax,-0xd00(%rbp)
    7f01bb3fcf47:	3b 85 c8 fe ff ff    	cmp    -0x138(%rbp),%eax
    7f01bb3fcf4d:	0f 92 c0             	setb   %al
    7f01bb3fcf50:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcf53:	85 c0                	test   %eax,%eax
    7f01bb3fcf55:	0f 84 11 00 00 00    	je     0x7f01bb3fcf6c
    7f01bb3fcf5b:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
    7f01bb3fcf61:	89 85 f8 f2 ff ff    	mov    %eax,-0xd08(%rbp)
    7f01bb3fcf67:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcf78
    7f01bb3fcf6c:	8b 85 c8 fe ff ff    	mov    -0x138(%rbp),%eax
    7f01bb3fcf72:	89 85 f8 f2 ff ff    	mov    %eax,-0xd08(%rbp)
    7f01bb3fcf78:	8b 85 08 f3 ff ff    	mov    -0xcf8(%rbp),%eax
    7f01bb3fcf7e:	85 c0                	test   %eax,%eax
    7f01bb3fcf80:	0f 84 11 00 00 00    	je     0x7f01bb3fcf97
    7f01bb3fcf86:	8b 85 c8 fe ff ff    	mov    -0x138(%rbp),%eax
    7f01bb3fcf8c:	89 85 f0 f2 ff ff    	mov    %eax,-0xd10(%rbp)
    7f01bb3fcf92:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcfa3
    7f01bb3fcf97:	8b 85 f8 f2 ff ff    	mov    -0xd08(%rbp),%eax
    7f01bb3fcf9d:	89 85 f0 f2 ff ff    	mov    %eax,-0xd10(%rbp)
    7f01bb3fcfa3:	8b 85 18 f3 ff ff    	mov    -0xce8(%rbp),%eax
    7f01bb3fcfa9:	85 c0                	test   %eax,%eax
    7f01bb3fcfab:	0f 84 11 00 00 00    	je     0x7f01bb3fcfc2
    7f01bb3fcfb1:	8b 85 f0 f2 ff ff    	mov    -0xd10(%rbp),%eax
    7f01bb3fcfb7:	89 85 e8 f2 ff ff    	mov    %eax,-0xd18(%rbp)
    7f01bb3fcfbd:	e9 0c 00 00 00       	jmpq   0x7f01bb3fcfce
    7f01bb3fcfc2:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
    7f01bb3fcfc8:	89 85 e8 f2 ff ff    	mov    %eax,-0xd18(%rbp)
    7f01bb3fcfce:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
    7f01bb3fcfd4:	3b 85 c8 fe ff ff    	cmp    -0x138(%rbp),%eax
    7f01bb3fcfda:	0f 97 c0             	seta   %al
    7f01bb3fcfdd:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fcfe0:	85 c0                	test   %eax,%eax
    7f01bb3fcfe2:	0f 84 11 00 00 00    	je     0x7f01bb3fcff9
    7f01bb3fcfe8:	8b 85 00 f3 ff ff    	mov    -0xd00(%rbp),%eax
    7f01bb3fcfee:	89 85 e0 f2 ff ff    	mov    %eax,-0xd20(%rbp)
    7f01bb3fcff4:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd005
    7f01bb3fcff9:	8b 85 c8 fe ff ff    	mov    -0x138(%rbp),%eax
    7f01bb3fcfff:	89 85 e0 f2 ff ff    	mov    %eax,-0xd20(%rbp)
    7f01bb3fd005:	41 8b 87 80 46 00 00 	mov    0x4680(%r15),%eax
    7f01bb3fd00c:	89 85 d8 f2 ff ff    	mov    %eax,-0xd28(%rbp)
    7f01bb3fd012:	8b 85 18 f3 ff ff    	mov    -0xce8(%rbp),%eax
    7f01bb3fd018:	85 c0                	test   %eax,%eax
    7f01bb3fd01a:	0f 84 11 00 00 00    	je     0x7f01bb3fd031
    7f01bb3fd020:	8b 85 e0 f2 ff ff    	mov    -0xd20(%rbp),%eax
    7f01bb3fd026:	89 85 d0 f2 ff ff    	mov    %eax,-0xd30(%rbp)
    7f01bb3fd02c:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd03d
    7f01bb3fd031:	8b 85 d8 f2 ff ff    	mov    -0xd28(%rbp),%eax
    7f01bb3fd037:	89 85 d0 f2 ff ff    	mov    %eax,-0xd30(%rbp)
    7f01bb3fd03d:	41 8b 87 84 46 00 00 	mov    0x4684(%r15),%eax
    7f01bb3fd044:	89 85 c8 f2 ff ff    	mov    %eax,-0xd38(%rbp)
    7f01bb3fd04a:	03 85 c8 fe ff ff    	add    -0x138(%rbp),%eax
    7f01bb3fd050:	89 85 c0 f2 ff ff    	mov    %eax,-0xd40(%rbp)
    7f01bb3fd056:	8b 85 18 f3 ff ff    	mov    -0xce8(%rbp),%eax
    7f01bb3fd05c:	85 c0                	test   %eax,%eax
    7f01bb3fd05e:	0f 84 11 00 00 00    	je     0x7f01bb3fd075
    7f01bb3fd064:	8b 85 c0 f2 ff ff    	mov    -0xd40(%rbp),%eax
    7f01bb3fd06a:	89 85 b8 f2 ff ff    	mov    %eax,-0xd48(%rbp)
    7f01bb3fd070:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd081
    7f01bb3fd075:	8b 85 c8 f2 ff ff    	mov    -0xd38(%rbp),%eax
    7f01bb3fd07b:	89 85 b8 f2 ff ff    	mov    %eax,-0xd48(%rbp)
    7f01bb3fd081:	41 8b 87 88 46 00 00 	mov    0x4688(%r15),%eax
    7f01bb3fd088:	89 85 b0 f2 ff ff    	mov    %eax,-0xd50(%rbp)
    7f01bb3fd08e:	ff c0                	inc    %eax
    7f01bb3fd090:	89 85 a8 f2 ff ff    	mov    %eax,-0xd58(%rbp)
    7f01bb3fd096:	8b 85 e8 f4 ff ff    	mov    -0xb18(%rbp),%eax
    7f01bb3fd09c:	85 c0                	test   %eax,%eax
    7f01bb3fd09e:	0f 84 11 00 00 00    	je     0x7f01bb3fd0b5
    7f01bb3fd0a4:	8b 85 b0 f2 ff ff    	mov    -0xd50(%rbp),%eax
    7f01bb3fd0aa:	89 85 a0 f2 ff ff    	mov    %eax,-0xd60(%rbp)
    7f01bb3fd0b0:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd0c1
    7f01bb3fd0b5:	8b 85 a8 f2 ff ff    	mov    -0xd58(%rbp),%eax
    7f01bb3fd0bb:	89 85 a0 f2 ff ff    	mov    %eax,-0xd60(%rbp)
    7f01bb3fd0c1:	8b 85 00 f6 ff ff    	mov    -0xa00(%rbp),%eax
    7f01bb3fd0c7:	85 c0                	test   %eax,%eax
    7f01bb3fd0c9:	0f 84 11 00 00 00    	je     0x7f01bb3fd0e0
    7f01bb3fd0cf:	8b 85 a0 f2 ff ff    	mov    -0xd60(%rbp),%eax
    7f01bb3fd0d5:	89 85 98 f2 ff ff    	mov    %eax,-0xd68(%rbp)
    7f01bb3fd0db:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd0ec
    7f01bb3fd0e0:	8b 85 a8 f2 ff ff    	mov    -0xd58(%rbp),%eax
    7f01bb3fd0e6:	89 85 98 f2 ff ff    	mov    %eax,-0xd68(%rbp)
    7f01bb3fd0ec:	41 83 fd 02          	cmp    $0x2,%r13d
    7f01bb3fd0f0:	0f 85 11 00 00 00    	jne    0x7f01bb3fd107
    7f01bb3fd0f6:	8b 85 98 f2 ff ff    	mov    -0xd68(%rbp),%eax
    7f01bb3fd0fc:	89 85 90 f2 ff ff    	mov    %eax,-0xd70(%rbp)
    7f01bb3fd102:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd113
    7f01bb3fd107:	8b 85 b0 f2 ff ff    	mov    -0xd50(%rbp),%eax
    7f01bb3fd10d:	89 85 90 f2 ff ff    	mov    %eax,-0xd70(%rbp)
    7f01bb3fd113:	41 8b 87 8c 46 00 00 	mov    0x468c(%r15),%eax
    7f01bb3fd11a:	89 85 88 f2 ff ff    	mov    %eax,-0xd78(%rbp)
    7f01bb3fd120:	ff c0                	inc    %eax
    7f01bb3fd122:	89 85 80 f2 ff ff    	mov    %eax,-0xd80(%rbp)
    7f01bb3fd128:	8b 85 e8 f4 ff ff    	mov    -0xb18(%rbp),%eax
    7f01bb3fd12e:	85 c0                	test   %eax,%eax
    7f01bb3fd130:	0f 84 11 00 00 00    	je     0x7f01bb3fd147
    7f01bb3fd136:	8b 85 88 f2 ff ff    	mov    -0xd78(%rbp),%eax
    7f01bb3fd13c:	89 85 78 f2 ff ff    	mov    %eax,-0xd88(%rbp)
    7f01bb3fd142:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd153
    7f01bb3fd147:	8b 85 80 f2 ff ff    	mov    -0xd80(%rbp),%eax
    7f01bb3fd14d:	89 85 78 f2 ff ff    	mov    %eax,-0xd88(%rbp)
    7f01bb3fd153:	8b 85 f0 f5 ff ff    	mov    -0xa10(%rbp),%eax
    7f01bb3fd159:	85 c0                	test   %eax,%eax
    7f01bb3fd15b:	0f 84 11 00 00 00    	je     0x7f01bb3fd172
    7f01bb3fd161:	8b 85 78 f2 ff ff    	mov    -0xd88(%rbp),%eax
    7f01bb3fd167:	89 85 70 f2 ff ff    	mov    %eax,-0xd90(%rbp)
    7f01bb3fd16d:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd17e
    7f01bb3fd172:	8b 85 80 f2 ff ff    	mov    -0xd80(%rbp),%eax
    7f01bb3fd178:	89 85 70 f2 ff ff    	mov    %eax,-0xd90(%rbp)
    7f01bb3fd17e:	8b 85 48 fa ff ff    	mov    -0x5b8(%rbp),%eax
    7f01bb3fd184:	85 c0                	test   %eax,%eax
    7f01bb3fd186:	0f 84 11 00 00 00    	je     0x7f01bb3fd19d
    7f01bb3fd18c:	8b 85 88 f2 ff ff    	mov    -0xd78(%rbp),%eax
    7f01bb3fd192:	89 85 68 f2 ff ff    	mov    %eax,-0xd98(%rbp)
    7f01bb3fd198:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd1a9
    7f01bb3fd19d:	8b 85 80 f2 ff ff    	mov    -0xd80(%rbp),%eax
    7f01bb3fd1a3:	89 85 68 f2 ff ff    	mov    %eax,-0xd98(%rbp)
    7f01bb3fd1a9:	41 83 fd 04          	cmp    $0x4,%r13d
    7f01bb3fd1ad:	0f 85 11 00 00 00    	jne    0x7f01bb3fd1c4
    7f01bb3fd1b3:	8b 85 70 f2 ff ff    	mov    -0xd90(%rbp),%eax
    7f01bb3fd1b9:	89 85 60 f2 ff ff    	mov    %eax,-0xda0(%rbp)
    7f01bb3fd1bf:	e9 42 00 00 00       	jmpq   0x7f01bb3fd206
    7f01bb3fd1c4:	41 83 fd 10          	cmp    $0x10,%r13d
    7f01bb3fd1c8:	0f 85 11 00 00 00    	jne    0x7f01bb3fd1df
    7f01bb3fd1ce:	8b 85 70 f2 ff ff    	mov    -0xd90(%rbp),%eax
    7f01bb3fd1d4:	89 85 60 f2 ff ff    	mov    %eax,-0xda0(%rbp)
    7f01bb3fd1da:	e9 27 00 00 00       	jmpq   0x7f01bb3fd206
    7f01bb3fd1df:	41 83 fd 20          	cmp    $0x20,%r13d
    7f01bb3fd1e3:	0f 85 11 00 00 00    	jne    0x7f01bb3fd1fa
    7f01bb3fd1e9:	8b 85 68 f2 ff ff    	mov    -0xd98(%rbp),%eax
    7f01bb3fd1ef:	89 85 60 f2 ff ff    	mov    %eax,-0xda0(%rbp)
    7f01bb3fd1f5:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd206
    7f01bb3fd1fa:	8b 85 88 f2 ff ff    	mov    -0xd78(%rbp),%eax
    7f01bb3fd200:	89 85 60 f2 ff ff    	mov    %eax,-0xda0(%rbp)
    7f01bb3fd206:	41 8b 87 90 46 00 00 	mov    0x4690(%r15),%eax
    7f01bb3fd20d:	89 85 58 f2 ff ff    	mov    %eax,-0xda8(%rbp)
    7f01bb3fd213:	ff c0                	inc    %eax
    7f01bb3fd215:	89 85 50 f2 ff ff    	mov    %eax,-0xdb0(%rbp)
    7f01bb3fd21b:	8b 85 e8 f4 ff ff    	mov    -0xb18(%rbp),%eax
    7f01bb3fd221:	85 c0                	test   %eax,%eax
    7f01bb3fd223:	0f 84 11 00 00 00    	je     0x7f01bb3fd23a
    7f01bb3fd229:	8b 85 58 f2 ff ff    	mov    -0xda8(%rbp),%eax
    7f01bb3fd22f:	89 85 48 f2 ff ff    	mov    %eax,-0xdb8(%rbp)
    7f01bb3fd235:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd246
    7f01bb3fd23a:	8b 85 50 f2 ff ff    	mov    -0xdb0(%rbp),%eax
    7f01bb3fd240:	89 85 48 f2 ff ff    	mov    %eax,-0xdb8(%rbp)
    7f01bb3fd246:	8b 85 c0 f5 ff ff    	mov    -0xa40(%rbp),%eax
    7f01bb3fd24c:	85 c0                	test   %eax,%eax
    7f01bb3fd24e:	0f 84 11 00 00 00    	je     0x7f01bb3fd265
    7f01bb3fd254:	8b 85 48 f2 ff ff    	mov    -0xdb8(%rbp),%eax
    7f01bb3fd25a:	89 85 40 f2 ff ff    	mov    %eax,-0xdc0(%rbp)
    7f01bb3fd260:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd271
    7f01bb3fd265:	8b 85 50 f2 ff ff    	mov    -0xdb0(%rbp),%eax
    7f01bb3fd26b:	89 85 40 f2 ff ff    	mov    %eax,-0xdc0(%rbp)
    7f01bb3fd271:	41 81 fd 00 40 00 00 	cmp    $0x4000,%r13d
    7f01bb3fd278:	0f 85 11 00 00 00    	jne    0x7f01bb3fd28f
    7f01bb3fd27e:	8b 85 40 f2 ff ff    	mov    -0xdc0(%rbp),%eax
    7f01bb3fd284:	89 85 38 f2 ff ff    	mov    %eax,-0xdc8(%rbp)
    7f01bb3fd28a:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd29b
    7f01bb3fd28f:	8b 85 58 f2 ff ff    	mov    -0xda8(%rbp),%eax
    7f01bb3fd295:	89 85 38 f2 ff ff    	mov    %eax,-0xdc8(%rbp)
    7f01bb3fd29b:	41 8b 87 94 46 00 00 	mov    0x4694(%r15),%eax
    7f01bb3fd2a2:	89 85 30 f2 ff ff    	mov    %eax,-0xdd0(%rbp)
    7f01bb3fd2a8:	ff c0                	inc    %eax
    7f01bb3fd2aa:	89 85 28 f2 ff ff    	mov    %eax,-0xdd8(%rbp)
    7f01bb3fd2b0:	8b 85 e8 f4 ff ff    	mov    -0xb18(%rbp),%eax
    7f01bb3fd2b6:	85 c0                	test   %eax,%eax
    7f01bb3fd2b8:	0f 84 11 00 00 00    	je     0x7f01bb3fd2cf
    7f01bb3fd2be:	8b 85 30 f2 ff ff    	mov    -0xdd0(%rbp),%eax
    7f01bb3fd2c4:	89 85 20 f2 ff ff    	mov    %eax,-0xde0(%rbp)
    7f01bb3fd2ca:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd2db
    7f01bb3fd2cf:	8b 85 28 f2 ff ff    	mov    -0xdd8(%rbp),%eax
    7f01bb3fd2d5:	89 85 20 f2 ff ff    	mov    %eax,-0xde0(%rbp)
    7f01bb3fd2db:	8b 85 10 f6 ff ff    	mov    -0x9f0(%rbp),%eax
    7f01bb3fd2e1:	85 c0                	test   %eax,%eax
    7f01bb3fd2e3:	0f 84 11 00 00 00    	je     0x7f01bb3fd2fa
    7f01bb3fd2e9:	8b 85 20 f2 ff ff    	mov    -0xde0(%rbp),%eax
    7f01bb3fd2ef:	89 85 18 f2 ff ff    	mov    %eax,-0xde8(%rbp)
    7f01bb3fd2f5:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd306
    7f01bb3fd2fa:	8b 85 28 f2 ff ff    	mov    -0xdd8(%rbp),%eax
    7f01bb3fd300:	89 85 18 f2 ff ff    	mov    %eax,-0xde8(%rbp)
    7f01bb3fd306:	8b 85 88 f4 ff ff    	mov    -0xb78(%rbp),%eax
    7f01bb3fd30c:	85 c0                	test   %eax,%eax
    7f01bb3fd30e:	0f 84 11 00 00 00    	je     0x7f01bb3fd325
    7f01bb3fd314:	8b 85 30 f2 ff ff    	mov    -0xdd0(%rbp),%eax
    7f01bb3fd31a:	89 85 10 f2 ff ff    	mov    %eax,-0xdf0(%rbp)
    7f01bb3fd320:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd331
    7f01bb3fd325:	8b 85 28 f2 ff ff    	mov    -0xdd8(%rbp),%eax
    7f01bb3fd32b:	89 85 10 f2 ff ff    	mov    %eax,-0xdf0(%rbp)
    7f01bb3fd331:	41 81 fd 00 80 00 00 	cmp    $0x8000,%r13d
    7f01bb3fd338:	0f 85 11 00 00 00    	jne    0x7f01bb3fd34f
    7f01bb3fd33e:	8b 85 18 f2 ff ff    	mov    -0xde8(%rbp),%eax
    7f01bb3fd344:	89 85 08 f2 ff ff    	mov    %eax,-0xdf8(%rbp)
    7f01bb3fd34a:	e9 2a 00 00 00       	jmpq   0x7f01bb3fd379
    7f01bb3fd34f:	41 81 fd 00 00 01 00 	cmp    $0x10000,%r13d
    7f01bb3fd356:	0f 85 11 00 00 00    	jne    0x7f01bb3fd36d
    7f01bb3fd35c:	8b 85 10 f2 ff ff    	mov    -0xdf0(%rbp),%eax
    7f01bb3fd362:	89 85 08 f2 ff ff    	mov    %eax,-0xdf8(%rbp)
    7f01bb3fd368:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd379
    7f01bb3fd36d:	8b 85 30 f2 ff ff    	mov    -0xdd0(%rbp),%eax
    7f01bb3fd373:	89 85 08 f2 ff ff    	mov    %eax,-0xdf8(%rbp)
    7f01bb3fd379:	41 8b 87 98 46 00 00 	mov    0x4698(%r15),%eax
    7f01bb3fd380:	89 85 00 f2 ff ff    	mov    %eax,-0xe00(%rbp)
    7f01bb3fd386:	ff c0                	inc    %eax
    7f01bb3fd388:	89 85 f8 f1 ff ff    	mov    %eax,-0xe08(%rbp)
    7f01bb3fd38e:	8b 85 e8 f4 ff ff    	mov    -0xb18(%rbp),%eax
    7f01bb3fd394:	85 c0                	test   %eax,%eax
    7f01bb3fd396:	0f 84 11 00 00 00    	je     0x7f01bb3fd3ad
    7f01bb3fd39c:	8b 85 00 f2 ff ff    	mov    -0xe00(%rbp),%eax
    7f01bb3fd3a2:	89 85 f0 f1 ff ff    	mov    %eax,-0xe10(%rbp)
    7f01bb3fd3a8:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd3b9
    7f01bb3fd3ad:	8b 85 f8 f1 ff ff    	mov    -0xe08(%rbp),%eax
    7f01bb3fd3b3:	89 85 f0 f1 ff ff    	mov    %eax,-0xe10(%rbp)
    7f01bb3fd3b9:	8b 85 d0 f5 ff ff    	mov    -0xa30(%rbp),%eax
    7f01bb3fd3bf:	85 c0                	test   %eax,%eax
    7f01bb3fd3c1:	0f 84 11 00 00 00    	je     0x7f01bb3fd3d8
    7f01bb3fd3c7:	8b 85 f0 f1 ff ff    	mov    -0xe10(%rbp),%eax
    7f01bb3fd3cd:	89 85 e8 f1 ff ff    	mov    %eax,-0xe18(%rbp)
    7f01bb3fd3d3:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd3e4
    7f01bb3fd3d8:	8b 85 f8 f1 ff ff    	mov    -0xe08(%rbp),%eax
    7f01bb3fd3de:	89 85 e8 f1 ff ff    	mov    %eax,-0xe18(%rbp)
    7f01bb3fd3e4:	41 81 fd 00 08 00 00 	cmp    $0x800,%r13d
    7f01bb3fd3eb:	0f 85 11 00 00 00    	jne    0x7f01bb3fd402
    7f01bb3fd3f1:	8b 85 e8 f1 ff ff    	mov    -0xe18(%rbp),%eax
    7f01bb3fd3f7:	89 85 e0 f1 ff ff    	mov    %eax,-0xe20(%rbp)
    7f01bb3fd3fd:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd40e
    7f01bb3fd402:	8b 85 00 f2 ff ff    	mov    -0xe00(%rbp),%eax
    7f01bb3fd408:	89 85 e0 f1 ff ff    	mov    %eax,-0xe20(%rbp)
    7f01bb3fd40e:	41 8b 87 9c 46 00 00 	mov    0x469c(%r15),%eax
    7f01bb3fd415:	89 85 d8 f1 ff ff    	mov    %eax,-0xe28(%rbp)
    7f01bb3fd41b:	ff c0                	inc    %eax
    7f01bb3fd41d:	89 85 d0 f1 ff ff    	mov    %eax,-0xe30(%rbp)
    7f01bb3fd423:	8b 85 e8 f4 ff ff    	mov    -0xb18(%rbp),%eax
    7f01bb3fd429:	85 c0                	test   %eax,%eax
    7f01bb3fd42b:	0f 84 11 00 00 00    	je     0x7f01bb3fd442
    7f01bb3fd431:	8b 85 d8 f1 ff ff    	mov    -0xe28(%rbp),%eax
    7f01bb3fd437:	89 85 c8 f1 ff ff    	mov    %eax,-0xe38(%rbp)
    7f01bb3fd43d:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd44e
    7f01bb3fd442:	8b 85 d0 f1 ff ff    	mov    -0xe30(%rbp),%eax
    7f01bb3fd448:	89 85 c8 f1 ff ff    	mov    %eax,-0xe38(%rbp)
    7f01bb3fd44e:	8b 85 e0 f5 ff ff    	mov    -0xa20(%rbp),%eax
    7f01bb3fd454:	85 c0                	test   %eax,%eax
    7f01bb3fd456:	0f 84 11 00 00 00    	je     0x7f01bb3fd46d
    7f01bb3fd45c:	8b 85 c8 f1 ff ff    	mov    -0xe38(%rbp),%eax
    7f01bb3fd462:	89 85 c0 f1 ff ff    	mov    %eax,-0xe40(%rbp)
    7f01bb3fd468:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd479
    7f01bb3fd46d:	8b 85 d0 f1 ff ff    	mov    -0xe30(%rbp),%eax
    7f01bb3fd473:	89 85 c0 f1 ff ff    	mov    %eax,-0xe40(%rbp)
    7f01bb3fd479:	8b 85 68 f8 ff ff    	mov    -0x798(%rbp),%eax
    7f01bb3fd47f:	85 c0                	test   %eax,%eax
    7f01bb3fd481:	0f 84 11 00 00 00    	je     0x7f01bb3fd498
    7f01bb3fd487:	8b 85 d8 f1 ff ff    	mov    -0xe28(%rbp),%eax
    7f01bb3fd48d:	89 85 b8 f1 ff ff    	mov    %eax,-0xe48(%rbp)
    7f01bb3fd493:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd4a4
    7f01bb3fd498:	8b 85 d0 f1 ff ff    	mov    -0xe30(%rbp),%eax
    7f01bb3fd49e:	89 85 b8 f1 ff ff    	mov    %eax,-0xe48(%rbp)
    7f01bb3fd4a4:	41 81 fd 00 02 00 00 	cmp    $0x200,%r13d
    7f01bb3fd4ab:	0f 85 11 00 00 00    	jne    0x7f01bb3fd4c2
    7f01bb3fd4b1:	8b 85 c0 f1 ff ff    	mov    -0xe40(%rbp),%eax
    7f01bb3fd4b7:	89 85 b0 f1 ff ff    	mov    %eax,-0xe50(%rbp)
    7f01bb3fd4bd:	e9 2a 00 00 00       	jmpq   0x7f01bb3fd4ec
    7f01bb3fd4c2:	41 81 fd 00 04 00 00 	cmp    $0x400,%r13d
    7f01bb3fd4c9:	0f 85 11 00 00 00    	jne    0x7f01bb3fd4e0
    7f01bb3fd4cf:	8b 85 b8 f1 ff ff    	mov    -0xe48(%rbp),%eax
    7f01bb3fd4d5:	89 85 b0 f1 ff ff    	mov    %eax,-0xe50(%rbp)
    7f01bb3fd4db:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd4ec
    7f01bb3fd4e0:	8b 85 d8 f1 ff ff    	mov    -0xe28(%rbp),%eax
    7f01bb3fd4e6:	89 85 b0 f1 ff ff    	mov    %eax,-0xe50(%rbp)
    7f01bb3fd4ec:	41 8b 87 a0 46 00 00 	mov    0x46a0(%r15),%eax
    7f01bb3fd4f3:	89 85 a8 f1 ff ff    	mov    %eax,-0xe58(%rbp)
    7f01bb3fd4f9:	ff c0                	inc    %eax
    7f01bb3fd4fb:	89 85 a0 f1 ff ff    	mov    %eax,-0xe60(%rbp)
    7f01bb3fd501:	8b 85 d8 f6 ff ff    	mov    -0x928(%rbp),%eax
    7f01bb3fd507:	85 c0                	test   %eax,%eax
    7f01bb3fd509:	0f 84 11 00 00 00    	je     0x7f01bb3fd520
    7f01bb3fd50f:	8b 85 a8 f1 ff ff    	mov    -0xe58(%rbp),%eax
    7f01bb3fd515:	89 85 98 f1 ff ff    	mov    %eax,-0xe68(%rbp)
    7f01bb3fd51b:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd52c
    7f01bb3fd520:	8b 85 a0 f1 ff ff    	mov    -0xe60(%rbp),%eax
    7f01bb3fd526:	89 85 98 f1 ff ff    	mov    %eax,-0xe68(%rbp)
    7f01bb3fd52c:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fd533:	0f 85 11 00 00 00    	jne    0x7f01bb3fd54a
    7f01bb3fd539:	8b 85 98 f1 ff ff    	mov    -0xe68(%rbp),%eax
    7f01bb3fd53f:	89 85 90 f1 ff ff    	mov    %eax,-0xe70(%rbp)
    7f01bb3fd545:	e9 2a 00 00 00       	jmpq   0x7f01bb3fd574
    7f01bb3fd54a:	41 81 fd 00 00 40 00 	cmp    $0x400000,%r13d
    7f01bb3fd551:	0f 85 11 00 00 00    	jne    0x7f01bb3fd568
    7f01bb3fd557:	8b 85 98 f1 ff ff    	mov    -0xe68(%rbp),%eax
    7f01bb3fd55d:	89 85 90 f1 ff ff    	mov    %eax,-0xe70(%rbp)
    7f01bb3fd563:	e9 0c 00 00 00       	jmpq   0x7f01bb3fd574
    7f01bb3fd568:	8b 85 a8 f1 ff ff    	mov    -0xe58(%rbp),%eax
    7f01bb3fd56e:	89 85 90 f1 ff ff    	mov    %eax,-0xe70(%rbp)
    7f01bb3fd574:	8b 85 10 f3 ff ff    	mov    -0xcf0(%rbp),%eax
    7f01bb3fd57a:	8b c0                	mov    %eax,%eax
    7f01bb3fd57c:	8b 8d e8 f2 ff ff    	mov    -0xd18(%rbp),%ecx
    7f01bb3fd582:	8b c9                	mov    %ecx,%ecx
    7f01bb3fd584:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb3fd588:	48 0b c1             	or     %rcx,%rax
    7f01bb3fd58b:	49 89 87 48 16 00 00 	mov    %rax,0x1648(%r15)
    7f01bb3fd592:	8b 85 d0 f2 ff ff    	mov    -0xd30(%rbp),%eax
    7f01bb3fd598:	8b c0                	mov    %eax,%eax
    7f01bb3fd59a:	8b 8d b8 f2 ff ff    	mov    -0xd48(%rbp),%ecx
    7f01bb3fd5a0:	8b c9                	mov    %ecx,%ecx
    7f01bb3fd5a2:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb3fd5a6:	48 0b c1             	or     %rcx,%rax
    7f01bb3fd5a9:	49 89 87 50 16 00 00 	mov    %rax,0x1650(%r15)
    7f01bb3fd5b0:	8b 85 90 f2 ff ff    	mov    -0xd70(%rbp),%eax
    7f01bb3fd5b6:	8b c0                	mov    %eax,%eax
    7f01bb3fd5b8:	8b 8d 60 f2 ff ff    	mov    -0xda0(%rbp),%ecx
    7f01bb3fd5be:	8b c9                	mov    %ecx,%ecx
    7f01bb3fd5c0:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb3fd5c4:	48 0b c1             	or     %rcx,%rax
    7f01bb3fd5c7:	49 89 87 58 16 00 00 	mov    %rax,0x1658(%r15)
    7f01bb3fd5ce:	8b 85 38 f2 ff ff    	mov    -0xdc8(%rbp),%eax
    7f01bb3fd5d4:	8b c0                	mov    %eax,%eax
    7f01bb3fd5d6:	8b 8d 08 f2 ff ff    	mov    -0xdf8(%rbp),%ecx
    7f01bb3fd5dc:	8b c9                	mov    %ecx,%ecx
    7f01bb3fd5de:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb3fd5e2:	48 0b c1             	or     %rcx,%rax
    7f01bb3fd5e5:	49 89 87 60 16 00 00 	mov    %rax,0x1660(%r15)
    7f01bb3fd5ec:	8b 85 e0 f1 ff ff    	mov    -0xe20(%rbp),%eax
    7f01bb3fd5f2:	8b c0                	mov    %eax,%eax
    7f01bb3fd5f4:	8b 8d b0 f1 ff ff    	mov    -0xe50(%rbp),%ecx
    7f01bb3fd5fa:	8b c9                	mov    %ecx,%ecx
    7f01bb3fd5fc:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb3fd600:	48 0b c1             	or     %rcx,%rax
    7f01bb3fd603:	49 89 87 68 16 00 00 	mov    %rax,0x1668(%r15)
    7f01bb3fd60a:	8b 85 90 f1 ff ff    	mov    -0xe70(%rbp),%eax
    7f01bb3fd610:	8b c0                	mov    %eax,%eax
    7f01bb3fd612:	49 89 87 70 16 00 00 	mov    %rax,0x1670(%r15)
    7f01bb3fd619:	8b 85 08 f8 ff ff    	mov    -0x7f8(%rbp),%eax
    7f01bb3fd61f:	85 c0                	test   %eax,%eax
    7f01bb3fd621:	0f 84 0f 00 00 00    	je     0x7f01bb3fd636
    7f01bb3fd627:	c7 85 88 f1 ff ff 02 	movl   $0x2,-0xe78(%rbp)
    7f01bb3fd62e:	00 00 00 
    7f01bb3fd631:	e9 09 00 00 00       	jmpq   0x7f01bb3fd63f
    7f01bb3fd636:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd639:	89 85 88 f1 ff ff    	mov    %eax,-0xe78(%rbp)
    7f01bb3fd63f:	8b 85 00 f6 ff ff    	mov    -0xa00(%rbp),%eax
    7f01bb3fd645:	23 85 e8 f4 ff ff    	and    -0xb18(%rbp),%eax
    7f01bb3fd64b:	85 c0                	test   %eax,%eax
    7f01bb3fd64d:	0f 84 0f 00 00 00    	je     0x7f01bb3fd662
    7f01bb3fd653:	c7 85 80 f1 ff ff 04 	movl   $0x4,-0xe80(%rbp)
    7f01bb3fd65a:	00 00 00 
    7f01bb3fd65d:	e9 09 00 00 00       	jmpq   0x7f01bb3fd66b
    7f01bb3fd662:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd665:	89 85 80 f1 ff ff    	mov    %eax,-0xe80(%rbp)
    7f01bb3fd66b:	8b 85 f0 f5 ff ff    	mov    -0xa10(%rbp),%eax
    7f01bb3fd671:	23 85 e8 f4 ff ff    	and    -0xb18(%rbp),%eax
    7f01bb3fd677:	89 85 78 f1 ff ff    	mov    %eax,-0xe88(%rbp)
    7f01bb3fd67d:	85 c0                	test   %eax,%eax
    7f01bb3fd67f:	0f 84 0f 00 00 00    	je     0x7f01bb3fd694
    7f01bb3fd685:	c7 85 70 f1 ff ff 08 	movl   $0x8,-0xe90(%rbp)
    7f01bb3fd68c:	00 00 00 
    7f01bb3fd68f:	e9 09 00 00 00       	jmpq   0x7f01bb3fd69d
    7f01bb3fd694:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd697:	89 85 70 f1 ff ff    	mov    %eax,-0xe90(%rbp)
    7f01bb3fd69d:	8b 85 b8 f7 ff ff    	mov    -0x848(%rbp),%eax
    7f01bb3fd6a3:	83 f8 0f             	cmp    $0xf,%eax
    7f01bb3fd6a6:	0f 95 c0             	setne  %al
    7f01bb3fd6a9:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fd6ac:	89 85 68 f1 ff ff    	mov    %eax,-0xe98(%rbp)
    7f01bb3fd6b2:	85 c0                	test   %eax,%eax
    7f01bb3fd6b4:	0f 84 0f 00 00 00    	je     0x7f01bb3fd6c9
    7f01bb3fd6ba:	c7 85 60 f1 ff ff 40 	movl   $0x40,-0xea0(%rbp)
    7f01bb3fd6c1:	00 00 00 
    7f01bb3fd6c4:	e9 0a 00 00 00       	jmpq   0x7f01bb3fd6d3
    7f01bb3fd6c9:	c7 85 60 f1 ff ff 10 	movl   $0x10,-0xea0(%rbp)
    7f01bb3fd6d0:	00 00 00 
    7f01bb3fd6d3:	8b 85 98 f7 ff ff    	mov    -0x868(%rbp),%eax
    7f01bb3fd6d9:	85 c0                	test   %eax,%eax
    7f01bb3fd6db:	0f 84 11 00 00 00    	je     0x7f01bb3fd6f2
    7f01bb3fd6e1:	8b 85 60 f1 ff ff    	mov    -0xea0(%rbp),%eax
    7f01bb3fd6e7:	89 85 58 f1 ff ff    	mov    %eax,-0xea8(%rbp)
    7f01bb3fd6ed:	e9 09 00 00 00       	jmpq   0x7f01bb3fd6fb
    7f01bb3fd6f2:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd6f5:	89 85 58 f1 ff ff    	mov    %eax,-0xea8(%rbp)
    7f01bb3fd6fb:	8b 85 78 f1 ff ff    	mov    -0xe88(%rbp),%eax
    7f01bb3fd701:	85 c0                	test   %eax,%eax
    7f01bb3fd703:	0f 84 0f 00 00 00    	je     0x7f01bb3fd718
    7f01bb3fd709:	c7 85 50 f1 ff ff 20 	movl   $0x20,-0xeb0(%rbp)
    7f01bb3fd710:	00 00 00 
    7f01bb3fd713:	e9 09 00 00 00       	jmpq   0x7f01bb3fd721
    7f01bb3fd718:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd71b:	89 85 50 f1 ff ff    	mov    %eax,-0xeb0(%rbp)
    7f01bb3fd721:	8b 85 48 fa ff ff    	mov    -0x5b8(%rbp),%eax
    7f01bb3fd727:	85 c0                	test   %eax,%eax
    7f01bb3fd729:	0f 84 0f 00 00 00    	je     0x7f01bb3fd73e
    7f01bb3fd72f:	c7 85 48 f1 ff ff 80 	movl   $0x80,-0xeb8(%rbp)
    7f01bb3fd736:	00 00 00 
    7f01bb3fd739:	e9 09 00 00 00       	jmpq   0x7f01bb3fd747
    7f01bb3fd73e:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd741:	89 85 48 f1 ff ff    	mov    %eax,-0xeb8(%rbp)
    7f01bb3fd747:	8b 85 60 f6 ff ff    	mov    -0x9a0(%rbp),%eax
    7f01bb3fd74d:	83 e0 0f             	and    $0xf,%eax
    7f01bb3fd750:	c1 e0 05             	shl    $0x5,%eax
    7f01bb3fd753:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fd758:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fd75b:	48 81 c1 e8 45 00 00 	add    $0x45e8,%rcx
    7f01bb3fd762:	49 8b d7             	mov    %r15,%rdx
    7f01bb3fd765:	48 81 c2 78 16 00 00 	add    $0x1678,%rdx
    7f01bb3fd76c:	44 8b c0             	mov    %eax,%r8d
    7f01bb3fd76f:	48 89 8d 40 f1 ff ff 	mov    %rcx,-0xec0(%rbp)
    7f01bb3fd776:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fd77b:	48 89 95 38 f1 ff ff 	mov    %rdx,-0xec8(%rbp)
    7f01bb3fd782:	48 8b 95 40 f1 ff ff 	mov    -0xec0(%rbp),%rdx
    7f01bb3fd789:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fd78e:	48 8b bd 38 f1 ff ff 	mov    -0xec8(%rbp),%rdi
    7f01bb3fd795:	89 85 30 f1 ff ff    	mov    %eax,-0xed0(%rbp)
    7f01bb3fd79b:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fd7a0:	e8 95 3d 8d ff       	callq  0x7f01bacd153a
    7f01bb3fd7a5:	41 8b 87 78 16 00 00 	mov    0x1678(%r15),%eax
    7f01bb3fd7ac:	8b 8d 50 ff ff ff    	mov    -0xb0(%rbp),%ecx
    7f01bb3fd7b2:	83 e1 1f             	and    $0x1f,%ecx
    7f01bb3fd7b5:	ba 01 00 00 00       	mov    $0x1,%edx
    7f01bb3fd7ba:	d3 e2                	shl    %cl,%edx
    7f01bb3fd7bc:	89 95 28 f1 ff ff    	mov    %edx,-0xed8(%rbp)
    7f01bb3fd7c2:	23 c2                	and    %edx,%eax
    7f01bb3fd7c4:	85 c0                	test   %eax,%eax
    7f01bb3fd7c6:	0f 95 c0             	setne  %al
    7f01bb3fd7c9:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fd7cc:	85 c0                	test   %eax,%eax
    7f01bb3fd7ce:	0f 84 0f 00 00 00    	je     0x7f01bb3fd7e3
    7f01bb3fd7d4:	c7 85 20 f1 ff ff 00 	movl   $0x100,-0xee0(%rbp)
    7f01bb3fd7db:	01 00 00 
    7f01bb3fd7de:	e9 0a 00 00 00       	jmpq   0x7f01bb3fd7ed
    7f01bb3fd7e3:	c7 85 20 f1 ff ff 00 	movl   $0x80000,-0xee0(%rbp)
    7f01bb3fd7ea:	00 08 00 
    7f01bb3fd7ed:	8b 85 50 f6 ff ff    	mov    -0x9b0(%rbp),%eax
    7f01bb3fd7f3:	85 c0                	test   %eax,%eax
    7f01bb3fd7f5:	0f 84 11 00 00 00    	je     0x7f01bb3fd80c
    7f01bb3fd7fb:	8b 85 20 f1 ff ff    	mov    -0xee0(%rbp),%eax
    7f01bb3fd801:	89 85 18 f1 ff ff    	mov    %eax,-0xee8(%rbp)
    7f01bb3fd807:	e9 0a 00 00 00       	jmpq   0x7f01bb3fd816
    7f01bb3fd80c:	c7 85 18 f1 ff ff 00 	movl   $0x200,-0xee8(%rbp)
    7f01bb3fd813:	02 00 00 
    7f01bb3fd816:	8b 85 30 f6 ff ff    	mov    -0x9d0(%rbp),%eax
    7f01bb3fd81c:	85 c0                	test   %eax,%eax
    7f01bb3fd81e:	0f 84 0f 00 00 00    	je     0x7f01bb3fd833
    7f01bb3fd824:	c7 85 10 f1 ff ff 00 	movl   $0x1000,-0xef0(%rbp)
    7f01bb3fd82b:	10 00 00 
    7f01bb3fd82e:	e9 0a 00 00 00       	jmpq   0x7f01bb3fd83d
    7f01bb3fd833:	c7 85 10 f1 ff ff 00 	movl   $0x800,-0xef0(%rbp)
    7f01bb3fd83a:	08 00 00 
    7f01bb3fd83d:	8b 85 e0 f5 ff ff    	mov    -0xa20(%rbp),%eax
    7f01bb3fd843:	23 85 e8 f4 ff ff    	and    -0xb18(%rbp),%eax
    7f01bb3fd849:	85 c0                	test   %eax,%eax
    7f01bb3fd84b:	0f 84 0f 00 00 00    	je     0x7f01bb3fd860
    7f01bb3fd851:	c7 85 08 f1 ff ff 00 	movl   $0x400,-0xef8(%rbp)
    7f01bb3fd858:	04 00 00 
    7f01bb3fd85b:	e9 09 00 00 00       	jmpq   0x7f01bb3fd869
    7f01bb3fd860:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd863:	89 85 08 f1 ff ff    	mov    %eax,-0xef8(%rbp)
    7f01bb3fd869:	49 8b c7             	mov    %r15,%rax
    7f01bb3fd86c:	48 05 50 44 00 00    	add    $0x4450,%rax
    7f01bb3fd872:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fd875:	48 81 c1 b8 16 00 00 	add    $0x16b8,%rcx
    7f01bb3fd87c:	44 8b 85 30 f1 ff ff 	mov    -0xed0(%rbp),%r8d
    7f01bb3fd883:	48 89 8d 00 f1 ff ff 	mov    %rcx,-0xf00(%rbp)
    7f01bb3fd88a:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fd88f:	48 8b d0             	mov    %rax,%rdx
    7f01bb3fd892:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fd897:	48 8b bd 00 f1 ff ff 	mov    -0xf00(%rbp),%rdi
    7f01bb3fd89e:	48 89 85 f8 f0 ff ff 	mov    %rax,-0xf08(%rbp)
    7f01bb3fd8a5:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fd8aa:	e8 8b 3c 8d ff       	callq  0x7f01bacd153a
    7f01bb3fd8af:	41 8b 87 b8 16 00 00 	mov    0x16b8(%r15),%eax
    7f01bb3fd8b6:	23 85 28 f1 ff ff    	and    -0xed8(%rbp),%eax
    7f01bb3fd8bc:	85 c0                	test   %eax,%eax
    7f01bb3fd8be:	0f 95 c0             	setne  %al
    7f01bb3fd8c1:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fd8c4:	85 c0                	test   %eax,%eax
    7f01bb3fd8c6:	0f 84 0f 00 00 00    	je     0x7f01bb3fd8db
    7f01bb3fd8cc:	c7 85 f0 f0 ff ff 00 	movl   $0x100,-0xf10(%rbp)
    7f01bb3fd8d3:	01 00 00 
    7f01bb3fd8d6:	e9 0a 00 00 00       	jmpq   0x7f01bb3fd8e5
    7f01bb3fd8db:	c7 85 f0 f0 ff ff 00 	movl   $0x80000,-0xf10(%rbp)
    7f01bb3fd8e2:	00 08 00 
    7f01bb3fd8e5:	8b 85 68 f8 ff ff    	mov    -0x798(%rbp),%eax
    7f01bb3fd8eb:	85 c0                	test   %eax,%eax
    7f01bb3fd8ed:	0f 84 11 00 00 00    	je     0x7f01bb3fd904
    7f01bb3fd8f3:	8b 85 f0 f0 ff ff    	mov    -0xf10(%rbp),%eax
    7f01bb3fd8f9:	89 85 e8 f0 ff ff    	mov    %eax,-0xf18(%rbp)
    7f01bb3fd8ff:	e9 09 00 00 00       	jmpq   0x7f01bb3fd90d
    7f01bb3fd904:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd907:	89 85 e8 f0 ff ff    	mov    %eax,-0xf18(%rbp)
    7f01bb3fd90d:	8b 85 d0 f5 ff ff    	mov    -0xa30(%rbp),%eax
    7f01bb3fd913:	23 85 e8 f4 ff ff    	and    -0xb18(%rbp),%eax
    7f01bb3fd919:	85 c0                	test   %eax,%eax
    7f01bb3fd91b:	0f 84 0f 00 00 00    	je     0x7f01bb3fd930
    7f01bb3fd921:	c7 85 e0 f0 ff ff 00 	movl   $0x1000,-0xf20(%rbp)
    7f01bb3fd928:	10 00 00 
    7f01bb3fd92b:	e9 09 00 00 00       	jmpq   0x7f01bb3fd939
    7f01bb3fd930:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd933:	89 85 e0 f0 ff ff    	mov    %eax,-0xf20(%rbp)
    7f01bb3fd939:	8b 85 c0 f5 ff ff    	mov    -0xa40(%rbp),%eax
    7f01bb3fd93f:	23 85 e8 f4 ff ff    	and    -0xb18(%rbp),%eax
    7f01bb3fd945:	85 c0                	test   %eax,%eax
    7f01bb3fd947:	0f 84 0f 00 00 00    	je     0x7f01bb3fd95c
    7f01bb3fd94d:	c7 85 d8 f0 ff ff 00 	movl   $0x8000,-0xf28(%rbp)
    7f01bb3fd954:	80 00 00 
    7f01bb3fd957:	e9 09 00 00 00       	jmpq   0x7f01bb3fd965
    7f01bb3fd95c:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd95f:	89 85 d8 f0 ff ff    	mov    %eax,-0xf28(%rbp)
    7f01bb3fd965:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
    7f01bb3fd96b:	3b 85 10 ff ff ff    	cmp    -0xf0(%rbp),%eax
    7f01bb3fd971:	0f 95 c0             	setne  %al
    7f01bb3fd974:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fd977:	85 c0                	test   %eax,%eax
    7f01bb3fd979:	0f 84 0f 00 00 00    	je     0x7f01bb3fd98e
    7f01bb3fd97f:	c7 85 d0 f0 ff ff 00 	movl   $0x4000,-0xf30(%rbp)
    7f01bb3fd986:	40 00 00 
    7f01bb3fd989:	e9 0a 00 00 00       	jmpq   0x7f01bb3fd998
    7f01bb3fd98e:	c7 85 d0 f0 ff ff 00 	movl   $0x10000,-0xf30(%rbp)
    7f01bb3fd995:	00 01 00 
    7f01bb3fd998:	8b 85 d8 f4 ff ff    	mov    -0xb28(%rbp),%eax
    7f01bb3fd99e:	85 c0                	test   %eax,%eax
    7f01bb3fd9a0:	0f 84 11 00 00 00    	je     0x7f01bb3fd9b7
    7f01bb3fd9a6:	8b 85 d0 f0 ff ff    	mov    -0xf30(%rbp),%eax
    7f01bb3fd9ac:	89 85 c8 f0 ff ff    	mov    %eax,-0xf38(%rbp)
    7f01bb3fd9b2:	e9 09 00 00 00       	jmpq   0x7f01bb3fd9c0
    7f01bb3fd9b7:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd9ba:	89 85 c8 f0 ff ff    	mov    %eax,-0xf38(%rbp)
    7f01bb3fd9c0:	8b 85 88 f4 ff ff    	mov    -0xb78(%rbp),%eax
    7f01bb3fd9c6:	85 c0                	test   %eax,%eax
    7f01bb3fd9c8:	0f 84 0f 00 00 00    	je     0x7f01bb3fd9dd
    7f01bb3fd9ce:	c7 85 c0 f0 ff ff 00 	movl   $0x20000,-0xf40(%rbp)
    7f01bb3fd9d5:	00 02 00 
    7f01bb3fd9d8:	e9 09 00 00 00       	jmpq   0x7f01bb3fd9e6
    7f01bb3fd9dd:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fd9e0:	89 85 c0 f0 ff ff    	mov    %eax,-0xf40(%rbp)
    7f01bb3fd9e6:	8b 8d 48 ff ff ff    	mov    -0xb8(%rbp),%ecx
    7f01bb3fd9ec:	3b 8d 38 ff ff ff    	cmp    -0xc8(%rbp),%ecx
    7f01bb3fd9f2:	0f 95 c0             	setne  %al
    7f01bb3fd9f5:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fd9f8:	89 85 b8 f0 ff ff    	mov    %eax,-0xf48(%rbp)
    7f01bb3fd9fe:	83 e1 0f             	and    $0xf,%ecx
    7f01bb3fda01:	89 8d b0 f0 ff ff    	mov    %ecx,-0xf50(%rbp)
    7f01bb3fda07:	83 f9 0f             	cmp    $0xf,%ecx
    7f01bb3fda0a:	0f 94 c0             	sete   %al
    7f01bb3fda0d:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fda10:	89 85 a8 f0 ff ff    	mov    %eax,-0xf58(%rbp)
    7f01bb3fda16:	85 c0                	test   %eax,%eax
    7f01bb3fda18:	0f 84 0f 00 00 00    	je     0x7f01bb3fda2d
    7f01bb3fda1e:	c7 85 a0 f0 ff ff 00 	movl   $0x40000,-0xf60(%rbp)
    7f01bb3fda25:	00 04 00 
    7f01bb3fda28:	e9 09 00 00 00       	jmpq   0x7f01bb3fda36
    7f01bb3fda2d:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fda30:	89 85 a0 f0 ff ff    	mov    %eax,-0xf60(%rbp)
    7f01bb3fda36:	8b 85 b8 f0 ff ff    	mov    -0xf48(%rbp),%eax
    7f01bb3fda3c:	85 c0                	test   %eax,%eax
    7f01bb3fda3e:	0f 84 11 00 00 00    	je     0x7f01bb3fda55
    7f01bb3fda44:	8b 85 a0 f0 ff ff    	mov    -0xf60(%rbp),%eax
    7f01bb3fda4a:	89 85 98 f0 ff ff    	mov    %eax,-0xf68(%rbp)
    7f01bb3fda50:	e9 0a 00 00 00       	jmpq   0x7f01bb3fda5f
    7f01bb3fda55:	c7 85 98 f0 ff ff 00 	movl   $0x80000,-0xf68(%rbp)
    7f01bb3fda5c:	00 08 00 
    7f01bb3fda5f:	8b 85 d8 f6 ff ff    	mov    -0x928(%rbp),%eax
    7f01bb3fda65:	85 c0                	test   %eax,%eax
    7f01bb3fda67:	0f 84 11 00 00 00    	je     0x7f01bb3fda7e
    7f01bb3fda6d:	8b 85 98 f0 ff ff    	mov    -0xf68(%rbp),%eax
    7f01bb3fda73:	89 85 90 f0 ff ff    	mov    %eax,-0xf70(%rbp)
    7f01bb3fda79:	e9 09 00 00 00       	jmpq   0x7f01bb3fda87
    7f01bb3fda7e:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fda81:	89 85 90 f0 ff ff    	mov    %eax,-0xf70(%rbp)
    7f01bb3fda87:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    7f01bb3fda8d:	3b 85 58 ff ff ff    	cmp    -0xa8(%rbp),%eax
    7f01bb3fda93:	0f 95 c0             	setne  %al
    7f01bb3fda96:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fda99:	89 85 88 f0 ff ff    	mov    %eax,-0xf78(%rbp)
    7f01bb3fda9f:	8b 85 68 f1 ff ff    	mov    -0xe98(%rbp),%eax
    7f01bb3fdaa5:	85 c0                	test   %eax,%eax
    7f01bb3fdaa7:	0f 84 0f 00 00 00    	je     0x7f01bb3fdabc
    7f01bb3fdaad:	c7 85 80 f0 ff ff 00 	movl   $0x100000,-0xf80(%rbp)
    7f01bb3fdab4:	00 10 00 
    7f01bb3fdab7:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdac6
    7f01bb3fdabc:	c7 85 80 f0 ff ff 02 	movl   $0x2,-0xf80(%rbp)
    7f01bb3fdac3:	00 00 00 
    7f01bb3fdac6:	8b 85 88 f0 ff ff    	mov    -0xf78(%rbp),%eax
    7f01bb3fdacc:	85 c0                	test   %eax,%eax
    7f01bb3fdace:	0f 84 11 00 00 00    	je     0x7f01bb3fdae5
    7f01bb3fdad4:	8b 85 80 f0 ff ff    	mov    -0xf80(%rbp),%eax
    7f01bb3fdada:	89 85 78 f0 ff ff    	mov    %eax,-0xf88(%rbp)
    7f01bb3fdae0:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdaef
    7f01bb3fdae5:	c7 85 78 f0 ff ff 00 	movl   $0x200000,-0xf88(%rbp)
    7f01bb3fdaec:	00 20 00 
    7f01bb3fdaef:	8b 85 d8 f6 ff ff    	mov    -0x928(%rbp),%eax
    7f01bb3fdaf5:	85 c0                	test   %eax,%eax
    7f01bb3fdaf7:	0f 84 0f 00 00 00    	je     0x7f01bb3fdb0c
    7f01bb3fdafd:	c7 85 70 f0 ff ff 01 	movl   $0x1,-0xf90(%rbp)
    7f01bb3fdb04:	00 00 00 
    7f01bb3fdb07:	e9 09 00 00 00       	jmpq   0x7f01bb3fdb15
    7f01bb3fdb0c:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fdb0f:	89 85 70 f0 ff ff    	mov    %eax,-0xf90(%rbp)
    7f01bb3fdb15:	41 83 fd 01          	cmp    $0x1,%r13d
    7f01bb3fdb19:	0f 85 11 00 00 00    	jne    0x7f01bb3fdb30
    7f01bb3fdb1f:	8b 85 88 f1 ff ff    	mov    -0xe78(%rbp),%eax
    7f01bb3fdb25:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdb2b:	e9 81 02 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdb30:	41 83 fd 02          	cmp    $0x2,%r13d
    7f01bb3fdb34:	0f 85 11 00 00 00    	jne    0x7f01bb3fdb4b
    7f01bb3fdb3a:	8b 85 80 f1 ff ff    	mov    -0xe80(%rbp),%eax
    7f01bb3fdb40:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdb46:	e9 66 02 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdb4b:	41 83 fd 04          	cmp    $0x4,%r13d
    7f01bb3fdb4f:	0f 85 11 00 00 00    	jne    0x7f01bb3fdb66
    7f01bb3fdb55:	8b 85 70 f1 ff ff    	mov    -0xe90(%rbp),%eax
    7f01bb3fdb5b:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdb61:	e9 4b 02 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdb66:	41 83 fd 08          	cmp    $0x8,%r13d
    7f01bb3fdb6a:	0f 85 11 00 00 00    	jne    0x7f01bb3fdb81
    7f01bb3fdb70:	8b 85 58 f1 ff ff    	mov    -0xea8(%rbp),%eax
    7f01bb3fdb76:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdb7c:	e9 30 02 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdb81:	41 83 fd 40          	cmp    $0x40,%r13d
    7f01bb3fdb85:	0f 85 0f 00 00 00    	jne    0x7f01bb3fdb9a
    7f01bb3fdb8b:	c7 85 68 f0 ff ff 80 	movl   $0x80,-0xf98(%rbp)
    7f01bb3fdb92:	00 00 00 
    7f01bb3fdb95:	e9 17 02 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdb9a:	41 83 fd 10          	cmp    $0x10,%r13d
    7f01bb3fdb9e:	0f 85 11 00 00 00    	jne    0x7f01bb3fdbb5
    7f01bb3fdba4:	8b 85 50 f1 ff ff    	mov    -0xeb0(%rbp),%eax
    7f01bb3fdbaa:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdbb0:	e9 fc 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdbb5:	41 83 fd 20          	cmp    $0x20,%r13d
    7f01bb3fdbb9:	0f 85 11 00 00 00    	jne    0x7f01bb3fdbd0
    7f01bb3fdbbf:	8b 85 48 f1 ff ff    	mov    -0xeb8(%rbp),%eax
    7f01bb3fdbc5:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdbcb:	e9 e1 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdbd0:	41 81 fd 80 00 00 00 	cmp    $0x80,%r13d
    7f01bb3fdbd7:	0f 85 11 00 00 00    	jne    0x7f01bb3fdbee
    7f01bb3fdbdd:	8b 85 18 f1 ff ff    	mov    -0xee8(%rbp),%eax
    7f01bb3fdbe3:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdbe9:	e9 c3 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdbee:	41 81 fd 00 01 00 00 	cmp    $0x100,%r13d
    7f01bb3fdbf5:	0f 85 11 00 00 00    	jne    0x7f01bb3fdc0c
    7f01bb3fdbfb:	8b 85 10 f1 ff ff    	mov    -0xef0(%rbp),%eax
    7f01bb3fdc01:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdc07:	e9 a5 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdc0c:	41 81 fd 00 02 00 00 	cmp    $0x200,%r13d
    7f01bb3fdc13:	0f 85 11 00 00 00    	jne    0x7f01bb3fdc2a
    7f01bb3fdc19:	8b 85 08 f1 ff ff    	mov    -0xef8(%rbp),%eax
    7f01bb3fdc1f:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdc25:	e9 87 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdc2a:	41 81 fd 00 04 00 00 	cmp    $0x400,%r13d
    7f01bb3fdc31:	0f 85 11 00 00 00    	jne    0x7f01bb3fdc48
    7f01bb3fdc37:	8b 85 e8 f0 ff ff    	mov    -0xf18(%rbp),%eax
    7f01bb3fdc3d:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdc43:	e9 69 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdc48:	41 81 fd 00 08 00 00 	cmp    $0x800,%r13d
    7f01bb3fdc4f:	0f 85 11 00 00 00    	jne    0x7f01bb3fdc66
    7f01bb3fdc55:	8b 85 e0 f0 ff ff    	mov    -0xf20(%rbp),%eax
    7f01bb3fdc5b:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdc61:	e9 4b 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdc66:	41 81 fd 00 10 00 00 	cmp    $0x1000,%r13d
    7f01bb3fdc6d:	0f 85 0f 00 00 00    	jne    0x7f01bb3fdc82
    7f01bb3fdc73:	c7 85 68 f0 ff ff 00 	movl   $0x2000,-0xf98(%rbp)
    7f01bb3fdc7a:	20 00 00 
    7f01bb3fdc7d:	e9 2f 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdc82:	41 81 fd 00 20 00 00 	cmp    $0x2000,%r13d
    7f01bb3fdc89:	0f 85 0f 00 00 00    	jne    0x7f01bb3fdc9e
    7f01bb3fdc8f:	c7 85 68 f0 ff ff 00 	movl   $0x4000,-0xf98(%rbp)
    7f01bb3fdc96:	40 00 00 
    7f01bb3fdc99:	e9 13 01 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdc9e:	41 81 fd 00 40 00 00 	cmp    $0x4000,%r13d
    7f01bb3fdca5:	0f 85 11 00 00 00    	jne    0x7f01bb3fdcbc
    7f01bb3fdcab:	8b 85 d8 f0 ff ff    	mov    -0xf28(%rbp),%eax
    7f01bb3fdcb1:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdcb7:	e9 f5 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdcbc:	41 81 fd 00 80 00 00 	cmp    $0x8000,%r13d
    7f01bb3fdcc3:	0f 85 11 00 00 00    	jne    0x7f01bb3fdcda
    7f01bb3fdcc9:	8b 85 c8 f0 ff ff    	mov    -0xf38(%rbp),%eax
    7f01bb3fdccf:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdcd5:	e9 d7 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdcda:	41 81 fd 00 00 01 00 	cmp    $0x10000,%r13d
    7f01bb3fdce1:	0f 85 11 00 00 00    	jne    0x7f01bb3fdcf8
    7f01bb3fdce7:	8b 85 c0 f0 ff ff    	mov    -0xf40(%rbp),%eax
    7f01bb3fdced:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdcf3:	e9 b9 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdcf8:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fdcff:	0f 85 11 00 00 00    	jne    0x7f01bb3fdd16
    7f01bb3fdd05:	8b 85 90 f0 ff ff    	mov    -0xf70(%rbp),%eax
    7f01bb3fdd0b:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdd11:	e9 9b 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdd16:	41 81 fd 00 00 04 00 	cmp    $0x40000,%r13d
    7f01bb3fdd1d:	0f 85 0f 00 00 00    	jne    0x7f01bb3fdd32
    7f01bb3fdd23:	c7 85 68 f0 ff ff 00 	movl   $0x20000,-0xf98(%rbp)
    7f01bb3fdd2a:	00 02 00 
    7f01bb3fdd2d:	e9 7f 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdd32:	41 81 fd 00 00 08 00 	cmp    $0x80000,%r13d
    7f01bb3fdd39:	0f 85 11 00 00 00    	jne    0x7f01bb3fdd50
    7f01bb3fdd3f:	8b 85 78 f0 ff ff    	mov    -0xf88(%rbp),%eax
    7f01bb3fdd45:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdd4b:	e9 61 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdd50:	41 81 fd 00 00 10 00 	cmp    $0x100000,%r13d
    7f01bb3fdd57:	0f 85 11 00 00 00    	jne    0x7f01bb3fdd6e
    7f01bb3fdd5d:	8b 85 60 f1 ff ff    	mov    -0xea0(%rbp),%eax
    7f01bb3fdd63:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdd69:	e9 43 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdd6e:	41 81 fd 00 00 20 00 	cmp    $0x200000,%r13d
    7f01bb3fdd75:	0f 85 0f 00 00 00    	jne    0x7f01bb3fdd8a
    7f01bb3fdd7b:	c7 85 68 f0 ff ff 00 	movl   $0x400000,-0xf98(%rbp)
    7f01bb3fdd82:	00 40 00 
    7f01bb3fdd85:	e9 27 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdd8a:	41 81 fd 00 00 40 00 	cmp    $0x400000,%r13d
    7f01bb3fdd91:	0f 85 11 00 00 00    	jne    0x7f01bb3fdda8
    7f01bb3fdd97:	8b 85 70 f0 ff ff    	mov    -0xf90(%rbp),%eax
    7f01bb3fdd9d:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fdda3:	e9 09 00 00 00       	jmpq   0x7f01bb3fddb1
    7f01bb3fdda8:	41 8b c5             	mov    %r13d,%eax
    7f01bb3fddab:	89 85 68 f0 ff ff    	mov    %eax,-0xf98(%rbp)
    7f01bb3fddb1:	8b 85 58 f3 ff ff    	mov    -0xca8(%rbp),%eax
    7f01bb3fddb7:	85 c0                	test   %eax,%eax
    7f01bb3fddb9:	0f 84 0f 00 00 00    	je     0x7f01bb3fddce
    7f01bb3fddbf:	c7 85 60 f0 ff ff 01 	movl   $0x1,-0xfa0(%rbp)
    7f01bb3fddc6:	00 00 00 
    7f01bb3fddc9:	e9 0a 00 00 00       	jmpq   0x7f01bb3fddd8
    7f01bb3fddce:	c7 85 60 f0 ff ff 00 	movl   $0x0,-0xfa0(%rbp)
    7f01bb3fddd5:	00 00 00 
    7f01bb3fddd8:	8b 85 98 f7 ff ff    	mov    -0x868(%rbp),%eax
    7f01bb3fddde:	85 c0                	test   %eax,%eax
    7f01bb3fdde0:	0f 84 0f 00 00 00    	je     0x7f01bb3fddf5
    7f01bb3fdde6:	c7 85 58 f0 ff ff 01 	movl   $0x1,-0xfa8(%rbp)
    7f01bb3fdded:	00 00 00 
    7f01bb3fddf0:	e9 0a 00 00 00       	jmpq   0x7f01bb3fddff
    7f01bb3fddf5:	c7 85 58 f0 ff ff 00 	movl   $0x0,-0xfa8(%rbp)
    7f01bb3fddfc:	00 00 00 
    7f01bb3fddff:	8b 85 48 fa ff ff    	mov    -0x5b8(%rbp),%eax
    7f01bb3fde05:	85 c0                	test   %eax,%eax
    7f01bb3fde07:	0f 84 0f 00 00 00    	je     0x7f01bb3fde1c
    7f01bb3fde0d:	c7 85 50 f0 ff ff 01 	movl   $0x1,-0xfb0(%rbp)
    7f01bb3fde14:	00 00 00 
    7f01bb3fde17:	e9 0a 00 00 00       	jmpq   0x7f01bb3fde26
    7f01bb3fde1c:	c7 85 50 f0 ff ff 00 	movl   $0x0,-0xfb0(%rbp)
    7f01bb3fde23:	00 00 00 
    7f01bb3fde26:	41 83 fd 08          	cmp    $0x8,%r13d
    7f01bb3fde2a:	0f 85 11 00 00 00    	jne    0x7f01bb3fde41
    7f01bb3fde30:	8b 85 58 f0 ff ff    	mov    -0xfa8(%rbp),%eax
    7f01bb3fde36:	89 85 48 f0 ff ff    	mov    %eax,-0xfb8(%rbp)
    7f01bb3fde3c:	e9 25 00 00 00       	jmpq   0x7f01bb3fde66
    7f01bb3fde41:	41 83 fd 20          	cmp    $0x20,%r13d
    7f01bb3fde45:	0f 85 11 00 00 00    	jne    0x7f01bb3fde5c
    7f01bb3fde4b:	8b 85 50 f0 ff ff    	mov    -0xfb0(%rbp),%eax
    7f01bb3fde51:	89 85 48 f0 ff ff    	mov    %eax,-0xfb8(%rbp)
    7f01bb3fde57:	e9 0a 00 00 00       	jmpq   0x7f01bb3fde66
    7f01bb3fde5c:	c7 85 48 f0 ff ff 00 	movl   $0x0,-0xfb8(%rbp)
    7f01bb3fde63:	00 00 00 
    7f01bb3fde66:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fde6d:	0f 94 c0             	sete   %al
    7f01bb3fde70:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fde73:	23 85 d8 f6 ff ff    	and    -0x928(%rbp),%eax
    7f01bb3fde79:	89 85 40 f0 ff ff    	mov    %eax,-0xfc0(%rbp)
    7f01bb3fde7f:	8b 85 a8 f0 ff ff    	mov    -0xf58(%rbp),%eax
    7f01bb3fde85:	85 c0                	test   %eax,%eax
    7f01bb3fde87:	0f 84 0f 00 00 00    	je     0x7f01bb3fde9c
    7f01bb3fde8d:	c7 85 38 f0 ff ff 01 	movl   $0x1,-0xfc8(%rbp)
    7f01bb3fde94:	00 00 00 
    7f01bb3fde97:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdea6
    7f01bb3fde9c:	c7 85 38 f0 ff ff 00 	movl   $0x0,-0xfc8(%rbp)
    7f01bb3fdea3:	00 00 00 
    7f01bb3fdea6:	8b 85 b8 f0 ff ff    	mov    -0xf48(%rbp),%eax
    7f01bb3fdeac:	85 c0                	test   %eax,%eax
    7f01bb3fdeae:	0f 84 11 00 00 00    	je     0x7f01bb3fdec5
    7f01bb3fdeb4:	8b 85 38 f0 ff ff    	mov    -0xfc8(%rbp),%eax
    7f01bb3fdeba:	89 85 30 f0 ff ff    	mov    %eax,-0xfd0(%rbp)
    7f01bb3fdec0:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdecf
    7f01bb3fdec5:	c7 85 30 f0 ff ff 01 	movl   $0x1,-0xfd0(%rbp)
    7f01bb3fdecc:	00 00 00 
    7f01bb3fdecf:	8b 85 40 f0 ff ff    	mov    -0xfc0(%rbp),%eax
    7f01bb3fded5:	85 c0                	test   %eax,%eax
    7f01bb3fded7:	0f 84 11 00 00 00    	je     0x7f01bb3fdeee
    7f01bb3fdedd:	8b 85 30 f0 ff ff    	mov    -0xfd0(%rbp),%eax
    7f01bb3fdee3:	89 85 28 f0 ff ff    	mov    %eax,-0xfd8(%rbp)
    7f01bb3fdee9:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdef8
    7f01bb3fdeee:	c7 85 28 f0 ff ff 00 	movl   $0x0,-0xfd8(%rbp)
    7f01bb3fdef5:	00 00 00 
    7f01bb3fdef8:	8b 85 48 f3 ff ff    	mov    -0xcb8(%rbp),%eax
    7f01bb3fdefe:	85 c0                	test   %eax,%eax
    7f01bb3fdf00:	0f 84 0f 00 00 00    	je     0x7f01bb3fdf15
    7f01bb3fdf06:	c7 85 20 f0 ff ff 01 	movl   $0x1,-0xfe0(%rbp)
    7f01bb3fdf0d:	00 00 00 
    7f01bb3fdf10:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdf1f
    7f01bb3fdf15:	c7 85 20 f0 ff ff 00 	movl   $0x0,-0xfe0(%rbp)
    7f01bb3fdf1c:	00 00 00 
    7f01bb3fdf1f:	8b 85 50 f3 ff ff    	mov    -0xcb0(%rbp),%eax
    7f01bb3fdf25:	85 c0                	test   %eax,%eax
    7f01bb3fdf27:	0f 84 0f 00 00 00    	je     0x7f01bb3fdf3c
    7f01bb3fdf2d:	c7 85 18 f0 ff ff 01 	movl   $0x1,-0xfe8(%rbp)
    7f01bb3fdf34:	00 00 00 
    7f01bb3fdf37:	e9 0a 00 00 00       	jmpq   0x7f01bb3fdf46
    7f01bb3fdf3c:	c7 85 18 f0 ff ff 00 	movl   $0x0,-0xfe8(%rbp)
    7f01bb3fdf43:	00 00 00 
    7f01bb3fdf46:	8b 45 b0             	mov    -0x50(%rbp),%eax
    7f01bb3fdf49:	85 c0                	test   %eax,%eax
    7f01bb3fdf4b:	0f 84 36 00 00 00    	je     0x7f01bb3fdf87
    7f01bb3fdf51:	49 8b c7             	mov    %r15,%rax
    7f01bb3fdf54:	48 05 f8 16 00 00    	add    $0x16f8,%rax
    7f01bb3fdf5a:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fdf5d:	48 81 c1 c8 42 00 00 	add    $0x42c8,%rcx
    7f01bb3fdf64:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fdf67:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fdf6a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fdf6e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fdf72:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fdf76:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fdf7a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fdf7e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fdf82:	e9 31 00 00 00       	jmpq   0x7f01bb3fdfb8
    7f01bb3fdf87:	49 8b c7             	mov    %r15,%rax
    7f01bb3fdf8a:	48 05 f8 16 00 00    	add    $0x16f8,%rax
    7f01bb3fdf90:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fdf93:	48 81 c1 08 43 00 00 	add    $0x4308,%rcx
    7f01bb3fdf9a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fdf9d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fdfa0:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fdfa4:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fdfa8:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fdfac:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fdfb0:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fdfb4:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fdfb8:	8b 85 b0 f0 ff ff    	mov    -0xf50(%rbp),%eax
    7f01bb3fdfbe:	c1 e0 05             	shl    $0x5,%eax
    7f01bb3fdfc1:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fdfc6:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fdfc9:	48 81 c1 f8 16 00 00 	add    $0x16f8,%rcx
    7f01bb3fdfd0:	49 8b d7             	mov    %r15,%rdx
    7f01bb3fdfd3:	48 81 c2 38 17 00 00 	add    $0x1738,%rdx
    7f01bb3fdfda:	44 8b c0             	mov    %eax,%r8d
    7f01bb3fdfdd:	48 89 8d 10 f0 ff ff 	mov    %rcx,-0xff0(%rbp)
    7f01bb3fdfe4:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fdfe9:	48 89 95 08 f0 ff ff 	mov    %rdx,-0xff8(%rbp)
    7f01bb3fdff0:	48 8b 95 10 f0 ff ff 	mov    -0xff0(%rbp),%rdx
    7f01bb3fdff7:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fdffc:	48 8b bd 08 f0 ff ff 	mov    -0xff8(%rbp),%rdi
    7f01bb3fe003:	89 85 00 f0 ff ff    	mov    %eax,-0x1000(%rbp)
    7f01bb3fe009:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fe00e:	e8 27 35 8d ff       	callq  0x7f01bacd153a
    7f01bb3fe013:	41 8b 87 37 17 00 00 	mov    0x1737(%r15),%eax
    7f01bb3fe01a:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fe01d:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fe022:	89 85 f8 ef ff ff    	mov    %eax,-0x1008(%rbp)
    7f01bb3fe028:	41 8b 87 d7 46 00 00 	mov    0x46d7(%r15),%eax
    7f01bb3fe02f:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3fe032:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3fe037:	89 85 f0 ef ff ff    	mov    %eax,-0x1010(%rbp)
    7f01bb3fe03d:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fe044:	0f 85 11 00 00 00    	jne    0x7f01bb3fe05b
    7f01bb3fe04a:	8b 85 f8 ef ff ff    	mov    -0x1008(%rbp),%eax
    7f01bb3fe050:	89 85 e8 ef ff ff    	mov    %eax,-0x1018(%rbp)
    7f01bb3fe056:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe067
    7f01bb3fe05b:	8b 85 f0 ef ff ff    	mov    -0x1010(%rbp),%eax
    7f01bb3fe061:	89 85 e8 ef ff ff    	mov    %eax,-0x1018(%rbp)
    7f01bb3fe067:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
    7f01bb3fe06d:	85 c0                	test   %eax,%eax
    7f01bb3fe06f:	0f 84 36 00 00 00    	je     0x7f01bb3fe0ab
    7f01bb3fe075:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe078:	48 05 78 17 00 00    	add    $0x1778,%rax
    7f01bb3fe07e:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe081:	48 81 c1 c8 42 00 00 	add    $0x42c8,%rcx
    7f01bb3fe088:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe08b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe08e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe092:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe096:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe09a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe09e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe0a2:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe0a6:	e9 31 00 00 00       	jmpq   0x7f01bb3fe0dc
    7f01bb3fe0ab:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe0ae:	48 05 78 17 00 00    	add    $0x1778,%rax
    7f01bb3fe0b4:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe0b7:	48 81 c1 80 43 00 00 	add    $0x4380,%rcx
    7f01bb3fe0be:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe0c1:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe0c4:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe0c8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe0cc:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe0d0:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe0d4:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe0d8:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe0dc:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe0df:	48 05 78 17 00 00    	add    $0x1778,%rax
    7f01bb3fe0e5:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe0e8:	48 81 c1 b8 17 00 00 	add    $0x17b8,%rcx
    7f01bb3fe0ef:	44 8b 85 00 f0 ff ff 	mov    -0x1000(%rbp),%r8d
    7f01bb3fe0f6:	48 89 8d e0 ef ff ff 	mov    %rcx,-0x1020(%rbp)
    7f01bb3fe0fd:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3fe102:	48 8b d0             	mov    %rax,%rdx
    7f01bb3fe105:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3fe10a:	48 8b bd e0 ef ff ff 	mov    -0x1020(%rbp),%rdi
    7f01bb3fe111:	48 89 85 d8 ef ff ff 	mov    %rax,-0x1028(%rbp)
    7f01bb3fe118:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3fe11d:	e8 18 34 8d ff       	callq  0x7f01bacd153a
    7f01bb3fe122:	41 8b 87 b8 17 00 00 	mov    0x17b8(%r15),%eax
    7f01bb3fe129:	89 85 d0 ef ff ff    	mov    %eax,-0x1030(%rbp)
    7f01bb3fe12f:	49 8b 87 d7 46 00 00 	mov    0x46d7(%r15),%rax
    7f01bb3fe136:	48 c1 e8 1c          	shr    $0x1c,%rax
    7f01bb3fe13a:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb3fe13f:	48 23 c1             	and    %rcx,%rax
    7f01bb3fe142:	89 85 c8 ef ff ff    	mov    %eax,-0x1038(%rbp)
    7f01bb3fe148:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fe14f:	0f 85 11 00 00 00    	jne    0x7f01bb3fe166
    7f01bb3fe155:	8b 85 d0 ef ff ff    	mov    -0x1030(%rbp),%eax
    7f01bb3fe15b:	89 85 c0 ef ff ff    	mov    %eax,-0x1040(%rbp)
    7f01bb3fe161:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe172
    7f01bb3fe166:	8b 85 c8 ef ff ff    	mov    -0x1038(%rbp),%eax
    7f01bb3fe16c:	89 85 c0 ef ff ff    	mov    %eax,-0x1040(%rbp)
    7f01bb3fe172:	49 8b 87 db 46 00 00 	mov    0x46db(%r15),%rax
    7f01bb3fe179:	48 c1 e8 1c          	shr    $0x1c,%rax
    7f01bb3fe17d:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb3fe182:	48 23 c1             	and    %rcx,%rax
    7f01bb3fe185:	89 85 b8 ef ff ff    	mov    %eax,-0x1048(%rbp)
    7f01bb3fe18b:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fe192:	0f 85 11 00 00 00    	jne    0x7f01bb3fe1a9
    7f01bb3fe198:	8b 85 00 ff ff ff    	mov    -0x100(%rbp),%eax
    7f01bb3fe19e:	89 85 b0 ef ff ff    	mov    %eax,-0x1050(%rbp)
    7f01bb3fe1a4:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe1b5
    7f01bb3fe1a9:	8b 85 b8 ef ff ff    	mov    -0x1048(%rbp),%eax
    7f01bb3fe1af:	89 85 b0 ef ff ff    	mov    %eax,-0x1050(%rbp)
    7f01bb3fe1b5:	49 0f b6 87 e2 46 00 	movzbq 0x46e2(%r15),%rax
    7f01bb3fe1bc:	00 
    7f01bb3fe1bd:	c1 e8 04             	shr    $0x4,%eax
    7f01bb3fe1c0:	83 e0 01             	and    $0x1,%eax
    7f01bb3fe1c3:	89 85 a8 ef ff ff    	mov    %eax,-0x1058(%rbp)
    7f01bb3fe1c9:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fe1d0:	0f 85 0f 00 00 00    	jne    0x7f01bb3fe1e5
    7f01bb3fe1d6:	c7 85 a0 ef ff ff 00 	movl   $0x0,-0x1060(%rbp)
    7f01bb3fe1dd:	00 00 00 
    7f01bb3fe1e0:	e9 28 00 00 00       	jmpq   0x7f01bb3fe20d
    7f01bb3fe1e5:	41 81 fd 00 00 40 00 	cmp    $0x400000,%r13d
    7f01bb3fe1ec:	0f 85 0f 00 00 00    	jne    0x7f01bb3fe201
    7f01bb3fe1f2:	c7 85 a0 ef ff ff 01 	movl   $0x1,-0x1060(%rbp)
    7f01bb3fe1f9:	00 00 00 
    7f01bb3fe1fc:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe20d
    7f01bb3fe201:	8b 85 a8 ef ff ff    	mov    -0x1058(%rbp),%eax
    7f01bb3fe207:	89 85 a0 ef ff ff    	mov    %eax,-0x1060(%rbp)
    7f01bb3fe20d:	8b 85 e8 ef ff ff    	mov    -0x1018(%rbp),%eax
    7f01bb3fe213:	8b c0                	mov    %eax,%eax
    7f01bb3fe215:	8b 8d c0 ef ff ff    	mov    -0x1040(%rbp),%ecx
    7f01bb3fe21b:	8b c9                	mov    %ecx,%ecx
    7f01bb3fe21d:	48 c1 e1 14          	shl    $0x14,%rcx
    7f01bb3fe221:	48 0b c1             	or     %rcx,%rax
    7f01bb3fe224:	8b 8d b0 ef ff ff    	mov    -0x1050(%rbp),%ecx
    7f01bb3fe22a:	8b c9                	mov    %ecx,%ecx
    7f01bb3fe22c:	48 8b d1             	mov    %rcx,%rdx
    7f01bb3fe22f:	48 c1 e2 34          	shl    $0x34,%rdx
    7f01bb3fe233:	48 0b c2             	or     %rdx,%rax
    7f01bb3fe236:	49 89 87 f8 17 00 00 	mov    %rax,0x17f8(%r15)
    7f01bb3fe23d:	48 c1 e9 0c          	shr    $0xc,%rcx
    7f01bb3fe241:	8b 85 a0 ef ff ff    	mov    -0x1060(%rbp),%eax
    7f01bb3fe247:	8b c0                	mov    %eax,%eax
    7f01bb3fe249:	48 c1 e0 14          	shl    $0x14,%rax
    7f01bb3fe24d:	48 0b c8             	or     %rax,%rcx
    7f01bb3fe250:	49 89 8f 00 18 00 00 	mov    %rcx,0x1800(%r15)
    7f01bb3fe257:	41 81 fd 00 00 02 00 	cmp    $0x20000,%r13d
    7f01bb3fe25e:	0f 85 0f 00 00 00    	jne    0x7f01bb3fe273
    7f01bb3fe264:	c7 85 98 ef ff ff 01 	movl   $0x1,-0x1068(%rbp)
    7f01bb3fe26b:	00 00 00 
    7f01bb3fe26e:	e9 26 00 00 00       	jmpq   0x7f01bb3fe299
    7f01bb3fe273:	41 81 fd 00 00 40 00 	cmp    $0x400000,%r13d
    7f01bb3fe27a:	0f 85 0f 00 00 00    	jne    0x7f01bb3fe28f
    7f01bb3fe280:	c7 85 98 ef ff ff 01 	movl   $0x1,-0x1068(%rbp)
    7f01bb3fe287:	00 00 00 
    7f01bb3fe28a:	e9 0a 00 00 00       	jmpq   0x7f01bb3fe299
    7f01bb3fe28f:	c7 85 98 ef ff ff 00 	movl   $0x0,-0x1068(%rbp)
    7f01bb3fe296:	00 00 00 
    7f01bb3fe299:	8b 85 e0 fa ff ff    	mov    -0x520(%rbp),%eax
    7f01bb3fe29f:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3fe2a2:	0f 94 c0             	sete   %al
    7f01bb3fe2a5:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe2a8:	8b 8d d8 fa ff ff    	mov    -0x528(%rbp),%ecx
    7f01bb3fe2ae:	23 c1                	and    %ecx,%eax
    7f01bb3fe2b0:	89 85 90 ef ff ff    	mov    %eax,-0x1070(%rbp)
    7f01bb3fe2b6:	23 85 c0 fa ff ff    	and    -0x540(%rbp),%eax
    7f01bb3fe2bc:	8b 8d 88 fe ff ff    	mov    -0x178(%rbp),%ecx
    7f01bb3fe2c2:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fe2c5:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fe2c8:	85 c9                	test   %ecx,%ecx
    7f01bb3fe2ca:	0f 94 c1             	sete   %cl
    7f01bb3fe2cd:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe2d0:	23 c1                	and    %ecx,%eax
    7f01bb3fe2d2:	8b 8d 88 fe ff ff    	mov    -0x178(%rbp),%ecx
    7f01bb3fe2d8:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fe2db:	89 8d 88 ef ff ff    	mov    %ecx,-0x1078(%rbp)
    7f01bb3fe2e1:	85 c9                	test   %ecx,%ecx
    7f01bb3fe2e3:	0f 94 c1             	sete   %cl
    7f01bb3fe2e6:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe2e9:	89 8d 80 ef ff ff    	mov    %ecx,-0x1080(%rbp)
    7f01bb3fe2ef:	8b 95 50 fd ff ff    	mov    -0x2b0(%rbp),%edx
    7f01bb3fe2f5:	23 ca                	and    %edx,%ecx
    7f01bb3fe2f7:	8b d1                	mov    %ecx,%edx
    7f01bb3fe2f9:	85 d2                	test   %edx,%edx
    7f01bb3fe2fb:	0f 94 c2             	sete   %dl
    7f01bb3fe2fe:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fe301:	89 95 78 ef ff ff    	mov    %edx,-0x1088(%rbp)
    7f01bb3fe307:	23 d0                	and    %eax,%edx
    7f01bb3fe309:	8b b5 88 fe ff ff    	mov    -0x178(%rbp),%esi
    7f01bb3fe30f:	83 e6 03             	and    $0x3,%esi
    7f01bb3fe312:	d1 e6                	shl    %esi
    7f01bb3fe314:	89 b5 70 ef ff ff    	mov    %esi,-0x1090(%rbp)
    7f01bb3fe31a:	89 85 68 ef ff ff    	mov    %eax,-0x1098(%rbp)
    7f01bb3fe320:	85 c0                	test   %eax,%eax
    7f01bb3fe322:	0f 94 c0             	sete   %al
    7f01bb3fe325:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe328:	89 8d 60 ef ff ff    	mov    %ecx,-0x10a0(%rbp)
    7f01bb3fe32e:	23 c8                	and    %eax,%ecx
    7f01bb3fe330:	89 8d 58 ef ff ff    	mov    %ecx,-0x10a8(%rbp)
    7f01bb3fe336:	8b 85 88 fe ff ff    	mov    -0x178(%rbp),%eax
    7f01bb3fe33c:	d1 e8                	shr    %eax
    7f01bb3fe33e:	83 e0 03             	and    $0x3,%eax
    7f01bb3fe341:	89 85 50 ef ff ff    	mov    %eax,-0x10b0(%rbp)
    7f01bb3fe347:	85 d2                	test   %edx,%edx
    7f01bb3fe349:	0f 84 11 00 00 00    	je     0x7f01bb3fe360
    7f01bb3fe34f:	8b 85 70 ef ff ff    	mov    -0x1090(%rbp),%eax
    7f01bb3fe355:	89 85 48 ef ff ff    	mov    %eax,-0x10b8(%rbp)
    7f01bb3fe35b:	e9 2b 00 00 00       	jmpq   0x7f01bb3fe38b
    7f01bb3fe360:	8b 85 58 ef ff ff    	mov    -0x10a8(%rbp),%eax
    7f01bb3fe366:	85 c0                	test   %eax,%eax
    7f01bb3fe368:	0f 84 11 00 00 00    	je     0x7f01bb3fe37f
    7f01bb3fe36e:	8b 85 50 ef ff ff    	mov    -0x10b0(%rbp),%eax
    7f01bb3fe374:	89 85 48 ef ff ff    	mov    %eax,-0x10b8(%rbp)
    7f01bb3fe37a:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe38b
    7f01bb3fe37f:	8b 85 88 fe ff ff    	mov    -0x178(%rbp),%eax
    7f01bb3fe385:	89 85 48 ef ff ff    	mov    %eax,-0x10b8(%rbp)
    7f01bb3fe38b:	8b 85 68 ef ff ff    	mov    -0x1098(%rbp),%eax
    7f01bb3fe391:	23 85 88 ef ff ff    	and    -0x1078(%rbp),%eax
    7f01bb3fe397:	8b 8d 60 ef ff ff    	mov    -0x10a0(%rbp),%ecx
    7f01bb3fe39d:	0b c1                	or     %ecx,%eax
    7f01bb3fe39f:	89 85 40 ef ff ff    	mov    %eax,-0x10c0(%rbp)
    7f01bb3fe3a5:	8b 85 88 fe ff ff    	mov    -0x178(%rbp),%eax
    7f01bb3fe3ab:	d1 e8                	shr    %eax
    7f01bb3fe3ad:	83 e0 01             	and    $0x1,%eax
    7f01bb3fe3b0:	89 85 38 ef ff ff    	mov    %eax,-0x10c8(%rbp)
    7f01bb3fe3b6:	8b 8d 78 ef ff ff    	mov    -0x1088(%rbp),%ecx
    7f01bb3fe3bc:	0b c1                	or     %ecx,%eax
    7f01bb3fe3be:	85 c0                	test   %eax,%eax
    7f01bb3fe3c0:	0f 84 33 00 00 00    	je     0x7f01bb3fe3f9
    7f01bb3fe3c6:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe3c9:	48 05 08 18 00 00    	add    $0x1808,%rax
    7f01bb3fe3cf:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fe3d6:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe3d9:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe3dc:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe3e0:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe3e4:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe3e8:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe3ec:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe3f0:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe3f4:	e9 31 00 00 00       	jmpq   0x7f01bb3fe42a
    7f01bb3fe3f9:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe3fc:	48 05 08 18 00 00    	add    $0x1808,%rax
    7f01bb3fe402:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe405:	48 81 c1 38 47 00 00 	add    $0x4738,%rcx
    7f01bb3fe40c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe40f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe412:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe416:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe41a:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe41e:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe422:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe426:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe42a:	8b 85 40 ef ff ff    	mov    -0x10c0(%rbp),%eax
    7f01bb3fe430:	85 c0                	test   %eax,%eax
    7f01bb3fe432:	0f 84 36 00 00 00    	je     0x7f01bb3fe46e
    7f01bb3fe438:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe43b:	48 05 48 18 00 00    	add    $0x1848,%rax
    7f01bb3fe441:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe444:	48 81 c1 08 18 00 00 	add    $0x1808,%rcx
    7f01bb3fe44b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe44e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe451:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe455:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe459:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe45d:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe461:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe465:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe469:	e9 31 00 00 00       	jmpq   0x7f01bb3fe49f
    7f01bb3fe46e:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe471:	48 05 48 18 00 00    	add    $0x1848,%rax
    7f01bb3fe477:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe47a:	48 81 c1 f8 46 00 00 	add    $0x46f8,%rcx
    7f01bb3fe481:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe484:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe487:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe48b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe48f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe493:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe497:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe49b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe49f:	8b 85 68 ef ff ff    	mov    -0x1098(%rbp),%eax
    7f01bb3fe4a5:	23 85 38 ef ff ff    	and    -0x10c8(%rbp),%eax
    7f01bb3fe4ab:	8b 8d 60 ef ff ff    	mov    -0x10a0(%rbp),%ecx
    7f01bb3fe4b1:	0b c1                	or     %ecx,%eax
    7f01bb3fe4b3:	85 c0                	test   %eax,%eax
    7f01bb3fe4b5:	0f 84 33 00 00 00    	je     0x7f01bb3fe4ee
    7f01bb3fe4bb:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe4be:	48 05 88 18 00 00    	add    $0x1888,%rax
    7f01bb3fe4c4:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fe4cb:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe4ce:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe4d1:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe4d5:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe4d9:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe4dd:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe4e1:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe4e5:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe4e9:	e9 31 00 00 00       	jmpq   0x7f01bb3fe51f
    7f01bb3fe4ee:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe4f1:	48 05 88 18 00 00    	add    $0x1888,%rax
    7f01bb3fe4f7:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe4fa:	48 81 c1 38 47 00 00 	add    $0x4738,%rcx
    7f01bb3fe501:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe504:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe507:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe50b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe50f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe513:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe517:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe51b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe51f:	8b 85 90 ef ff ff    	mov    -0x1070(%rbp),%eax
    7f01bb3fe525:	23 85 58 fa ff ff    	and    -0x5a8(%rbp),%eax
    7f01bb3fe52b:	8b 8d 80 fe ff ff    	mov    -0x180(%rbp),%ecx
    7f01bb3fe531:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fe534:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fe537:	85 c9                	test   %ecx,%ecx
    7f01bb3fe539:	0f 94 c1             	sete   %cl
    7f01bb3fe53c:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe53f:	23 c1                	and    %ecx,%eax
    7f01bb3fe541:	8b 8d 80 fe ff ff    	mov    -0x180(%rbp),%ecx
    7f01bb3fe547:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fe54a:	89 8d 30 ef ff ff    	mov    %ecx,-0x10d0(%rbp)
    7f01bb3fe550:	85 c9                	test   %ecx,%ecx
    7f01bb3fe552:	0f 94 c1             	sete   %cl
    7f01bb3fe555:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe558:	89 8d 28 ef ff ff    	mov    %ecx,-0x10d8(%rbp)
    7f01bb3fe55e:	8b 95 48 fd ff ff    	mov    -0x2b8(%rbp),%edx
    7f01bb3fe564:	23 ca                	and    %edx,%ecx
    7f01bb3fe566:	8b d1                	mov    %ecx,%edx
    7f01bb3fe568:	85 d2                	test   %edx,%edx
    7f01bb3fe56a:	0f 94 c2             	sete   %dl
    7f01bb3fe56d:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fe570:	89 95 20 ef ff ff    	mov    %edx,-0x10e0(%rbp)
    7f01bb3fe576:	23 d0                	and    %eax,%edx
    7f01bb3fe578:	8b b5 80 fe ff ff    	mov    -0x180(%rbp),%esi
    7f01bb3fe57e:	83 e6 03             	and    $0x3,%esi
    7f01bb3fe581:	d1 e6                	shl    %esi
    7f01bb3fe583:	89 b5 18 ef ff ff    	mov    %esi,-0x10e8(%rbp)
    7f01bb3fe589:	89 85 10 ef ff ff    	mov    %eax,-0x10f0(%rbp)
    7f01bb3fe58f:	85 c0                	test   %eax,%eax
    7f01bb3fe591:	0f 94 c0             	sete   %al
    7f01bb3fe594:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe597:	89 8d 08 ef ff ff    	mov    %ecx,-0x10f8(%rbp)
    7f01bb3fe59d:	23 c8                	and    %eax,%ecx
    7f01bb3fe59f:	89 8d 00 ef ff ff    	mov    %ecx,-0x1100(%rbp)
    7f01bb3fe5a5:	8b 85 80 fe ff ff    	mov    -0x180(%rbp),%eax
    7f01bb3fe5ab:	d1 e8                	shr    %eax
    7f01bb3fe5ad:	83 e0 03             	and    $0x3,%eax
    7f01bb3fe5b0:	89 85 f8 ee ff ff    	mov    %eax,-0x1108(%rbp)
    7f01bb3fe5b6:	85 d2                	test   %edx,%edx
    7f01bb3fe5b8:	0f 84 11 00 00 00    	je     0x7f01bb3fe5cf
    7f01bb3fe5be:	8b 85 18 ef ff ff    	mov    -0x10e8(%rbp),%eax
    7f01bb3fe5c4:	89 85 f0 ee ff ff    	mov    %eax,-0x1110(%rbp)
    7f01bb3fe5ca:	e9 2b 00 00 00       	jmpq   0x7f01bb3fe5fa
    7f01bb3fe5cf:	8b 85 00 ef ff ff    	mov    -0x1100(%rbp),%eax
    7f01bb3fe5d5:	85 c0                	test   %eax,%eax
    7f01bb3fe5d7:	0f 84 11 00 00 00    	je     0x7f01bb3fe5ee
    7f01bb3fe5dd:	8b 85 f8 ee ff ff    	mov    -0x1108(%rbp),%eax
    7f01bb3fe5e3:	89 85 f0 ee ff ff    	mov    %eax,-0x1110(%rbp)
    7f01bb3fe5e9:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe5fa
    7f01bb3fe5ee:	8b 85 80 fe ff ff    	mov    -0x180(%rbp),%eax
    7f01bb3fe5f4:	89 85 f0 ee ff ff    	mov    %eax,-0x1110(%rbp)
    7f01bb3fe5fa:	8b 85 10 ef ff ff    	mov    -0x10f0(%rbp),%eax
    7f01bb3fe600:	23 85 30 ef ff ff    	and    -0x10d0(%rbp),%eax
    7f01bb3fe606:	8b 8d 08 ef ff ff    	mov    -0x10f8(%rbp),%ecx
    7f01bb3fe60c:	0b c1                	or     %ecx,%eax
    7f01bb3fe60e:	89 85 e8 ee ff ff    	mov    %eax,-0x1118(%rbp)
    7f01bb3fe614:	8b 85 80 fe ff ff    	mov    -0x180(%rbp),%eax
    7f01bb3fe61a:	d1 e8                	shr    %eax
    7f01bb3fe61c:	83 e0 01             	and    $0x1,%eax
    7f01bb3fe61f:	89 85 e0 ee ff ff    	mov    %eax,-0x1120(%rbp)
    7f01bb3fe625:	8b 8d 20 ef ff ff    	mov    -0x10e0(%rbp),%ecx
    7f01bb3fe62b:	0b c1                	or     %ecx,%eax
    7f01bb3fe62d:	85 c0                	test   %eax,%eax
    7f01bb3fe62f:	0f 84 33 00 00 00    	je     0x7f01bb3fe668
    7f01bb3fe635:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe638:	48 05 c8 18 00 00    	add    $0x18c8,%rax
    7f01bb3fe63e:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fe645:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe648:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe64b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe64f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe653:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe657:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe65b:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe65f:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe663:	e9 31 00 00 00       	jmpq   0x7f01bb3fe699
    7f01bb3fe668:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe66b:	48 05 c8 18 00 00    	add    $0x18c8,%rax
    7f01bb3fe671:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe674:	48 81 c1 c0 47 00 00 	add    $0x47c0,%rcx
    7f01bb3fe67b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe67e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe681:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe685:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe689:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe68d:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe691:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe695:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe699:	8b 85 e8 ee ff ff    	mov    -0x1118(%rbp),%eax
    7f01bb3fe69f:	85 c0                	test   %eax,%eax
    7f01bb3fe6a1:	0f 84 36 00 00 00    	je     0x7f01bb3fe6dd
    7f01bb3fe6a7:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe6aa:	48 05 08 19 00 00    	add    $0x1908,%rax
    7f01bb3fe6b0:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe6b3:	48 81 c1 c8 18 00 00 	add    $0x18c8,%rcx
    7f01bb3fe6ba:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe6bd:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe6c0:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe6c4:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe6c8:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe6cc:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe6d0:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe6d4:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe6d8:	e9 31 00 00 00       	jmpq   0x7f01bb3fe70e
    7f01bb3fe6dd:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe6e0:	48 05 08 19 00 00    	add    $0x1908,%rax
    7f01bb3fe6e6:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe6e9:	48 81 c1 80 47 00 00 	add    $0x4780,%rcx
    7f01bb3fe6f0:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe6f3:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe6f6:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe6fa:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe6fe:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe702:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe706:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe70a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe70e:	8b 85 10 ef ff ff    	mov    -0x10f0(%rbp),%eax
    7f01bb3fe714:	23 85 e0 ee ff ff    	and    -0x1120(%rbp),%eax
    7f01bb3fe71a:	8b 8d 08 ef ff ff    	mov    -0x10f8(%rbp),%ecx
    7f01bb3fe720:	0b c1                	or     %ecx,%eax
    7f01bb3fe722:	85 c0                	test   %eax,%eax
    7f01bb3fe724:	0f 84 33 00 00 00    	je     0x7f01bb3fe75d
    7f01bb3fe72a:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe72d:	48 05 48 19 00 00    	add    $0x1948,%rax
    7f01bb3fe733:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fe73a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe73d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe740:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe744:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe748:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe74c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe750:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe754:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe758:	e9 31 00 00 00       	jmpq   0x7f01bb3fe78e
    7f01bb3fe75d:	49 8b c7             	mov    %r15,%rax
    7f01bb3fe760:	48 05 48 19 00 00    	add    $0x1948,%rax
    7f01bb3fe766:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fe769:	48 81 c1 c0 47 00 00 	add    $0x47c0,%rcx
    7f01bb3fe770:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fe773:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fe776:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fe77a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fe77e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fe782:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fe786:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fe78a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fe78e:	8b 85 90 ef ff ff    	mov    -0x1070(%rbp),%eax
    7f01bb3fe794:	23 85 f8 f9 ff ff    	and    -0x608(%rbp),%eax
    7f01bb3fe79a:	8b 8d 68 fe ff ff    	mov    -0x198(%rbp),%ecx
    7f01bb3fe7a0:	85 c9                	test   %ecx,%ecx
    7f01bb3fe7a2:	0f 94 c1             	sete   %cl
    7f01bb3fe7a5:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe7a8:	23 c1                	and    %ecx,%eax
    7f01bb3fe7aa:	8b 8d 70 fe ff ff    	mov    -0x190(%rbp),%ecx
    7f01bb3fe7b0:	85 c9                	test   %ecx,%ecx
    7f01bb3fe7b2:	0f 94 c1             	sete   %cl
    7f01bb3fe7b5:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe7b8:	8b 95 40 fd ff ff    	mov    -0x2c0(%rbp),%edx
    7f01bb3fe7be:	23 ca                	and    %edx,%ecx
    7f01bb3fe7c0:	8b d1                	mov    %ecx,%edx
    7f01bb3fe7c2:	85 d2                	test   %edx,%edx
    7f01bb3fe7c4:	0f 94 c2             	sete   %dl
    7f01bb3fe7c7:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fe7ca:	89 95 d8 ee ff ff    	mov    %edx,-0x1128(%rbp)
    7f01bb3fe7d0:	23 d0                	and    %eax,%edx
    7f01bb3fe7d2:	8b b5 78 fe ff ff    	mov    -0x188(%rbp),%esi
    7f01bb3fe7d8:	ff c6                	inc    %esi
    7f01bb3fe7da:	83 e6 3f             	and    $0x3f,%esi
    7f01bb3fe7dd:	89 b5 d0 ee ff ff    	mov    %esi,-0x1130(%rbp)
    7f01bb3fe7e3:	89 85 c8 ee ff ff    	mov    %eax,-0x1138(%rbp)
    7f01bb3fe7e9:	85 c0                	test   %eax,%eax
    7f01bb3fe7eb:	0f 94 c0             	sete   %al
    7f01bb3fe7ee:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe7f1:	89 8d c0 ee ff ff    	mov    %ecx,-0x1140(%rbp)
    7f01bb3fe7f7:	89 85 b8 ee ff ff    	mov    %eax,-0x1148(%rbp)
    7f01bb3fe7fd:	23 c8                	and    %eax,%ecx
    7f01bb3fe7ff:	89 8d b0 ee ff ff    	mov    %ecx,-0x1150(%rbp)
    7f01bb3fe805:	8b 85 78 fe ff ff    	mov    -0x188(%rbp),%eax
    7f01bb3fe80b:	ff c8                	dec    %eax
    7f01bb3fe80d:	83 e0 3f             	and    $0x3f,%eax
    7f01bb3fe810:	89 85 a8 ee ff ff    	mov    %eax,-0x1158(%rbp)
    7f01bb3fe816:	89 95 a0 ee ff ff    	mov    %edx,-0x1160(%rbp)
    7f01bb3fe81c:	85 d2                	test   %edx,%edx
    7f01bb3fe81e:	0f 84 11 00 00 00    	je     0x7f01bb3fe835
    7f01bb3fe824:	8b 85 d0 ee ff ff    	mov    -0x1130(%rbp),%eax
    7f01bb3fe82a:	89 85 98 ee ff ff    	mov    %eax,-0x1168(%rbp)
    7f01bb3fe830:	e9 2b 00 00 00       	jmpq   0x7f01bb3fe860
    7f01bb3fe835:	8b 85 b0 ee ff ff    	mov    -0x1150(%rbp),%eax
    7f01bb3fe83b:	85 c0                	test   %eax,%eax
    7f01bb3fe83d:	0f 84 11 00 00 00    	je     0x7f01bb3fe854
    7f01bb3fe843:	8b 85 a8 ee ff ff    	mov    -0x1158(%rbp),%eax
    7f01bb3fe849:	89 85 98 ee ff ff    	mov    %eax,-0x1168(%rbp)
    7f01bb3fe84f:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe860
    7f01bb3fe854:	8b 85 78 fe ff ff    	mov    -0x188(%rbp),%eax
    7f01bb3fe85a:	89 85 98 ee ff ff    	mov    %eax,-0x1168(%rbp)
    7f01bb3fe860:	8b 85 78 fe ff ff    	mov    -0x188(%rbp),%eax
    7f01bb3fe866:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3fe869:	0f 94 c0             	sete   %al
    7f01bb3fe86c:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe86f:	23 85 c0 ee ff ff    	and    -0x1140(%rbp),%eax
    7f01bb3fe875:	23 85 b8 ee ff ff    	and    -0x1148(%rbp),%eax
    7f01bb3fe87b:	85 c0                	test   %eax,%eax
    7f01bb3fe87d:	0f 84 0f 00 00 00    	je     0x7f01bb3fe892
    7f01bb3fe883:	c7 85 90 ee ff ff 01 	movl   $0x1,-0x1170(%rbp)
    7f01bb3fe88a:	00 00 00 
    7f01bb3fe88d:	e9 29 00 00 00       	jmpq   0x7f01bb3fe8bb
    7f01bb3fe892:	8b 85 a0 ee ff ff    	mov    -0x1160(%rbp),%eax
    7f01bb3fe898:	85 c0                	test   %eax,%eax
    7f01bb3fe89a:	0f 84 0f 00 00 00    	je     0x7f01bb3fe8af
    7f01bb3fe8a0:	c7 85 90 ee ff ff 00 	movl   $0x0,-0x1170(%rbp)
    7f01bb3fe8a7:	00 00 00 
    7f01bb3fe8aa:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe8bb
    7f01bb3fe8af:	8b 85 70 fe ff ff    	mov    -0x190(%rbp),%eax
    7f01bb3fe8b5:	89 85 90 ee ff ff    	mov    %eax,-0x1170(%rbp)
    7f01bb3fe8bb:	8b 85 78 fe ff ff    	mov    -0x188(%rbp),%eax
    7f01bb3fe8c1:	83 f8 1f             	cmp    $0x1f,%eax
    7f01bb3fe8c4:	0f 94 c0             	sete   %al
    7f01bb3fe8c7:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe8ca:	23 85 c8 ee ff ff    	and    -0x1138(%rbp),%eax
    7f01bb3fe8d0:	23 85 d8 ee ff ff    	and    -0x1128(%rbp),%eax
    7f01bb3fe8d6:	85 c0                	test   %eax,%eax
    7f01bb3fe8d8:	0f 84 0f 00 00 00    	je     0x7f01bb3fe8ed
    7f01bb3fe8de:	c7 85 88 ee ff ff 01 	movl   $0x1,-0x1178(%rbp)
    7f01bb3fe8e5:	00 00 00 
    7f01bb3fe8e8:	e9 29 00 00 00       	jmpq   0x7f01bb3fe916
    7f01bb3fe8ed:	8b 85 b0 ee ff ff    	mov    -0x1150(%rbp),%eax
    7f01bb3fe8f3:	85 c0                	test   %eax,%eax
    7f01bb3fe8f5:	0f 84 0f 00 00 00    	je     0x7f01bb3fe90a
    7f01bb3fe8fb:	c7 85 88 ee ff ff 00 	movl   $0x0,-0x1178(%rbp)
    7f01bb3fe902:	00 00 00 
    7f01bb3fe905:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe916
    7f01bb3fe90a:	8b 85 68 fe ff ff    	mov    -0x198(%rbp),%eax
    7f01bb3fe910:	89 85 88 ee ff ff    	mov    %eax,-0x1178(%rbp)
    7f01bb3fe916:	8b 85 60 fe ff ff    	mov    -0x1a0(%rbp),%eax
    7f01bb3fe91c:	ff c0                	inc    %eax
    7f01bb3fe91e:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3fe921:	89 85 80 ee ff ff    	mov    %eax,-0x1180(%rbp)
    7f01bb3fe927:	8b 85 c8 ee ff ff    	mov    -0x1138(%rbp),%eax
    7f01bb3fe92d:	85 c0                	test   %eax,%eax
    7f01bb3fe92f:	0f 84 11 00 00 00    	je     0x7f01bb3fe946
    7f01bb3fe935:	8b 85 80 ee ff ff    	mov    -0x1180(%rbp),%eax
    7f01bb3fe93b:	89 85 78 ee ff ff    	mov    %eax,-0x1188(%rbp)
    7f01bb3fe941:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe952
    7f01bb3fe946:	8b 85 60 fe ff ff    	mov    -0x1a0(%rbp),%eax
    7f01bb3fe94c:	89 85 78 ee ff ff    	mov    %eax,-0x1188(%rbp)
    7f01bb3fe952:	8b 85 c0 ee ff ff    	mov    -0x1140(%rbp),%eax
    7f01bb3fe958:	85 c0                	test   %eax,%eax
    7f01bb3fe95a:	0f 84 11 00 00 00    	je     0x7f01bb3fe971
    7f01bb3fe960:	8b 85 50 fe ff ff    	mov    -0x1b0(%rbp),%eax
    7f01bb3fe966:	89 85 70 ee ff ff    	mov    %eax,-0x1190(%rbp)
    7f01bb3fe96c:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe97d
    7f01bb3fe971:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
    7f01bb3fe977:	89 85 70 ee ff ff    	mov    %eax,-0x1190(%rbp)
    7f01bb3fe97d:	8b 85 58 fe ff ff    	mov    -0x1a8(%rbp),%eax
    7f01bb3fe983:	83 c0 02             	add    $0x2,%eax
    7f01bb3fe986:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3fe989:	89 85 68 ee ff ff    	mov    %eax,-0x1198(%rbp)
    7f01bb3fe98f:	8b 85 c0 ee ff ff    	mov    -0x1140(%rbp),%eax
    7f01bb3fe995:	85 c0                	test   %eax,%eax
    7f01bb3fe997:	0f 84 11 00 00 00    	je     0x7f01bb3fe9ae
    7f01bb3fe99d:	8b 85 68 ee ff ff    	mov    -0x1198(%rbp),%eax
    7f01bb3fe9a3:	89 85 60 ee ff ff    	mov    %eax,-0x11a0(%rbp)
    7f01bb3fe9a9:	e9 0c 00 00 00       	jmpq   0x7f01bb3fe9ba
    7f01bb3fe9ae:	8b 85 50 fe ff ff    	mov    -0x1b0(%rbp),%eax
    7f01bb3fe9b4:	89 85 60 ee ff ff    	mov    %eax,-0x11a0(%rbp)
    7f01bb3fe9ba:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fe9bf:	3b 85 78 fe ff ff    	cmp    -0x188(%rbp),%eax
    7f01bb3fe9c5:	0f 94 c0             	sete   %al
    7f01bb3fe9c8:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe9cb:	23 85 c0 ee ff ff    	and    -0x1140(%rbp),%eax
    7f01bb3fe9d1:	8b 8d 70 fe ff ff    	mov    -0x190(%rbp),%ecx
    7f01bb3fe9d7:	0b c1                	or     %ecx,%eax
    7f01bb3fe9d9:	8b 8d c8 ee ff ff    	mov    -0x1138(%rbp),%ecx
    7f01bb3fe9df:	23 c1                	and    %ecx,%eax
    7f01bb3fe9e1:	89 85 58 ee ff ff    	mov    %eax,-0x11a8(%rbp)
    7f01bb3fe9e7:	8b 8d 70 ee ff ff    	mov    -0x1190(%rbp),%ecx
    7f01bb3fe9ed:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb3fe9f0:	0f 93 c0             	setae  %al
    7f01bb3fe9f3:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fe9f6:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb3fe9f9:	0f 92 c1             	setb   %cl
    7f01bb3fe9fc:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fe9ff:	23 c1                	and    %ecx,%eax
    7f01bb3fea01:	85 c0                	test   %eax,%eax
    7f01bb3fea03:	0f 85 0a 00 00 00    	jne    0x7f01bb3fea13
    7f01bb3fea09:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fea0e:	e9 0b b5 00 00       	jmpq   0x7f01bb409f1e
    7f01bb3fea13:	49 8b c7             	mov    %r15,%rax
    7f01bb3fea16:	48 05 88 19 00 00    	add    $0x1988,%rax
    7f01bb3fea1c:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fea1f:	48 81 c1 88 21 00 00 	add    $0x2188,%rcx
    7f01bb3fea26:	8b 95 70 ee ff ff    	mov    -0x1190(%rbp),%edx
    7f01bb3fea2c:	c1 e2 06             	shl    $0x6,%edx
    7f01bb3fea2f:	8b d2                	mov    %edx,%edx
    7f01bb3fea31:	48 03 c2             	add    %rdx,%rax
    7f01bb3fea34:	0f 10 00             	movups (%rax),%xmm0
    7f01bb3fea37:	0f 11 01             	movups %xmm0,(%rcx)
    7f01bb3fea3a:	0f 10 40 10          	movups 0x10(%rax),%xmm0
    7f01bb3fea3e:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
    7f01bb3fea42:	0f 10 40 20          	movups 0x20(%rax),%xmm0
    7f01bb3fea46:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
    7f01bb3fea4a:	0f 10 40 30          	movups 0x30(%rax),%xmm0
    7f01bb3fea4e:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
    7f01bb3fea52:	8b 85 90 ef ff ff    	mov    -0x1070(%rbp),%eax
    7f01bb3fea58:	23 85 68 f9 ff ff    	and    -0x698(%rbp),%eax
    7f01bb3fea5e:	8b 8d 30 fe ff ff    	mov    -0x1d0(%rbp),%ecx
    7f01bb3fea64:	85 c9                	test   %ecx,%ecx
    7f01bb3fea66:	0f 94 c1             	sete   %cl
    7f01bb3fea69:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fea6c:	23 c1                	and    %ecx,%eax
    7f01bb3fea6e:	8b 8d 38 fe ff ff    	mov    -0x1c8(%rbp),%ecx
    7f01bb3fea74:	85 c9                	test   %ecx,%ecx
    7f01bb3fea76:	0f 94 c1             	sete   %cl
    7f01bb3fea79:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fea7c:	8b 95 40 fd ff ff    	mov    -0x2c0(%rbp),%edx
    7f01bb3fea82:	23 ca                	and    %edx,%ecx
    7f01bb3fea84:	8b d1                	mov    %ecx,%edx
    7f01bb3fea86:	85 d2                	test   %edx,%edx
    7f01bb3fea88:	0f 94 c2             	sete   %dl
    7f01bb3fea8b:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fea8e:	89 95 50 ee ff ff    	mov    %edx,-0x11b0(%rbp)
    7f01bb3fea94:	23 d0                	and    %eax,%edx
    7f01bb3fea96:	8b b5 40 fe ff ff    	mov    -0x1c0(%rbp),%esi
    7f01bb3fea9c:	ff c6                	inc    %esi
    7f01bb3fea9e:	83 e6 3f             	and    $0x3f,%esi
    7f01bb3feaa1:	89 b5 48 ee ff ff    	mov    %esi,-0x11b8(%rbp)
    7f01bb3feaa7:	89 85 40 ee ff ff    	mov    %eax,-0x11c0(%rbp)
    7f01bb3feaad:	85 c0                	test   %eax,%eax
    7f01bb3feaaf:	0f 94 c0             	sete   %al
    7f01bb3feab2:	0f b6 c0             	movzbl %al,%eax
    7f01bb3feab5:	89 8d 38 ee ff ff    	mov    %ecx,-0x11c8(%rbp)
    7f01bb3feabb:	89 85 30 ee ff ff    	mov    %eax,-0x11d0(%rbp)
    7f01bb3feac1:	23 c8                	and    %eax,%ecx
    7f01bb3feac3:	89 8d 28 ee ff ff    	mov    %ecx,-0x11d8(%rbp)
    7f01bb3feac9:	8b 85 40 fe ff ff    	mov    -0x1c0(%rbp),%eax
    7f01bb3feacf:	ff c8                	dec    %eax
    7f01bb3fead1:	83 e0 3f             	and    $0x3f,%eax
    7f01bb3fead4:	89 85 20 ee ff ff    	mov    %eax,-0x11e0(%rbp)
    7f01bb3feada:	89 95 18 ee ff ff    	mov    %edx,-0x11e8(%rbp)
    7f01bb3feae0:	85 d2                	test   %edx,%edx
    7f01bb3feae2:	0f 84 11 00 00 00    	je     0x7f01bb3feaf9
    7f01bb3feae8:	8b 85 48 ee ff ff    	mov    -0x11b8(%rbp),%eax
    7f01bb3feaee:	89 85 10 ee ff ff    	mov    %eax,-0x11f0(%rbp)
    7f01bb3feaf4:	e9 2b 00 00 00       	jmpq   0x7f01bb3feb24
    7f01bb3feaf9:	8b 85 28 ee ff ff    	mov    -0x11d8(%rbp),%eax
    7f01bb3feaff:	85 c0                	test   %eax,%eax
    7f01bb3feb01:	0f 84 11 00 00 00    	je     0x7f01bb3feb18
    7f01bb3feb07:	8b 85 20 ee ff ff    	mov    -0x11e0(%rbp),%eax
    7f01bb3feb0d:	89 85 10 ee ff ff    	mov    %eax,-0x11f0(%rbp)
    7f01bb3feb13:	e9 0c 00 00 00       	jmpq   0x7f01bb3feb24
    7f01bb3feb18:	8b 85 40 fe ff ff    	mov    -0x1c0(%rbp),%eax
    7f01bb3feb1e:	89 85 10 ee ff ff    	mov    %eax,-0x11f0(%rbp)
    7f01bb3feb24:	8b 85 40 fe ff ff    	mov    -0x1c0(%rbp),%eax
    7f01bb3feb2a:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3feb2d:	0f 94 c0             	sete   %al
    7f01bb3feb30:	0f b6 c0             	movzbl %al,%eax
    7f01bb3feb33:	23 85 38 ee ff ff    	and    -0x11c8(%rbp),%eax
    7f01bb3feb39:	23 85 30 ee ff ff    	and    -0x11d0(%rbp),%eax
    7f01bb3feb3f:	85 c0                	test   %eax,%eax
    7f01bb3feb41:	0f 84 0f 00 00 00    	je     0x7f01bb3feb56
    7f01bb3feb47:	c7 85 08 ee ff ff 01 	movl   $0x1,-0x11f8(%rbp)
    7f01bb3feb4e:	00 00 00 
    7f01bb3feb51:	e9 29 00 00 00       	jmpq   0x7f01bb3feb7f
    7f01bb3feb56:	8b 85 18 ee ff ff    	mov    -0x11e8(%rbp),%eax
    7f01bb3feb5c:	85 c0                	test   %eax,%eax
    7f01bb3feb5e:	0f 84 0f 00 00 00    	je     0x7f01bb3feb73
    7f01bb3feb64:	c7 85 08 ee ff ff 00 	movl   $0x0,-0x11f8(%rbp)
    7f01bb3feb6b:	00 00 00 
    7f01bb3feb6e:	e9 0c 00 00 00       	jmpq   0x7f01bb3feb7f
    7f01bb3feb73:	8b 85 38 fe ff ff    	mov    -0x1c8(%rbp),%eax
    7f01bb3feb79:	89 85 08 ee ff ff    	mov    %eax,-0x11f8(%rbp)
    7f01bb3feb7f:	8b 85 40 fe ff ff    	mov    -0x1c0(%rbp),%eax
    7f01bb3feb85:	83 f8 1f             	cmp    $0x1f,%eax
    7f01bb3feb88:	0f 94 c0             	sete   %al
    7f01bb3feb8b:	0f b6 c0             	movzbl %al,%eax
    7f01bb3feb8e:	23 85 40 ee ff ff    	and    -0x11c0(%rbp),%eax
    7f01bb3feb94:	23 85 50 ee ff ff    	and    -0x11b0(%rbp),%eax
    7f01bb3feb9a:	85 c0                	test   %eax,%eax
    7f01bb3feb9c:	0f 84 0f 00 00 00    	je     0x7f01bb3febb1
    7f01bb3feba2:	c7 85 00 ee ff ff 01 	movl   $0x1,-0x1200(%rbp)
    7f01bb3feba9:	00 00 00 
    7f01bb3febac:	e9 29 00 00 00       	jmpq   0x7f01bb3febda
    7f01bb3febb1:	8b 85 28 ee ff ff    	mov    -0x11d8(%rbp),%eax
    7f01bb3febb7:	85 c0                	test   %eax,%eax
    7f01bb3febb9:	0f 84 0f 00 00 00    	je     0x7f01bb3febce
    7f01bb3febbf:	c7 85 00 ee ff ff 00 	movl   $0x0,-0x1200(%rbp)
    7f01bb3febc6:	00 00 00 
    7f01bb3febc9:	e9 0c 00 00 00       	jmpq   0x7f01bb3febda
    7f01bb3febce:	8b 85 30 fe ff ff    	mov    -0x1d0(%rbp),%eax
    7f01bb3febd4:	89 85 00 ee ff ff    	mov    %eax,-0x1200(%rbp)
    7f01bb3febda:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    7f01bb3febe0:	ff c0                	inc    %eax
    7f01bb3febe2:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3febe5:	89 85 f8 ed ff ff    	mov    %eax,-0x1208(%rbp)
    7f01bb3febeb:	8b 85 40 ee ff ff    	mov    -0x11c0(%rbp),%eax
    7f01bb3febf1:	85 c0                	test   %eax,%eax
    7f01bb3febf3:	0f 84 11 00 00 00    	je     0x7f01bb3fec0a
    7f01bb3febf9:	8b 85 f8 ed ff ff    	mov    -0x1208(%rbp),%eax
    7f01bb3febff:	89 85 f0 ed ff ff    	mov    %eax,-0x1210(%rbp)
    7f01bb3fec05:	e9 0c 00 00 00       	jmpq   0x7f01bb3fec16
    7f01bb3fec0a:	8b 85 28 fe ff ff    	mov    -0x1d8(%rbp),%eax
    7f01bb3fec10:	89 85 f0 ed ff ff    	mov    %eax,-0x1210(%rbp)
    7f01bb3fec16:	8b 85 38 ee ff ff    	mov    -0x11c8(%rbp),%eax
    7f01bb3fec1c:	85 c0                	test   %eax,%eax
    7f01bb3fec1e:	0f 84 11 00 00 00    	je     0x7f01bb3fec35
    7f01bb3fec24:	8b 85 18 fe ff ff    	mov    -0x1e8(%rbp),%eax
    7f01bb3fec2a:	89 85 e8 ed ff ff    	mov    %eax,-0x1218(%rbp)
    7f01bb3fec30:	e9 0c 00 00 00       	jmpq   0x7f01bb3fec41
    7f01bb3fec35:	8b 85 20 fe ff ff    	mov    -0x1e0(%rbp),%eax
    7f01bb3fec3b:	89 85 e8 ed ff ff    	mov    %eax,-0x1218(%rbp)
    7f01bb3fec41:	8b 85 20 fe ff ff    	mov    -0x1e0(%rbp),%eax
    7f01bb3fec47:	83 c0 02             	add    $0x2,%eax
    7f01bb3fec4a:	83 e0 1f             	and    $0x1f,%eax
    7f01bb3fec4d:	89 85 e0 ed ff ff    	mov    %eax,-0x1220(%rbp)
    7f01bb3fec53:	8b 85 38 ee ff ff    	mov    -0x11c8(%rbp),%eax
    7f01bb3fec59:	85 c0                	test   %eax,%eax
    7f01bb3fec5b:	0f 84 11 00 00 00    	je     0x7f01bb3fec72
    7f01bb3fec61:	8b 85 e0 ed ff ff    	mov    -0x1220(%rbp),%eax
    7f01bb3fec67:	89 85 d8 ed ff ff    	mov    %eax,-0x1228(%rbp)
    7f01bb3fec6d:	e9 0c 00 00 00       	jmpq   0x7f01bb3fec7e
    7f01bb3fec72:	8b 85 18 fe ff ff    	mov    -0x1e8(%rbp),%eax
    7f01bb3fec78:	89 85 d8 ed ff ff    	mov    %eax,-0x1228(%rbp)
    7f01bb3fec7e:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fec83:	3b 85 40 fe ff ff    	cmp    -0x1c0(%rbp),%eax
    7f01bb3fec89:	0f 94 c0             	sete   %al
    7f01bb3fec8c:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fec8f:	23 85 38 ee ff ff    	and    -0x11c8(%rbp),%eax
    7f01bb3fec95:	8b 8d 38 fe ff ff    	mov    -0x1c8(%rbp),%ecx
    7f01bb3fec9b:	0b c1                	or     %ecx,%eax
    7f01bb3fec9d:	8b 8d 40 ee ff ff    	mov    -0x11c0(%rbp),%ecx
    7f01bb3feca3:	23 c1                	and    %ecx,%eax
    7f01bb3feca5:	89 85 d0 ed ff ff    	mov    %eax,-0x1230(%rbp)
    7f01bb3fecab:	8b 8d e8 ed ff ff    	mov    -0x1218(%rbp),%ecx
    7f01bb3fecb1:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb3fecb4:	0f 93 c0             	setae  %al
    7f01bb3fecb7:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fecba:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb3fecbd:	0f 92 c1             	setb   %cl
    7f01bb3fecc0:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fecc3:	23 c1                	and    %ecx,%eax
    7f01bb3fecc5:	85 c0                	test   %eax,%eax
    7f01bb3fecc7:	0f 85 0a 00 00 00    	jne    0x7f01bb3fecd7
    7f01bb3feccd:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb3fecd2:	e9 47 b2 00 00       	jmpq   0x7f01bb409f1e
    7f01bb3fecd7:	49 8b c7             	mov    %r15,%rax
    7f01bb3fecda:	48 05 c8 21 00 00    	add    $0x21c8,%rax
    7f01bb3fece0:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fece3:	48 81 c1 c8 29 00 00 	add    $0x29c8,%rcx
    7f01bb3fecea:	8b 95 e8 ed ff ff    	mov    -0x1218(%rbp),%edx
    7f01bb3fecf0:	c1 e2 06             	shl    $0x6,%edx
    7f01bb3fecf3:	8b d2                	mov    %edx,%edx
    7f01bb3fecf5:	48 03 c2             	add    %rdx,%rax
    7f01bb3fecf8:	0f 10 00             	movups (%rax),%xmm0
    7f01bb3fecfb:	0f 11 01             	movups %xmm0,(%rcx)
    7f01bb3fecfe:	0f 10 40 10          	movups 0x10(%rax),%xmm0
    7f01bb3fed02:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
    7f01bb3fed06:	0f 10 40 20          	movups 0x20(%rax),%xmm0
    7f01bb3fed0a:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
    7f01bb3fed0e:	0f 10 40 30          	movups 0x30(%rax),%xmm0
    7f01bb3fed12:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
    7f01bb3fed16:	8b 85 90 ef ff ff    	mov    -0x1070(%rbp),%eax
    7f01bb3fed1c:	23 85 d8 f8 ff ff    	and    -0x728(%rbp),%eax
    7f01bb3fed22:	8b 8d 08 fe ff ff    	mov    -0x1f8(%rbp),%ecx
    7f01bb3fed28:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fed2b:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fed2e:	85 c9                	test   %ecx,%ecx
    7f01bb3fed30:	0f 94 c1             	sete   %cl
    7f01bb3fed33:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fed36:	23 c1                	and    %ecx,%eax
    7f01bb3fed38:	8b 8d 08 fe ff ff    	mov    -0x1f8(%rbp),%ecx
    7f01bb3fed3e:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fed41:	89 8d c8 ed ff ff    	mov    %ecx,-0x1238(%rbp)
    7f01bb3fed47:	85 c9                	test   %ecx,%ecx
    7f01bb3fed49:	0f 94 c1             	sete   %cl
    7f01bb3fed4c:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fed4f:	89 8d c0 ed ff ff    	mov    %ecx,-0x1240(%rbp)
    7f01bb3fed55:	8b 95 38 fd ff ff    	mov    -0x2c8(%rbp),%edx
    7f01bb3fed5b:	23 ca                	and    %edx,%ecx
    7f01bb3fed5d:	8b d1                	mov    %ecx,%edx
    7f01bb3fed5f:	85 d2                	test   %edx,%edx
    7f01bb3fed61:	0f 94 c2             	sete   %dl
    7f01bb3fed64:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fed67:	89 95 b8 ed ff ff    	mov    %edx,-0x1248(%rbp)
    7f01bb3fed6d:	23 d0                	and    %eax,%edx
    7f01bb3fed6f:	8b b5 08 fe ff ff    	mov    -0x1f8(%rbp),%esi
    7f01bb3fed75:	83 e6 03             	and    $0x3,%esi
    7f01bb3fed78:	d1 e6                	shl    %esi
    7f01bb3fed7a:	89 b5 b0 ed ff ff    	mov    %esi,-0x1250(%rbp)
    7f01bb3fed80:	89 85 a8 ed ff ff    	mov    %eax,-0x1258(%rbp)
    7f01bb3fed86:	85 c0                	test   %eax,%eax
    7f01bb3fed88:	0f 94 c0             	sete   %al
    7f01bb3fed8b:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fed8e:	89 8d a0 ed ff ff    	mov    %ecx,-0x1260(%rbp)
    7f01bb3fed94:	23 c8                	and    %eax,%ecx
    7f01bb3fed96:	89 8d 98 ed ff ff    	mov    %ecx,-0x1268(%rbp)
    7f01bb3fed9c:	8b 85 08 fe ff ff    	mov    -0x1f8(%rbp),%eax
    7f01bb3feda2:	d1 e8                	shr    %eax
    7f01bb3feda4:	83 e0 03             	and    $0x3,%eax
    7f01bb3feda7:	89 85 90 ed ff ff    	mov    %eax,-0x1270(%rbp)
    7f01bb3fedad:	85 d2                	test   %edx,%edx
    7f01bb3fedaf:	0f 84 11 00 00 00    	je     0x7f01bb3fedc6
    7f01bb3fedb5:	8b 85 b0 ed ff ff    	mov    -0x1250(%rbp),%eax
    7f01bb3fedbb:	89 85 88 ed ff ff    	mov    %eax,-0x1278(%rbp)
    7f01bb3fedc1:	e9 2b 00 00 00       	jmpq   0x7f01bb3fedf1
    7f01bb3fedc6:	8b 85 98 ed ff ff    	mov    -0x1268(%rbp),%eax
    7f01bb3fedcc:	85 c0                	test   %eax,%eax
    7f01bb3fedce:	0f 84 11 00 00 00    	je     0x7f01bb3fede5
    7f01bb3fedd4:	8b 85 90 ed ff ff    	mov    -0x1270(%rbp),%eax
    7f01bb3fedda:	89 85 88 ed ff ff    	mov    %eax,-0x1278(%rbp)
    7f01bb3fede0:	e9 0c 00 00 00       	jmpq   0x7f01bb3fedf1
    7f01bb3fede5:	8b 85 08 fe ff ff    	mov    -0x1f8(%rbp),%eax
    7f01bb3fedeb:	89 85 88 ed ff ff    	mov    %eax,-0x1278(%rbp)
    7f01bb3fedf1:	8b 85 a8 ed ff ff    	mov    -0x1258(%rbp),%eax
    7f01bb3fedf7:	23 85 c8 ed ff ff    	and    -0x1238(%rbp),%eax
    7f01bb3fedfd:	8b 8d a0 ed ff ff    	mov    -0x1260(%rbp),%ecx
    7f01bb3fee03:	0b c1                	or     %ecx,%eax
    7f01bb3fee05:	89 85 80 ed ff ff    	mov    %eax,-0x1280(%rbp)
    7f01bb3fee0b:	8b 85 08 fe ff ff    	mov    -0x1f8(%rbp),%eax
    7f01bb3fee11:	d1 e8                	shr    %eax
    7f01bb3fee13:	83 e0 01             	and    $0x1,%eax
    7f01bb3fee16:	89 85 78 ed ff ff    	mov    %eax,-0x1288(%rbp)
    7f01bb3fee1c:	8b 8d b8 ed ff ff    	mov    -0x1248(%rbp),%ecx
    7f01bb3fee22:	0b c1                	or     %ecx,%eax
    7f01bb3fee24:	85 c0                	test   %eax,%eax
    7f01bb3fee26:	0f 84 33 00 00 00    	je     0x7f01bb3fee5f
    7f01bb3fee2c:	49 8b c7             	mov    %r15,%rax
    7f01bb3fee2f:	48 05 08 2a 00 00    	add    $0x2a08,%rax
    7f01bb3fee35:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fee3c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fee3f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fee42:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fee46:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fee4a:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fee4e:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fee52:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fee56:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fee5a:	e9 31 00 00 00       	jmpq   0x7f01bb3fee90
    7f01bb3fee5f:	49 8b c7             	mov    %r15,%rax
    7f01bb3fee62:	48 05 08 2a 00 00    	add    $0x2a08,%rax
    7f01bb3fee68:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fee6b:	48 81 c1 38 49 00 00 	add    $0x4938,%rcx
    7f01bb3fee72:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fee75:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fee78:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fee7c:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fee80:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fee84:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fee88:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fee8c:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fee90:	8b 85 80 ed ff ff    	mov    -0x1280(%rbp),%eax
    7f01bb3fee96:	85 c0                	test   %eax,%eax
    7f01bb3fee98:	0f 84 36 00 00 00    	je     0x7f01bb3feed4
    7f01bb3fee9e:	49 8b c7             	mov    %r15,%rax
    7f01bb3feea1:	48 05 48 2a 00 00    	add    $0x2a48,%rax
    7f01bb3feea7:	49 8b cf             	mov    %r15,%rcx
    7f01bb3feeaa:	48 81 c1 08 2a 00 00 	add    $0x2a08,%rcx
    7f01bb3feeb1:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3feeb4:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3feeb7:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3feebb:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3feebf:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3feec3:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3feec7:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3feecb:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3feecf:	e9 31 00 00 00       	jmpq   0x7f01bb3fef05
    7f01bb3feed4:	49 8b c7             	mov    %r15,%rax
    7f01bb3feed7:	48 05 48 2a 00 00    	add    $0x2a48,%rax
    7f01bb3feedd:	49 8b cf             	mov    %r15,%rcx
    7f01bb3feee0:	48 81 c1 f8 48 00 00 	add    $0x48f8,%rcx
    7f01bb3feee7:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3feeea:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3feeed:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3feef1:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3feef5:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3feef9:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3feefd:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fef01:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fef05:	8b 85 a8 ed ff ff    	mov    -0x1258(%rbp),%eax
    7f01bb3fef0b:	23 85 78 ed ff ff    	and    -0x1288(%rbp),%eax
    7f01bb3fef11:	8b 8d a0 ed ff ff    	mov    -0x1260(%rbp),%ecx
    7f01bb3fef17:	0b c1                	or     %ecx,%eax
    7f01bb3fef19:	85 c0                	test   %eax,%eax
    7f01bb3fef1b:	0f 84 33 00 00 00    	je     0x7f01bb3fef54
    7f01bb3fef21:	49 8b c7             	mov    %r15,%rax
    7f01bb3fef24:	48 05 88 2a 00 00    	add    $0x2a88,%rax
    7f01bb3fef2a:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3fef31:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fef34:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fef37:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fef3b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fef3f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fef43:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fef47:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fef4b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fef4f:	e9 31 00 00 00       	jmpq   0x7f01bb3fef85
    7f01bb3fef54:	49 8b c7             	mov    %r15,%rax
    7f01bb3fef57:	48 05 88 2a 00 00    	add    $0x2a88,%rax
    7f01bb3fef5d:	49 8b cf             	mov    %r15,%rcx
    7f01bb3fef60:	48 81 c1 38 49 00 00 	add    $0x4938,%rcx
    7f01bb3fef67:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3fef6a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3fef6d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3fef71:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3fef75:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3fef79:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3fef7d:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3fef81:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3fef85:	8b 85 90 ef ff ff    	mov    -0x1070(%rbp),%eax
    7f01bb3fef8b:	23 85 78 f8 ff ff    	and    -0x788(%rbp),%eax
    7f01bb3fef91:	8b 8d 00 fe ff ff    	mov    -0x200(%rbp),%ecx
    7f01bb3fef97:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb3fef9a:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fef9d:	85 c9                	test   %ecx,%ecx
    7f01bb3fef9f:	0f 94 c1             	sete   %cl
    7f01bb3fefa2:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fefa5:	23 c1                	and    %ecx,%eax
    7f01bb3fefa7:	8b 8d 00 fe ff ff    	mov    -0x200(%rbp),%ecx
    7f01bb3fefad:	83 e1 01             	and    $0x1,%ecx
    7f01bb3fefb0:	89 8d 70 ed ff ff    	mov    %ecx,-0x1290(%rbp)
    7f01bb3fefb6:	85 c9                	test   %ecx,%ecx
    7f01bb3fefb8:	0f 94 c1             	sete   %cl
    7f01bb3fefbb:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fefbe:	89 8d 68 ed ff ff    	mov    %ecx,-0x1298(%rbp)
    7f01bb3fefc4:	8b 95 30 fd ff ff    	mov    -0x2d0(%rbp),%edx
    7f01bb3fefca:	23 ca                	and    %edx,%ecx
    7f01bb3fefcc:	8b d1                	mov    %ecx,%edx
    7f01bb3fefce:	85 d2                	test   %edx,%edx
    7f01bb3fefd0:	0f 94 c2             	sete   %dl
    7f01bb3fefd3:	0f b6 d2             	movzbl %dl,%edx
    7f01bb3fefd6:	89 95 60 ed ff ff    	mov    %edx,-0x12a0(%rbp)
    7f01bb3fefdc:	23 d0                	and    %eax,%edx
    7f01bb3fefde:	8b b5 00 fe ff ff    	mov    -0x200(%rbp),%esi
    7f01bb3fefe4:	83 e6 03             	and    $0x3,%esi
    7f01bb3fefe7:	d1 e6                	shl    %esi
    7f01bb3fefe9:	89 b5 58 ed ff ff    	mov    %esi,-0x12a8(%rbp)
    7f01bb3fefef:	89 85 50 ed ff ff    	mov    %eax,-0x12b0(%rbp)
    7f01bb3feff5:	85 c0                	test   %eax,%eax
    7f01bb3feff7:	0f 94 c0             	sete   %al
    7f01bb3feffa:	0f b6 c0             	movzbl %al,%eax
    7f01bb3feffd:	89 8d 48 ed ff ff    	mov    %ecx,-0x12b8(%rbp)
    7f01bb3ff003:	23 c8                	and    %eax,%ecx
    7f01bb3ff005:	89 8d 40 ed ff ff    	mov    %ecx,-0x12c0(%rbp)
    7f01bb3ff00b:	8b 85 00 fe ff ff    	mov    -0x200(%rbp),%eax
    7f01bb3ff011:	d1 e8                	shr    %eax
    7f01bb3ff013:	83 e0 03             	and    $0x3,%eax
    7f01bb3ff016:	89 85 38 ed ff ff    	mov    %eax,-0x12c8(%rbp)
    7f01bb3ff01c:	85 d2                	test   %edx,%edx
    7f01bb3ff01e:	0f 84 11 00 00 00    	je     0x7f01bb3ff035
    7f01bb3ff024:	8b 85 58 ed ff ff    	mov    -0x12a8(%rbp),%eax
    7f01bb3ff02a:	89 85 30 ed ff ff    	mov    %eax,-0x12d0(%rbp)
    7f01bb3ff030:	e9 2b 00 00 00       	jmpq   0x7f01bb3ff060
    7f01bb3ff035:	8b 85 40 ed ff ff    	mov    -0x12c0(%rbp),%eax
    7f01bb3ff03b:	85 c0                	test   %eax,%eax
    7f01bb3ff03d:	0f 84 11 00 00 00    	je     0x7f01bb3ff054
    7f01bb3ff043:	8b 85 38 ed ff ff    	mov    -0x12c8(%rbp),%eax
    7f01bb3ff049:	89 85 30 ed ff ff    	mov    %eax,-0x12d0(%rbp)
    7f01bb3ff04f:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff060
    7f01bb3ff054:	8b 85 00 fe ff ff    	mov    -0x200(%rbp),%eax
    7f01bb3ff05a:	89 85 30 ed ff ff    	mov    %eax,-0x12d0(%rbp)
    7f01bb3ff060:	8b 85 50 ed ff ff    	mov    -0x12b0(%rbp),%eax
    7f01bb3ff066:	23 85 70 ed ff ff    	and    -0x1290(%rbp),%eax
    7f01bb3ff06c:	8b 8d 48 ed ff ff    	mov    -0x12b8(%rbp),%ecx
    7f01bb3ff072:	0b c1                	or     %ecx,%eax
    7f01bb3ff074:	89 85 28 ed ff ff    	mov    %eax,-0x12d8(%rbp)
    7f01bb3ff07a:	8b 85 00 fe ff ff    	mov    -0x200(%rbp),%eax
    7f01bb3ff080:	d1 e8                	shr    %eax
    7f01bb3ff082:	83 e0 01             	and    $0x1,%eax
    7f01bb3ff085:	89 85 20 ed ff ff    	mov    %eax,-0x12e0(%rbp)
    7f01bb3ff08b:	8b 8d 60 ed ff ff    	mov    -0x12a0(%rbp),%ecx
    7f01bb3ff091:	0b c1                	or     %ecx,%eax
    7f01bb3ff093:	85 c0                	test   %eax,%eax
    7f01bb3ff095:	0f 84 33 00 00 00    	je     0x7f01bb3ff0ce
    7f01bb3ff09b:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff09e:	48 05 c8 2a 00 00    	add    $0x2ac8,%rax
    7f01bb3ff0a4:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3ff0ab:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3ff0ae:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3ff0b1:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3ff0b5:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3ff0b9:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3ff0bd:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3ff0c1:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3ff0c5:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3ff0c9:	e9 31 00 00 00       	jmpq   0x7f01bb3ff0ff
    7f01bb3ff0ce:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff0d1:	48 05 c8 2a 00 00    	add    $0x2ac8,%rax
    7f01bb3ff0d7:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff0da:	48 81 c1 c0 49 00 00 	add    $0x49c0,%rcx
    7f01bb3ff0e1:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3ff0e4:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3ff0e7:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3ff0eb:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3ff0ef:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3ff0f3:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3ff0f7:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3ff0fb:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3ff0ff:	8b 85 28 ed ff ff    	mov    -0x12d8(%rbp),%eax
    7f01bb3ff105:	85 c0                	test   %eax,%eax
    7f01bb3ff107:	0f 84 36 00 00 00    	je     0x7f01bb3ff143
    7f01bb3ff10d:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff110:	48 05 08 2b 00 00    	add    $0x2b08,%rax
    7f01bb3ff116:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff119:	48 81 c1 c8 2a 00 00 	add    $0x2ac8,%rcx
    7f01bb3ff120:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3ff123:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3ff126:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3ff12a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3ff12e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3ff132:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3ff136:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3ff13a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3ff13e:	e9 31 00 00 00       	jmpq   0x7f01bb3ff174
    7f01bb3ff143:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff146:	48 05 08 2b 00 00    	add    $0x2b08,%rax
    7f01bb3ff14c:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff14f:	48 81 c1 80 49 00 00 	add    $0x4980,%rcx
    7f01bb3ff156:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3ff159:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3ff15c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3ff160:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3ff164:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3ff168:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3ff16c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3ff170:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3ff174:	8b 85 50 ed ff ff    	mov    -0x12b0(%rbp),%eax
    7f01bb3ff17a:	23 85 20 ed ff ff    	and    -0x12e0(%rbp),%eax
    7f01bb3ff180:	8b 8d 48 ed ff ff    	mov    -0x12b8(%rbp),%ecx
    7f01bb3ff186:	0b c1                	or     %ecx,%eax
    7f01bb3ff188:	85 c0                	test   %eax,%eax
    7f01bb3ff18a:	0f 84 33 00 00 00    	je     0x7f01bb3ff1c3
    7f01bb3ff190:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff193:	48 05 48 2b 00 00    	add    $0x2b48,%rax
    7f01bb3ff199:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb3ff1a0:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3ff1a3:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3ff1a6:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3ff1aa:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3ff1ae:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3ff1b2:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3ff1b6:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3ff1ba:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3ff1be:	e9 31 00 00 00       	jmpq   0x7f01bb3ff1f4
    7f01bb3ff1c3:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff1c6:	48 05 48 2b 00 00    	add    $0x2b48,%rax
    7f01bb3ff1cc:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff1cf:	48 81 c1 c0 49 00 00 	add    $0x49c0,%rcx
    7f01bb3ff1d6:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb3ff1d9:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb3ff1dc:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb3ff1e0:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb3ff1e4:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb3ff1e8:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb3ff1ec:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb3ff1f0:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb3ff1f4:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb3ff1fa:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3ff1fd:	0f 94 c0             	sete   %al
    7f01bb3ff200:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ff203:	41 83 fe 01          	cmp    $0x1,%r14d
    7f01bb3ff207:	0f 94 c1             	sete   %cl
    7f01bb3ff20a:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ff20d:	89 8d 18 ed ff ff    	mov    %ecx,-0x12e8(%rbp)
    7f01bb3ff213:	23 c1                	and    %ecx,%eax
    7f01bb3ff215:	89 85 10 ed ff ff    	mov    %eax,-0x12f0(%rbp)
    7f01bb3ff21b:	85 c0                	test   %eax,%eax
    7f01bb3ff21d:	0f 84 0f 00 00 00    	je     0x7f01bb3ff232
    7f01bb3ff223:	c7 85 08 ed ff ff 01 	movl   $0x1,-0x12f8(%rbp)
    7f01bb3ff22a:	00 00 00 
    7f01bb3ff22d:	e9 0a 00 00 00       	jmpq   0x7f01bb3ff23c
    7f01bb3ff232:	c7 85 08 ed ff ff 00 	movl   $0x0,-0x12f8(%rbp)
    7f01bb3ff239:	00 00 00 
    7f01bb3ff23c:	8b 85 10 ed ff ff    	mov    -0x12f0(%rbp),%eax
    7f01bb3ff242:	85 c0                	test   %eax,%eax
    7f01bb3ff244:	0f 84 13 00 00 00    	je     0x7f01bb3ff25d
    7f01bb3ff24a:	48 8b 85 00 f8 ff ff 	mov    -0x800(%rbp),%rax
    7f01bb3ff251:	48 89 85 00 ed ff ff 	mov    %rax,-0x1300(%rbp)
    7f01bb3ff258:	e9 0b 00 00 00       	jmpq   0x7f01bb3ff268
    7f01bb3ff25d:	48 c7 85 00 ed ff ff 	movq   $0x0,-0x1300(%rbp)
    7f01bb3ff264:	00 00 00 00 
    7f01bb3ff268:	48 8b 85 00 ed ff ff 	mov    -0x1300(%rbp),%rax
    7f01bb3ff26f:	48 25 ff ff 0f 00    	and    $0xfffff,%rax
    7f01bb3ff275:	89 85 f8 ec ff ff    	mov    %eax,-0x1308(%rbp)
    7f01bb3ff27b:	8b 85 08 ed ff ff    	mov    -0x12f8(%rbp),%eax
    7f01bb3ff281:	85 c0                	test   %eax,%eax
    7f01bb3ff283:	0f 84 11 00 00 00    	je     0x7f01bb3ff29a
    7f01bb3ff289:	8b 85 f8 ec ff ff    	mov    -0x1308(%rbp),%eax
    7f01bb3ff28f:	89 85 f0 ec ff ff    	mov    %eax,-0x1310(%rbp)
    7f01bb3ff295:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff2a6
    7f01bb3ff29a:	8b 85 f8 fd ff ff    	mov    -0x208(%rbp),%eax
    7f01bb3ff2a0:	89 85 f0 ec ff ff    	mov    %eax,-0x1310(%rbp)
    7f01bb3ff2a6:	8b 85 f8 fd ff ff    	mov    -0x208(%rbp),%eax
    7f01bb3ff2ac:	ff c0                	inc    %eax
    7f01bb3ff2ae:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff2b3:	89 85 e8 ec ff ff    	mov    %eax,-0x1318(%rbp)
    7f01bb3ff2b9:	41 83 fe 01          	cmp    $0x1,%r14d
    7f01bb3ff2bd:	0f 85 11 00 00 00    	jne    0x7f01bb3ff2d4
    7f01bb3ff2c3:	8b 85 f0 ec ff ff    	mov    -0x1310(%rbp),%eax
    7f01bb3ff2c9:	89 85 e0 ec ff ff    	mov    %eax,-0x1320(%rbp)
    7f01bb3ff2cf:	e9 2a 00 00 00       	jmpq   0x7f01bb3ff2fe
    7f01bb3ff2d4:	41 81 fe 00 00 08 00 	cmp    $0x80000,%r14d
    7f01bb3ff2db:	0f 85 11 00 00 00    	jne    0x7f01bb3ff2f2
    7f01bb3ff2e1:	8b 85 e8 ec ff ff    	mov    -0x1318(%rbp),%eax
    7f01bb3ff2e7:	89 85 e0 ec ff ff    	mov    %eax,-0x1320(%rbp)
    7f01bb3ff2ed:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff2fe
    7f01bb3ff2f2:	8b 85 f8 fd ff ff    	mov    -0x208(%rbp),%eax
    7f01bb3ff2f8:	89 85 e0 ec ff ff    	mov    %eax,-0x1320(%rbp)
    7f01bb3ff2fe:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb3ff304:	23 85 08 ed ff ff    	and    -0x12f8(%rbp),%eax
    7f01bb3ff30a:	48 8b 8d 00 ed ff ff 	mov    -0x1300(%rbp),%rcx
    7f01bb3ff311:	48 c1 e9 20          	shr    $0x20,%rcx
    7f01bb3ff315:	48 81 e1 ff ff 0f 00 	and    $0xfffff,%rcx
    7f01bb3ff31c:	ff c9                	dec    %ecx
    7f01bb3ff31e:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3ff324:	89 8d d8 ec ff ff    	mov    %ecx,-0x1328(%rbp)
    7f01bb3ff32a:	89 85 d0 ec ff ff    	mov    %eax,-0x1330(%rbp)
    7f01bb3ff330:	85 c0                	test   %eax,%eax
    7f01bb3ff332:	0f 84 11 00 00 00    	je     0x7f01bb3ff349
    7f01bb3ff338:	8b 85 d8 ec ff ff    	mov    -0x1328(%rbp),%eax
    7f01bb3ff33e:	89 85 c8 ec ff ff    	mov    %eax,-0x1338(%rbp)
    7f01bb3ff344:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff355
    7f01bb3ff349:	8b 85 f0 fd ff ff    	mov    -0x210(%rbp),%eax
    7f01bb3ff34f:	89 85 c8 ec ff ff    	mov    %eax,-0x1338(%rbp)
    7f01bb3ff355:	8b 85 80 ef ff ff    	mov    -0x1080(%rbp),%eax
    7f01bb3ff35b:	23 85 28 ef ff ff    	and    -0x10d8(%rbp),%eax
    7f01bb3ff361:	8b 8d f8 fd ff ff    	mov    -0x208(%rbp),%ecx
    7f01bb3ff367:	83 e1 0f             	and    $0xf,%ecx
    7f01bb3ff36a:	89 8d c0 ec ff ff    	mov    %ecx,-0x1340(%rbp)
    7f01bb3ff370:	c1 e1 05             	shl    $0x5,%ecx
    7f01bb3ff373:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3ff379:	49 8b d7             	mov    %r15,%rdx
    7f01bb3ff37c:	48 81 c2 f8 46 00 00 	add    $0x46f8,%rdx
    7f01bb3ff383:	49 8b f7             	mov    %r15,%rsi
    7f01bb3ff386:	48 81 c6 88 2b 00 00 	add    $0x2b88,%rsi
    7f01bb3ff38d:	44 8b c1             	mov    %ecx,%r8d
    7f01bb3ff390:	89 8d b8 ec ff ff    	mov    %ecx,-0x1348(%rbp)
    7f01bb3ff396:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ff39b:	48 89 95 b0 ec ff ff 	mov    %rdx,-0x1350(%rbp)
    7f01bb3ff3a2:	48 89 b5 a8 ec ff ff 	mov    %rsi,-0x1358(%rbp)
    7f01bb3ff3a9:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ff3ae:	48 8b bd a8 ec ff ff 	mov    -0x1358(%rbp),%rdi
    7f01bb3ff3b5:	89 85 a0 ec ff ff    	mov    %eax,-0x1360(%rbp)
    7f01bb3ff3bb:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ff3c0:	e8 75 21 8d ff       	callq  0x7f01bacd153a
    7f01bb3ff3c5:	41 8b 87 87 2b 00 00 	mov    0x2b87(%r15),%eax
    7f01bb3ff3cc:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3ff3cf:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff3d4:	89 85 98 ec ff ff    	mov    %eax,-0x1368(%rbp)
    7f01bb3ff3da:	8b 85 a0 ec ff ff    	mov    -0x1360(%rbp),%eax
    7f01bb3ff3e0:	85 c0                	test   %eax,%eax
    7f01bb3ff3e2:	0f 84 11 00 00 00    	je     0x7f01bb3ff3f9
    7f01bb3ff3e8:	8b 85 98 ec ff ff    	mov    -0x1368(%rbp),%eax
    7f01bb3ff3ee:	89 85 90 ec ff ff    	mov    %eax,-0x1370(%rbp)
    7f01bb3ff3f4:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff405
    7f01bb3ff3f9:	8b 85 e8 fd ff ff    	mov    -0x218(%rbp),%eax
    7f01bb3ff3ff:	89 85 90 ec ff ff    	mov    %eax,-0x1370(%rbp)
    7f01bb3ff405:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff408:	48 05 98 4a 00 00    	add    $0x4a98,%rax
    7f01bb3ff40e:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff411:	48 81 c1 c8 2b 00 00 	add    $0x2bc8,%rcx
    7f01bb3ff418:	44 8b 85 b8 ec ff ff 	mov    -0x1348(%rbp),%r8d
    7f01bb3ff41f:	48 89 8d 88 ec ff ff 	mov    %rcx,-0x1378(%rbp)
    7f01bb3ff426:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ff42b:	48 8b d0             	mov    %rax,%rdx
    7f01bb3ff42e:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ff433:	48 8b bd 88 ec ff ff 	mov    -0x1378(%rbp),%rdi
    7f01bb3ff43a:	48 89 85 80 ec ff ff 	mov    %rax,-0x1380(%rbp)
    7f01bb3ff441:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ff446:	e8 ef 20 8d ff       	callq  0x7f01bacd153a
    7f01bb3ff44b:	41 8b 87 c7 2b 00 00 	mov    0x2bc7(%r15),%eax
    7f01bb3ff452:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3ff455:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff45a:	89 85 78 ec ff ff    	mov    %eax,-0x1388(%rbp)
    7f01bb3ff460:	41 83 fe 08          	cmp    $0x8,%r14d
    7f01bb3ff464:	0f 85 11 00 00 00    	jne    0x7f01bb3ff47b
    7f01bb3ff46a:	8b 85 90 ec ff ff    	mov    -0x1370(%rbp),%eax
    7f01bb3ff470:	89 85 70 ec ff ff    	mov    %eax,-0x1390(%rbp)
    7f01bb3ff476:	e9 2a 00 00 00       	jmpq   0x7f01bb3ff4a5
    7f01bb3ff47b:	41 81 fe 00 00 10 00 	cmp    $0x100000,%r14d
    7f01bb3ff482:	0f 85 11 00 00 00    	jne    0x7f01bb3ff499
    7f01bb3ff488:	8b 85 78 ec ff ff    	mov    -0x1388(%rbp),%eax
    7f01bb3ff48e:	89 85 70 ec ff ff    	mov    %eax,-0x1390(%rbp)
    7f01bb3ff494:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff4a5
    7f01bb3ff499:	8b 85 e8 fd ff ff    	mov    -0x218(%rbp),%eax
    7f01bb3ff49f:	89 85 70 ec ff ff    	mov    %eax,-0x1390(%rbp)
    7f01bb3ff4a5:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff4a8:	48 05 80 47 00 00    	add    $0x4780,%rax
    7f01bb3ff4ae:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff4b1:	48 81 c1 08 2c 00 00 	add    $0x2c08,%rcx
    7f01bb3ff4b8:	44 8b 85 b8 ec ff ff 	mov    -0x1348(%rbp),%r8d
    7f01bb3ff4bf:	48 89 8d 68 ec ff ff 	mov    %rcx,-0x1398(%rbp)
    7f01bb3ff4c6:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ff4cb:	48 8b d0             	mov    %rax,%rdx
    7f01bb3ff4ce:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ff4d3:	48 8b bd 68 ec ff ff 	mov    -0x1398(%rbp),%rdi
    7f01bb3ff4da:	48 89 85 60 ec ff ff 	mov    %rax,-0x13a0(%rbp)
    7f01bb3ff4e1:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ff4e6:	e8 4f 20 8d ff       	callq  0x7f01bacd153a
    7f01bb3ff4eb:	41 8b 87 07 2c 00 00 	mov    0x2c07(%r15),%eax
    7f01bb3ff4f2:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3ff4f5:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff4fa:	89 85 58 ec ff ff    	mov    %eax,-0x13a8(%rbp)
    7f01bb3ff500:	8b 85 a0 ec ff ff    	mov    -0x1360(%rbp),%eax
    7f01bb3ff506:	85 c0                	test   %eax,%eax
    7f01bb3ff508:	0f 84 11 00 00 00    	je     0x7f01bb3ff51f
    7f01bb3ff50e:	8b 85 58 ec ff ff    	mov    -0x13a8(%rbp),%eax
    7f01bb3ff514:	89 85 50 ec ff ff    	mov    %eax,-0x13b0(%rbp)
    7f01bb3ff51a:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff52b
    7f01bb3ff51f:	8b 85 e0 fd ff ff    	mov    -0x220(%rbp),%eax
    7f01bb3ff525:	89 85 50 ec ff ff    	mov    %eax,-0x13b0(%rbp)
    7f01bb3ff52b:	8b 85 88 fc ff ff    	mov    -0x378(%rbp),%eax
    7f01bb3ff531:	83 e0 01             	and    $0x1,%eax
    7f01bb3ff534:	89 85 48 ec ff ff    	mov    %eax,-0x13b8(%rbp)
    7f01bb3ff53a:	f7 d0                	not    %eax
    7f01bb3ff53c:	83 e0 01             	and    $0x1,%eax
    7f01bb3ff53f:	8b 8d 88 fc ff ff    	mov    -0x378(%rbp),%ecx
    7f01bb3ff545:	d1 e9                	shr    %ecx
    7f01bb3ff547:	83 e1 01             	and    $0x1,%ecx
    7f01bb3ff54a:	89 8d 40 ec ff ff    	mov    %ecx,-0x13c0(%rbp)
    7f01bb3ff550:	f7 d1                	not    %ecx
    7f01bb3ff552:	83 e1 01             	and    $0x1,%ecx
    7f01bb3ff555:	8b 95 88 fc ff ff    	mov    -0x378(%rbp),%edx
    7f01bb3ff55b:	c1 ea 02             	shr    $0x2,%edx
    7f01bb3ff55e:	83 e2 01             	and    $0x1,%edx
    7f01bb3ff561:	8b f2                	mov    %edx,%esi
    7f01bb3ff563:	f7 d6                	not    %esi
    7f01bb3ff565:	83 e6 01             	and    $0x1,%esi
    7f01bb3ff568:	33 ff                	xor    %edi,%edi
    7f01bb3ff56a:	3b bd 18 fc ff ff    	cmp    -0x3e8(%rbp),%edi
    7f01bb3ff570:	40 0f 94 c7          	sete   %dil
    7f01bb3ff574:	40 0f b6 ff          	movzbl %dil,%edi
    7f01bb3ff578:	44 8b 85 68 fc ff ff 	mov    -0x398(%rbp),%r8d
    7f01bb3ff57f:	41 c1 e8 02          	shr    $0x2,%r8d
    7f01bb3ff583:	41 83 e0 01          	and    $0x1,%r8d
    7f01bb3ff587:	44 89 85 38 ec ff ff 	mov    %r8d,-0x13c8(%rbp)
    7f01bb3ff58e:	45 85 c0             	test   %r8d,%r8d
    7f01bb3ff591:	41 0f 94 c0          	sete   %r8b
    7f01bb3ff595:	45 0f b6 c0          	movzbl %r8b,%r8d
    7f01bb3ff599:	89 bd 30 ec ff ff    	mov    %edi,-0x13d0(%rbp)
    7f01bb3ff59f:	41 0b f8             	or     %r8d,%edi
    7f01bb3ff5a2:	44 8b 85 70 fc ff ff 	mov    -0x390(%rbp),%r8d
    7f01bb3ff5a9:	41 81 e0 ff ff 0f 00 	and    $0xfffff,%r8d
    7f01bb3ff5b0:	41 83 e0 1f          	and    $0x1f,%r8d
    7f01bb3ff5b4:	41 83 e0 1f          	and    $0x1f,%r8d
    7f01bb3ff5b8:	89 8d 28 ec ff ff    	mov    %ecx,-0x13d8(%rbp)
    7f01bb3ff5be:	44 89 85 20 ec ff ff 	mov    %r8d,-0x13e0(%rbp)
    7f01bb3ff5c5:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    7f01bb3ff5cb:	8b 8d 20 ec ff ff    	mov    -0x13e0(%rbp),%ecx
    7f01bb3ff5d1:	41 d3 e0             	shl    %cl,%r8d
    7f01bb3ff5d4:	44 89 85 18 ec ff ff 	mov    %r8d,-0x13e8(%rbp)
    7f01bb3ff5db:	8b 8d 38 fc ff ff    	mov    -0x3c8(%rbp),%ecx
    7f01bb3ff5e1:	44 23 c1             	and    %ecx,%r8d
    7f01bb3ff5e4:	33 c9                	xor    %ecx,%ecx
    7f01bb3ff5e6:	41 3b c8             	cmp    %r8d,%ecx
    7f01bb3ff5e9:	0f 94 c1             	sete   %cl
    7f01bb3ff5ec:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ff5ef:	89 bd 10 ec ff ff    	mov    %edi,-0x13f0(%rbp)
    7f01bb3ff5f5:	23 f9                	and    %ecx,%edi
    7f01bb3ff5f7:	89 95 08 ec ff ff    	mov    %edx,-0x13f8(%rbp)
    7f01bb3ff5fd:	85 d2                	test   %edx,%edx
    7f01bb3ff5ff:	0f 94 c1             	sete   %cl
    7f01bb3ff602:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ff605:	0b f9                	or     %ecx,%edi
    7f01bb3ff607:	89 bd 00 ec ff ff    	mov    %edi,-0x1400(%rbp)
    7f01bb3ff60d:	0b f7                	or     %edi,%esi
    7f01bb3ff60f:	89 b5 f8 eb ff ff    	mov    %esi,-0x1408(%rbp)
    7f01bb3ff615:	8b 8d 28 ec ff ff    	mov    -0x13d8(%rbp),%ecx
    7f01bb3ff61b:	0b f1                	or     %ecx,%esi
    7f01bb3ff61d:	89 b5 f0 eb ff ff    	mov    %esi,-0x1410(%rbp)
    7f01bb3ff623:	0b c6                	or     %esi,%eax
    7f01bb3ff625:	8b 8d e0 fd ff ff    	mov    -0x220(%rbp),%ecx
    7f01bb3ff62b:	ff c1                	inc    %ecx
    7f01bb3ff62d:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3ff633:	89 8d e8 eb ff ff    	mov    %ecx,-0x1418(%rbp)
    7f01bb3ff639:	89 85 e0 eb ff ff    	mov    %eax,-0x1420(%rbp)
    7f01bb3ff63f:	85 c0                	test   %eax,%eax
    7f01bb3ff641:	0f 84 11 00 00 00    	je     0x7f01bb3ff658
    7f01bb3ff647:	8b 85 e8 eb ff ff    	mov    -0x1418(%rbp),%eax
    7f01bb3ff64d:	89 85 d8 eb ff ff    	mov    %eax,-0x1428(%rbp)
    7f01bb3ff653:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff664
    7f01bb3ff658:	8b 85 e0 fd ff ff    	mov    -0x220(%rbp),%eax
    7f01bb3ff65e:	89 85 d8 eb ff ff    	mov    %eax,-0x1428(%rbp)
    7f01bb3ff664:	49 8b c7             	mov    %r15,%rax
    7f01bb3ff667:	48 05 d8 4a 00 00    	add    $0x4ad8,%rax
    7f01bb3ff66d:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff670:	48 81 c1 48 2c 00 00 	add    $0x2c48,%rcx
    7f01bb3ff677:	44 8b 85 b8 ec ff ff 	mov    -0x1348(%rbp),%r8d
    7f01bb3ff67e:	48 89 8d d0 eb ff ff 	mov    %rcx,-0x1430(%rbp)
    7f01bb3ff685:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ff68a:	48 8b d0             	mov    %rax,%rdx
    7f01bb3ff68d:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ff692:	48 8b bd d0 eb ff ff 	mov    -0x1430(%rbp),%rdi
    7f01bb3ff699:	48 89 85 c8 eb ff ff 	mov    %rax,-0x1438(%rbp)
    7f01bb3ff6a0:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ff6a5:	e8 90 1e 8d ff       	callq  0x7f01bacd153a
    7f01bb3ff6aa:	41 8b 87 47 2c 00 00 	mov    0x2c47(%r15),%eax
    7f01bb3ff6b1:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3ff6b4:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff6b9:	89 85 c0 eb ff ff    	mov    %eax,-0x1440(%rbp)
    7f01bb3ff6bf:	41 83 fe 08          	cmp    $0x8,%r14d
    7f01bb3ff6c3:	0f 85 11 00 00 00    	jne    0x7f01bb3ff6da
    7f01bb3ff6c9:	8b 85 50 ec ff ff    	mov    -0x13b0(%rbp),%eax
    7f01bb3ff6cf:	89 85 b8 eb ff ff    	mov    %eax,-0x1448(%rbp)
    7f01bb3ff6d5:	e9 48 00 00 00       	jmpq   0x7f01bb3ff722
    7f01bb3ff6da:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb3ff6e1:	0f 85 11 00 00 00    	jne    0x7f01bb3ff6f8
    7f01bb3ff6e7:	8b 85 d8 eb ff ff    	mov    -0x1428(%rbp),%eax
    7f01bb3ff6ed:	89 85 b8 eb ff ff    	mov    %eax,-0x1448(%rbp)
    7f01bb3ff6f3:	e9 2a 00 00 00       	jmpq   0x7f01bb3ff722
    7f01bb3ff6f8:	41 81 fe 00 00 10 00 	cmp    $0x100000,%r14d
    7f01bb3ff6ff:	0f 85 11 00 00 00    	jne    0x7f01bb3ff716
    7f01bb3ff705:	8b 85 c0 eb ff ff    	mov    -0x1440(%rbp),%eax
    7f01bb3ff70b:	89 85 b8 eb ff ff    	mov    %eax,-0x1448(%rbp)
    7f01bb3ff711:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff722
    7f01bb3ff716:	8b 85 e0 fd ff ff    	mov    -0x220(%rbp),%eax
    7f01bb3ff71c:	89 85 b8 eb ff ff    	mov    %eax,-0x1448(%rbp)
    7f01bb3ff722:	8b 85 e8 ec ff ff    	mov    -0x1318(%rbp),%eax
    7f01bb3ff728:	83 e0 0f             	and    $0xf,%eax
    7f01bb3ff72b:	c1 e0 05             	shl    $0x5,%eax
    7f01bb3ff72e:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff733:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ff736:	48 81 c1 d8 4a 00 00 	add    $0x4ad8,%rcx
    7f01bb3ff73d:	49 8b d7             	mov    %r15,%rdx
    7f01bb3ff740:	48 81 c2 88 2c 00 00 	add    $0x2c88,%rdx
    7f01bb3ff747:	44 8b c0             	mov    %eax,%r8d
    7f01bb3ff74a:	48 89 8d b0 eb ff ff 	mov    %rcx,-0x1450(%rbp)
    7f01bb3ff751:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ff756:	48 89 95 a8 eb ff ff 	mov    %rdx,-0x1458(%rbp)
    7f01bb3ff75d:	48 8b 95 b0 eb ff ff 	mov    -0x1450(%rbp),%rdx
    7f01bb3ff764:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ff769:	48 8b bd a8 eb ff ff 	mov    -0x1458(%rbp),%rdi
    7f01bb3ff770:	89 85 a0 eb ff ff    	mov    %eax,-0x1460(%rbp)
    7f01bb3ff776:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ff77b:	e8 ba 1d 8d ff       	callq  0x7f01bacd153a
    7f01bb3ff780:	41 8b 87 87 2c 00 00 	mov    0x2c87(%r15),%eax
    7f01bb3ff787:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3ff78a:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff78f:	89 85 98 eb ff ff    	mov    %eax,-0x1468(%rbp)
    7f01bb3ff795:	41 8b 87 7f 47 00 00 	mov    0x477f(%r15),%eax
    7f01bb3ff79c:	c1 e8 08             	shr    $0x8,%eax
    7f01bb3ff79f:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff7a4:	89 85 90 eb ff ff    	mov    %eax,-0x1470(%rbp)
    7f01bb3ff7aa:	8b 85 28 ef ff ff    	mov    -0x10d8(%rbp),%eax
    7f01bb3ff7b0:	85 c0                	test   %eax,%eax
    7f01bb3ff7b2:	0f 84 11 00 00 00    	je     0x7f01bb3ff7c9
    7f01bb3ff7b8:	8b 85 90 eb ff ff    	mov    -0x1470(%rbp),%eax
    7f01bb3ff7be:	89 85 88 eb ff ff    	mov    %eax,-0x1478(%rbp)
    7f01bb3ff7c4:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff7d5
    7f01bb3ff7c9:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    7f01bb3ff7cf:	89 85 88 eb ff ff    	mov    %eax,-0x1478(%rbp)
    7f01bb3ff7d5:	41 83 fe 40          	cmp    $0x40,%r14d
    7f01bb3ff7d9:	0f 85 11 00 00 00    	jne    0x7f01bb3ff7f0
    7f01bb3ff7df:	8b 85 98 eb ff ff    	mov    -0x1468(%rbp),%eax
    7f01bb3ff7e5:	89 85 80 eb ff ff    	mov    %eax,-0x1480(%rbp)
    7f01bb3ff7eb:	e9 27 00 00 00       	jmpq   0x7f01bb3ff817
    7f01bb3ff7f0:	41 83 fe 20          	cmp    $0x20,%r14d
    7f01bb3ff7f4:	0f 85 11 00 00 00    	jne    0x7f01bb3ff80b
    7f01bb3ff7fa:	8b 85 88 eb ff ff    	mov    -0x1478(%rbp),%eax
    7f01bb3ff800:	89 85 80 eb ff ff    	mov    %eax,-0x1480(%rbp)
    7f01bb3ff806:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff817
    7f01bb3ff80b:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    7f01bb3ff811:	89 85 80 eb ff ff    	mov    %eax,-0x1480(%rbp)
    7f01bb3ff817:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    7f01bb3ff81d:	ff c8                	dec    %eax
    7f01bb3ff81f:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff824:	89 85 78 eb ff ff    	mov    %eax,-0x1488(%rbp)
    7f01bb3ff82a:	41 81 fe 80 00 00 00 	cmp    $0x80,%r14d
    7f01bb3ff831:	0f 85 11 00 00 00    	jne    0x7f01bb3ff848
    7f01bb3ff837:	8b 85 78 eb ff ff    	mov    -0x1488(%rbp),%eax
    7f01bb3ff83d:	89 85 70 eb ff ff    	mov    %eax,-0x1490(%rbp)
    7f01bb3ff843:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff854
    7f01bb3ff848:	8b 85 d0 fd ff ff    	mov    -0x230(%rbp),%eax
    7f01bb3ff84e:	89 85 70 eb ff ff    	mov    %eax,-0x1490(%rbp)
    7f01bb3ff854:	8b 85 e8 fd ff ff    	mov    -0x218(%rbp),%eax
    7f01bb3ff85a:	c1 e8 05             	shr    $0x5,%eax
    7f01bb3ff85d:	89 85 68 eb ff ff    	mov    %eax,-0x1498(%rbp)
    7f01bb3ff863:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3ff866:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff86b:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3ff86e:	89 85 60 eb ff ff    	mov    %eax,-0x14a0(%rbp)
    7f01bb3ff874:	3b 85 c8 fd ff ff    	cmp    -0x238(%rbp),%eax
    7f01bb3ff87a:	0f 94 c0             	sete   %al
    7f01bb3ff87d:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ff880:	89 85 58 eb ff ff    	mov    %eax,-0x14a8(%rbp)
    7f01bb3ff886:	85 c0                	test   %eax,%eax
    7f01bb3ff888:	0f 84 11 00 00 00    	je     0x7f01bb3ff89f
    7f01bb3ff88e:	8b 85 c8 fd ff ff    	mov    -0x238(%rbp),%eax
    7f01bb3ff894:	89 85 50 eb ff ff    	mov    %eax,-0x14b0(%rbp)
    7f01bb3ff89a:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff8ab
    7f01bb3ff89f:	8b 85 60 eb ff ff    	mov    -0x14a0(%rbp),%eax
    7f01bb3ff8a5:	89 85 50 eb ff ff    	mov    %eax,-0x14b0(%rbp)
    7f01bb3ff8ab:	41 81 fe 80 00 00 00 	cmp    $0x80,%r14d
    7f01bb3ff8b2:	0f 85 11 00 00 00    	jne    0x7f01bb3ff8c9
    7f01bb3ff8b8:	8b 85 50 eb ff ff    	mov    -0x14b0(%rbp),%eax
    7f01bb3ff8be:	89 85 48 eb ff ff    	mov    %eax,-0x14b8(%rbp)
    7f01bb3ff8c4:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff8d5
    7f01bb3ff8c9:	8b 85 c8 fd ff ff    	mov    -0x238(%rbp),%eax
    7f01bb3ff8cf:	89 85 48 eb ff ff    	mov    %eax,-0x14b8(%rbp)
    7f01bb3ff8d5:	8b 85 e8 fd ff ff    	mov    -0x218(%rbp),%eax
    7f01bb3ff8db:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3ff8de:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff8e3:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3ff8e6:	89 85 40 eb ff ff    	mov    %eax,-0x14c0(%rbp)
    7f01bb3ff8ec:	3b 85 c0 fd ff ff    	cmp    -0x240(%rbp),%eax
    7f01bb3ff8f2:	0f 94 c0             	sete   %al
    7f01bb3ff8f5:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ff8f8:	89 85 38 eb ff ff    	mov    %eax,-0x14c8(%rbp)
    7f01bb3ff8fe:	85 c0                	test   %eax,%eax
    7f01bb3ff900:	0f 84 11 00 00 00    	je     0x7f01bb3ff917
    7f01bb3ff906:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
    7f01bb3ff90c:	89 85 30 eb ff ff    	mov    %eax,-0x14d0(%rbp)
    7f01bb3ff912:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff923
    7f01bb3ff917:	8b 85 40 eb ff ff    	mov    -0x14c0(%rbp),%eax
    7f01bb3ff91d:	89 85 30 eb ff ff    	mov    %eax,-0x14d0(%rbp)
    7f01bb3ff923:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
    7f01bb3ff92a:	0f 85 11 00 00 00    	jne    0x7f01bb3ff941
    7f01bb3ff930:	8b 85 30 eb ff ff    	mov    -0x14d0(%rbp),%eax
    7f01bb3ff936:	89 85 28 eb ff ff    	mov    %eax,-0x14d8(%rbp)
    7f01bb3ff93c:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff94d
    7f01bb3ff941:	8b 85 c0 fd ff ff    	mov    -0x240(%rbp),%eax
    7f01bb3ff947:	89 85 28 eb ff ff    	mov    %eax,-0x14d8(%rbp)
    7f01bb3ff94d:	8b 85 e0 fd ff ff    	mov    -0x220(%rbp),%eax
    7f01bb3ff953:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3ff956:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ff95b:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3ff95e:	89 85 20 eb ff ff    	mov    %eax,-0x14e0(%rbp)
    7f01bb3ff964:	8b 85 f0 f4 ff ff    	mov    -0xb10(%rbp),%eax
    7f01bb3ff96a:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3ff96d:	0f 94 c0             	sete   %al
    7f01bb3ff970:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ff973:	8b 8d 08 f6 ff ff    	mov    -0x9f8(%rbp),%ecx
    7f01bb3ff979:	23 c1                	and    %ecx,%eax
    7f01bb3ff97b:	89 85 18 eb ff ff    	mov    %eax,-0x14e8(%rbp)
    7f01bb3ff981:	8b 8d 50 f5 ff ff    	mov    -0xab0(%rbp),%ecx
    7f01bb3ff987:	23 c1                	and    %ecx,%eax
    7f01bb3ff989:	8b 8d b8 fd ff ff    	mov    -0x248(%rbp),%ecx
    7f01bb3ff98f:	ff c1                	inc    %ecx
    7f01bb3ff991:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb3ff997:	89 8d 10 eb ff ff    	mov    %ecx,-0x14f0(%rbp)
    7f01bb3ff99d:	89 85 08 eb ff ff    	mov    %eax,-0x14f8(%rbp)
    7f01bb3ff9a3:	85 c0                	test   %eax,%eax
    7f01bb3ff9a5:	0f 84 11 00 00 00    	je     0x7f01bb3ff9bc
    7f01bb3ff9ab:	8b 85 10 eb ff ff    	mov    -0x14f0(%rbp),%eax
    7f01bb3ff9b1:	89 85 00 eb ff ff    	mov    %eax,-0x1500(%rbp)
    7f01bb3ff9b7:	e9 0c 00 00 00       	jmpq   0x7f01bb3ff9c8
    7f01bb3ff9bc:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
    7f01bb3ff9c2:	89 85 00 eb ff ff    	mov    %eax,-0x1500(%rbp)
    7f01bb3ff9c8:	41 81 fe 00 10 00 00 	cmp    $0x1000,%r14d
    7f01bb3ff9cf:	0f 85 11 00 00 00    	jne    0x7f01bb3ff9e6
    7f01bb3ff9d5:	8b 85 20 eb ff ff    	mov    -0x14e0(%rbp),%eax
    7f01bb3ff9db:	89 85 f8 ea ff ff    	mov    %eax,-0x1508(%rbp)
    7f01bb3ff9e1:	e9 2a 00 00 00       	jmpq   0x7f01bb3ffa10
    7f01bb3ff9e6:	41 81 fe 00 80 00 00 	cmp    $0x8000,%r14d
    7f01bb3ff9ed:	0f 85 11 00 00 00    	jne    0x7f01bb3ffa04
    7f01bb3ff9f3:	8b 85 00 eb ff ff    	mov    -0x1500(%rbp),%eax
    7f01bb3ff9f9:	89 85 f8 ea ff ff    	mov    %eax,-0x1508(%rbp)
    7f01bb3ff9ff:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffa10
    7f01bb3ffa04:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
    7f01bb3ffa0a:	89 85 f8 ea ff ff    	mov    %eax,-0x1508(%rbp)
    7f01bb3ffa10:	8b 85 d8 fd ff ff    	mov    -0x228(%rbp),%eax
    7f01bb3ffa16:	c1 e0 02             	shl    $0x2,%eax
    7f01bb3ffa19:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ffa1e:	83 c0 3f             	add    $0x3f,%eax
    7f01bb3ffa21:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ffa26:	c1 e8 06             	shr    $0x6,%eax
    7f01bb3ffa29:	89 85 f0 ea ff ff    	mov    %eax,-0x1510(%rbp)
    7f01bb3ffa2f:	41 81 fe 00 10 00 00 	cmp    $0x1000,%r14d
    7f01bb3ffa36:	0f 85 11 00 00 00    	jne    0x7f01bb3ffa4d
    7f01bb3ffa3c:	8b 85 f0 ea ff ff    	mov    -0x1510(%rbp),%eax
    7f01bb3ffa42:	89 85 e8 ea ff ff    	mov    %eax,-0x1518(%rbp)
    7f01bb3ffa48:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffa59
    7f01bb3ffa4d:	8b 85 b0 fd ff ff    	mov    -0x250(%rbp),%eax
    7f01bb3ffa53:	89 85 e8 ea ff ff    	mov    %eax,-0x1518(%rbp)
    7f01bb3ffa59:	8b 85 b0 fd ff ff    	mov    -0x250(%rbp),%eax
    7f01bb3ffa5f:	ff c8                	dec    %eax
    7f01bb3ffa61:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ffa66:	89 85 e0 ea ff ff    	mov    %eax,-0x1520(%rbp)
    7f01bb3ffa6c:	41 81 fe 00 20 00 00 	cmp    $0x2000,%r14d
    7f01bb3ffa73:	0f 85 11 00 00 00    	jne    0x7f01bb3ffa8a
    7f01bb3ffa79:	8b 85 e0 ea ff ff    	mov    -0x1520(%rbp),%eax
    7f01bb3ffa7f:	89 85 d8 ea ff ff    	mov    %eax,-0x1528(%rbp)
    7f01bb3ffa85:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffa96
    7f01bb3ffa8a:	8b 85 a8 fd ff ff    	mov    -0x258(%rbp),%eax
    7f01bb3ffa90:	89 85 d8 ea ff ff    	mov    %eax,-0x1528(%rbp)
    7f01bb3ffa96:	8b 85 b0 fd ff ff    	mov    -0x250(%rbp),%eax
    7f01bb3ffa9c:	2b 85 b8 fd ff ff    	sub    -0x248(%rbp),%eax
    7f01bb3ffaa2:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ffaa7:	83 e0 3f             	and    $0x3f,%eax
    7f01bb3ffaaa:	89 85 d0 ea ff ff    	mov    %eax,-0x1530(%rbp)
    7f01bb3ffab0:	41 81 fe 00 20 00 00 	cmp    $0x2000,%r14d
    7f01bb3ffab7:	0f 85 11 00 00 00    	jne    0x7f01bb3fface
    7f01bb3ffabd:	8b 85 d0 ea ff ff    	mov    -0x1530(%rbp),%eax
    7f01bb3ffac3:	89 85 c8 ea ff ff    	mov    %eax,-0x1538(%rbp)
    7f01bb3ffac9:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffada
    7f01bb3fface:	8b 85 a0 fd ff ff    	mov    -0x260(%rbp),%eax
    7f01bb3ffad4:	89 85 c8 ea ff ff    	mov    %eax,-0x1538(%rbp)
    7f01bb3ffada:	41 81 fe 00 00 01 00 	cmp    $0x10000,%r14d
    7f01bb3ffae1:	0f 94 c0             	sete   %al
    7f01bb3ffae4:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffae7:	8b 8d 40 fe ff ff    	mov    -0x1c0(%rbp),%ecx
    7f01bb3ffaed:	3b 8d a0 fd ff ff    	cmp    -0x260(%rbp),%ecx
    7f01bb3ffaf3:	0f 94 c1             	sete   %cl
    7f01bb3ffaf6:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ffaf9:	89 85 c0 ea ff ff    	mov    %eax,-0x1540(%rbp)
    7f01bb3ffaff:	89 8d b8 ea ff ff    	mov    %ecx,-0x1548(%rbp)
    7f01bb3ffb05:	23 c1                	and    %ecx,%eax
    7f01bb3ffb07:	89 85 b0 ea ff ff    	mov    %eax,-0x1550(%rbp)
    7f01bb3ffb0d:	8b 85 e8 fd ff ff    	mov    -0x218(%rbp),%eax
    7f01bb3ffb13:	83 e0 0f             	and    $0xf,%eax
    7f01bb3ffb16:	c1 e0 05             	shl    $0x5,%eax
    7f01bb3ffb19:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb3ffb1e:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ffb21:	48 81 c1 f8 48 00 00 	add    $0x48f8,%rcx
    7f01bb3ffb28:	49 8b d7             	mov    %r15,%rdx
    7f01bb3ffb2b:	48 81 c2 c8 2c 00 00 	add    $0x2cc8,%rdx
    7f01bb3ffb32:	44 8b c0             	mov    %eax,%r8d
    7f01bb3ffb35:	48 89 8d a8 ea ff ff 	mov    %rcx,-0x1558(%rbp)
    7f01bb3ffb3c:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ffb41:	48 89 95 a0 ea ff ff 	mov    %rdx,-0x1560(%rbp)
    7f01bb3ffb48:	48 8b 95 a8 ea ff ff 	mov    -0x1558(%rbp),%rdx
    7f01bb3ffb4f:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ffb54:	48 8b bd a0 ea ff ff 	mov    -0x1560(%rbp),%rdi
    7f01bb3ffb5b:	89 85 98 ea ff ff    	mov    %eax,-0x1568(%rbp)
    7f01bb3ffb61:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ffb66:	e8 cf 19 8d ff       	callq  0x7f01bacd153a
    7f01bb3ffb6b:	41 8b 87 c8 2c 00 00 	mov    0x2cc8(%r15),%eax
    7f01bb3ffb72:	89 85 90 ea ff ff    	mov    %eax,-0x1570(%rbp)
    7f01bb3ffb78:	49 8b c7             	mov    %r15,%rax
    7f01bb3ffb7b:	48 05 58 4b 00 00    	add    $0x4b58,%rax
    7f01bb3ffb81:	49 8b cf             	mov    %r15,%rcx
    7f01bb3ffb84:	48 81 c1 08 2d 00 00 	add    $0x2d08,%rcx
    7f01bb3ffb8b:	44 8b 85 98 ea ff ff 	mov    -0x1568(%rbp),%r8d
    7f01bb3ffb92:	48 89 8d 88 ea ff ff 	mov    %rcx,-0x1578(%rbp)
    7f01bb3ffb99:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb3ffb9e:	48 8b d0             	mov    %rax,%rdx
    7f01bb3ffba1:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb3ffba6:	48 8b bd 88 ea ff ff 	mov    -0x1578(%rbp),%rdi
    7f01bb3ffbad:	48 89 85 80 ea ff ff 	mov    %rax,-0x1580(%rbp)
    7f01bb3ffbb4:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb3ffbb9:	e8 7c 19 8d ff       	callq  0x7f01bacd153a
    7f01bb3ffbbe:	41 8b 87 08 2d 00 00 	mov    0x2d08(%r15),%eax
    7f01bb3ffbc5:	89 85 78 ea ff ff    	mov    %eax,-0x1588(%rbp)
    7f01bb3ffbcb:	8b 85 c0 ed ff ff    	mov    -0x1240(%rbp),%eax
    7f01bb3ffbd1:	85 c0                	test   %eax,%eax
    7f01bb3ffbd3:	0f 84 11 00 00 00    	je     0x7f01bb3ffbea
    7f01bb3ffbd9:	8b 85 90 ea ff ff    	mov    -0x1570(%rbp),%eax
    7f01bb3ffbdf:	89 85 70 ea ff ff    	mov    %eax,-0x1590(%rbp)
    7f01bb3ffbe5:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffbf6
    7f01bb3ffbea:	8b 85 78 ea ff ff    	mov    -0x1588(%rbp),%eax
    7f01bb3ffbf0:	89 85 70 ea ff ff    	mov    %eax,-0x1590(%rbp)
    7f01bb3ffbf6:	8b 85 b0 ea ff ff    	mov    -0x1550(%rbp),%eax
    7f01bb3ffbfc:	85 c0                	test   %eax,%eax
    7f01bb3ffbfe:	0f 84 11 00 00 00    	je     0x7f01bb3ffc15
    7f01bb3ffc04:	8b 85 70 ea ff ff    	mov    -0x1590(%rbp),%eax
    7f01bb3ffc0a:	89 85 68 ea ff ff    	mov    %eax,-0x1598(%rbp)
    7f01bb3ffc10:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffc21
    7f01bb3ffc15:	8b 85 98 fd ff ff    	mov    -0x268(%rbp),%eax
    7f01bb3ffc1b:	89 85 68 ea ff ff    	mov    %eax,-0x1598(%rbp)
    7f01bb3ffc21:	8b 85 40 f5 ff ff    	mov    -0xac0(%rbp),%eax
    7f01bb3ffc27:	23 85 18 eb ff ff    	and    -0x14e8(%rbp),%eax
    7f01bb3ffc2d:	89 85 60 ea ff ff    	mov    %eax,-0x15a0(%rbp)
    7f01bb3ffc33:	41 83 fe 02          	cmp    $0x2,%r14d
    7f01bb3ffc37:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffc4c
    7f01bb3ffc3d:	c7 85 58 ea ff ff 01 	movl   $0x1,-0x15a8(%rbp)
    7f01bb3ffc44:	00 00 00 
    7f01bb3ffc47:	e9 ac 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffc4c:	41 83 fe 04          	cmp    $0x4,%r14d
    7f01bb3ffc50:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffc65
    7f01bb3ffc56:	c7 85 58 ea ff ff 02 	movl   $0x2,-0x15a8(%rbp)
    7f01bb3ffc5d:	00 00 00 
    7f01bb3ffc60:	e9 93 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffc65:	41 83 fe 10          	cmp    $0x10,%r14d
    7f01bb3ffc69:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffc7e
    7f01bb3ffc6f:	c7 85 58 ea ff ff 02 	movl   $0x2,-0x15a8(%rbp)
    7f01bb3ffc76:	00 00 00 
    7f01bb3ffc79:	e9 7a 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffc7e:	41 81 fe 00 02 00 00 	cmp    $0x200,%r14d
    7f01bb3ffc85:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffc9a
    7f01bb3ffc8b:	c7 85 58 ea ff ff 06 	movl   $0x6,-0x15a8(%rbp)
    7f01bb3ffc92:	00 00 00 
    7f01bb3ffc95:	e9 5e 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffc9a:	41 81 fe 00 08 00 00 	cmp    $0x800,%r14d
    7f01bb3ffca1:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffcb6
    7f01bb3ffca7:	c7 85 58 ea ff ff 05 	movl   $0x5,-0x15a8(%rbp)
    7f01bb3ffcae:	00 00 00 
    7f01bb3ffcb1:	e9 42 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffcb6:	41 81 fe 00 40 00 00 	cmp    $0x4000,%r14d
    7f01bb3ffcbd:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffcd2
    7f01bb3ffcc3:	c7 85 58 ea ff ff 03 	movl   $0x3,-0x15a8(%rbp)
    7f01bb3ffcca:	00 00 00 
    7f01bb3ffccd:	e9 26 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffcd2:	41 81 fe 00 80 00 00 	cmp    $0x8000,%r14d
    7f01bb3ffcd9:	0f 85 0f 00 00 00    	jne    0x7f01bb3ffcee
    7f01bb3ffcdf:	c7 85 58 ea ff ff 04 	movl   $0x4,-0x15a8(%rbp)
    7f01bb3ffce6:	00 00 00 
    7f01bb3ffce9:	e9 0a 00 00 00       	jmpq   0x7f01bb3ffcf8
    7f01bb3ffcee:	c7 85 58 ea ff ff 00 	movl   $0x0,-0x15a8(%rbp)
    7f01bb3ffcf5:	00 00 00 
    7f01bb3ffcf8:	8b 85 58 ea ff ff    	mov    -0x15a8(%rbp),%eax
    7f01bb3ffcfe:	83 f8 01             	cmp    $0x1,%eax
    7f01bb3ffd01:	0f 94 c0             	sete   %al
    7f01bb3ffd04:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffd07:	8b 8d 60 ea ff ff    	mov    -0x15a0(%rbp),%ecx
    7f01bb3ffd0d:	23 c1                	and    %ecx,%eax
    7f01bb3ffd0f:	8b 95 50 fd ff ff    	mov    -0x2b0(%rbp),%edx
    7f01bb3ffd15:	8b ca                	mov    %edx,%ecx
    7f01bb3ffd17:	85 c9                	test   %ecx,%ecx
    7f01bb3ffd19:	0f 94 c1             	sete   %cl
    7f01bb3ffd1c:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ffd1f:	23 c8                	and    %eax,%ecx
    7f01bb3ffd21:	8b b5 90 fd ff ff    	mov    -0x270(%rbp),%esi
    7f01bb3ffd27:	ff c6                	inc    %esi
    7f01bb3ffd29:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3ffd2f:	89 b5 50 ea ff ff    	mov    %esi,-0x15b0(%rbp)
    7f01bb3ffd35:	85 c0                	test   %eax,%eax
    7f01bb3ffd37:	0f 94 c0             	sete   %al
    7f01bb3ffd3a:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffd3d:	23 d0                	and    %eax,%edx
    7f01bb3ffd3f:	89 95 48 ea ff ff    	mov    %edx,-0x15b8(%rbp)
    7f01bb3ffd45:	8b 85 90 fd ff ff    	mov    -0x270(%rbp),%eax
    7f01bb3ffd4b:	ff c8                	dec    %eax
    7f01bb3ffd4d:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3ffd52:	89 85 40 ea ff ff    	mov    %eax,-0x15c0(%rbp)
    7f01bb3ffd58:	85 c9                	test   %ecx,%ecx
    7f01bb3ffd5a:	0f 84 11 00 00 00    	je     0x7f01bb3ffd71
    7f01bb3ffd60:	8b 85 50 ea ff ff    	mov    -0x15b0(%rbp),%eax
    7f01bb3ffd66:	89 85 38 ea ff ff    	mov    %eax,-0x15c8(%rbp)
    7f01bb3ffd6c:	e9 2b 00 00 00       	jmpq   0x7f01bb3ffd9c
    7f01bb3ffd71:	8b 85 48 ea ff ff    	mov    -0x15b8(%rbp),%eax
    7f01bb3ffd77:	85 c0                	test   %eax,%eax
    7f01bb3ffd79:	0f 84 11 00 00 00    	je     0x7f01bb3ffd90
    7f01bb3ffd7f:	8b 85 40 ea ff ff    	mov    -0x15c0(%rbp),%eax
    7f01bb3ffd85:	89 85 38 ea ff ff    	mov    %eax,-0x15c8(%rbp)
    7f01bb3ffd8b:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffd9c
    7f01bb3ffd90:	8b 85 90 fd ff ff    	mov    -0x270(%rbp),%eax
    7f01bb3ffd96:	89 85 38 ea ff ff    	mov    %eax,-0x15c8(%rbp)
    7f01bb3ffd9c:	8b 85 58 ea ff ff    	mov    -0x15a8(%rbp),%eax
    7f01bb3ffda2:	83 f8 02             	cmp    $0x2,%eax
    7f01bb3ffda5:	0f 94 c0             	sete   %al
    7f01bb3ffda8:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffdab:	8b 8d 60 ea ff ff    	mov    -0x15a0(%rbp),%ecx
    7f01bb3ffdb1:	23 c1                	and    %ecx,%eax
    7f01bb3ffdb3:	8b 95 48 fd ff ff    	mov    -0x2b8(%rbp),%edx
    7f01bb3ffdb9:	8b ca                	mov    %edx,%ecx
    7f01bb3ffdbb:	85 c9                	test   %ecx,%ecx
    7f01bb3ffdbd:	0f 94 c1             	sete   %cl
    7f01bb3ffdc0:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ffdc3:	23 c8                	and    %eax,%ecx
    7f01bb3ffdc5:	8b b5 88 fd ff ff    	mov    -0x278(%rbp),%esi
    7f01bb3ffdcb:	ff c6                	inc    %esi
    7f01bb3ffdcd:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3ffdd3:	89 b5 30 ea ff ff    	mov    %esi,-0x15d0(%rbp)
    7f01bb3ffdd9:	85 c0                	test   %eax,%eax
    7f01bb3ffddb:	0f 94 c0             	sete   %al
    7f01bb3ffdde:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffde1:	23 d0                	and    %eax,%edx
    7f01bb3ffde3:	89 95 28 ea ff ff    	mov    %edx,-0x15d8(%rbp)
    7f01bb3ffde9:	8b 85 88 fd ff ff    	mov    -0x278(%rbp),%eax
    7f01bb3ffdef:	ff c8                	dec    %eax
    7f01bb3ffdf1:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3ffdf6:	89 85 20 ea ff ff    	mov    %eax,-0x15e0(%rbp)
    7f01bb3ffdfc:	85 c9                	test   %ecx,%ecx
    7f01bb3ffdfe:	0f 84 11 00 00 00    	je     0x7f01bb3ffe15
    7f01bb3ffe04:	8b 85 30 ea ff ff    	mov    -0x15d0(%rbp),%eax
    7f01bb3ffe0a:	89 85 18 ea ff ff    	mov    %eax,-0x15e8(%rbp)
    7f01bb3ffe10:	e9 2b 00 00 00       	jmpq   0x7f01bb3ffe40
    7f01bb3ffe15:	8b 85 28 ea ff ff    	mov    -0x15d8(%rbp),%eax
    7f01bb3ffe1b:	85 c0                	test   %eax,%eax
    7f01bb3ffe1d:	0f 84 11 00 00 00    	je     0x7f01bb3ffe34
    7f01bb3ffe23:	8b 85 20 ea ff ff    	mov    -0x15e0(%rbp),%eax
    7f01bb3ffe29:	89 85 18 ea ff ff    	mov    %eax,-0x15e8(%rbp)
    7f01bb3ffe2f:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffe40
    7f01bb3ffe34:	8b 85 88 fd ff ff    	mov    -0x278(%rbp),%eax
    7f01bb3ffe3a:	89 85 18 ea ff ff    	mov    %eax,-0x15e8(%rbp)
    7f01bb3ffe40:	8b 85 58 ea ff ff    	mov    -0x15a8(%rbp),%eax
    7f01bb3ffe46:	83 f8 03             	cmp    $0x3,%eax
    7f01bb3ffe49:	0f 94 c0             	sete   %al
    7f01bb3ffe4c:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffe4f:	8b 8d 60 ea ff ff    	mov    -0x15a0(%rbp),%ecx
    7f01bb3ffe55:	23 c1                	and    %ecx,%eax
    7f01bb3ffe57:	8b 95 40 fd ff ff    	mov    -0x2c0(%rbp),%edx
    7f01bb3ffe5d:	8b ca                	mov    %edx,%ecx
    7f01bb3ffe5f:	85 c9                	test   %ecx,%ecx
    7f01bb3ffe61:	0f 94 c1             	sete   %cl
    7f01bb3ffe64:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3ffe67:	89 8d 10 ea ff ff    	mov    %ecx,-0x15f0(%rbp)
    7f01bb3ffe6d:	23 c8                	and    %eax,%ecx
    7f01bb3ffe6f:	8b b5 80 fd ff ff    	mov    -0x280(%rbp),%esi
    7f01bb3ffe75:	ff c6                	inc    %esi
    7f01bb3ffe77:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3ffe7d:	89 b5 08 ea ff ff    	mov    %esi,-0x15f8(%rbp)
    7f01bb3ffe83:	85 c0                	test   %eax,%eax
    7f01bb3ffe85:	0f 94 c0             	sete   %al
    7f01bb3ffe88:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffe8b:	23 d0                	and    %eax,%edx
    7f01bb3ffe8d:	89 95 00 ea ff ff    	mov    %edx,-0x1600(%rbp)
    7f01bb3ffe93:	8b 85 80 fd ff ff    	mov    -0x280(%rbp),%eax
    7f01bb3ffe99:	ff c8                	dec    %eax
    7f01bb3ffe9b:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3ffea0:	89 85 f8 e9 ff ff    	mov    %eax,-0x1608(%rbp)
    7f01bb3ffea6:	85 c9                	test   %ecx,%ecx
    7f01bb3ffea8:	0f 84 11 00 00 00    	je     0x7f01bb3ffebf
    7f01bb3ffeae:	8b 85 08 ea ff ff    	mov    -0x15f8(%rbp),%eax
    7f01bb3ffeb4:	89 85 f0 e9 ff ff    	mov    %eax,-0x1610(%rbp)
    7f01bb3ffeba:	e9 2b 00 00 00       	jmpq   0x7f01bb3ffeea
    7f01bb3ffebf:	8b 85 00 ea ff ff    	mov    -0x1600(%rbp),%eax
    7f01bb3ffec5:	85 c0                	test   %eax,%eax
    7f01bb3ffec7:	0f 84 11 00 00 00    	je     0x7f01bb3ffede
    7f01bb3ffecd:	8b 85 f8 e9 ff ff    	mov    -0x1608(%rbp),%eax
    7f01bb3ffed3:	89 85 f0 e9 ff ff    	mov    %eax,-0x1610(%rbp)
    7f01bb3ffed9:	e9 0c 00 00 00       	jmpq   0x7f01bb3ffeea
    7f01bb3ffede:	8b 85 80 fd ff ff    	mov    -0x280(%rbp),%eax
    7f01bb3ffee4:	89 85 f0 e9 ff ff    	mov    %eax,-0x1610(%rbp)
    7f01bb3ffeea:	8b 85 58 ea ff ff    	mov    -0x15a8(%rbp),%eax
    7f01bb3ffef0:	83 f8 04             	cmp    $0x4,%eax
    7f01bb3ffef3:	0f 94 c0             	sete   %al
    7f01bb3ffef6:	0f b6 c0             	movzbl %al,%eax
    7f01bb3ffef9:	8b 8d 60 ea ff ff    	mov    -0x15a0(%rbp),%ecx
    7f01bb3ffeff:	23 c1                	and    %ecx,%eax
    7f01bb3fff01:	8b c8                	mov    %eax,%ecx
    7f01bb3fff03:	23 8d 10 ea ff ff    	and    -0x15f0(%rbp),%ecx
    7f01bb3fff09:	8b 95 78 fd ff ff    	mov    -0x288(%rbp),%edx
    7f01bb3fff0f:	ff c2                	inc    %edx
    7f01bb3fff11:	81 e2 ff 00 00 00    	and    $0xff,%edx
    7f01bb3fff17:	89 95 e8 e9 ff ff    	mov    %edx,-0x1618(%rbp)
    7f01bb3fff1d:	85 c0                	test   %eax,%eax
    7f01bb3fff1f:	0f 94 c0             	sete   %al
    7f01bb3fff22:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fff25:	23 85 40 fd ff ff    	and    -0x2c0(%rbp),%eax
    7f01bb3fff2b:	89 85 e0 e9 ff ff    	mov    %eax,-0x1620(%rbp)
    7f01bb3fff31:	8b 85 78 fd ff ff    	mov    -0x288(%rbp),%eax
    7f01bb3fff37:	ff c8                	dec    %eax
    7f01bb3fff39:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fff3e:	89 85 d8 e9 ff ff    	mov    %eax,-0x1628(%rbp)
    7f01bb3fff44:	85 c9                	test   %ecx,%ecx
    7f01bb3fff46:	0f 84 11 00 00 00    	je     0x7f01bb3fff5d
    7f01bb3fff4c:	8b 85 e8 e9 ff ff    	mov    -0x1618(%rbp),%eax
    7f01bb3fff52:	89 85 d0 e9 ff ff    	mov    %eax,-0x1630(%rbp)
    7f01bb3fff58:	e9 2b 00 00 00       	jmpq   0x7f01bb3fff88
    7f01bb3fff5d:	8b 85 e0 e9 ff ff    	mov    -0x1620(%rbp),%eax
    7f01bb3fff63:	85 c0                	test   %eax,%eax
    7f01bb3fff65:	0f 84 11 00 00 00    	je     0x7f01bb3fff7c
    7f01bb3fff6b:	8b 85 d8 e9 ff ff    	mov    -0x1628(%rbp),%eax
    7f01bb3fff71:	89 85 d0 e9 ff ff    	mov    %eax,-0x1630(%rbp)
    7f01bb3fff77:	e9 0c 00 00 00       	jmpq   0x7f01bb3fff88
    7f01bb3fff7c:	8b 85 78 fd ff ff    	mov    -0x288(%rbp),%eax
    7f01bb3fff82:	89 85 d0 e9 ff ff    	mov    %eax,-0x1630(%rbp)
    7f01bb3fff88:	8b 85 58 ea ff ff    	mov    -0x15a8(%rbp),%eax
    7f01bb3fff8e:	83 f8 05             	cmp    $0x5,%eax
    7f01bb3fff91:	0f 94 c0             	sete   %al
    7f01bb3fff94:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fff97:	8b 8d 60 ea ff ff    	mov    -0x15a0(%rbp),%ecx
    7f01bb3fff9d:	23 c1                	and    %ecx,%eax
    7f01bb3fff9f:	8b 95 38 fd ff ff    	mov    -0x2c8(%rbp),%edx
    7f01bb3fffa5:	8b ca                	mov    %edx,%ecx
    7f01bb3fffa7:	85 c9                	test   %ecx,%ecx
    7f01bb3fffa9:	0f 94 c1             	sete   %cl
    7f01bb3fffac:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb3fffaf:	23 c8                	and    %eax,%ecx
    7f01bb3fffb1:	8b b5 70 fd ff ff    	mov    -0x290(%rbp),%esi
    7f01bb3fffb7:	ff c6                	inc    %esi
    7f01bb3fffb9:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb3fffbf:	89 b5 c8 e9 ff ff    	mov    %esi,-0x1638(%rbp)
    7f01bb3fffc5:	85 c0                	test   %eax,%eax
    7f01bb3fffc7:	0f 94 c0             	sete   %al
    7f01bb3fffca:	0f b6 c0             	movzbl %al,%eax
    7f01bb3fffcd:	23 d0                	and    %eax,%edx
    7f01bb3fffcf:	89 95 c0 e9 ff ff    	mov    %edx,-0x1640(%rbp)
    7f01bb3fffd5:	8b 85 70 fd ff ff    	mov    -0x290(%rbp),%eax
    7f01bb3fffdb:	ff c8                	dec    %eax
    7f01bb3fffdd:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb3fffe2:	89 85 b8 e9 ff ff    	mov    %eax,-0x1648(%rbp)
    7f01bb3fffe8:	85 c9                	test   %ecx,%ecx
    7f01bb3fffea:	0f 84 11 00 00 00    	je     0x7f01bb400001
    7f01bb3ffff0:	8b 85 c8 e9 ff ff    	mov    -0x1638(%rbp),%eax
    7f01bb3ffff6:	89 85 b0 e9 ff ff    	mov    %eax,-0x1650(%rbp)
    7f01bb3ffffc:	e9 2b 00 00 00       	jmpq   0x7f01bb40002c
    7f01bb400001:	8b 85 c0 e9 ff ff    	mov    -0x1640(%rbp),%eax
    7f01bb400007:	85 c0                	test   %eax,%eax
    7f01bb400009:	0f 84 11 00 00 00    	je     0x7f01bb400020
    7f01bb40000f:	8b 85 b8 e9 ff ff    	mov    -0x1648(%rbp),%eax
    7f01bb400015:	89 85 b0 e9 ff ff    	mov    %eax,-0x1650(%rbp)
    7f01bb40001b:	e9 0c 00 00 00       	jmpq   0x7f01bb40002c
    7f01bb400020:	8b 85 70 fd ff ff    	mov    -0x290(%rbp),%eax
    7f01bb400026:	89 85 b0 e9 ff ff    	mov    %eax,-0x1650(%rbp)
    7f01bb40002c:	8b 85 58 ea ff ff    	mov    -0x15a8(%rbp),%eax
    7f01bb400032:	83 f8 06             	cmp    $0x6,%eax
    7f01bb400035:	0f 94 c0             	sete   %al
    7f01bb400038:	0f b6 c0             	movzbl %al,%eax
    7f01bb40003b:	8b 8d 60 ea ff ff    	mov    -0x15a0(%rbp),%ecx
    7f01bb400041:	23 c1                	and    %ecx,%eax
    7f01bb400043:	8b 95 30 fd ff ff    	mov    -0x2d0(%rbp),%edx
    7f01bb400049:	8b ca                	mov    %edx,%ecx
    7f01bb40004b:	85 c9                	test   %ecx,%ecx
    7f01bb40004d:	0f 94 c1             	sete   %cl
    7f01bb400050:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb400053:	23 c8                	and    %eax,%ecx
    7f01bb400055:	8b b5 68 fd ff ff    	mov    -0x298(%rbp),%esi
    7f01bb40005b:	ff c6                	inc    %esi
    7f01bb40005d:	81 e6 ff 00 00 00    	and    $0xff,%esi
    7f01bb400063:	89 b5 a8 e9 ff ff    	mov    %esi,-0x1658(%rbp)
    7f01bb400069:	85 c0                	test   %eax,%eax
    7f01bb40006b:	0f 94 c0             	sete   %al
    7f01bb40006e:	0f b6 c0             	movzbl %al,%eax
    7f01bb400071:	23 d0                	and    %eax,%edx
    7f01bb400073:	89 95 a0 e9 ff ff    	mov    %edx,-0x1660(%rbp)
    7f01bb400079:	8b 85 68 fd ff ff    	mov    -0x298(%rbp),%eax
    7f01bb40007f:	ff c8                	dec    %eax
    7f01bb400081:	25 ff 00 00 00       	and    $0xff,%eax
    7f01bb400086:	89 85 98 e9 ff ff    	mov    %eax,-0x1668(%rbp)
    7f01bb40008c:	85 c9                	test   %ecx,%ecx
    7f01bb40008e:	0f 84 11 00 00 00    	je     0x7f01bb4000a5
    7f01bb400094:	8b 85 a8 e9 ff ff    	mov    -0x1658(%rbp),%eax
    7f01bb40009a:	89 85 90 e9 ff ff    	mov    %eax,-0x1670(%rbp)
    7f01bb4000a0:	e9 2b 00 00 00       	jmpq   0x7f01bb4000d0
    7f01bb4000a5:	8b 85 a0 e9 ff ff    	mov    -0x1660(%rbp),%eax
    7f01bb4000ab:	85 c0                	test   %eax,%eax
    7f01bb4000ad:	0f 84 11 00 00 00    	je     0x7f01bb4000c4
    7f01bb4000b3:	8b 85 98 e9 ff ff    	mov    -0x1668(%rbp),%eax
    7f01bb4000b9:	89 85 90 e9 ff ff    	mov    %eax,-0x1670(%rbp)
    7f01bb4000bf:	e9 0c 00 00 00       	jmpq   0x7f01bb4000d0
    7f01bb4000c4:	8b 85 68 fd ff ff    	mov    -0x298(%rbp),%eax
    7f01bb4000ca:	89 85 90 e9 ff ff    	mov    %eax,-0x1670(%rbp)
    7f01bb4000d0:	41 83 fe 08          	cmp    $0x8,%r14d
    7f01bb4000d4:	0f 94 c0             	sete   %al
    7f01bb4000d7:	0f b6 c0             	movzbl %al,%eax
    7f01bb4000da:	23 85 a0 ec ff ff    	and    -0x1360(%rbp),%eax
    7f01bb4000e0:	89 85 88 e9 ff ff    	mov    %eax,-0x1678(%rbp)
    7f01bb4000e6:	85 c0                	test   %eax,%eax
    7f01bb4000e8:	0f 84 36 00 00 00    	je     0x7f01bb400124
    7f01bb4000ee:	49 8b c7             	mov    %r15,%rax
    7f01bb4000f1:	48 05 48 2d 00 00    	add    $0x2d48,%rax
    7f01bb4000f7:	49 8b cf             	mov    %r15,%rcx
    7f01bb4000fa:	48 81 c1 f8 46 00 00 	add    $0x46f8,%rcx
    7f01bb400101:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb400104:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb400107:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40010b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40010f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb400113:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb400117:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40011b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40011f:	e9 31 00 00 00       	jmpq   0x7f01bb400155
    7f01bb400124:	49 8b c7             	mov    %r15,%rax
    7f01bb400127:	48 05 48 2d 00 00    	add    $0x2d48,%rax
    7f01bb40012d:	49 8b cf             	mov    %r15,%rcx
    7f01bb400130:	48 81 c1 98 4a 00 00 	add    $0x4a98,%rcx
    7f01bb400137:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40013a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40013d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb400141:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb400145:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb400149:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40014d:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb400151:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb400155:	8b 85 88 e9 ff ff    	mov    -0x1678(%rbp),%eax
    7f01bb40015b:	85 c0                	test   %eax,%eax
    7f01bb40015d:	0f 84 36 00 00 00    	je     0x7f01bb400199
    7f01bb400163:	49 8b c7             	mov    %r15,%rax
    7f01bb400166:	48 05 88 2d 00 00    	add    $0x2d88,%rax
    7f01bb40016c:	49 8b cf             	mov    %r15,%rcx
    7f01bb40016f:	48 81 c1 80 47 00 00 	add    $0x4780,%rcx
    7f01bb400176:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb400179:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40017c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb400180:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb400184:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb400188:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40018c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb400190:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb400194:	e9 31 00 00 00       	jmpq   0x7f01bb4001ca
    7f01bb400199:	49 8b c7             	mov    %r15,%rax
    7f01bb40019c:	48 05 88 2d 00 00    	add    $0x2d88,%rax
    7f01bb4001a2:	49 8b cf             	mov    %r15,%rcx
    7f01bb4001a5:	48 81 c1 d8 4a 00 00 	add    $0x4ad8,%rcx
    7f01bb4001ac:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4001af:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4001b2:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4001b6:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4001ba:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4001be:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4001c2:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4001c6:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4001ca:	41 81 fe 00 04 00 00 	cmp    $0x400,%r14d
    7f01bb4001d1:	0f 94 c0             	sete   %al
    7f01bb4001d4:	0f b6 c0             	movzbl %al,%eax
    7f01bb4001d7:	23 85 68 ed ff ff    	and    -0x1298(%rbp),%eax
    7f01bb4001dd:	89 85 80 e9 ff ff    	mov    %eax,-0x1680(%rbp)
    7f01bb4001e3:	85 c0                	test   %eax,%eax
    7f01bb4001e5:	0f 84 36 00 00 00    	je     0x7f01bb400221
    7f01bb4001eb:	49 8b c7             	mov    %r15,%rax
    7f01bb4001ee:	48 05 c8 2d 00 00    	add    $0x2dc8,%rax
    7f01bb4001f4:	49 8b cf             	mov    %r15,%rcx
    7f01bb4001f7:	48 81 c1 80 49 00 00 	add    $0x4980,%rcx
    7f01bb4001fe:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb400201:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb400204:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb400208:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40020c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb400210:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb400214:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb400218:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40021c:	e9 31 00 00 00       	jmpq   0x7f01bb400252
    7f01bb400221:	49 8b c7             	mov    %r15,%rax
    7f01bb400224:	48 05 c8 2d 00 00    	add    $0x2dc8,%rax
    7f01bb40022a:	49 8b cf             	mov    %r15,%rcx
    7f01bb40022d:	48 81 c1 18 4b 00 00 	add    $0x4b18,%rcx
    7f01bb400234:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb400237:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40023a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40023e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb400242:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb400246:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40024a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40024e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb400252:	8b 85 b8 ea ff ff    	mov    -0x1548(%rbp),%eax
    7f01bb400258:	23 85 c0 ed ff ff    	and    -0x1240(%rbp),%eax
    7f01bb40025e:	8b 8d c0 ea ff ff    	mov    -0x1540(%rbp),%ecx
    7f01bb400264:	23 c1                	and    %ecx,%eax
    7f01bb400266:	89 85 78 e9 ff ff    	mov    %eax,-0x1688(%rbp)
    7f01bb40026c:	85 c0                	test   %eax,%eax
    7f01bb40026e:	0f 84 36 00 00 00    	je     0x7f01bb4002aa
    7f01bb400274:	49 8b c7             	mov    %r15,%rax
    7f01bb400277:	48 05 08 2e 00 00    	add    $0x2e08,%rax
    7f01bb40027d:	49 8b cf             	mov    %r15,%rcx
    7f01bb400280:	48 81 c1 f8 48 00 00 	add    $0x48f8,%rcx
    7f01bb400287:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40028a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40028d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb400291:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb400295:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb400299:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40029d:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4002a1:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4002a5:	e9 31 00 00 00       	jmpq   0x7f01bb4002db
    7f01bb4002aa:	49 8b c7             	mov    %r15,%rax
    7f01bb4002ad:	48 05 08 2e 00 00    	add    $0x2e08,%rax
    7f01bb4002b3:	49 8b cf             	mov    %r15,%rcx
    7f01bb4002b6:	48 81 c1 58 4b 00 00 	add    $0x4b58,%rcx
    7f01bb4002bd:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4002c0:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4002c3:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4002c7:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4002cb:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4002cf:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4002d3:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4002d7:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4002db:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    7f01bb4002e2:	48 2b 85 58 fd ff ff 	sub    -0x2a8(%rbp),%rax
    7f01bb4002e9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb4002ee:	48 23 c1             	and    %rcx,%rax
    7f01bb4002f1:	89 85 70 e9 ff ff    	mov    %eax,-0x1690(%rbp)
    7f01bb4002f7:	41 81 fe 00 00 20 00 	cmp    $0x200000,%r14d
    7f01bb4002fe:	0f 85 11 00 00 00    	jne    0x7f01bb400315
    7f01bb400304:	8b 85 70 e9 ff ff    	mov    -0x1690(%rbp),%eax
    7f01bb40030a:	89 85 68 e9 ff ff    	mov    %eax,-0x1698(%rbp)
    7f01bb400310:	e9 0c 00 00 00       	jmpq   0x7f01bb400321
    7f01bb400315:	8b 85 60 fd ff ff    	mov    -0x2a0(%rbp),%eax
    7f01bb40031b:	89 85 68 e9 ff ff    	mov    %eax,-0x1698(%rbp)
    7f01bb400321:	8b 85 d0 ec ff ff    	mov    -0x1330(%rbp),%eax
    7f01bb400327:	85 c0                	test   %eax,%eax
    7f01bb400329:	0f 84 13 00 00 00    	je     0x7f01bb400342
    7f01bb40032f:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    7f01bb400336:	48 89 85 60 e9 ff ff 	mov    %rax,-0x16a0(%rbp)
    7f01bb40033d:	e9 0e 00 00 00       	jmpq   0x7f01bb400350
    7f01bb400342:	48 8b 85 58 fd ff ff 	mov    -0x2a8(%rbp),%rax
    7f01bb400349:	48 89 85 60 e9 ff ff 	mov    %rax,-0x16a0(%rbp)
    7f01bb400350:	41 81 fe 00 00 40 00 	cmp    $0x400000,%r14d
    7f01bb400357:	0f 94 c0             	sete   %al
    7f01bb40035a:	0f b6 c0             	movzbl %al,%eax
    7f01bb40035d:	23 85 e0 eb ff ff    	and    -0x1420(%rbp),%eax
    7f01bb400363:	41 8b 8f a8 4b 00 00 	mov    0x4ba8(%r15),%ecx
    7f01bb40036a:	89 8d 58 e9 ff ff    	mov    %ecx,-0x16a8(%rbp)
    7f01bb400370:	ff c1                	inc    %ecx
    7f01bb400372:	89 8d 50 e9 ff ff    	mov    %ecx,-0x16b0(%rbp)
    7f01bb400378:	89 85 48 e9 ff ff    	mov    %eax,-0x16b8(%rbp)
    7f01bb40037e:	85 c0                	test   %eax,%eax
    7f01bb400380:	0f 84 11 00 00 00    	je     0x7f01bb400397
    7f01bb400386:	8b 85 50 e9 ff ff    	mov    -0x16b0(%rbp),%eax
    7f01bb40038c:	89 85 40 e9 ff ff    	mov    %eax,-0x16c0(%rbp)
    7f01bb400392:	e9 0c 00 00 00       	jmpq   0x7f01bb4003a3
    7f01bb400397:	8b 85 58 e9 ff ff    	mov    -0x16a8(%rbp),%eax
    7f01bb40039d:	89 85 40 e9 ff ff    	mov    %eax,-0x16c0(%rbp)
    7f01bb4003a3:	41 8b 87 ac 4b 00 00 	mov    0x4bac(%r15),%eax
    7f01bb4003aa:	85 c0                	test   %eax,%eax
    7f01bb4003ac:	0f 94 c1             	sete   %cl
    7f01bb4003af:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb4003b2:	89 8d 38 e9 ff ff    	mov    %ecx,-0x16c8(%rbp)
    7f01bb4003b8:	89 85 30 e9 ff ff    	mov    %eax,-0x16d0(%rbp)
    7f01bb4003be:	3b 85 60 fd ff ff    	cmp    -0x2a0(%rbp),%eax
    7f01bb4003c4:	0f 92 c0             	setb   %al
    7f01bb4003c7:	0f b6 c0             	movzbl %al,%eax
    7f01bb4003ca:	85 c0                	test   %eax,%eax
    7f01bb4003cc:	0f 84 11 00 00 00    	je     0x7f01bb4003e3
    7f01bb4003d2:	8b 85 30 e9 ff ff    	mov    -0x16d0(%rbp),%eax
    7f01bb4003d8:	89 85 28 e9 ff ff    	mov    %eax,-0x16d8(%rbp)
    7f01bb4003de:	e9 0c 00 00 00       	jmpq   0x7f01bb4003ef
    7f01bb4003e3:	8b 85 60 fd ff ff    	mov    -0x2a0(%rbp),%eax
    7f01bb4003e9:	89 85 28 e9 ff ff    	mov    %eax,-0x16d8(%rbp)
    7f01bb4003ef:	8b 85 38 e9 ff ff    	mov    -0x16c8(%rbp),%eax
    7f01bb4003f5:	85 c0                	test   %eax,%eax
    7f01bb4003f7:	0f 84 11 00 00 00    	je     0x7f01bb40040e
    7f01bb4003fd:	8b 85 60 fd ff ff    	mov    -0x2a0(%rbp),%eax
    7f01bb400403:	89 85 20 e9 ff ff    	mov    %eax,-0x16e0(%rbp)
    7f01bb400409:	e9 0c 00 00 00       	jmpq   0x7f01bb40041a
    7f01bb40040e:	8b 85 28 e9 ff ff    	mov    -0x16d8(%rbp),%eax
    7f01bb400414:	89 85 20 e9 ff ff    	mov    %eax,-0x16e0(%rbp)
    7f01bb40041a:	8b 85 48 e9 ff ff    	mov    -0x16b8(%rbp),%eax
    7f01bb400420:	85 c0                	test   %eax,%eax
    7f01bb400422:	0f 84 11 00 00 00    	je     0x7f01bb400439
    7f01bb400428:	8b 85 20 e9 ff ff    	mov    -0x16e0(%rbp),%eax
    7f01bb40042e:	89 85 18 e9 ff ff    	mov    %eax,-0x16e8(%rbp)
    7f01bb400434:	e9 0c 00 00 00       	jmpq   0x7f01bb400445
    7f01bb400439:	8b 85 30 e9 ff ff    	mov    -0x16d0(%rbp),%eax
    7f01bb40043f:	89 85 18 e9 ff ff    	mov    %eax,-0x16e8(%rbp)
    7f01bb400445:	8b 85 30 e9 ff ff    	mov    -0x16d0(%rbp),%eax
    7f01bb40044b:	3b 85 60 fd ff ff    	cmp    -0x2a0(%rbp),%eax
    7f01bb400451:	0f 97 c0             	seta   %al
    7f01bb400454:	0f b6 c0             	movzbl %al,%eax
    7f01bb400457:	85 c0                	test   %eax,%eax
    7f01bb400459:	0f 84 11 00 00 00    	je     0x7f01bb400470
    7f01bb40045f:	8b 85 30 e9 ff ff    	mov    -0x16d0(%rbp),%eax
    7f01bb400465:	89 85 10 e9 ff ff    	mov    %eax,-0x16f0(%rbp)
    7f01bb40046b:	e9 0c 00 00 00       	jmpq   0x7f01bb40047c
    7f01bb400470:	8b 85 60 fd ff ff    	mov    -0x2a0(%rbp),%eax
    7f01bb400476:	89 85 10 e9 ff ff    	mov    %eax,-0x16f0(%rbp)
    7f01bb40047c:	41 8b 87 b0 4b 00 00 	mov    0x4bb0(%r15),%eax
    7f01bb400483:	89 85 08 e9 ff ff    	mov    %eax,-0x16f8(%rbp)
    7f01bb400489:	8b 85 48 e9 ff ff    	mov    -0x16b8(%rbp),%eax
    7f01bb40048f:	85 c0                	test   %eax,%eax
    7f01bb400491:	0f 84 11 00 00 00    	je     0x7f01bb4004a8
    7f01bb400497:	8b 85 10 e9 ff ff    	mov    -0x16f0(%rbp),%eax
    7f01bb40049d:	89 85 00 e9 ff ff    	mov    %eax,-0x1700(%rbp)
    7f01bb4004a3:	e9 0c 00 00 00       	jmpq   0x7f01bb4004b4
    7f01bb4004a8:	8b 85 08 e9 ff ff    	mov    -0x16f8(%rbp),%eax
    7f01bb4004ae:	89 85 00 e9 ff ff    	mov    %eax,-0x1700(%rbp)
    7f01bb4004b4:	41 8b 87 b4 4b 00 00 	mov    0x4bb4(%r15),%eax
    7f01bb4004bb:	89 85 f8 e8 ff ff    	mov    %eax,-0x1708(%rbp)
    7f01bb4004c1:	03 85 60 fd ff ff    	add    -0x2a0(%rbp),%eax
    7f01bb4004c7:	89 85 f0 e8 ff ff    	mov    %eax,-0x1710(%rbp)
    7f01bb4004cd:	8b 85 48 e9 ff ff    	mov    -0x16b8(%rbp),%eax
    7f01bb4004d3:	85 c0                	test   %eax,%eax
    7f01bb4004d5:	0f 84 11 00 00 00    	je     0x7f01bb4004ec
    7f01bb4004db:	8b 85 f0 e8 ff ff    	mov    -0x1710(%rbp),%eax
    7f01bb4004e1:	89 85 e8 e8 ff ff    	mov    %eax,-0x1718(%rbp)
    7f01bb4004e7:	e9 0c 00 00 00       	jmpq   0x7f01bb4004f8
    7f01bb4004ec:	8b 85 f8 e8 ff ff    	mov    -0x1708(%rbp),%eax
    7f01bb4004f2:	89 85 e8 e8 ff ff    	mov    %eax,-0x1718(%rbp)
    7f01bb4004f8:	41 8b 87 b8 4b 00 00 	mov    0x4bb8(%r15),%eax
    7f01bb4004ff:	89 85 e0 e8 ff ff    	mov    %eax,-0x1720(%rbp)
    7f01bb400505:	ff c0                	inc    %eax
    7f01bb400507:	89 85 d8 e8 ff ff    	mov    %eax,-0x1728(%rbp)
    7f01bb40050d:	8b 85 18 eb ff ff    	mov    -0x14e8(%rbp),%eax
    7f01bb400513:	85 c0                	test   %eax,%eax
    7f01bb400515:	0f 84 11 00 00 00    	je     0x7f01bb40052c
    7f01bb40051b:	8b 85 e0 e8 ff ff    	mov    -0x1720(%rbp),%eax
    7f01bb400521:	89 85 d0 e8 ff ff    	mov    %eax,-0x1730(%rbp)
    7f01bb400527:	e9 0c 00 00 00       	jmpq   0x7f01bb400538
    7f01bb40052c:	8b 85 d8 e8 ff ff    	mov    -0x1728(%rbp),%eax
    7f01bb400532:	89 85 d0 e8 ff ff    	mov    %eax,-0x1730(%rbp)
    7f01bb400538:	8b 85 a0 f5 ff ff    	mov    -0xa60(%rbp),%eax
    7f01bb40053e:	85 c0                	test   %eax,%eax
    7f01bb400540:	0f 84 11 00 00 00    	je     0x7f01bb400557
    7f01bb400546:	8b 85 d0 e8 ff ff    	mov    -0x1730(%rbp),%eax
    7f01bb40054c:	89 85 c8 e8 ff ff    	mov    %eax,-0x1738(%rbp)
    7f01bb400552:	e9 0c 00 00 00       	jmpq   0x7f01bb400563
    7f01bb400557:	8b 85 d8 e8 ff ff    	mov    -0x1728(%rbp),%eax
    7f01bb40055d:	89 85 c8 e8 ff ff    	mov    %eax,-0x1738(%rbp)
    7f01bb400563:	41 83 fe 02          	cmp    $0x2,%r14d
    7f01bb400567:	0f 85 11 00 00 00    	jne    0x7f01bb40057e
    7f01bb40056d:	8b 85 c8 e8 ff ff    	mov    -0x1738(%rbp),%eax
    7f01bb400573:	89 85 c0 e8 ff ff    	mov    %eax,-0x1740(%rbp)
    7f01bb400579:	e9 0c 00 00 00       	jmpq   0x7f01bb40058a
    7f01bb40057e:	8b 85 e0 e8 ff ff    	mov    -0x1720(%rbp),%eax
    7f01bb400584:	89 85 c0 e8 ff ff    	mov    %eax,-0x1740(%rbp)
    7f01bb40058a:	41 8b 87 bc 4b 00 00 	mov    0x4bbc(%r15),%eax
    7f01bb400591:	89 85 b8 e8 ff ff    	mov    %eax,-0x1748(%rbp)
    7f01bb400597:	ff c0                	inc    %eax
    7f01bb400599:	89 85 b0 e8 ff ff    	mov    %eax,-0x1750(%rbp)
    7f01bb40059f:	8b 85 18 eb ff ff    	mov    -0x14e8(%rbp),%eax
    7f01bb4005a5:	85 c0                	test   %eax,%eax
    7f01bb4005a7:	0f 84 11 00 00 00    	je     0x7f01bb4005be
    7f01bb4005ad:	8b 85 b8 e8 ff ff    	mov    -0x1748(%rbp),%eax
    7f01bb4005b3:	89 85 a8 e8 ff ff    	mov    %eax,-0x1758(%rbp)
    7f01bb4005b9:	e9 0c 00 00 00       	jmpq   0x7f01bb4005ca
    7f01bb4005be:	8b 85 b0 e8 ff ff    	mov    -0x1750(%rbp),%eax
    7f01bb4005c4:	89 85 a8 e8 ff ff    	mov    %eax,-0x1758(%rbp)
    7f01bb4005ca:	8b 85 90 f5 ff ff    	mov    -0xa70(%rbp),%eax
    7f01bb4005d0:	85 c0                	test   %eax,%eax
    7f01bb4005d2:	0f 84 11 00 00 00    	je     0x7f01bb4005e9
    7f01bb4005d8:	8b 85 a8 e8 ff ff    	mov    -0x1758(%rbp),%eax
    7f01bb4005de:	89 85 a0 e8 ff ff    	mov    %eax,-0x1760(%rbp)
    7f01bb4005e4:	e9 0c 00 00 00       	jmpq   0x7f01bb4005f5
    7f01bb4005e9:	8b 85 b0 e8 ff ff    	mov    -0x1750(%rbp),%eax
    7f01bb4005ef:	89 85 a0 e8 ff ff    	mov    %eax,-0x1760(%rbp)
    7f01bb4005f5:	8b 85 28 ef ff ff    	mov    -0x10d8(%rbp),%eax
    7f01bb4005fb:	85 c0                	test   %eax,%eax
    7f01bb4005fd:	0f 84 11 00 00 00    	je     0x7f01bb400614
    7f01bb400603:	8b 85 b8 e8 ff ff    	mov    -0x1748(%rbp),%eax
    7f01bb400609:	89 85 98 e8 ff ff    	mov    %eax,-0x1768(%rbp)
    7f01bb40060f:	e9 0c 00 00 00       	jmpq   0x7f01bb400620
    7f01bb400614:	8b 85 b0 e8 ff ff    	mov    -0x1750(%rbp),%eax
    7f01bb40061a:	89 85 98 e8 ff ff    	mov    %eax,-0x1768(%rbp)
    7f01bb400620:	41 83 fe 04          	cmp    $0x4,%r14d
    7f01bb400624:	0f 85 11 00 00 00    	jne    0x7f01bb40063b
    7f01bb40062a:	8b 85 a0 e8 ff ff    	mov    -0x1760(%rbp),%eax
    7f01bb400630:	89 85 90 e8 ff ff    	mov    %eax,-0x1770(%rbp)
    7f01bb400636:	e9 42 00 00 00       	jmpq   0x7f01bb40067d
    7f01bb40063b:	41 83 fe 10          	cmp    $0x10,%r14d
    7f01bb40063f:	0f 85 11 00 00 00    	jne    0x7f01bb400656
    7f01bb400645:	8b 85 a0 e8 ff ff    	mov    -0x1760(%rbp),%eax
    7f01bb40064b:	89 85 90 e8 ff ff    	mov    %eax,-0x1770(%rbp)
    7f01bb400651:	e9 27 00 00 00       	jmpq   0x7f01bb40067d
    7f01bb400656:	41 83 fe 20          	cmp    $0x20,%r14d
    7f01bb40065a:	0f 85 11 00 00 00    	jne    0x7f01bb400671
    7f01bb400660:	8b 85 98 e8 ff ff    	mov    -0x1768(%rbp),%eax
    7f01bb400666:	89 85 90 e8 ff ff    	mov    %eax,-0x1770(%rbp)
    7f01bb40066c:	e9 0c 00 00 00       	jmpq   0x7f01bb40067d
    7f01bb400671:	8b 85 b8 e8 ff ff    	mov    -0x1748(%rbp),%eax
    7f01bb400677:	89 85 90 e8 ff ff    	mov    %eax,-0x1770(%rbp)
    7f01bb40067d:	41 8b 87 c0 4b 00 00 	mov    0x4bc0(%r15),%eax
    7f01bb400684:	89 85 88 e8 ff ff    	mov    %eax,-0x1778(%rbp)
    7f01bb40068a:	ff c0                	inc    %eax
    7f01bb40068c:	89 85 80 e8 ff ff    	mov    %eax,-0x1780(%rbp)
    7f01bb400692:	8b 85 18 eb ff ff    	mov    -0x14e8(%rbp),%eax
    7f01bb400698:	85 c0                	test   %eax,%eax
    7f01bb40069a:	0f 84 11 00 00 00    	je     0x7f01bb4006b1
    7f01bb4006a0:	8b 85 88 e8 ff ff    	mov    -0x1778(%rbp),%eax
    7f01bb4006a6:	89 85 78 e8 ff ff    	mov    %eax,-0x1788(%rbp)
    7f01bb4006ac:	e9 0c 00 00 00       	jmpq   0x7f01bb4006bd
    7f01bb4006b1:	8b 85 80 e8 ff ff    	mov    -0x1780(%rbp),%eax
    7f01bb4006b7:	89 85 78 e8 ff ff    	mov    %eax,-0x1788(%rbp)
    7f01bb4006bd:	8b 85 60 f5 ff ff    	mov    -0xaa0(%rbp),%eax
    7f01bb4006c3:	85 c0                	test   %eax,%eax
    7f01bb4006c5:	0f 84 11 00 00 00    	je     0x7f01bb4006dc
    7f01bb4006cb:	8b 85 78 e8 ff ff    	mov    -0x1788(%rbp),%eax
    7f01bb4006d1:	89 85 70 e8 ff ff    	mov    %eax,-0x1790(%rbp)
    7f01bb4006d7:	e9 0c 00 00 00       	jmpq   0x7f01bb4006e8
    7f01bb4006dc:	8b 85 80 e8 ff ff    	mov    -0x1780(%rbp),%eax
    7f01bb4006e2:	89 85 70 e8 ff ff    	mov    %eax,-0x1790(%rbp)
    7f01bb4006e8:	41 81 fe 00 40 00 00 	cmp    $0x4000,%r14d
    7f01bb4006ef:	0f 85 11 00 00 00    	jne    0x7f01bb400706
    7f01bb4006f5:	8b 85 70 e8 ff ff    	mov    -0x1790(%rbp),%eax
    7f01bb4006fb:	89 85 68 e8 ff ff    	mov    %eax,-0x1798(%rbp)
    7f01bb400701:	e9 0c 00 00 00       	jmpq   0x7f01bb400712
    7f01bb400706:	8b 85 88 e8 ff ff    	mov    -0x1778(%rbp),%eax
    7f01bb40070c:	89 85 68 e8 ff ff    	mov    %eax,-0x1798(%rbp)
    7f01bb400712:	41 8b 87 c4 4b 00 00 	mov    0x4bc4(%r15),%eax
    7f01bb400719:	89 85 60 e8 ff ff    	mov    %eax,-0x17a0(%rbp)
    7f01bb40071f:	ff c0                	inc    %eax
    7f01bb400721:	89 85 58 e8 ff ff    	mov    %eax,-0x17a8(%rbp)
    7f01bb400727:	8b 85 18 eb ff ff    	mov    -0x14e8(%rbp),%eax
    7f01bb40072d:	85 c0                	test   %eax,%eax
    7f01bb40072f:	0f 84 11 00 00 00    	je     0x7f01bb400746
    7f01bb400735:	8b 85 60 e8 ff ff    	mov    -0x17a0(%rbp),%eax
    7f01bb40073b:	89 85 50 e8 ff ff    	mov    %eax,-0x17b0(%rbp)
    7f01bb400741:	e9 0c 00 00 00       	jmpq   0x7f01bb400752
    7f01bb400746:	8b 85 58 e8 ff ff    	mov    -0x17a8(%rbp),%eax
    7f01bb40074c:	89 85 50 e8 ff ff    	mov    %eax,-0x17b0(%rbp)
    7f01bb400752:	8b 85 50 f5 ff ff    	mov    -0xab0(%rbp),%eax
    7f01bb400758:	85 c0                	test   %eax,%eax
    7f01bb40075a:	0f 84 11 00 00 00    	je     0x7f01bb400771
    7f01bb400760:	8b 85 50 e8 ff ff    	mov    -0x17b0(%rbp),%eax
    7f01bb400766:	89 85 48 e8 ff ff    	mov    %eax,-0x17b8(%rbp)
    7f01bb40076c:	e9 0c 00 00 00       	jmpq   0x7f01bb40077d
    7f01bb400771:	8b 85 58 e8 ff ff    	mov    -0x17a8(%rbp),%eax
    7f01bb400777:	89 85 48 e8 ff ff    	mov    %eax,-0x17b8(%rbp)
    7f01bb40077d:	8b 85 b8 ea ff ff    	mov    -0x1548(%rbp),%eax
    7f01bb400783:	85 c0                	test   %eax,%eax
    7f01bb400785:	0f 84 11 00 00 00    	je     0x7f01bb40079c
    7f01bb40078b:	8b 85 60 e8 ff ff    	mov    -0x17a0(%rbp),%eax
    7f01bb400791:	89 85 40 e8 ff ff    	mov    %eax,-0x17c0(%rbp)
    7f01bb400797:	e9 0c 00 00 00       	jmpq   0x7f01bb4007a8
    7f01bb40079c:	8b 85 58 e8 ff ff    	mov    -0x17a8(%rbp),%eax
    7f01bb4007a2:	89 85 40 e8 ff ff    	mov    %eax,-0x17c0(%rbp)
    7f01bb4007a8:	41 81 fe 00 80 00 00 	cmp    $0x8000,%r14d
    7f01bb4007af:	0f 85 11 00 00 00    	jne    0x7f01bb4007c6
    7f01bb4007b5:	8b 85 48 e8 ff ff    	mov    -0x17b8(%rbp),%eax
    7f01bb4007bb:	89 85 38 e8 ff ff    	mov    %eax,-0x17c8(%rbp)
    7f01bb4007c1:	e9 2a 00 00 00       	jmpq   0x7f01bb4007f0
    7f01bb4007c6:	41 81 fe 00 00 01 00 	cmp    $0x10000,%r14d
    7f01bb4007cd:	0f 85 11 00 00 00    	jne    0x7f01bb4007e4
    7f01bb4007d3:	8b 85 40 e8 ff ff    	mov    -0x17c0(%rbp),%eax
    7f01bb4007d9:	89 85 38 e8 ff ff    	mov    %eax,-0x17c8(%rbp)
    7f01bb4007df:	e9 0c 00 00 00       	jmpq   0x7f01bb4007f0
    7f01bb4007e4:	8b 85 60 e8 ff ff    	mov    -0x17a0(%rbp),%eax
    7f01bb4007ea:	89 85 38 e8 ff ff    	mov    %eax,-0x17c8(%rbp)
    7f01bb4007f0:	41 8b 87 c8 4b 00 00 	mov    0x4bc8(%r15),%eax
    7f01bb4007f7:	89 85 30 e8 ff ff    	mov    %eax,-0x17d0(%rbp)
    7f01bb4007fd:	ff c0                	inc    %eax
    7f01bb4007ff:	89 85 28 e8 ff ff    	mov    %eax,-0x17d8(%rbp)
    7f01bb400805:	8b 85 18 eb ff ff    	mov    -0x14e8(%rbp),%eax
    7f01bb40080b:	85 c0                	test   %eax,%eax
    7f01bb40080d:	0f 84 11 00 00 00    	je     0x7f01bb400824
    7f01bb400813:	8b 85 30 e8 ff ff    	mov    -0x17d0(%rbp),%eax
    7f01bb400819:	89 85 20 e8 ff ff    	mov    %eax,-0x17e0(%rbp)
    7f01bb40081f:	e9 0c 00 00 00       	jmpq   0x7f01bb400830
    7f01bb400824:	8b 85 28 e8 ff ff    	mov    -0x17d8(%rbp),%eax
    7f01bb40082a:	89 85 20 e8 ff ff    	mov    %eax,-0x17e0(%rbp)
    7f01bb400830:	8b 85 70 f5 ff ff    	mov    -0xa90(%rbp),%eax
    7f01bb400836:	85 c0                	test   %eax,%eax
    7f01bb400838:	0f 84 11 00 00 00    	je     0x7f01bb40084f
    7f01bb40083e:	8b 85 20 e8 ff ff    	mov    -0x17e0(%rbp),%eax
    7f01bb400844:	89 85 18 e8 ff ff    	mov    %eax,-0x17e8(%rbp)
    7f01bb40084a:	e9 0c 00 00 00       	jmpq   0x7f01bb40085b
    7f01bb40084f:	8b 85 28 e8 ff ff    	mov    -0x17d8(%rbp),%eax
    7f01bb400855:	89 85 18 e8 ff ff    	mov    %eax,-0x17e8(%rbp)
    7f01bb40085b:	41 81 fe 00 08 00 00 	cmp    $0x800,%r14d
    7f01bb400862:	0f 85 11 00 00 00    	jne    0x7f01bb400879
    7f01bb400868:	8b 85 18 e8 ff ff    	mov    -0x17e8(%rbp),%eax
    7f01bb40086e:	89 85 10 e8 ff ff    	mov    %eax,-0x17f0(%rbp)
    7f01bb400874:	e9 0c 00 00 00       	jmpq   0x7f01bb400885
    7f01bb400879:	8b 85 30 e8 ff ff    	mov    -0x17d0(%rbp),%eax
    7f01bb40087f:	89 85 10 e8 ff ff    	mov    %eax,-0x17f0(%rbp)
    7f01bb400885:	41 8b 87 cc 4b 00 00 	mov    0x4bcc(%r15),%eax
    7f01bb40088c:	89 85 08 e8 ff ff    	mov    %eax,-0x17f8(%rbp)
    7f01bb400892:	ff c0                	inc    %eax
    7f01bb400894:	89 85 00 e8 ff ff    	mov    %eax,-0x1800(%rbp)
    7f01bb40089a:	8b 85 18 eb ff ff    	mov    -0x14e8(%rbp),%eax
    7f01bb4008a0:	85 c0                	test   %eax,%eax
    7f01bb4008a2:	0f 84 11 00 00 00    	je     0x7f01bb4008b9
    7f01bb4008a8:	8b 85 08 e8 ff ff    	mov    -0x17f8(%rbp),%eax
    7f01bb4008ae:	89 85 f8 e7 ff ff    	mov    %eax,-0x1808(%rbp)
    7f01bb4008b4:	e9 0c 00 00 00       	jmpq   0x7f01bb4008c5
    7f01bb4008b9:	8b 85 00 e8 ff ff    	mov    -0x1800(%rbp),%eax
    7f01bb4008bf:	89 85 f8 e7 ff ff    	mov    %eax,-0x1808(%rbp)
    7f01bb4008c5:	8b 85 80 f5 ff ff    	mov    -0xa80(%rbp),%eax
    7f01bb4008cb:	85 c0                	test   %eax,%eax
    7f01bb4008cd:	0f 84 11 00 00 00    	je     0x7f01bb4008e4
    7f01bb4008d3:	8b 85 f8 e7 ff ff    	mov    -0x1808(%rbp),%eax
    7f01bb4008d9:	89 85 f0 e7 ff ff    	mov    %eax,-0x1810(%rbp)
    7f01bb4008df:	e9 0c 00 00 00       	jmpq   0x7f01bb4008f0
    7f01bb4008e4:	8b 85 00 e8 ff ff    	mov    -0x1800(%rbp),%eax
    7f01bb4008ea:	89 85 f0 e7 ff ff    	mov    %eax,-0x1810(%rbp)
    7f01bb4008f0:	8b 85 68 ed ff ff    	mov    -0x1298(%rbp),%eax
    7f01bb4008f6:	85 c0                	test   %eax,%eax
    7f01bb4008f8:	0f 84 11 00 00 00    	je     0x7f01bb40090f
    7f01bb4008fe:	8b 85 08 e8 ff ff    	mov    -0x17f8(%rbp),%eax
    7f01bb400904:	89 85 e8 e7 ff ff    	mov    %eax,-0x1818(%rbp)
    7f01bb40090a:	e9 0c 00 00 00       	jmpq   0x7f01bb40091b
    7f01bb40090f:	8b 85 00 e8 ff ff    	mov    -0x1800(%rbp),%eax
    7f01bb400915:	89 85 e8 e7 ff ff    	mov    %eax,-0x1818(%rbp)
    7f01bb40091b:	41 81 fe 00 02 00 00 	cmp    $0x200,%r14d
    7f01bb400922:	0f 85 11 00 00 00    	jne    0x7f01bb400939
    7f01bb400928:	8b 85 f0 e7 ff ff    	mov    -0x1810(%rbp),%eax
    7f01bb40092e:	89 85 e0 e7 ff ff    	mov    %eax,-0x1820(%rbp)
    7f01bb400934:	e9 2a 00 00 00       	jmpq   0x7f01bb400963
    7f01bb400939:	41 81 fe 00 04 00 00 	cmp    $0x400,%r14d
    7f01bb400940:	0f 85 11 00 00 00    	jne    0x7f01bb400957
    7f01bb400946:	8b 85 e8 e7 ff ff    	mov    -0x1818(%rbp),%eax
    7f01bb40094c:	89 85 e0 e7 ff ff    	mov    %eax,-0x1820(%rbp)
    7f01bb400952:	e9 0c 00 00 00       	jmpq   0x7f01bb400963
    7f01bb400957:	8b 85 08 e8 ff ff    	mov    -0x17f8(%rbp),%eax
    7f01bb40095d:	89 85 e0 e7 ff ff    	mov    %eax,-0x1820(%rbp)
    7f01bb400963:	41 8b 87 d0 4b 00 00 	mov    0x4bd0(%r15),%eax
    7f01bb40096a:	89 85 d8 e7 ff ff    	mov    %eax,-0x1828(%rbp)
    7f01bb400970:	ff c0                	inc    %eax
    7f01bb400972:	89 85 d0 e7 ff ff    	mov    %eax,-0x1830(%rbp)
    7f01bb400978:	8b 85 e0 eb ff ff    	mov    -0x1420(%rbp),%eax
    7f01bb40097e:	85 c0                	test   %eax,%eax
    7f01bb400980:	0f 84 11 00 00 00    	je     0x7f01bb400997
    7f01bb400986:	8b 85 d8 e7 ff ff    	mov    -0x1828(%rbp),%eax
    7f01bb40098c:	89 85 c8 e7 ff ff    	mov    %eax,-0x1838(%rbp)
    7f01bb400992:	e9 0c 00 00 00       	jmpq   0x7f01bb4009a3
    7f01bb400997:	8b 85 d0 e7 ff ff    	mov    -0x1830(%rbp),%eax
    7f01bb40099d:	89 85 c8 e7 ff ff    	mov    %eax,-0x1838(%rbp)
    7f01bb4009a3:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb4009aa:	0f 85 11 00 00 00    	jne    0x7f01bb4009c1
    7f01bb4009b0:	8b 85 c8 e7 ff ff    	mov    -0x1838(%rbp),%eax
    7f01bb4009b6:	89 85 c0 e7 ff ff    	mov    %eax,-0x1840(%rbp)
    7f01bb4009bc:	e9 2a 00 00 00       	jmpq   0x7f01bb4009eb
    7f01bb4009c1:	41 81 fe 00 00 40 00 	cmp    $0x400000,%r14d
    7f01bb4009c8:	0f 85 11 00 00 00    	jne    0x7f01bb4009df
    7f01bb4009ce:	8b 85 c8 e7 ff ff    	mov    -0x1838(%rbp),%eax
    7f01bb4009d4:	89 85 c0 e7 ff ff    	mov    %eax,-0x1840(%rbp)
    7f01bb4009da:	e9 0c 00 00 00       	jmpq   0x7f01bb4009eb
    7f01bb4009df:	8b 85 d8 e7 ff ff    	mov    -0x1828(%rbp),%eax
    7f01bb4009e5:	89 85 c0 e7 ff ff    	mov    %eax,-0x1840(%rbp)
    7f01bb4009eb:	8b 85 40 e9 ff ff    	mov    -0x16c0(%rbp),%eax
    7f01bb4009f1:	8b c0                	mov    %eax,%eax
    7f01bb4009f3:	8b 8d 18 e9 ff ff    	mov    -0x16e8(%rbp),%ecx
    7f01bb4009f9:	8b c9                	mov    %ecx,%ecx
    7f01bb4009fb:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb4009ff:	48 0b c1             	or     %rcx,%rax
    7f01bb400a02:	49 89 87 48 2e 00 00 	mov    %rax,0x2e48(%r15)
    7f01bb400a09:	8b 85 00 e9 ff ff    	mov    -0x1700(%rbp),%eax
    7f01bb400a0f:	8b c0                	mov    %eax,%eax
    7f01bb400a11:	8b 8d e8 e8 ff ff    	mov    -0x1718(%rbp),%ecx
    7f01bb400a17:	8b c9                	mov    %ecx,%ecx
    7f01bb400a19:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb400a1d:	48 0b c1             	or     %rcx,%rax
    7f01bb400a20:	49 89 87 50 2e 00 00 	mov    %rax,0x2e50(%r15)
    7f01bb400a27:	8b 85 c0 e8 ff ff    	mov    -0x1740(%rbp),%eax
    7f01bb400a2d:	8b c0                	mov    %eax,%eax
    7f01bb400a2f:	8b 8d 90 e8 ff ff    	mov    -0x1770(%rbp),%ecx
    7f01bb400a35:	8b c9                	mov    %ecx,%ecx
    7f01bb400a37:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb400a3b:	48 0b c1             	or     %rcx,%rax
    7f01bb400a3e:	49 89 87 58 2e 00 00 	mov    %rax,0x2e58(%r15)
    7f01bb400a45:	8b 85 68 e8 ff ff    	mov    -0x1798(%rbp),%eax
    7f01bb400a4b:	8b c0                	mov    %eax,%eax
    7f01bb400a4d:	8b 8d 38 e8 ff ff    	mov    -0x17c8(%rbp),%ecx
    7f01bb400a53:	8b c9                	mov    %ecx,%ecx
    7f01bb400a55:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb400a59:	48 0b c1             	or     %rcx,%rax
    7f01bb400a5c:	49 89 87 60 2e 00 00 	mov    %rax,0x2e60(%r15)
    7f01bb400a63:	8b 85 10 e8 ff ff    	mov    -0x17f0(%rbp),%eax
    7f01bb400a69:	8b c0                	mov    %eax,%eax
    7f01bb400a6b:	8b 8d e0 e7 ff ff    	mov    -0x1820(%rbp),%ecx
    7f01bb400a71:	8b c9                	mov    %ecx,%ecx
    7f01bb400a73:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb400a77:	48 0b c1             	or     %rcx,%rax
    7f01bb400a7a:	49 89 87 68 2e 00 00 	mov    %rax,0x2e68(%r15)
    7f01bb400a81:	8b 85 c0 e7 ff ff    	mov    -0x1840(%rbp),%eax
    7f01bb400a87:	8b c0                	mov    %eax,%eax
    7f01bb400a89:	49 89 87 70 2e 00 00 	mov    %rax,0x2e70(%r15)
    7f01bb400a90:	8b 85 08 ed ff ff    	mov    -0x12f8(%rbp),%eax
    7f01bb400a96:	85 c0                	test   %eax,%eax
    7f01bb400a98:	0f 84 0f 00 00 00    	je     0x7f01bb400aad
    7f01bb400a9e:	c7 85 b8 e7 ff ff 02 	movl   $0x2,-0x1848(%rbp)
    7f01bb400aa5:	00 00 00 
    7f01bb400aa8:	e9 09 00 00 00       	jmpq   0x7f01bb400ab6
    7f01bb400aad:	41 8b c6             	mov    %r14d,%eax
    7f01bb400ab0:	89 85 b8 e7 ff ff    	mov    %eax,-0x1848(%rbp)
    7f01bb400ab6:	8b 85 a0 f5 ff ff    	mov    -0xa60(%rbp),%eax
    7f01bb400abc:	23 85 18 eb ff ff    	and    -0x14e8(%rbp),%eax
    7f01bb400ac2:	85 c0                	test   %eax,%eax
    7f01bb400ac4:	0f 84 0f 00 00 00    	je     0x7f01bb400ad9
    7f01bb400aca:	c7 85 b0 e7 ff ff 04 	movl   $0x4,-0x1850(%rbp)
    7f01bb400ad1:	00 00 00 
    7f01bb400ad4:	e9 09 00 00 00       	jmpq   0x7f01bb400ae2
    7f01bb400ad9:	41 8b c6             	mov    %r14d,%eax
    7f01bb400adc:	89 85 b0 e7 ff ff    	mov    %eax,-0x1850(%rbp)
    7f01bb400ae2:	8b 85 90 f5 ff ff    	mov    -0xa70(%rbp),%eax
    7f01bb400ae8:	23 85 18 eb ff ff    	and    -0x14e8(%rbp),%eax
    7f01bb400aee:	89 85 a8 e7 ff ff    	mov    %eax,-0x1858(%rbp)
    7f01bb400af4:	85 c0                	test   %eax,%eax
    7f01bb400af6:	0f 84 0f 00 00 00    	je     0x7f01bb400b0b
    7f01bb400afc:	c7 85 a0 e7 ff ff 08 	movl   $0x8,-0x1860(%rbp)
    7f01bb400b03:	00 00 00 
    7f01bb400b06:	e9 09 00 00 00       	jmpq   0x7f01bb400b14
    7f01bb400b0b:	41 8b c6             	mov    %r14d,%eax
    7f01bb400b0e:	89 85 a0 e7 ff ff    	mov    %eax,-0x1860(%rbp)
    7f01bb400b14:	8b 85 c0 ec ff ff    	mov    -0x1340(%rbp),%eax
    7f01bb400b1a:	83 f8 0f             	cmp    $0xf,%eax
    7f01bb400b1d:	0f 95 c0             	setne  %al
    7f01bb400b20:	0f b6 c0             	movzbl %al,%eax
    7f01bb400b23:	89 85 98 e7 ff ff    	mov    %eax,-0x1868(%rbp)
    7f01bb400b29:	85 c0                	test   %eax,%eax
    7f01bb400b2b:	0f 84 0f 00 00 00    	je     0x7f01bb400b40
    7f01bb400b31:	c7 85 90 e7 ff ff 40 	movl   $0x40,-0x1870(%rbp)
    7f01bb400b38:	00 00 00 
    7f01bb400b3b:	e9 0a 00 00 00       	jmpq   0x7f01bb400b4a
    7f01bb400b40:	c7 85 90 e7 ff ff 10 	movl   $0x10,-0x1870(%rbp)
    7f01bb400b47:	00 00 00 
    7f01bb400b4a:	8b 85 a0 ec ff ff    	mov    -0x1360(%rbp),%eax
    7f01bb400b50:	85 c0                	test   %eax,%eax
    7f01bb400b52:	0f 84 11 00 00 00    	je     0x7f01bb400b69
    7f01bb400b58:	8b 85 90 e7 ff ff    	mov    -0x1870(%rbp),%eax
    7f01bb400b5e:	89 85 88 e7 ff ff    	mov    %eax,-0x1878(%rbp)
    7f01bb400b64:	e9 09 00 00 00       	jmpq   0x7f01bb400b72
    7f01bb400b69:	41 8b c6             	mov    %r14d,%eax
    7f01bb400b6c:	89 85 88 e7 ff ff    	mov    %eax,-0x1878(%rbp)
    7f01bb400b72:	8b 85 a8 e7 ff ff    	mov    -0x1858(%rbp),%eax
    7f01bb400b78:	85 c0                	test   %eax,%eax
    7f01bb400b7a:	0f 84 0f 00 00 00    	je     0x7f01bb400b8f
    7f01bb400b80:	c7 85 80 e7 ff ff 20 	movl   $0x20,-0x1880(%rbp)
    7f01bb400b87:	00 00 00 
    7f01bb400b8a:	e9 09 00 00 00       	jmpq   0x7f01bb400b98
    7f01bb400b8f:	41 8b c6             	mov    %r14d,%eax
    7f01bb400b92:	89 85 80 e7 ff ff    	mov    %eax,-0x1880(%rbp)
    7f01bb400b98:	8b 85 28 ef ff ff    	mov    -0x10d8(%rbp),%eax
    7f01bb400b9e:	85 c0                	test   %eax,%eax
    7f01bb400ba0:	0f 84 0f 00 00 00    	je     0x7f01bb400bb5
    7f01bb400ba6:	c7 85 78 e7 ff ff 80 	movl   $0x80,-0x1888(%rbp)
    7f01bb400bad:	00 00 00 
    7f01bb400bb0:	e9 09 00 00 00       	jmpq   0x7f01bb400bbe
    7f01bb400bb5:	41 8b c6             	mov    %r14d,%eax
    7f01bb400bb8:	89 85 78 e7 ff ff    	mov    %eax,-0x1888(%rbp)
    7f01bb400bbe:	8b 85 68 eb ff ff    	mov    -0x1498(%rbp),%eax
    7f01bb400bc4:	83 e0 0f             	and    $0xf,%eax
    7f01bb400bc7:	c1 e0 05             	shl    $0x5,%eax
    7f01bb400bca:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb400bcf:	49 8b cf             	mov    %r15,%rcx
    7f01bb400bd2:	48 81 c1 18 4b 00 00 	add    $0x4b18,%rcx
    7f01bb400bd9:	49 8b d7             	mov    %r15,%rdx
    7f01bb400bdc:	48 81 c2 78 2e 00 00 	add    $0x2e78,%rdx
    7f01bb400be3:	44 8b c0             	mov    %eax,%r8d
    7f01bb400be6:	48 89 8d 70 e7 ff ff 	mov    %rcx,-0x1890(%rbp)
    7f01bb400bed:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb400bf2:	48 89 95 68 e7 ff ff 	mov    %rdx,-0x1898(%rbp)
    7f01bb400bf9:	48 8b 95 70 e7 ff ff 	mov    -0x1890(%rbp),%rdx
    7f01bb400c00:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb400c05:	48 8b bd 68 e7 ff ff 	mov    -0x1898(%rbp),%rdi
    7f01bb400c0c:	89 85 60 e7 ff ff    	mov    %eax,-0x18a0(%rbp)
    7f01bb400c12:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb400c17:	e8 1e 09 8d ff       	callq  0x7f01bacd153a
    7f01bb400c1c:	41 8b 87 78 2e 00 00 	mov    0x2e78(%r15),%eax
    7f01bb400c23:	8b 8d e8 fd ff ff    	mov    -0x218(%rbp),%ecx
    7f01bb400c29:	83 e1 1f             	and    $0x1f,%ecx
    7f01bb400c2c:	ba 01 00 00 00       	mov    $0x1,%edx
    7f01bb400c31:	d3 e2                	shl    %cl,%edx
    7f01bb400c33:	89 95 58 e7 ff ff    	mov    %edx,-0x18a8(%rbp)
    7f01bb400c39:	23 c2                	and    %edx,%eax
    7f01bb400c3b:	85 c0                	test   %eax,%eax
    7f01bb400c3d:	0f 95 c0             	setne  %al
    7f01bb400c40:	0f b6 c0             	movzbl %al,%eax
    7f01bb400c43:	85 c0                	test   %eax,%eax
    7f01bb400c45:	0f 84 0f 00 00 00    	je     0x7f01bb400c5a
    7f01bb400c4b:	c7 85 50 e7 ff ff 00 	movl   $0x100,-0x18b0(%rbp)
    7f01bb400c52:	01 00 00 
    7f01bb400c55:	e9 0a 00 00 00       	jmpq   0x7f01bb400c64
    7f01bb400c5a:	c7 85 50 e7 ff ff 00 	movl   $0x80000,-0x18b0(%rbp)
    7f01bb400c61:	00 08 00 
    7f01bb400c64:	8b 85 58 eb ff ff    	mov    -0x14a8(%rbp),%eax
    7f01bb400c6a:	85 c0                	test   %eax,%eax
    7f01bb400c6c:	0f 84 11 00 00 00    	je     0x7f01bb400c83
    7f01bb400c72:	8b 85 50 e7 ff ff    	mov    -0x18b0(%rbp),%eax
    7f01bb400c78:	89 85 48 e7 ff ff    	mov    %eax,-0x18b8(%rbp)
    7f01bb400c7e:	e9 0a 00 00 00       	jmpq   0x7f01bb400c8d
    7f01bb400c83:	c7 85 48 e7 ff ff 00 	movl   $0x200,-0x18b8(%rbp)
    7f01bb400c8a:	02 00 00 
    7f01bb400c8d:	8b 85 38 eb ff ff    	mov    -0x14c8(%rbp),%eax
    7f01bb400c93:	85 c0                	test   %eax,%eax
    7f01bb400c95:	0f 84 0f 00 00 00    	je     0x7f01bb400caa
    7f01bb400c9b:	c7 85 40 e7 ff ff 00 	movl   $0x1000,-0x18c0(%rbp)
    7f01bb400ca2:	10 00 00 
    7f01bb400ca5:	e9 0a 00 00 00       	jmpq   0x7f01bb400cb4
    7f01bb400caa:	c7 85 40 e7 ff ff 00 	movl   $0x800,-0x18c0(%rbp)
    7f01bb400cb1:	08 00 00 
    7f01bb400cb4:	8b 85 80 f5 ff ff    	mov    -0xa80(%rbp),%eax
    7f01bb400cba:	23 85 18 eb ff ff    	and    -0x14e8(%rbp),%eax
    7f01bb400cc0:	85 c0                	test   %eax,%eax
    7f01bb400cc2:	0f 84 0f 00 00 00    	je     0x7f01bb400cd7
    7f01bb400cc8:	c7 85 38 e7 ff ff 00 	movl   $0x400,-0x18c8(%rbp)
    7f01bb400ccf:	04 00 00 
    7f01bb400cd2:	e9 09 00 00 00       	jmpq   0x7f01bb400ce0
    7f01bb400cd7:	41 8b c6             	mov    %r14d,%eax
    7f01bb400cda:	89 85 38 e7 ff ff    	mov    %eax,-0x18c8(%rbp)
    7f01bb400ce0:	49 8b c7             	mov    %r15,%rax
    7f01bb400ce3:	48 05 80 49 00 00    	add    $0x4980,%rax
    7f01bb400ce9:	49 8b cf             	mov    %r15,%rcx
    7f01bb400cec:	48 81 c1 b8 2e 00 00 	add    $0x2eb8,%rcx
    7f01bb400cf3:	44 8b 85 60 e7 ff ff 	mov    -0x18a0(%rbp),%r8d
    7f01bb400cfa:	48 89 8d 30 e7 ff ff 	mov    %rcx,-0x18d0(%rbp)
    7f01bb400d01:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb400d06:	48 8b d0             	mov    %rax,%rdx
    7f01bb400d09:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb400d0e:	48 8b bd 30 e7 ff ff 	mov    -0x18d0(%rbp),%rdi
    7f01bb400d15:	48 89 85 28 e7 ff ff 	mov    %rax,-0x18d8(%rbp)
    7f01bb400d1c:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb400d21:	e8 14 08 8d ff       	callq  0x7f01bacd153a
    7f01bb400d26:	41 8b 87 b8 2e 00 00 	mov    0x2eb8(%r15),%eax
    7f01bb400d2d:	23 85 58 e7 ff ff    	and    -0x18a8(%rbp),%eax
    7f01bb400d33:	85 c0                	test   %eax,%eax
    7f01bb400d35:	0f 95 c0             	setne  %al
    7f01bb400d38:	0f b6 c0             	movzbl %al,%eax
    7f01bb400d3b:	85 c0                	test   %eax,%eax
    7f01bb400d3d:	0f 84 0f 00 00 00    	je     0x7f01bb400d52
    7f01bb400d43:	c7 85 20 e7 ff ff 00 	movl   $0x100,-0x18e0(%rbp)
    7f01bb400d4a:	01 00 00 
    7f01bb400d4d:	e9 0a 00 00 00       	jmpq   0x7f01bb400d5c
    7f01bb400d52:	c7 85 20 e7 ff ff 00 	movl   $0x80000,-0x18e0(%rbp)
    7f01bb400d59:	00 08 00 
    7f01bb400d5c:	8b 85 68 ed ff ff    	mov    -0x1298(%rbp),%eax
    7f01bb400d62:	85 c0                	test   %eax,%eax
    7f01bb400d64:	0f 84 11 00 00 00    	je     0x7f01bb400d7b
    7f01bb400d6a:	8b 85 20 e7 ff ff    	mov    -0x18e0(%rbp),%eax
    7f01bb400d70:	89 85 18 e7 ff ff    	mov    %eax,-0x18e8(%rbp)
    7f01bb400d76:	e9 09 00 00 00       	jmpq   0x7f01bb400d84
    7f01bb400d7b:	41 8b c6             	mov    %r14d,%eax
    7f01bb400d7e:	89 85 18 e7 ff ff    	mov    %eax,-0x18e8(%rbp)
    7f01bb400d84:	8b 85 70 f5 ff ff    	mov    -0xa90(%rbp),%eax
    7f01bb400d8a:	23 85 18 eb ff ff    	and    -0x14e8(%rbp),%eax
    7f01bb400d90:	85 c0                	test   %eax,%eax
    7f01bb400d92:	0f 84 0f 00 00 00    	je     0x7f01bb400da7
    7f01bb400d98:	c7 85 10 e7 ff ff 00 	movl   $0x1000,-0x18f0(%rbp)
    7f01bb400d9f:	10 00 00 
    7f01bb400da2:	e9 09 00 00 00       	jmpq   0x7f01bb400db0
    7f01bb400da7:	41 8b c6             	mov    %r14d,%eax
    7f01bb400daa:	89 85 10 e7 ff ff    	mov    %eax,-0x18f0(%rbp)
    7f01bb400db0:	8b 85 60 f5 ff ff    	mov    -0xaa0(%rbp),%eax
    7f01bb400db6:	23 85 18 eb ff ff    	and    -0x14e8(%rbp),%eax
    7f01bb400dbc:	85 c0                	test   %eax,%eax
    7f01bb400dbe:	0f 84 0f 00 00 00    	je     0x7f01bb400dd3
    7f01bb400dc4:	c7 85 08 e7 ff ff 00 	movl   $0x8000,-0x18f8(%rbp)
    7f01bb400dcb:	80 00 00 
    7f01bb400dce:	e9 09 00 00 00       	jmpq   0x7f01bb400ddc
    7f01bb400dd3:	41 8b c6             	mov    %r14d,%eax
    7f01bb400dd6:	89 85 08 e7 ff ff    	mov    %eax,-0x18f8(%rbp)
    7f01bb400ddc:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
    7f01bb400de2:	3b 85 a8 fd ff ff    	cmp    -0x258(%rbp),%eax
    7f01bb400de8:	0f 95 c0             	setne  %al
    7f01bb400deb:	0f b6 c0             	movzbl %al,%eax
    7f01bb400dee:	85 c0                	test   %eax,%eax
    7f01bb400df0:	0f 84 0f 00 00 00    	je     0x7f01bb400e05
    7f01bb400df6:	c7 85 00 e7 ff ff 00 	movl   $0x4000,-0x1900(%rbp)
    7f01bb400dfd:	40 00 00 
    7f01bb400e00:	e9 0a 00 00 00       	jmpq   0x7f01bb400e0f
    7f01bb400e05:	c7 85 00 e7 ff ff 00 	movl   $0x10000,-0x1900(%rbp)
    7f01bb400e0c:	00 01 00 
    7f01bb400e0f:	8b 85 08 eb ff ff    	mov    -0x14f8(%rbp),%eax
    7f01bb400e15:	85 c0                	test   %eax,%eax
    7f01bb400e17:	0f 84 11 00 00 00    	je     0x7f01bb400e2e
    7f01bb400e1d:	8b 85 00 e7 ff ff    	mov    -0x1900(%rbp),%eax
    7f01bb400e23:	89 85 f8 e6 ff ff    	mov    %eax,-0x1908(%rbp)
    7f01bb400e29:	e9 09 00 00 00       	jmpq   0x7f01bb400e37
    7f01bb400e2e:	41 8b c6             	mov    %r14d,%eax
    7f01bb400e31:	89 85 f8 e6 ff ff    	mov    %eax,-0x1908(%rbp)
    7f01bb400e37:	8b 85 b8 ea ff ff    	mov    -0x1548(%rbp),%eax
    7f01bb400e3d:	85 c0                	test   %eax,%eax
    7f01bb400e3f:	0f 84 0f 00 00 00    	je     0x7f01bb400e54
    7f01bb400e45:	c7 85 f0 e6 ff ff 00 	movl   $0x20000,-0x1910(%rbp)
    7f01bb400e4c:	00 02 00 
    7f01bb400e4f:	e9 09 00 00 00       	jmpq   0x7f01bb400e5d
    7f01bb400e54:	41 8b c6             	mov    %r14d,%eax
    7f01bb400e57:	89 85 f0 e6 ff ff    	mov    %eax,-0x1910(%rbp)
    7f01bb400e5d:	8b 8d e0 fd ff ff    	mov    -0x220(%rbp),%ecx
    7f01bb400e63:	3b 8d d0 fd ff ff    	cmp    -0x230(%rbp),%ecx
    7f01bb400e69:	0f 95 c0             	setne  %al
    7f01bb400e6c:	0f b6 c0             	movzbl %al,%eax
    7f01bb400e6f:	89 85 e8 e6 ff ff    	mov    %eax,-0x1918(%rbp)
    7f01bb400e75:	83 e1 0f             	and    $0xf,%ecx
    7f01bb400e78:	89 8d e0 e6 ff ff    	mov    %ecx,-0x1920(%rbp)
    7f01bb400e7e:	83 f9 0f             	cmp    $0xf,%ecx
    7f01bb400e81:	0f 94 c0             	sete   %al
    7f01bb400e84:	0f b6 c0             	movzbl %al,%eax
    7f01bb400e87:	89 85 d8 e6 ff ff    	mov    %eax,-0x1928(%rbp)
    7f01bb400e8d:	85 c0                	test   %eax,%eax
    7f01bb400e8f:	0f 84 0f 00 00 00    	je     0x7f01bb400ea4
    7f01bb400e95:	c7 85 d0 e6 ff ff 00 	movl   $0x40000,-0x1930(%rbp)
    7f01bb400e9c:	00 04 00 
    7f01bb400e9f:	e9 09 00 00 00       	jmpq   0x7f01bb400ead
    7f01bb400ea4:	41 8b c6             	mov    %r14d,%eax
    7f01bb400ea7:	89 85 d0 e6 ff ff    	mov    %eax,-0x1930(%rbp)
    7f01bb400ead:	8b 85 e8 e6 ff ff    	mov    -0x1918(%rbp),%eax
    7f01bb400eb3:	85 c0                	test   %eax,%eax
    7f01bb400eb5:	0f 84 11 00 00 00    	je     0x7f01bb400ecc
    7f01bb400ebb:	8b 85 d0 e6 ff ff    	mov    -0x1930(%rbp),%eax
    7f01bb400ec1:	89 85 c8 e6 ff ff    	mov    %eax,-0x1938(%rbp)
    7f01bb400ec7:	e9 0a 00 00 00       	jmpq   0x7f01bb400ed6
    7f01bb400ecc:	c7 85 c8 e6 ff ff 00 	movl   $0x80000,-0x1938(%rbp)
    7f01bb400ed3:	00 08 00 
    7f01bb400ed6:	8b 85 e0 eb ff ff    	mov    -0x1420(%rbp),%eax
    7f01bb400edc:	85 c0                	test   %eax,%eax
    7f01bb400ede:	0f 84 11 00 00 00    	je     0x7f01bb400ef5
    7f01bb400ee4:	8b 85 c8 e6 ff ff    	mov    -0x1938(%rbp),%eax
    7f01bb400eea:	89 85 c0 e6 ff ff    	mov    %eax,-0x1940(%rbp)
    7f01bb400ef0:	e9 09 00 00 00       	jmpq   0x7f01bb400efe
    7f01bb400ef5:	41 8b c6             	mov    %r14d,%eax
    7f01bb400ef8:	89 85 c0 e6 ff ff    	mov    %eax,-0x1940(%rbp)
    7f01bb400efe:	8b 85 f8 fd ff ff    	mov    -0x208(%rbp),%eax
    7f01bb400f04:	3b 85 f0 fd ff ff    	cmp    -0x210(%rbp),%eax
    7f01bb400f0a:	0f 95 c0             	setne  %al
    7f01bb400f0d:	0f b6 c0             	movzbl %al,%eax
    7f01bb400f10:	89 85 b8 e6 ff ff    	mov    %eax,-0x1948(%rbp)
    7f01bb400f16:	8b 85 98 e7 ff ff    	mov    -0x1868(%rbp),%eax
    7f01bb400f1c:	85 c0                	test   %eax,%eax
    7f01bb400f1e:	0f 84 0f 00 00 00    	je     0x7f01bb400f33
    7f01bb400f24:	c7 85 b0 e6 ff ff 00 	movl   $0x100000,-0x1950(%rbp)
    7f01bb400f2b:	00 10 00 
    7f01bb400f2e:	e9 0a 00 00 00       	jmpq   0x7f01bb400f3d
    7f01bb400f33:	c7 85 b0 e6 ff ff 02 	movl   $0x2,-0x1950(%rbp)
    7f01bb400f3a:	00 00 00 
    7f01bb400f3d:	8b 85 b8 e6 ff ff    	mov    -0x1948(%rbp),%eax
    7f01bb400f43:	85 c0                	test   %eax,%eax
    7f01bb400f45:	0f 84 11 00 00 00    	je     0x7f01bb400f5c
    7f01bb400f4b:	8b 85 b0 e6 ff ff    	mov    -0x1950(%rbp),%eax
    7f01bb400f51:	89 85 a8 e6 ff ff    	mov    %eax,-0x1958(%rbp)
    7f01bb400f57:	e9 0a 00 00 00       	jmpq   0x7f01bb400f66
    7f01bb400f5c:	c7 85 a8 e6 ff ff 00 	movl   $0x200000,-0x1958(%rbp)
    7f01bb400f63:	00 20 00 
    7f01bb400f66:	8b 85 e0 eb ff ff    	mov    -0x1420(%rbp),%eax
    7f01bb400f6c:	85 c0                	test   %eax,%eax
    7f01bb400f6e:	0f 84 0f 00 00 00    	je     0x7f01bb400f83
    7f01bb400f74:	c7 85 a0 e6 ff ff 01 	movl   $0x1,-0x1960(%rbp)
    7f01bb400f7b:	00 00 00 
    7f01bb400f7e:	e9 09 00 00 00       	jmpq   0x7f01bb400f8c
    7f01bb400f83:	41 8b c6             	mov    %r14d,%eax
    7f01bb400f86:	89 85 a0 e6 ff ff    	mov    %eax,-0x1960(%rbp)
    7f01bb400f8c:	41 83 fe 01          	cmp    $0x1,%r14d
    7f01bb400f90:	0f 85 11 00 00 00    	jne    0x7f01bb400fa7
    7f01bb400f96:	8b 85 b8 e7 ff ff    	mov    -0x1848(%rbp),%eax
    7f01bb400f9c:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb400fa2:	e9 81 02 00 00       	jmpq   0x7f01bb401228
    7f01bb400fa7:	41 83 fe 02          	cmp    $0x2,%r14d
    7f01bb400fab:	0f 85 11 00 00 00    	jne    0x7f01bb400fc2
    7f01bb400fb1:	8b 85 b0 e7 ff ff    	mov    -0x1850(%rbp),%eax
    7f01bb400fb7:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb400fbd:	e9 66 02 00 00       	jmpq   0x7f01bb401228
    7f01bb400fc2:	41 83 fe 04          	cmp    $0x4,%r14d
    7f01bb400fc6:	0f 85 11 00 00 00    	jne    0x7f01bb400fdd
    7f01bb400fcc:	8b 85 a0 e7 ff ff    	mov    -0x1860(%rbp),%eax
    7f01bb400fd2:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb400fd8:	e9 4b 02 00 00       	jmpq   0x7f01bb401228
    7f01bb400fdd:	41 83 fe 08          	cmp    $0x8,%r14d
    7f01bb400fe1:	0f 85 11 00 00 00    	jne    0x7f01bb400ff8
    7f01bb400fe7:	8b 85 88 e7 ff ff    	mov    -0x1878(%rbp),%eax
    7f01bb400fed:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb400ff3:	e9 30 02 00 00       	jmpq   0x7f01bb401228
    7f01bb400ff8:	41 83 fe 40          	cmp    $0x40,%r14d
    7f01bb400ffc:	0f 85 0f 00 00 00    	jne    0x7f01bb401011
    7f01bb401002:	c7 85 98 e6 ff ff 80 	movl   $0x80,-0x1968(%rbp)
    7f01bb401009:	00 00 00 
    7f01bb40100c:	e9 17 02 00 00       	jmpq   0x7f01bb401228
    7f01bb401011:	41 83 fe 10          	cmp    $0x10,%r14d
    7f01bb401015:	0f 85 11 00 00 00    	jne    0x7f01bb40102c
    7f01bb40101b:	8b 85 80 e7 ff ff    	mov    -0x1880(%rbp),%eax
    7f01bb401021:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb401027:	e9 fc 01 00 00       	jmpq   0x7f01bb401228
    7f01bb40102c:	41 83 fe 20          	cmp    $0x20,%r14d
    7f01bb401030:	0f 85 11 00 00 00    	jne    0x7f01bb401047
    7f01bb401036:	8b 85 78 e7 ff ff    	mov    -0x1888(%rbp),%eax
    7f01bb40103c:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb401042:	e9 e1 01 00 00       	jmpq   0x7f01bb401228
    7f01bb401047:	41 81 fe 80 00 00 00 	cmp    $0x80,%r14d
    7f01bb40104e:	0f 85 11 00 00 00    	jne    0x7f01bb401065
    7f01bb401054:	8b 85 48 e7 ff ff    	mov    -0x18b8(%rbp),%eax
    7f01bb40105a:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb401060:	e9 c3 01 00 00       	jmpq   0x7f01bb401228
    7f01bb401065:	41 81 fe 00 01 00 00 	cmp    $0x100,%r14d
    7f01bb40106c:	0f 85 11 00 00 00    	jne    0x7f01bb401083
    7f01bb401072:	8b 85 40 e7 ff ff    	mov    -0x18c0(%rbp),%eax
    7f01bb401078:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb40107e:	e9 a5 01 00 00       	jmpq   0x7f01bb401228
    7f01bb401083:	41 81 fe 00 02 00 00 	cmp    $0x200,%r14d
    7f01bb40108a:	0f 85 11 00 00 00    	jne    0x7f01bb4010a1
    7f01bb401090:	8b 85 38 e7 ff ff    	mov    -0x18c8(%rbp),%eax
    7f01bb401096:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb40109c:	e9 87 01 00 00       	jmpq   0x7f01bb401228
    7f01bb4010a1:	41 81 fe 00 04 00 00 	cmp    $0x400,%r14d
    7f01bb4010a8:	0f 85 11 00 00 00    	jne    0x7f01bb4010bf
    7f01bb4010ae:	8b 85 18 e7 ff ff    	mov    -0x18e8(%rbp),%eax
    7f01bb4010b4:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb4010ba:	e9 69 01 00 00       	jmpq   0x7f01bb401228
    7f01bb4010bf:	41 81 fe 00 08 00 00 	cmp    $0x800,%r14d
    7f01bb4010c6:	0f 85 11 00 00 00    	jne    0x7f01bb4010dd
    7f01bb4010cc:	8b 85 10 e7 ff ff    	mov    -0x18f0(%rbp),%eax
    7f01bb4010d2:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb4010d8:	e9 4b 01 00 00       	jmpq   0x7f01bb401228
    7f01bb4010dd:	41 81 fe 00 10 00 00 	cmp    $0x1000,%r14d
    7f01bb4010e4:	0f 85 0f 00 00 00    	jne    0x7f01bb4010f9
    7f01bb4010ea:	c7 85 98 e6 ff ff 00 	movl   $0x2000,-0x1968(%rbp)
    7f01bb4010f1:	20 00 00 
    7f01bb4010f4:	e9 2f 01 00 00       	jmpq   0x7f01bb401228
    7f01bb4010f9:	41 81 fe 00 20 00 00 	cmp    $0x2000,%r14d
    7f01bb401100:	0f 85 0f 00 00 00    	jne    0x7f01bb401115
    7f01bb401106:	c7 85 98 e6 ff ff 00 	movl   $0x4000,-0x1968(%rbp)
    7f01bb40110d:	40 00 00 
    7f01bb401110:	e9 13 01 00 00       	jmpq   0x7f01bb401228
    7f01bb401115:	41 81 fe 00 40 00 00 	cmp    $0x4000,%r14d
    7f01bb40111c:	0f 85 11 00 00 00    	jne    0x7f01bb401133
    7f01bb401122:	8b 85 08 e7 ff ff    	mov    -0x18f8(%rbp),%eax
    7f01bb401128:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb40112e:	e9 f5 00 00 00       	jmpq   0x7f01bb401228
    7f01bb401133:	41 81 fe 00 80 00 00 	cmp    $0x8000,%r14d
    7f01bb40113a:	0f 85 11 00 00 00    	jne    0x7f01bb401151
    7f01bb401140:	8b 85 f8 e6 ff ff    	mov    -0x1908(%rbp),%eax
    7f01bb401146:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb40114c:	e9 d7 00 00 00       	jmpq   0x7f01bb401228
    7f01bb401151:	41 81 fe 00 00 01 00 	cmp    $0x10000,%r14d
    7f01bb401158:	0f 85 11 00 00 00    	jne    0x7f01bb40116f
    7f01bb40115e:	8b 85 f0 e6 ff ff    	mov    -0x1910(%rbp),%eax
    7f01bb401164:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb40116a:	e9 b9 00 00 00       	jmpq   0x7f01bb401228
    7f01bb40116f:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb401176:	0f 85 11 00 00 00    	jne    0x7f01bb40118d
    7f01bb40117c:	8b 85 c0 e6 ff ff    	mov    -0x1940(%rbp),%eax
    7f01bb401182:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb401188:	e9 9b 00 00 00       	jmpq   0x7f01bb401228
    7f01bb40118d:	41 81 fe 00 00 04 00 	cmp    $0x40000,%r14d
    7f01bb401194:	0f 85 0f 00 00 00    	jne    0x7f01bb4011a9
    7f01bb40119a:	c7 85 98 e6 ff ff 00 	movl   $0x20000,-0x1968(%rbp)
    7f01bb4011a1:	00 02 00 
    7f01bb4011a4:	e9 7f 00 00 00       	jmpq   0x7f01bb401228
    7f01bb4011a9:	41 81 fe 00 00 08 00 	cmp    $0x80000,%r14d
    7f01bb4011b0:	0f 85 11 00 00 00    	jne    0x7f01bb4011c7
    7f01bb4011b6:	8b 85 a8 e6 ff ff    	mov    -0x1958(%rbp),%eax
    7f01bb4011bc:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb4011c2:	e9 61 00 00 00       	jmpq   0x7f01bb401228
    7f01bb4011c7:	41 81 fe 00 00 10 00 	cmp    $0x100000,%r14d
    7f01bb4011ce:	0f 85 11 00 00 00    	jne    0x7f01bb4011e5
    7f01bb4011d4:	8b 85 90 e7 ff ff    	mov    -0x1870(%rbp),%eax
    7f01bb4011da:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb4011e0:	e9 43 00 00 00       	jmpq   0x7f01bb401228
    7f01bb4011e5:	41 81 fe 00 00 20 00 	cmp    $0x200000,%r14d
    7f01bb4011ec:	0f 85 0f 00 00 00    	jne    0x7f01bb401201
    7f01bb4011f2:	c7 85 98 e6 ff ff 00 	movl   $0x400000,-0x1968(%rbp)
    7f01bb4011f9:	00 40 00 
    7f01bb4011fc:	e9 27 00 00 00       	jmpq   0x7f01bb401228
    7f01bb401201:	41 81 fe 00 00 40 00 	cmp    $0x400000,%r14d
    7f01bb401208:	0f 85 11 00 00 00    	jne    0x7f01bb40121f
    7f01bb40120e:	8b 85 a0 e6 ff ff    	mov    -0x1960(%rbp),%eax
    7f01bb401214:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb40121a:	e9 09 00 00 00       	jmpq   0x7f01bb401228
    7f01bb40121f:	41 8b c6             	mov    %r14d,%eax
    7f01bb401222:	89 85 98 e6 ff ff    	mov    %eax,-0x1968(%rbp)
    7f01bb401228:	8b 85 88 e9 ff ff    	mov    -0x1678(%rbp),%eax
    7f01bb40122e:	85 c0                	test   %eax,%eax
    7f01bb401230:	0f 84 0f 00 00 00    	je     0x7f01bb401245
    7f01bb401236:	c7 85 90 e6 ff ff 01 	movl   $0x1,-0x1970(%rbp)
    7f01bb40123d:	00 00 00 
    7f01bb401240:	e9 0a 00 00 00       	jmpq   0x7f01bb40124f
    7f01bb401245:	c7 85 90 e6 ff ff 00 	movl   $0x0,-0x1970(%rbp)
    7f01bb40124c:	00 00 00 
    7f01bb40124f:	8b 85 a0 ec ff ff    	mov    -0x1360(%rbp),%eax
    7f01bb401255:	85 c0                	test   %eax,%eax
    7f01bb401257:	0f 84 0f 00 00 00    	je     0x7f01bb40126c
    7f01bb40125d:	c7 85 88 e6 ff ff 01 	movl   $0x1,-0x1978(%rbp)
    7f01bb401264:	00 00 00 
    7f01bb401267:	e9 0a 00 00 00       	jmpq   0x7f01bb401276
    7f01bb40126c:	c7 85 88 e6 ff ff 00 	movl   $0x0,-0x1978(%rbp)
    7f01bb401273:	00 00 00 
    7f01bb401276:	8b 85 28 ef ff ff    	mov    -0x10d8(%rbp),%eax
    7f01bb40127c:	85 c0                	test   %eax,%eax
    7f01bb40127e:	0f 84 0f 00 00 00    	je     0x7f01bb401293
    7f01bb401284:	c7 85 80 e6 ff ff 01 	movl   $0x1,-0x1980(%rbp)
    7f01bb40128b:	00 00 00 
    7f01bb40128e:	e9 0a 00 00 00       	jmpq   0x7f01bb40129d
    7f01bb401293:	c7 85 80 e6 ff ff 00 	movl   $0x0,-0x1980(%rbp)
    7f01bb40129a:	00 00 00 
    7f01bb40129d:	41 83 fe 08          	cmp    $0x8,%r14d
    7f01bb4012a1:	0f 85 11 00 00 00    	jne    0x7f01bb4012b8
    7f01bb4012a7:	8b 85 88 e6 ff ff    	mov    -0x1978(%rbp),%eax
    7f01bb4012ad:	89 85 78 e6 ff ff    	mov    %eax,-0x1988(%rbp)
    7f01bb4012b3:	e9 25 00 00 00       	jmpq   0x7f01bb4012dd
    7f01bb4012b8:	41 83 fe 20          	cmp    $0x20,%r14d
    7f01bb4012bc:	0f 85 11 00 00 00    	jne    0x7f01bb4012d3
    7f01bb4012c2:	8b 85 80 e6 ff ff    	mov    -0x1980(%rbp),%eax
    7f01bb4012c8:	89 85 78 e6 ff ff    	mov    %eax,-0x1988(%rbp)
    7f01bb4012ce:	e9 0a 00 00 00       	jmpq   0x7f01bb4012dd
    7f01bb4012d3:	c7 85 78 e6 ff ff 00 	movl   $0x0,-0x1988(%rbp)
    7f01bb4012da:	00 00 00 
    7f01bb4012dd:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb4012e4:	0f 94 c0             	sete   %al
    7f01bb4012e7:	0f b6 c0             	movzbl %al,%eax
    7f01bb4012ea:	23 85 e0 eb ff ff    	and    -0x1420(%rbp),%eax
    7f01bb4012f0:	89 85 70 e6 ff ff    	mov    %eax,-0x1990(%rbp)
    7f01bb4012f6:	8b 85 d8 e6 ff ff    	mov    -0x1928(%rbp),%eax
    7f01bb4012fc:	85 c0                	test   %eax,%eax
    7f01bb4012fe:	0f 84 0f 00 00 00    	je     0x7f01bb401313
    7f01bb401304:	c7 85 68 e6 ff ff 01 	movl   $0x1,-0x1998(%rbp)
    7f01bb40130b:	00 00 00 
    7f01bb40130e:	e9 0a 00 00 00       	jmpq   0x7f01bb40131d
    7f01bb401313:	c7 85 68 e6 ff ff 00 	movl   $0x0,-0x1998(%rbp)
    7f01bb40131a:	00 00 00 
    7f01bb40131d:	8b 85 e8 e6 ff ff    	mov    -0x1918(%rbp),%eax
    7f01bb401323:	85 c0                	test   %eax,%eax
    7f01bb401325:	0f 84 11 00 00 00    	je     0x7f01bb40133c
    7f01bb40132b:	8b 85 68 e6 ff ff    	mov    -0x1998(%rbp),%eax
    7f01bb401331:	89 85 60 e6 ff ff    	mov    %eax,-0x19a0(%rbp)
    7f01bb401337:	e9 0a 00 00 00       	jmpq   0x7f01bb401346
    7f01bb40133c:	c7 85 60 e6 ff ff 01 	movl   $0x1,-0x19a0(%rbp)
    7f01bb401343:	00 00 00 
    7f01bb401346:	8b 85 70 e6 ff ff    	mov    -0x1990(%rbp),%eax
    7f01bb40134c:	85 c0                	test   %eax,%eax
    7f01bb40134e:	0f 84 11 00 00 00    	je     0x7f01bb401365
    7f01bb401354:	8b 85 60 e6 ff ff    	mov    -0x19a0(%rbp),%eax
    7f01bb40135a:	89 85 58 e6 ff ff    	mov    %eax,-0x19a8(%rbp)
    7f01bb401360:	e9 0a 00 00 00       	jmpq   0x7f01bb40136f
    7f01bb401365:	c7 85 58 e6 ff ff 00 	movl   $0x0,-0x19a8(%rbp)
    7f01bb40136c:	00 00 00 
    7f01bb40136f:	8b 85 78 e9 ff ff    	mov    -0x1688(%rbp),%eax
    7f01bb401375:	85 c0                	test   %eax,%eax
    7f01bb401377:	0f 84 0f 00 00 00    	je     0x7f01bb40138c
    7f01bb40137d:	c7 85 50 e6 ff ff 01 	movl   $0x1,-0x19b0(%rbp)
    7f01bb401384:	00 00 00 
    7f01bb401387:	e9 0a 00 00 00       	jmpq   0x7f01bb401396
    7f01bb40138c:	c7 85 50 e6 ff ff 00 	movl   $0x0,-0x19b0(%rbp)
    7f01bb401393:	00 00 00 
    7f01bb401396:	8b 85 80 e9 ff ff    	mov    -0x1680(%rbp),%eax
    7f01bb40139c:	85 c0                	test   %eax,%eax
    7f01bb40139e:	0f 84 0f 00 00 00    	je     0x7f01bb4013b3
    7f01bb4013a4:	c7 85 48 e6 ff ff 01 	movl   $0x1,-0x19b8(%rbp)
    7f01bb4013ab:	00 00 00 
    7f01bb4013ae:	e9 0a 00 00 00       	jmpq   0x7f01bb4013bd
    7f01bb4013b3:	c7 85 48 e6 ff ff 00 	movl   $0x0,-0x19b8(%rbp)
    7f01bb4013ba:	00 00 00 
    7f01bb4013bd:	8b 85 48 fe ff ff    	mov    -0x1b8(%rbp),%eax
    7f01bb4013c3:	85 c0                	test   %eax,%eax
    7f01bb4013c5:	0f 84 36 00 00 00    	je     0x7f01bb401401
    7f01bb4013cb:	49 8b c7             	mov    %r15,%rax
    7f01bb4013ce:	48 05 f8 2e 00 00    	add    $0x2ef8,%rax
    7f01bb4013d4:	49 8b cf             	mov    %r15,%rcx
    7f01bb4013d7:	48 81 c1 c8 42 00 00 	add    $0x42c8,%rcx
    7f01bb4013de:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4013e1:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4013e4:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4013e8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4013ec:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4013f0:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4013f4:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4013f8:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4013fc:	e9 31 00 00 00       	jmpq   0x7f01bb401432
    7f01bb401401:	49 8b c7             	mov    %r15,%rax
    7f01bb401404:	48 05 f8 2e 00 00    	add    $0x2ef8,%rax
    7f01bb40140a:	49 8b cf             	mov    %r15,%rcx
    7f01bb40140d:	48 81 c1 38 48 00 00 	add    $0x4838,%rcx
    7f01bb401414:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb401417:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40141a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40141e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb401422:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb401426:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40142a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40142e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb401432:	8b 85 e0 e6 ff ff    	mov    -0x1920(%rbp),%eax
    7f01bb401438:	c1 e0 05             	shl    $0x5,%eax
    7f01bb40143b:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb401440:	49 8b cf             	mov    %r15,%rcx
    7f01bb401443:	48 81 c1 f8 2e 00 00 	add    $0x2ef8,%rcx
    7f01bb40144a:	49 8b d7             	mov    %r15,%rdx
    7f01bb40144d:	48 81 c2 38 2f 00 00 	add    $0x2f38,%rdx
    7f01bb401454:	44 8b c0             	mov    %eax,%r8d
    7f01bb401457:	48 89 8d 40 e6 ff ff 	mov    %rcx,-0x19c0(%rbp)
    7f01bb40145e:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb401463:	48 89 95 38 e6 ff ff 	mov    %rdx,-0x19c8(%rbp)
    7f01bb40146a:	48 8b 95 40 e6 ff ff 	mov    -0x19c0(%rbp),%rdx
    7f01bb401471:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb401476:	48 8b bd 38 e6 ff ff 	mov    -0x19c8(%rbp),%rdi
    7f01bb40147d:	89 85 30 e6 ff ff    	mov    %eax,-0x19d0(%rbp)
    7f01bb401483:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb401488:	e8 ad 00 8d ff       	callq  0x7f01bacd153a
    7f01bb40148d:	41 8b 87 37 2f 00 00 	mov    0x2f37(%r15),%eax
    7f01bb401494:	c1 e8 08             	shr    $0x8,%eax
    7f01bb401497:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb40149c:	89 85 28 e6 ff ff    	mov    %eax,-0x19d8(%rbp)
    7f01bb4014a2:	41 8b 87 07 4c 00 00 	mov    0x4c07(%r15),%eax
    7f01bb4014a9:	c1 e8 08             	shr    $0x8,%eax
    7f01bb4014ac:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4014b1:	89 85 20 e6 ff ff    	mov    %eax,-0x19e0(%rbp)
    7f01bb4014b7:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb4014be:	0f 85 11 00 00 00    	jne    0x7f01bb4014d5
    7f01bb4014c4:	8b 85 28 e6 ff ff    	mov    -0x19d8(%rbp),%eax
    7f01bb4014ca:	89 85 18 e6 ff ff    	mov    %eax,-0x19e8(%rbp)
    7f01bb4014d0:	e9 0c 00 00 00       	jmpq   0x7f01bb4014e1
    7f01bb4014d5:	8b 85 20 e6 ff ff    	mov    -0x19e0(%rbp),%eax
    7f01bb4014db:	89 85 18 e6 ff ff    	mov    %eax,-0x19e8(%rbp)
    7f01bb4014e1:	8b 85 10 fe ff ff    	mov    -0x1f0(%rbp),%eax
    7f01bb4014e7:	85 c0                	test   %eax,%eax
    7f01bb4014e9:	0f 84 36 00 00 00    	je     0x7f01bb401525
    7f01bb4014ef:	49 8b c7             	mov    %r15,%rax
    7f01bb4014f2:	48 05 78 2f 00 00    	add    $0x2f78,%rax
    7f01bb4014f8:	49 8b cf             	mov    %r15,%rcx
    7f01bb4014fb:	48 81 c1 c8 42 00 00 	add    $0x42c8,%rcx
    7f01bb401502:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb401505:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb401508:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40150c:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb401510:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb401514:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb401518:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40151c:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb401520:	e9 31 00 00 00       	jmpq   0x7f01bb401556
    7f01bb401525:	49 8b c7             	mov    %r15,%rax
    7f01bb401528:	48 05 78 2f 00 00    	add    $0x2f78,%rax
    7f01bb40152e:	49 8b cf             	mov    %r15,%rcx
    7f01bb401531:	48 81 c1 b0 48 00 00 	add    $0x48b0,%rcx
    7f01bb401538:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40153b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40153e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb401542:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb401546:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40154a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40154e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb401552:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb401556:	49 8b c7             	mov    %r15,%rax
    7f01bb401559:	48 05 78 2f 00 00    	add    $0x2f78,%rax
    7f01bb40155f:	49 8b cf             	mov    %r15,%rcx
    7f01bb401562:	48 81 c1 b8 2f 00 00 	add    $0x2fb8,%rcx
    7f01bb401569:	44 8b 85 30 e6 ff ff 	mov    -0x19d0(%rbp),%r8d
    7f01bb401570:	48 89 8d 10 e6 ff ff 	mov    %rcx,-0x19f0(%rbp)
    7f01bb401577:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb40157c:	48 8b d0             	mov    %rax,%rdx
    7f01bb40157f:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb401584:	48 8b bd 10 e6 ff ff 	mov    -0x19f0(%rbp),%rdi
    7f01bb40158b:	48 89 85 08 e6 ff ff 	mov    %rax,-0x19f8(%rbp)
    7f01bb401592:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb401597:	e8 9e ff 8c ff       	callq  0x7f01bacd153a
    7f01bb40159c:	41 8b 87 b8 2f 00 00 	mov    0x2fb8(%r15),%eax
    7f01bb4015a3:	89 85 00 e6 ff ff    	mov    %eax,-0x1a00(%rbp)
    7f01bb4015a9:	49 8b 87 07 4c 00 00 	mov    0x4c07(%r15),%rax
    7f01bb4015b0:	48 c1 e8 1c          	shr    $0x1c,%rax
    7f01bb4015b4:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb4015b9:	48 23 c1             	and    %rcx,%rax
    7f01bb4015bc:	89 85 f8 e5 ff ff    	mov    %eax,-0x1a08(%rbp)
    7f01bb4015c2:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb4015c9:	0f 85 11 00 00 00    	jne    0x7f01bb4015e0
    7f01bb4015cf:	8b 85 00 e6 ff ff    	mov    -0x1a00(%rbp),%eax
    7f01bb4015d5:	89 85 f0 e5 ff ff    	mov    %eax,-0x1a10(%rbp)
    7f01bb4015db:	e9 0c 00 00 00       	jmpq   0x7f01bb4015ec
    7f01bb4015e0:	8b 85 f8 e5 ff ff    	mov    -0x1a08(%rbp),%eax
    7f01bb4015e6:	89 85 f0 e5 ff ff    	mov    %eax,-0x1a10(%rbp)
    7f01bb4015ec:	49 8b 87 0b 4c 00 00 	mov    0x4c0b(%r15),%rax
    7f01bb4015f3:	48 c1 e8 1c          	shr    $0x1c,%rax
    7f01bb4015f7:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb4015fc:	48 23 c1             	and    %rcx,%rax
    7f01bb4015ff:	89 85 e8 e5 ff ff    	mov    %eax,-0x1a18(%rbp)
    7f01bb401605:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb40160c:	0f 85 11 00 00 00    	jne    0x7f01bb401623
    7f01bb401612:	8b 85 98 fd ff ff    	mov    -0x268(%rbp),%eax
    7f01bb401618:	89 85 e0 e5 ff ff    	mov    %eax,-0x1a20(%rbp)
    7f01bb40161e:	e9 0c 00 00 00       	jmpq   0x7f01bb40162f
    7f01bb401623:	8b 85 e8 e5 ff ff    	mov    -0x1a18(%rbp),%eax
    7f01bb401629:	89 85 e0 e5 ff ff    	mov    %eax,-0x1a20(%rbp)
    7f01bb40162f:	49 0f b6 87 12 4c 00 	movzbq 0x4c12(%r15),%rax
    7f01bb401636:	00 
    7f01bb401637:	c1 e8 04             	shr    $0x4,%eax
    7f01bb40163a:	83 e0 01             	and    $0x1,%eax
    7f01bb40163d:	89 85 d8 e5 ff ff    	mov    %eax,-0x1a28(%rbp)
    7f01bb401643:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb40164a:	0f 85 0f 00 00 00    	jne    0x7f01bb40165f
    7f01bb401650:	c7 85 d0 e5 ff ff 00 	movl   $0x0,-0x1a30(%rbp)
    7f01bb401657:	00 00 00 
    7f01bb40165a:	e9 28 00 00 00       	jmpq   0x7f01bb401687
    7f01bb40165f:	41 81 fe 00 00 40 00 	cmp    $0x400000,%r14d
    7f01bb401666:	0f 85 0f 00 00 00    	jne    0x7f01bb40167b
    7f01bb40166c:	c7 85 d0 e5 ff ff 01 	movl   $0x1,-0x1a30(%rbp)
    7f01bb401673:	00 00 00 
    7f01bb401676:	e9 0c 00 00 00       	jmpq   0x7f01bb401687
    7f01bb40167b:	8b 85 d8 e5 ff ff    	mov    -0x1a28(%rbp),%eax
    7f01bb401681:	89 85 d0 e5 ff ff    	mov    %eax,-0x1a30(%rbp)
    7f01bb401687:	8b 85 18 e6 ff ff    	mov    -0x19e8(%rbp),%eax
    7f01bb40168d:	8b c0                	mov    %eax,%eax
    7f01bb40168f:	8b 8d f0 e5 ff ff    	mov    -0x1a10(%rbp),%ecx
    7f01bb401695:	8b c9                	mov    %ecx,%ecx
    7f01bb401697:	48 c1 e1 14          	shl    $0x14,%rcx
    7f01bb40169b:	48 0b c1             	or     %rcx,%rax
    7f01bb40169e:	8b 8d e0 e5 ff ff    	mov    -0x1a20(%rbp),%ecx
    7f01bb4016a4:	8b c9                	mov    %ecx,%ecx
    7f01bb4016a6:	48 8b d1             	mov    %rcx,%rdx
    7f01bb4016a9:	48 c1 e2 34          	shl    $0x34,%rdx
    7f01bb4016ad:	48 0b c2             	or     %rdx,%rax
    7f01bb4016b0:	49 89 87 f8 2f 00 00 	mov    %rax,0x2ff8(%r15)
    7f01bb4016b7:	48 c1 e9 0c          	shr    $0xc,%rcx
    7f01bb4016bb:	8b 85 d0 e5 ff ff    	mov    -0x1a30(%rbp),%eax
    7f01bb4016c1:	8b c0                	mov    %eax,%eax
    7f01bb4016c3:	48 c1 e0 14          	shl    $0x14,%rax
    7f01bb4016c7:	48 0b c8             	or     %rax,%rcx
    7f01bb4016ca:	49 89 8f 00 30 00 00 	mov    %rcx,0x3000(%r15)
    7f01bb4016d1:	41 81 fe 00 00 02 00 	cmp    $0x20000,%r14d
    7f01bb4016d8:	0f 85 0f 00 00 00    	jne    0x7f01bb4016ed
    7f01bb4016de:	c7 85 c8 e5 ff ff 01 	movl   $0x1,-0x1a38(%rbp)
    7f01bb4016e5:	00 00 00 
    7f01bb4016e8:	e9 26 00 00 00       	jmpq   0x7f01bb401713
    7f01bb4016ed:	41 81 fe 00 00 40 00 	cmp    $0x400000,%r14d
    7f01bb4016f4:	0f 85 0f 00 00 00    	jne    0x7f01bb401709
    7f01bb4016fa:	c7 85 c8 e5 ff ff 01 	movl   $0x1,-0x1a38(%rbp)
    7f01bb401701:	00 00 00 
    7f01bb401704:	e9 0a 00 00 00       	jmpq   0x7f01bb401713
    7f01bb401709:	c7 85 c8 e5 ff ff 00 	movl   $0x0,-0x1a38(%rbp)
    7f01bb401710:	00 00 00 
    7f01bb401713:	8b 85 90 fe ff ff    	mov    -0x170(%rbp),%eax
    7f01bb401719:	8b 8d d8 f6 ff ff    	mov    -0x928(%rbp),%ecx
    7f01bb40171f:	23 c1                	and    %ecx,%eax
    7f01bb401721:	89 85 c0 e5 ff ff    	mov    %eax,-0x1a40(%rbp)
    7f01bb401727:	85 c9                	test   %ecx,%ecx
    7f01bb401729:	0f 84 11 00 00 00    	je     0x7f01bb401740
    7f01bb40172f:	8b 85 c0 e5 ff ff    	mov    -0x1a40(%rbp),%eax
    7f01bb401735:	89 85 b8 e5 ff ff    	mov    %eax,-0x1a48(%rbp)
    7f01bb40173b:	e9 0c 00 00 00       	jmpq   0x7f01bb40174c
    7f01bb401740:	8b 85 40 f7 ff ff    	mov    -0x8c0(%rbp),%eax
    7f01bb401746:	89 85 b8 e5 ff ff    	mov    %eax,-0x1a48(%rbp)
    7f01bb40174c:	8b 85 e8 f6 ff ff    	mov    -0x918(%rbp),%eax
    7f01bb401752:	85 c0                	test   %eax,%eax
    7f01bb401754:	0f 84 11 00 00 00    	je     0x7f01bb40176b
    7f01bb40175a:	8b 85 40 f7 ff ff    	mov    -0x8c0(%rbp),%eax
    7f01bb401760:	89 85 b0 e5 ff ff    	mov    %eax,-0x1a50(%rbp)
    7f01bb401766:	e9 0c 00 00 00       	jmpq   0x7f01bb401777
    7f01bb40176b:	8b 85 38 f7 ff ff    	mov    -0x8c8(%rbp),%eax
    7f01bb401771:	89 85 b0 e5 ff ff    	mov    %eax,-0x1a50(%rbp)
    7f01bb401777:	8b 85 f0 f6 ff ff    	mov    -0x910(%rbp),%eax
    7f01bb40177d:	85 c0                	test   %eax,%eax
    7f01bb40177f:	0f 84 11 00 00 00    	je     0x7f01bb401796
    7f01bb401785:	8b 85 38 f7 ff ff    	mov    -0x8c8(%rbp),%eax
    7f01bb40178b:	89 85 a8 e5 ff ff    	mov    %eax,-0x1a58(%rbp)
    7f01bb401791:	e9 0c 00 00 00       	jmpq   0x7f01bb4017a2
    7f01bb401796:	8b 85 00 f7 ff ff    	mov    -0x900(%rbp),%eax
    7f01bb40179c:	89 85 a8 e5 ff ff    	mov    %eax,-0x1a58(%rbp)
    7f01bb4017a2:	8b 85 b0 e5 ff ff    	mov    -0x1a50(%rbp),%eax
    7f01bb4017a8:	d1 e0                	shl    %eax
    7f01bb4017aa:	0b 85 b8 e5 ff ff    	or     -0x1a48(%rbp),%eax
    7f01bb4017b0:	8b 8d a8 e5 ff ff    	mov    -0x1a58(%rbp),%ecx
    7f01bb4017b6:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb4017b9:	0b c1                	or     %ecx,%eax
    7f01bb4017bb:	89 85 a0 e5 ff ff    	mov    %eax,-0x1a60(%rbp)
    7f01bb4017c1:	8b 85 d8 f6 ff ff    	mov    -0x928(%rbp),%eax
    7f01bb4017c7:	23 85 c0 e5 ff ff    	and    -0x1a40(%rbp),%eax
    7f01bb4017cd:	41 8b 8f d7 46 00 00 	mov    0x46d7(%r15),%ecx
    7f01bb4017d4:	c1 e9 08             	shr    $0x8,%ecx
    7f01bb4017d7:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb4017dd:	49 0f b6 97 e2 46 00 	movzbq 0x46e2(%r15),%rdx
    7f01bb4017e4:	00 
    7f01bb4017e5:	c1 ea 04             	shr    $0x4,%edx
    7f01bb4017e8:	83 e2 01             	and    $0x1,%edx
    7f01bb4017eb:	c1 e2 14             	shl    $0x14,%edx
    7f01bb4017ee:	0b ca                	or     %edx,%ecx
    7f01bb4017f0:	89 8d 98 e5 ff ff    	mov    %ecx,-0x1a68(%rbp)
    7f01bb4017f6:	85 c0                	test   %eax,%eax
    7f01bb4017f8:	0f 84 11 00 00 00    	je     0x7f01bb40180f
    7f01bb4017fe:	8b 85 98 e5 ff ff    	mov    -0x1a68(%rbp),%eax
    7f01bb401804:	89 85 90 e5 ff ff    	mov    %eax,-0x1a70(%rbp)
    7f01bb40180a:	e9 0c 00 00 00       	jmpq   0x7f01bb40181b
    7f01bb40180f:	8b 85 18 fd ff ff    	mov    -0x2e8(%rbp),%eax
    7f01bb401815:	89 85 90 e5 ff ff    	mov    %eax,-0x1a70(%rbp)
    7f01bb40181b:	8b 85 e8 f6 ff ff    	mov    -0x918(%rbp),%eax
    7f01bb401821:	23 85 40 f7 ff ff    	and    -0x8c0(%rbp),%eax
    7f01bb401827:	85 c0                	test   %eax,%eax
    7f01bb401829:	0f 84 11 00 00 00    	je     0x7f01bb401840
    7f01bb40182f:	8b 85 18 fd ff ff    	mov    -0x2e8(%rbp),%eax
    7f01bb401835:	89 85 88 e5 ff ff    	mov    %eax,-0x1a78(%rbp)
    7f01bb40183b:	e9 0c 00 00 00       	jmpq   0x7f01bb40184c
    7f01bb401840:	8b 85 10 fd ff ff    	mov    -0x2f0(%rbp),%eax
    7f01bb401846:	89 85 88 e5 ff ff    	mov    %eax,-0x1a78(%rbp)
    7f01bb40184c:	8b 85 f0 f6 ff ff    	mov    -0x910(%rbp),%eax
    7f01bb401852:	23 85 38 f7 ff ff    	and    -0x8c8(%rbp),%eax
    7f01bb401858:	85 c0                	test   %eax,%eax
    7f01bb40185a:	0f 84 11 00 00 00    	je     0x7f01bb401871
    7f01bb401860:	8b 85 10 fd ff ff    	mov    -0x2f0(%rbp),%eax
    7f01bb401866:	89 85 80 e5 ff ff    	mov    %eax,-0x1a80(%rbp)
    7f01bb40186c:	e9 0c 00 00 00       	jmpq   0x7f01bb40187d
    7f01bb401871:	8b 85 08 fd ff ff    	mov    -0x2f8(%rbp),%eax
    7f01bb401877:	89 85 80 e5 ff ff    	mov    %eax,-0x1a80(%rbp)
    7f01bb40187d:	8b 85 00 fd ff ff    	mov    -0x300(%rbp),%eax
    7f01bb401883:	83 e0 01             	and    $0x1,%eax
    7f01bb401886:	89 85 78 e5 ff ff    	mov    %eax,-0x1a88(%rbp)
    7f01bb40188c:	f7 d0                	not    %eax
    7f01bb40188e:	83 e0 01             	and    $0x1,%eax
    7f01bb401891:	8b 8d 00 fd ff ff    	mov    -0x300(%rbp),%ecx
    7f01bb401897:	d1 e9                	shr    %ecx
    7f01bb401899:	83 e1 01             	and    $0x1,%ecx
    7f01bb40189c:	89 8d 70 e5 ff ff    	mov    %ecx,-0x1a90(%rbp)
    7f01bb4018a2:	f7 d1                	not    %ecx
    7f01bb4018a4:	83 e1 01             	and    $0x1,%ecx
    7f01bb4018a7:	8b 95 30 f7 ff ff    	mov    -0x8d0(%rbp),%edx
    7f01bb4018ad:	f7 d2                	not    %edx
    7f01bb4018af:	83 e2 01             	and    $0x1,%edx
    7f01bb4018b2:	0b 95 08 f7 ff ff    	or     -0x8f8(%rbp),%edx
    7f01bb4018b8:	89 95 68 e5 ff ff    	mov    %edx,-0x1a98(%rbp)
    7f01bb4018be:	0b ca                	or     %edx,%ecx
    7f01bb4018c0:	89 8d 60 e5 ff ff    	mov    %ecx,-0x1aa0(%rbp)
    7f01bb4018c6:	0b c1                	or     %ecx,%eax
    7f01bb4018c8:	8b 8d 00 f7 ff ff    	mov    -0x900(%rbp),%ecx
    7f01bb4018ce:	23 8d f8 f6 ff ff    	and    -0x908(%rbp),%ecx
    7f01bb4018d4:	89 8d 58 e5 ff ff    	mov    %ecx,-0x1aa8(%rbp)
    7f01bb4018da:	89 85 50 e5 ff ff    	mov    %eax,-0x1ab0(%rbp)
    7f01bb4018e0:	85 c0                	test   %eax,%eax
    7f01bb4018e2:	0f 84 11 00 00 00    	je     0x7f01bb4018f9
    7f01bb4018e8:	8b 85 58 e5 ff ff    	mov    -0x1aa8(%rbp),%eax
    7f01bb4018ee:	89 85 48 e5 ff ff    	mov    %eax,-0x1ab8(%rbp)
    7f01bb4018f4:	e9 0c 00 00 00       	jmpq   0x7f01bb401905
    7f01bb4018f9:	8b 85 78 e5 ff ff    	mov    -0x1a88(%rbp),%eax
    7f01bb4018ff:	89 85 48 e5 ff ff    	mov    %eax,-0x1ab8(%rbp)
    7f01bb401905:	8b 85 60 e5 ff ff    	mov    -0x1aa0(%rbp),%eax
    7f01bb40190b:	85 c0                	test   %eax,%eax
    7f01bb40190d:	0f 84 11 00 00 00    	je     0x7f01bb401924
    7f01bb401913:	8b 85 78 e5 ff ff    	mov    -0x1a88(%rbp),%eax
    7f01bb401919:	89 85 40 e5 ff ff    	mov    %eax,-0x1ac0(%rbp)
    7f01bb40191f:	e9 0c 00 00 00       	jmpq   0x7f01bb401930
    7f01bb401924:	8b 85 70 e5 ff ff    	mov    -0x1a90(%rbp),%eax
    7f01bb40192a:	89 85 40 e5 ff ff    	mov    %eax,-0x1ac0(%rbp)
    7f01bb401930:	8b 85 68 e5 ff ff    	mov    -0x1a98(%rbp),%eax
    7f01bb401936:	85 c0                	test   %eax,%eax
    7f01bb401938:	0f 84 11 00 00 00    	je     0x7f01bb40194f
    7f01bb40193e:	8b 85 70 e5 ff ff    	mov    -0x1a90(%rbp),%eax
    7f01bb401944:	89 85 38 e5 ff ff    	mov    %eax,-0x1ac8(%rbp)
    7f01bb40194a:	e9 0c 00 00 00       	jmpq   0x7f01bb40195b
    7f01bb40194f:	8b 85 30 f7 ff ff    	mov    -0x8d0(%rbp),%eax
    7f01bb401955:	89 85 38 e5 ff ff    	mov    %eax,-0x1ac8(%rbp)
    7f01bb40195b:	8b 85 40 e5 ff ff    	mov    -0x1ac0(%rbp),%eax
    7f01bb401961:	d1 e0                	shl    %eax
    7f01bb401963:	0b 85 48 e5 ff ff    	or     -0x1ab8(%rbp),%eax
    7f01bb401969:	8b 8d 38 e5 ff ff    	mov    -0x1ac8(%rbp),%ecx
    7f01bb40196f:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb401972:	0b c1                	or     %ecx,%eax
    7f01bb401974:	89 85 30 e5 ff ff    	mov    %eax,-0x1ad0(%rbp)
    7f01bb40197a:	8b 85 50 e5 ff ff    	mov    -0x1ab0(%rbp),%eax
    7f01bb401980:	23 85 58 e5 ff ff    	and    -0x1aa8(%rbp),%eax
    7f01bb401986:	85 c0                	test   %eax,%eax
    7f01bb401988:	0f 84 11 00 00 00    	je     0x7f01bb40199f
    7f01bb40198e:	8b 85 08 fd ff ff    	mov    -0x2f8(%rbp),%eax
    7f01bb401994:	89 85 28 e5 ff ff    	mov    %eax,-0x1ad8(%rbp)
    7f01bb40199a:	e9 0c 00 00 00       	jmpq   0x7f01bb4019ab
    7f01bb40199f:	8b 85 f8 fc ff ff    	mov    -0x308(%rbp),%eax
    7f01bb4019a5:	89 85 28 e5 ff ff    	mov    %eax,-0x1ad8(%rbp)
    7f01bb4019ab:	8b 85 60 e5 ff ff    	mov    -0x1aa0(%rbp),%eax
    7f01bb4019b1:	23 85 78 e5 ff ff    	and    -0x1a88(%rbp),%eax
    7f01bb4019b7:	85 c0                	test   %eax,%eax
    7f01bb4019b9:	0f 84 11 00 00 00    	je     0x7f01bb4019d0
    7f01bb4019bf:	8b 85 f8 fc ff ff    	mov    -0x308(%rbp),%eax
    7f01bb4019c5:	89 85 20 e5 ff ff    	mov    %eax,-0x1ae0(%rbp)
    7f01bb4019cb:	e9 0c 00 00 00       	jmpq   0x7f01bb4019dc
    7f01bb4019d0:	8b 85 f0 fc ff ff    	mov    -0x310(%rbp),%eax
    7f01bb4019d6:	89 85 20 e5 ff ff    	mov    %eax,-0x1ae0(%rbp)
    7f01bb4019dc:	8b 85 68 e5 ff ff    	mov    -0x1a98(%rbp),%eax
    7f01bb4019e2:	23 85 70 e5 ff ff    	and    -0x1a90(%rbp),%eax
    7f01bb4019e8:	85 c0                	test   %eax,%eax
    7f01bb4019ea:	0f 84 11 00 00 00    	je     0x7f01bb401a01
    7f01bb4019f0:	8b 85 f0 fc ff ff    	mov    -0x310(%rbp),%eax
    7f01bb4019f6:	89 85 18 e5 ff ff    	mov    %eax,-0x1ae8(%rbp)
    7f01bb4019fc:	e9 0c 00 00 00       	jmpq   0x7f01bb401a0d
    7f01bb401a01:	8b 85 e8 fc ff ff    	mov    -0x318(%rbp),%eax
    7f01bb401a07:	89 85 18 e5 ff ff    	mov    %eax,-0x1ae8(%rbp)
    7f01bb401a0d:	8b 85 e8 fc ff ff    	mov    -0x318(%rbp),%eax
    7f01bb401a13:	c1 e8 14             	shr    $0x14,%eax
    7f01bb401a16:	83 e0 01             	and    $0x1,%eax
    7f01bb401a19:	8b 8d 30 f7 ff ff    	mov    -0x8d0(%rbp),%ecx
    7f01bb401a1f:	23 c8                	and    %eax,%ecx
    7f01bb401a21:	89 8d 10 e5 ff ff    	mov    %ecx,-0x1af0(%rbp)
    7f01bb401a27:	85 c0                	test   %eax,%eax
    7f01bb401a29:	0f 94 c0             	sete   %al
    7f01bb401a2c:	0f b6 c0             	movzbl %al,%eax
    7f01bb401a2f:	89 85 08 e5 ff ff    	mov    %eax,-0x1af8(%rbp)
    7f01bb401a35:	8b 8d 30 f7 ff ff    	mov    -0x8d0(%rbp),%ecx
    7f01bb401a3b:	23 c1                	and    %ecx,%eax
    7f01bb401a3d:	89 85 00 e5 ff ff    	mov    %eax,-0x1b00(%rbp)
    7f01bb401a43:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401a49:	85 c0                	test   %eax,%eax
    7f01bb401a4b:	0f 85 11 00 00 00    	jne    0x7f01bb401a62
    7f01bb401a51:	8b 85 00 e5 ff ff    	mov    -0x1b00(%rbp),%eax
    7f01bb401a57:	89 85 f8 e4 ff ff    	mov    %eax,-0x1b08(%rbp)
    7f01bb401a5d:	e9 0a 00 00 00       	jmpq   0x7f01bb401a6c
    7f01bb401a62:	c7 85 f8 e4 ff ff 00 	movl   $0x0,-0x1b08(%rbp)
    7f01bb401a69:	00 00 00 
    7f01bb401a6c:	8b 85 e8 fc ff ff    	mov    -0x318(%rbp),%eax
    7f01bb401a72:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb401a77:	89 85 f0 e4 ff ff    	mov    %eax,-0x1b10(%rbp)
    7f01bb401a7d:	83 e0 1f             	and    $0x1f,%eax
    7f01bb401a80:	83 e0 1f             	and    $0x1f,%eax
    7f01bb401a83:	89 85 e8 e4 ff ff    	mov    %eax,-0x1b18(%rbp)
    7f01bb401a89:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401a8f:	85 c0                	test   %eax,%eax
    7f01bb401a91:	0f 85 11 00 00 00    	jne    0x7f01bb401aa8
    7f01bb401a97:	8b 85 e8 e4 ff ff    	mov    -0x1b18(%rbp),%eax
    7f01bb401a9d:	89 85 e0 e4 ff ff    	mov    %eax,-0x1b20(%rbp)
    7f01bb401aa3:	e9 0a 00 00 00       	jmpq   0x7f01bb401ab2
    7f01bb401aa8:	c7 85 e0 e4 ff ff 00 	movl   $0x0,-0x1b20(%rbp)
    7f01bb401aaf:	00 00 00 
    7f01bb401ab2:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb401ab7:	8b 8d e0 e4 ff ff    	mov    -0x1b20(%rbp),%ecx
    7f01bb401abd:	d3 e0                	shl    %cl,%eax
    7f01bb401abf:	89 85 d8 e4 ff ff    	mov    %eax,-0x1b28(%rbp)
    7f01bb401ac5:	8b 8d e0 fc ff ff    	mov    -0x320(%rbp),%ecx
    7f01bb401acb:	0b c1                	or     %ecx,%eax
    7f01bb401acd:	89 85 d0 e4 ff ff    	mov    %eax,-0x1b30(%rbp)
    7f01bb401ad3:	8b 85 f8 e4 ff ff    	mov    -0x1b08(%rbp),%eax
    7f01bb401ad9:	85 c0                	test   %eax,%eax
    7f01bb401adb:	0f 84 11 00 00 00    	je     0x7f01bb401af2
    7f01bb401ae1:	8b 85 d0 e4 ff ff    	mov    -0x1b30(%rbp),%eax
    7f01bb401ae7:	89 85 c8 e4 ff ff    	mov    %eax,-0x1b38(%rbp)
    7f01bb401aed:	e9 0c 00 00 00       	jmpq   0x7f01bb401afe
    7f01bb401af2:	8b 85 e0 fc ff ff    	mov    -0x320(%rbp),%eax
    7f01bb401af8:	89 85 c8 e4 ff ff    	mov    %eax,-0x1b38(%rbp)
    7f01bb401afe:	8b 85 10 e5 ff ff    	mov    -0x1af0(%rbp),%eax
    7f01bb401b04:	85 c0                	test   %eax,%eax
    7f01bb401b06:	0f 84 0f 00 00 00    	je     0x7f01bb401b1b
    7f01bb401b0c:	c7 85 c0 e4 ff ff 00 	movl   $0x0,-0x1b40(%rbp)
    7f01bb401b13:	00 00 00 
    7f01bb401b16:	e9 0c 00 00 00       	jmpq   0x7f01bb401b27
    7f01bb401b1b:	8b 85 c8 e4 ff ff    	mov    -0x1b38(%rbp),%eax
    7f01bb401b21:	89 85 c0 e4 ff ff    	mov    %eax,-0x1b40(%rbp)
    7f01bb401b27:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401b2d:	85 c0                	test   %eax,%eax
    7f01bb401b2f:	0f 85 11 00 00 00    	jne    0x7f01bb401b46
    7f01bb401b35:	8b 85 c0 e4 ff ff    	mov    -0x1b40(%rbp),%eax
    7f01bb401b3b:	89 85 b8 e4 ff ff    	mov    %eax,-0x1b48(%rbp)
    7f01bb401b41:	e9 0c 00 00 00       	jmpq   0x7f01bb401b52
    7f01bb401b46:	8b 85 e0 fc ff ff    	mov    -0x320(%rbp),%eax
    7f01bb401b4c:	89 85 b8 e4 ff ff    	mov    %eax,-0x1b48(%rbp)
    7f01bb401b52:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401b58:	85 c0                	test   %eax,%eax
    7f01bb401b5a:	0f 94 c0             	sete   %al
    7f01bb401b5d:	0f b6 c0             	movzbl %al,%eax
    7f01bb401b60:	89 85 b0 e4 ff ff    	mov    %eax,-0x1b50(%rbp)
    7f01bb401b66:	23 85 10 e5 ff ff    	and    -0x1af0(%rbp),%eax
    7f01bb401b6c:	85 c0                	test   %eax,%eax
    7f01bb401b6e:	0f 84 11 00 00 00    	je     0x7f01bb401b85
    7f01bb401b74:	8b 85 e0 fc ff ff    	mov    -0x320(%rbp),%eax
    7f01bb401b7a:	89 85 a8 e4 ff ff    	mov    %eax,-0x1b58(%rbp)
    7f01bb401b80:	e9 0c 00 00 00       	jmpq   0x7f01bb401b91
    7f01bb401b85:	8b 85 d8 fc ff ff    	mov    -0x328(%rbp),%eax
    7f01bb401b8b:	89 85 a8 e4 ff ff    	mov    %eax,-0x1b58(%rbp)
    7f01bb401b91:	8b 85 28 f7 ff ff    	mov    -0x8d8(%rbp),%eax
    7f01bb401b97:	23 85 30 f7 ff ff    	and    -0x8d0(%rbp),%eax
    7f01bb401b9d:	89 85 a0 e4 ff ff    	mov    %eax,-0x1b60(%rbp)
    7f01bb401ba3:	23 85 08 e5 ff ff    	and    -0x1af8(%rbp),%eax
    7f01bb401ba9:	89 85 98 e4 ff ff    	mov    %eax,-0x1b68(%rbp)
    7f01bb401baf:	8b 85 08 fd ff ff    	mov    -0x2f8(%rbp),%eax
    7f01bb401bb5:	c1 e8 14             	shr    $0x14,%eax
    7f01bb401bb8:	83 e0 01             	and    $0x1,%eax
    7f01bb401bbb:	85 c0                	test   %eax,%eax
    7f01bb401bbd:	0f 94 c0             	sete   %al
    7f01bb401bc0:	0f b6 c0             	movzbl %al,%eax
    7f01bb401bc3:	8b 8d 58 e5 ff ff    	mov    -0x1aa8(%rbp),%ecx
    7f01bb401bc9:	23 c1                	and    %ecx,%eax
    7f01bb401bcb:	8b 95 10 f7 ff ff    	mov    -0x8f0(%rbp),%edx
    7f01bb401bd1:	8b b5 d8 e4 ff ff    	mov    -0x1b28(%rbp),%esi
    7f01bb401bd7:	3b d6                	cmp    %esi,%edx
    7f01bb401bd9:	0f 95 c1             	setne  %cl
    7f01bb401bdc:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb401bdf:	89 85 90 e4 ff ff    	mov    %eax,-0x1b70(%rbp)
    7f01bb401be5:	23 c1                	and    %ecx,%eax
    7f01bb401be7:	f7 d6                	not    %esi
    7f01bb401be9:	8b 8d d0 fc ff ff    	mov    -0x330(%rbp),%ecx
    7f01bb401bef:	23 f1                	and    %ecx,%esi
    7f01bb401bf1:	89 b5 88 e4 ff ff    	mov    %esi,-0x1b78(%rbp)
    7f01bb401bf7:	0b d6                	or     %esi,%edx
    7f01bb401bf9:	89 95 80 e4 ff ff    	mov    %edx,-0x1b80(%rbp)
    7f01bb401bff:	85 c0                	test   %eax,%eax
    7f01bb401c01:	0f 84 11 00 00 00    	je     0x7f01bb401c18
    7f01bb401c07:	8b 85 80 e4 ff ff    	mov    -0x1b80(%rbp),%eax
    7f01bb401c0d:	89 85 78 e4 ff ff    	mov    %eax,-0x1b88(%rbp)
    7f01bb401c13:	e9 0c 00 00 00       	jmpq   0x7f01bb401c24
    7f01bb401c18:	8b 85 88 e4 ff ff    	mov    -0x1b78(%rbp),%eax
    7f01bb401c1e:	89 85 78 e4 ff ff    	mov    %eax,-0x1b88(%rbp)
    7f01bb401c24:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
    7f01bb401c2a:	0b 85 10 f7 ff ff    	or     -0x8f0(%rbp),%eax
    7f01bb401c30:	89 85 70 e4 ff ff    	mov    %eax,-0x1b90(%rbp)
    7f01bb401c36:	8b 85 98 e4 ff ff    	mov    -0x1b68(%rbp),%eax
    7f01bb401c3c:	85 c0                	test   %eax,%eax
    7f01bb401c3e:	0f 84 11 00 00 00    	je     0x7f01bb401c55
    7f01bb401c44:	8b 85 78 e4 ff ff    	mov    -0x1b88(%rbp),%eax
    7f01bb401c4a:	89 85 68 e4 ff ff    	mov    %eax,-0x1b98(%rbp)
    7f01bb401c50:	e9 2b 00 00 00       	jmpq   0x7f01bb401c80
    7f01bb401c55:	8b 85 90 e4 ff ff    	mov    -0x1b70(%rbp),%eax
    7f01bb401c5b:	85 c0                	test   %eax,%eax
    7f01bb401c5d:	0f 84 11 00 00 00    	je     0x7f01bb401c74
    7f01bb401c63:	8b 85 70 e4 ff ff    	mov    -0x1b90(%rbp),%eax
    7f01bb401c69:	89 85 68 e4 ff ff    	mov    %eax,-0x1b98(%rbp)
    7f01bb401c6f:	e9 0c 00 00 00       	jmpq   0x7f01bb401c80
    7f01bb401c74:	8b 85 d0 fc ff ff    	mov    -0x330(%rbp),%eax
    7f01bb401c7a:	89 85 68 e4 ff ff    	mov    %eax,-0x1b98(%rbp)
    7f01bb401c80:	8b 8d a0 e4 ff ff    	mov    -0x1b60(%rbp),%ecx
    7f01bb401c86:	8b c1                	mov    %ecx,%eax
    7f01bb401c88:	85 c0                	test   %eax,%eax
    7f01bb401c8a:	0f 94 c0             	sete   %al
    7f01bb401c8d:	0f b6 c0             	movzbl %al,%eax
    7f01bb401c90:	8b 95 c0 e5 ff ff    	mov    -0x1a40(%rbp),%edx
    7f01bb401c96:	23 c2                	and    %edx,%eax
    7f01bb401c98:	8b b5 c8 fc ff ff    	mov    -0x338(%rbp),%esi
    7f01bb401c9e:	ff c6                	inc    %esi
    7f01bb401ca0:	89 b5 60 e4 ff ff    	mov    %esi,-0x1ba0(%rbp)
    7f01bb401ca6:	85 d2                	test   %edx,%edx
    7f01bb401ca8:	0f 94 c2             	sete   %dl
    7f01bb401cab:	0f b6 d2             	movzbl %dl,%edx
    7f01bb401cae:	23 ca                	and    %edx,%ecx
    7f01bb401cb0:	89 8d 58 e4 ff ff    	mov    %ecx,-0x1ba8(%rbp)
    7f01bb401cb6:	8b 8d c8 fc ff ff    	mov    -0x338(%rbp),%ecx
    7f01bb401cbc:	ff c9                	dec    %ecx
    7f01bb401cbe:	89 8d 50 e4 ff ff    	mov    %ecx,-0x1bb0(%rbp)
    7f01bb401cc4:	85 c0                	test   %eax,%eax
    7f01bb401cc6:	0f 84 11 00 00 00    	je     0x7f01bb401cdd
    7f01bb401ccc:	8b 85 60 e4 ff ff    	mov    -0x1ba0(%rbp),%eax
    7f01bb401cd2:	89 85 48 e4 ff ff    	mov    %eax,-0x1bb8(%rbp)
    7f01bb401cd8:	e9 2b 00 00 00       	jmpq   0x7f01bb401d08
    7f01bb401cdd:	8b 85 58 e4 ff ff    	mov    -0x1ba8(%rbp),%eax
    7f01bb401ce3:	85 c0                	test   %eax,%eax
    7f01bb401ce5:	0f 84 11 00 00 00    	je     0x7f01bb401cfc
    7f01bb401ceb:	8b 85 50 e4 ff ff    	mov    -0x1bb0(%rbp),%eax
    7f01bb401cf1:	89 85 48 e4 ff ff    	mov    %eax,-0x1bb8(%rbp)
    7f01bb401cf7:	e9 0c 00 00 00       	jmpq   0x7f01bb401d08
    7f01bb401cfc:	8b 85 c8 fc ff ff    	mov    -0x338(%rbp),%eax
    7f01bb401d02:	89 85 48 e4 ff ff    	mov    %eax,-0x1bb8(%rbp)
    7f01bb401d08:	8b 85 f0 e4 ff ff    	mov    -0x1b10(%rbp),%eax
    7f01bb401d0e:	25 e0 ff 0f 00       	and    $0xfffe0,%eax
    7f01bb401d13:	89 85 40 e4 ff ff    	mov    %eax,-0x1bc0(%rbp)
    7f01bb401d19:	8b 85 98 e4 ff ff    	mov    -0x1b68(%rbp),%eax
    7f01bb401d1f:	85 c0                	test   %eax,%eax
    7f01bb401d21:	0f 84 11 00 00 00    	je     0x7f01bb401d38
    7f01bb401d27:	8b 85 40 e4 ff ff    	mov    -0x1bc0(%rbp),%eax
    7f01bb401d2d:	89 85 38 e4 ff ff    	mov    %eax,-0x1bc8(%rbp)
    7f01bb401d33:	e9 0c 00 00 00       	jmpq   0x7f01bb401d44
    7f01bb401d38:	8b 85 c0 fc ff ff    	mov    -0x340(%rbp),%eax
    7f01bb401d3e:	89 85 38 e4 ff ff    	mov    %eax,-0x1bc8(%rbp)
    7f01bb401d44:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb401d4a:	85 c0                	test   %eax,%eax
    7f01bb401d4c:	0f 94 c0             	sete   %al
    7f01bb401d4f:	0f b6 c0             	movzbl %al,%eax
    7f01bb401d52:	89 85 30 e4 ff ff    	mov    %eax,-0x1bd0(%rbp)
    7f01bb401d58:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401d5e:	83 f8 01             	cmp    $0x1,%eax
    7f01bb401d61:	0f 85 0f 00 00 00    	jne    0x7f01bb401d76
    7f01bb401d67:	c7 85 28 e4 ff ff 01 	movl   $0x1,-0x1bd8(%rbp)
    7f01bb401d6e:	00 00 00 
    7f01bb401d71:	e9 46 00 00 00       	jmpq   0x7f01bb401dbc
    7f01bb401d76:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401d7c:	83 f8 02             	cmp    $0x2,%eax
    7f01bb401d7f:	0f 85 0f 00 00 00    	jne    0x7f01bb401d94
    7f01bb401d85:	c7 85 28 e4 ff ff 01 	movl   $0x1,-0x1bd8(%rbp)
    7f01bb401d8c:	00 00 00 
    7f01bb401d8f:	e9 28 00 00 00       	jmpq   0x7f01bb401dbc
    7f01bb401d94:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401d9a:	83 f8 03             	cmp    $0x3,%eax
    7f01bb401d9d:	0f 85 0f 00 00 00    	jne    0x7f01bb401db2
    7f01bb401da3:	c7 85 28 e4 ff ff 01 	movl   $0x1,-0x1bd8(%rbp)
    7f01bb401daa:	00 00 00 
    7f01bb401dad:	e9 0a 00 00 00       	jmpq   0x7f01bb401dbc
    7f01bb401db2:	c7 85 28 e4 ff ff 00 	movl   $0x0,-0x1bd8(%rbp)
    7f01bb401db9:	00 00 00 
    7f01bb401dbc:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb401dc2:	83 f8 01             	cmp    $0x1,%eax
    7f01bb401dc5:	0f 85 0f 00 00 00    	jne    0x7f01bb401dda
    7f01bb401dcb:	c7 85 20 e4 ff ff 01 	movl   $0x1,-0x1be0(%rbp)
    7f01bb401dd2:	00 00 00 
    7f01bb401dd5:	e9 46 00 00 00       	jmpq   0x7f01bb401e20
    7f01bb401dda:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb401de0:	83 f8 02             	cmp    $0x2,%eax
    7f01bb401de3:	0f 85 0f 00 00 00    	jne    0x7f01bb401df8
    7f01bb401de9:	c7 85 20 e4 ff ff 01 	movl   $0x1,-0x1be0(%rbp)
    7f01bb401df0:	00 00 00 
    7f01bb401df3:	e9 28 00 00 00       	jmpq   0x7f01bb401e20
    7f01bb401df8:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb401dfe:	83 f8 03             	cmp    $0x3,%eax
    7f01bb401e01:	0f 85 0f 00 00 00    	jne    0x7f01bb401e16
    7f01bb401e07:	c7 85 20 e4 ff ff 01 	movl   $0x1,-0x1be0(%rbp)
    7f01bb401e0e:	00 00 00 
    7f01bb401e11:	e9 0a 00 00 00       	jmpq   0x7f01bb401e20
    7f01bb401e16:	c7 85 20 e4 ff ff 00 	movl   $0x0,-0x1be0(%rbp)
    7f01bb401e1d:	00 00 00 
    7f01bb401e20:	8b 85 e8 fb ff ff    	mov    -0x418(%rbp),%eax
    7f01bb401e26:	d1 e8                	shr    %eax
    7f01bb401e28:	83 e0 01             	and    $0x1,%eax
    7f01bb401e2b:	89 85 18 e4 ff ff    	mov    %eax,-0x1be8(%rbp)
    7f01bb401e31:	f7 d0                	not    %eax
    7f01bb401e33:	83 e0 01             	and    $0x1,%eax
    7f01bb401e36:	8b 8d 20 e4 ff ff    	mov    -0x1be0(%rbp),%ecx
    7f01bb401e3c:	23 c1                	and    %ecx,%eax
    7f01bb401e3e:	89 85 10 e4 ff ff    	mov    %eax,-0x1bf0(%rbp)
    7f01bb401e44:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb401e4a:	83 f8 03             	cmp    $0x3,%eax
    7f01bb401e4d:	0f 85 0f 00 00 00    	jne    0x7f01bb401e62
    7f01bb401e53:	c7 85 08 e4 ff ff 01 	movl   $0x1,-0x1bf8(%rbp)
    7f01bb401e5a:	00 00 00 
    7f01bb401e5d:	e9 28 00 00 00       	jmpq   0x7f01bb401e8a
    7f01bb401e62:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb401e68:	83 f8 04             	cmp    $0x4,%eax
    7f01bb401e6b:	0f 85 0f 00 00 00    	jne    0x7f01bb401e80
    7f01bb401e71:	c7 85 08 e4 ff ff 01 	movl   $0x1,-0x1bf8(%rbp)
    7f01bb401e78:	00 00 00 
    7f01bb401e7b:	e9 0a 00 00 00       	jmpq   0x7f01bb401e8a
    7f01bb401e80:	c7 85 08 e4 ff ff 00 	movl   $0x0,-0x1bf8(%rbp)
    7f01bb401e87:	00 00 00 
    7f01bb401e8a:	8b 85 e8 fb ff ff    	mov    -0x418(%rbp),%eax
    7f01bb401e90:	c1 e8 02             	shr    $0x2,%eax
    7f01bb401e93:	83 e0 01             	and    $0x1,%eax
    7f01bb401e96:	8b c8                	mov    %eax,%ecx
    7f01bb401e98:	f7 d1                	not    %ecx
    7f01bb401e9a:	83 e1 01             	and    $0x1,%ecx
    7f01bb401e9d:	8b 95 08 e4 ff ff    	mov    -0x1bf8(%rbp),%edx
    7f01bb401ea3:	23 ca                	and    %edx,%ecx
    7f01bb401ea5:	8b b5 10 e4 ff ff    	mov    -0x1bf0(%rbp),%esi
    7f01bb401eab:	d1 e6                	shl    %esi
    7f01bb401ead:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb401eb0:	0b f1                	or     %ecx,%esi
    7f01bb401eb2:	8b ce                	mov    %esi,%ecx
    7f01bb401eb4:	85 c9                	test   %ecx,%ecx
    7f01bb401eb6:	0f 95 c1             	setne  %cl
    7f01bb401eb9:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb401ebc:	83 e1 01             	and    $0x1,%ecx
    7f01bb401ebf:	f7 d1                	not    %ecx
    7f01bb401ec1:	83 e1 01             	and    $0x1,%ecx
    7f01bb401ec4:	8b b5 28 e4 ff ff    	mov    -0x1bd8(%rbp),%esi
    7f01bb401eca:	23 ce                	and    %esi,%ecx
    7f01bb401ecc:	23 b5 18 e4 ff ff    	and    -0x1be8(%rbp),%esi
    7f01bb401ed2:	8b bd e8 fb ff ff    	mov    -0x418(%rbp),%edi
    7f01bb401ed8:	c1 ef 05             	shr    $0x5,%edi
    7f01bb401edb:	83 e7 01             	and    $0x1,%edi
    7f01bb401ede:	44 8b c7             	mov    %edi,%r8d
    7f01bb401ee1:	41 f7 d0             	not    %r8d
    7f01bb401ee4:	41 83 e0 01          	and    $0x1,%r8d
    7f01bb401ee8:	44 23 c2             	and    %edx,%r8d
    7f01bb401eeb:	41 c1 e0 02          	shl    $0x2,%r8d
    7f01bb401eef:	41 0b f0             	or     %r8d,%esi
    7f01bb401ef2:	85 f6                	test   %esi,%esi
    7f01bb401ef4:	40 0f 95 c6          	setne  %sil
    7f01bb401ef8:	40 0f b6 f6          	movzbl %sil,%esi
    7f01bb401efc:	83 e6 01             	and    $0x1,%esi
    7f01bb401eff:	f7 d6                	not    %esi
    7f01bb401f01:	83 e6 01             	and    $0x1,%esi
    7f01bb401f04:	44 8b 85 20 e4 ff ff 	mov    -0x1be0(%rbp),%r8d
    7f01bb401f0b:	41 23 f0             	and    %r8d,%esi
    7f01bb401f0e:	89 85 00 e4 ff ff    	mov    %eax,-0x1c00(%rbp)
    7f01bb401f14:	44 8b 8d 28 e4 ff ff 	mov    -0x1bd8(%rbp),%r9d
    7f01bb401f1b:	41 23 c1             	and    %r9d,%eax
    7f01bb401f1e:	89 bd f8 e3 ff ff    	mov    %edi,-0x1c08(%rbp)
    7f01bb401f24:	41 23 f8             	and    %r8d,%edi
    7f01bb401f27:	d1 e7                	shl    %edi
    7f01bb401f29:	0b c7                	or     %edi,%eax
    7f01bb401f2b:	85 c0                	test   %eax,%eax
    7f01bb401f2d:	0f 95 c0             	setne  %al
    7f01bb401f30:	0f b6 c0             	movzbl %al,%eax
    7f01bb401f33:	83 e0 01             	and    $0x1,%eax
    7f01bb401f36:	f7 d0                	not    %eax
    7f01bb401f38:	83 e0 01             	and    $0x1,%eax
    7f01bb401f3b:	23 d0                	and    %eax,%edx
    7f01bb401f3d:	89 b5 f0 e3 ff ff    	mov    %esi,-0x1c10(%rbp)
    7f01bb401f43:	d1 e6                	shl    %esi
    7f01bb401f45:	89 8d e8 e3 ff ff    	mov    %ecx,-0x1c18(%rbp)
    7f01bb401f4b:	0b ce                	or     %esi,%ecx
    7f01bb401f4d:	89 95 e0 e3 ff ff    	mov    %edx,-0x1c20(%rbp)
    7f01bb401f53:	c1 e2 02             	shl    $0x2,%edx
    7f01bb401f56:	0b ca                	or     %edx,%ecx
    7f01bb401f58:	89 8d d8 e3 ff ff    	mov    %ecx,-0x1c28(%rbp)
    7f01bb401f5e:	83 f9 01             	cmp    $0x1,%ecx
    7f01bb401f61:	0f 94 c0             	sete   %al
    7f01bb401f64:	0f b6 c0             	movzbl %al,%eax
    7f01bb401f67:	8b 8d 30 e4 ff ff    	mov    -0x1bd0(%rbp),%ecx
    7f01bb401f6d:	23 c1                	and    %ecx,%eax
    7f01bb401f6f:	48 8b 8d b8 fc ff ff 	mov    -0x348(%rbp),%rcx
    7f01bb401f76:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7f01bb401f7b:	48 23 ca             	and    %rdx,%rcx
    7f01bb401f7e:	89 8d d0 e3 ff ff    	mov    %ecx,-0x1c30(%rbp)
    7f01bb401f84:	ff c1                	inc    %ecx
    7f01bb401f86:	89 8d c8 e3 ff ff    	mov    %ecx,-0x1c38(%rbp)
    7f01bb401f8c:	89 85 c0 e3 ff ff    	mov    %eax,-0x1c40(%rbp)
    7f01bb401f92:	85 c0                	test   %eax,%eax
    7f01bb401f94:	0f 84 11 00 00 00    	je     0x7f01bb401fab
    7f01bb401f9a:	8b 85 d0 e3 ff ff    	mov    -0x1c30(%rbp),%eax
    7f01bb401fa0:	89 85 b8 e3 ff ff    	mov    %eax,-0x1c48(%rbp)
    7f01bb401fa6:	e9 0c 00 00 00       	jmpq   0x7f01bb401fb7
    7f01bb401fab:	8b 85 c8 e3 ff ff    	mov    -0x1c38(%rbp),%eax
    7f01bb401fb1:	89 85 b8 e3 ff ff    	mov    %eax,-0x1c48(%rbp)
    7f01bb401fb7:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401fbd:	83 f8 01             	cmp    $0x1,%eax
    7f01bb401fc0:	0f 85 11 00 00 00    	jne    0x7f01bb401fd7
    7f01bb401fc6:	8b 85 b8 e3 ff ff    	mov    -0x1c48(%rbp),%eax
    7f01bb401fcc:	89 85 b0 e3 ff ff    	mov    %eax,-0x1c50(%rbp)
    7f01bb401fd2:	e9 2c 00 00 00       	jmpq   0x7f01bb402003
    7f01bb401fd7:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb401fdd:	83 f8 02             	cmp    $0x2,%eax
    7f01bb401fe0:	0f 85 11 00 00 00    	jne    0x7f01bb401ff7
    7f01bb401fe6:	8b 85 b8 e3 ff ff    	mov    -0x1c48(%rbp),%eax
    7f01bb401fec:	89 85 b0 e3 ff ff    	mov    %eax,-0x1c50(%rbp)
    7f01bb401ff2:	e9 0c 00 00 00       	jmpq   0x7f01bb402003
    7f01bb401ff7:	8b 85 d0 e3 ff ff    	mov    -0x1c30(%rbp),%eax
    7f01bb401ffd:	89 85 b0 e3 ff ff    	mov    %eax,-0x1c50(%rbp)
    7f01bb402003:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    7f01bb40200a:	48 c1 e8 20          	shr    $0x20,%rax
    7f01bb40200e:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb402013:	48 23 c1             	and    %rcx,%rax
    7f01bb402016:	89 85 a8 e3 ff ff    	mov    %eax,-0x1c58(%rbp)
    7f01bb40201c:	ff c0                	inc    %eax
    7f01bb40201e:	89 85 a0 e3 ff ff    	mov    %eax,-0x1c60(%rbp)
    7f01bb402024:	8b 85 c0 e3 ff ff    	mov    -0x1c40(%rbp),%eax
    7f01bb40202a:	85 c0                	test   %eax,%eax
    7f01bb40202c:	0f 84 11 00 00 00    	je     0x7f01bb402043
    7f01bb402032:	8b 85 a8 e3 ff ff    	mov    -0x1c58(%rbp),%eax
    7f01bb402038:	89 85 98 e3 ff ff    	mov    %eax,-0x1c68(%rbp)
    7f01bb40203e:	e9 0c 00 00 00       	jmpq   0x7f01bb40204f
    7f01bb402043:	8b 85 a0 e3 ff ff    	mov    -0x1c60(%rbp),%eax
    7f01bb402049:	89 85 98 e3 ff ff    	mov    %eax,-0x1c68(%rbp)
    7f01bb40204f:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb402055:	83 f8 03             	cmp    $0x3,%eax
    7f01bb402058:	0f 85 11 00 00 00    	jne    0x7f01bb40206f
    7f01bb40205e:	8b 85 98 e3 ff ff    	mov    -0x1c68(%rbp),%eax
    7f01bb402064:	89 85 90 e3 ff ff    	mov    %eax,-0x1c70(%rbp)
    7f01bb40206a:	e9 0c 00 00 00       	jmpq   0x7f01bb40207b
    7f01bb40206f:	8b 85 a8 e3 ff ff    	mov    -0x1c58(%rbp),%eax
    7f01bb402075:	89 85 90 e3 ff ff    	mov    %eax,-0x1c70(%rbp)
    7f01bb40207b:	8b 85 b0 e3 ff ff    	mov    -0x1c50(%rbp),%eax
    7f01bb402081:	8b c0                	mov    %eax,%eax
    7f01bb402083:	8b 8d 90 e3 ff ff    	mov    -0x1c70(%rbp),%ecx
    7f01bb402089:	8b c9                	mov    %ecx,%ecx
    7f01bb40208b:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb40208f:	48 0b c1             	or     %rcx,%rax
    7f01bb402092:	48 89 85 88 e3 ff ff 	mov    %rax,-0x1c78(%rbp)
    7f01bb402099:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb40209f:	85 c0                	test   %eax,%eax
    7f01bb4020a1:	0f 85 11 00 00 00    	jne    0x7f01bb4020b8
    7f01bb4020a7:	8b 85 90 fc ff ff    	mov    -0x370(%rbp),%eax
    7f01bb4020ad:	89 85 80 e3 ff ff    	mov    %eax,-0x1c80(%rbp)
    7f01bb4020b3:	e9 0a 00 00 00       	jmpq   0x7f01bb4020c2
    7f01bb4020b8:	c7 85 80 e3 ff ff 00 	movl   $0x0,-0x1c80(%rbp)
    7f01bb4020bf:	00 00 00 
    7f01bb4020c2:	8b 85 10 e5 ff ff    	mov    -0x1af0(%rbp),%eax
    7f01bb4020c8:	85 c0                	test   %eax,%eax
    7f01bb4020ca:	0f 84 0f 00 00 00    	je     0x7f01bb4020df
    7f01bb4020d0:	c7 85 78 e3 ff ff 01 	movl   $0x1,-0x1c88(%rbp)
    7f01bb4020d7:	00 00 00 
    7f01bb4020da:	e9 0c 00 00 00       	jmpq   0x7f01bb4020eb
    7f01bb4020df:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb4020e5:	89 85 78 e3 ff ff    	mov    %eax,-0x1c88(%rbp)
    7f01bb4020eb:	8b 85 c0 e3 ff ff    	mov    -0x1c40(%rbp),%eax
    7f01bb4020f1:	85 c0                	test   %eax,%eax
    7f01bb4020f3:	0f 84 0f 00 00 00    	je     0x7f01bb402108
    7f01bb4020f9:	c7 85 70 e3 ff ff 02 	movl   $0x2,-0x1c90(%rbp)
    7f01bb402100:	00 00 00 
    7f01bb402103:	e9 0c 00 00 00       	jmpq   0x7f01bb402114
    7f01bb402108:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb40210e:	89 85 70 e3 ff ff    	mov    %eax,-0x1c90(%rbp)
    7f01bb402114:	8b 85 c0 e3 ff ff    	mov    -0x1c40(%rbp),%eax
    7f01bb40211a:	85 c0                	test   %eax,%eax
    7f01bb40211c:	0f 84 0f 00 00 00    	je     0x7f01bb402131
    7f01bb402122:	c7 85 68 e3 ff ff 03 	movl   $0x3,-0x1c98(%rbp)
    7f01bb402129:	00 00 00 
    7f01bb40212c:	e9 0c 00 00 00       	jmpq   0x7f01bb40213d
    7f01bb402131:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb402137:	89 85 68 e3 ff ff    	mov    %eax,-0x1c98(%rbp)
    7f01bb40213d:	8b 85 c0 e3 ff ff    	mov    -0x1c40(%rbp),%eax
    7f01bb402143:	85 c0                	test   %eax,%eax
    7f01bb402145:	0f 84 0f 00 00 00    	je     0x7f01bb40215a
    7f01bb40214b:	c7 85 60 e3 ff ff 00 	movl   $0x0,-0x1ca0(%rbp)
    7f01bb402152:	00 00 00 
    7f01bb402155:	e9 0c 00 00 00       	jmpq   0x7f01bb402166
    7f01bb40215a:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb402160:	89 85 60 e3 ff ff    	mov    %eax,-0x1ca0(%rbp)
    7f01bb402166:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb40216c:	85 c0                	test   %eax,%eax
    7f01bb40216e:	0f 85 11 00 00 00    	jne    0x7f01bb402185
    7f01bb402174:	8b 85 78 e3 ff ff    	mov    -0x1c88(%rbp),%eax
    7f01bb40217a:	89 85 58 e3 ff ff    	mov    %eax,-0x1ca8(%rbp)
    7f01bb402180:	e9 6c 00 00 00       	jmpq   0x7f01bb4021f1
    7f01bb402185:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb40218b:	83 f8 01             	cmp    $0x1,%eax
    7f01bb40218e:	0f 85 11 00 00 00    	jne    0x7f01bb4021a5
    7f01bb402194:	8b 85 70 e3 ff ff    	mov    -0x1c90(%rbp),%eax
    7f01bb40219a:	89 85 58 e3 ff ff    	mov    %eax,-0x1ca8(%rbp)
    7f01bb4021a0:	e9 4c 00 00 00       	jmpq   0x7f01bb4021f1
    7f01bb4021a5:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb4021ab:	83 f8 02             	cmp    $0x2,%eax
    7f01bb4021ae:	0f 85 11 00 00 00    	jne    0x7f01bb4021c5
    7f01bb4021b4:	8b 85 68 e3 ff ff    	mov    -0x1c98(%rbp),%eax
    7f01bb4021ba:	89 85 58 e3 ff ff    	mov    %eax,-0x1ca8(%rbp)
    7f01bb4021c0:	e9 2c 00 00 00       	jmpq   0x7f01bb4021f1
    7f01bb4021c5:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb4021cb:	83 f8 03             	cmp    $0x3,%eax
    7f01bb4021ce:	0f 85 11 00 00 00    	jne    0x7f01bb4021e5
    7f01bb4021d4:	8b 85 60 e3 ff ff    	mov    -0x1ca0(%rbp),%eax
    7f01bb4021da:	89 85 58 e3 ff ff    	mov    %eax,-0x1ca8(%rbp)
    7f01bb4021e0:	e9 0c 00 00 00       	jmpq   0x7f01bb4021f1
    7f01bb4021e5:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb4021eb:	89 85 58 e3 ff ff    	mov    %eax,-0x1ca8(%rbp)
    7f01bb4021f1:	8b 85 e0 fc ff ff    	mov    -0x320(%rbp),%eax
    7f01bb4021f7:	23 85 10 f7 ff ff    	and    -0x8f0(%rbp),%eax
    7f01bb4021fd:	33 c9                	xor    %ecx,%ecx
    7f01bb4021ff:	3b c8                	cmp    %eax,%ecx
    7f01bb402201:	0f 95 c0             	setne  %al
    7f01bb402204:	0f b6 c0             	movzbl %al,%eax
    7f01bb402207:	89 85 50 e3 ff ff    	mov    %eax,-0x1cb0(%rbp)
    7f01bb40220d:	8b 8d 18 f7 ff ff    	mov    -0x8e8(%rbp),%ecx
    7f01bb402213:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb402216:	0f 93 c0             	setae  %al
    7f01bb402219:	0f b6 c0             	movzbl %al,%eax
    7f01bb40221c:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb40221f:	0f 92 c1             	setb   %cl
    7f01bb402222:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb402225:	23 c1                	and    %ecx,%eax
    7f01bb402227:	85 c0                	test   %eax,%eax
    7f01bb402229:	0f 85 0a 00 00 00    	jne    0x7f01bb402239
    7f01bb40222f:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402234:	e9 e5 7c 00 00       	jmpq   0x7f01bb409f1e
    7f01bb402239:	49 8b c7             	mov    %r15,%rax
    7f01bb40223c:	48 05 08 30 00 00    	add    $0x3008,%rax
    7f01bb402242:	8b 8d 18 f7 ff ff    	mov    -0x8e8(%rbp),%ecx
    7f01bb402248:	8b c9                	mov    %ecx,%ecx
    7f01bb40224a:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    7f01bb40224d:	89 85 48 e3 ff ff    	mov    %eax,-0x1cb8(%rbp)
    7f01bb402253:	8b 85 50 e3 ff ff    	mov    -0x1cb0(%rbp),%eax
    7f01bb402259:	85 c0                	test   %eax,%eax
    7f01bb40225b:	0f 84 11 00 00 00    	je     0x7f01bb402272
    7f01bb402261:	8b 85 48 e3 ff ff    	mov    -0x1cb8(%rbp),%eax
    7f01bb402267:	89 85 40 e3 ff ff    	mov    %eax,-0x1cc0(%rbp)
    7f01bb40226d:	e9 0a 00 00 00       	jmpq   0x7f01bb40227c
    7f01bb402272:	c7 85 40 e3 ff ff 00 	movl   $0x0,-0x1cc0(%rbp)
    7f01bb402279:	00 00 00 
    7f01bb40227c:	8b 85 28 fd ff ff    	mov    -0x2d8(%rbp),%eax
    7f01bb402282:	8b 8d e0 eb ff ff    	mov    -0x1420(%rbp),%ecx
    7f01bb402288:	23 c1                	and    %ecx,%eax
    7f01bb40228a:	89 85 38 e3 ff ff    	mov    %eax,-0x1cc8(%rbp)
    7f01bb402290:	85 c9                	test   %ecx,%ecx
    7f01bb402292:	0f 84 11 00 00 00    	je     0x7f01bb4022a9
    7f01bb402298:	8b 85 38 e3 ff ff    	mov    -0x1cc8(%rbp),%eax
    7f01bb40229e:	89 85 30 e3 ff ff    	mov    %eax,-0x1cd0(%rbp)
    7f01bb4022a4:	e9 0c 00 00 00       	jmpq   0x7f01bb4022b5
    7f01bb4022a9:	8b 85 48 ec ff ff    	mov    -0x13b8(%rbp),%eax
    7f01bb4022af:	89 85 30 e3 ff ff    	mov    %eax,-0x1cd0(%rbp)
    7f01bb4022b5:	8b 85 f0 eb ff ff    	mov    -0x1410(%rbp),%eax
    7f01bb4022bb:	85 c0                	test   %eax,%eax
    7f01bb4022bd:	0f 84 11 00 00 00    	je     0x7f01bb4022d4
    7f01bb4022c3:	8b 85 48 ec ff ff    	mov    -0x13b8(%rbp),%eax
    7f01bb4022c9:	89 85 28 e3 ff ff    	mov    %eax,-0x1cd8(%rbp)
    7f01bb4022cf:	e9 0c 00 00 00       	jmpq   0x7f01bb4022e0
    7f01bb4022d4:	8b 85 40 ec ff ff    	mov    -0x13c0(%rbp),%eax
    7f01bb4022da:	89 85 28 e3 ff ff    	mov    %eax,-0x1cd8(%rbp)
    7f01bb4022e0:	8b 85 f8 eb ff ff    	mov    -0x1408(%rbp),%eax
    7f01bb4022e6:	85 c0                	test   %eax,%eax
    7f01bb4022e8:	0f 84 11 00 00 00    	je     0x7f01bb4022ff
    7f01bb4022ee:	8b 85 40 ec ff ff    	mov    -0x13c0(%rbp),%eax
    7f01bb4022f4:	89 85 20 e3 ff ff    	mov    %eax,-0x1ce0(%rbp)
    7f01bb4022fa:	e9 0c 00 00 00       	jmpq   0x7f01bb40230b
    7f01bb4022ff:	8b 85 08 ec ff ff    	mov    -0x13f8(%rbp),%eax
    7f01bb402305:	89 85 20 e3 ff ff    	mov    %eax,-0x1ce0(%rbp)
    7f01bb40230b:	8b 85 28 e3 ff ff    	mov    -0x1cd8(%rbp),%eax
    7f01bb402311:	d1 e0                	shl    %eax
    7f01bb402313:	0b 85 30 e3 ff ff    	or     -0x1cd0(%rbp),%eax
    7f01bb402319:	8b 8d 20 e3 ff ff    	mov    -0x1ce0(%rbp),%ecx
    7f01bb40231f:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb402322:	0b c1                	or     %ecx,%eax
    7f01bb402324:	89 85 18 e3 ff ff    	mov    %eax,-0x1ce8(%rbp)
    7f01bb40232a:	8b 85 e0 eb ff ff    	mov    -0x1420(%rbp),%eax
    7f01bb402330:	23 85 38 e3 ff ff    	and    -0x1cc8(%rbp),%eax
    7f01bb402336:	41 8b 8f 07 4c 00 00 	mov    0x4c07(%r15),%ecx
    7f01bb40233d:	c1 e9 08             	shr    $0x8,%ecx
    7f01bb402340:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb402346:	49 0f b6 97 12 4c 00 	movzbq 0x4c12(%r15),%rdx
    7f01bb40234d:	00 
    7f01bb40234e:	c1 ea 04             	shr    $0x4,%edx
    7f01bb402351:	83 e2 01             	and    $0x1,%edx
    7f01bb402354:	c1 e2 14             	shl    $0x14,%edx
    7f01bb402357:	0b ca                	or     %edx,%ecx
    7f01bb402359:	89 8d 10 e3 ff ff    	mov    %ecx,-0x1cf0(%rbp)
    7f01bb40235f:	85 c0                	test   %eax,%eax
    7f01bb402361:	0f 84 11 00 00 00    	je     0x7f01bb402378
    7f01bb402367:	8b 85 10 e3 ff ff    	mov    -0x1cf0(%rbp),%eax
    7f01bb40236d:	89 85 08 e3 ff ff    	mov    %eax,-0x1cf8(%rbp)
    7f01bb402373:	e9 0c 00 00 00       	jmpq   0x7f01bb402384
    7f01bb402378:	8b 85 80 fc ff ff    	mov    -0x380(%rbp),%eax
    7f01bb40237e:	89 85 08 e3 ff ff    	mov    %eax,-0x1cf8(%rbp)
    7f01bb402384:	8b 85 f0 eb ff ff    	mov    -0x1410(%rbp),%eax
    7f01bb40238a:	23 85 48 ec ff ff    	and    -0x13b8(%rbp),%eax
    7f01bb402390:	85 c0                	test   %eax,%eax
    7f01bb402392:	0f 84 11 00 00 00    	je     0x7f01bb4023a9
    7f01bb402398:	8b 85 80 fc ff ff    	mov    -0x380(%rbp),%eax
    7f01bb40239e:	89 85 00 e3 ff ff    	mov    %eax,-0x1d00(%rbp)
    7f01bb4023a4:	e9 0c 00 00 00       	jmpq   0x7f01bb4023b5
    7f01bb4023a9:	8b 85 78 fc ff ff    	mov    -0x388(%rbp),%eax
    7f01bb4023af:	89 85 00 e3 ff ff    	mov    %eax,-0x1d00(%rbp)
    7f01bb4023b5:	8b 85 f8 eb ff ff    	mov    -0x1408(%rbp),%eax
    7f01bb4023bb:	23 85 40 ec ff ff    	and    -0x13c0(%rbp),%eax
    7f01bb4023c1:	85 c0                	test   %eax,%eax
    7f01bb4023c3:	0f 84 11 00 00 00    	je     0x7f01bb4023da
    7f01bb4023c9:	8b 85 78 fc ff ff    	mov    -0x388(%rbp),%eax
    7f01bb4023cf:	89 85 f8 e2 ff ff    	mov    %eax,-0x1d08(%rbp)
    7f01bb4023d5:	e9 0c 00 00 00       	jmpq   0x7f01bb4023e6
    7f01bb4023da:	8b 85 70 fc ff ff    	mov    -0x390(%rbp),%eax
    7f01bb4023e0:	89 85 f8 e2 ff ff    	mov    %eax,-0x1d08(%rbp)
    7f01bb4023e6:	8b 85 68 fc ff ff    	mov    -0x398(%rbp),%eax
    7f01bb4023ec:	83 e0 01             	and    $0x1,%eax
    7f01bb4023ef:	89 85 f0 e2 ff ff    	mov    %eax,-0x1d10(%rbp)
    7f01bb4023f5:	f7 d0                	not    %eax
    7f01bb4023f7:	83 e0 01             	and    $0x1,%eax
    7f01bb4023fa:	8b 8d 68 fc ff ff    	mov    -0x398(%rbp),%ecx
    7f01bb402400:	d1 e9                	shr    %ecx
    7f01bb402402:	83 e1 01             	and    $0x1,%ecx
    7f01bb402405:	89 8d e8 e2 ff ff    	mov    %ecx,-0x1d18(%rbp)
    7f01bb40240b:	f7 d1                	not    %ecx
    7f01bb40240d:	83 e1 01             	and    $0x1,%ecx
    7f01bb402410:	8b 95 38 ec ff ff    	mov    -0x13c8(%rbp),%edx
    7f01bb402416:	f7 d2                	not    %edx
    7f01bb402418:	83 e2 01             	and    $0x1,%edx
    7f01bb40241b:	0b 95 10 ec ff ff    	or     -0x13f0(%rbp),%edx
    7f01bb402421:	89 95 e0 e2 ff ff    	mov    %edx,-0x1d20(%rbp)
    7f01bb402427:	0b ca                	or     %edx,%ecx
    7f01bb402429:	89 8d d8 e2 ff ff    	mov    %ecx,-0x1d28(%rbp)
    7f01bb40242f:	0b c1                	or     %ecx,%eax
    7f01bb402431:	8b 8d 08 ec ff ff    	mov    -0x13f8(%rbp),%ecx
    7f01bb402437:	23 8d 00 ec ff ff    	and    -0x1400(%rbp),%ecx
    7f01bb40243d:	89 8d d0 e2 ff ff    	mov    %ecx,-0x1d30(%rbp)
    7f01bb402443:	89 85 c8 e2 ff ff    	mov    %eax,-0x1d38(%rbp)
    7f01bb402449:	85 c0                	test   %eax,%eax
    7f01bb40244b:	0f 84 11 00 00 00    	je     0x7f01bb402462
    7f01bb402451:	8b 85 d0 e2 ff ff    	mov    -0x1d30(%rbp),%eax
    7f01bb402457:	89 85 c0 e2 ff ff    	mov    %eax,-0x1d40(%rbp)
    7f01bb40245d:	e9 0c 00 00 00       	jmpq   0x7f01bb40246e
    7f01bb402462:	8b 85 f0 e2 ff ff    	mov    -0x1d10(%rbp),%eax
    7f01bb402468:	89 85 c0 e2 ff ff    	mov    %eax,-0x1d40(%rbp)
    7f01bb40246e:	8b 85 d8 e2 ff ff    	mov    -0x1d28(%rbp),%eax
    7f01bb402474:	85 c0                	test   %eax,%eax
    7f01bb402476:	0f 84 11 00 00 00    	je     0x7f01bb40248d
    7f01bb40247c:	8b 85 f0 e2 ff ff    	mov    -0x1d10(%rbp),%eax
    7f01bb402482:	89 85 b8 e2 ff ff    	mov    %eax,-0x1d48(%rbp)
    7f01bb402488:	e9 0c 00 00 00       	jmpq   0x7f01bb402499
    7f01bb40248d:	8b 85 e8 e2 ff ff    	mov    -0x1d18(%rbp),%eax
    7f01bb402493:	89 85 b8 e2 ff ff    	mov    %eax,-0x1d48(%rbp)
    7f01bb402499:	8b 85 e0 e2 ff ff    	mov    -0x1d20(%rbp),%eax
    7f01bb40249f:	85 c0                	test   %eax,%eax
    7f01bb4024a1:	0f 84 11 00 00 00    	je     0x7f01bb4024b8
    7f01bb4024a7:	8b 85 e8 e2 ff ff    	mov    -0x1d18(%rbp),%eax
    7f01bb4024ad:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
    7f01bb4024b3:	e9 0c 00 00 00       	jmpq   0x7f01bb4024c4
    7f01bb4024b8:	8b 85 38 ec ff ff    	mov    -0x13c8(%rbp),%eax
    7f01bb4024be:	89 85 b0 e2 ff ff    	mov    %eax,-0x1d50(%rbp)
    7f01bb4024c4:	8b 85 b8 e2 ff ff    	mov    -0x1d48(%rbp),%eax
    7f01bb4024ca:	d1 e0                	shl    %eax
    7f01bb4024cc:	0b 85 c0 e2 ff ff    	or     -0x1d40(%rbp),%eax
    7f01bb4024d2:	8b 8d b0 e2 ff ff    	mov    -0x1d50(%rbp),%ecx
    7f01bb4024d8:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb4024db:	0b c1                	or     %ecx,%eax
    7f01bb4024dd:	89 85 a8 e2 ff ff    	mov    %eax,-0x1d58(%rbp)
    7f01bb4024e3:	8b 85 c8 e2 ff ff    	mov    -0x1d38(%rbp),%eax
    7f01bb4024e9:	23 85 d0 e2 ff ff    	and    -0x1d30(%rbp),%eax
    7f01bb4024ef:	85 c0                	test   %eax,%eax
    7f01bb4024f1:	0f 84 11 00 00 00    	je     0x7f01bb402508
    7f01bb4024f7:	8b 85 70 fc ff ff    	mov    -0x390(%rbp),%eax
    7f01bb4024fd:	89 85 a0 e2 ff ff    	mov    %eax,-0x1d60(%rbp)
    7f01bb402503:	e9 0c 00 00 00       	jmpq   0x7f01bb402514
    7f01bb402508:	8b 85 60 fc ff ff    	mov    -0x3a0(%rbp),%eax
    7f01bb40250e:	89 85 a0 e2 ff ff    	mov    %eax,-0x1d60(%rbp)
    7f01bb402514:	8b 85 d8 e2 ff ff    	mov    -0x1d28(%rbp),%eax
    7f01bb40251a:	23 85 f0 e2 ff ff    	and    -0x1d10(%rbp),%eax
    7f01bb402520:	85 c0                	test   %eax,%eax
    7f01bb402522:	0f 84 11 00 00 00    	je     0x7f01bb402539
    7f01bb402528:	8b 85 60 fc ff ff    	mov    -0x3a0(%rbp),%eax
    7f01bb40252e:	89 85 98 e2 ff ff    	mov    %eax,-0x1d68(%rbp)
    7f01bb402534:	e9 0c 00 00 00       	jmpq   0x7f01bb402545
    7f01bb402539:	8b 85 58 fc ff ff    	mov    -0x3a8(%rbp),%eax
    7f01bb40253f:	89 85 98 e2 ff ff    	mov    %eax,-0x1d68(%rbp)
    7f01bb402545:	8b 85 e0 e2 ff ff    	mov    -0x1d20(%rbp),%eax
    7f01bb40254b:	23 85 e8 e2 ff ff    	and    -0x1d18(%rbp),%eax
    7f01bb402551:	85 c0                	test   %eax,%eax
    7f01bb402553:	0f 84 11 00 00 00    	je     0x7f01bb40256a
    7f01bb402559:	8b 85 58 fc ff ff    	mov    -0x3a8(%rbp),%eax
    7f01bb40255f:	89 85 90 e2 ff ff    	mov    %eax,-0x1d70(%rbp)
    7f01bb402565:	e9 0c 00 00 00       	jmpq   0x7f01bb402576
    7f01bb40256a:	8b 85 50 fc ff ff    	mov    -0x3b0(%rbp),%eax
    7f01bb402570:	89 85 90 e2 ff ff    	mov    %eax,-0x1d70(%rbp)
    7f01bb402576:	8b 85 50 fc ff ff    	mov    -0x3b0(%rbp),%eax
    7f01bb40257c:	c1 e8 14             	shr    $0x14,%eax
    7f01bb40257f:	83 e0 01             	and    $0x1,%eax
    7f01bb402582:	8b 8d 38 ec ff ff    	mov    -0x13c8(%rbp),%ecx
    7f01bb402588:	23 c8                	and    %eax,%ecx
    7f01bb40258a:	89 8d 88 e2 ff ff    	mov    %ecx,-0x1d78(%rbp)
    7f01bb402590:	85 c0                	test   %eax,%eax
    7f01bb402592:	0f 94 c0             	sete   %al
    7f01bb402595:	0f b6 c0             	movzbl %al,%eax
    7f01bb402598:	89 85 80 e2 ff ff    	mov    %eax,-0x1d80(%rbp)
    7f01bb40259e:	8b 8d 38 ec ff ff    	mov    -0x13c8(%rbp),%ecx
    7f01bb4025a4:	23 c1                	and    %ecx,%eax
    7f01bb4025a6:	89 85 78 e2 ff ff    	mov    %eax,-0x1d88(%rbp)
    7f01bb4025ac:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb4025b2:	85 c0                	test   %eax,%eax
    7f01bb4025b4:	0f 85 11 00 00 00    	jne    0x7f01bb4025cb
    7f01bb4025ba:	8b 85 78 e2 ff ff    	mov    -0x1d88(%rbp),%eax
    7f01bb4025c0:	89 85 70 e2 ff ff    	mov    %eax,-0x1d90(%rbp)
    7f01bb4025c6:	e9 0a 00 00 00       	jmpq   0x7f01bb4025d5
    7f01bb4025cb:	c7 85 70 e2 ff ff 00 	movl   $0x0,-0x1d90(%rbp)
    7f01bb4025d2:	00 00 00 
    7f01bb4025d5:	8b 85 50 fc ff ff    	mov    -0x3b0(%rbp),%eax
    7f01bb4025db:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4025e0:	89 85 68 e2 ff ff    	mov    %eax,-0x1d98(%rbp)
    7f01bb4025e6:	83 e0 1f             	and    $0x1f,%eax
    7f01bb4025e9:	83 e0 1f             	and    $0x1f,%eax
    7f01bb4025ec:	89 85 60 e2 ff ff    	mov    %eax,-0x1da0(%rbp)
    7f01bb4025f2:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb4025f8:	85 c0                	test   %eax,%eax
    7f01bb4025fa:	0f 85 11 00 00 00    	jne    0x7f01bb402611
    7f01bb402600:	8b 85 60 e2 ff ff    	mov    -0x1da0(%rbp),%eax
    7f01bb402606:	89 85 58 e2 ff ff    	mov    %eax,-0x1da8(%rbp)
    7f01bb40260c:	e9 0a 00 00 00       	jmpq   0x7f01bb40261b
    7f01bb402611:	c7 85 58 e2 ff ff 00 	movl   $0x0,-0x1da8(%rbp)
    7f01bb402618:	00 00 00 
    7f01bb40261b:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402620:	8b 8d 58 e2 ff ff    	mov    -0x1da8(%rbp),%ecx
    7f01bb402626:	d3 e0                	shl    %cl,%eax
    7f01bb402628:	89 85 50 e2 ff ff    	mov    %eax,-0x1db0(%rbp)
    7f01bb40262e:	8b 8d 48 fc ff ff    	mov    -0x3b8(%rbp),%ecx
    7f01bb402634:	0b c1                	or     %ecx,%eax
    7f01bb402636:	89 85 48 e2 ff ff    	mov    %eax,-0x1db8(%rbp)
    7f01bb40263c:	8b 85 70 e2 ff ff    	mov    -0x1d90(%rbp),%eax
    7f01bb402642:	85 c0                	test   %eax,%eax
    7f01bb402644:	0f 84 11 00 00 00    	je     0x7f01bb40265b
    7f01bb40264a:	8b 85 48 e2 ff ff    	mov    -0x1db8(%rbp),%eax
    7f01bb402650:	89 85 40 e2 ff ff    	mov    %eax,-0x1dc0(%rbp)
    7f01bb402656:	e9 0c 00 00 00       	jmpq   0x7f01bb402667
    7f01bb40265b:	8b 85 48 fc ff ff    	mov    -0x3b8(%rbp),%eax
    7f01bb402661:	89 85 40 e2 ff ff    	mov    %eax,-0x1dc0(%rbp)
    7f01bb402667:	8b 85 88 e2 ff ff    	mov    -0x1d78(%rbp),%eax
    7f01bb40266d:	85 c0                	test   %eax,%eax
    7f01bb40266f:	0f 84 0f 00 00 00    	je     0x7f01bb402684
    7f01bb402675:	c7 85 38 e2 ff ff 00 	movl   $0x0,-0x1dc8(%rbp)
    7f01bb40267c:	00 00 00 
    7f01bb40267f:	e9 0c 00 00 00       	jmpq   0x7f01bb402690
    7f01bb402684:	8b 85 40 e2 ff ff    	mov    -0x1dc0(%rbp),%eax
    7f01bb40268a:	89 85 38 e2 ff ff    	mov    %eax,-0x1dc8(%rbp)
    7f01bb402690:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402696:	85 c0                	test   %eax,%eax
    7f01bb402698:	0f 85 11 00 00 00    	jne    0x7f01bb4026af
    7f01bb40269e:	8b 85 38 e2 ff ff    	mov    -0x1dc8(%rbp),%eax
    7f01bb4026a4:	89 85 30 e2 ff ff    	mov    %eax,-0x1dd0(%rbp)
    7f01bb4026aa:	e9 0c 00 00 00       	jmpq   0x7f01bb4026bb
    7f01bb4026af:	8b 85 48 fc ff ff    	mov    -0x3b8(%rbp),%eax
    7f01bb4026b5:	89 85 30 e2 ff ff    	mov    %eax,-0x1dd0(%rbp)
    7f01bb4026bb:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb4026c1:	85 c0                	test   %eax,%eax
    7f01bb4026c3:	0f 94 c0             	sete   %al
    7f01bb4026c6:	0f b6 c0             	movzbl %al,%eax
    7f01bb4026c9:	89 85 28 e2 ff ff    	mov    %eax,-0x1dd8(%rbp)
    7f01bb4026cf:	23 85 88 e2 ff ff    	and    -0x1d78(%rbp),%eax
    7f01bb4026d5:	85 c0                	test   %eax,%eax
    7f01bb4026d7:	0f 84 11 00 00 00    	je     0x7f01bb4026ee
    7f01bb4026dd:	8b 85 48 fc ff ff    	mov    -0x3b8(%rbp),%eax
    7f01bb4026e3:	89 85 20 e2 ff ff    	mov    %eax,-0x1de0(%rbp)
    7f01bb4026e9:	e9 0c 00 00 00       	jmpq   0x7f01bb4026fa
    7f01bb4026ee:	8b 85 40 fc ff ff    	mov    -0x3c0(%rbp),%eax
    7f01bb4026f4:	89 85 20 e2 ff ff    	mov    %eax,-0x1de0(%rbp)
    7f01bb4026fa:	8b 85 30 ec ff ff    	mov    -0x13d0(%rbp),%eax
    7f01bb402700:	23 85 38 ec ff ff    	and    -0x13c8(%rbp),%eax
    7f01bb402706:	89 85 18 e2 ff ff    	mov    %eax,-0x1de8(%rbp)
    7f01bb40270c:	23 85 80 e2 ff ff    	and    -0x1d80(%rbp),%eax
    7f01bb402712:	89 85 10 e2 ff ff    	mov    %eax,-0x1df0(%rbp)
    7f01bb402718:	8b 85 70 fc ff ff    	mov    -0x390(%rbp),%eax
    7f01bb40271e:	c1 e8 14             	shr    $0x14,%eax
    7f01bb402721:	83 e0 01             	and    $0x1,%eax
    7f01bb402724:	85 c0                	test   %eax,%eax
    7f01bb402726:	0f 94 c0             	sete   %al
    7f01bb402729:	0f b6 c0             	movzbl %al,%eax
    7f01bb40272c:	8b 8d d0 e2 ff ff    	mov    -0x1d30(%rbp),%ecx
    7f01bb402732:	23 c1                	and    %ecx,%eax
    7f01bb402734:	8b 95 18 ec ff ff    	mov    -0x13e8(%rbp),%edx
    7f01bb40273a:	8b b5 50 e2 ff ff    	mov    -0x1db0(%rbp),%esi
    7f01bb402740:	3b d6                	cmp    %esi,%edx
    7f01bb402742:	0f 95 c1             	setne  %cl
    7f01bb402745:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb402748:	89 85 08 e2 ff ff    	mov    %eax,-0x1df8(%rbp)
    7f01bb40274e:	23 c1                	and    %ecx,%eax
    7f01bb402750:	f7 d6                	not    %esi
    7f01bb402752:	8b 8d 38 fc ff ff    	mov    -0x3c8(%rbp),%ecx
    7f01bb402758:	23 f1                	and    %ecx,%esi
    7f01bb40275a:	89 b5 00 e2 ff ff    	mov    %esi,-0x1e00(%rbp)
    7f01bb402760:	0b d6                	or     %esi,%edx
    7f01bb402762:	89 95 f8 e1 ff ff    	mov    %edx,-0x1e08(%rbp)
    7f01bb402768:	85 c0                	test   %eax,%eax
    7f01bb40276a:	0f 84 11 00 00 00    	je     0x7f01bb402781
    7f01bb402770:	8b 85 f8 e1 ff ff    	mov    -0x1e08(%rbp),%eax
    7f01bb402776:	89 85 f0 e1 ff ff    	mov    %eax,-0x1e10(%rbp)
    7f01bb40277c:	e9 0c 00 00 00       	jmpq   0x7f01bb40278d
    7f01bb402781:	8b 85 00 e2 ff ff    	mov    -0x1e00(%rbp),%eax
    7f01bb402787:	89 85 f0 e1 ff ff    	mov    %eax,-0x1e10(%rbp)
    7f01bb40278d:	8b 85 38 fc ff ff    	mov    -0x3c8(%rbp),%eax
    7f01bb402793:	0b 85 18 ec ff ff    	or     -0x13e8(%rbp),%eax
    7f01bb402799:	89 85 e8 e1 ff ff    	mov    %eax,-0x1e18(%rbp)
    7f01bb40279f:	8b 85 10 e2 ff ff    	mov    -0x1df0(%rbp),%eax
    7f01bb4027a5:	85 c0                	test   %eax,%eax
    7f01bb4027a7:	0f 84 11 00 00 00    	je     0x7f01bb4027be
    7f01bb4027ad:	8b 85 f0 e1 ff ff    	mov    -0x1e10(%rbp),%eax
    7f01bb4027b3:	89 85 e0 e1 ff ff    	mov    %eax,-0x1e20(%rbp)
    7f01bb4027b9:	e9 2b 00 00 00       	jmpq   0x7f01bb4027e9
    7f01bb4027be:	8b 85 08 e2 ff ff    	mov    -0x1df8(%rbp),%eax
    7f01bb4027c4:	85 c0                	test   %eax,%eax
    7f01bb4027c6:	0f 84 11 00 00 00    	je     0x7f01bb4027dd
    7f01bb4027cc:	8b 85 e8 e1 ff ff    	mov    -0x1e18(%rbp),%eax
    7f01bb4027d2:	89 85 e0 e1 ff ff    	mov    %eax,-0x1e20(%rbp)
    7f01bb4027d8:	e9 0c 00 00 00       	jmpq   0x7f01bb4027e9
    7f01bb4027dd:	8b 85 38 fc ff ff    	mov    -0x3c8(%rbp),%eax
    7f01bb4027e3:	89 85 e0 e1 ff ff    	mov    %eax,-0x1e20(%rbp)
    7f01bb4027e9:	8b 8d 18 e2 ff ff    	mov    -0x1de8(%rbp),%ecx
    7f01bb4027ef:	8b c1                	mov    %ecx,%eax
    7f01bb4027f1:	85 c0                	test   %eax,%eax
    7f01bb4027f3:	0f 94 c0             	sete   %al
    7f01bb4027f6:	0f b6 c0             	movzbl %al,%eax
    7f01bb4027f9:	8b 95 38 e3 ff ff    	mov    -0x1cc8(%rbp),%edx
    7f01bb4027ff:	23 c2                	and    %edx,%eax
    7f01bb402801:	8b b5 30 fc ff ff    	mov    -0x3d0(%rbp),%esi
    7f01bb402807:	ff c6                	inc    %esi
    7f01bb402809:	89 b5 d8 e1 ff ff    	mov    %esi,-0x1e28(%rbp)
    7f01bb40280f:	85 d2                	test   %edx,%edx
    7f01bb402811:	0f 94 c2             	sete   %dl
    7f01bb402814:	0f b6 d2             	movzbl %dl,%edx
    7f01bb402817:	23 ca                	and    %edx,%ecx
    7f01bb402819:	89 8d d0 e1 ff ff    	mov    %ecx,-0x1e30(%rbp)
    7f01bb40281f:	8b 8d 30 fc ff ff    	mov    -0x3d0(%rbp),%ecx
    7f01bb402825:	ff c9                	dec    %ecx
    7f01bb402827:	89 8d c8 e1 ff ff    	mov    %ecx,-0x1e38(%rbp)
    7f01bb40282d:	85 c0                	test   %eax,%eax
    7f01bb40282f:	0f 84 11 00 00 00    	je     0x7f01bb402846
    7f01bb402835:	8b 85 d8 e1 ff ff    	mov    -0x1e28(%rbp),%eax
    7f01bb40283b:	89 85 c0 e1 ff ff    	mov    %eax,-0x1e40(%rbp)
    7f01bb402841:	e9 2b 00 00 00       	jmpq   0x7f01bb402871
    7f01bb402846:	8b 85 d0 e1 ff ff    	mov    -0x1e30(%rbp),%eax
    7f01bb40284c:	85 c0                	test   %eax,%eax
    7f01bb40284e:	0f 84 11 00 00 00    	je     0x7f01bb402865
    7f01bb402854:	8b 85 c8 e1 ff ff    	mov    -0x1e38(%rbp),%eax
    7f01bb40285a:	89 85 c0 e1 ff ff    	mov    %eax,-0x1e40(%rbp)
    7f01bb402860:	e9 0c 00 00 00       	jmpq   0x7f01bb402871
    7f01bb402865:	8b 85 30 fc ff ff    	mov    -0x3d0(%rbp),%eax
    7f01bb40286b:	89 85 c0 e1 ff ff    	mov    %eax,-0x1e40(%rbp)
    7f01bb402871:	8b 85 68 e2 ff ff    	mov    -0x1d98(%rbp),%eax
    7f01bb402877:	25 e0 ff 0f 00       	and    $0xfffe0,%eax
    7f01bb40287c:	89 85 b8 e1 ff ff    	mov    %eax,-0x1e48(%rbp)
    7f01bb402882:	8b 85 10 e2 ff ff    	mov    -0x1df0(%rbp),%eax
    7f01bb402888:	85 c0                	test   %eax,%eax
    7f01bb40288a:	0f 84 11 00 00 00    	je     0x7f01bb4028a1
    7f01bb402890:	8b 85 b8 e1 ff ff    	mov    -0x1e48(%rbp),%eax
    7f01bb402896:	89 85 b0 e1 ff ff    	mov    %eax,-0x1e50(%rbp)
    7f01bb40289c:	e9 0c 00 00 00       	jmpq   0x7f01bb4028ad
    7f01bb4028a1:	8b 85 28 fc ff ff    	mov    -0x3d8(%rbp),%eax
    7f01bb4028a7:	89 85 b0 e1 ff ff    	mov    %eax,-0x1e50(%rbp)
    7f01bb4028ad:	8b 85 d8 e3 ff ff    	mov    -0x1c28(%rbp),%eax
    7f01bb4028b3:	83 f8 02             	cmp    $0x2,%eax
    7f01bb4028b6:	0f 94 c0             	sete   %al
    7f01bb4028b9:	0f b6 c0             	movzbl %al,%eax
    7f01bb4028bc:	8b 8d 30 e4 ff ff    	mov    -0x1bd0(%rbp),%ecx
    7f01bb4028c2:	23 c1                	and    %ecx,%eax
    7f01bb4028c4:	48 8b 8d 20 fc ff ff 	mov    -0x3e0(%rbp),%rcx
    7f01bb4028cb:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7f01bb4028d0:	48 23 ca             	and    %rdx,%rcx
    7f01bb4028d3:	89 8d a8 e1 ff ff    	mov    %ecx,-0x1e58(%rbp)
    7f01bb4028d9:	ff c1                	inc    %ecx
    7f01bb4028db:	89 8d a0 e1 ff ff    	mov    %ecx,-0x1e60(%rbp)
    7f01bb4028e1:	89 85 98 e1 ff ff    	mov    %eax,-0x1e68(%rbp)
    7f01bb4028e7:	85 c0                	test   %eax,%eax
    7f01bb4028e9:	0f 84 11 00 00 00    	je     0x7f01bb402900
    7f01bb4028ef:	8b 85 a8 e1 ff ff    	mov    -0x1e58(%rbp),%eax
    7f01bb4028f5:	89 85 90 e1 ff ff    	mov    %eax,-0x1e70(%rbp)
    7f01bb4028fb:	e9 0c 00 00 00       	jmpq   0x7f01bb40290c
    7f01bb402900:	8b 85 a0 e1 ff ff    	mov    -0x1e60(%rbp),%eax
    7f01bb402906:	89 85 90 e1 ff ff    	mov    %eax,-0x1e70(%rbp)
    7f01bb40290c:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402912:	83 f8 01             	cmp    $0x1,%eax
    7f01bb402915:	0f 85 11 00 00 00    	jne    0x7f01bb40292c
    7f01bb40291b:	8b 85 90 e1 ff ff    	mov    -0x1e70(%rbp),%eax
    7f01bb402921:	89 85 88 e1 ff ff    	mov    %eax,-0x1e78(%rbp)
    7f01bb402927:	e9 2c 00 00 00       	jmpq   0x7f01bb402958
    7f01bb40292c:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402932:	83 f8 02             	cmp    $0x2,%eax
    7f01bb402935:	0f 85 11 00 00 00    	jne    0x7f01bb40294c
    7f01bb40293b:	8b 85 90 e1 ff ff    	mov    -0x1e70(%rbp),%eax
    7f01bb402941:	89 85 88 e1 ff ff    	mov    %eax,-0x1e78(%rbp)
    7f01bb402947:	e9 0c 00 00 00       	jmpq   0x7f01bb402958
    7f01bb40294c:	8b 85 a8 e1 ff ff    	mov    -0x1e58(%rbp),%eax
    7f01bb402952:	89 85 88 e1 ff ff    	mov    %eax,-0x1e78(%rbp)
    7f01bb402958:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
    7f01bb40295f:	48 c1 e8 20          	shr    $0x20,%rax
    7f01bb402963:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
    7f01bb402968:	48 23 c1             	and    %rcx,%rax
    7f01bb40296b:	89 85 80 e1 ff ff    	mov    %eax,-0x1e80(%rbp)
    7f01bb402971:	ff c0                	inc    %eax
    7f01bb402973:	89 85 78 e1 ff ff    	mov    %eax,-0x1e88(%rbp)
    7f01bb402979:	8b 85 98 e1 ff ff    	mov    -0x1e68(%rbp),%eax
    7f01bb40297f:	85 c0                	test   %eax,%eax
    7f01bb402981:	0f 84 11 00 00 00    	je     0x7f01bb402998
    7f01bb402987:	8b 85 80 e1 ff ff    	mov    -0x1e80(%rbp),%eax
    7f01bb40298d:	89 85 70 e1 ff ff    	mov    %eax,-0x1e90(%rbp)
    7f01bb402993:	e9 0c 00 00 00       	jmpq   0x7f01bb4029a4
    7f01bb402998:	8b 85 78 e1 ff ff    	mov    -0x1e88(%rbp),%eax
    7f01bb40299e:	89 85 70 e1 ff ff    	mov    %eax,-0x1e90(%rbp)
    7f01bb4029a4:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb4029aa:	83 f8 03             	cmp    $0x3,%eax
    7f01bb4029ad:	0f 85 11 00 00 00    	jne    0x7f01bb4029c4
    7f01bb4029b3:	8b 85 70 e1 ff ff    	mov    -0x1e90(%rbp),%eax
    7f01bb4029b9:	89 85 68 e1 ff ff    	mov    %eax,-0x1e98(%rbp)
    7f01bb4029bf:	e9 0c 00 00 00       	jmpq   0x7f01bb4029d0
    7f01bb4029c4:	8b 85 80 e1 ff ff    	mov    -0x1e80(%rbp),%eax
    7f01bb4029ca:	89 85 68 e1 ff ff    	mov    %eax,-0x1e98(%rbp)
    7f01bb4029d0:	8b 85 88 e1 ff ff    	mov    -0x1e78(%rbp),%eax
    7f01bb4029d6:	8b c0                	mov    %eax,%eax
    7f01bb4029d8:	8b 8d 68 e1 ff ff    	mov    -0x1e98(%rbp),%ecx
    7f01bb4029de:	8b c9                	mov    %ecx,%ecx
    7f01bb4029e0:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb4029e4:	48 0b c1             	or     %rcx,%rax
    7f01bb4029e7:	48 89 85 60 e1 ff ff 	mov    %rax,-0x1ea0(%rbp)
    7f01bb4029ee:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb4029f4:	85 c0                	test   %eax,%eax
    7f01bb4029f6:	0f 85 11 00 00 00    	jne    0x7f01bb402a0d
    7f01bb4029fc:	8b 85 f8 fb ff ff    	mov    -0x408(%rbp),%eax
    7f01bb402a02:	89 85 58 e1 ff ff    	mov    %eax,-0x1ea8(%rbp)
    7f01bb402a08:	e9 0a 00 00 00       	jmpq   0x7f01bb402a17
    7f01bb402a0d:	c7 85 58 e1 ff ff 00 	movl   $0x0,-0x1ea8(%rbp)
    7f01bb402a14:	00 00 00 
    7f01bb402a17:	8b 85 88 e2 ff ff    	mov    -0x1d78(%rbp),%eax
    7f01bb402a1d:	85 c0                	test   %eax,%eax
    7f01bb402a1f:	0f 84 0f 00 00 00    	je     0x7f01bb402a34
    7f01bb402a25:	c7 85 50 e1 ff ff 01 	movl   $0x1,-0x1eb0(%rbp)
    7f01bb402a2c:	00 00 00 
    7f01bb402a2f:	e9 0c 00 00 00       	jmpq   0x7f01bb402a40
    7f01bb402a34:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402a3a:	89 85 50 e1 ff ff    	mov    %eax,-0x1eb0(%rbp)
    7f01bb402a40:	8b 85 98 e1 ff ff    	mov    -0x1e68(%rbp),%eax
    7f01bb402a46:	85 c0                	test   %eax,%eax
    7f01bb402a48:	0f 84 0f 00 00 00    	je     0x7f01bb402a5d
    7f01bb402a4e:	c7 85 48 e1 ff ff 02 	movl   $0x2,-0x1eb8(%rbp)
    7f01bb402a55:	00 00 00 
    7f01bb402a58:	e9 0c 00 00 00       	jmpq   0x7f01bb402a69
    7f01bb402a5d:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402a63:	89 85 48 e1 ff ff    	mov    %eax,-0x1eb8(%rbp)
    7f01bb402a69:	8b 85 98 e1 ff ff    	mov    -0x1e68(%rbp),%eax
    7f01bb402a6f:	85 c0                	test   %eax,%eax
    7f01bb402a71:	0f 84 0f 00 00 00    	je     0x7f01bb402a86
    7f01bb402a77:	c7 85 40 e1 ff ff 03 	movl   $0x3,-0x1ec0(%rbp)
    7f01bb402a7e:	00 00 00 
    7f01bb402a81:	e9 0c 00 00 00       	jmpq   0x7f01bb402a92
    7f01bb402a86:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402a8c:	89 85 40 e1 ff ff    	mov    %eax,-0x1ec0(%rbp)
    7f01bb402a92:	8b 85 98 e1 ff ff    	mov    -0x1e68(%rbp),%eax
    7f01bb402a98:	85 c0                	test   %eax,%eax
    7f01bb402a9a:	0f 84 0f 00 00 00    	je     0x7f01bb402aaf
    7f01bb402aa0:	c7 85 38 e1 ff ff 00 	movl   $0x0,-0x1ec8(%rbp)
    7f01bb402aa7:	00 00 00 
    7f01bb402aaa:	e9 0c 00 00 00       	jmpq   0x7f01bb402abb
    7f01bb402aaf:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402ab5:	89 85 38 e1 ff ff    	mov    %eax,-0x1ec8(%rbp)
    7f01bb402abb:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402ac1:	85 c0                	test   %eax,%eax
    7f01bb402ac3:	0f 85 11 00 00 00    	jne    0x7f01bb402ada
    7f01bb402ac9:	8b 85 50 e1 ff ff    	mov    -0x1eb0(%rbp),%eax
    7f01bb402acf:	89 85 30 e1 ff ff    	mov    %eax,-0x1ed0(%rbp)
    7f01bb402ad5:	e9 6c 00 00 00       	jmpq   0x7f01bb402b46
    7f01bb402ada:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402ae0:	83 f8 01             	cmp    $0x1,%eax
    7f01bb402ae3:	0f 85 11 00 00 00    	jne    0x7f01bb402afa
    7f01bb402ae9:	8b 85 48 e1 ff ff    	mov    -0x1eb8(%rbp),%eax
    7f01bb402aef:	89 85 30 e1 ff ff    	mov    %eax,-0x1ed0(%rbp)
    7f01bb402af5:	e9 4c 00 00 00       	jmpq   0x7f01bb402b46
    7f01bb402afa:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402b00:	83 f8 02             	cmp    $0x2,%eax
    7f01bb402b03:	0f 85 11 00 00 00    	jne    0x7f01bb402b1a
    7f01bb402b09:	8b 85 40 e1 ff ff    	mov    -0x1ec0(%rbp),%eax
    7f01bb402b0f:	89 85 30 e1 ff ff    	mov    %eax,-0x1ed0(%rbp)
    7f01bb402b15:	e9 2c 00 00 00       	jmpq   0x7f01bb402b46
    7f01bb402b1a:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402b20:	83 f8 03             	cmp    $0x3,%eax
    7f01bb402b23:	0f 85 11 00 00 00    	jne    0x7f01bb402b3a
    7f01bb402b29:	8b 85 38 e1 ff ff    	mov    -0x1ec8(%rbp),%eax
    7f01bb402b2f:	89 85 30 e1 ff ff    	mov    %eax,-0x1ed0(%rbp)
    7f01bb402b35:	e9 0c 00 00 00       	jmpq   0x7f01bb402b46
    7f01bb402b3a:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb402b40:	89 85 30 e1 ff ff    	mov    %eax,-0x1ed0(%rbp)
    7f01bb402b46:	8b 85 48 fc ff ff    	mov    -0x3b8(%rbp),%eax
    7f01bb402b4c:	23 85 18 ec ff ff    	and    -0x13e8(%rbp),%eax
    7f01bb402b52:	33 c9                	xor    %ecx,%ecx
    7f01bb402b54:	3b c8                	cmp    %eax,%ecx
    7f01bb402b56:	0f 95 c0             	setne  %al
    7f01bb402b59:	0f b6 c0             	movzbl %al,%eax
    7f01bb402b5c:	89 85 28 e1 ff ff    	mov    %eax,-0x1ed8(%rbp)
    7f01bb402b62:	8b 8d 20 ec ff ff    	mov    -0x13e0(%rbp),%ecx
    7f01bb402b68:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb402b6b:	0f 93 c0             	setae  %al
    7f01bb402b6e:	0f b6 c0             	movzbl %al,%eax
    7f01bb402b71:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb402b74:	0f 92 c1             	setb   %cl
    7f01bb402b77:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb402b7a:	23 c1                	and    %ecx,%eax
    7f01bb402b7c:	85 c0                	test   %eax,%eax
    7f01bb402b7e:	0f 85 0a 00 00 00    	jne    0x7f01bb402b8e
    7f01bb402b84:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402b89:	e9 90 73 00 00       	jmpq   0x7f01bb409f1e
    7f01bb402b8e:	49 8b c7             	mov    %r15,%rax
    7f01bb402b91:	48 05 88 30 00 00    	add    $0x3088,%rax
    7f01bb402b97:	8b 8d 20 ec ff ff    	mov    -0x13e0(%rbp),%ecx
    7f01bb402b9d:	8b c9                	mov    %ecx,%ecx
    7f01bb402b9f:	8b 04 88             	mov    (%rax,%rcx,4),%eax
    7f01bb402ba2:	89 85 20 e1 ff ff    	mov    %eax,-0x1ee0(%rbp)
    7f01bb402ba8:	8b 85 28 e1 ff ff    	mov    -0x1ed8(%rbp),%eax
    7f01bb402bae:	85 c0                	test   %eax,%eax
    7f01bb402bb0:	0f 84 11 00 00 00    	je     0x7f01bb402bc7
    7f01bb402bb6:	8b 85 20 e1 ff ff    	mov    -0x1ee0(%rbp),%eax
    7f01bb402bbc:	89 85 18 e1 ff ff    	mov    %eax,-0x1ee8(%rbp)
    7f01bb402bc2:	e9 0a 00 00 00       	jmpq   0x7f01bb402bd1
    7f01bb402bc7:	c7 85 18 e1 ff ff 00 	movl   $0x0,-0x1ee8(%rbp)
    7f01bb402bce:	00 00 00 
    7f01bb402bd1:	8b 85 38 f5 ff ff    	mov    -0xac8(%rbp),%eax
    7f01bb402bd7:	8b 8d 08 f5 ff ff    	mov    -0xaf8(%rbp),%ecx
    7f01bb402bdd:	0b c1                	or     %ecx,%eax
    7f01bb402bdf:	8b 95 00 f5 ff ff    	mov    -0xb00(%rbp),%edx
    7f01bb402be5:	f7 d2                	not    %edx
    7f01bb402be7:	83 e2 01             	and    $0x1,%edx
    7f01bb402bea:	23 c2                	and    %edx,%eax
    7f01bb402bec:	8b b5 18 f5 ff ff    	mov    -0xae8(%rbp),%esi
    7f01bb402bf2:	8b bd f8 f4 ff ff    	mov    -0xb08(%rbp),%edi
    7f01bb402bf8:	0b f7                	or     %edi,%esi
    7f01bb402bfa:	23 d6                	and    %esi,%edx
    7f01bb402bfc:	8b b5 10 f5 ff ff    	mov    -0xaf0(%rbp),%esi
    7f01bb402c02:	0b fe                	or     %esi,%edi
    7f01bb402c04:	f7 d1                	not    %ecx
    7f01bb402c06:	83 e1 01             	and    $0x1,%ecx
    7f01bb402c09:	23 f9                	and    %ecx,%edi
    7f01bb402c0b:	8b 8d f0 fb ff ff    	mov    -0x410(%rbp),%ecx
    7f01bb402c11:	83 e1 01             	and    $0x1,%ecx
    7f01bb402c14:	d1 e0                	shl    %eax
    7f01bb402c16:	0b c8                	or     %eax,%ecx
    7f01bb402c18:	c1 e2 02             	shl    $0x2,%edx
    7f01bb402c1b:	0b ca                	or     %edx,%ecx
    7f01bb402c1d:	8b 85 f0 fb ff ff    	mov    -0x410(%rbp),%eax
    7f01bb402c23:	c1 e8 03             	shr    $0x3,%eax
    7f01bb402c26:	83 e0 03             	and    $0x3,%eax
    7f01bb402c29:	c1 e0 03             	shl    $0x3,%eax
    7f01bb402c2c:	0b c8                	or     %eax,%ecx
    7f01bb402c2e:	c1 e7 05             	shl    $0x5,%edi
    7f01bb402c31:	0b cf                	or     %edi,%ecx
    7f01bb402c33:	8b 85 f0 fb ff ff    	mov    -0x410(%rbp),%eax
    7f01bb402c39:	c1 e8 06             	shr    $0x6,%eax
    7f01bb402c3c:	83 e0 07             	and    $0x7,%eax
    7f01bb402c3f:	c1 e0 06             	shl    $0x6,%eax
    7f01bb402c42:	0b c8                	or     %eax,%ecx
    7f01bb402c44:	89 8d 10 e1 ff ff    	mov    %ecx,-0x1ef0(%rbp)
    7f01bb402c4a:	8b 85 18 e4 ff ff    	mov    -0x1be8(%rbp),%eax
    7f01bb402c50:	8b 8d f0 e3 ff ff    	mov    -0x1c10(%rbp),%ecx
    7f01bb402c56:	0b c1                	or     %ecx,%eax
    7f01bb402c58:	8b 95 e8 e3 ff ff    	mov    -0x1c18(%rbp),%edx
    7f01bb402c5e:	f7 d2                	not    %edx
    7f01bb402c60:	83 e2 01             	and    $0x1,%edx
    7f01bb402c63:	23 c2                	and    %edx,%eax
    7f01bb402c65:	8b b5 00 e4 ff ff    	mov    -0x1c00(%rbp),%esi
    7f01bb402c6b:	8b bd e0 e3 ff ff    	mov    -0x1c20(%rbp),%edi
    7f01bb402c71:	0b f7                	or     %edi,%esi
    7f01bb402c73:	23 d6                	and    %esi,%edx
    7f01bb402c75:	8b b5 f8 e3 ff ff    	mov    -0x1c08(%rbp),%esi
    7f01bb402c7b:	0b fe                	or     %esi,%edi
    7f01bb402c7d:	f7 d1                	not    %ecx
    7f01bb402c7f:	83 e1 01             	and    $0x1,%ecx
    7f01bb402c82:	23 f9                	and    %ecx,%edi
    7f01bb402c84:	8b 8d e8 fb ff ff    	mov    -0x418(%rbp),%ecx
    7f01bb402c8a:	83 e1 01             	and    $0x1,%ecx
    7f01bb402c8d:	d1 e0                	shl    %eax
    7f01bb402c8f:	0b c8                	or     %eax,%ecx
    7f01bb402c91:	c1 e2 02             	shl    $0x2,%edx
    7f01bb402c94:	0b ca                	or     %edx,%ecx
    7f01bb402c96:	8b 85 e8 fb ff ff    	mov    -0x418(%rbp),%eax
    7f01bb402c9c:	c1 e8 03             	shr    $0x3,%eax
    7f01bb402c9f:	83 e0 03             	and    $0x3,%eax
    7f01bb402ca2:	c1 e0 03             	shl    $0x3,%eax
    7f01bb402ca5:	0b c8                	or     %eax,%ecx
    7f01bb402ca7:	c1 e7 05             	shl    $0x5,%edi
    7f01bb402caa:	0b cf                	or     %edi,%ecx
    7f01bb402cac:	8b 85 e8 fb ff ff    	mov    -0x418(%rbp),%eax
    7f01bb402cb2:	c1 e8 06             	shr    $0x6,%eax
    7f01bb402cb5:	83 e0 07             	and    $0x7,%eax
    7f01bb402cb8:	c1 e0 06             	shl    $0x6,%eax
    7f01bb402cbb:	0b c8                	or     %eax,%ecx
    7f01bb402cbd:	89 8d 08 e1 ff ff    	mov    %ecx,-0x1ef8(%rbp)
    7f01bb402cc3:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb402cc9:	83 f8 02             	cmp    $0x2,%eax
    7f01bb402ccc:	0f 85 0f 00 00 00    	jne    0x7f01bb402ce1
    7f01bb402cd2:	c7 85 00 e1 ff ff 01 	movl   $0x1,-0x1f00(%rbp)
    7f01bb402cd9:	00 00 00 
    7f01bb402cdc:	e9 0a 00 00 00       	jmpq   0x7f01bb402ceb
    7f01bb402ce1:	c7 85 00 e1 ff ff 00 	movl   $0x0,-0x1f00(%rbp)
    7f01bb402ce8:	00 00 00 
    7f01bb402ceb:	8b 85 00 e1 ff ff    	mov    -0x1f00(%rbp),%eax
    7f01bb402cf1:	85 c0                	test   %eax,%eax
    7f01bb402cf3:	0f 84 11 00 00 00    	je     0x7f01bb402d0a
    7f01bb402cf9:	8b 85 d8 fb ff ff    	mov    -0x428(%rbp),%eax
    7f01bb402cff:	89 85 f8 e0 ff ff    	mov    %eax,-0x1f08(%rbp)
    7f01bb402d05:	e9 0a 00 00 00       	jmpq   0x7f01bb402d14
    7f01bb402d0a:	c7 85 f8 e0 ff ff 00 	movl   $0x0,-0x1f08(%rbp)
    7f01bb402d11:	00 00 00 
    7f01bb402d14:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb402d17:	0f 94 c0             	sete   %al
    7f01bb402d1a:	0f b6 c0             	movzbl %al,%eax
    7f01bb402d1d:	89 85 f0 e0 ff ff    	mov    %eax,-0x1f10(%rbp)
    7f01bb402d23:	23 85 a8 fb ff ff    	and    -0x458(%rbp),%eax
    7f01bb402d29:	89 85 e8 e0 ff ff    	mov    %eax,-0x1f18(%rbp)
    7f01bb402d2f:	85 c0                	test   %eax,%eax
    7f01bb402d31:	0f 84 11 00 00 00    	je     0x7f01bb402d48
    7f01bb402d37:	8b 85 c0 fb ff ff    	mov    -0x440(%rbp),%eax
    7f01bb402d3d:	89 85 e0 e0 ff ff    	mov    %eax,-0x1f20(%rbp)
    7f01bb402d43:	e9 0a 00 00 00       	jmpq   0x7f01bb402d52
    7f01bb402d48:	c7 85 e0 e0 ff ff 00 	movl   $0x0,-0x1f20(%rbp)
    7f01bb402d4f:	00 00 00 
    7f01bb402d52:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402d57:	8b 8d e0 e0 ff ff    	mov    -0x1f20(%rbp),%ecx
    7f01bb402d5d:	d3 e0                	shl    %cl,%eax
    7f01bb402d5f:	83 e0 03             	and    $0x3,%eax
    7f01bb402d62:	8b 95 e0 fb ff ff    	mov    -0x420(%rbp),%edx
    7f01bb402d68:	23 c2                	and    %edx,%eax
    7f01bb402d6a:	33 d2                	xor    %edx,%edx
    7f01bb402d6c:	3b d0                	cmp    %eax,%edx
    7f01bb402d6e:	0f 95 c0             	setne  %al
    7f01bb402d71:	0f b6 c0             	movzbl %al,%eax
    7f01bb402d74:	89 85 d8 e0 ff ff    	mov    %eax,-0x1f28(%rbp)
    7f01bb402d7a:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb402d7d:	0f 93 c0             	setae  %al
    7f01bb402d80:	0f b6 c0             	movzbl %al,%eax
    7f01bb402d83:	83 f9 02             	cmp    $0x2,%ecx
    7f01bb402d86:	0f 92 c1             	setb   %cl
    7f01bb402d89:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb402d8c:	23 c1                	and    %ecx,%eax
    7f01bb402d8e:	85 c0                	test   %eax,%eax
    7f01bb402d90:	0f 85 0a 00 00 00    	jne    0x7f01bb402da0
    7f01bb402d96:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402d9b:	e9 7e 71 00 00       	jmpq   0x7f01bb409f1e
    7f01bb402da0:	8b 85 e0 e0 ff ff    	mov    -0x1f20(%rbp),%eax
    7f01bb402da6:	6b c0 16             	imul   $0x16,%eax,%eax
    7f01bb402da9:	49 8b 8f 08 31 00 00 	mov    0x3108(%r15),%rcx
    7f01bb402db0:	48 89 8d d0 e0 ff ff 	mov    %rcx,-0x1f30(%rbp)
    7f01bb402db7:	89 85 c8 e0 ff ff    	mov    %eax,-0x1f38(%rbp)
    7f01bb402dbd:	48 8b 85 d0 e0 ff ff 	mov    -0x1f30(%rbp),%rax
    7f01bb402dc4:	8b 8d c8 e0 ff ff    	mov    -0x1f38(%rbp),%ecx
    7f01bb402dca:	48 d3 e8             	shr    %cl,%rax
    7f01bb402dcd:	48 25 ff ff 3f 00    	and    $0x3fffff,%rax
    7f01bb402dd3:	c1 e8 02             	shr    $0x2,%eax
    7f01bb402dd6:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb402ddb:	41 8b 8f 87 4e 00 00 	mov    0x4e87(%r15),%ecx
    7f01bb402de2:	c1 e9 0a             	shr    $0xa,%ecx
    7f01bb402de5:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb402deb:	89 8d c0 e0 ff ff    	mov    %ecx,-0x1f40(%rbp)
    7f01bb402df1:	3b c1                	cmp    %ecx,%eax
    7f01bb402df3:	0f 94 c0             	sete   %al
    7f01bb402df6:	0f b6 c0             	movzbl %al,%eax
    7f01bb402df9:	8b 8d d8 e0 ff ff    	mov    -0x1f28(%rbp),%ecx
    7f01bb402dff:	23 c1                	and    %ecx,%eax
    7f01bb402e01:	89 85 b8 e0 ff ff    	mov    %eax,-0x1f48(%rbp)
    7f01bb402e07:	85 c0                	test   %eax,%eax
    7f01bb402e09:	0f 84 11 00 00 00    	je     0x7f01bb402e20
    7f01bb402e0f:	8b 85 c0 fb ff ff    	mov    -0x440(%rbp),%eax
    7f01bb402e15:	89 85 b0 e0 ff ff    	mov    %eax,-0x1f50(%rbp)
    7f01bb402e1b:	e9 0c 00 00 00       	jmpq   0x7f01bb402e2c
    7f01bb402e20:	8b 85 b0 fb ff ff    	mov    -0x450(%rbp),%eax
    7f01bb402e26:	89 85 b0 e0 ff ff    	mov    %eax,-0x1f50(%rbp)
    7f01bb402e2c:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb402e32:	85 c0                	test   %eax,%eax
    7f01bb402e34:	0f 84 11 00 00 00    	je     0x7f01bb402e4b
    7f01bb402e3a:	8b 85 b0 e0 ff ff    	mov    -0x1f50(%rbp),%eax
    7f01bb402e40:	89 85 a8 e0 ff ff    	mov    %eax,-0x1f58(%rbp)
    7f01bb402e46:	e9 0a 00 00 00       	jmpq   0x7f01bb402e55
    7f01bb402e4b:	c7 85 a8 e0 ff ff 00 	movl   $0x0,-0x1f58(%rbp)
    7f01bb402e52:	00 00 00 
    7f01bb402e55:	85 db                	test   %ebx,%ebx
    7f01bb402e57:	0f 85 11 00 00 00    	jne    0x7f01bb402e6e
    7f01bb402e5d:	8b 85 f8 e0 ff ff    	mov    -0x1f08(%rbp),%eax
    7f01bb402e63:	89 85 a0 e0 ff ff    	mov    %eax,-0x1f60(%rbp)
    7f01bb402e69:	e9 72 00 00 00       	jmpq   0x7f01bb402ee0
    7f01bb402e6e:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb402e71:	0f 85 11 00 00 00    	jne    0x7f01bb402e88
    7f01bb402e77:	8b 85 a8 e0 ff ff    	mov    -0x1f58(%rbp),%eax
    7f01bb402e7d:	89 85 a0 e0 ff ff    	mov    %eax,-0x1f60(%rbp)
    7f01bb402e83:	e9 58 00 00 00       	jmpq   0x7f01bb402ee0
    7f01bb402e88:	83 fb 02             	cmp    $0x2,%ebx
    7f01bb402e8b:	0f 85 11 00 00 00    	jne    0x7f01bb402ea2
    7f01bb402e91:	8b 85 a0 fb ff ff    	mov    -0x460(%rbp),%eax
    7f01bb402e97:	89 85 a0 e0 ff ff    	mov    %eax,-0x1f60(%rbp)
    7f01bb402e9d:	e9 3e 00 00 00       	jmpq   0x7f01bb402ee0
    7f01bb402ea2:	83 fb 03             	cmp    $0x3,%ebx
    7f01bb402ea5:	0f 85 11 00 00 00    	jne    0x7f01bb402ebc
    7f01bb402eab:	8b 85 a0 fb ff ff    	mov    -0x460(%rbp),%eax
    7f01bb402eb1:	89 85 a0 e0 ff ff    	mov    %eax,-0x1f60(%rbp)
    7f01bb402eb7:	e9 24 00 00 00       	jmpq   0x7f01bb402ee0
    7f01bb402ebc:	83 fb 04             	cmp    $0x4,%ebx
    7f01bb402ebf:	0f 85 11 00 00 00    	jne    0x7f01bb402ed6
    7f01bb402ec5:	8b 85 c8 fb ff ff    	mov    -0x438(%rbp),%eax
    7f01bb402ecb:	89 85 a0 e0 ff ff    	mov    %eax,-0x1f60(%rbp)
    7f01bb402ed1:	e9 0a 00 00 00       	jmpq   0x7f01bb402ee0
    7f01bb402ed6:	c7 85 a0 e0 ff ff 00 	movl   $0x0,-0x1f60(%rbp)
    7f01bb402edd:	00 00 00 
    7f01bb402ee0:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402ee5:	8b 8d a0 e0 ff ff    	mov    -0x1f60(%rbp),%ecx
    7f01bb402eeb:	d3 e0                	shl    %cl,%eax
    7f01bb402eed:	83 e0 03             	and    $0x3,%eax
    7f01bb402ef0:	89 85 98 e0 ff ff    	mov    %eax,-0x1f68(%rbp)
    7f01bb402ef6:	8b 95 e0 fb ff ff    	mov    -0x420(%rbp),%edx
    7f01bb402efc:	0b c2                	or     %edx,%eax
    7f01bb402efe:	89 85 90 e0 ff ff    	mov    %eax,-0x1f70(%rbp)
    7f01bb402f04:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb402f07:	0f 93 c0             	setae  %al
    7f01bb402f0a:	0f b6 c0             	movzbl %al,%eax
    7f01bb402f0d:	83 f9 02             	cmp    $0x2,%ecx
    7f01bb402f10:	0f 92 c1             	setb   %cl
    7f01bb402f13:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb402f16:	23 c1                	and    %ecx,%eax
    7f01bb402f18:	85 c0                	test   %eax,%eax
    7f01bb402f1a:	0f 85 0a 00 00 00    	jne    0x7f01bb402f2a
    7f01bb402f20:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb402f25:	e9 f4 6f 00 00       	jmpq   0x7f01bb409f1e
    7f01bb402f2a:	8b 85 a0 e0 ff ff    	mov    -0x1f60(%rbp),%eax
    7f01bb402f30:	6b c0 16             	imul   $0x16,%eax,%eax
    7f01bb402f33:	49 8b 8f 08 31 00 00 	mov    0x3108(%r15),%rcx
    7f01bb402f3a:	48 89 8d 88 e0 ff ff 	mov    %rcx,-0x1f78(%rbp)
    7f01bb402f41:	89 85 80 e0 ff ff    	mov    %eax,-0x1f80(%rbp)
    7f01bb402f47:	48 8b 85 88 e0 ff ff 	mov    -0x1f78(%rbp),%rax
    7f01bb402f4e:	8b 8d 80 e0 ff ff    	mov    -0x1f80(%rbp),%ecx
    7f01bb402f54:	48 d3 e8             	shr    %cl,%rax
    7f01bb402f57:	48 25 ff ff 3f 00    	and    $0x3fffff,%rax
    7f01bb402f5d:	89 85 78 e0 ff ff    	mov    %eax,-0x1f88(%rbp)
    7f01bb402f63:	83 e0 03             	and    $0x3,%eax
    7f01bb402f66:	89 85 70 e0 ff ff    	mov    %eax,-0x1f90(%rbp)
    7f01bb402f6c:	85 c0                	test   %eax,%eax
    7f01bb402f6e:	0f 95 c0             	setne  %al
    7f01bb402f71:	0f b6 c0             	movzbl %al,%eax
    7f01bb402f74:	89 85 68 e0 ff ff    	mov    %eax,-0x1f98(%rbp)
    7f01bb402f7a:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb402f80:	85 c0                	test   %eax,%eax
    7f01bb402f82:	0f 94 c0             	sete   %al
    7f01bb402f85:	0f b6 c0             	movzbl %al,%eax
    7f01bb402f88:	89 85 60 e0 ff ff    	mov    %eax,-0x1fa0(%rbp)
    7f01bb402f8e:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb402f94:	83 f8 01             	cmp    $0x1,%eax
    7f01bb402f97:	0f 85 0f 00 00 00    	jne    0x7f01bb402fac
    7f01bb402f9d:	c7 85 58 e0 ff ff 01 	movl   $0x1,-0x1fa8(%rbp)
    7f01bb402fa4:	00 00 00 
    7f01bb402fa7:	e9 0a 00 00 00       	jmpq   0x7f01bb402fb6
    7f01bb402fac:	c7 85 58 e0 ff ff 00 	movl   $0x0,-0x1fa8(%rbp)
    7f01bb402fb3:	00 00 00 
    7f01bb402fb6:	8b 85 58 e0 ff ff    	mov    -0x1fa8(%rbp),%eax
    7f01bb402fbc:	85 c0                	test   %eax,%eax
    7f01bb402fbe:	0f 94 c0             	sete   %al
    7f01bb402fc1:	0f b6 c0             	movzbl %al,%eax
    7f01bb402fc4:	8b 8d 60 e0 ff ff    	mov    -0x1fa0(%rbp),%ecx
    7f01bb402fca:	23 c1                	and    %ecx,%eax
    7f01bb402fcc:	89 85 50 e0 ff ff    	mov    %eax,-0x1fb0(%rbp)
    7f01bb402fd2:	85 c0                	test   %eax,%eax
    7f01bb402fd4:	0f 84 0f 00 00 00    	je     0x7f01bb402fe9
    7f01bb402fda:	c7 85 48 e0 ff ff 01 	movl   $0x1,-0x1fb8(%rbp)
    7f01bb402fe1:	00 00 00 
    7f01bb402fe4:	e9 0a 00 00 00       	jmpq   0x7f01bb402ff3
    7f01bb402fe9:	c7 85 48 e0 ff ff 00 	movl   $0x0,-0x1fb8(%rbp)
    7f01bb402ff0:	00 00 00 
    7f01bb402ff3:	8b 85 68 e0 ff ff    	mov    -0x1f98(%rbp),%eax
    7f01bb402ff9:	85 c0                	test   %eax,%eax
    7f01bb402ffb:	0f 84 11 00 00 00    	je     0x7f01bb403012
    7f01bb403001:	8b 85 48 e0 ff ff    	mov    -0x1fb8(%rbp),%eax
    7f01bb403007:	89 85 40 e0 ff ff    	mov    %eax,-0x1fc0(%rbp)
    7f01bb40300d:	e9 0a 00 00 00       	jmpq   0x7f01bb40301c
    7f01bb403012:	c7 85 40 e0 ff ff 01 	movl   $0x1,-0x1fc0(%rbp)
    7f01bb403019:	00 00 00 
    7f01bb40301c:	83 fb 04             	cmp    $0x4,%ebx
    7f01bb40301f:	0f 85 11 00 00 00    	jne    0x7f01bb403036
    7f01bb403025:	8b 85 40 e0 ff ff    	mov    -0x1fc0(%rbp),%eax
    7f01bb40302b:	89 85 38 e0 ff ff    	mov    %eax,-0x1fc8(%rbp)
    7f01bb403031:	e9 0a 00 00 00       	jmpq   0x7f01bb403040
    7f01bb403036:	c7 85 38 e0 ff ff 00 	movl   $0x0,-0x1fc8(%rbp)
    7f01bb40303d:	00 00 00 
    7f01bb403040:	8b 85 c8 fb ff ff    	mov    -0x438(%rbp),%eax
    7f01bb403046:	83 f8 01             	cmp    $0x1,%eax
    7f01bb403049:	0f 94 c0             	sete   %al
    7f01bb40304c:	0f b6 c0             	movzbl %al,%eax
    7f01bb40304f:	8b 8d 38 e0 ff ff    	mov    -0x1fc8(%rbp),%ecx
    7f01bb403055:	23 c1                	and    %ecx,%eax
    7f01bb403057:	89 85 30 e0 ff ff    	mov    %eax,-0x1fd0(%rbp)
    7f01bb40305d:	85 c0                	test   %eax,%eax
    7f01bb40305f:	0f 84 0f 00 00 00    	je     0x7f01bb403074
    7f01bb403065:	c7 85 28 e0 ff ff 00 	movl   $0x0,-0x1fd8(%rbp)
    7f01bb40306c:	00 00 00 
    7f01bb40306f:	e9 0c 00 00 00       	jmpq   0x7f01bb403080
    7f01bb403074:	8b 85 e0 fb ff ff    	mov    -0x420(%rbp),%eax
    7f01bb40307a:	89 85 28 e0 ff ff    	mov    %eax,-0x1fd8(%rbp)
    7f01bb403080:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb403086:	85 c0                	test   %eax,%eax
    7f01bb403088:	0f 84 11 00 00 00    	je     0x7f01bb40309f
    7f01bb40308e:	8b 85 90 e0 ff ff    	mov    -0x1f70(%rbp),%eax
    7f01bb403094:	89 85 20 e0 ff ff    	mov    %eax,-0x1fe0(%rbp)
    7f01bb40309a:	e9 0c 00 00 00       	jmpq   0x7f01bb4030ab
    7f01bb40309f:	8b 85 28 e0 ff ff    	mov    -0x1fd8(%rbp),%eax
    7f01bb4030a5:	89 85 20 e0 ff ff    	mov    %eax,-0x1fe0(%rbp)
    7f01bb4030ab:	49 0f b6 87 88 4e 00 	movzbq 0x4e88(%r15),%rax
    7f01bb4030b2:	00 
    7f01bb4030b3:	83 e0 03             	and    $0x3,%eax
    7f01bb4030b6:	89 85 18 e0 ff ff    	mov    %eax,-0x1fe8(%rbp)
    7f01bb4030bc:	8b 8d 70 e0 ff ff    	mov    -0x1f90(%rbp),%ecx
    7f01bb4030c2:	3b c8                	cmp    %eax,%ecx
    7f01bb4030c4:	0f 94 c0             	sete   %al
    7f01bb4030c7:	0f b6 c0             	movzbl %al,%eax
    7f01bb4030ca:	8b 8d 98 e0 ff ff    	mov    -0x1f68(%rbp),%ecx
    7f01bb4030d0:	f7 d1                	not    %ecx
    7f01bb4030d2:	83 e1 03             	and    $0x3,%ecx
    7f01bb4030d5:	8b 95 e0 fb ff ff    	mov    -0x420(%rbp),%edx
    7f01bb4030db:	23 ca                	and    %edx,%ecx
    7f01bb4030dd:	89 8d 10 e0 ff ff    	mov    %ecx,-0x1ff0(%rbp)
    7f01bb4030e3:	89 85 08 e0 ff ff    	mov    %eax,-0x1ff8(%rbp)
    7f01bb4030e9:	85 c0                	test   %eax,%eax
    7f01bb4030eb:	0f 84 11 00 00 00    	je     0x7f01bb403102
    7f01bb4030f1:	8b 85 10 e0 ff ff    	mov    -0x1ff0(%rbp),%eax
    7f01bb4030f7:	89 85 00 e0 ff ff    	mov    %eax,-0x2000(%rbp)
    7f01bb4030fd:	e9 0c 00 00 00       	jmpq   0x7f01bb40310e
    7f01bb403102:	8b 85 28 e0 ff ff    	mov    -0x1fd8(%rbp),%eax
    7f01bb403108:	89 85 00 e0 ff ff    	mov    %eax,-0x2000(%rbp)
    7f01bb40310e:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb403111:	0f 85 11 00 00 00    	jne    0x7f01bb403128
    7f01bb403117:	8b 85 20 e0 ff ff    	mov    -0x1fe0(%rbp),%eax
    7f01bb40311d:	89 85 f8 df ff ff    	mov    %eax,-0x2008(%rbp)
    7f01bb403123:	e9 26 00 00 00       	jmpq   0x7f01bb40314e
    7f01bb403128:	83 fb 02             	cmp    $0x2,%ebx
    7f01bb40312b:	0f 85 11 00 00 00    	jne    0x7f01bb403142
    7f01bb403131:	8b 85 00 e0 ff ff    	mov    -0x2000(%rbp),%eax
    7f01bb403137:	89 85 f8 df ff ff    	mov    %eax,-0x2008(%rbp)
    7f01bb40313d:	e9 0c 00 00 00       	jmpq   0x7f01bb40314e
    7f01bb403142:	8b 85 28 e0 ff ff    	mov    -0x1fd8(%rbp),%eax
    7f01bb403148:	89 85 f8 df ff ff    	mov    %eax,-0x2008(%rbp)
    7f01bb40314e:	8b 85 e8 e0 ff ff    	mov    -0x1f18(%rbp),%eax
    7f01bb403154:	85 c0                	test   %eax,%eax
    7f01bb403156:	0f 84 11 00 00 00    	je     0x7f01bb40316d
    7f01bb40315c:	8b 85 a0 e0 ff ff    	mov    -0x1f60(%rbp),%eax
    7f01bb403162:	89 85 f0 df ff ff    	mov    %eax,-0x2010(%rbp)
    7f01bb403168:	e9 0c 00 00 00       	jmpq   0x7f01bb403179
    7f01bb40316d:	8b 85 d8 fb ff ff    	mov    -0x428(%rbp),%eax
    7f01bb403173:	89 85 f0 df ff ff    	mov    %eax,-0x2010(%rbp)
    7f01bb403179:	8b 85 e8 e0 ff ff    	mov    -0x1f18(%rbp),%eax
    7f01bb40317f:	85 c0                	test   %eax,%eax
    7f01bb403181:	0f 84 11 00 00 00    	je     0x7f01bb403198
    7f01bb403187:	8b 85 c0 e0 ff ff    	mov    -0x1f40(%rbp),%eax
    7f01bb40318d:	89 85 e8 df ff ff    	mov    %eax,-0x2018(%rbp)
    7f01bb403193:	e9 0c 00 00 00       	jmpq   0x7f01bb4031a4
    7f01bb403198:	8b 85 d0 fb ff ff    	mov    -0x430(%rbp),%eax
    7f01bb40319e:	89 85 e8 df ff ff    	mov    %eax,-0x2018(%rbp)
    7f01bb4031a4:	8b 85 c8 fb ff ff    	mov    -0x438(%rbp),%eax
    7f01bb4031aa:	ff c0                	inc    %eax
    7f01bb4031ac:	83 e0 01             	and    $0x1,%eax
    7f01bb4031af:	89 85 e0 df ff ff    	mov    %eax,-0x2020(%rbp)
    7f01bb4031b5:	8b 85 38 e0 ff ff    	mov    -0x1fc8(%rbp),%eax
    7f01bb4031bb:	85 c0                	test   %eax,%eax
    7f01bb4031bd:	0f 84 11 00 00 00    	je     0x7f01bb4031d4
    7f01bb4031c3:	8b 85 e0 df ff ff    	mov    -0x2020(%rbp),%eax
    7f01bb4031c9:	89 85 d8 df ff ff    	mov    %eax,-0x2028(%rbp)
    7f01bb4031cf:	e9 0c 00 00 00       	jmpq   0x7f01bb4031e0
    7f01bb4031d4:	8b 85 c8 fb ff ff    	mov    -0x438(%rbp),%eax
    7f01bb4031da:	89 85 d8 df ff ff    	mov    %eax,-0x2028(%rbp)
    7f01bb4031e0:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb4031e6:	83 f8 03             	cmp    $0x3,%eax
    7f01bb4031e9:	0f 85 0f 00 00 00    	jne    0x7f01bb4031fe
    7f01bb4031ef:	c7 85 d0 df ff ff 01 	movl   $0x1,-0x2030(%rbp)
    7f01bb4031f6:	00 00 00 
    7f01bb4031f9:	e9 0a 00 00 00       	jmpq   0x7f01bb403208
    7f01bb4031fe:	c7 85 d0 df ff ff 00 	movl   $0x0,-0x2030(%rbp)
    7f01bb403205:	00 00 00 
    7f01bb403208:	8b 85 d0 df ff ff    	mov    -0x2030(%rbp),%eax
    7f01bb40320e:	85 c0                	test   %eax,%eax
    7f01bb403210:	0f 84 0f 00 00 00    	je     0x7f01bb403225
    7f01bb403216:	c7 85 c8 df ff ff 00 	movl   $0x0,-0x2038(%rbp)
    7f01bb40321d:	00 00 00 
    7f01bb403220:	e9 0c 00 00 00       	jmpq   0x7f01bb403231
    7f01bb403225:	8b 85 d8 df ff ff    	mov    -0x2028(%rbp),%eax
    7f01bb40322b:	89 85 c8 df ff ff    	mov    %eax,-0x2038(%rbp)
    7f01bb403231:	8b 85 00 e1 ff ff    	mov    -0x1f00(%rbp),%eax
    7f01bb403237:	85 c0                	test   %eax,%eax
    7f01bb403239:	0f 84 11 00 00 00    	je     0x7f01bb403250
    7f01bb40323f:	8b 85 d8 df ff ff    	mov    -0x2028(%rbp),%eax
    7f01bb403245:	89 85 c0 df ff ff    	mov    %eax,-0x2040(%rbp)
    7f01bb40324b:	e9 0c 00 00 00       	jmpq   0x7f01bb40325c
    7f01bb403250:	8b 85 c8 df ff ff    	mov    -0x2038(%rbp),%eax
    7f01bb403256:	89 85 c0 df ff ff    	mov    %eax,-0x2040(%rbp)
    7f01bb40325c:	85 db                	test   %ebx,%ebx
    7f01bb40325e:	0f 85 11 00 00 00    	jne    0x7f01bb403275
    7f01bb403264:	8b 85 c0 df ff ff    	mov    -0x2040(%rbp),%eax
    7f01bb40326a:	89 85 b8 df ff ff    	mov    %eax,-0x2048(%rbp)
    7f01bb403270:	e9 0c 00 00 00       	jmpq   0x7f01bb403281
    7f01bb403275:	8b 85 d8 df ff ff    	mov    -0x2028(%rbp),%eax
    7f01bb40327b:	89 85 b8 df ff ff    	mov    %eax,-0x2048(%rbp)
    7f01bb403281:	8b 85 e0 fb ff ff    	mov    -0x420(%rbp),%eax
    7f01bb403287:	85 c0                	test   %eax,%eax
    7f01bb403289:	0f 95 c0             	setne  %al
    7f01bb40328c:	0f b6 c0             	movzbl %al,%eax
    7f01bb40328f:	89 85 b0 df ff ff    	mov    %eax,-0x2050(%rbp)
    7f01bb403295:	41 8b 87 1f 4f 00 00 	mov    0x4f1f(%r15),%eax
    7f01bb40329c:	c1 e8 0a             	shr    $0xa,%eax
    7f01bb40329f:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4032a4:	89 85 a8 df ff ff    	mov    %eax,-0x2058(%rbp)
    7f01bb4032aa:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb4032b0:	83 f8 02             	cmp    $0x2,%eax
    7f01bb4032b3:	0f 85 11 00 00 00    	jne    0x7f01bb4032ca
    7f01bb4032b9:	8b 85 a8 df ff ff    	mov    -0x2058(%rbp),%eax
    7f01bb4032bf:	89 85 a0 df ff ff    	mov    %eax,-0x2060(%rbp)
    7f01bb4032c5:	e9 0a 00 00 00       	jmpq   0x7f01bb4032d4
    7f01bb4032ca:	c7 85 a0 df ff ff 00 	movl   $0x0,-0x2060(%rbp)
    7f01bb4032d1:	00 00 00 
    7f01bb4032d4:	8b 85 a0 df ff ff    	mov    -0x2060(%rbp),%eax
    7f01bb4032da:	3b 85 d0 fb ff ff    	cmp    -0x430(%rbp),%eax
    7f01bb4032e0:	0f 94 c0             	sete   %al
    7f01bb4032e3:	0f b6 c0             	movzbl %al,%eax
    7f01bb4032e6:	8b 8d b0 df ff ff    	mov    -0x2050(%rbp),%ecx
    7f01bb4032ec:	23 c1                	and    %ecx,%eax
    7f01bb4032ee:	89 85 98 df ff ff    	mov    %eax,-0x2068(%rbp)
    7f01bb4032f4:	8b 85 70 fb ff ff    	mov    -0x490(%rbp),%eax
    7f01bb4032fa:	83 e0 03             	and    $0x3,%eax
    7f01bb4032fd:	89 85 90 df ff ff    	mov    %eax,-0x2070(%rbp)
    7f01bb403303:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb403309:	83 f8 02             	cmp    $0x2,%eax
    7f01bb40330c:	0f 85 11 00 00 00    	jne    0x7f01bb403323
    7f01bb403312:	8b 85 90 df ff ff    	mov    -0x2070(%rbp),%eax
    7f01bb403318:	89 85 88 df ff ff    	mov    %eax,-0x2078(%rbp)
    7f01bb40331e:	e9 0a 00 00 00       	jmpq   0x7f01bb40332d
    7f01bb403323:	c7 85 88 df ff ff 00 	movl   $0x0,-0x2078(%rbp)
    7f01bb40332a:	00 00 00 
    7f01bb40332d:	8b 85 70 e0 ff ff    	mov    -0x1f90(%rbp),%eax
    7f01bb403333:	23 85 88 df ff ff    	and    -0x2078(%rbp),%eax
    7f01bb403339:	33 c9                	xor    %ecx,%ecx
    7f01bb40333b:	3b c8                	cmp    %eax,%ecx
    7f01bb40333d:	0f 95 c0             	setne  %al
    7f01bb403340:	0f b6 c0             	movzbl %al,%eax
    7f01bb403343:	8b 8d 98 df ff ff    	mov    -0x2068(%rbp),%ecx
    7f01bb403349:	23 c1                	and    %ecx,%eax
    7f01bb40334b:	89 85 80 df ff ff    	mov    %eax,-0x2080(%rbp)
    7f01bb403351:	8b 8d 00 e1 ff ff    	mov    -0x1f00(%rbp),%ecx
    7f01bb403357:	23 c1                	and    %ecx,%eax
    7f01bb403359:	89 85 78 df ff ff    	mov    %eax,-0x2088(%rbp)
    7f01bb40335f:	85 c0                	test   %eax,%eax
    7f01bb403361:	0f 84 0f 00 00 00    	je     0x7f01bb403376
    7f01bb403367:	c7 85 70 df ff ff 01 	movl   $0x1,-0x2090(%rbp)
    7f01bb40336e:	00 00 00 
    7f01bb403371:	e9 0a 00 00 00       	jmpq   0x7f01bb403380
    7f01bb403376:	c7 85 70 df ff ff 00 	movl   $0x0,-0x2090(%rbp)
    7f01bb40337d:	00 00 00 
    7f01bb403380:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb403386:	85 c0                	test   %eax,%eax
    7f01bb403388:	0f 84 0f 00 00 00    	je     0x7f01bb40339d
    7f01bb40338e:	c7 85 68 df ff ff 01 	movl   $0x1,-0x2098(%rbp)
    7f01bb403395:	00 00 00 
    7f01bb403398:	e9 0a 00 00 00       	jmpq   0x7f01bb4033a7
    7f01bb40339d:	c7 85 68 df ff ff 00 	movl   $0x0,-0x2098(%rbp)
    7f01bb4033a4:	00 00 00 
    7f01bb4033a7:	85 db                	test   %ebx,%ebx
    7f01bb4033a9:	0f 85 11 00 00 00    	jne    0x7f01bb4033c0
    7f01bb4033af:	8b 85 70 df ff ff    	mov    -0x2090(%rbp),%eax
    7f01bb4033b5:	89 85 60 df ff ff    	mov    %eax,-0x20a0(%rbp)
    7f01bb4033bb:	e9 24 00 00 00       	jmpq   0x7f01bb4033e4
    7f01bb4033c0:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb4033c3:	0f 85 11 00 00 00    	jne    0x7f01bb4033da
    7f01bb4033c9:	8b 85 68 df ff ff    	mov    -0x2098(%rbp),%eax
    7f01bb4033cf:	89 85 60 df ff ff    	mov    %eax,-0x20a0(%rbp)
    7f01bb4033d5:	e9 0a 00 00 00       	jmpq   0x7f01bb4033e4
    7f01bb4033da:	c7 85 60 df ff ff 00 	movl   $0x0,-0x20a0(%rbp)
    7f01bb4033e1:	00 00 00 
    7f01bb4033e4:	8b 8d a0 e0 ff ff    	mov    -0x1f60(%rbp),%ecx
    7f01bb4033ea:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb4033ed:	0f 93 c0             	setae  %al
    7f01bb4033f0:	0f b6 c0             	movzbl %al,%eax
    7f01bb4033f3:	83 f9 02             	cmp    $0x2,%ecx
    7f01bb4033f6:	0f 92 c1             	setb   %cl
    7f01bb4033f9:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb4033fc:	23 c1                	and    %ecx,%eax
    7f01bb4033fe:	85 c0                	test   %eax,%eax
    7f01bb403400:	0f 85 0a 00 00 00    	jne    0x7f01bb403410
    7f01bb403406:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb40340b:	e9 0e 6b 00 00       	jmpq   0x7f01bb409f1e
    7f01bb403410:	49 8b c7             	mov    %r15,%rax
    7f01bb403413:	48 05 d8 31 00 00    	add    $0x31d8,%rax
    7f01bb403419:	49 8b cf             	mov    %r15,%rcx
    7f01bb40341c:	48 81 c1 58 32 00 00 	add    $0x3258,%rcx
    7f01bb403423:	8b 95 a0 e0 ff ff    	mov    -0x1f60(%rbp),%edx
    7f01bb403429:	c1 e2 06             	shl    $0x6,%edx
    7f01bb40342c:	8b d2                	mov    %edx,%edx
    7f01bb40342e:	48 03 c2             	add    %rdx,%rax
    7f01bb403431:	0f 10 00             	movups (%rax),%xmm0
    7f01bb403434:	0f 11 01             	movups %xmm0,(%rcx)
    7f01bb403437:	0f 10 40 10          	movups 0x10(%rax),%xmm0
    7f01bb40343b:	0f 11 41 10          	movups %xmm0,0x10(%rcx)
    7f01bb40343f:	0f 10 40 20          	movups 0x20(%rax),%xmm0
    7f01bb403443:	0f 11 41 20          	movups %xmm0,0x20(%rcx)
    7f01bb403447:	0f 10 40 30          	movups 0x30(%rax),%xmm0
    7f01bb40344b:	0f 11 41 30          	movups %xmm0,0x30(%rcx)
    7f01bb40344f:	49 8b c7             	mov    %r15,%rax
    7f01bb403452:	48 05 10 31 00 00    	add    $0x3110,%rax
    7f01bb403458:	49 8b cf             	mov    %r15,%rcx
    7f01bb40345b:	48 81 c1 20 4f 00 00 	add    $0x4f20,%rcx
    7f01bb403462:	41 b8 00 02 00 00    	mov    $0x200,%r8d
    7f01bb403468:	48 89 8d 58 df ff ff 	mov    %rcx,-0x20a8(%rbp)
    7f01bb40346f:	b9 16 00 00 00       	mov    $0x16,%ecx
    7f01bb403474:	48 8b 95 58 df ff ff 	mov    -0x20a8(%rbp),%rdx
    7f01bb40347b:	33 f6                	xor    %esi,%esi
    7f01bb40347d:	48 8b f8             	mov    %rax,%rdi
    7f01bb403480:	48 89 85 50 df ff ff 	mov    %rax,-0x20b0(%rbp)
    7f01bb403487:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb40348c:	e8 97 94 8d ff       	callq  0x7f01bacdc928
    7f01bb403491:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb403497:	83 f8 02             	cmp    $0x2,%eax
    7f01bb40349a:	0f 85 36 00 00 00    	jne    0x7f01bb4034d6
    7f01bb4034a0:	49 8b c7             	mov    %r15,%rax
    7f01bb4034a3:	48 05 50 31 00 00    	add    $0x3150,%rax
    7f01bb4034a9:	49 8b cf             	mov    %r15,%rcx
    7f01bb4034ac:	48 81 c1 10 31 00 00 	add    $0x3110,%rcx
    7f01bb4034b3:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4034b6:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4034b9:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4034bd:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4034c1:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4034c5:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4034c9:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4034cd:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4034d1:	e9 31 00 00 00       	jmpq   0x7f01bb403507
    7f01bb4034d6:	49 8b c7             	mov    %r15,%rax
    7f01bb4034d9:	48 05 50 31 00 00    	add    $0x3150,%rax
    7f01bb4034df:	49 8b cf             	mov    %r15,%rcx
    7f01bb4034e2:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb4034e9:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4034ec:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4034ef:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4034f3:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4034f7:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4034fb:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4034ff:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb403503:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb403507:	49 8b 87 58 32 00 00 	mov    0x3258(%r15),%rax
    7f01bb40350e:	49 8b 8f 50 31 00 00 	mov    0x3150(%r15),%rcx
    7f01bb403515:	48 0b c1             	or     %rcx,%rax
    7f01bb403518:	49 89 87 98 32 00 00 	mov    %rax,0x3298(%r15)
    7f01bb40351f:	49 8b 87 60 32 00 00 	mov    0x3260(%r15),%rax
    7f01bb403526:	49 8b 8f 58 31 00 00 	mov    0x3158(%r15),%rcx
    7f01bb40352d:	48 0b c1             	or     %rcx,%rax
    7f01bb403530:	49 89 87 a0 32 00 00 	mov    %rax,0x32a0(%r15)
    7f01bb403537:	49 8b 87 68 32 00 00 	mov    0x3268(%r15),%rax
    7f01bb40353e:	49 8b 8f 60 31 00 00 	mov    0x3160(%r15),%rcx
    7f01bb403545:	48 0b c1             	or     %rcx,%rax
    7f01bb403548:	49 89 87 a8 32 00 00 	mov    %rax,0x32a8(%r15)
    7f01bb40354f:	49 8b 87 70 32 00 00 	mov    0x3270(%r15),%rax
    7f01bb403556:	49 8b 8f 68 31 00 00 	mov    0x3168(%r15),%rcx
    7f01bb40355d:	48 0b c1             	or     %rcx,%rax
    7f01bb403560:	49 89 87 b0 32 00 00 	mov    %rax,0x32b0(%r15)
    7f01bb403567:	49 8b 87 78 32 00 00 	mov    0x3278(%r15),%rax
    7f01bb40356e:	49 8b 8f 70 31 00 00 	mov    0x3170(%r15),%rcx
    7f01bb403575:	48 0b c1             	or     %rcx,%rax
    7f01bb403578:	49 89 87 b8 32 00 00 	mov    %rax,0x32b8(%r15)
    7f01bb40357f:	49 8b 87 80 32 00 00 	mov    0x3280(%r15),%rax
    7f01bb403586:	49 8b 8f 78 31 00 00 	mov    0x3178(%r15),%rcx
    7f01bb40358d:	48 0b c1             	or     %rcx,%rax
    7f01bb403590:	49 89 87 c0 32 00 00 	mov    %rax,0x32c0(%r15)
    7f01bb403597:	49 8b 87 88 32 00 00 	mov    0x3288(%r15),%rax
    7f01bb40359e:	49 8b 8f 80 31 00 00 	mov    0x3180(%r15),%rcx
    7f01bb4035a5:	48 0b c1             	or     %rcx,%rax
    7f01bb4035a8:	49 89 87 c8 32 00 00 	mov    %rax,0x32c8(%r15)
    7f01bb4035af:	49 8b 87 90 32 00 00 	mov    0x3290(%r15),%rax
    7f01bb4035b6:	49 8b 8f 88 31 00 00 	mov    0x3188(%r15),%rcx
    7f01bb4035bd:	48 0b c1             	or     %rcx,%rax
    7f01bb4035c0:	49 89 87 d0 32 00 00 	mov    %rax,0x32d0(%r15)
    7f01bb4035c7:	8b 85 78 df ff ff    	mov    -0x2088(%rbp),%eax
    7f01bb4035cd:	85 c0                	test   %eax,%eax
    7f01bb4035cf:	0f 84 36 00 00 00    	je     0x7f01bb40360b
    7f01bb4035d5:	49 8b c7             	mov    %r15,%rax
    7f01bb4035d8:	48 05 d8 32 00 00    	add    $0x32d8,%rax
    7f01bb4035de:	49 8b cf             	mov    %r15,%rcx
    7f01bb4035e1:	48 81 c1 98 32 00 00 	add    $0x3298,%rcx
    7f01bb4035e8:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4035eb:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4035ee:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4035f2:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4035f6:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4035fa:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4035fe:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb403602:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb403606:	e9 31 00 00 00       	jmpq   0x7f01bb40363c
    7f01bb40360b:	49 8b c7             	mov    %r15,%rax
    7f01bb40360e:	48 05 d8 32 00 00    	add    $0x32d8,%rax
    7f01bb403614:	49 8b cf             	mov    %r15,%rcx
    7f01bb403617:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb40361e:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb403621:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb403624:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb403628:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40362c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb403630:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb403634:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb403638:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40363c:	49 8b c7             	mov    %r15,%rax
    7f01bb40363f:	48 05 18 33 00 00    	add    $0x3318,%rax
    7f01bb403645:	49 8b cf             	mov    %r15,%rcx
    7f01bb403648:	48 81 c1 88 4e 00 00 	add    $0x4e88,%rcx
    7f01bb40364f:	41 b8 00 02 00 00    	mov    $0x200,%r8d
    7f01bb403655:	48 89 8d 48 df ff ff 	mov    %rcx,-0x20b8(%rbp)
    7f01bb40365c:	b9 16 00 00 00       	mov    $0x16,%ecx
    7f01bb403661:	48 8b 95 48 df ff ff 	mov    -0x20b8(%rbp),%rdx
    7f01bb403668:	33 f6                	xor    %esi,%esi
    7f01bb40366a:	48 8b f8             	mov    %rax,%rdi
    7f01bb40366d:	48 89 85 40 df ff ff 	mov    %rax,-0x20c0(%rbp)
    7f01bb403674:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403679:	e8 aa 92 8d ff       	callq  0x7f01bacdc928
    7f01bb40367e:	49 8b 87 58 32 00 00 	mov    0x3258(%r15),%rax
    7f01bb403685:	49 8b 8f 18 33 00 00 	mov    0x3318(%r15),%rcx
    7f01bb40368c:	48 0b c1             	or     %rcx,%rax
    7f01bb40368f:	49 89 87 58 33 00 00 	mov    %rax,0x3358(%r15)
    7f01bb403696:	49 8b 87 60 32 00 00 	mov    0x3260(%r15),%rax
    7f01bb40369d:	49 8b 8f 20 33 00 00 	mov    0x3320(%r15),%rcx
    7f01bb4036a4:	48 0b c1             	or     %rcx,%rax
    7f01bb4036a7:	49 89 87 60 33 00 00 	mov    %rax,0x3360(%r15)
    7f01bb4036ae:	49 8b 87 68 32 00 00 	mov    0x3268(%r15),%rax
    7f01bb4036b5:	49 8b 8f 28 33 00 00 	mov    0x3328(%r15),%rcx
    7f01bb4036bc:	48 0b c1             	or     %rcx,%rax
    7f01bb4036bf:	49 89 87 68 33 00 00 	mov    %rax,0x3368(%r15)
    7f01bb4036c6:	49 8b 87 70 32 00 00 	mov    0x3270(%r15),%rax
    7f01bb4036cd:	49 8b 8f 30 33 00 00 	mov    0x3330(%r15),%rcx
    7f01bb4036d4:	48 0b c1             	or     %rcx,%rax
    7f01bb4036d7:	49 89 87 70 33 00 00 	mov    %rax,0x3370(%r15)
    7f01bb4036de:	49 8b 87 78 32 00 00 	mov    0x3278(%r15),%rax
    7f01bb4036e5:	49 8b 8f 38 33 00 00 	mov    0x3338(%r15),%rcx
    7f01bb4036ec:	48 0b c1             	or     %rcx,%rax
    7f01bb4036ef:	49 89 87 78 33 00 00 	mov    %rax,0x3378(%r15)
    7f01bb4036f6:	49 8b 87 80 32 00 00 	mov    0x3280(%r15),%rax
    7f01bb4036fd:	49 8b 8f 40 33 00 00 	mov    0x3340(%r15),%rcx
    7f01bb403704:	48 0b c1             	or     %rcx,%rax
    7f01bb403707:	49 89 87 80 33 00 00 	mov    %rax,0x3380(%r15)
    7f01bb40370e:	49 8b 87 88 32 00 00 	mov    0x3288(%r15),%rax
    7f01bb403715:	49 8b 8f 48 33 00 00 	mov    0x3348(%r15),%rcx
    7f01bb40371c:	48 0b c1             	or     %rcx,%rax
    7f01bb40371f:	49 89 87 88 33 00 00 	mov    %rax,0x3388(%r15)
    7f01bb403726:	49 8b 87 90 32 00 00 	mov    0x3290(%r15),%rax
    7f01bb40372d:	49 8b 8f 50 33 00 00 	mov    0x3350(%r15),%rcx
    7f01bb403734:	48 0b c1             	or     %rcx,%rax
    7f01bb403737:	49 89 87 90 33 00 00 	mov    %rax,0x3390(%r15)
    7f01bb40373e:	8b 85 b8 e0 ff ff    	mov    -0x1f48(%rbp),%eax
    7f01bb403744:	85 c0                	test   %eax,%eax
    7f01bb403746:	0f 84 36 00 00 00    	je     0x7f01bb403782
    7f01bb40374c:	49 8b c7             	mov    %r15,%rax
    7f01bb40374f:	48 05 98 33 00 00    	add    $0x3398,%rax
    7f01bb403755:	49 8b cf             	mov    %r15,%rcx
    7f01bb403758:	48 81 c1 58 33 00 00 	add    $0x3358,%rcx
    7f01bb40375f:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb403762:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb403765:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb403769:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40376d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb403771:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb403775:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb403779:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40377d:	e9 31 00 00 00       	jmpq   0x7f01bb4037b3
    7f01bb403782:	49 8b c7             	mov    %r15,%rax
    7f01bb403785:	48 05 98 33 00 00    	add    $0x3398,%rax
    7f01bb40378b:	49 8b cf             	mov    %r15,%rcx
    7f01bb40378e:	48 81 c1 18 33 00 00 	add    $0x3318,%rcx
    7f01bb403795:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb403798:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40379b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40379f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4037a3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4037a7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4037ab:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4037af:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4037b3:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb4037b9:	85 c0                	test   %eax,%eax
    7f01bb4037bb:	0f 84 36 00 00 00    	je     0x7f01bb4037f7
    7f01bb4037c1:	49 8b c7             	mov    %r15,%rax
    7f01bb4037c4:	48 05 d8 33 00 00    	add    $0x33d8,%rax
    7f01bb4037ca:	49 8b cf             	mov    %r15,%rcx
    7f01bb4037cd:	48 81 c1 98 33 00 00 	add    $0x3398,%rcx
    7f01bb4037d4:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4037d7:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4037da:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4037de:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4037e2:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4037e6:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4037ea:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4037ee:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4037f2:	e9 31 00 00 00       	jmpq   0x7f01bb403828
    7f01bb4037f7:	49 8b c7             	mov    %r15,%rax
    7f01bb4037fa:	48 05 d8 33 00 00    	add    $0x33d8,%rax
    7f01bb403800:	49 8b cf             	mov    %r15,%rcx
    7f01bb403803:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb40380a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40380d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb403810:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb403814:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb403818:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40381c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb403820:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb403824:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb403828:	85 db                	test   %ebx,%ebx
    7f01bb40382a:	0f 85 36 00 00 00    	jne    0x7f01bb403866
    7f01bb403830:	49 8b c7             	mov    %r15,%rax
    7f01bb403833:	48 05 18 34 00 00    	add    $0x3418,%rax
    7f01bb403839:	49 8b cf             	mov    %r15,%rcx
    7f01bb40383c:	48 81 c1 d8 32 00 00 	add    $0x32d8,%rcx
    7f01bb403843:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb403846:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb403849:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40384d:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb403851:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb403855:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb403859:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40385d:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb403861:	e9 70 00 00 00       	jmpq   0x7f01bb4038d6
    7f01bb403866:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb403869:	0f 85 36 00 00 00    	jne    0x7f01bb4038a5
    7f01bb40386f:	49 8b c7             	mov    %r15,%rax
    7f01bb403872:	48 05 18 34 00 00    	add    $0x3418,%rax
    7f01bb403878:	49 8b cf             	mov    %r15,%rcx
    7f01bb40387b:	48 81 c1 d8 33 00 00 	add    $0x33d8,%rcx
    7f01bb403882:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb403885:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb403888:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40388c:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb403890:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb403894:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb403898:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40389c:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4038a0:	e9 31 00 00 00       	jmpq   0x7f01bb4038d6
    7f01bb4038a5:	49 8b c7             	mov    %r15,%rax
    7f01bb4038a8:	48 05 18 34 00 00    	add    $0x3418,%rax
    7f01bb4038ae:	49 8b cf             	mov    %r15,%rcx
    7f01bb4038b1:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb4038b8:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4038bb:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4038be:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4038c2:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4038c6:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4038ca:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4038ce:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4038d2:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4038d6:	8b 85 70 e0 ff ff    	mov    -0x1f90(%rbp),%eax
    7f01bb4038dc:	23 85 18 e0 ff ff    	and    -0x1fe8(%rbp),%eax
    7f01bb4038e2:	85 c0                	test   %eax,%eax
    7f01bb4038e4:	0f 95 c0             	setne  %al
    7f01bb4038e7:	0f b6 c0             	movzbl %al,%eax
    7f01bb4038ea:	89 85 38 df ff ff    	mov    %eax,-0x20c8(%rbp)
    7f01bb4038f0:	85 c0                	test   %eax,%eax
    7f01bb4038f2:	0f 84 0f 00 00 00    	je     0x7f01bb403907
    7f01bb4038f8:	c7 85 30 df ff ff 01 	movl   $0x1,-0x20d0(%rbp)
    7f01bb4038ff:	00 00 00 
    7f01bb403902:	e9 0a 00 00 00       	jmpq   0x7f01bb403911
    7f01bb403907:	c7 85 30 df ff ff 00 	movl   $0x0,-0x20d0(%rbp)
    7f01bb40390e:	00 00 00 
    7f01bb403911:	8b 85 08 e0 ff ff    	mov    -0x1ff8(%rbp),%eax
    7f01bb403917:	85 c0                	test   %eax,%eax
    7f01bb403919:	0f 84 0f 00 00 00    	je     0x7f01bb40392e
    7f01bb40391f:	c7 85 28 df ff ff 01 	movl   $0x1,-0x20d8(%rbp)
    7f01bb403926:	00 00 00 
    7f01bb403929:	e9 0c 00 00 00       	jmpq   0x7f01bb40393a
    7f01bb40392e:	8b 85 30 df ff ff    	mov    -0x20d0(%rbp),%eax
    7f01bb403934:	89 85 28 df ff ff    	mov    %eax,-0x20d8(%rbp)
    7f01bb40393a:	85 db                	test   %ebx,%ebx
    7f01bb40393c:	0f 85 11 00 00 00    	jne    0x7f01bb403953
    7f01bb403942:	8b 85 70 df ff ff    	mov    -0x2090(%rbp),%eax
    7f01bb403948:	89 85 20 df ff ff    	mov    %eax,-0x20e0(%rbp)
    7f01bb40394e:	e9 3e 00 00 00       	jmpq   0x7f01bb403991
    7f01bb403953:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb403956:	0f 85 11 00 00 00    	jne    0x7f01bb40396d
    7f01bb40395c:	8b 85 68 df ff ff    	mov    -0x2098(%rbp),%eax
    7f01bb403962:	89 85 20 df ff ff    	mov    %eax,-0x20e0(%rbp)
    7f01bb403968:	e9 24 00 00 00       	jmpq   0x7f01bb403991
    7f01bb40396d:	83 fb 02             	cmp    $0x2,%ebx
    7f01bb403970:	0f 85 11 00 00 00    	jne    0x7f01bb403987
    7f01bb403976:	8b 85 28 df ff ff    	mov    -0x20d8(%rbp),%eax
    7f01bb40397c:	89 85 20 df ff ff    	mov    %eax,-0x20e0(%rbp)
    7f01bb403982:	e9 0a 00 00 00       	jmpq   0x7f01bb403991
    7f01bb403987:	c7 85 20 df ff ff 00 	movl   $0x0,-0x20e0(%rbp)
    7f01bb40398e:	00 00 00 
    7f01bb403991:	8b 85 70 e0 ff ff    	mov    -0x1f90(%rbp),%eax
    7f01bb403997:	0b 85 88 df ff ff    	or     -0x2078(%rbp),%eax
    7f01bb40399d:	8b 8d 78 e0 ff ff    	mov    -0x1f88(%rbp),%ecx
    7f01bb4039a3:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb4039a6:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb4039ac:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb4039af:	0b c1                	or     %ecx,%eax
    7f01bb4039b1:	89 85 18 df ff ff    	mov    %eax,-0x20e8(%rbp)
    7f01bb4039b7:	8b 85 78 df ff ff    	mov    -0x2088(%rbp),%eax
    7f01bb4039bd:	85 c0                	test   %eax,%eax
    7f01bb4039bf:	0f 84 11 00 00 00    	je     0x7f01bb4039d6
    7f01bb4039c5:	8b 85 18 df ff ff    	mov    -0x20e8(%rbp),%eax
    7f01bb4039cb:	89 85 10 df ff ff    	mov    %eax,-0x20f0(%rbp)
    7f01bb4039d1:	e9 0a 00 00 00       	jmpq   0x7f01bb4039e0
    7f01bb4039d6:	c7 85 10 df ff ff 00 	movl   $0x0,-0x20f0(%rbp)
    7f01bb4039dd:	00 00 00 
    7f01bb4039e0:	8b 85 70 e0 ff ff    	mov    -0x1f90(%rbp),%eax
    7f01bb4039e6:	0b 85 18 e0 ff ff    	or     -0x1fe8(%rbp),%eax
    7f01bb4039ec:	8b 8d 78 e0 ff ff    	mov    -0x1f88(%rbp),%ecx
    7f01bb4039f2:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb4039f5:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb4039fb:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb4039fe:	0b c1                	or     %ecx,%eax
    7f01bb403a00:	89 85 08 df ff ff    	mov    %eax,-0x20f8(%rbp)
    7f01bb403a06:	41 8b 87 87 4e 00 00 	mov    0x4e87(%r15),%eax
    7f01bb403a0d:	c1 e8 08             	shr    $0x8,%eax
    7f01bb403a10:	25 ff ff 3f 00       	and    $0x3fffff,%eax
    7f01bb403a15:	89 85 00 df ff ff    	mov    %eax,-0x2100(%rbp)
    7f01bb403a1b:	8b 85 b8 e0 ff ff    	mov    -0x1f48(%rbp),%eax
    7f01bb403a21:	85 c0                	test   %eax,%eax
    7f01bb403a23:	0f 84 11 00 00 00    	je     0x7f01bb403a3a
    7f01bb403a29:	8b 85 08 df ff ff    	mov    -0x20f8(%rbp),%eax
    7f01bb403a2f:	89 85 f8 de ff ff    	mov    %eax,-0x2108(%rbp)
    7f01bb403a35:	e9 0c 00 00 00       	jmpq   0x7f01bb403a46
    7f01bb403a3a:	8b 85 00 df ff ff    	mov    -0x2100(%rbp),%eax
    7f01bb403a40:	89 85 f8 de ff ff    	mov    %eax,-0x2108(%rbp)
    7f01bb403a46:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb403a4c:	85 c0                	test   %eax,%eax
    7f01bb403a4e:	0f 84 11 00 00 00    	je     0x7f01bb403a65
    7f01bb403a54:	8b 85 f8 de ff ff    	mov    -0x2108(%rbp),%eax
    7f01bb403a5a:	89 85 f0 de ff ff    	mov    %eax,-0x2110(%rbp)
    7f01bb403a60:	e9 0a 00 00 00       	jmpq   0x7f01bb403a6f
    7f01bb403a65:	c7 85 f0 de ff ff 00 	movl   $0x0,-0x2110(%rbp)
    7f01bb403a6c:	00 00 00 
    7f01bb403a6f:	8b 85 18 e0 ff ff    	mov    -0x1fe8(%rbp),%eax
    7f01bb403a75:	f7 d0                	not    %eax
    7f01bb403a77:	83 e0 03             	and    $0x3,%eax
    7f01bb403a7a:	8b 8d 70 e0 ff ff    	mov    -0x1f90(%rbp),%ecx
    7f01bb403a80:	23 c1                	and    %ecx,%eax
    7f01bb403a82:	8b 8d 78 e0 ff ff    	mov    -0x1f88(%rbp),%ecx
    7f01bb403a88:	c1 e9 02             	shr    $0x2,%ecx
    7f01bb403a8b:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb403a91:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb403a94:	0b c1                	or     %ecx,%eax
    7f01bb403a96:	89 85 e8 de ff ff    	mov    %eax,-0x2118(%rbp)
    7f01bb403a9c:	8b 85 38 df ff ff    	mov    -0x20c8(%rbp),%eax
    7f01bb403aa2:	85 c0                	test   %eax,%eax
    7f01bb403aa4:	0f 84 11 00 00 00    	je     0x7f01bb403abb
    7f01bb403aaa:	8b 85 e8 de ff ff    	mov    -0x2118(%rbp),%eax
    7f01bb403ab0:	89 85 e0 de ff ff    	mov    %eax,-0x2120(%rbp)
    7f01bb403ab6:	e9 0a 00 00 00       	jmpq   0x7f01bb403ac5
    7f01bb403abb:	c7 85 e0 de ff ff 00 	movl   $0x0,-0x2120(%rbp)
    7f01bb403ac2:	00 00 00 
    7f01bb403ac5:	8b 85 08 e0 ff ff    	mov    -0x1ff8(%rbp),%eax
    7f01bb403acb:	85 c0                	test   %eax,%eax
    7f01bb403acd:	0f 84 0f 00 00 00    	je     0x7f01bb403ae2
    7f01bb403ad3:	c7 85 d8 de ff ff 00 	movl   $0x0,-0x2128(%rbp)
    7f01bb403ada:	00 00 00 
    7f01bb403add:	e9 0c 00 00 00       	jmpq   0x7f01bb403aee
    7f01bb403ae2:	8b 85 e0 de ff ff    	mov    -0x2120(%rbp),%eax
    7f01bb403ae8:	89 85 d8 de ff ff    	mov    %eax,-0x2128(%rbp)
    7f01bb403aee:	85 db                	test   %ebx,%ebx
    7f01bb403af0:	0f 85 11 00 00 00    	jne    0x7f01bb403b07
    7f01bb403af6:	8b 85 10 df ff ff    	mov    -0x20f0(%rbp),%eax
    7f01bb403afc:	89 85 d0 de ff ff    	mov    %eax,-0x2130(%rbp)
    7f01bb403b02:	e9 3e 00 00 00       	jmpq   0x7f01bb403b45
    7f01bb403b07:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb403b0a:	0f 85 11 00 00 00    	jne    0x7f01bb403b21
    7f01bb403b10:	8b 85 f0 de ff ff    	mov    -0x2110(%rbp),%eax
    7f01bb403b16:	89 85 d0 de ff ff    	mov    %eax,-0x2130(%rbp)
    7f01bb403b1c:	e9 24 00 00 00       	jmpq   0x7f01bb403b45
    7f01bb403b21:	83 fb 02             	cmp    $0x2,%ebx
    7f01bb403b24:	0f 85 11 00 00 00    	jne    0x7f01bb403b3b
    7f01bb403b2a:	8b 85 d8 de ff ff    	mov    -0x2128(%rbp),%eax
    7f01bb403b30:	89 85 d0 de ff ff    	mov    %eax,-0x2130(%rbp)
    7f01bb403b36:	e9 0a 00 00 00       	jmpq   0x7f01bb403b45
    7f01bb403b3b:	c7 85 d0 de ff ff 00 	movl   $0x0,-0x2130(%rbp)
    7f01bb403b42:	00 00 00 
    7f01bb403b45:	8b 85 30 e0 ff ff    	mov    -0x1fd0(%rbp),%eax
    7f01bb403b4b:	85 c0                	test   %eax,%eax
    7f01bb403b4d:	0f 84 0f 00 00 00    	je     0x7f01bb403b62
    7f01bb403b53:	c7 85 c8 de ff ff 00 	movl   $0x0,-0x2138(%rbp)
    7f01bb403b5a:	00 00 00 
    7f01bb403b5d:	e9 08 00 00 00       	jmpq   0x7f01bb403b6a
    7f01bb403b62:	8b c3                	mov    %ebx,%eax
    7f01bb403b64:	89 85 c8 de ff ff    	mov    %eax,-0x2138(%rbp)
    7f01bb403b6a:	8b 85 80 df ff ff    	mov    -0x2080(%rbp),%eax
    7f01bb403b70:	85 c0                	test   %eax,%eax
    7f01bb403b72:	0f 84 11 00 00 00    	je     0x7f01bb403b89
    7f01bb403b78:	8b 85 c8 de ff ff    	mov    -0x2138(%rbp),%eax
    7f01bb403b7e:	89 85 c0 de ff ff    	mov    %eax,-0x2140(%rbp)
    7f01bb403b84:	e9 0a 00 00 00       	jmpq   0x7f01bb403b93
    7f01bb403b89:	c7 85 c0 de ff ff 01 	movl   $0x1,-0x2140(%rbp)
    7f01bb403b90:	00 00 00 
    7f01bb403b93:	8b 85 d0 df ff ff    	mov    -0x2030(%rbp),%eax
    7f01bb403b99:	85 c0                	test   %eax,%eax
    7f01bb403b9b:	0f 84 0f 00 00 00    	je     0x7f01bb403bb0
    7f01bb403ba1:	c7 85 b8 de ff ff 04 	movl   $0x4,-0x2148(%rbp)
    7f01bb403ba8:	00 00 00 
    7f01bb403bab:	e9 0c 00 00 00       	jmpq   0x7f01bb403bbc
    7f01bb403bb0:	8b 85 c8 de ff ff    	mov    -0x2138(%rbp),%eax
    7f01bb403bb6:	89 85 b8 de ff ff    	mov    %eax,-0x2148(%rbp)
    7f01bb403bbc:	8b 85 00 e1 ff ff    	mov    -0x1f00(%rbp),%eax
    7f01bb403bc2:	85 c0                	test   %eax,%eax
    7f01bb403bc4:	0f 84 11 00 00 00    	je     0x7f01bb403bdb
    7f01bb403bca:	8b 85 c0 de ff ff    	mov    -0x2140(%rbp),%eax
    7f01bb403bd0:	89 85 b0 de ff ff    	mov    %eax,-0x2150(%rbp)
    7f01bb403bd6:	e9 0c 00 00 00       	jmpq   0x7f01bb403be7
    7f01bb403bdb:	8b 85 b8 de ff ff    	mov    -0x2148(%rbp),%eax
    7f01bb403be1:	89 85 b0 de ff ff    	mov    %eax,-0x2150(%rbp)
    7f01bb403be7:	8b 85 a0 e0 ff ff    	mov    -0x1f60(%rbp),%eax
    7f01bb403bed:	3b 85 b8 fb ff ff    	cmp    -0x448(%rbp),%eax
    7f01bb403bf3:	0f 95 c0             	setne  %al
    7f01bb403bf6:	0f b6 c0             	movzbl %al,%eax
    7f01bb403bf9:	89 85 a8 de ff ff    	mov    %eax,-0x2158(%rbp)
    7f01bb403bff:	85 c0                	test   %eax,%eax
    7f01bb403c01:	0f 84 0f 00 00 00    	je     0x7f01bb403c16
    7f01bb403c07:	c7 85 a0 de ff ff 02 	movl   $0x2,-0x2160(%rbp)
    7f01bb403c0e:	00 00 00 
    7f01bb403c11:	e9 0a 00 00 00       	jmpq   0x7f01bb403c20
    7f01bb403c16:	c7 85 a0 de ff ff 00 	movl   $0x0,-0x2160(%rbp)
    7f01bb403c1d:	00 00 00 
    7f01bb403c20:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb403c26:	85 c0                	test   %eax,%eax
    7f01bb403c28:	0f 84 11 00 00 00    	je     0x7f01bb403c3f
    7f01bb403c2e:	8b 85 a0 de ff ff    	mov    -0x2160(%rbp),%eax
    7f01bb403c34:	89 85 98 de ff ff    	mov    %eax,-0x2168(%rbp)
    7f01bb403c3a:	e9 0c 00 00 00       	jmpq   0x7f01bb403c4b
    7f01bb403c3f:	8b 85 c8 de ff ff    	mov    -0x2138(%rbp),%eax
    7f01bb403c45:	89 85 98 de ff ff    	mov    %eax,-0x2168(%rbp)
    7f01bb403c4b:	8b 85 08 e0 ff ff    	mov    -0x1ff8(%rbp),%eax
    7f01bb403c51:	85 c0                	test   %eax,%eax
    7f01bb403c53:	0f 84 0f 00 00 00    	je     0x7f01bb403c68
    7f01bb403c59:	c7 85 90 de ff ff 03 	movl   $0x3,-0x2170(%rbp)
    7f01bb403c60:	00 00 00 
    7f01bb403c63:	e9 0a 00 00 00       	jmpq   0x7f01bb403c72
    7f01bb403c68:	c7 85 90 de ff ff 00 	movl   $0x0,-0x2170(%rbp)
    7f01bb403c6f:	00 00 00 
    7f01bb403c72:	8b 85 50 e0 ff ff    	mov    -0x1fb0(%rbp),%eax
    7f01bb403c78:	85 c0                	test   %eax,%eax
    7f01bb403c7a:	0f 84 0f 00 00 00    	je     0x7f01bb403c8f
    7f01bb403c80:	c7 85 88 de ff ff 00 	movl   $0x0,-0x2178(%rbp)
    7f01bb403c87:	00 00 00 
    7f01bb403c8a:	e9 0c 00 00 00       	jmpq   0x7f01bb403c9b
    7f01bb403c8f:	8b 85 c8 de ff ff    	mov    -0x2138(%rbp),%eax
    7f01bb403c95:	89 85 88 de ff ff    	mov    %eax,-0x2178(%rbp)
    7f01bb403c9b:	85 db                	test   %ebx,%ebx
    7f01bb403c9d:	0f 85 11 00 00 00    	jne    0x7f01bb403cb4
    7f01bb403ca3:	8b 85 b0 de ff ff    	mov    -0x2150(%rbp),%eax
    7f01bb403ca9:	89 85 80 de ff ff    	mov    %eax,-0x2180(%rbp)
    7f01bb403caf:	e9 5a 00 00 00       	jmpq   0x7f01bb403d0e
    7f01bb403cb4:	83 fb 01             	cmp    $0x1,%ebx
    7f01bb403cb7:	0f 85 11 00 00 00    	jne    0x7f01bb403cce
    7f01bb403cbd:	8b 85 98 de ff ff    	mov    -0x2168(%rbp),%eax
    7f01bb403cc3:	89 85 80 de ff ff    	mov    %eax,-0x2180(%rbp)
    7f01bb403cc9:	e9 40 00 00 00       	jmpq   0x7f01bb403d0e
    7f01bb403cce:	83 fb 02             	cmp    $0x2,%ebx
    7f01bb403cd1:	0f 85 11 00 00 00    	jne    0x7f01bb403ce8
    7f01bb403cd7:	8b 85 90 de ff ff    	mov    -0x2170(%rbp),%eax
    7f01bb403cdd:	89 85 80 de ff ff    	mov    %eax,-0x2180(%rbp)
    7f01bb403ce3:	e9 26 00 00 00       	jmpq   0x7f01bb403d0e
    7f01bb403ce8:	83 fb 03             	cmp    $0x3,%ebx
    7f01bb403ceb:	0f 85 11 00 00 00    	jne    0x7f01bb403d02
    7f01bb403cf1:	8b 85 88 de ff ff    	mov    -0x2178(%rbp),%eax
    7f01bb403cf7:	89 85 80 de ff ff    	mov    %eax,-0x2180(%rbp)
    7f01bb403cfd:	e9 0c 00 00 00       	jmpq   0x7f01bb403d0e
    7f01bb403d02:	8b 85 c8 de ff ff    	mov    -0x2138(%rbp),%eax
    7f01bb403d08:	89 85 80 de ff ff    	mov    %eax,-0x2180(%rbp)
    7f01bb403d0e:	49 8b c7             	mov    %r15,%rax
    7f01bb403d11:	48 05 90 31 00 00    	add    $0x3190,%rax
    7f01bb403d17:	8b 8d 88 df ff ff    	mov    -0x2078(%rbp),%ecx
    7f01bb403d1d:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb403d20:	8b c9                	mov    %ecx,%ecx
    7f01bb403d22:	48 c1 e1 00          	shl    $0x0,%rcx
    7f01bb403d26:	49 8b 97 90 31 00 00 	mov    0x3190(%r15),%rdx
    7f01bb403d2d:	48 33 ca             	xor    %rdx,%rcx
    7f01bb403d30:	48 83 e1 03          	and    $0x3,%rcx
    7f01bb403d34:	48 33 d1             	xor    %rcx,%rdx
    7f01bb403d37:	49 89 97 90 31 00 00 	mov    %rdx,0x3190(%r15)
    7f01bb403d3e:	8b 8d a0 df ff ff    	mov    -0x2060(%rbp),%ecx
    7f01bb403d44:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb403d47:	8b c9                	mov    %ecx,%ecx
    7f01bb403d49:	48 c1 e1 02          	shl    $0x2,%rcx
    7f01bb403d4d:	49 8b 97 90 31 00 00 	mov    0x3190(%r15),%rdx
    7f01bb403d54:	48 33 ca             	xor    %rdx,%rcx
    7f01bb403d57:	48 81 e1 fc ff 3f 00 	and    $0x3ffffc,%rcx
    7f01bb403d5e:	48 33 d1             	xor    %rcx,%rdx
    7f01bb403d61:	49 89 97 90 31 00 00 	mov    %rdx,0x3190(%r15)
    7f01bb403d68:	49 8b cf             	mov    %r15,%rcx
    7f01bb403d6b:	48 81 c1 50 31 00 00 	add    $0x3150,%rcx
    7f01bb403d72:	41 b8 00 02 00 00    	mov    $0x200,%r8d
    7f01bb403d78:	48 89 8d 78 de ff ff 	mov    %rcx,-0x2188(%rbp)
    7f01bb403d7f:	33 c9                	xor    %ecx,%ecx
    7f01bb403d81:	48 8b 95 78 de ff ff 	mov    -0x2188(%rbp),%rdx
    7f01bb403d88:	be 16 00 00 00       	mov    $0x16,%esi
    7f01bb403d8d:	48 8b f8             	mov    %rax,%rdi
    7f01bb403d90:	48 89 85 70 de ff ff 	mov    %rax,-0x2190(%rbp)
    7f01bb403d97:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403d9c:	e8 87 8b 8d ff       	callq  0x7f01bacdc928
    7f01bb403da1:	8b 85 80 df ff ff    	mov    -0x2080(%rbp),%eax
    7f01bb403da7:	85 c0                	test   %eax,%eax
    7f01bb403da9:	0f 84 2d 00 00 00    	je     0x7f01bb403ddc
    7f01bb403daf:	49 8b c7             	mov    %r15,%rax
    7f01bb403db2:	48 05 58 34 00 00    	add    $0x3458,%rax
    7f01bb403db8:	49 8b cf             	mov    %r15,%rcx
    7f01bb403dbb:	48 81 c1 88 4e 00 00 	add    $0x4e88,%rcx
    7f01bb403dc2:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403dc5:	48 8b f8             	mov    %rax,%rdi
    7f01bb403dc8:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403dcd:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403dd2:	e8 99 60 97 ff       	callq  0x7f01bad79e70
    7f01bb403dd7:	e9 28 00 00 00       	jmpq   0x7f01bb403e04
    7f01bb403ddc:	49 8b c7             	mov    %r15,%rax
    7f01bb403ddf:	48 05 58 34 00 00    	add    $0x3458,%rax
    7f01bb403de5:	49 8b cf             	mov    %r15,%rcx
    7f01bb403de8:	48 81 c1 90 31 00 00 	add    $0x3190,%rcx
    7f01bb403def:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403df2:	48 8b f8             	mov    %rax,%rdi
    7f01bb403df5:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403dfa:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403dff:	e8 6c 60 97 ff       	callq  0x7f01bad79e70
    7f01bb403e04:	8b 85 d0 df ff ff    	mov    -0x2030(%rbp),%eax
    7f01bb403e0a:	85 c0                	test   %eax,%eax
    7f01bb403e0c:	0f 84 2d 00 00 00    	je     0x7f01bb403e3f
    7f01bb403e12:	49 8b c7             	mov    %r15,%rax
    7f01bb403e15:	48 05 a0 34 00 00    	add    $0x34a0,%rax
    7f01bb403e1b:	49 8b cf             	mov    %r15,%rcx
    7f01bb403e1e:	48 81 c1 90 31 00 00 	add    $0x3190,%rcx
    7f01bb403e25:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403e28:	48 8b f8             	mov    %rax,%rdi
    7f01bb403e2b:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403e30:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403e35:	e8 36 60 97 ff       	callq  0x7f01bad79e70
    7f01bb403e3a:	e9 28 00 00 00       	jmpq   0x7f01bb403e67
    7f01bb403e3f:	49 8b c7             	mov    %r15,%rax
    7f01bb403e42:	48 05 a0 34 00 00    	add    $0x34a0,%rax
    7f01bb403e48:	49 8b cf             	mov    %r15,%rcx
    7f01bb403e4b:	48 81 c1 88 4e 00 00 	add    $0x4e88,%rcx
    7f01bb403e52:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403e55:	48 8b f8             	mov    %rax,%rdi
    7f01bb403e58:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403e5d:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403e62:	e8 09 60 97 ff       	callq  0x7f01bad79e70
    7f01bb403e67:	8b 85 00 e1 ff ff    	mov    -0x1f00(%rbp),%eax
    7f01bb403e6d:	85 c0                	test   %eax,%eax
    7f01bb403e6f:	0f 84 2d 00 00 00    	je     0x7f01bb403ea2
    7f01bb403e75:	49 8b c7             	mov    %r15,%rax
    7f01bb403e78:	48 05 e8 34 00 00    	add    $0x34e8,%rax
    7f01bb403e7e:	49 8b cf             	mov    %r15,%rcx
    7f01bb403e81:	48 81 c1 58 34 00 00 	add    $0x3458,%rcx
    7f01bb403e88:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403e8b:	48 8b f8             	mov    %rax,%rdi
    7f01bb403e8e:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403e93:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403e98:	e8 d3 5f 97 ff       	callq  0x7f01bad79e70
    7f01bb403e9d:	e9 28 00 00 00       	jmpq   0x7f01bb403eca
    7f01bb403ea2:	49 8b c7             	mov    %r15,%rax
    7f01bb403ea5:	48 05 e8 34 00 00    	add    $0x34e8,%rax
    7f01bb403eab:	49 8b cf             	mov    %r15,%rcx
    7f01bb403eae:	48 81 c1 a0 34 00 00 	add    $0x34a0,%rcx
    7f01bb403eb5:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403eb8:	48 8b f8             	mov    %rax,%rdi
    7f01bb403ebb:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403ec0:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403ec5:	e8 a6 5f 97 ff       	callq  0x7f01bad79e70
    7f01bb403eca:	85 db                	test   %ebx,%ebx
    7f01bb403ecc:	0f 85 2d 00 00 00    	jne    0x7f01bb403eff
    7f01bb403ed2:	49 8b c7             	mov    %r15,%rax
    7f01bb403ed5:	48 05 30 35 00 00    	add    $0x3530,%rax
    7f01bb403edb:	49 8b cf             	mov    %r15,%rcx
    7f01bb403ede:	48 81 c1 e8 34 00 00 	add    $0x34e8,%rcx
    7f01bb403ee5:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403ee8:	48 8b f8             	mov    %rax,%rdi
    7f01bb403eeb:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403ef0:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403ef5:	e8 76 5f 97 ff       	callq  0x7f01bad79e70
    7f01bb403efa:	e9 28 00 00 00       	jmpq   0x7f01bb403f27
    7f01bb403eff:	49 8b c7             	mov    %r15,%rax
    7f01bb403f02:	48 05 30 35 00 00    	add    $0x3530,%rax
    7f01bb403f08:	49 8b cf             	mov    %r15,%rcx
    7f01bb403f0b:	48 81 c1 88 4e 00 00 	add    $0x4e88,%rcx
    7f01bb403f12:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403f15:	48 8b f8             	mov    %rax,%rdi
    7f01bb403f18:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403f1d:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403f22:	e8 49 5f 97 ff       	callq  0x7f01bad79e70
    7f01bb403f27:	8b 85 e0 fb ff ff    	mov    -0x420(%rbp),%eax
    7f01bb403f2d:	83 e0 02             	and    $0x2,%eax
    7f01bb403f30:	33 c9                	xor    %ecx,%ecx
    7f01bb403f32:	3b c8                	cmp    %eax,%ecx
    7f01bb403f34:	0f 95 c0             	setne  %al
    7f01bb403f37:	0f b6 c0             	movzbl %al,%eax
    7f01bb403f3a:	89 85 68 de ff ff    	mov    %eax,-0x2198(%rbp)
    7f01bb403f40:	49 8b 87 08 31 00 00 	mov    0x3108(%r15),%rax
    7f01bb403f47:	48 c1 e8 16          	shr    $0x16,%rax
    7f01bb403f4b:	48 25 ff ff 3f 00    	and    $0x3fffff,%rax
    7f01bb403f51:	89 85 60 de ff ff    	mov    %eax,-0x21a0(%rbp)
    7f01bb403f57:	c1 e8 02             	shr    $0x2,%eax
    7f01bb403f5a:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb403f5f:	89 85 58 de ff ff    	mov    %eax,-0x21a8(%rbp)
    7f01bb403f65:	85 db                	test   %ebx,%ebx
    7f01bb403f67:	0f 94 c0             	sete   %al
    7f01bb403f6a:	0f b6 c0             	movzbl %al,%eax
    7f01bb403f6d:	89 85 50 de ff ff    	mov    %eax,-0x21b0(%rbp)
    7f01bb403f73:	85 c0                	test   %eax,%eax
    7f01bb403f75:	0f 84 2d 00 00 00    	je     0x7f01bb403fa8
    7f01bb403f7b:	49 8b c7             	mov    %r15,%rax
    7f01bb403f7e:	48 05 78 35 00 00    	add    $0x3578,%rax
    7f01bb403f84:	49 8b cf             	mov    %r15,%rcx
    7f01bb403f87:	48 81 c1 90 31 00 00 	add    $0x3190,%rcx
    7f01bb403f8e:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403f91:	48 8b f8             	mov    %rax,%rdi
    7f01bb403f94:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403f99:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403f9e:	e8 cd 5e 97 ff       	callq  0x7f01bad79e70
    7f01bb403fa3:	e9 28 00 00 00       	jmpq   0x7f01bb403fd0
    7f01bb403fa8:	49 8b c7             	mov    %r15,%rax
    7f01bb403fab:	48 05 78 35 00 00    	add    $0x3578,%rax
    7f01bb403fb1:	49 8b cf             	mov    %r15,%rcx
    7f01bb403fb4:	48 81 c1 88 4e 00 00 	add    $0x4e88,%rcx
    7f01bb403fbb:	48 8b f1             	mov    %rcx,%rsi
    7f01bb403fbe:	48 8b f8             	mov    %rax,%rdi
    7f01bb403fc1:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb403fc6:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb403fcb:	e8 a0 5e 97 ff       	callq  0x7f01bad79e70
    7f01bb403fd0:	41 8b 87 77 35 00 00 	mov    0x3577(%r15),%eax
    7f01bb403fd7:	c1 e8 0a             	shr    $0xa,%eax
    7f01bb403fda:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb403fdf:	8b 8d 58 de ff ff    	mov    -0x21a8(%rbp),%ecx
    7f01bb403fe5:	3b c8                	cmp    %eax,%ecx
    7f01bb403fe7:	0f 94 c0             	sete   %al
    7f01bb403fea:	0f b6 c0             	movzbl %al,%eax
    7f01bb403fed:	8b 8d 68 de ff ff    	mov    -0x2198(%rbp),%ecx
    7f01bb403ff3:	23 c1                	and    %ecx,%eax
    7f01bb403ff5:	85 c0                	test   %eax,%eax
    7f01bb403ff7:	0f 84 0f 00 00 00    	je     0x7f01bb40400c
    7f01bb403ffd:	c7 85 48 de ff ff 01 	movl   $0x1,-0x21b8(%rbp)
    7f01bb404004:	00 00 00 
    7f01bb404007:	e9 0a 00 00 00       	jmpq   0x7f01bb404016
    7f01bb40400c:	c7 85 48 de ff ff 00 	movl   $0x0,-0x21b8(%rbp)
    7f01bb404013:	00 00 00 
    7f01bb404016:	8b 85 60 de ff ff    	mov    -0x21a0(%rbp),%eax
    7f01bb40401c:	83 e0 03             	and    $0x3,%eax
    7f01bb40401f:	49 0f b6 8f 78 35 00 	movzbq 0x3578(%r15),%rcx
    7f01bb404026:	00 
    7f01bb404027:	83 e1 03             	and    $0x3,%ecx
    7f01bb40402a:	23 c1                	and    %ecx,%eax
    7f01bb40402c:	85 c0                	test   %eax,%eax
    7f01bb40402e:	0f 95 c0             	setne  %al
    7f01bb404031:	0f b6 c0             	movzbl %al,%eax
    7f01bb404034:	8b 8d 68 de ff ff    	mov    -0x2198(%rbp),%ecx
    7f01bb40403a:	23 c1                	and    %ecx,%eax
    7f01bb40403c:	85 c0                	test   %eax,%eax
    7f01bb40403e:	0f 84 0f 00 00 00    	je     0x7f01bb404053
    7f01bb404044:	c7 85 40 de ff ff 01 	movl   $0x1,-0x21c0(%rbp)
    7f01bb40404b:	00 00 00 
    7f01bb40404e:	e9 0a 00 00 00       	jmpq   0x7f01bb40405d
    7f01bb404053:	c7 85 40 de ff ff 00 	movl   $0x0,-0x21c0(%rbp)
    7f01bb40405a:	00 00 00 
    7f01bb40405d:	8b 85 68 de ff ff    	mov    -0x2198(%rbp),%eax
    7f01bb404063:	85 c0                	test   %eax,%eax
    7f01bb404065:	0f 94 c0             	sete   %al
    7f01bb404068:	0f b6 c0             	movzbl %al,%eax
    7f01bb40406b:	85 c0                	test   %eax,%eax
    7f01bb40406d:	0f 84 0f 00 00 00    	je     0x7f01bb404082
    7f01bb404073:	c7 85 38 de ff ff 00 	movl   $0x0,-0x21c8(%rbp)
    7f01bb40407a:	00 00 00 
    7f01bb40407d:	e9 0a 00 00 00       	jmpq   0x7f01bb40408c
    7f01bb404082:	c7 85 38 de ff ff 01 	movl   $0x1,-0x21c8(%rbp)
    7f01bb404089:	00 00 00 
    7f01bb40408c:	8b 85 a8 fb ff ff    	mov    -0x458(%rbp),%eax
    7f01bb404092:	23 85 a8 de ff ff    	and    -0x2158(%rbp),%eax
    7f01bb404098:	8b 8d f0 e0 ff ff    	mov    -0x1f10(%rbp),%ecx
    7f01bb40409e:	23 c1                	and    %ecx,%eax
    7f01bb4040a0:	85 c0                	test   %eax,%eax
    7f01bb4040a2:	0f 84 11 00 00 00    	je     0x7f01bb4040b9
    7f01bb4040a8:	8b 85 b8 fb ff ff    	mov    -0x448(%rbp),%eax
    7f01bb4040ae:	89 85 30 de ff ff    	mov    %eax,-0x21d0(%rbp)
    7f01bb4040b4:	e9 0c 00 00 00       	jmpq   0x7f01bb4040c5
    7f01bb4040b9:	8b 85 a0 fb ff ff    	mov    -0x460(%rbp),%eax
    7f01bb4040bf:	89 85 30 de ff ff    	mov    %eax,-0x21d0(%rbp)
    7f01bb4040c5:	8b 85 f8 fd ff ff    	mov    -0x208(%rbp),%eax
    7f01bb4040cb:	c1 e0 02             	shl    $0x2,%eax
    7f01bb4040ce:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4040d3:	c1 e8 06             	shr    $0x6,%eax
    7f01bb4040d6:	89 85 28 de ff ff    	mov    %eax,-0x21d8(%rbp)
    7f01bb4040dc:	8b 85 e8 ec ff ff    	mov    -0x1318(%rbp),%eax
    7f01bb4040e2:	c1 e0 02             	shl    $0x2,%eax
    7f01bb4040e5:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4040ea:	c1 e8 06             	shr    $0x6,%eax
    7f01bb4040ed:	89 85 20 de ff ff    	mov    %eax,-0x21e0(%rbp)
    7f01bb4040f3:	41 83 fe 02          	cmp    $0x2,%r14d
    7f01bb4040f7:	0f 85 11 00 00 00    	jne    0x7f01bb40410e
    7f01bb4040fd:	8b 85 28 de ff ff    	mov    -0x21d8(%rbp),%eax
    7f01bb404103:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb404109:	e9 b8 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb40410e:	41 83 fe 04          	cmp    $0x4,%r14d
    7f01bb404112:	0f 85 11 00 00 00    	jne    0x7f01bb404129
    7f01bb404118:	8b 85 28 de ff ff    	mov    -0x21d8(%rbp),%eax
    7f01bb40411e:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb404124:	e9 9d 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb404129:	41 83 fe 10          	cmp    $0x10,%r14d
    7f01bb40412d:	0f 85 11 00 00 00    	jne    0x7f01bb404144
    7f01bb404133:	8b 85 20 de ff ff    	mov    -0x21e0(%rbp),%eax
    7f01bb404139:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb40413f:	e9 82 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb404144:	41 81 fe 00 02 00 00 	cmp    $0x200,%r14d
    7f01bb40414b:	0f 85 11 00 00 00    	jne    0x7f01bb404162
    7f01bb404151:	8b 85 c8 fd ff ff    	mov    -0x238(%rbp),%eax
    7f01bb404157:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb40415d:	e9 64 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb404162:	41 81 fe 00 08 00 00 	cmp    $0x800,%r14d
    7f01bb404169:	0f 85 11 00 00 00    	jne    0x7f01bb404180
    7f01bb40416f:	8b 85 40 eb ff ff    	mov    -0x14c0(%rbp),%eax
    7f01bb404175:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb40417b:	e9 46 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb404180:	41 81 fe 00 40 00 00 	cmp    $0x4000,%r14d
    7f01bb404187:	0f 85 11 00 00 00    	jne    0x7f01bb40419e
    7f01bb40418d:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
    7f01bb404193:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb404199:	e9 28 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb40419e:	41 81 fe 00 80 00 00 	cmp    $0x8000,%r14d
    7f01bb4041a5:	0f 85 11 00 00 00    	jne    0x7f01bb4041bc
    7f01bb4041ab:	8b 85 b8 fd ff ff    	mov    -0x248(%rbp),%eax
    7f01bb4041b1:	89 85 18 de ff ff    	mov    %eax,-0x21e8(%rbp)
    7f01bb4041b7:	e9 0a 00 00 00       	jmpq   0x7f01bb4041c6
    7f01bb4041bc:	c7 85 18 de ff ff 00 	movl   $0x0,-0x21e8(%rbp)
    7f01bb4041c3:	00 00 00 
    7f01bb4041c6:	8b 85 18 de ff ff    	mov    -0x21e8(%rbp),%eax
    7f01bb4041cc:	c1 e0 03             	shl    $0x3,%eax
    7f01bb4041cf:	0b 85 58 ea ff ff    	or     -0x15a8(%rbp),%eax
    7f01bb4041d5:	8b 8d 40 f5 ff ff    	mov    -0xac0(%rbp),%ecx
    7f01bb4041db:	c1 e1 17             	shl    $0x17,%ecx
    7f01bb4041de:	0b c1                	or     %ecx,%eax
    7f01bb4041e0:	89 85 10 de ff ff    	mov    %eax,-0x21f0(%rbp)
    7f01bb4041e6:	8b 85 60 ff ff ff    	mov    -0xa0(%rbp),%eax
    7f01bb4041ec:	c1 e0 02             	shl    $0x2,%eax
    7f01bb4041ef:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4041f4:	c1 e8 06             	shr    $0x6,%eax
    7f01bb4041f7:	89 85 08 de ff ff    	mov    %eax,-0x21f8(%rbp)
    7f01bb4041fd:	8b 85 e0 f7 ff ff    	mov    -0x820(%rbp),%eax
    7f01bb404203:	c1 e0 02             	shl    $0x2,%eax
    7f01bb404206:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb40420b:	c1 e8 06             	shr    $0x6,%eax
    7f01bb40420e:	89 85 00 de ff ff    	mov    %eax,-0x2200(%rbp)
    7f01bb404214:	41 83 fd 02          	cmp    $0x2,%r13d
    7f01bb404218:	0f 85 11 00 00 00    	jne    0x7f01bb40422f
    7f01bb40421e:	8b 85 08 de ff ff    	mov    -0x21f8(%rbp),%eax
    7f01bb404224:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb40422a:	e9 b8 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb40422f:	41 83 fd 04          	cmp    $0x4,%r13d
    7f01bb404233:	0f 85 11 00 00 00    	jne    0x7f01bb40424a
    7f01bb404239:	8b 85 08 de ff ff    	mov    -0x21f8(%rbp),%eax
    7f01bb40423f:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb404245:	e9 9d 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb40424a:	41 83 fd 10          	cmp    $0x10,%r13d
    7f01bb40424e:	0f 85 11 00 00 00    	jne    0x7f01bb404265
    7f01bb404254:	8b 85 00 de ff ff    	mov    -0x2200(%rbp),%eax
    7f01bb40425a:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb404260:	e9 82 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb404265:	41 81 fd 00 02 00 00 	cmp    $0x200,%r13d
    7f01bb40426c:	0f 85 11 00 00 00    	jne    0x7f01bb404283
    7f01bb404272:	8b 85 30 ff ff ff    	mov    -0xd0(%rbp),%eax
    7f01bb404278:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb40427e:	e9 64 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb404283:	41 81 fd 00 08 00 00 	cmp    $0x800,%r13d
    7f01bb40428a:	0f 85 11 00 00 00    	jne    0x7f01bb4042a1
    7f01bb404290:	8b 85 38 f6 ff ff    	mov    -0x9c8(%rbp),%eax
    7f01bb404296:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb40429c:	e9 46 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb4042a1:	41 81 fd 00 40 00 00 	cmp    $0x4000,%r13d
    7f01bb4042a8:	0f 85 11 00 00 00    	jne    0x7f01bb4042bf
    7f01bb4042ae:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
    7f01bb4042b4:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb4042ba:	e9 28 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb4042bf:	41 81 fd 00 80 00 00 	cmp    $0x8000,%r13d
    7f01bb4042c6:	0f 85 11 00 00 00    	jne    0x7f01bb4042dd
    7f01bb4042cc:	8b 85 20 ff ff ff    	mov    -0xe0(%rbp),%eax
    7f01bb4042d2:	89 85 f8 dd ff ff    	mov    %eax,-0x2208(%rbp)
    7f01bb4042d8:	e9 0a 00 00 00       	jmpq   0x7f01bb4042e7
    7f01bb4042dd:	c7 85 f8 dd ff ff 00 	movl   $0x0,-0x2208(%rbp)
    7f01bb4042e4:	00 00 00 
    7f01bb4042e7:	8b 85 f8 dd ff ff    	mov    -0x2208(%rbp),%eax
    7f01bb4042ed:	c1 e0 03             	shl    $0x3,%eax
    7f01bb4042f0:	0b 85 28 f4 ff ff    	or     -0xbd8(%rbp),%eax
    7f01bb4042f6:	8b 8d a8 f5 ff ff    	mov    -0xa58(%rbp),%ecx
    7f01bb4042fc:	c1 e1 17             	shl    $0x17,%ecx
    7f01bb4042ff:	0b c1                	or     %ecx,%eax
    7f01bb404301:	89 85 f0 dd ff ff    	mov    %eax,-0x2210(%rbp)
    7f01bb404307:	8b 85 30 fb ff ff    	mov    -0x4d0(%rbp),%eax
    7f01bb40430d:	c1 e0 03             	shl    $0x3,%eax
    7f01bb404310:	8b 8d 20 f5 ff ff    	mov    -0xae0(%rbp),%ecx
    7f01bb404316:	c1 e1 17             	shl    $0x17,%ecx
    7f01bb404319:	0b c1                	or     %ecx,%eax
    7f01bb40431b:	89 85 e8 dd ff ff    	mov    %eax,-0x2218(%rbp)
    7f01bb404321:	8b 85 f0 f4 ff ff    	mov    -0xb10(%rbp),%eax
    7f01bb404327:	83 f8 02             	cmp    $0x2,%eax
    7f01bb40432a:	0f 85 11 00 00 00    	jne    0x7f01bb404341
    7f01bb404330:	8b 85 10 de ff ff    	mov    -0x21f0(%rbp),%eax
    7f01bb404336:	89 85 e0 dd ff ff    	mov    %eax,-0x2220(%rbp)
    7f01bb40433c:	e9 2c 00 00 00       	jmpq   0x7f01bb40436d
    7f01bb404341:	8b 85 f0 f4 ff ff    	mov    -0xb10(%rbp),%eax
    7f01bb404347:	83 f8 01             	cmp    $0x1,%eax
    7f01bb40434a:	0f 85 11 00 00 00    	jne    0x7f01bb404361
    7f01bb404350:	8b 85 f0 dd ff ff    	mov    -0x2210(%rbp),%eax
    7f01bb404356:	89 85 e0 dd ff ff    	mov    %eax,-0x2220(%rbp)
    7f01bb40435c:	e9 0c 00 00 00       	jmpq   0x7f01bb40436d
    7f01bb404361:	8b 85 e8 dd ff ff    	mov    -0x2218(%rbp),%eax
    7f01bb404367:	89 85 e0 dd ff ff    	mov    %eax,-0x2220(%rbp)
    7f01bb40436d:	8b 85 e0 dd ff ff    	mov    -0x2220(%rbp),%eax
    7f01bb404373:	c1 e8 17             	shr    $0x17,%eax
    7f01bb404376:	83 e0 01             	and    $0x1,%eax
    7f01bb404379:	89 85 d8 dd ff ff    	mov    %eax,-0x2228(%rbp)
    7f01bb40437f:	8b 85 e0 dd ff ff    	mov    -0x2220(%rbp),%eax
    7f01bb404385:	83 e0 07             	and    $0x7,%eax
    7f01bb404388:	48 8b 8d e8 fa ff ff 	mov    -0x518(%rbp),%rcx
    7f01bb40438f:	48 8b 49 30          	mov    0x30(%rcx),%rcx
    7f01bb404393:	8b 51 03             	mov    0x3(%rcx),%edx
    7f01bb404396:	c1 ea 08             	shr    $0x8,%edx
    7f01bb404399:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb40439f:	89 95 d0 dd ff ff    	mov    %edx,-0x2230(%rbp)
    7f01bb4043a5:	8b 51 05             	mov    0x5(%rcx),%edx
    7f01bb4043a8:	c1 ea 0c             	shr    $0xc,%edx
    7f01bb4043ab:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb4043b1:	89 95 c8 dd ff ff    	mov    %edx,-0x2238(%rbp)
    7f01bb4043b7:	8b 51 08             	mov    0x8(%rcx),%edx
    7f01bb4043ba:	c1 ea 08             	shr    $0x8,%edx
    7f01bb4043bd:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb4043c3:	89 95 c0 dd ff ff    	mov    %edx,-0x2240(%rbp)
    7f01bb4043c9:	8b 51 0a             	mov    0xa(%rcx),%edx
    7f01bb4043cc:	c1 ea 0c             	shr    $0xc,%edx
    7f01bb4043cf:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb4043d5:	89 95 b8 dd ff ff    	mov    %edx,-0x2248(%rbp)
    7f01bb4043db:	8b 51 0d             	mov    0xd(%rcx),%edx
    7f01bb4043de:	c1 ea 08             	shr    $0x8,%edx
    7f01bb4043e1:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb4043e7:	89 95 b0 dd ff ff    	mov    %edx,-0x2250(%rbp)
    7f01bb4043ed:	8b 51 0f             	mov    0xf(%rcx),%edx
    7f01bb4043f0:	c1 ea 0c             	shr    $0xc,%edx
    7f01bb4043f3:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb4043f9:	89 95 a8 dd ff ff    	mov    %edx,-0x2258(%rbp)
    7f01bb4043ff:	48 89 8d a0 dd ff ff 	mov    %rcx,-0x2260(%rbp)
    7f01bb404406:	8b 49 12             	mov    0x12(%rcx),%ecx
    7f01bb404409:	c1 e9 08             	shr    $0x8,%ecx
    7f01bb40440c:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb404412:	89 8d 98 dd ff ff    	mov    %ecx,-0x2268(%rbp)
    7f01bb404418:	89 85 90 dd ff ff    	mov    %eax,-0x2270(%rbp)
    7f01bb40441e:	85 c0                	test   %eax,%eax
    7f01bb404420:	0f 85 11 00 00 00    	jne    0x7f01bb404437
    7f01bb404426:	8b 85 d0 dd ff ff    	mov    -0x2230(%rbp),%eax
    7f01bb40442c:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb404432:	e9 ac 00 00 00       	jmpq   0x7f01bb4044e3
    7f01bb404437:	8b 85 90 dd ff ff    	mov    -0x2270(%rbp),%eax
    7f01bb40443d:	83 f8 01             	cmp    $0x1,%eax
    7f01bb404440:	0f 85 11 00 00 00    	jne    0x7f01bb404457
    7f01bb404446:	8b 85 c8 dd ff ff    	mov    -0x2238(%rbp),%eax
    7f01bb40444c:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb404452:	e9 8c 00 00 00       	jmpq   0x7f01bb4044e3
    7f01bb404457:	8b 85 90 dd ff ff    	mov    -0x2270(%rbp),%eax
    7f01bb40445d:	83 f8 02             	cmp    $0x2,%eax
    7f01bb404460:	0f 85 11 00 00 00    	jne    0x7f01bb404477
    7f01bb404466:	8b 85 c0 dd ff ff    	mov    -0x2240(%rbp),%eax
    7f01bb40446c:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb404472:	e9 6c 00 00 00       	jmpq   0x7f01bb4044e3
    7f01bb404477:	8b 85 90 dd ff ff    	mov    -0x2270(%rbp),%eax
    7f01bb40447d:	83 f8 03             	cmp    $0x3,%eax
    7f01bb404480:	0f 85 11 00 00 00    	jne    0x7f01bb404497
    7f01bb404486:	8b 85 b8 dd ff ff    	mov    -0x2248(%rbp),%eax
    7f01bb40448c:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb404492:	e9 4c 00 00 00       	jmpq   0x7f01bb4044e3
    7f01bb404497:	8b 85 90 dd ff ff    	mov    -0x2270(%rbp),%eax
    7f01bb40449d:	83 f8 04             	cmp    $0x4,%eax
    7f01bb4044a0:	0f 85 11 00 00 00    	jne    0x7f01bb4044b7
    7f01bb4044a6:	8b 85 b0 dd ff ff    	mov    -0x2250(%rbp),%eax
    7f01bb4044ac:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb4044b2:	e9 2c 00 00 00       	jmpq   0x7f01bb4044e3
    7f01bb4044b7:	8b 85 90 dd ff ff    	mov    -0x2270(%rbp),%eax
    7f01bb4044bd:	83 f8 05             	cmp    $0x5,%eax
    7f01bb4044c0:	0f 85 11 00 00 00    	jne    0x7f01bb4044d7
    7f01bb4044c6:	8b 85 a8 dd ff ff    	mov    -0x2258(%rbp),%eax
    7f01bb4044cc:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb4044d2:	e9 0c 00 00 00       	jmpq   0x7f01bb4044e3
    7f01bb4044d7:	8b 85 98 dd ff ff    	mov    -0x2268(%rbp),%eax
    7f01bb4044dd:	89 85 88 dd ff ff    	mov    %eax,-0x2278(%rbp)
    7f01bb4044e3:	8b 85 e0 dd ff ff    	mov    -0x2220(%rbp),%eax
    7f01bb4044e9:	c1 e8 03             	shr    $0x3,%eax
    7f01bb4044ec:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4044f1:	8b 8d 88 dd ff ff    	mov    -0x2278(%rbp),%ecx
    7f01bb4044f7:	03 c1                	add    %ecx,%eax
    7f01bb4044f9:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4044fe:	89 85 80 dd ff ff    	mov    %eax,-0x2280(%rbp)
    7f01bb404504:	8b 85 e0 dd ff ff    	mov    -0x2220(%rbp),%eax
    7f01bb40450a:	83 e0 07             	and    $0x7,%eax
    7f01bb40450d:	8b 8d 00 f5 ff ff    	mov    -0xb00(%rbp),%ecx
    7f01bb404513:	c1 e1 03             	shl    $0x3,%ecx
    7f01bb404516:	0b c1                	or     %ecx,%eax
    7f01bb404518:	8b 8d 08 f5 ff ff    	mov    -0xaf8(%rbp),%ecx
    7f01bb40451e:	c1 e1 04             	shl    $0x4,%ecx
    7f01bb404521:	0b c1                	or     %ecx,%eax
    7f01bb404523:	8b 8d f8 f4 ff ff    	mov    -0xb08(%rbp),%ecx
    7f01bb404529:	c1 e1 05             	shl    $0x5,%ecx
    7f01bb40452c:	0b c1                	or     %ecx,%eax
    7f01bb40452e:	89 85 78 dd ff ff    	mov    %eax,-0x2288(%rbp)
    7f01bb404534:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb40453a:	83 f8 01             	cmp    $0x1,%eax
    7f01bb40453d:	0f 85 0f 00 00 00    	jne    0x7f01bb404552
    7f01bb404543:	c7 85 70 dd ff ff 00 	movl   $0x0,-0x2290(%rbp)
    7f01bb40454a:	00 00 00 
    7f01bb40454d:	e9 46 00 00 00       	jmpq   0x7f01bb404598
    7f01bb404552:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404558:	83 f8 02             	cmp    $0x2,%eax
    7f01bb40455b:	0f 85 0f 00 00 00    	jne    0x7f01bb404570
    7f01bb404561:	c7 85 70 dd ff ff 00 	movl   $0x0,-0x2290(%rbp)
    7f01bb404568:	00 00 00 
    7f01bb40456b:	e9 28 00 00 00       	jmpq   0x7f01bb404598
    7f01bb404570:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404576:	83 f8 03             	cmp    $0x3,%eax
    7f01bb404579:	0f 85 0f 00 00 00    	jne    0x7f01bb40458e
    7f01bb40457f:	c7 85 70 dd ff ff 01 	movl   $0x1,-0x2290(%rbp)
    7f01bb404586:	00 00 00 
    7f01bb404589:	e9 0a 00 00 00       	jmpq   0x7f01bb404598
    7f01bb40458e:	c7 85 70 dd ff ff 00 	movl   $0x0,-0x2290(%rbp)
    7f01bb404595:	00 00 00 
    7f01bb404598:	8b 85 28 fc ff ff    	mov    -0x3d8(%rbp),%eax
    7f01bb40459e:	c1 e0 02             	shl    $0x2,%eax
    7f01bb4045a1:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4045a6:	c1 e8 06             	shr    $0x6,%eax
    7f01bb4045a9:	89 85 68 dd ff ff    	mov    %eax,-0x2298(%rbp)
    7f01bb4045af:	ff c0                	inc    %eax
    7f01bb4045b1:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4045b6:	89 85 60 dd ff ff    	mov    %eax,-0x22a0(%rbp)
    7f01bb4045bc:	8b 85 28 fc ff ff    	mov    -0x3d8(%rbp),%eax
    7f01bb4045c2:	c1 e8 05             	shr    $0x5,%eax
    7f01bb4045c5:	89 85 58 dd ff ff    	mov    %eax,-0x22a8(%rbp)
    7f01bb4045cb:	c1 e0 02             	shl    $0x2,%eax
    7f01bb4045ce:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4045d3:	c1 e8 06             	shr    $0x6,%eax
    7f01bb4045d6:	89 85 50 dd ff ff    	mov    %eax,-0x22b0(%rbp)
    7f01bb4045dc:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb4045e2:	83 f8 01             	cmp    $0x1,%eax
    7f01bb4045e5:	0f 85 11 00 00 00    	jne    0x7f01bb4045fc
    7f01bb4045eb:	8b 85 68 dd ff ff    	mov    -0x2298(%rbp),%eax
    7f01bb4045f1:	89 85 48 dd ff ff    	mov    %eax,-0x22b8(%rbp)
    7f01bb4045f7:	e9 4a 00 00 00       	jmpq   0x7f01bb404646
    7f01bb4045fc:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404602:	83 f8 02             	cmp    $0x2,%eax
    7f01bb404605:	0f 85 11 00 00 00    	jne    0x7f01bb40461c
    7f01bb40460b:	8b 85 60 dd ff ff    	mov    -0x22a0(%rbp),%eax
    7f01bb404611:	89 85 48 dd ff ff    	mov    %eax,-0x22b8(%rbp)
    7f01bb404617:	e9 2a 00 00 00       	jmpq   0x7f01bb404646
    7f01bb40461c:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404622:	83 f8 03             	cmp    $0x3,%eax
    7f01bb404625:	0f 85 11 00 00 00    	jne    0x7f01bb40463c
    7f01bb40462b:	8b 85 50 dd ff ff    	mov    -0x22b0(%rbp),%eax
    7f01bb404631:	89 85 48 dd ff ff    	mov    %eax,-0x22b8(%rbp)
    7f01bb404637:	e9 0a 00 00 00       	jmpq   0x7f01bb404646
    7f01bb40463c:	c7 85 48 dd ff ff 00 	movl   $0x0,-0x22b8(%rbp)
    7f01bb404643:	00 00 00 
    7f01bb404646:	41 8b 87 88 30 00 00 	mov    0x3088(%r15),%eax
    7f01bb40464d:	41 8b 8f 8c 30 00 00 	mov    0x308c(%r15),%ecx
    7f01bb404654:	41 8b 97 90 30 00 00 	mov    0x3090(%r15),%edx
    7f01bb40465b:	41 8b b7 94 30 00 00 	mov    0x3094(%r15),%esi
    7f01bb404662:	41 8b bf 98 30 00 00 	mov    0x3098(%r15),%edi
    7f01bb404669:	45 8b 87 9c 30 00 00 	mov    0x309c(%r15),%r8d
    7f01bb404670:	45 8b 8f a0 30 00 00 	mov    0x30a0(%r15),%r9d
    7f01bb404677:	45 8b 97 a4 30 00 00 	mov    0x30a4(%r15),%r10d
    7f01bb40467e:	45 8b 9f a8 30 00 00 	mov    0x30a8(%r15),%r11d
    7f01bb404685:	89 85 40 dd ff ff    	mov    %eax,-0x22c0(%rbp)
    7f01bb40468b:	41 8b 87 ac 30 00 00 	mov    0x30ac(%r15),%eax
    7f01bb404692:	89 8d 38 dd ff ff    	mov    %ecx,-0x22c8(%rbp)
    7f01bb404698:	41 8b 8f b0 30 00 00 	mov    0x30b0(%r15),%ecx
    7f01bb40469f:	89 95 30 dd ff ff    	mov    %edx,-0x22d0(%rbp)
    7f01bb4046a5:	41 8b 97 b4 30 00 00 	mov    0x30b4(%r15),%edx
    7f01bb4046ac:	89 b5 28 dd ff ff    	mov    %esi,-0x22d8(%rbp)
    7f01bb4046b2:	41 8b b7 b8 30 00 00 	mov    0x30b8(%r15),%esi
    7f01bb4046b9:	89 bd 20 dd ff ff    	mov    %edi,-0x22e0(%rbp)
    7f01bb4046bf:	41 8b bf bc 30 00 00 	mov    0x30bc(%r15),%edi
    7f01bb4046c6:	44 89 85 18 dd ff ff 	mov    %r8d,-0x22e8(%rbp)
    7f01bb4046cd:	45 8b 87 c0 30 00 00 	mov    0x30c0(%r15),%r8d
    7f01bb4046d4:	44 89 8d 10 dd ff ff 	mov    %r9d,-0x22f0(%rbp)
    7f01bb4046db:	45 8b 8f c4 30 00 00 	mov    0x30c4(%r15),%r9d
    7f01bb4046e2:	44 89 95 08 dd ff ff 	mov    %r10d,-0x22f8(%rbp)
    7f01bb4046e9:	44 8b 95 40 dd ff ff 	mov    -0x22c0(%rbp),%r10d
    7f01bb4046f0:	45 8b d2             	mov    %r10d,%r10d
    7f01bb4046f3:	44 89 9d 00 dd ff ff 	mov    %r11d,-0x2300(%rbp)
    7f01bb4046fa:	44 8b 9d 38 dd ff ff 	mov    -0x22c8(%rbp),%r11d
    7f01bb404701:	45 8b db             	mov    %r11d,%r11d
    7f01bb404704:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404708:	4d 0b d3             	or     %r11,%r10
    7f01bb40470b:	4d 89 97 00 37 00 00 	mov    %r10,0x3700(%r15)
    7f01bb404712:	44 8b 95 30 dd ff ff 	mov    -0x22d0(%rbp),%r10d
    7f01bb404719:	45 8b d2             	mov    %r10d,%r10d
    7f01bb40471c:	44 8b 9d 28 dd ff ff 	mov    -0x22d8(%rbp),%r11d
    7f01bb404723:	45 8b db             	mov    %r11d,%r11d
    7f01bb404726:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb40472a:	4d 0b d3             	or     %r11,%r10
    7f01bb40472d:	4d 89 97 08 37 00 00 	mov    %r10,0x3708(%r15)
    7f01bb404734:	44 8b 95 20 dd ff ff 	mov    -0x22e0(%rbp),%r10d
    7f01bb40473b:	45 8b d2             	mov    %r10d,%r10d
    7f01bb40473e:	44 8b 9d 18 dd ff ff 	mov    -0x22e8(%rbp),%r11d
    7f01bb404745:	45 8b db             	mov    %r11d,%r11d
    7f01bb404748:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb40474c:	4d 0b d3             	or     %r11,%r10
    7f01bb40474f:	4d 89 97 10 37 00 00 	mov    %r10,0x3710(%r15)
    7f01bb404756:	44 8b 95 10 dd ff ff 	mov    -0x22f0(%rbp),%r10d
    7f01bb40475d:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404760:	44 8b 9d 08 dd ff ff 	mov    -0x22f8(%rbp),%r11d
    7f01bb404767:	45 8b db             	mov    %r11d,%r11d
    7f01bb40476a:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb40476e:	4d 0b d3             	or     %r11,%r10
    7f01bb404771:	4d 89 97 18 37 00 00 	mov    %r10,0x3718(%r15)
    7f01bb404778:	44 8b 95 00 dd ff ff 	mov    -0x2300(%rbp),%r10d
    7f01bb40477f:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404782:	89 85 f8 dc ff ff    	mov    %eax,-0x2308(%rbp)
    7f01bb404788:	8b c0                	mov    %eax,%eax
    7f01bb40478a:	48 c1 e0 20          	shl    $0x20,%rax
    7f01bb40478e:	4c 0b d0             	or     %rax,%r10
    7f01bb404791:	4d 89 97 20 37 00 00 	mov    %r10,0x3720(%r15)
    7f01bb404798:	89 8d f0 dc ff ff    	mov    %ecx,-0x2310(%rbp)
    7f01bb40479e:	8b c9                	mov    %ecx,%ecx
    7f01bb4047a0:	89 95 e8 dc ff ff    	mov    %edx,-0x2318(%rbp)
    7f01bb4047a6:	8b d2                	mov    %edx,%edx
    7f01bb4047a8:	48 c1 e2 20          	shl    $0x20,%rdx
    7f01bb4047ac:	48 0b ca             	or     %rdx,%rcx
    7f01bb4047af:	49 89 8f 28 37 00 00 	mov    %rcx,0x3728(%r15)
    7f01bb4047b6:	89 b5 e0 dc ff ff    	mov    %esi,-0x2320(%rbp)
    7f01bb4047bc:	8b f6                	mov    %esi,%esi
    7f01bb4047be:	89 bd d8 dc ff ff    	mov    %edi,-0x2328(%rbp)
    7f01bb4047c4:	8b ff                	mov    %edi,%edi
    7f01bb4047c6:	48 c1 e7 20          	shl    $0x20,%rdi
    7f01bb4047ca:	48 0b f7             	or     %rdi,%rsi
    7f01bb4047cd:	49 89 b7 30 37 00 00 	mov    %rsi,0x3730(%r15)
    7f01bb4047d4:	44 89 85 d0 dc ff ff 	mov    %r8d,-0x2330(%rbp)
    7f01bb4047db:	45 8b c0             	mov    %r8d,%r8d
    7f01bb4047de:	45 8b c9             	mov    %r9d,%r9d
    7f01bb4047e1:	49 c1 e1 20          	shl    $0x20,%r9
    7f01bb4047e5:	4d 0b c1             	or     %r9,%r8
    7f01bb4047e8:	4d 89 87 38 37 00 00 	mov    %r8,0x3738(%r15)
    7f01bb4047ef:	41 8b 87 c8 30 00 00 	mov    0x30c8(%r15),%eax
    7f01bb4047f6:	41 8b 8f cc 30 00 00 	mov    0x30cc(%r15),%ecx
    7f01bb4047fd:	41 8b 97 d0 30 00 00 	mov    0x30d0(%r15),%edx
    7f01bb404804:	41 8b b7 d4 30 00 00 	mov    0x30d4(%r15),%esi
    7f01bb40480b:	41 8b bf d8 30 00 00 	mov    0x30d8(%r15),%edi
    7f01bb404812:	45 8b 87 dc 30 00 00 	mov    0x30dc(%r15),%r8d
    7f01bb404819:	45 8b 8f e0 30 00 00 	mov    0x30e0(%r15),%r9d
    7f01bb404820:	45 8b 97 e4 30 00 00 	mov    0x30e4(%r15),%r10d
    7f01bb404827:	45 8b 9f e8 30 00 00 	mov    0x30e8(%r15),%r11d
    7f01bb40482e:	89 85 c8 dc ff ff    	mov    %eax,-0x2338(%rbp)
    7f01bb404834:	41 8b 87 ec 30 00 00 	mov    0x30ec(%r15),%eax
    7f01bb40483b:	89 8d c0 dc ff ff    	mov    %ecx,-0x2340(%rbp)
    7f01bb404841:	41 8b 8f f0 30 00 00 	mov    0x30f0(%r15),%ecx
    7f01bb404848:	89 95 b8 dc ff ff    	mov    %edx,-0x2348(%rbp)
    7f01bb40484e:	41 8b 97 f4 30 00 00 	mov    0x30f4(%r15),%edx
    7f01bb404855:	89 b5 b0 dc ff ff    	mov    %esi,-0x2350(%rbp)
    7f01bb40485b:	41 8b b7 f8 30 00 00 	mov    0x30f8(%r15),%esi
    7f01bb404862:	89 bd a8 dc ff ff    	mov    %edi,-0x2358(%rbp)
    7f01bb404868:	41 8b bf fc 30 00 00 	mov    0x30fc(%r15),%edi
    7f01bb40486f:	44 89 85 a0 dc ff ff 	mov    %r8d,-0x2360(%rbp)
    7f01bb404876:	45 8b 87 00 31 00 00 	mov    0x3100(%r15),%r8d
    7f01bb40487d:	44 89 8d 98 dc ff ff 	mov    %r9d,-0x2368(%rbp)
    7f01bb404884:	45 8b 8f 04 31 00 00 	mov    0x3104(%r15),%r9d
    7f01bb40488b:	44 89 95 90 dc ff ff 	mov    %r10d,-0x2370(%rbp)
    7f01bb404892:	44 8b 95 c8 dc ff ff 	mov    -0x2338(%rbp),%r10d
    7f01bb404899:	45 8b d2             	mov    %r10d,%r10d
    7f01bb40489c:	44 89 9d 88 dc ff ff 	mov    %r11d,-0x2378(%rbp)
    7f01bb4048a3:	44 8b 9d c0 dc ff ff 	mov    -0x2340(%rbp),%r11d
    7f01bb4048aa:	45 8b db             	mov    %r11d,%r11d
    7f01bb4048ad:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb4048b1:	4d 0b d3             	or     %r11,%r10
    7f01bb4048b4:	4d 89 97 40 37 00 00 	mov    %r10,0x3740(%r15)
    7f01bb4048bb:	44 8b 95 b8 dc ff ff 	mov    -0x2348(%rbp),%r10d
    7f01bb4048c2:	45 8b d2             	mov    %r10d,%r10d
    7f01bb4048c5:	44 8b 9d b0 dc ff ff 	mov    -0x2350(%rbp),%r11d
    7f01bb4048cc:	45 8b db             	mov    %r11d,%r11d
    7f01bb4048cf:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb4048d3:	4d 0b d3             	or     %r11,%r10
    7f01bb4048d6:	4d 89 97 48 37 00 00 	mov    %r10,0x3748(%r15)
    7f01bb4048dd:	44 8b 95 a8 dc ff ff 	mov    -0x2358(%rbp),%r10d
    7f01bb4048e4:	45 8b d2             	mov    %r10d,%r10d
    7f01bb4048e7:	44 8b 9d a0 dc ff ff 	mov    -0x2360(%rbp),%r11d
    7f01bb4048ee:	45 8b db             	mov    %r11d,%r11d
    7f01bb4048f1:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb4048f5:	4d 0b d3             	or     %r11,%r10
    7f01bb4048f8:	4d 89 97 50 37 00 00 	mov    %r10,0x3750(%r15)
    7f01bb4048ff:	44 8b 95 98 dc ff ff 	mov    -0x2368(%rbp),%r10d
    7f01bb404906:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404909:	44 8b 9d 90 dc ff ff 	mov    -0x2370(%rbp),%r11d
    7f01bb404910:	45 8b db             	mov    %r11d,%r11d
    7f01bb404913:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404917:	4d 0b d3             	or     %r11,%r10
    7f01bb40491a:	4d 89 97 58 37 00 00 	mov    %r10,0x3758(%r15)
    7f01bb404921:	44 8b 95 88 dc ff ff 	mov    -0x2378(%rbp),%r10d
    7f01bb404928:	45 8b d2             	mov    %r10d,%r10d
    7f01bb40492b:	89 85 80 dc ff ff    	mov    %eax,-0x2380(%rbp)
    7f01bb404931:	8b c0                	mov    %eax,%eax
    7f01bb404933:	48 c1 e0 20          	shl    $0x20,%rax
    7f01bb404937:	4c 0b d0             	or     %rax,%r10
    7f01bb40493a:	4d 89 97 60 37 00 00 	mov    %r10,0x3760(%r15)
    7f01bb404941:	89 8d 78 dc ff ff    	mov    %ecx,-0x2388(%rbp)
    7f01bb404947:	8b c9                	mov    %ecx,%ecx
    7f01bb404949:	89 95 70 dc ff ff    	mov    %edx,-0x2390(%rbp)
    7f01bb40494f:	8b d2                	mov    %edx,%edx
    7f01bb404951:	48 c1 e2 20          	shl    $0x20,%rdx
    7f01bb404955:	48 0b ca             	or     %rdx,%rcx
    7f01bb404958:	49 89 8f 68 37 00 00 	mov    %rcx,0x3768(%r15)
    7f01bb40495f:	89 b5 68 dc ff ff    	mov    %esi,-0x2398(%rbp)
    7f01bb404965:	8b f6                	mov    %esi,%esi
    7f01bb404967:	89 bd 60 dc ff ff    	mov    %edi,-0x23a0(%rbp)
    7f01bb40496d:	8b ff                	mov    %edi,%edi
    7f01bb40496f:	48 c1 e7 20          	shl    $0x20,%rdi
    7f01bb404973:	48 0b f7             	or     %rdi,%rsi
    7f01bb404976:	49 89 b7 70 37 00 00 	mov    %rsi,0x3770(%r15)
    7f01bb40497d:	44 89 85 58 dc ff ff 	mov    %r8d,-0x23a8(%rbp)
    7f01bb404984:	45 8b c0             	mov    %r8d,%r8d
    7f01bb404987:	45 8b c9             	mov    %r9d,%r9d
    7f01bb40498a:	49 c1 e1 20          	shl    $0x20,%r9
    7f01bb40498e:	4d 0b c1             	or     %r9,%r8
    7f01bb404991:	4d 89 87 78 37 00 00 	mov    %r8,0x3778(%r15)
    7f01bb404998:	8b 85 40 fc ff ff    	mov    -0x3c0(%rbp),%eax
    7f01bb40499e:	8b c0                	mov    %eax,%eax
    7f01bb4049a0:	48 89 85 50 dc ff ff 	mov    %rax,-0x23b0(%rbp)
    7f01bb4049a7:	48 8d 85 50 dc ff ff 	lea    -0x23b0(%rbp),%rax
    7f01bb4049ae:	49 8b cf             	mov    %r15,%rcx
    7f01bb4049b1:	48 81 c1 80 37 00 00 	add    $0x3780,%rcx
    7f01bb4049b8:	48 89 8d 48 dc ff ff 	mov    %rcx,-0x23b8(%rbp)
    7f01bb4049bf:	b9 20 00 00 00       	mov    $0x20,%ecx
    7f01bb4049c4:	48 8b d0             	mov    %rax,%rdx
    7f01bb4049c7:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb4049cc:	48 8b bd 48 dc ff ff 	mov    -0x23b8(%rbp),%rdi
    7f01bb4049d3:	48 89 85 40 dc ff ff 	mov    %rax,-0x23c0(%rbp)
    7f01bb4049da:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb4049df:	e8 c2 d5 8c ff       	callq  0x7f01bacd1fa6
    7f01bb4049e4:	8b 85 58 dd ff ff    	mov    -0x22a8(%rbp),%eax
    7f01bb4049ea:	83 e0 0f             	and    $0xf,%eax
    7f01bb4049ed:	c1 e0 05             	shl    $0x5,%eax
    7f01bb4049f0:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4049f5:	49 8b cf             	mov    %r15,%rcx
    7f01bb4049f8:	48 81 c1 80 37 00 00 	add    $0x3780,%rcx
    7f01bb4049ff:	49 8b d7             	mov    %r15,%rdx
    7f01bb404a02:	48 81 c2 c0 37 00 00 	add    $0x37c0,%rdx
    7f01bb404a09:	44 8b c0             	mov    %eax,%r8d
    7f01bb404a0c:	48 89 8d 38 dc ff ff 	mov    %rcx,-0x23c8(%rbp)
    7f01bb404a13:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb404a18:	48 89 95 30 dc ff ff 	mov    %rdx,-0x23d0(%rbp)
    7f01bb404a1f:	48 8b 95 38 dc ff ff 	mov    -0x23c8(%rbp),%rdx
    7f01bb404a26:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb404a2b:	48 8b bd 30 dc ff ff 	mov    -0x23d0(%rbp),%rdi
    7f01bb404a32:	89 85 28 dc ff ff    	mov    %eax,-0x23d8(%rbp)
    7f01bb404a38:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb404a3d:	e8 98 c7 8c ff       	callq  0x7f01bacd11da
    7f01bb404a42:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404a48:	83 f8 01             	cmp    $0x1,%eax
    7f01bb404a4b:	0f 85 36 00 00 00    	jne    0x7f01bb404a87
    7f01bb404a51:	49 8b c7             	mov    %r15,%rax
    7f01bb404a54:	48 05 00 38 00 00    	add    $0x3800,%rax
    7f01bb404a5a:	49 8b cf             	mov    %r15,%rcx
    7f01bb404a5d:	48 81 c1 00 37 00 00 	add    $0x3700,%rcx
    7f01bb404a64:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb404a67:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb404a6a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb404a6e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb404a72:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb404a76:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb404a7a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb404a7e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb404a82:	e9 bb 00 00 00       	jmpq   0x7f01bb404b42
    7f01bb404a87:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404a8d:	83 f8 02             	cmp    $0x2,%eax
    7f01bb404a90:	0f 85 36 00 00 00    	jne    0x7f01bb404acc
    7f01bb404a96:	49 8b c7             	mov    %r15,%rax
    7f01bb404a99:	48 05 00 38 00 00    	add    $0x3800,%rax
    7f01bb404a9f:	49 8b cf             	mov    %r15,%rcx
    7f01bb404aa2:	48 81 c1 40 37 00 00 	add    $0x3740,%rcx
    7f01bb404aa9:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb404aac:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb404aaf:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb404ab3:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb404ab7:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb404abb:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb404abf:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb404ac3:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb404ac7:	e9 76 00 00 00       	jmpq   0x7f01bb404b42
    7f01bb404acc:	8b 85 18 fc ff ff    	mov    -0x3e8(%rbp),%eax
    7f01bb404ad2:	83 f8 03             	cmp    $0x3,%eax
    7f01bb404ad5:	0f 85 36 00 00 00    	jne    0x7f01bb404b11
    7f01bb404adb:	49 8b c7             	mov    %r15,%rax
    7f01bb404ade:	48 05 00 38 00 00    	add    $0x3800,%rax
    7f01bb404ae4:	49 8b cf             	mov    %r15,%rcx
    7f01bb404ae7:	48 81 c1 c0 37 00 00 	add    $0x37c0,%rcx
    7f01bb404aee:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb404af1:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb404af4:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb404af8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb404afc:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb404b00:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb404b04:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb404b08:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb404b0c:	e9 31 00 00 00       	jmpq   0x7f01bb404b42
    7f01bb404b11:	49 8b c7             	mov    %r15,%rax
    7f01bb404b14:	48 05 00 38 00 00    	add    $0x3800,%rax
    7f01bb404b1a:	49 8b cf             	mov    %r15,%rcx
    7f01bb404b1d:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb404b24:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb404b27:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb404b2a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb404b2e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb404b32:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb404b36:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb404b3a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb404b3e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb404b42:	49 8b c7             	mov    %r15,%rax
    7f01bb404b45:	48 05 f0 39 00 00    	add    $0x39f0,%rax
    7f01bb404b4b:	8b 8d 70 dd ff ff    	mov    -0x2290(%rbp),%ecx
    7f01bb404b51:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb404b54:	8b c9                	mov    %ecx,%ecx
    7f01bb404b56:	48 c1 e1 00          	shl    $0x0,%rcx
    7f01bb404b5a:	49 8b 97 f0 39 00 00 	mov    0x39f0(%r15),%rdx
    7f01bb404b61:	48 33 ca             	xor    %rdx,%rcx
    7f01bb404b64:	48 83 e1 03          	and    $0x3,%rcx
    7f01bb404b68:	48 33 d1             	xor    %rcx,%rdx
    7f01bb404b6b:	49 89 97 f0 39 00 00 	mov    %rdx,0x39f0(%r15)
    7f01bb404b72:	8b 8d 48 dd ff ff    	mov    -0x22b8(%rbp),%ecx
    7f01bb404b78:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb404b7b:	8b c9                	mov    %ecx,%ecx
    7f01bb404b7d:	48 c1 e1 02          	shl    $0x2,%rcx
    7f01bb404b81:	49 8b 97 f0 39 00 00 	mov    0x39f0(%r15),%rdx
    7f01bb404b88:	48 33 ca             	xor    %rdx,%rcx
    7f01bb404b8b:	48 81 e1 fc ff 3f 00 	and    $0x3ffffc,%rcx
    7f01bb404b92:	48 33 d1             	xor    %rcx,%rdx
    7f01bb404b95:	49 89 97 f0 39 00 00 	mov    %rdx,0x39f0(%r15)
    7f01bb404b9c:	49 8b cf             	mov    %r15,%rcx
    7f01bb404b9f:	48 81 c1 00 38 00 00 	add    $0x3800,%rcx
    7f01bb404ba6:	41 b8 00 02 00 00    	mov    $0x200,%r8d
    7f01bb404bac:	48 89 8d 20 dc ff ff 	mov    %rcx,-0x23e0(%rbp)
    7f01bb404bb3:	33 c9                	xor    %ecx,%ecx
    7f01bb404bb5:	48 8b 95 20 dc ff ff 	mov    -0x23e0(%rbp),%rdx
    7f01bb404bbc:	be 16 00 00 00       	mov    $0x16,%esi
    7f01bb404bc1:	48 8b f8             	mov    %rax,%rdi
    7f01bb404bc4:	48 89 85 18 dc ff ff 	mov    %rax,-0x23e8(%rbp)
    7f01bb404bcb:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb404bd0:	e8 53 7d 8d ff       	callq  0x7f01bacdc928
    7f01bb404bd5:	8b 85 20 e4 ff ff    	mov    -0x1be0(%rbp),%eax
    7f01bb404bdb:	c1 e8 00             	shr    $0x0,%eax
    7f01bb404bde:	8b c0                	mov    %eax,%eax
    7f01bb404be0:	48 c1 e0 16          	shl    $0x16,%rax
    7f01bb404be4:	49 8b 8f 30 3a 00 00 	mov    0x3a30(%r15),%rcx
    7f01bb404beb:	48 33 c1             	xor    %rcx,%rax
    7f01bb404bee:	48 25 00 00 40 00    	and    $0x400000,%rax
    7f01bb404bf4:	48 33 c8             	xor    %rax,%rcx
    7f01bb404bf7:	49 89 8f 30 3a 00 00 	mov    %rcx,0x3a30(%r15)
    7f01bb404bfe:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb404c04:	83 f8 01             	cmp    $0x1,%eax
    7f01bb404c07:	0f 85 0f 00 00 00    	jne    0x7f01bb404c1c
    7f01bb404c0d:	c7 85 10 dc ff ff 00 	movl   $0x0,-0x23f0(%rbp)
    7f01bb404c14:	00 00 00 
    7f01bb404c17:	e9 46 00 00 00       	jmpq   0x7f01bb404c62
    7f01bb404c1c:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb404c22:	83 f8 02             	cmp    $0x2,%eax
    7f01bb404c25:	0f 85 0f 00 00 00    	jne    0x7f01bb404c3a
    7f01bb404c2b:	c7 85 10 dc ff ff 00 	movl   $0x0,-0x23f0(%rbp)
    7f01bb404c32:	00 00 00 
    7f01bb404c35:	e9 28 00 00 00       	jmpq   0x7f01bb404c62
    7f01bb404c3a:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb404c40:	83 f8 03             	cmp    $0x3,%eax
    7f01bb404c43:	0f 85 0f 00 00 00    	jne    0x7f01bb404c58
    7f01bb404c49:	c7 85 10 dc ff ff 01 	movl   $0x1,-0x23f0(%rbp)
    7f01bb404c50:	00 00 00 
    7f01bb404c53:	e9 0a 00 00 00       	jmpq   0x7f01bb404c62
    7f01bb404c58:	c7 85 10 dc ff ff 00 	movl   $0x0,-0x23f0(%rbp)
    7f01bb404c5f:	00 00 00 
    7f01bb404c62:	8b 85 c0 fc ff ff    	mov    -0x340(%rbp),%eax
    7f01bb404c68:	c1 e0 02             	shl    $0x2,%eax
    7f01bb404c6b:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb404c70:	c1 e8 06             	shr    $0x6,%eax
    7f01bb404c73:	89 85 08 dc ff ff    	mov    %eax,-0x23f8(%rbp)
    7f01bb404c79:	ff c0                	inc    %eax
    7f01bb404c7b:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb404c80:	89 85 00 dc ff ff    	mov    %eax,-0x2400(%rbp)
    7f01bb404c86:	8b 85 c0 fc ff ff    	mov    -0x340(%rbp),%eax
    7f01bb404c8c:	c1 e8 05             	shr    $0x5,%eax
    7f01bb404c8f:	89 85 f8 db ff ff    	mov    %eax,-0x2408(%rbp)
    7f01bb404c95:	c1 e0 02             	shl    $0x2,%eax
    7f01bb404c98:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb404c9d:	c1 e8 06             	shr    $0x6,%eax
    7f01bb404ca0:	89 85 f0 db ff ff    	mov    %eax,-0x2410(%rbp)
    7f01bb404ca6:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb404cac:	83 f8 01             	cmp    $0x1,%eax
    7f01bb404caf:	0f 85 11 00 00 00    	jne    0x7f01bb404cc6
    7f01bb404cb5:	8b 85 08 dc ff ff    	mov    -0x23f8(%rbp),%eax
    7f01bb404cbb:	89 85 e8 db ff ff    	mov    %eax,-0x2418(%rbp)
    7f01bb404cc1:	e9 4a 00 00 00       	jmpq   0x7f01bb404d10
    7f01bb404cc6:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb404ccc:	83 f8 02             	cmp    $0x2,%eax
    7f01bb404ccf:	0f 85 11 00 00 00    	jne    0x7f01bb404ce6
    7f01bb404cd5:	8b 85 00 dc ff ff    	mov    -0x2400(%rbp),%eax
    7f01bb404cdb:	89 85 e8 db ff ff    	mov    %eax,-0x2418(%rbp)
    7f01bb404ce1:	e9 2a 00 00 00       	jmpq   0x7f01bb404d10
    7f01bb404ce6:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb404cec:	83 f8 03             	cmp    $0x3,%eax
    7f01bb404cef:	0f 85 11 00 00 00    	jne    0x7f01bb404d06
    7f01bb404cf5:	8b 85 f0 db ff ff    	mov    -0x2410(%rbp),%eax
    7f01bb404cfb:	89 85 e8 db ff ff    	mov    %eax,-0x2418(%rbp)
    7f01bb404d01:	e9 0a 00 00 00       	jmpq   0x7f01bb404d10
    7f01bb404d06:	c7 85 e8 db ff ff 00 	movl   $0x0,-0x2418(%rbp)
    7f01bb404d0d:	00 00 00 
    7f01bb404d10:	41 8b 87 08 30 00 00 	mov    0x3008(%r15),%eax
    7f01bb404d17:	41 8b 8f 0c 30 00 00 	mov    0x300c(%r15),%ecx
    7f01bb404d1e:	41 8b 97 10 30 00 00 	mov    0x3010(%r15),%edx
    7f01bb404d25:	41 8b b7 14 30 00 00 	mov    0x3014(%r15),%esi
    7f01bb404d2c:	41 8b bf 18 30 00 00 	mov    0x3018(%r15),%edi
    7f01bb404d33:	45 8b 87 1c 30 00 00 	mov    0x301c(%r15),%r8d
    7f01bb404d3a:	45 8b 8f 20 30 00 00 	mov    0x3020(%r15),%r9d
    7f01bb404d41:	45 8b 97 24 30 00 00 	mov    0x3024(%r15),%r10d
    7f01bb404d48:	45 8b 9f 28 30 00 00 	mov    0x3028(%r15),%r11d
    7f01bb404d4f:	89 85 e0 db ff ff    	mov    %eax,-0x2420(%rbp)
    7f01bb404d55:	41 8b 87 2c 30 00 00 	mov    0x302c(%r15),%eax
    7f01bb404d5c:	89 8d d8 db ff ff    	mov    %ecx,-0x2428(%rbp)
    7f01bb404d62:	41 8b 8f 30 30 00 00 	mov    0x3030(%r15),%ecx
    7f01bb404d69:	89 95 d0 db ff ff    	mov    %edx,-0x2430(%rbp)
    7f01bb404d6f:	41 8b 97 34 30 00 00 	mov    0x3034(%r15),%edx
    7f01bb404d76:	89 b5 c8 db ff ff    	mov    %esi,-0x2438(%rbp)
    7f01bb404d7c:	41 8b b7 38 30 00 00 	mov    0x3038(%r15),%esi
    7f01bb404d83:	89 bd c0 db ff ff    	mov    %edi,-0x2440(%rbp)
    7f01bb404d89:	41 8b bf 3c 30 00 00 	mov    0x303c(%r15),%edi
    7f01bb404d90:	44 89 85 b8 db ff ff 	mov    %r8d,-0x2448(%rbp)
    7f01bb404d97:	45 8b 87 40 30 00 00 	mov    0x3040(%r15),%r8d
    7f01bb404d9e:	44 89 8d b0 db ff ff 	mov    %r9d,-0x2450(%rbp)
    7f01bb404da5:	45 8b 8f 44 30 00 00 	mov    0x3044(%r15),%r9d
    7f01bb404dac:	44 89 95 a8 db ff ff 	mov    %r10d,-0x2458(%rbp)
    7f01bb404db3:	44 8b 95 e0 db ff ff 	mov    -0x2420(%rbp),%r10d
    7f01bb404dba:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404dbd:	44 89 9d a0 db ff ff 	mov    %r11d,-0x2460(%rbp)
    7f01bb404dc4:	44 8b 9d d8 db ff ff 	mov    -0x2428(%rbp),%r11d
    7f01bb404dcb:	45 8b db             	mov    %r11d,%r11d
    7f01bb404dce:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404dd2:	4d 0b d3             	or     %r11,%r10
    7f01bb404dd5:	4d 89 97 c0 35 00 00 	mov    %r10,0x35c0(%r15)
    7f01bb404ddc:	44 8b 95 d0 db ff ff 	mov    -0x2430(%rbp),%r10d
    7f01bb404de3:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404de6:	44 8b 9d c8 db ff ff 	mov    -0x2438(%rbp),%r11d
    7f01bb404ded:	45 8b db             	mov    %r11d,%r11d
    7f01bb404df0:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404df4:	4d 0b d3             	or     %r11,%r10
    7f01bb404df7:	4d 89 97 c8 35 00 00 	mov    %r10,0x35c8(%r15)
    7f01bb404dfe:	44 8b 95 c0 db ff ff 	mov    -0x2440(%rbp),%r10d
    7f01bb404e05:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404e08:	44 8b 9d b8 db ff ff 	mov    -0x2448(%rbp),%r11d
    7f01bb404e0f:	45 8b db             	mov    %r11d,%r11d
    7f01bb404e12:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404e16:	4d 0b d3             	or     %r11,%r10
    7f01bb404e19:	4d 89 97 d0 35 00 00 	mov    %r10,0x35d0(%r15)
    7f01bb404e20:	44 8b 95 b0 db ff ff 	mov    -0x2450(%rbp),%r10d
    7f01bb404e27:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404e2a:	44 8b 9d a8 db ff ff 	mov    -0x2458(%rbp),%r11d
    7f01bb404e31:	45 8b db             	mov    %r11d,%r11d
    7f01bb404e34:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404e38:	4d 0b d3             	or     %r11,%r10
    7f01bb404e3b:	4d 89 97 d8 35 00 00 	mov    %r10,0x35d8(%r15)
    7f01bb404e42:	44 8b 95 a0 db ff ff 	mov    -0x2460(%rbp),%r10d
    7f01bb404e49:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404e4c:	89 85 98 db ff ff    	mov    %eax,-0x2468(%rbp)
    7f01bb404e52:	8b c0                	mov    %eax,%eax
    7f01bb404e54:	48 c1 e0 20          	shl    $0x20,%rax
    7f01bb404e58:	4c 0b d0             	or     %rax,%r10
    7f01bb404e5b:	4d 89 97 e0 35 00 00 	mov    %r10,0x35e0(%r15)
    7f01bb404e62:	89 8d 90 db ff ff    	mov    %ecx,-0x2470(%rbp)
    7f01bb404e68:	8b c9                	mov    %ecx,%ecx
    7f01bb404e6a:	89 95 88 db ff ff    	mov    %edx,-0x2478(%rbp)
    7f01bb404e70:	8b d2                	mov    %edx,%edx
    7f01bb404e72:	48 c1 e2 20          	shl    $0x20,%rdx
    7f01bb404e76:	48 0b ca             	or     %rdx,%rcx
    7f01bb404e79:	49 89 8f e8 35 00 00 	mov    %rcx,0x35e8(%r15)
    7f01bb404e80:	89 b5 80 db ff ff    	mov    %esi,-0x2480(%rbp)
    7f01bb404e86:	8b f6                	mov    %esi,%esi
    7f01bb404e88:	89 bd 78 db ff ff    	mov    %edi,-0x2488(%rbp)
    7f01bb404e8e:	8b ff                	mov    %edi,%edi
    7f01bb404e90:	48 c1 e7 20          	shl    $0x20,%rdi
    7f01bb404e94:	48 0b f7             	or     %rdi,%rsi
    7f01bb404e97:	49 89 b7 f0 35 00 00 	mov    %rsi,0x35f0(%r15)
    7f01bb404e9e:	44 89 85 70 db ff ff 	mov    %r8d,-0x2490(%rbp)
    7f01bb404ea5:	45 8b c0             	mov    %r8d,%r8d
    7f01bb404ea8:	45 8b c9             	mov    %r9d,%r9d
    7f01bb404eab:	49 c1 e1 20          	shl    $0x20,%r9
    7f01bb404eaf:	4d 0b c1             	or     %r9,%r8
    7f01bb404eb2:	4d 89 87 f8 35 00 00 	mov    %r8,0x35f8(%r15)
    7f01bb404eb9:	41 8b 87 48 30 00 00 	mov    0x3048(%r15),%eax
    7f01bb404ec0:	41 8b 8f 4c 30 00 00 	mov    0x304c(%r15),%ecx
    7f01bb404ec7:	41 8b 97 50 30 00 00 	mov    0x3050(%r15),%edx
    7f01bb404ece:	41 8b b7 54 30 00 00 	mov    0x3054(%r15),%esi
    7f01bb404ed5:	41 8b bf 58 30 00 00 	mov    0x3058(%r15),%edi
    7f01bb404edc:	45 8b 87 5c 30 00 00 	mov    0x305c(%r15),%r8d
    7f01bb404ee3:	45 8b 8f 60 30 00 00 	mov    0x3060(%r15),%r9d
    7f01bb404eea:	45 8b 97 64 30 00 00 	mov    0x3064(%r15),%r10d
    7f01bb404ef1:	45 8b 9f 68 30 00 00 	mov    0x3068(%r15),%r11d
    7f01bb404ef8:	89 85 68 db ff ff    	mov    %eax,-0x2498(%rbp)
    7f01bb404efe:	41 8b 87 6c 30 00 00 	mov    0x306c(%r15),%eax
    7f01bb404f05:	89 8d 60 db ff ff    	mov    %ecx,-0x24a0(%rbp)
    7f01bb404f0b:	41 8b 8f 70 30 00 00 	mov    0x3070(%r15),%ecx
    7f01bb404f12:	89 95 58 db ff ff    	mov    %edx,-0x24a8(%rbp)
    7f01bb404f18:	41 8b 97 74 30 00 00 	mov    0x3074(%r15),%edx
    7f01bb404f1f:	89 b5 50 db ff ff    	mov    %esi,-0x24b0(%rbp)
    7f01bb404f25:	41 8b b7 78 30 00 00 	mov    0x3078(%r15),%esi
    7f01bb404f2c:	89 bd 48 db ff ff    	mov    %edi,-0x24b8(%rbp)
    7f01bb404f32:	41 8b bf 7c 30 00 00 	mov    0x307c(%r15),%edi
    7f01bb404f39:	44 89 85 40 db ff ff 	mov    %r8d,-0x24c0(%rbp)
    7f01bb404f40:	45 8b 87 80 30 00 00 	mov    0x3080(%r15),%r8d
    7f01bb404f47:	44 89 8d 38 db ff ff 	mov    %r9d,-0x24c8(%rbp)
    7f01bb404f4e:	45 8b 8f 84 30 00 00 	mov    0x3084(%r15),%r9d
    7f01bb404f55:	44 89 95 30 db ff ff 	mov    %r10d,-0x24d0(%rbp)
    7f01bb404f5c:	44 8b 95 68 db ff ff 	mov    -0x2498(%rbp),%r10d
    7f01bb404f63:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404f66:	44 89 9d 28 db ff ff 	mov    %r11d,-0x24d8(%rbp)
    7f01bb404f6d:	44 8b 9d 60 db ff ff 	mov    -0x24a0(%rbp),%r11d
    7f01bb404f74:	45 8b db             	mov    %r11d,%r11d
    7f01bb404f77:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404f7b:	4d 0b d3             	or     %r11,%r10
    7f01bb404f7e:	4d 89 97 00 36 00 00 	mov    %r10,0x3600(%r15)
    7f01bb404f85:	44 8b 95 58 db ff ff 	mov    -0x24a8(%rbp),%r10d
    7f01bb404f8c:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404f8f:	44 8b 9d 50 db ff ff 	mov    -0x24b0(%rbp),%r11d
    7f01bb404f96:	45 8b db             	mov    %r11d,%r11d
    7f01bb404f99:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404f9d:	4d 0b d3             	or     %r11,%r10
    7f01bb404fa0:	4d 89 97 08 36 00 00 	mov    %r10,0x3608(%r15)
    7f01bb404fa7:	44 8b 95 48 db ff ff 	mov    -0x24b8(%rbp),%r10d
    7f01bb404fae:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404fb1:	44 8b 9d 40 db ff ff 	mov    -0x24c0(%rbp),%r11d
    7f01bb404fb8:	45 8b db             	mov    %r11d,%r11d
    7f01bb404fbb:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404fbf:	4d 0b d3             	or     %r11,%r10
    7f01bb404fc2:	4d 89 97 10 36 00 00 	mov    %r10,0x3610(%r15)
    7f01bb404fc9:	44 8b 95 38 db ff ff 	mov    -0x24c8(%rbp),%r10d
    7f01bb404fd0:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404fd3:	44 8b 9d 30 db ff ff 	mov    -0x24d0(%rbp),%r11d
    7f01bb404fda:	45 8b db             	mov    %r11d,%r11d
    7f01bb404fdd:	49 c1 e3 20          	shl    $0x20,%r11
    7f01bb404fe1:	4d 0b d3             	or     %r11,%r10
    7f01bb404fe4:	4d 89 97 18 36 00 00 	mov    %r10,0x3618(%r15)
    7f01bb404feb:	44 8b 95 28 db ff ff 	mov    -0x24d8(%rbp),%r10d
    7f01bb404ff2:	45 8b d2             	mov    %r10d,%r10d
    7f01bb404ff5:	89 85 20 db ff ff    	mov    %eax,-0x24e0(%rbp)
    7f01bb404ffb:	8b c0                	mov    %eax,%eax
    7f01bb404ffd:	48 c1 e0 20          	shl    $0x20,%rax
    7f01bb405001:	4c 0b d0             	or     %rax,%r10
    7f01bb405004:	4d 89 97 20 36 00 00 	mov    %r10,0x3620(%r15)
    7f01bb40500b:	89 8d 18 db ff ff    	mov    %ecx,-0x24e8(%rbp)
    7f01bb405011:	8b c9                	mov    %ecx,%ecx
    7f01bb405013:	89 95 10 db ff ff    	mov    %edx,-0x24f0(%rbp)
    7f01bb405019:	8b d2                	mov    %edx,%edx
    7f01bb40501b:	48 c1 e2 20          	shl    $0x20,%rdx
    7f01bb40501f:	48 0b ca             	or     %rdx,%rcx
    7f01bb405022:	49 89 8f 28 36 00 00 	mov    %rcx,0x3628(%r15)
    7f01bb405029:	89 b5 08 db ff ff    	mov    %esi,-0x24f8(%rbp)
    7f01bb40502f:	8b f6                	mov    %esi,%esi
    7f01bb405031:	89 bd 00 db ff ff    	mov    %edi,-0x2500(%rbp)
    7f01bb405037:	8b ff                	mov    %edi,%edi
    7f01bb405039:	48 c1 e7 20          	shl    $0x20,%rdi
    7f01bb40503d:	48 0b f7             	or     %rdi,%rsi
    7f01bb405040:	49 89 b7 30 36 00 00 	mov    %rsi,0x3630(%r15)
    7f01bb405047:	44 89 85 f8 da ff ff 	mov    %r8d,-0x2508(%rbp)
    7f01bb40504e:	45 8b c0             	mov    %r8d,%r8d
    7f01bb405051:	45 8b c9             	mov    %r9d,%r9d
    7f01bb405054:	49 c1 e1 20          	shl    $0x20,%r9
    7f01bb405058:	4d 0b c1             	or     %r9,%r8
    7f01bb40505b:	4d 89 87 38 36 00 00 	mov    %r8,0x3638(%r15)
    7f01bb405062:	8b 85 d8 fc ff ff    	mov    -0x328(%rbp),%eax
    7f01bb405068:	8b c0                	mov    %eax,%eax
    7f01bb40506a:	48 89 85 f0 da ff ff 	mov    %rax,-0x2510(%rbp)
    7f01bb405071:	48 8d 85 f0 da ff ff 	lea    -0x2510(%rbp),%rax
    7f01bb405078:	49 8b cf             	mov    %r15,%rcx
    7f01bb40507b:	48 81 c1 40 36 00 00 	add    $0x3640,%rcx
    7f01bb405082:	48 89 8d e8 da ff ff 	mov    %rcx,-0x2518(%rbp)
    7f01bb405089:	b9 20 00 00 00       	mov    $0x20,%ecx
    7f01bb40508e:	48 8b d0             	mov    %rax,%rdx
    7f01bb405091:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb405096:	48 8b bd e8 da ff ff 	mov    -0x2518(%rbp),%rdi
    7f01bb40509d:	48 89 85 e0 da ff ff 	mov    %rax,-0x2520(%rbp)
    7f01bb4050a4:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb4050a9:	e8 f8 ce 8c ff       	callq  0x7f01bacd1fa6
    7f01bb4050ae:	8b 85 f8 db ff ff    	mov    -0x2408(%rbp),%eax
    7f01bb4050b4:	83 e0 0f             	and    $0xf,%eax
    7f01bb4050b7:	c1 e0 05             	shl    $0x5,%eax
    7f01bb4050ba:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4050bf:	49 8b cf             	mov    %r15,%rcx
    7f01bb4050c2:	48 81 c1 40 36 00 00 	add    $0x3640,%rcx
    7f01bb4050c9:	49 8b d7             	mov    %r15,%rdx
    7f01bb4050cc:	48 81 c2 80 36 00 00 	add    $0x3680,%rdx
    7f01bb4050d3:	44 8b c0             	mov    %eax,%r8d
    7f01bb4050d6:	48 89 8d d8 da ff ff 	mov    %rcx,-0x2528(%rbp)
    7f01bb4050dd:	b9 00 02 00 00       	mov    $0x200,%ecx
    7f01bb4050e2:	48 89 95 d0 da ff ff 	mov    %rdx,-0x2530(%rbp)
    7f01bb4050e9:	48 8b 95 d8 da ff ff 	mov    -0x2528(%rbp),%rdx
    7f01bb4050f0:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb4050f5:	48 8b bd d0 da ff ff 	mov    -0x2530(%rbp),%rdi
    7f01bb4050fc:	89 85 c8 da ff ff    	mov    %eax,-0x2538(%rbp)
    7f01bb405102:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405107:	e8 ce c0 8c ff       	callq  0x7f01bacd11da
    7f01bb40510c:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb405112:	83 f8 01             	cmp    $0x1,%eax
    7f01bb405115:	0f 85 36 00 00 00    	jne    0x7f01bb405151
    7f01bb40511b:	49 8b c7             	mov    %r15,%rax
    7f01bb40511e:	48 05 c0 36 00 00    	add    $0x36c0,%rax
    7f01bb405124:	49 8b cf             	mov    %r15,%rcx
    7f01bb405127:	48 81 c1 c0 35 00 00 	add    $0x35c0,%rcx
    7f01bb40512e:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405131:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405134:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405138:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40513c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405140:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405144:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405148:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40514c:	e9 bb 00 00 00       	jmpq   0x7f01bb40520c
    7f01bb405151:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb405157:	83 f8 02             	cmp    $0x2,%eax
    7f01bb40515a:	0f 85 36 00 00 00    	jne    0x7f01bb405196
    7f01bb405160:	49 8b c7             	mov    %r15,%rax
    7f01bb405163:	48 05 c0 36 00 00    	add    $0x36c0,%rax
    7f01bb405169:	49 8b cf             	mov    %r15,%rcx
    7f01bb40516c:	48 81 c1 00 36 00 00 	add    $0x3600,%rcx
    7f01bb405173:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405176:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405179:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40517d:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405181:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405185:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405189:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40518d:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405191:	e9 76 00 00 00       	jmpq   0x7f01bb40520c
    7f01bb405196:	8b 85 b0 fc ff ff    	mov    -0x350(%rbp),%eax
    7f01bb40519c:	83 f8 03             	cmp    $0x3,%eax
    7f01bb40519f:	0f 85 36 00 00 00    	jne    0x7f01bb4051db
    7f01bb4051a5:	49 8b c7             	mov    %r15,%rax
    7f01bb4051a8:	48 05 c0 36 00 00    	add    $0x36c0,%rax
    7f01bb4051ae:	49 8b cf             	mov    %r15,%rcx
    7f01bb4051b1:	48 81 c1 80 36 00 00 	add    $0x3680,%rcx
    7f01bb4051b8:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4051bb:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4051be:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4051c2:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4051c6:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4051ca:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4051ce:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4051d2:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4051d6:	e9 31 00 00 00       	jmpq   0x7f01bb40520c
    7f01bb4051db:	49 8b c7             	mov    %r15,%rax
    7f01bb4051de:	48 05 c0 36 00 00    	add    $0x36c0,%rax
    7f01bb4051e4:	49 8b cf             	mov    %r15,%rcx
    7f01bb4051e7:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb4051ee:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4051f1:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4051f4:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4051f8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4051fc:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405200:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405204:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405208:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40520c:	49 8b c7             	mov    %r15,%rax
    7f01bb40520f:	48 05 38 3a 00 00    	add    $0x3a38,%rax
    7f01bb405215:	8b 8d 10 dc ff ff    	mov    -0x23f0(%rbp),%ecx
    7f01bb40521b:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb40521e:	8b c9                	mov    %ecx,%ecx
    7f01bb405220:	48 c1 e1 00          	shl    $0x0,%rcx
    7f01bb405224:	49 8b 97 38 3a 00 00 	mov    0x3a38(%r15),%rdx
    7f01bb40522b:	48 33 ca             	xor    %rdx,%rcx
    7f01bb40522e:	48 83 e1 03          	and    $0x3,%rcx
    7f01bb405232:	48 33 d1             	xor    %rcx,%rdx
    7f01bb405235:	49 89 97 38 3a 00 00 	mov    %rdx,0x3a38(%r15)
    7f01bb40523c:	8b 8d e8 db ff ff    	mov    -0x2418(%rbp),%ecx
    7f01bb405242:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb405245:	8b c9                	mov    %ecx,%ecx
    7f01bb405247:	48 c1 e1 02          	shl    $0x2,%rcx
    7f01bb40524b:	49 8b 97 38 3a 00 00 	mov    0x3a38(%r15),%rdx
    7f01bb405252:	48 33 ca             	xor    %rdx,%rcx
    7f01bb405255:	48 81 e1 fc ff 3f 00 	and    $0x3ffffc,%rcx
    7f01bb40525c:	48 33 d1             	xor    %rcx,%rdx
    7f01bb40525f:	49 89 97 38 3a 00 00 	mov    %rdx,0x3a38(%r15)
    7f01bb405266:	49 8b cf             	mov    %r15,%rcx
    7f01bb405269:	48 81 c1 c0 36 00 00 	add    $0x36c0,%rcx
    7f01bb405270:	41 b8 00 02 00 00    	mov    $0x200,%r8d
    7f01bb405276:	48 89 8d c0 da ff ff 	mov    %rcx,-0x2540(%rbp)
    7f01bb40527d:	33 c9                	xor    %ecx,%ecx
    7f01bb40527f:	48 8b 95 c0 da ff ff 	mov    -0x2540(%rbp),%rdx
    7f01bb405286:	be 16 00 00 00       	mov    $0x16,%esi
    7f01bb40528b:	48 8b f8             	mov    %rax,%rdi
    7f01bb40528e:	48 89 85 b8 da ff ff 	mov    %rax,-0x2548(%rbp)
    7f01bb405295:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb40529a:	e8 89 76 8d ff       	callq  0x7f01bacdc928
    7f01bb40529f:	8b 85 28 e4 ff ff    	mov    -0x1bd8(%rbp),%eax
    7f01bb4052a5:	c1 e8 00             	shr    $0x0,%eax
    7f01bb4052a8:	8b c0                	mov    %eax,%eax
    7f01bb4052aa:	48 c1 e0 16          	shl    $0x16,%rax
    7f01bb4052ae:	49 8b 8f 78 3a 00 00 	mov    0x3a78(%r15),%rcx
    7f01bb4052b5:	48 33 c1             	xor    %rcx,%rax
    7f01bb4052b8:	48 25 00 00 40 00    	and    $0x400000,%rax
    7f01bb4052be:	48 33 c8             	xor    %rax,%rcx
    7f01bb4052c1:	49 89 8f 78 3a 00 00 	mov    %rcx,0x3a78(%r15)
    7f01bb4052c8:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4052ce:	83 f8 03             	cmp    $0x3,%eax
    7f01bb4052d1:	0f 85 0f 00 00 00    	jne    0x7f01bb4052e6
    7f01bb4052d7:	c7 85 b0 da ff ff 01 	movl   $0x1,-0x2550(%rbp)
    7f01bb4052de:	00 00 00 
    7f01bb4052e1:	e9 28 00 00 00       	jmpq   0x7f01bb40530e
    7f01bb4052e6:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4052ec:	83 f8 04             	cmp    $0x4,%eax
    7f01bb4052ef:	0f 85 0f 00 00 00    	jne    0x7f01bb405304
    7f01bb4052f5:	c7 85 b0 da ff ff 02 	movl   $0x2,-0x2550(%rbp)
    7f01bb4052fc:	00 00 00 
    7f01bb4052ff:	e9 0a 00 00 00       	jmpq   0x7f01bb40530e
    7f01bb405304:	c7 85 b0 da ff ff 00 	movl   $0x0,-0x2550(%rbp)
    7f01bb40530b:	00 00 00 
    7f01bb40530e:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb405314:	83 f8 04             	cmp    $0x4,%eax
    7f01bb405317:	0f 85 11 00 00 00    	jne    0x7f01bb40532e
    7f01bb40531d:	8b 85 20 fb ff ff    	mov    -0x4e0(%rbp),%eax
    7f01bb405323:	89 85 a8 da ff ff    	mov    %eax,-0x2558(%rbp)
    7f01bb405329:	e9 0a 00 00 00       	jmpq   0x7f01bb405338
    7f01bb40532e:	c7 85 a8 da ff ff 00 	movl   $0x0,-0x2558(%rbp)
    7f01bb405335:	00 00 00 
    7f01bb405338:	49 8b c7             	mov    %r15,%rax
    7f01bb40533b:	48 05 40 38 00 00    	add    $0x3840,%rax
    7f01bb405341:	49 8b cf             	mov    %r15,%rcx
    7f01bb405344:	48 81 c1 78 46 00 00 	add    $0x4678,%rcx
    7f01bb40534b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40534e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405351:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405355:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405359:	48 8b 51 20          	mov    0x20(%rcx),%rdx
    7f01bb40535d:	48 89 50 20          	mov    %rdx,0x20(%rax)
    7f01bb405361:	8b 51 28             	mov    0x28(%rcx),%edx
    7f01bb405364:	89 50 28             	mov    %edx,0x28(%rax)
    7f01bb405367:	48 8b 85 b8 fc ff ff 	mov    -0x348(%rbp),%rax
    7f01bb40536e:	48 c1 e8 00          	shr    $0x0,%rax
    7f01bb405372:	48 8b c8             	mov    %rax,%rcx
    7f01bb405375:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb405379:	49 8b 97 68 38 00 00 	mov    0x3868(%r15),%rdx
    7f01bb405380:	48 33 ca             	xor    %rdx,%rcx
    7f01bb405383:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7f01bb40538a:	ff ff ff 
    7f01bb40538d:	48 23 ce             	and    %rsi,%rcx
    7f01bb405390:	48 33 d1             	xor    %rcx,%rdx
    7f01bb405393:	49 89 97 68 38 00 00 	mov    %rdx,0x3868(%r15)
    7f01bb40539a:	49 8b 8f 70 38 00 00 	mov    0x3870(%r15),%rcx
    7f01bb4053a1:	48 c1 e8 20          	shr    $0x20,%rax
    7f01bb4053a5:	48 33 c1             	xor    %rcx,%rax
    7f01bb4053a8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7f01bb4053ad:	48 23 c2             	and    %rdx,%rax
    7f01bb4053b0:	48 33 c8             	xor    %rax,%rcx
    7f01bb4053b3:	49 89 8f 70 38 00 00 	mov    %rcx,0x3870(%r15)
    7f01bb4053ba:	49 8b c7             	mov    %r15,%rax
    7f01bb4053bd:	48 05 40 38 00 00    	add    $0x3840,%rax
    7f01bb4053c3:	49 8b cf             	mov    %r15,%rcx
    7f01bb4053c6:	48 81 c1 78 38 00 00 	add    $0x3878,%rcx
    7f01bb4053cd:	48 89 8d a0 da ff ff 	mov    %rcx,-0x2560(%rbp)
    7f01bb4053d4:	b9 a0 01 00 00       	mov    $0x1a0,%ecx
    7f01bb4053d9:	48 8b d0             	mov    %rax,%rdx
    7f01bb4053dc:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb4053e1:	48 8b bd a0 da ff ff 	mov    -0x2560(%rbp),%rdi
    7f01bb4053e8:	48 89 85 98 da ff ff 	mov    %rax,-0x2568(%rbp)
    7f01bb4053ef:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb4053f4:	e8 ad cb 8c ff       	callq  0x7f01bacd1fa6
    7f01bb4053f9:	49 8b c7             	mov    %r15,%rax
    7f01bb4053fc:	48 05 58 51 00 00    	add    $0x5158,%rax
    7f01bb405402:	49 8b cf             	mov    %r15,%rcx
    7f01bb405405:	48 81 c1 b8 38 00 00 	add    $0x38b8,%rcx
    7f01bb40540c:	48 89 8d 90 da ff ff 	mov    %rcx,-0x2570(%rbp)
    7f01bb405413:	b9 60 00 00 00       	mov    $0x60,%ecx
    7f01bb405418:	48 8b d0             	mov    %rax,%rdx
    7f01bb40541b:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb405420:	48 8b bd 90 da ff ff 	mov    -0x2570(%rbp),%rdi
    7f01bb405427:	48 89 85 88 da ff ff 	mov    %rax,-0x2578(%rbp)
    7f01bb40542e:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405433:	e8 6e cb 8c ff       	callq  0x7f01bacd1fa6
    7f01bb405438:	49 8b c7             	mov    %r15,%rax
    7f01bb40543b:	48 05 f8 38 00 00    	add    $0x38f8,%rax
    7f01bb405441:	49 8b cf             	mov    %r15,%rcx
    7f01bb405444:	48 81 c1 a8 4b 00 00 	add    $0x4ba8,%rcx
    7f01bb40544b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40544e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405451:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405455:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405459:	48 8b 51 20          	mov    0x20(%rcx),%rdx
    7f01bb40545d:	48 89 50 20          	mov    %rdx,0x20(%rax)
    7f01bb405461:	8b 51 28             	mov    0x28(%rcx),%edx
    7f01bb405464:	89 50 28             	mov    %edx,0x28(%rax)
    7f01bb405467:	48 8b 85 20 fc ff ff 	mov    -0x3e0(%rbp),%rax
    7f01bb40546e:	48 c1 e8 00          	shr    $0x0,%rax
    7f01bb405472:	48 8b c8             	mov    %rax,%rcx
    7f01bb405475:	48 c1 e1 20          	shl    $0x20,%rcx
    7f01bb405479:	49 8b 97 20 39 00 00 	mov    0x3920(%r15),%rdx
    7f01bb405480:	48 33 ca             	xor    %rdx,%rcx
    7f01bb405483:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7f01bb40548a:	ff ff ff 
    7f01bb40548d:	48 23 ce             	and    %rsi,%rcx
    7f01bb405490:	48 33 d1             	xor    %rcx,%rdx
    7f01bb405493:	49 89 97 20 39 00 00 	mov    %rdx,0x3920(%r15)
    7f01bb40549a:	49 8b 8f 28 39 00 00 	mov    0x3928(%r15),%rcx
    7f01bb4054a1:	48 c1 e8 20          	shr    $0x20,%rax
    7f01bb4054a5:	48 33 c1             	xor    %rcx,%rax
    7f01bb4054a8:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7f01bb4054ad:	48 23 c2             	and    %rdx,%rax
    7f01bb4054b0:	48 33 c8             	xor    %rax,%rcx
    7f01bb4054b3:	49 89 8f 28 39 00 00 	mov    %rcx,0x3928(%r15)
    7f01bb4054ba:	49 8b c7             	mov    %r15,%rax
    7f01bb4054bd:	48 05 f8 38 00 00    	add    $0x38f8,%rax
    7f01bb4054c3:	49 8b cf             	mov    %r15,%rcx
    7f01bb4054c6:	48 81 c1 30 39 00 00 	add    $0x3930,%rcx
    7f01bb4054cd:	48 89 8d 80 da ff ff 	mov    %rcx,-0x2580(%rbp)
    7f01bb4054d4:	b9 a0 01 00 00       	mov    $0x1a0,%ecx
    7f01bb4054d9:	48 8b d0             	mov    %rax,%rdx
    7f01bb4054dc:	be 00 02 00 00       	mov    $0x200,%esi
    7f01bb4054e1:	48 8b bd 80 da ff ff 	mov    -0x2580(%rbp),%rdi
    7f01bb4054e8:	48 89 85 78 da ff ff 	mov    %rax,-0x2588(%rbp)
    7f01bb4054ef:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb4054f4:	e8 ad ca 8c ff       	callq  0x7f01bacd1fa6
    7f01bb4054f9:	8b 85 20 fb ff ff    	mov    -0x4e0(%rbp),%eax
    7f01bb4054ff:	83 f8 01             	cmp    $0x1,%eax
    7f01bb405502:	0f 85 36 00 00 00    	jne    0x7f01bb40553e
    7f01bb405508:	49 8b c7             	mov    %r15,%rax
    7f01bb40550b:	48 05 70 39 00 00    	add    $0x3970,%rax
    7f01bb405511:	49 8b cf             	mov    %r15,%rcx
    7f01bb405514:	48 81 c1 78 38 00 00 	add    $0x3878,%rcx
    7f01bb40551b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40551e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405521:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405525:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405529:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40552d:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405531:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405535:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405539:	e9 75 00 00 00       	jmpq   0x7f01bb4055b3
    7f01bb40553e:	8b 85 20 fb ff ff    	mov    -0x4e0(%rbp),%eax
    7f01bb405544:	85 c0                	test   %eax,%eax
    7f01bb405546:	0f 85 36 00 00 00    	jne    0x7f01bb405582
    7f01bb40554c:	49 8b c7             	mov    %r15,%rax
    7f01bb40554f:	48 05 70 39 00 00    	add    $0x3970,%rax
    7f01bb405555:	49 8b cf             	mov    %r15,%rcx
    7f01bb405558:	48 81 c1 b8 38 00 00 	add    $0x38b8,%rcx
    7f01bb40555f:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405562:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405565:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405569:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40556d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405571:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405575:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405579:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40557d:	e9 31 00 00 00       	jmpq   0x7f01bb4055b3
    7f01bb405582:	49 8b c7             	mov    %r15,%rax
    7f01bb405585:	48 05 70 39 00 00    	add    $0x3970,%rax
    7f01bb40558b:	49 8b cf             	mov    %r15,%rcx
    7f01bb40558e:	48 81 c1 30 39 00 00 	add    $0x3930,%rcx
    7f01bb405595:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405598:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40559b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40559f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4055a3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4055a7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4055ab:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4055af:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4055b3:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4055b9:	83 f8 04             	cmp    $0x4,%eax
    7f01bb4055bc:	0f 85 36 00 00 00    	jne    0x7f01bb4055f8
    7f01bb4055c2:	49 8b c7             	mov    %r15,%rax
    7f01bb4055c5:	48 05 b0 39 00 00    	add    $0x39b0,%rax
    7f01bb4055cb:	49 8b cf             	mov    %r15,%rcx
    7f01bb4055ce:	48 81 c1 70 39 00 00 	add    $0x3970,%rcx
    7f01bb4055d5:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4055d8:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4055db:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4055df:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4055e3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4055e7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4055eb:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4055ef:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4055f3:	e9 31 00 00 00       	jmpq   0x7f01bb405629
    7f01bb4055f8:	49 8b c7             	mov    %r15,%rax
    7f01bb4055fb:	48 05 b0 39 00 00    	add    $0x39b0,%rax
    7f01bb405601:	49 8b cf             	mov    %r15,%rcx
    7f01bb405604:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb40560b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40560e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405611:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405615:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405619:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40561d:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405621:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405625:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405629:	49 8b c7             	mov    %r15,%rax
    7f01bb40562c:	48 05 80 3a 00 00    	add    $0x3a80,%rax
    7f01bb405632:	8b 8d b0 da ff ff    	mov    -0x2550(%rbp),%ecx
    7f01bb405638:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb40563b:	8b c9                	mov    %ecx,%ecx
    7f01bb40563d:	48 c1 e1 00          	shl    $0x0,%rcx
    7f01bb405641:	49 8b 97 80 3a 00 00 	mov    0x3a80(%r15),%rdx
    7f01bb405648:	48 33 ca             	xor    %rdx,%rcx
    7f01bb40564b:	48 83 e1 03          	and    $0x3,%rcx
    7f01bb40564f:	48 33 d1             	xor    %rcx,%rdx
    7f01bb405652:	49 89 97 80 3a 00 00 	mov    %rdx,0x3a80(%r15)
    7f01bb405659:	8b 8d a8 da ff ff    	mov    -0x2558(%rbp),%ecx
    7f01bb40565f:	c1 e9 00             	shr    $0x0,%ecx
    7f01bb405662:	8b c9                	mov    %ecx,%ecx
    7f01bb405664:	48 c1 e1 02          	shl    $0x2,%rcx
    7f01bb405668:	49 8b 97 80 3a 00 00 	mov    0x3a80(%r15),%rdx
    7f01bb40566f:	48 33 ca             	xor    %rdx,%rcx
    7f01bb405672:	48 81 e1 fc ff 3f 00 	and    $0x3ffffc,%rcx
    7f01bb405679:	48 33 d1             	xor    %rcx,%rdx
    7f01bb40567c:	49 89 97 80 3a 00 00 	mov    %rdx,0x3a80(%r15)
    7f01bb405683:	49 8b cf             	mov    %r15,%rcx
    7f01bb405686:	48 81 c1 b0 39 00 00 	add    $0x39b0,%rcx
    7f01bb40568d:	41 b8 00 02 00 00    	mov    $0x200,%r8d
    7f01bb405693:	48 89 8d 70 da ff ff 	mov    %rcx,-0x2590(%rbp)
    7f01bb40569a:	33 c9                	xor    %ecx,%ecx
    7f01bb40569c:	48 8b 95 70 da ff ff 	mov    -0x2590(%rbp),%rdx
    7f01bb4056a3:	be 16 00 00 00       	mov    $0x16,%esi
    7f01bb4056a8:	48 8b f8             	mov    %rax,%rdi
    7f01bb4056ab:	48 89 85 68 da ff ff 	mov    %rax,-0x2598(%rbp)
    7f01bb4056b2:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb4056b7:	e8 6c 72 8d ff       	callq  0x7f01bacdc928
    7f01bb4056bc:	8b 85 08 e4 ff ff    	mov    -0x1bf8(%rbp),%eax
    7f01bb4056c2:	c1 e8 00             	shr    $0x0,%eax
    7f01bb4056c5:	8b c0                	mov    %eax,%eax
    7f01bb4056c7:	48 c1 e0 16          	shl    $0x16,%rax
    7f01bb4056cb:	49 8b 8f c0 3a 00 00 	mov    0x3ac0(%r15),%rcx
    7f01bb4056d2:	48 33 c1             	xor    %rcx,%rax
    7f01bb4056d5:	48 25 00 00 40 00    	and    $0x400000,%rax
    7f01bb4056db:	48 33 c8             	xor    %rax,%rcx
    7f01bb4056de:	49 89 8f c0 3a 00 00 	mov    %rcx,0x3ac0(%r15)
    7f01bb4056e5:	8b 85 d8 e3 ff ff    	mov    -0x1c28(%rbp),%eax
    7f01bb4056eb:	83 f8 02             	cmp    $0x2,%eax
    7f01bb4056ee:	0f 85 2d 00 00 00    	jne    0x7f01bb405721
    7f01bb4056f4:	49 8b c7             	mov    %r15,%rax
    7f01bb4056f7:	48 05 c8 3a 00 00    	add    $0x3ac8,%rax
    7f01bb4056fd:	49 8b cf             	mov    %r15,%rcx
    7f01bb405700:	48 81 c1 f0 39 00 00 	add    $0x39f0,%rcx
    7f01bb405707:	48 8b f1             	mov    %rcx,%rsi
    7f01bb40570a:	48 8b f8             	mov    %rax,%rdi
    7f01bb40570d:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb405712:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405717:	e8 54 47 97 ff       	callq  0x7f01bad79e70
    7f01bb40571c:	e9 64 00 00 00       	jmpq   0x7f01bb405785
    7f01bb405721:	8b 85 d8 e3 ff ff    	mov    -0x1c28(%rbp),%eax
    7f01bb405727:	83 f8 01             	cmp    $0x1,%eax
    7f01bb40572a:	0f 85 2d 00 00 00    	jne    0x7f01bb40575d
    7f01bb405730:	49 8b c7             	mov    %r15,%rax
    7f01bb405733:	48 05 c8 3a 00 00    	add    $0x3ac8,%rax
    7f01bb405739:	49 8b cf             	mov    %r15,%rcx
    7f01bb40573c:	48 81 c1 38 3a 00 00 	add    $0x3a38,%rcx
    7f01bb405743:	48 8b f1             	mov    %rcx,%rsi
    7f01bb405746:	48 8b f8             	mov    %rax,%rdi
    7f01bb405749:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb40574e:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405753:	e8 18 47 97 ff       	callq  0x7f01bad79e70
    7f01bb405758:	e9 28 00 00 00       	jmpq   0x7f01bb405785
    7f01bb40575d:	49 8b c7             	mov    %r15,%rax
    7f01bb405760:	48 05 c8 3a 00 00    	add    $0x3ac8,%rax
    7f01bb405766:	49 8b cf             	mov    %r15,%rcx
    7f01bb405769:	48 81 c1 80 3a 00 00 	add    $0x3a80,%rcx
    7f01bb405770:	48 8b f1             	mov    %rcx,%rsi
    7f01bb405773:	48 8b f8             	mov    %rax,%rdi
    7f01bb405776:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb40577b:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405780:	e8 eb 46 97 ff       	callq  0x7f01bad79e70
    7f01bb405785:	49 0f b6 87 0a 3b 00 	movzbq 0x3b0a(%r15),%rax
    7f01bb40578c:	00 
    7f01bb40578d:	c1 e8 06             	shr    $0x6,%eax
    7f01bb405790:	83 e0 01             	and    $0x1,%eax
    7f01bb405793:	89 85 60 da ff ff    	mov    %eax,-0x25a0(%rbp)
    7f01bb405799:	49 0f b6 87 c8 3a 00 	movzbq 0x3ac8(%r15),%rax
    7f01bb4057a0:	00 
    7f01bb4057a1:	83 e0 03             	and    $0x3,%eax
    7f01bb4057a4:	83 f8 01             	cmp    $0x1,%eax
    7f01bb4057a7:	0f 94 c0             	sete   %al
    7f01bb4057aa:	0f b6 c0             	movzbl %al,%eax
    7f01bb4057ad:	89 85 58 da ff ff    	mov    %eax,-0x25a8(%rbp)
    7f01bb4057b3:	8b 85 d8 e3 ff ff    	mov    -0x1c28(%rbp),%eax
    7f01bb4057b9:	83 f8 04             	cmp    $0x4,%eax
    7f01bb4057bc:	0f 94 c0             	sete   %al
    7f01bb4057bf:	0f b6 c0             	movzbl %al,%eax
    7f01bb4057c2:	89 85 50 da ff ff    	mov    %eax,-0x25b0(%rbp)
    7f01bb4057c8:	85 c0                	test   %eax,%eax
    7f01bb4057ca:	0f 84 0f 00 00 00    	je     0x7f01bb4057df
    7f01bb4057d0:	c7 85 48 da ff ff 03 	movl   $0x3,-0x25b8(%rbp)
    7f01bb4057d7:	00 00 00 
    7f01bb4057da:	e9 0a 00 00 00       	jmpq   0x7f01bb4057e9
    7f01bb4057df:	c7 85 48 da ff ff 02 	movl   $0x2,-0x25b8(%rbp)
    7f01bb4057e6:	00 00 00 
    7f01bb4057e9:	8b 85 58 da ff ff    	mov    -0x25a8(%rbp),%eax
    7f01bb4057ef:	85 c0                	test   %eax,%eax
    7f01bb4057f1:	0f 84 11 00 00 00    	je     0x7f01bb405808
    7f01bb4057f7:	8b 85 48 da ff ff    	mov    -0x25b8(%rbp),%eax
    7f01bb4057fd:	89 85 40 da ff ff    	mov    %eax,-0x25c0(%rbp)
    7f01bb405803:	e9 0a 00 00 00       	jmpq   0x7f01bb405812
    7f01bb405808:	c7 85 40 da ff ff 01 	movl   $0x1,-0x25c0(%rbp)
    7f01bb40580f:	00 00 00 
    7f01bb405812:	8b 85 60 da ff ff    	mov    -0x25a0(%rbp),%eax
    7f01bb405818:	85 c0                	test   %eax,%eax
    7f01bb40581a:	0f 84 11 00 00 00    	je     0x7f01bb405831
    7f01bb405820:	8b 85 40 da ff ff    	mov    -0x25c0(%rbp),%eax
    7f01bb405826:	89 85 38 da ff ff    	mov    %eax,-0x25c8(%rbp)
    7f01bb40582c:	e9 0c 00 00 00       	jmpq   0x7f01bb40583d
    7f01bb405831:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb405837:	89 85 38 da ff ff    	mov    %eax,-0x25c8(%rbp)
    7f01bb40583d:	8b 85 60 e0 ff ff    	mov    -0x1fa0(%rbp),%eax
    7f01bb405843:	85 c0                	test   %eax,%eax
    7f01bb405845:	0f 84 0f 00 00 00    	je     0x7f01bb40585a
    7f01bb40584b:	c7 85 30 da ff ff 00 	movl   $0x0,-0x25d0(%rbp)
    7f01bb405852:	00 00 00 
    7f01bb405855:	e9 0c 00 00 00       	jmpq   0x7f01bb405866
    7f01bb40585a:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb405860:	89 85 30 da ff ff    	mov    %eax,-0x25d0(%rbp)
    7f01bb405866:	8b 85 50 de ff ff    	mov    -0x21b0(%rbp),%eax
    7f01bb40586c:	85 c0                	test   %eax,%eax
    7f01bb40586e:	0f 84 0f 00 00 00    	je     0x7f01bb405883
    7f01bb405874:	c7 85 28 da ff ff 00 	movl   $0x0,-0x25d8(%rbp)
    7f01bb40587b:	00 00 00 
    7f01bb40587e:	e9 0c 00 00 00       	jmpq   0x7f01bb40588f
    7f01bb405883:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb405889:	89 85 28 da ff ff    	mov    %eax,-0x25d8(%rbp)
    7f01bb40588f:	8b 85 50 de ff ff    	mov    -0x21b0(%rbp),%eax
    7f01bb405895:	85 c0                	test   %eax,%eax
    7f01bb405897:	0f 84 0f 00 00 00    	je     0x7f01bb4058ac
    7f01bb40589d:	c7 85 20 da ff ff 04 	movl   $0x4,-0x25e0(%rbp)
    7f01bb4058a4:	00 00 00 
    7f01bb4058a7:	e9 0c 00 00 00       	jmpq   0x7f01bb4058b8
    7f01bb4058ac:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb4058b2:	89 85 20 da ff ff    	mov    %eax,-0x25e0(%rbp)
    7f01bb4058b8:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb4058be:	85 c0                	test   %eax,%eax
    7f01bb4058c0:	0f 85 11 00 00 00    	jne    0x7f01bb4058d7
    7f01bb4058c6:	8b 85 38 da ff ff    	mov    -0x25c8(%rbp),%eax
    7f01bb4058cc:	89 85 18 da ff ff    	mov    %eax,-0x25e8(%rbp)
    7f01bb4058d2:	e9 8c 00 00 00       	jmpq   0x7f01bb405963
    7f01bb4058d7:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb4058dd:	83 f8 01             	cmp    $0x1,%eax
    7f01bb4058e0:	0f 85 11 00 00 00    	jne    0x7f01bb4058f7
    7f01bb4058e6:	8b 85 30 da ff ff    	mov    -0x25d0(%rbp),%eax
    7f01bb4058ec:	89 85 18 da ff ff    	mov    %eax,-0x25e8(%rbp)
    7f01bb4058f2:	e9 6c 00 00 00       	jmpq   0x7f01bb405963
    7f01bb4058f7:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb4058fd:	83 f8 02             	cmp    $0x2,%eax
    7f01bb405900:	0f 85 11 00 00 00    	jne    0x7f01bb405917
    7f01bb405906:	8b 85 28 da ff ff    	mov    -0x25d8(%rbp),%eax
    7f01bb40590c:	89 85 18 da ff ff    	mov    %eax,-0x25e8(%rbp)
    7f01bb405912:	e9 4c 00 00 00       	jmpq   0x7f01bb405963
    7f01bb405917:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb40591d:	83 f8 03             	cmp    $0x3,%eax
    7f01bb405920:	0f 85 11 00 00 00    	jne    0x7f01bb405937
    7f01bb405926:	8b 85 20 da ff ff    	mov    -0x25e0(%rbp),%eax
    7f01bb40592c:	89 85 18 da ff ff    	mov    %eax,-0x25e8(%rbp)
    7f01bb405932:	e9 2c 00 00 00       	jmpq   0x7f01bb405963
    7f01bb405937:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb40593d:	83 f8 04             	cmp    $0x4,%eax
    7f01bb405940:	0f 85 11 00 00 00    	jne    0x7f01bb405957
    7f01bb405946:	8b 85 28 da ff ff    	mov    -0x25d8(%rbp),%eax
    7f01bb40594c:	89 85 18 da ff ff    	mov    %eax,-0x25e8(%rbp)
    7f01bb405952:	e9 0c 00 00 00       	jmpq   0x7f01bb405963
    7f01bb405957:	8b 85 80 fb ff ff    	mov    -0x480(%rbp),%eax
    7f01bb40595d:	89 85 18 da ff ff    	mov    %eax,-0x25e8(%rbp)
    7f01bb405963:	8b 85 68 e0 ff ff    	mov    -0x1f98(%rbp),%eax
    7f01bb405969:	85 c0                	test   %eax,%eax
    7f01bb40596b:	0f 84 0f 00 00 00    	je     0x7f01bb405980
    7f01bb405971:	c7 85 10 da ff ff 01 	movl   $0x1,-0x25f0(%rbp)
    7f01bb405978:	00 00 00 
    7f01bb40597b:	e9 0a 00 00 00       	jmpq   0x7f01bb40598a
    7f01bb405980:	c7 85 10 da ff ff 00 	movl   $0x0,-0x25f0(%rbp)
    7f01bb405987:	00 00 00 
    7f01bb40598a:	83 fb 03             	cmp    $0x3,%ebx
    7f01bb40598d:	0f 85 0f 00 00 00    	jne    0x7f01bb4059a2
    7f01bb405993:	c7 85 08 da ff ff 01 	movl   $0x1,-0x25f8(%rbp)
    7f01bb40599a:	00 00 00 
    7f01bb40599d:	e9 24 00 00 00       	jmpq   0x7f01bb4059c6
    7f01bb4059a2:	83 fb 04             	cmp    $0x4,%ebx
    7f01bb4059a5:	0f 85 11 00 00 00    	jne    0x7f01bb4059bc
    7f01bb4059ab:	8b 85 10 da ff ff    	mov    -0x25f0(%rbp),%eax
    7f01bb4059b1:	89 85 08 da ff ff    	mov    %eax,-0x25f8(%rbp)
    7f01bb4059b7:	e9 0a 00 00 00       	jmpq   0x7f01bb4059c6
    7f01bb4059bc:	c7 85 08 da ff ff 00 	movl   $0x0,-0x25f8(%rbp)
    7f01bb4059c3:	00 00 00 
    7f01bb4059c6:	8b 85 08 da ff ff    	mov    -0x25f8(%rbp),%eax
    7f01bb4059cc:	85 c0                	test   %eax,%eax
    7f01bb4059ce:	0f 84 0f 00 00 00    	je     0x7f01bb4059e3
    7f01bb4059d4:	c7 85 00 da ff ff 01 	movl   $0x1,-0x2600(%rbp)
    7f01bb4059db:	00 00 00 
    7f01bb4059de:	e9 0c 00 00 00       	jmpq   0x7f01bb4059ef
    7f01bb4059e3:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb4059e9:	89 85 00 da ff ff    	mov    %eax,-0x2600(%rbp)
    7f01bb4059ef:	8b 85 58 e0 ff ff    	mov    -0x1fa8(%rbp),%eax
    7f01bb4059f5:	85 c0                	test   %eax,%eax
    7f01bb4059f7:	0f 84 0f 00 00 00    	je     0x7f01bb405a0c
    7f01bb4059fd:	c7 85 f8 d9 ff ff 01 	movl   $0x1,-0x2608(%rbp)
    7f01bb405a04:	00 00 00 
    7f01bb405a07:	e9 0c 00 00 00       	jmpq   0x7f01bb405a18
    7f01bb405a0c:	8b 85 00 da ff ff    	mov    -0x2600(%rbp),%eax
    7f01bb405a12:	89 85 f8 d9 ff ff    	mov    %eax,-0x2608(%rbp)
    7f01bb405a18:	48 8b 85 e8 fa ff ff 	mov    -0x518(%rbp),%rax
    7f01bb405a1f:	48 8b 40 38          	mov    0x38(%rax),%rax
    7f01bb405a23:	8b 00                	mov    (%rax),%eax
    7f01bb405a25:	85 c0                	test   %eax,%eax
    7f01bb405a27:	0f 94 c0             	sete   %al
    7f01bb405a2a:	0f b6 c0             	movzbl %al,%eax
    7f01bb405a2d:	89 85 f0 d9 ff ff    	mov    %eax,-0x2610(%rbp)
    7f01bb405a33:	85 c0                	test   %eax,%eax
    7f01bb405a35:	0f 84 0f 00 00 00    	je     0x7f01bb405a4a
    7f01bb405a3b:	c7 85 e8 d9 ff ff 00 	movl   $0x0,-0x2618(%rbp)
    7f01bb405a42:	00 00 00 
    7f01bb405a45:	e9 0c 00 00 00       	jmpq   0x7f01bb405a56
    7f01bb405a4a:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb405a50:	89 85 e8 d9 ff ff    	mov    %eax,-0x2618(%rbp)
    7f01bb405a56:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb405a5c:	85 c0                	test   %eax,%eax
    7f01bb405a5e:	0f 85 11 00 00 00    	jne    0x7f01bb405a75
    7f01bb405a64:	8b 85 f8 d9 ff ff    	mov    -0x2608(%rbp),%eax
    7f01bb405a6a:	89 85 e0 d9 ff ff    	mov    %eax,-0x2620(%rbp)
    7f01bb405a70:	e9 2c 00 00 00       	jmpq   0x7f01bb405aa1
    7f01bb405a75:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb405a7b:	83 f8 01             	cmp    $0x1,%eax
    7f01bb405a7e:	0f 85 11 00 00 00    	jne    0x7f01bb405a95
    7f01bb405a84:	8b 85 e8 d9 ff ff    	mov    -0x2618(%rbp),%eax
    7f01bb405a8a:	89 85 e0 d9 ff ff    	mov    %eax,-0x2620(%rbp)
    7f01bb405a90:	e9 0c 00 00 00       	jmpq   0x7f01bb405aa1
    7f01bb405a95:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb405a9b:	89 85 e0 d9 ff ff    	mov    %eax,-0x2620(%rbp)
    7f01bb405aa1:	8b 85 30 e4 ff ff    	mov    -0x1bd0(%rbp),%eax
    7f01bb405aa7:	23 85 60 da ff ff    	and    -0x25a0(%rbp),%eax
    7f01bb405aad:	49 8b cf             	mov    %r15,%rcx
    7f01bb405ab0:	48 81 c1 10 3b 00 00 	add    $0x3b10,%rcx
    7f01bb405ab7:	49 8b d7             	mov    %r15,%rdx
    7f01bb405aba:	48 81 c2 c8 3a 00 00 	add    $0x3ac8,%rdx
    7f01bb405ac1:	89 85 d8 d9 ff ff    	mov    %eax,-0x2628(%rbp)
    7f01bb405ac7:	48 8b f2             	mov    %rdx,%rsi
    7f01bb405aca:	48 8b f9             	mov    %rcx,%rdi
    7f01bb405acd:	ba 42 00 00 00       	mov    $0x42,%edx
    7f01bb405ad2:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405ad7:	e8 94 43 97 ff       	callq  0x7f01bad79e70
    7f01bb405adc:	49 0f b6 87 0a 3b 00 	movzbq 0x3b0a(%r15),%rax
    7f01bb405ae3:	00 
    7f01bb405ae4:	49 0f b6 8f 52 3b 00 	movzbq 0x3b52(%r15),%rcx
    7f01bb405aeb:	00 
    7f01bb405aec:	8b d0                	mov    %eax,%edx
    7f01bb405aee:	33 d1                	xor    %ecx,%edx
    7f01bb405af0:	81 e2 c0 3f 00 00    	and    $0x3fc0,%edx
    7f01bb405af6:	33 d0                	xor    %eax,%edx
    7f01bb405af8:	41 89 97 52 3b 00 00 	mov    %edx,0x3b52(%r15)
    7f01bb405aff:	8b 85 d8 d9 ff ff    	mov    -0x2628(%rbp),%eax
    7f01bb405b05:	85 c0                	test   %eax,%eax
    7f01bb405b07:	0f 84 2d 00 00 00    	je     0x7f01bb405b3a
    7f01bb405b0d:	49 8b c7             	mov    %r15,%rax
    7f01bb405b10:	48 05 58 3b 00 00    	add    $0x3b58,%rax
    7f01bb405b16:	49 8b cf             	mov    %r15,%rcx
    7f01bb405b19:	48 81 c1 10 3b 00 00 	add    $0x3b10,%rcx
    7f01bb405b20:	48 8b f1             	mov    %rcx,%rsi
    7f01bb405b23:	48 8b f8             	mov    %rax,%rdi
    7f01bb405b26:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb405b2b:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405b30:	e8 3b 43 97 ff       	callq  0x7f01bad79e70
    7f01bb405b35:	e9 28 00 00 00       	jmpq   0x7f01bb405b62
    7f01bb405b3a:	49 8b c7             	mov    %r15,%rax
    7f01bb405b3d:	48 05 58 3b 00 00    	add    $0x3b58,%rax
    7f01bb405b43:	49 8b cf             	mov    %r15,%rcx
    7f01bb405b46:	48 81 c1 20 4f 00 00 	add    $0x4f20,%rcx
    7f01bb405b4d:	48 8b f1             	mov    %rcx,%rsi
    7f01bb405b50:	48 8b f8             	mov    %rax,%rdi
    7f01bb405b53:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb405b58:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb405b5d:	e8 0e 43 97 ff       	callq  0x7f01bad79e70
    7f01bb405b62:	8b 85 d8 d9 ff ff    	mov    -0x2628(%rbp),%eax
    7f01bb405b68:	85 c0                	test   %eax,%eax
    7f01bb405b6a:	0f 84 11 00 00 00    	je     0x7f01bb405b81
    7f01bb405b70:	8b 85 d8 e3 ff ff    	mov    -0x1c28(%rbp),%eax
    7f01bb405b76:	89 85 d0 d9 ff ff    	mov    %eax,-0x2630(%rbp)
    7f01bb405b7c:	e9 0c 00 00 00       	jmpq   0x7f01bb405b8d
    7f01bb405b81:	8b 85 70 fb ff ff    	mov    -0x490(%rbp),%eax
    7f01bb405b87:	89 85 d0 d9 ff ff    	mov    %eax,-0x2630(%rbp)
    7f01bb405b8d:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb405b93:	83 f8 01             	cmp    $0x1,%eax
    7f01bb405b96:	0f 94 c0             	sete   %al
    7f01bb405b99:	0f b6 c0             	movzbl %al,%eax
    7f01bb405b9c:	23 85 f0 d9 ff ff    	and    -0x2610(%rbp),%eax
    7f01bb405ba2:	89 85 c8 d9 ff ff    	mov    %eax,-0x2638(%rbp)
    7f01bb405ba8:	8b 85 68 fb ff ff    	mov    -0x498(%rbp),%eax
    7f01bb405bae:	ff c0                	inc    %eax
    7f01bb405bb0:	89 85 c0 d9 ff ff    	mov    %eax,-0x2640(%rbp)
    7f01bb405bb6:	48 8b 8d e8 fa ff ff 	mov    -0x518(%rbp),%rcx
    7f01bb405bbd:	48 8b 41 40          	mov    0x40(%rcx),%rax
    7f01bb405bc1:	8b 00                	mov    (%rax),%eax
    7f01bb405bc3:	48 8b 49 48          	mov    0x48(%rcx),%rcx
    7f01bb405bc7:	8b 09                	mov    (%rcx),%ecx
    7f01bb405bc9:	8b d0                	mov    %eax,%edx
    7f01bb405bcb:	0b d1                	or     %ecx,%edx
    7f01bb405bcd:	23 c1                	and    %ecx,%eax
    7f01bb405bcf:	89 85 b8 d9 ff ff    	mov    %eax,-0x2648(%rbp)
    7f01bb405bd5:	85 d2                	test   %edx,%edx
    7f01bb405bd7:	0f 84 0f 00 00 00    	je     0x7f01bb405bec
    7f01bb405bdd:	c7 85 b0 d9 ff ff 01 	movl   $0x1,-0x2650(%rbp)
    7f01bb405be4:	00 00 00 
    7f01bb405be7:	e9 27 00 00 00       	jmpq   0x7f01bb405c13
    7f01bb405bec:	8b 85 b8 d9 ff ff    	mov    -0x2648(%rbp),%eax
    7f01bb405bf2:	85 c0                	test   %eax,%eax
    7f01bb405bf4:	0f 84 0f 00 00 00    	je     0x7f01bb405c09
    7f01bb405bfa:	c7 85 b0 d9 ff ff 02 	movl   $0x2,-0x2650(%rbp)
    7f01bb405c01:	00 00 00 
    7f01bb405c04:	e9 0a 00 00 00       	jmpq   0x7f01bb405c13
    7f01bb405c09:	c7 85 b0 d9 ff ff 00 	movl   $0x0,-0x2650(%rbp)
    7f01bb405c10:	00 00 00 
    7f01bb405c13:	8b 85 c0 d9 ff ff    	mov    -0x2640(%rbp),%eax
    7f01bb405c19:	8b 8d b0 d9 ff ff    	mov    -0x2650(%rbp),%ecx
    7f01bb405c1f:	2b c1                	sub    %ecx,%eax
    7f01bb405c21:	89 85 a8 d9 ff ff    	mov    %eax,-0x2658(%rbp)
    7f01bb405c27:	8b 85 68 fb ff ff    	mov    -0x498(%rbp),%eax
    7f01bb405c2d:	2b c1                	sub    %ecx,%eax
    7f01bb405c2f:	89 85 a0 d9 ff ff    	mov    %eax,-0x2660(%rbp)
    7f01bb405c35:	8b 85 c8 d9 ff ff    	mov    -0x2638(%rbp),%eax
    7f01bb405c3b:	85 c0                	test   %eax,%eax
    7f01bb405c3d:	0f 84 11 00 00 00    	je     0x7f01bb405c54
    7f01bb405c43:	8b 85 a8 d9 ff ff    	mov    -0x2658(%rbp),%eax
    7f01bb405c49:	89 85 98 d9 ff ff    	mov    %eax,-0x2668(%rbp)
    7f01bb405c4f:	e9 0c 00 00 00       	jmpq   0x7f01bb405c60
    7f01bb405c54:	8b 85 a0 d9 ff ff    	mov    -0x2660(%rbp),%eax
    7f01bb405c5a:	89 85 98 d9 ff ff    	mov    %eax,-0x2668(%rbp)
    7f01bb405c60:	8b 85 c8 d9 ff ff    	mov    -0x2638(%rbp),%eax
    7f01bb405c66:	85 c0                	test   %eax,%eax
    7f01bb405c68:	0f 84 0f 00 00 00    	je     0x7f01bb405c7d
    7f01bb405c6e:	c7 85 90 d9 ff ff 01 	movl   $0x1,-0x2670(%rbp)
    7f01bb405c75:	00 00 00 
    7f01bb405c78:	e9 0a 00 00 00       	jmpq   0x7f01bb405c87
    7f01bb405c7d:	c7 85 90 d9 ff ff 00 	movl   $0x0,-0x2670(%rbp)
    7f01bb405c84:	00 00 00 
    7f01bb405c87:	49 0f b6 87 20 4f 00 	movzbq 0x4f20(%r15),%rax
    7f01bb405c8e:	00 
    7f01bb405c8f:	83 e0 03             	and    $0x3,%eax
    7f01bb405c92:	48 8b 95 a0 dd ff ff 	mov    -0x2260(%rbp),%rdx
    7f01bb405c99:	8b 4a 14             	mov    0x14(%rdx),%ecx
    7f01bb405c9c:	c1 e9 0c             	shr    $0xc,%ecx
    7f01bb405c9f:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb405ca5:	89 8d 88 d9 ff ff    	mov    %ecx,-0x2678(%rbp)
    7f01bb405cab:	8b 4a 17             	mov    0x17(%rdx),%ecx
    7f01bb405cae:	c1 e9 08             	shr    $0x8,%ecx
    7f01bb405cb1:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb405cb7:	89 8d 80 d9 ff ff    	mov    %ecx,-0x2680(%rbp)
    7f01bb405cbd:	8b 52 19             	mov    0x19(%rdx),%edx
    7f01bb405cc0:	c1 ea 0c             	shr    $0xc,%edx
    7f01bb405cc3:	81 e2 ff ff 0f 00    	and    $0xfffff,%edx
    7f01bb405cc9:	89 95 78 d9 ff ff    	mov    %edx,-0x2688(%rbp)
    7f01bb405ccf:	89 85 70 d9 ff ff    	mov    %eax,-0x2690(%rbp)
    7f01bb405cd5:	85 c0                	test   %eax,%eax
    7f01bb405cd7:	0f 85 11 00 00 00    	jne    0x7f01bb405cee
    7f01bb405cdd:	8b 85 88 d9 ff ff    	mov    -0x2678(%rbp),%eax
    7f01bb405ce3:	89 85 68 d9 ff ff    	mov    %eax,-0x2698(%rbp)
    7f01bb405ce9:	e9 2c 00 00 00       	jmpq   0x7f01bb405d1a
    7f01bb405cee:	8b 85 70 d9 ff ff    	mov    -0x2690(%rbp),%eax
    7f01bb405cf4:	83 f8 01             	cmp    $0x1,%eax
    7f01bb405cf7:	0f 85 11 00 00 00    	jne    0x7f01bb405d0e
    7f01bb405cfd:	8b 85 80 d9 ff ff    	mov    -0x2680(%rbp),%eax
    7f01bb405d03:	89 85 68 d9 ff ff    	mov    %eax,-0x2698(%rbp)
    7f01bb405d09:	e9 0c 00 00 00       	jmpq   0x7f01bb405d1a
    7f01bb405d0e:	8b 85 78 d9 ff ff    	mov    -0x2688(%rbp),%eax
    7f01bb405d14:	89 85 68 d9 ff ff    	mov    %eax,-0x2698(%rbp)
    7f01bb405d1a:	8b 85 68 d9 ff ff    	mov    -0x2698(%rbp),%eax
    7f01bb405d20:	03 85 a8 df ff ff    	add    -0x2058(%rbp),%eax
    7f01bb405d26:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb405d2b:	89 85 60 d9 ff ff    	mov    %eax,-0x26a0(%rbp)
    7f01bb405d31:	8b 85 80 d9 ff ff    	mov    -0x2680(%rbp),%eax
    7f01bb405d37:	89 85 58 d9 ff ff    	mov    %eax,-0x26a8(%rbp)
    7f01bb405d3d:	8b 85 78 e0 ff ff    	mov    -0x1f88(%rbp),%eax
    7f01bb405d43:	c1 e8 02             	shr    $0x2,%eax
    7f01bb405d46:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb405d4b:	89 85 50 d9 ff ff    	mov    %eax,-0x26b0(%rbp)
    7f01bb405d51:	8b 85 68 e0 ff ff    	mov    -0x1f98(%rbp),%eax
    7f01bb405d57:	85 c0                	test   %eax,%eax
    7f01bb405d59:	0f 84 11 00 00 00    	je     0x7f01bb405d70
    7f01bb405d5f:	8b 85 50 d9 ff ff    	mov    -0x26b0(%rbp),%eax
    7f01bb405d65:	89 85 48 d9 ff ff    	mov    %eax,-0x26b8(%rbp)
    7f01bb405d6b:	e9 0a 00 00 00       	jmpq   0x7f01bb405d7a
    7f01bb405d70:	c7 85 48 d9 ff ff 00 	movl   $0x0,-0x26b8(%rbp)
    7f01bb405d77:	00 00 00 
    7f01bb405d7a:	83 fb 03             	cmp    $0x3,%ebx
    7f01bb405d7d:	0f 85 11 00 00 00    	jne    0x7f01bb405d94
    7f01bb405d83:	8b 85 50 d9 ff ff    	mov    -0x26b0(%rbp),%eax
    7f01bb405d89:	89 85 40 d9 ff ff    	mov    %eax,-0x26c0(%rbp)
    7f01bb405d8f:	e9 24 00 00 00       	jmpq   0x7f01bb405db8
    7f01bb405d94:	83 fb 04             	cmp    $0x4,%ebx
    7f01bb405d97:	0f 85 11 00 00 00    	jne    0x7f01bb405dae
    7f01bb405d9d:	8b 85 48 d9 ff ff    	mov    -0x26b8(%rbp),%eax
    7f01bb405da3:	89 85 40 d9 ff ff    	mov    %eax,-0x26c0(%rbp)
    7f01bb405da9:	e9 0a 00 00 00       	jmpq   0x7f01bb405db8
    7f01bb405dae:	c7 85 40 d9 ff ff 00 	movl   $0x0,-0x26c0(%rbp)
    7f01bb405db5:	00 00 00 
    7f01bb405db8:	8b 85 58 d9 ff ff    	mov    -0x26a8(%rbp),%eax
    7f01bb405dbe:	03 85 40 d9 ff ff    	add    -0x26c0(%rbp),%eax
    7f01bb405dc4:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb405dc9:	89 85 38 d9 ff ff    	mov    %eax,-0x26c8(%rbp)
    7f01bb405dcf:	8b 85 08 da ff ff    	mov    -0x25f8(%rbp),%eax
    7f01bb405dd5:	85 c0                	test   %eax,%eax
    7f01bb405dd7:	0f 84 11 00 00 00    	je     0x7f01bb405dee
    7f01bb405ddd:	8b 85 38 d9 ff ff    	mov    -0x26c8(%rbp),%eax
    7f01bb405de3:	89 85 30 d9 ff ff    	mov    %eax,-0x26d0(%rbp)
    7f01bb405de9:	e9 0c 00 00 00       	jmpq   0x7f01bb405dfa
    7f01bb405dee:	8b 85 58 fb ff ff    	mov    -0x4a8(%rbp),%eax
    7f01bb405df4:	89 85 30 d9 ff ff    	mov    %eax,-0x26d0(%rbp)
    7f01bb405dfa:	8b 85 58 e0 ff ff    	mov    -0x1fa8(%rbp),%eax
    7f01bb405e00:	85 c0                	test   %eax,%eax
    7f01bb405e02:	0f 84 11 00 00 00    	je     0x7f01bb405e19
    7f01bb405e08:	8b 85 60 d9 ff ff    	mov    -0x26a0(%rbp),%eax
    7f01bb405e0e:	89 85 28 d9 ff ff    	mov    %eax,-0x26d8(%rbp)
    7f01bb405e14:	e9 0c 00 00 00       	jmpq   0x7f01bb405e25
    7f01bb405e19:	8b 85 30 d9 ff ff    	mov    -0x26d0(%rbp),%eax
    7f01bb405e1f:	89 85 28 d9 ff ff    	mov    %eax,-0x26d8(%rbp)
    7f01bb405e25:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb405e2b:	85 c0                	test   %eax,%eax
    7f01bb405e2d:	0f 85 11 00 00 00    	jne    0x7f01bb405e44
    7f01bb405e33:	8b 85 28 d9 ff ff    	mov    -0x26d8(%rbp),%eax
    7f01bb405e39:	89 85 20 d9 ff ff    	mov    %eax,-0x26e0(%rbp)
    7f01bb405e3f:	e9 0c 00 00 00       	jmpq   0x7f01bb405e50
    7f01bb405e44:	8b 85 58 fb ff ff    	mov    -0x4a8(%rbp),%eax
    7f01bb405e4a:	89 85 20 d9 ff ff    	mov    %eax,-0x26e0(%rbp)
    7f01bb405e50:	8b 85 68 e0 ff ff    	mov    -0x1f98(%rbp),%eax
    7f01bb405e56:	85 c0                	test   %eax,%eax
    7f01bb405e58:	0f 84 36 00 00 00    	je     0x7f01bb405e94
    7f01bb405e5e:	49 8b c7             	mov    %r15,%rax
    7f01bb405e61:	48 05 a0 3b 00 00    	add    $0x3ba0,%rax
    7f01bb405e67:	49 8b cf             	mov    %r15,%rcx
    7f01bb405e6a:	48 81 c1 58 32 00 00 	add    $0x3258,%rcx
    7f01bb405e71:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405e74:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405e77:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405e7b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405e7f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405e83:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405e87:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405e8b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405e8f:	e9 31 00 00 00       	jmpq   0x7f01bb405ec5
    7f01bb405e94:	49 8b c7             	mov    %r15,%rax
    7f01bb405e97:	48 05 a0 3b 00 00    	add    $0x3ba0,%rax
    7f01bb405e9d:	49 8b cf             	mov    %r15,%rcx
    7f01bb405ea0:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb405ea7:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405eaa:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405ead:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405eb1:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405eb5:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405eb9:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405ebd:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405ec1:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405ec5:	83 fb 03             	cmp    $0x3,%ebx
    7f01bb405ec8:	0f 85 36 00 00 00    	jne    0x7f01bb405f04
    7f01bb405ece:	49 8b c7             	mov    %r15,%rax
    7f01bb405ed1:	48 05 e0 3b 00 00    	add    $0x3be0,%rax
    7f01bb405ed7:	49 8b cf             	mov    %r15,%rcx
    7f01bb405eda:	48 81 c1 58 32 00 00 	add    $0x3258,%rcx
    7f01bb405ee1:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405ee4:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405ee7:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405eeb:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405eef:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405ef3:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405ef7:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405efb:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405eff:	e9 70 00 00 00       	jmpq   0x7f01bb405f74
    7f01bb405f04:	83 fb 04             	cmp    $0x4,%ebx
    7f01bb405f07:	0f 85 36 00 00 00    	jne    0x7f01bb405f43
    7f01bb405f0d:	49 8b c7             	mov    %r15,%rax
    7f01bb405f10:	48 05 e0 3b 00 00    	add    $0x3be0,%rax
    7f01bb405f16:	49 8b cf             	mov    %r15,%rcx
    7f01bb405f19:	48 81 c1 a0 3b 00 00 	add    $0x3ba0,%rcx
    7f01bb405f20:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405f23:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405f26:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405f2a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405f2e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405f32:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405f36:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405f3a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405f3e:	e9 31 00 00 00       	jmpq   0x7f01bb405f74
    7f01bb405f43:	49 8b c7             	mov    %r15,%rax
    7f01bb405f46:	48 05 e0 3b 00 00    	add    $0x3be0,%rax
    7f01bb405f4c:	49 8b cf             	mov    %r15,%rcx
    7f01bb405f4f:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb405f56:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405f59:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405f5c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405f60:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405f64:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405f68:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405f6c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405f70:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405f74:	8b 85 08 da ff ff    	mov    -0x25f8(%rbp),%eax
    7f01bb405f7a:	85 c0                	test   %eax,%eax
    7f01bb405f7c:	0f 84 36 00 00 00    	je     0x7f01bb405fb8
    7f01bb405f82:	49 8b c7             	mov    %r15,%rax
    7f01bb405f85:	48 05 20 3c 00 00    	add    $0x3c20,%rax
    7f01bb405f8b:	49 8b cf             	mov    %r15,%rcx
    7f01bb405f8e:	48 81 c1 e0 3b 00 00 	add    $0x3be0,%rcx
    7f01bb405f95:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405f98:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405f9b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405f9f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405fa3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405fa7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405fab:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405faf:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405fb3:	e9 31 00 00 00       	jmpq   0x7f01bb405fe9
    7f01bb405fb8:	49 8b c7             	mov    %r15,%rax
    7f01bb405fbb:	48 05 20 3c 00 00    	add    $0x3c20,%rax
    7f01bb405fc1:	49 8b cf             	mov    %r15,%rcx
    7f01bb405fc4:	48 81 c1 88 4f 00 00 	add    $0x4f88,%rcx
    7f01bb405fcb:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb405fce:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb405fd1:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb405fd5:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb405fd9:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb405fdd:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb405fe1:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb405fe5:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb405fe9:	8b 85 58 e0 ff ff    	mov    -0x1fa8(%rbp),%eax
    7f01bb405fef:	85 c0                	test   %eax,%eax
    7f01bb405ff1:	0f 84 36 00 00 00    	je     0x7f01bb40602d
    7f01bb405ff7:	49 8b c7             	mov    %r15,%rax
    7f01bb405ffa:	48 05 60 3c 00 00    	add    $0x3c60,%rax
    7f01bb406000:	49 8b cf             	mov    %r15,%rcx
    7f01bb406003:	48 81 c1 10 31 00 00 	add    $0x3110,%rcx
    7f01bb40600a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40600d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406010:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406014:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406018:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40601c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406020:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb406024:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb406028:	e9 31 00 00 00       	jmpq   0x7f01bb40605e
    7f01bb40602d:	49 8b c7             	mov    %r15,%rax
    7f01bb406030:	48 05 60 3c 00 00    	add    $0x3c60,%rax
    7f01bb406036:	49 8b cf             	mov    %r15,%rcx
    7f01bb406039:	48 81 c1 20 3c 00 00 	add    $0x3c20,%rcx
    7f01bb406040:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406043:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406046:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40604a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40604e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406052:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406056:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40605a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40605e:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb406064:	85 c0                	test   %eax,%eax
    7f01bb406066:	0f 85 36 00 00 00    	jne    0x7f01bb4060a2
    7f01bb40606c:	49 8b c7             	mov    %r15,%rax
    7f01bb40606f:	48 05 a0 3c 00 00    	add    $0x3ca0,%rax
    7f01bb406075:	49 8b cf             	mov    %r15,%rcx
    7f01bb406078:	48 81 c1 60 3c 00 00 	add    $0x3c60,%rcx
    7f01bb40607f:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406082:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406085:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406089:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40608d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406091:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406095:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb406099:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40609d:	e9 31 00 00 00       	jmpq   0x7f01bb4060d3
    7f01bb4060a2:	49 8b c7             	mov    %r15,%rax
    7f01bb4060a5:	48 05 a0 3c 00 00    	add    $0x3ca0,%rax
    7f01bb4060ab:	49 8b cf             	mov    %r15,%rcx
    7f01bb4060ae:	48 81 c1 88 4f 00 00 	add    $0x4f88,%rcx
    7f01bb4060b5:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4060b8:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4060bb:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4060bf:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4060c3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4060c7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4060cb:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4060cf:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4060d3:	49 0f b6 87 20 4f 00 	movzbq 0x4f20(%r15),%rax
    7f01bb4060da:	00 
    7f01bb4060db:	83 e0 03             	and    $0x3,%eax
    7f01bb4060de:	8b 8d 70 fb ff ff    	mov    -0x490(%rbp),%ecx
    7f01bb4060e4:	c1 e1 02             	shl    $0x2,%ecx
    7f01bb4060e7:	0b c1                	or     %ecx,%eax
    7f01bb4060e9:	89 85 18 d9 ff ff    	mov    %eax,-0x26e8(%rbp)
    7f01bb4060ef:	8b 85 68 e0 ff ff    	mov    -0x1f98(%rbp),%eax
    7f01bb4060f5:	85 c0                	test   %eax,%eax
    7f01bb4060f7:	0f 84 11 00 00 00    	je     0x7f01bb40610e
    7f01bb4060fd:	8b 85 18 e0 ff ff    	mov    -0x1fe8(%rbp),%eax
    7f01bb406103:	89 85 10 d9 ff ff    	mov    %eax,-0x26f0(%rbp)
    7f01bb406109:	e9 0a 00 00 00       	jmpq   0x7f01bb406118
    7f01bb40610e:	c7 85 10 d9 ff ff 00 	movl   $0x0,-0x26f0(%rbp)
    7f01bb406115:	00 00 00 
    7f01bb406118:	83 fb 03             	cmp    $0x3,%ebx
    7f01bb40611b:	0f 85 11 00 00 00    	jne    0x7f01bb406132
    7f01bb406121:	8b 85 18 e0 ff ff    	mov    -0x1fe8(%rbp),%eax
    7f01bb406127:	89 85 08 d9 ff ff    	mov    %eax,-0x26f8(%rbp)
    7f01bb40612d:	e9 24 00 00 00       	jmpq   0x7f01bb406156
    7f01bb406132:	83 fb 04             	cmp    $0x4,%ebx
    7f01bb406135:	0f 85 11 00 00 00    	jne    0x7f01bb40614c
    7f01bb40613b:	8b 85 10 d9 ff ff    	mov    -0x26f0(%rbp),%eax
    7f01bb406141:	89 85 08 d9 ff ff    	mov    %eax,-0x26f8(%rbp)
    7f01bb406147:	e9 0a 00 00 00       	jmpq   0x7f01bb406156
    7f01bb40614c:	c7 85 08 d9 ff ff 00 	movl   $0x0,-0x26f8(%rbp)
    7f01bb406153:	00 00 00 
    7f01bb406156:	8b 85 08 d9 ff ff    	mov    -0x26f8(%rbp),%eax
    7f01bb40615c:	c1 e0 02             	shl    $0x2,%eax
    7f01bb40615f:	83 c8 01             	or     $0x1,%eax
    7f01bb406162:	89 85 00 d9 ff ff    	mov    %eax,-0x2700(%rbp)
    7f01bb406168:	8b 85 08 da ff ff    	mov    -0x25f8(%rbp),%eax
    7f01bb40616e:	85 c0                	test   %eax,%eax
    7f01bb406170:	0f 84 11 00 00 00    	je     0x7f01bb406187
    7f01bb406176:	8b 85 00 d9 ff ff    	mov    -0x2700(%rbp),%eax
    7f01bb40617c:	89 85 f8 d8 ff ff    	mov    %eax,-0x2708(%rbp)
    7f01bb406182:	e9 0c 00 00 00       	jmpq   0x7f01bb406193
    7f01bb406187:	8b 85 50 fb ff ff    	mov    -0x4b0(%rbp),%eax
    7f01bb40618d:	89 85 f8 d8 ff ff    	mov    %eax,-0x2708(%rbp)
    7f01bb406193:	8b 85 58 e0 ff ff    	mov    -0x1fa8(%rbp),%eax
    7f01bb406199:	85 c0                	test   %eax,%eax
    7f01bb40619b:	0f 84 11 00 00 00    	je     0x7f01bb4061b2
    7f01bb4061a1:	8b 85 18 d9 ff ff    	mov    -0x26e8(%rbp),%eax
    7f01bb4061a7:	89 85 f0 d8 ff ff    	mov    %eax,-0x2710(%rbp)
    7f01bb4061ad:	e9 0c 00 00 00       	jmpq   0x7f01bb4061be
    7f01bb4061b2:	8b 85 f8 d8 ff ff    	mov    -0x2708(%rbp),%eax
    7f01bb4061b8:	89 85 f0 d8 ff ff    	mov    %eax,-0x2710(%rbp)
    7f01bb4061be:	8b 85 78 fb ff ff    	mov    -0x488(%rbp),%eax
    7f01bb4061c4:	85 c0                	test   %eax,%eax
    7f01bb4061c6:	0f 85 11 00 00 00    	jne    0x7f01bb4061dd
    7f01bb4061cc:	8b 85 f0 d8 ff ff    	mov    -0x2710(%rbp),%eax
    7f01bb4061d2:	89 85 e8 d8 ff ff    	mov    %eax,-0x2718(%rbp)
    7f01bb4061d8:	e9 0c 00 00 00       	jmpq   0x7f01bb4061e9
    7f01bb4061dd:	8b 85 50 fb ff ff    	mov    -0x4b0(%rbp),%eax
    7f01bb4061e3:	89 85 e8 d8 ff ff    	mov    %eax,-0x2718(%rbp)
    7f01bb4061e9:	8b 85 e0 fa ff ff    	mov    -0x520(%rbp),%eax
    7f01bb4061ef:	83 f8 04             	cmp    $0x4,%eax
    7f01bb4061f2:	0f 94 c0             	sete   %al
    7f01bb4061f5:	0f b6 c0             	movzbl %al,%eax
    7f01bb4061f8:	8b 8d d8 fa ff ff    	mov    -0x528(%rbp),%ecx
    7f01bb4061fe:	23 c1                	and    %ecx,%eax
    7f01bb406200:	8b 8d d0 fa ff ff    	mov    -0x530(%rbp),%ecx
    7f01bb406206:	85 c9                	test   %ecx,%ecx
    7f01bb406208:	0f 94 c1             	sete   %cl
    7f01bb40620b:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb40620e:	23 c1                	and    %ecx,%eax
    7f01bb406210:	8b 8d 48 fb ff ff    	mov    -0x4b8(%rbp),%ecx
    7f01bb406216:	c1 e9 04             	shr    $0x4,%ecx
    7f01bb406219:	83 e1 01             	and    $0x1,%ecx
    7f01bb40621c:	85 c9                	test   %ecx,%ecx
    7f01bb40621e:	0f 94 c1             	sete   %cl
    7f01bb406221:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb406224:	23 c1                	and    %ecx,%eax
    7f01bb406226:	89 85 e0 d8 ff ff    	mov    %eax,-0x2720(%rbp)
    7f01bb40622c:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406232:	85 c0                	test   %eax,%eax
    7f01bb406234:	0f 94 c0             	sete   %al
    7f01bb406237:	0f b6 c0             	movzbl %al,%eax
    7f01bb40623a:	8b 8d 48 fb ff ff    	mov    -0x4b8(%rbp),%ecx
    7f01bb406240:	83 e1 01             	and    $0x1,%ecx
    7f01bb406243:	89 8d d8 d8 ff ff    	mov    %ecx,-0x2728(%rbp)
    7f01bb406249:	85 c9                	test   %ecx,%ecx
    7f01bb40624b:	0f 94 c1             	sete   %cl
    7f01bb40624e:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb406251:	89 8d d0 d8 ff ff    	mov    %ecx,-0x2730(%rbp)
    7f01bb406257:	23 c1                	and    %ecx,%eax
    7f01bb406259:	85 c0                	test   %eax,%eax
    7f01bb40625b:	0f 84 0f 00 00 00    	je     0x7f01bb406270
    7f01bb406261:	c7 85 c8 d8 ff ff 01 	movl   $0x1,-0x2738(%rbp)
    7f01bb406268:	00 00 00 
    7f01bb40626b:	e9 0a 00 00 00       	jmpq   0x7f01bb40627a
    7f01bb406270:	c7 85 c8 d8 ff ff 00 	movl   $0x0,-0x2738(%rbp)
    7f01bb406277:	00 00 00 
    7f01bb40627a:	8b 85 c8 d8 ff ff    	mov    -0x2738(%rbp),%eax
    7f01bb406280:	23 85 d0 d8 ff ff    	and    -0x2730(%rbp),%eax
    7f01bb406286:	8b c8                	mov    %eax,%ecx
    7f01bb406288:	85 c9                	test   %ecx,%ecx
    7f01bb40628a:	0f 94 c1             	sete   %cl
    7f01bb40628d:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb406290:	89 8d c0 d8 ff ff    	mov    %ecx,-0x2740(%rbp)
    7f01bb406296:	8b 95 e0 d8 ff ff    	mov    -0x2720(%rbp),%edx
    7f01bb40629c:	23 ca                	and    %edx,%ecx
    7f01bb40629e:	8b b5 48 fb ff ff    	mov    -0x4b8(%rbp),%esi
    7f01bb4062a4:	83 e6 0f             	and    $0xf,%esi
    7f01bb4062a7:	d1 e6                	shl    %esi
    7f01bb4062a9:	89 b5 b8 d8 ff ff    	mov    %esi,-0x2748(%rbp)
    7f01bb4062af:	85 d2                	test   %edx,%edx
    7f01bb4062b1:	0f 94 c2             	sete   %dl
    7f01bb4062b4:	0f b6 d2             	movzbl %dl,%edx
    7f01bb4062b7:	89 85 b0 d8 ff ff    	mov    %eax,-0x2750(%rbp)
    7f01bb4062bd:	23 c2                	and    %edx,%eax
    7f01bb4062bf:	89 85 a8 d8 ff ff    	mov    %eax,-0x2758(%rbp)
    7f01bb4062c5:	8b 85 48 fb ff ff    	mov    -0x4b8(%rbp),%eax
    7f01bb4062cb:	d1 e8                	shr    %eax
    7f01bb4062cd:	83 e0 0f             	and    $0xf,%eax
    7f01bb4062d0:	89 85 a0 d8 ff ff    	mov    %eax,-0x2760(%rbp)
    7f01bb4062d6:	85 c9                	test   %ecx,%ecx
    7f01bb4062d8:	0f 84 11 00 00 00    	je     0x7f01bb4062ef
    7f01bb4062de:	8b 85 b8 d8 ff ff    	mov    -0x2748(%rbp),%eax
    7f01bb4062e4:	89 85 98 d8 ff ff    	mov    %eax,-0x2768(%rbp)
    7f01bb4062ea:	e9 2b 00 00 00       	jmpq   0x7f01bb40631a
    7f01bb4062ef:	8b 85 a8 d8 ff ff    	mov    -0x2758(%rbp),%eax
    7f01bb4062f5:	85 c0                	test   %eax,%eax
    7f01bb4062f7:	0f 84 11 00 00 00    	je     0x7f01bb40630e
    7f01bb4062fd:	8b 85 a0 d8 ff ff    	mov    -0x2760(%rbp),%eax
    7f01bb406303:	89 85 98 d8 ff ff    	mov    %eax,-0x2768(%rbp)
    7f01bb406309:	e9 0c 00 00 00       	jmpq   0x7f01bb40631a
    7f01bb40630e:	8b 85 48 fb ff ff    	mov    -0x4b8(%rbp),%eax
    7f01bb406314:	89 85 98 d8 ff ff    	mov    %eax,-0x2768(%rbp)
    7f01bb40631a:	8b 85 e0 d8 ff ff    	mov    -0x2720(%rbp),%eax
    7f01bb406320:	23 85 d8 d8 ff ff    	and    -0x2728(%rbp),%eax
    7f01bb406326:	8b 8d b0 d8 ff ff    	mov    -0x2750(%rbp),%ecx
    7f01bb40632c:	0b c1                	or     %ecx,%eax
    7f01bb40632e:	89 85 90 d8 ff ff    	mov    %eax,-0x2770(%rbp)
    7f01bb406334:	8b 85 48 fb ff ff    	mov    -0x4b8(%rbp),%eax
    7f01bb40633a:	d1 e8                	shr    %eax
    7f01bb40633c:	83 e0 01             	and    $0x1,%eax
    7f01bb40633f:	89 85 88 d8 ff ff    	mov    %eax,-0x2778(%rbp)
    7f01bb406345:	8b 8d c0 d8 ff ff    	mov    -0x2740(%rbp),%ecx
    7f01bb40634b:	0b c1                	or     %ecx,%eax
    7f01bb40634d:	85 c0                	test   %eax,%eax
    7f01bb40634f:	0f 84 33 00 00 00    	je     0x7f01bb406388
    7f01bb406355:	49 8b c7             	mov    %r15,%rax
    7f01bb406358:	48 05 e0 3c 00 00    	add    $0x3ce0,%rax
    7f01bb40635e:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb406365:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406368:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40636b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40636f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406373:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406377:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40637b:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40637f:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb406383:	e9 31 00 00 00       	jmpq   0x7f01bb4063b9
    7f01bb406388:	49 8b c7             	mov    %r15,%rax
    7f01bb40638b:	48 05 e0 3c 00 00    	add    $0x3ce0,%rax
    7f01bb406391:	49 8b cf             	mov    %r15,%rcx
    7f01bb406394:	48 81 c1 18 50 00 00 	add    $0x5018,%rcx
    7f01bb40639b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40639e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4063a1:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4063a5:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4063a9:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4063ad:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4063b1:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4063b5:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4063b9:	8b 85 90 d8 ff ff    	mov    -0x2770(%rbp),%eax
    7f01bb4063bf:	85 c0                	test   %eax,%eax
    7f01bb4063c1:	0f 84 36 00 00 00    	je     0x7f01bb4063fd
    7f01bb4063c7:	49 8b c7             	mov    %r15,%rax
    7f01bb4063ca:	48 05 20 3d 00 00    	add    $0x3d20,%rax
    7f01bb4063d0:	49 8b cf             	mov    %r15,%rcx
    7f01bb4063d3:	48 81 c1 e0 3c 00 00 	add    $0x3ce0,%rcx
    7f01bb4063da:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4063dd:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4063e0:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4063e4:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4063e8:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4063ec:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4063f0:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4063f4:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4063f8:	e9 31 00 00 00       	jmpq   0x7f01bb40642e
    7f01bb4063fd:	49 8b c7             	mov    %r15,%rax
    7f01bb406400:	48 05 20 3d 00 00    	add    $0x3d20,%rax
    7f01bb406406:	49 8b cf             	mov    %r15,%rcx
    7f01bb406409:	48 81 c1 d8 4f 00 00 	add    $0x4fd8,%rcx
    7f01bb406410:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406413:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406416:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40641a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40641e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406422:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406426:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40642a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40642e:	8b 85 e0 d8 ff ff    	mov    -0x2720(%rbp),%eax
    7f01bb406434:	23 85 88 d8 ff ff    	and    -0x2778(%rbp),%eax
    7f01bb40643a:	8b 8d b0 d8 ff ff    	mov    -0x2750(%rbp),%ecx
    7f01bb406440:	0b c1                	or     %ecx,%eax
    7f01bb406442:	89 85 80 d8 ff ff    	mov    %eax,-0x2780(%rbp)
    7f01bb406448:	8b 85 48 fb ff ff    	mov    -0x4b8(%rbp),%eax
    7f01bb40644e:	c1 e8 02             	shr    $0x2,%eax
    7f01bb406451:	83 e0 01             	and    $0x1,%eax
    7f01bb406454:	89 85 78 d8 ff ff    	mov    %eax,-0x2788(%rbp)
    7f01bb40645a:	8b 8d c0 d8 ff ff    	mov    -0x2740(%rbp),%ecx
    7f01bb406460:	0b c1                	or     %ecx,%eax
    7f01bb406462:	85 c0                	test   %eax,%eax
    7f01bb406464:	0f 84 33 00 00 00    	je     0x7f01bb40649d
    7f01bb40646a:	49 8b c7             	mov    %r15,%rax
    7f01bb40646d:	48 05 60 3d 00 00    	add    $0x3d60,%rax
    7f01bb406473:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb40647a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40647d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406480:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406484:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406488:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40648c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406490:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb406494:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb406498:	e9 31 00 00 00       	jmpq   0x7f01bb4064ce
    7f01bb40649d:	49 8b c7             	mov    %r15,%rax
    7f01bb4064a0:	48 05 60 3d 00 00    	add    $0x3d60,%rax
    7f01bb4064a6:	49 8b cf             	mov    %r15,%rcx
    7f01bb4064a9:	48 81 c1 58 50 00 00 	add    $0x5058,%rcx
    7f01bb4064b0:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4064b3:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4064b6:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4064ba:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4064be:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4064c2:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4064c6:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4064ca:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4064ce:	8b 85 80 d8 ff ff    	mov    -0x2780(%rbp),%eax
    7f01bb4064d4:	85 c0                	test   %eax,%eax
    7f01bb4064d6:	0f 84 36 00 00 00    	je     0x7f01bb406512
    7f01bb4064dc:	49 8b c7             	mov    %r15,%rax
    7f01bb4064df:	48 05 a0 3d 00 00    	add    $0x3da0,%rax
    7f01bb4064e5:	49 8b cf             	mov    %r15,%rcx
    7f01bb4064e8:	48 81 c1 60 3d 00 00 	add    $0x3d60,%rcx
    7f01bb4064ef:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4064f2:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4064f5:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4064f9:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4064fd:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406501:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406505:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb406509:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40650d:	e9 31 00 00 00       	jmpq   0x7f01bb406543
    7f01bb406512:	49 8b c7             	mov    %r15,%rax
    7f01bb406515:	48 05 a0 3d 00 00    	add    $0x3da0,%rax
    7f01bb40651b:	49 8b cf             	mov    %r15,%rcx
    7f01bb40651e:	48 81 c1 18 50 00 00 	add    $0x5018,%rcx
    7f01bb406525:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406528:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40652b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40652f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406533:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406537:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40653b:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40653f:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb406543:	8b 85 e0 d8 ff ff    	mov    -0x2720(%rbp),%eax
    7f01bb406549:	23 85 78 d8 ff ff    	and    -0x2788(%rbp),%eax
    7f01bb40654f:	8b 8d b0 d8 ff ff    	mov    -0x2750(%rbp),%ecx
    7f01bb406555:	0b c1                	or     %ecx,%eax
    7f01bb406557:	89 85 70 d8 ff ff    	mov    %eax,-0x2790(%rbp)
    7f01bb40655d:	8b 85 48 fb ff ff    	mov    -0x4b8(%rbp),%eax
    7f01bb406563:	c1 e8 03             	shr    $0x3,%eax
    7f01bb406566:	83 e0 01             	and    $0x1,%eax
    7f01bb406569:	89 85 68 d8 ff ff    	mov    %eax,-0x2798(%rbp)
    7f01bb40656f:	8b 8d c0 d8 ff ff    	mov    -0x2740(%rbp),%ecx
    7f01bb406575:	0b c1                	or     %ecx,%eax
    7f01bb406577:	85 c0                	test   %eax,%eax
    7f01bb406579:	0f 84 33 00 00 00    	je     0x7f01bb4065b2
    7f01bb40657f:	49 8b c7             	mov    %r15,%rax
    7f01bb406582:	48 05 e0 3d 00 00    	add    $0x3de0,%rax
    7f01bb406588:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb40658f:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406592:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406595:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406599:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40659d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4065a1:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4065a5:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4065a9:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4065ad:	e9 31 00 00 00       	jmpq   0x7f01bb4065e3
    7f01bb4065b2:	49 8b c7             	mov    %r15,%rax
    7f01bb4065b5:	48 05 e0 3d 00 00    	add    $0x3de0,%rax
    7f01bb4065bb:	49 8b cf             	mov    %r15,%rcx
    7f01bb4065be:	48 81 c1 98 50 00 00 	add    $0x5098,%rcx
    7f01bb4065c5:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4065c8:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4065cb:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4065cf:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4065d3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4065d7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4065db:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4065df:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4065e3:	8b 85 70 d8 ff ff    	mov    -0x2790(%rbp),%eax
    7f01bb4065e9:	85 c0                	test   %eax,%eax
    7f01bb4065eb:	0f 84 36 00 00 00    	je     0x7f01bb406627
    7f01bb4065f1:	49 8b c7             	mov    %r15,%rax
    7f01bb4065f4:	48 05 20 3e 00 00    	add    $0x3e20,%rax
    7f01bb4065fa:	49 8b cf             	mov    %r15,%rcx
    7f01bb4065fd:	48 81 c1 e0 3d 00 00 	add    $0x3de0,%rcx
    7f01bb406604:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406607:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40660a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40660e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406612:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406616:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40661a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40661e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb406622:	e9 31 00 00 00       	jmpq   0x7f01bb406658
    7f01bb406627:	49 8b c7             	mov    %r15,%rax
    7f01bb40662a:	48 05 20 3e 00 00    	add    $0x3e20,%rax
    7f01bb406630:	49 8b cf             	mov    %r15,%rcx
    7f01bb406633:	48 81 c1 58 50 00 00 	add    $0x5058,%rcx
    7f01bb40663a:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40663d:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406640:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406644:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406648:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40664c:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406650:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb406654:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb406658:	8b 85 e0 d8 ff ff    	mov    -0x2720(%rbp),%eax
    7f01bb40665e:	23 85 68 d8 ff ff    	and    -0x2798(%rbp),%eax
    7f01bb406664:	8b 8d b0 d8 ff ff    	mov    -0x2750(%rbp),%ecx
    7f01bb40666a:	0b c1                	or     %ecx,%eax
    7f01bb40666c:	85 c0                	test   %eax,%eax
    7f01bb40666e:	0f 84 33 00 00 00    	je     0x7f01bb4066a7
    7f01bb406674:	49 8b c7             	mov    %r15,%rax
    7f01bb406677:	48 05 60 3e 00 00    	add    $0x3e60,%rax
    7f01bb40667d:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb406684:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406687:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40668a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40668e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406692:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406696:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40669a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40669e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4066a2:	e9 31 00 00 00       	jmpq   0x7f01bb4066d8
    7f01bb4066a7:	49 8b c7             	mov    %r15,%rax
    7f01bb4066aa:	48 05 60 3e 00 00    	add    $0x3e60,%rax
    7f01bb4066b0:	49 8b cf             	mov    %r15,%rcx
    7f01bb4066b3:	48 81 c1 98 50 00 00 	add    $0x5098,%rcx
    7f01bb4066ba:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4066bd:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4066c0:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4066c4:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4066c8:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4066cc:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4066d0:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4066d4:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4066d8:	33 c0                	xor    %eax,%eax
    7f01bb4066da:	3b 85 40 fb ff ff    	cmp    -0x4c0(%rbp),%eax
    7f01bb4066e0:	0f 94 c0             	sete   %al
    7f01bb4066e3:	0f b6 c0             	movzbl %al,%eax
    7f01bb4066e6:	89 85 60 d8 ff ff    	mov    %eax,-0x27a0(%rbp)
    7f01bb4066ec:	8b 8d d0 d8 ff ff    	mov    -0x2730(%rbp),%ecx
    7f01bb4066f2:	23 c1                	and    %ecx,%eax
    7f01bb4066f4:	41 8b 8f d8 4f 00 00 	mov    0x4fd8(%r15),%ecx
    7f01bb4066fb:	89 8d 58 d8 ff ff    	mov    %ecx,-0x27a8(%rbp)
    7f01bb406701:	41 8b 8f d8 50 00 00 	mov    0x50d8(%r15),%ecx
    7f01bb406708:	89 8d 50 d8 ff ff    	mov    %ecx,-0x27b0(%rbp)
    7f01bb40670e:	85 c0                	test   %eax,%eax
    7f01bb406710:	0f 84 11 00 00 00    	je     0x7f01bb406727
    7f01bb406716:	8b 85 58 d8 ff ff    	mov    -0x27a8(%rbp),%eax
    7f01bb40671c:	89 85 48 d8 ff ff    	mov    %eax,-0x27b8(%rbp)
    7f01bb406722:	e9 0c 00 00 00       	jmpq   0x7f01bb406733
    7f01bb406727:	8b 85 50 d8 ff ff    	mov    -0x27b0(%rbp),%eax
    7f01bb40672d:	89 85 48 d8 ff ff    	mov    %eax,-0x27b8(%rbp)
    7f01bb406733:	49 8b c7             	mov    %r15,%rax
    7f01bb406736:	48 05 d8 50 00 00    	add    $0x50d8,%rax
    7f01bb40673c:	49 8b cf             	mov    %r15,%rcx
    7f01bb40673f:	48 81 c1 a0 3e 00 00 	add    $0x3ea0,%rcx
    7f01bb406746:	41 b8 20 00 00 00    	mov    $0x20,%r8d
    7f01bb40674c:	48 89 8d 40 d8 ff ff 	mov    %rcx,-0x27c0(%rbp)
    7f01bb406753:	b9 20 02 00 00       	mov    $0x220,%ecx
    7f01bb406758:	48 8b d0             	mov    %rax,%rdx
    7f01bb40675b:	be 20 02 00 00       	mov    $0x220,%esi
    7f01bb406760:	48 8b bd 40 d8 ff ff 	mov    -0x27c0(%rbp),%rdi
    7f01bb406767:	48 89 85 38 d8 ff ff 	mov    %rax,-0x27c8(%rbp)
    7f01bb40676e:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb406773:	e8 c2 ad 8c ff       	callq  0x7f01bacd153a
    7f01bb406778:	41 8b 87 a0 3e 00 00 	mov    0x3ea0(%r15),%eax
    7f01bb40677f:	89 85 30 d8 ff ff    	mov    %eax,-0x27d0(%rbp)
    7f01bb406785:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb40678b:	85 c0                	test   %eax,%eax
    7f01bb40678d:	0f 84 11 00 00 00    	je     0x7f01bb4067a4
    7f01bb406793:	8b 85 30 d8 ff ff    	mov    -0x27d0(%rbp),%eax
    7f01bb406799:	89 85 28 d8 ff ff    	mov    %eax,-0x27d8(%rbp)
    7f01bb40679f:	e9 0c 00 00 00       	jmpq   0x7f01bb4067b0
    7f01bb4067a4:	8b 85 50 d8 ff ff    	mov    -0x27b0(%rbp),%eax
    7f01bb4067aa:	89 85 28 d8 ff ff    	mov    %eax,-0x27d8(%rbp)
    7f01bb4067b0:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb4067b6:	85 c0                	test   %eax,%eax
    7f01bb4067b8:	0f 84 11 00 00 00    	je     0x7f01bb4067cf
    7f01bb4067be:	8b 85 30 d8 ff ff    	mov    -0x27d0(%rbp),%eax
    7f01bb4067c4:	89 85 20 d8 ff ff    	mov    %eax,-0x27e0(%rbp)
    7f01bb4067ca:	e9 0c 00 00 00       	jmpq   0x7f01bb4067db
    7f01bb4067cf:	8b 85 50 d8 ff ff    	mov    -0x27b0(%rbp),%eax
    7f01bb4067d5:	89 85 20 d8 ff ff    	mov    %eax,-0x27e0(%rbp)
    7f01bb4067db:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb4067e1:	85 c0                	test   %eax,%eax
    7f01bb4067e3:	0f 85 11 00 00 00    	jne    0x7f01bb4067fa
    7f01bb4067e9:	8b 85 48 d8 ff ff    	mov    -0x27b8(%rbp),%eax
    7f01bb4067ef:	89 85 18 d8 ff ff    	mov    %eax,-0x27e8(%rbp)
    7f01bb4067f5:	e9 4c 00 00 00       	jmpq   0x7f01bb406846
    7f01bb4067fa:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406800:	83 f8 01             	cmp    $0x1,%eax
    7f01bb406803:	0f 85 11 00 00 00    	jne    0x7f01bb40681a
    7f01bb406809:	8b 85 28 d8 ff ff    	mov    -0x27d8(%rbp),%eax
    7f01bb40680f:	89 85 18 d8 ff ff    	mov    %eax,-0x27e8(%rbp)
    7f01bb406815:	e9 2c 00 00 00       	jmpq   0x7f01bb406846
    7f01bb40681a:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406820:	83 f8 02             	cmp    $0x2,%eax
    7f01bb406823:	0f 85 11 00 00 00    	jne    0x7f01bb40683a
    7f01bb406829:	8b 85 20 d8 ff ff    	mov    -0x27e0(%rbp),%eax
    7f01bb40682f:	89 85 18 d8 ff ff    	mov    %eax,-0x27e8(%rbp)
    7f01bb406835:	e9 0c 00 00 00       	jmpq   0x7f01bb406846
    7f01bb40683a:	8b 85 50 d8 ff ff    	mov    -0x27b0(%rbp),%eax
    7f01bb406840:	89 85 18 d8 ff ff    	mov    %eax,-0x27e8(%rbp)
    7f01bb406846:	49 8b c7             	mov    %r15,%rax
    7f01bb406849:	48 05 e8 3e 00 00    	add    $0x3ee8,%rax
    7f01bb40684f:	49 8b cf             	mov    %r15,%rcx
    7f01bb406852:	48 81 c1 dc 4f 00 00 	add    $0x4fdc,%rcx
    7f01bb406859:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40685c:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40685f:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406863:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406867:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40686b:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40686f:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406873:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406877:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb40687a:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb40687d:	49 8b c7             	mov    %r15,%rax
    7f01bb406880:	48 05 28 3f 00 00    	add    $0x3f28,%rax
    7f01bb406886:	49 8b cf             	mov    %r15,%rcx
    7f01bb406889:	48 81 c1 d8 4f 00 00 	add    $0x4fd8,%rcx
    7f01bb406890:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406893:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406896:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40689a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40689e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4068a2:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4068a6:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb4068aa:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb4068ae:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb4068b1:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb4068b4:	8b 85 60 d8 ff ff    	mov    -0x27a0(%rbp),%eax
    7f01bb4068ba:	85 c0                	test   %eax,%eax
    7f01bb4068bc:	0f 84 3c 00 00 00    	je     0x7f01bb4068fe
    7f01bb4068c2:	49 8b c7             	mov    %r15,%rax
    7f01bb4068c5:	48 05 68 3f 00 00    	add    $0x3f68,%rax
    7f01bb4068cb:	49 8b cf             	mov    %r15,%rcx
    7f01bb4068ce:	48 81 c1 e8 3e 00 00 	add    $0x3ee8,%rcx
    7f01bb4068d5:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4068d8:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4068db:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4068df:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4068e3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4068e7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4068eb:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb4068ef:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb4068f3:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb4068f6:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb4068f9:	e9 37 00 00 00       	jmpq   0x7f01bb406935
    7f01bb4068fe:	49 8b c7             	mov    %r15,%rax
    7f01bb406901:	48 05 68 3f 00 00    	add    $0x3f68,%rax
    7f01bb406907:	49 8b cf             	mov    %r15,%rcx
    7f01bb40690a:	48 81 c1 28 3f 00 00 	add    $0x3f28,%rcx
    7f01bb406911:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406914:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406917:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40691b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40691f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406923:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406927:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb40692b:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb40692f:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406932:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406935:	49 8b c7             	mov    %r15,%rax
    7f01bb406938:	48 05 a8 3f 00 00    	add    $0x3fa8,%rax
    7f01bb40693e:	49 8b cf             	mov    %r15,%rcx
    7f01bb406941:	48 81 c1 dc 50 00 00 	add    $0x50dc,%rcx
    7f01bb406948:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40694b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40694e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406952:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406956:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40695a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40695e:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406962:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406966:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406969:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb40696c:	8b 85 d0 d8 ff ff    	mov    -0x2730(%rbp),%eax
    7f01bb406972:	85 c0                	test   %eax,%eax
    7f01bb406974:	0f 84 3c 00 00 00    	je     0x7f01bb4069b6
    7f01bb40697a:	49 8b c7             	mov    %r15,%rax
    7f01bb40697d:	48 05 e8 3f 00 00    	add    $0x3fe8,%rax
    7f01bb406983:	49 8b cf             	mov    %r15,%rcx
    7f01bb406986:	48 81 c1 68 3f 00 00 	add    $0x3f68,%rcx
    7f01bb40698d:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406990:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406993:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406997:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40699b:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40699f:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4069a3:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb4069a7:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb4069ab:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb4069ae:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb4069b1:	e9 37 00 00 00       	jmpq   0x7f01bb4069ed
    7f01bb4069b6:	49 8b c7             	mov    %r15,%rax
    7f01bb4069b9:	48 05 e8 3f 00 00    	add    $0x3fe8,%rax
    7f01bb4069bf:	49 8b cf             	mov    %r15,%rcx
    7f01bb4069c2:	48 81 c1 a8 3f 00 00 	add    $0x3fa8,%rcx
    7f01bb4069c9:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4069cc:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4069cf:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4069d3:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4069d7:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4069db:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4069df:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb4069e3:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb4069e7:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb4069ea:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb4069ed:	49 8b c7             	mov    %r15,%rax
    7f01bb4069f0:	48 05 28 40 00 00    	add    $0x4028,%rax
    7f01bb4069f6:	49 8b cf             	mov    %r15,%rcx
    7f01bb4069f9:	48 81 c1 a4 3e 00 00 	add    $0x3ea4,%rcx
    7f01bb406a00:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406a03:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406a06:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406a0a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406a0e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406a12:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406a16:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406a1a:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406a1e:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406a21:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406a24:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb406a2a:	85 c0                	test   %eax,%eax
    7f01bb406a2c:	0f 84 3c 00 00 00    	je     0x7f01bb406a6e
    7f01bb406a32:	49 8b c7             	mov    %r15,%rax
    7f01bb406a35:	48 05 68 40 00 00    	add    $0x4068,%rax
    7f01bb406a3b:	49 8b cf             	mov    %r15,%rcx
    7f01bb406a3e:	48 81 c1 28 40 00 00 	add    $0x4028,%rcx
    7f01bb406a45:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406a48:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406a4b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406a4f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406a53:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406a57:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406a5b:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406a5f:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406a63:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406a66:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406a69:	e9 37 00 00 00       	jmpq   0x7f01bb406aa5
    7f01bb406a6e:	49 8b c7             	mov    %r15,%rax
    7f01bb406a71:	48 05 68 40 00 00    	add    $0x4068,%rax
    7f01bb406a77:	49 8b cf             	mov    %r15,%rcx
    7f01bb406a7a:	48 81 c1 a8 3f 00 00 	add    $0x3fa8,%rcx
    7f01bb406a81:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406a84:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406a87:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406a8b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406a8f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406a93:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406a97:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406a9b:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406a9f:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406aa2:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406aa5:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb406aab:	85 c0                	test   %eax,%eax
    7f01bb406aad:	0f 84 3c 00 00 00    	je     0x7f01bb406aef
    7f01bb406ab3:	49 8b c7             	mov    %r15,%rax
    7f01bb406ab6:	48 05 a8 40 00 00    	add    $0x40a8,%rax
    7f01bb406abc:	49 8b cf             	mov    %r15,%rcx
    7f01bb406abf:	48 81 c1 28 40 00 00 	add    $0x4028,%rcx
    7f01bb406ac6:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406ac9:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406acc:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406ad0:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406ad4:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406ad8:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406adc:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406ae0:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406ae4:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406ae7:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406aea:	e9 37 00 00 00       	jmpq   0x7f01bb406b26
    7f01bb406aef:	49 8b c7             	mov    %r15,%rax
    7f01bb406af2:	48 05 a8 40 00 00    	add    $0x40a8,%rax
    7f01bb406af8:	49 8b cf             	mov    %r15,%rcx
    7f01bb406afb:	48 81 c1 a8 3f 00 00 	add    $0x3fa8,%rcx
    7f01bb406b02:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406b05:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406b08:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406b0c:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406b10:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406b14:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406b18:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406b1c:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406b20:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406b23:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406b26:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406b2c:	85 c0                	test   %eax,%eax
    7f01bb406b2e:	0f 85 3c 00 00 00    	jne    0x7f01bb406b70
    7f01bb406b34:	49 8b c7             	mov    %r15,%rax
    7f01bb406b37:	48 05 e8 40 00 00    	add    $0x40e8,%rax
    7f01bb406b3d:	49 8b cf             	mov    %r15,%rcx
    7f01bb406b40:	48 81 c1 e8 3f 00 00 	add    $0x3fe8,%rcx
    7f01bb406b47:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406b4a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406b4d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406b51:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406b55:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406b59:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406b5d:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406b61:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406b65:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406b68:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406b6b:	e9 cd 00 00 00       	jmpq   0x7f01bb406c3d
    7f01bb406b70:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406b76:	83 f8 01             	cmp    $0x1,%eax
    7f01bb406b79:	0f 85 3c 00 00 00    	jne    0x7f01bb406bbb
    7f01bb406b7f:	49 8b c7             	mov    %r15,%rax
    7f01bb406b82:	48 05 e8 40 00 00    	add    $0x40e8,%rax
    7f01bb406b88:	49 8b cf             	mov    %r15,%rcx
    7f01bb406b8b:	48 81 c1 68 40 00 00 	add    $0x4068,%rcx
    7f01bb406b92:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406b95:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406b98:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406b9c:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406ba0:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406ba4:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406ba8:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406bac:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406bb0:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406bb3:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406bb6:	e9 82 00 00 00       	jmpq   0x7f01bb406c3d
    7f01bb406bbb:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406bc1:	83 f8 02             	cmp    $0x2,%eax
    7f01bb406bc4:	0f 85 3c 00 00 00    	jne    0x7f01bb406c06
    7f01bb406bca:	49 8b c7             	mov    %r15,%rax
    7f01bb406bcd:	48 05 e8 40 00 00    	add    $0x40e8,%rax
    7f01bb406bd3:	49 8b cf             	mov    %r15,%rcx
    7f01bb406bd6:	48 81 c1 a8 40 00 00 	add    $0x40a8,%rcx
    7f01bb406bdd:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406be0:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406be3:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406be7:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406beb:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406bef:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406bf3:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406bf7:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406bfb:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406bfe:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406c01:	e9 37 00 00 00       	jmpq   0x7f01bb406c3d
    7f01bb406c06:	49 8b c7             	mov    %r15,%rax
    7f01bb406c09:	48 05 e8 40 00 00    	add    $0x40e8,%rax
    7f01bb406c0f:	49 8b cf             	mov    %r15,%rcx
    7f01bb406c12:	48 81 c1 a8 3f 00 00 	add    $0x3fa8,%rcx
    7f01bb406c19:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406c1c:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406c1f:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406c23:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406c27:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406c2b:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406c2f:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406c33:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406c37:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406c3a:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406c3d:	41 8b 87 18 51 00 00 	mov    0x5118(%r15),%eax
    7f01bb406c44:	89 85 10 d8 ff ff    	mov    %eax,-0x27f0(%rbp)
    7f01bb406c4a:	41 8b 87 14 50 00 00 	mov    0x5014(%r15),%eax
    7f01bb406c51:	89 85 08 d8 ff ff    	mov    %eax,-0x27f8(%rbp)
    7f01bb406c57:	8b 85 60 d8 ff ff    	mov    -0x27a0(%rbp),%eax
    7f01bb406c5d:	85 c0                	test   %eax,%eax
    7f01bb406c5f:	0f 84 11 00 00 00    	je     0x7f01bb406c76
    7f01bb406c65:	8b 85 10 d8 ff ff    	mov    -0x27f0(%rbp),%eax
    7f01bb406c6b:	89 85 00 d8 ff ff    	mov    %eax,-0x2800(%rbp)
    7f01bb406c71:	e9 0c 00 00 00       	jmpq   0x7f01bb406c82
    7f01bb406c76:	8b 85 08 d8 ff ff    	mov    -0x27f8(%rbp),%eax
    7f01bb406c7c:	89 85 00 d8 ff ff    	mov    %eax,-0x2800(%rbp)
    7f01bb406c82:	8b 85 d0 d8 ff ff    	mov    -0x2730(%rbp),%eax
    7f01bb406c88:	85 c0                	test   %eax,%eax
    7f01bb406c8a:	0f 84 11 00 00 00    	je     0x7f01bb406ca1
    7f01bb406c90:	8b 85 00 d8 ff ff    	mov    -0x2800(%rbp),%eax
    7f01bb406c96:	89 85 f8 d7 ff ff    	mov    %eax,-0x2808(%rbp)
    7f01bb406c9c:	e9 0c 00 00 00       	jmpq   0x7f01bb406cad
    7f01bb406ca1:	8b 85 10 d8 ff ff    	mov    -0x27f0(%rbp),%eax
    7f01bb406ca7:	89 85 f8 d7 ff ff    	mov    %eax,-0x2808(%rbp)
    7f01bb406cad:	41 8b 87 e0 3e 00 00 	mov    0x3ee0(%r15),%eax
    7f01bb406cb4:	89 85 f0 d7 ff ff    	mov    %eax,-0x2810(%rbp)
    7f01bb406cba:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb406cc0:	85 c0                	test   %eax,%eax
    7f01bb406cc2:	0f 84 11 00 00 00    	je     0x7f01bb406cd9
    7f01bb406cc8:	8b 85 f0 d7 ff ff    	mov    -0x2810(%rbp),%eax
    7f01bb406cce:	89 85 e8 d7 ff ff    	mov    %eax,-0x2818(%rbp)
    7f01bb406cd4:	e9 0c 00 00 00       	jmpq   0x7f01bb406ce5
    7f01bb406cd9:	8b 85 10 d8 ff ff    	mov    -0x27f0(%rbp),%eax
    7f01bb406cdf:	89 85 e8 d7 ff ff    	mov    %eax,-0x2818(%rbp)
    7f01bb406ce5:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb406ceb:	85 c0                	test   %eax,%eax
    7f01bb406ced:	0f 84 11 00 00 00    	je     0x7f01bb406d04
    7f01bb406cf3:	8b 85 f0 d7 ff ff    	mov    -0x2810(%rbp),%eax
    7f01bb406cf9:	89 85 e0 d7 ff ff    	mov    %eax,-0x2820(%rbp)
    7f01bb406cff:	e9 0c 00 00 00       	jmpq   0x7f01bb406d10
    7f01bb406d04:	8b 85 10 d8 ff ff    	mov    -0x27f0(%rbp),%eax
    7f01bb406d0a:	89 85 e0 d7 ff ff    	mov    %eax,-0x2820(%rbp)
    7f01bb406d10:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406d16:	85 c0                	test   %eax,%eax
    7f01bb406d18:	0f 85 11 00 00 00    	jne    0x7f01bb406d2f
    7f01bb406d1e:	8b 85 f8 d7 ff ff    	mov    -0x2808(%rbp),%eax
    7f01bb406d24:	89 85 d8 d7 ff ff    	mov    %eax,-0x2828(%rbp)
    7f01bb406d2a:	e9 4c 00 00 00       	jmpq   0x7f01bb406d7b
    7f01bb406d2f:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406d35:	83 f8 01             	cmp    $0x1,%eax
    7f01bb406d38:	0f 85 11 00 00 00    	jne    0x7f01bb406d4f
    7f01bb406d3e:	8b 85 e8 d7 ff ff    	mov    -0x2818(%rbp),%eax
    7f01bb406d44:	89 85 d8 d7 ff ff    	mov    %eax,-0x2828(%rbp)
    7f01bb406d4a:	e9 2c 00 00 00       	jmpq   0x7f01bb406d7b
    7f01bb406d4f:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406d55:	83 f8 02             	cmp    $0x2,%eax
    7f01bb406d58:	0f 85 11 00 00 00    	jne    0x7f01bb406d6f
    7f01bb406d5e:	8b 85 e0 d7 ff ff    	mov    -0x2820(%rbp),%eax
    7f01bb406d64:	89 85 d8 d7 ff ff    	mov    %eax,-0x2828(%rbp)
    7f01bb406d6a:	e9 0c 00 00 00       	jmpq   0x7f01bb406d7b
    7f01bb406d6f:	8b 85 10 d8 ff ff    	mov    -0x27f0(%rbp),%eax
    7f01bb406d75:	89 85 d8 d7 ff ff    	mov    %eax,-0x2828(%rbp)
    7f01bb406d7b:	8b 85 18 d8 ff ff    	mov    -0x27e8(%rbp),%eax
    7f01bb406d81:	c1 e8 00             	shr    $0x0,%eax
    7f01bb406d84:	8b c0                	mov    %eax,%eax
    7f01bb406d86:	48 c1 e0 00          	shl    $0x0,%rax
    7f01bb406d8a:	49 8b 8f 28 41 00 00 	mov    0x4128(%r15),%rcx
    7f01bb406d91:	48 33 c1             	xor    %rcx,%rax
    7f01bb406d94:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7f01bb406d99:	48 23 c2             	and    %rdx,%rax
    7f01bb406d9c:	48 33 c8             	xor    %rax,%rcx
    7f01bb406d9f:	49 89 8f 28 41 00 00 	mov    %rcx,0x4128(%r15)
    7f01bb406da6:	49 8b c7             	mov    %r15,%rax
    7f01bb406da9:	48 05 2c 41 00 00    	add    $0x412c,%rax
    7f01bb406daf:	49 8b cf             	mov    %r15,%rcx
    7f01bb406db2:	48 81 c1 e8 40 00 00 	add    $0x40e8,%rcx
    7f01bb406db9:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb406dbc:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb406dbf:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb406dc3:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb406dc7:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb406dcb:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb406dcf:	48 8b 51 30          	mov    0x30(%rcx),%rdx
    7f01bb406dd3:	48 89 50 30          	mov    %rdx,0x30(%rax)
    7f01bb406dd7:	8b 51 38             	mov    0x38(%rcx),%edx
    7f01bb406dda:	89 50 38             	mov    %edx,0x38(%rax)
    7f01bb406ddd:	8b 85 d8 d7 ff ff    	mov    -0x2828(%rbp),%eax
    7f01bb406de3:	c1 e8 00             	shr    $0x0,%eax
    7f01bb406de6:	8b c0                	mov    %eax,%eax
    7f01bb406de8:	48 c1 e0 00          	shl    $0x0,%rax
    7f01bb406dec:	49 8b 8f 68 41 00 00 	mov    0x4168(%r15),%rcx
    7f01bb406df3:	48 33 c1             	xor    %rcx,%rax
    7f01bb406df6:	ba ff ff ff ff       	mov    $0xffffffff,%edx
    7f01bb406dfb:	48 23 c2             	and    %rdx,%rax
    7f01bb406dfe:	48 33 c8             	xor    %rax,%rcx
    7f01bb406e01:	49 89 8f 68 41 00 00 	mov    %rcx,0x4168(%r15)
    7f01bb406e08:	8b 85 60 d8 ff ff    	mov    -0x27a0(%rbp),%eax
    7f01bb406e0e:	85 c0                	test   %eax,%eax
    7f01bb406e10:	0f 84 0f 00 00 00    	je     0x7f01bb406e25
    7f01bb406e16:	c7 85 d0 d7 ff ff 10 	movl   $0x10,-0x2830(%rbp)
    7f01bb406e1d:	00 00 00 
    7f01bb406e20:	e9 0a 00 00 00       	jmpq   0x7f01bb406e2f
    7f01bb406e25:	c7 85 d0 d7 ff ff 11 	movl   $0x11,-0x2830(%rbp)
    7f01bb406e2c:	00 00 00 
    7f01bb406e2f:	8b 85 d0 d8 ff ff    	mov    -0x2730(%rbp),%eax
    7f01bb406e35:	85 c0                	test   %eax,%eax
    7f01bb406e37:	0f 84 11 00 00 00    	je     0x7f01bb406e4e
    7f01bb406e3d:	8b 85 d0 d7 ff ff    	mov    -0x2830(%rbp),%eax
    7f01bb406e43:	89 85 c8 d7 ff ff    	mov    %eax,-0x2838(%rbp)
    7f01bb406e49:	e9 0c 00 00 00       	jmpq   0x7f01bb406e5a
    7f01bb406e4e:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
    7f01bb406e54:	89 85 c8 d7 ff ff    	mov    %eax,-0x2838(%rbp)
    7f01bb406e5a:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
    7f01bb406e60:	ff c8                	dec    %eax
    7f01bb406e62:	83 e0 1f             	and    $0x1f,%eax
    7f01bb406e65:	89 85 c0 d7 ff ff    	mov    %eax,-0x2840(%rbp)
    7f01bb406e6b:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb406e71:	85 c0                	test   %eax,%eax
    7f01bb406e73:	0f 84 11 00 00 00    	je     0x7f01bb406e8a
    7f01bb406e79:	8b 85 c0 d7 ff ff    	mov    -0x2840(%rbp),%eax
    7f01bb406e7f:	89 85 b8 d7 ff ff    	mov    %eax,-0x2848(%rbp)
    7f01bb406e85:	e9 0c 00 00 00       	jmpq   0x7f01bb406e96
    7f01bb406e8a:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
    7f01bb406e90:	89 85 b8 d7 ff ff    	mov    %eax,-0x2848(%rbp)
    7f01bb406e96:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb406e9c:	85 c0                	test   %eax,%eax
    7f01bb406e9e:	0f 84 11 00 00 00    	je     0x7f01bb406eb5
    7f01bb406ea4:	8b 85 c0 d7 ff ff    	mov    -0x2840(%rbp),%eax
    7f01bb406eaa:	89 85 b0 d7 ff ff    	mov    %eax,-0x2850(%rbp)
    7f01bb406eb0:	e9 0c 00 00 00       	jmpq   0x7f01bb406ec1
    7f01bb406eb5:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
    7f01bb406ebb:	89 85 b0 d7 ff ff    	mov    %eax,-0x2850(%rbp)
    7f01bb406ec1:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406ec7:	85 c0                	test   %eax,%eax
    7f01bb406ec9:	0f 85 11 00 00 00    	jne    0x7f01bb406ee0
    7f01bb406ecf:	8b 85 c8 d7 ff ff    	mov    -0x2838(%rbp),%eax
    7f01bb406ed5:	89 85 a8 d7 ff ff    	mov    %eax,-0x2858(%rbp)
    7f01bb406edb:	e9 4c 00 00 00       	jmpq   0x7f01bb406f2c
    7f01bb406ee0:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406ee6:	83 f8 01             	cmp    $0x1,%eax
    7f01bb406ee9:	0f 85 11 00 00 00    	jne    0x7f01bb406f00
    7f01bb406eef:	8b 85 b8 d7 ff ff    	mov    -0x2848(%rbp),%eax
    7f01bb406ef5:	89 85 a8 d7 ff ff    	mov    %eax,-0x2858(%rbp)
    7f01bb406efb:	e9 2c 00 00 00       	jmpq   0x7f01bb406f2c
    7f01bb406f00:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb406f06:	83 f8 02             	cmp    $0x2,%eax
    7f01bb406f09:	0f 85 11 00 00 00    	jne    0x7f01bb406f20
    7f01bb406f0f:	8b 85 b0 d7 ff ff    	mov    -0x2850(%rbp),%eax
    7f01bb406f15:	89 85 a8 d7 ff ff    	mov    %eax,-0x2858(%rbp)
    7f01bb406f1b:	e9 0c 00 00 00       	jmpq   0x7f01bb406f2c
    7f01bb406f20:	8b 85 40 fb ff ff    	mov    -0x4c0(%rbp),%eax
    7f01bb406f26:	89 85 a8 d7 ff ff    	mov    %eax,-0x2858(%rbp)
    7f01bb406f2c:	8b 85 f0 f4 ff ff    	mov    -0xb10(%rbp),%eax
    7f01bb406f32:	83 f8 04             	cmp    $0x4,%eax
    7f01bb406f35:	0f 94 c0             	sete   %al
    7f01bb406f38:	0f b6 c0             	movzbl %al,%eax
    7f01bb406f3b:	8b 8d 08 f6 ff ff    	mov    -0x9f8(%rbp),%ecx
    7f01bb406f41:	23 c1                	and    %ecx,%eax
    7f01bb406f43:	89 85 a0 d7 ff ff    	mov    %eax,-0x2860(%rbp)
    7f01bb406f49:	8b 8d 20 f5 ff ff    	mov    -0xae0(%rbp),%ecx
    7f01bb406f4f:	23 c1                	and    %ecx,%eax
    7f01bb406f51:	83 e0 01             	and    $0x1,%eax
    7f01bb406f54:	8b 8d 38 fb ff ff    	mov    -0x4c8(%rbp),%ecx
    7f01bb406f5a:	03 c1                	add    %ecx,%eax
    7f01bb406f5c:	2b 85 c8 d8 ff ff    	sub    -0x2738(%rbp),%eax
    7f01bb406f62:	89 85 98 d7 ff ff    	mov    %eax,-0x2868(%rbp)
    7f01bb406f68:	48 8b 85 e8 fa ff ff 	mov    -0x518(%rbp),%rax
    7f01bb406f6f:	48 8b 40 50          	mov    0x50(%rax),%rax
    7f01bb406f73:	8b 00                	mov    (%rax),%eax
    7f01bb406f75:	48 8b 8d a0 dd ff ff 	mov    -0x2260(%rbp),%rcx
    7f01bb406f7c:	8b 09                	mov    (%rcx),%ecx
    7f01bb406f7e:	89 8d 90 d7 ff ff    	mov    %ecx,-0x2870(%rbp)
    7f01bb406f84:	85 c9                	test   %ecx,%ecx
    7f01bb406f86:	0f 95 c1             	setne  %cl
    7f01bb406f89:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb406f8c:	89 85 88 d7 ff ff    	mov    %eax,-0x2878(%rbp)
    7f01bb406f92:	89 8d 80 d7 ff ff    	mov    %ecx,-0x2880(%rbp)
    7f01bb406f98:	23 c1                	and    %ecx,%eax
    7f01bb406f9a:	89 85 78 d7 ff ff    	mov    %eax,-0x2888(%rbp)
    7f01bb406fa0:	85 c0                	test   %eax,%eax
    7f01bb406fa2:	0f 84 0f 00 00 00    	je     0x7f01bb406fb7
    7f01bb406fa8:	c7 85 70 d7 ff ff 00 	movl   $0x0,-0x2890(%rbp)
    7f01bb406faf:	00 00 00 
    7f01bb406fb2:	e9 0c 00 00 00       	jmpq   0x7f01bb406fc3
    7f01bb406fb7:	8b 85 30 fb ff ff    	mov    -0x4d0(%rbp),%eax
    7f01bb406fbd:	89 85 70 d7 ff ff    	mov    %eax,-0x2890(%rbp)
    7f01bb406fc3:	8b 85 28 f5 ff ff    	mov    -0xad8(%rbp),%eax
    7f01bb406fc9:	23 85 a0 d7 ff ff    	and    -0x2860(%rbp),%eax
    7f01bb406fcf:	8b 8d 30 fb ff ff    	mov    -0x4d0(%rbp),%ecx
    7f01bb406fd5:	ff c1                	inc    %ecx
    7f01bb406fd7:	81 e1 ff ff 0f 00    	and    $0xfffff,%ecx
    7f01bb406fdd:	89 8d 68 d7 ff ff    	mov    %ecx,-0x2898(%rbp)
    7f01bb406fe3:	85 c0                	test   %eax,%eax
    7f01bb406fe5:	0f 84 11 00 00 00    	je     0x7f01bb406ffc
    7f01bb406feb:	8b 85 68 d7 ff ff    	mov    -0x2898(%rbp),%eax
    7f01bb406ff1:	89 85 60 d7 ff ff    	mov    %eax,-0x28a0(%rbp)
    7f01bb406ff7:	e9 0c 00 00 00       	jmpq   0x7f01bb407008
    7f01bb406ffc:	8b 85 30 fb ff ff    	mov    -0x4d0(%rbp),%eax
    7f01bb407002:	89 85 60 d7 ff ff    	mov    %eax,-0x28a0(%rbp)
    7f01bb407008:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40700e:	85 c0                	test   %eax,%eax
    7f01bb407010:	0f 85 11 00 00 00    	jne    0x7f01bb407027
    7f01bb407016:	8b 85 70 d7 ff ff    	mov    -0x2890(%rbp),%eax
    7f01bb40701c:	89 85 58 d7 ff ff    	mov    %eax,-0x28a8(%rbp)
    7f01bb407022:	e9 2c 00 00 00       	jmpq   0x7f01bb407053
    7f01bb407027:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40702d:	83 f8 01             	cmp    $0x1,%eax
    7f01bb407030:	0f 85 11 00 00 00    	jne    0x7f01bb407047
    7f01bb407036:	8b 85 60 d7 ff ff    	mov    -0x28a0(%rbp),%eax
    7f01bb40703c:	89 85 58 d7 ff ff    	mov    %eax,-0x28a8(%rbp)
    7f01bb407042:	e9 0c 00 00 00       	jmpq   0x7f01bb407053
    7f01bb407047:	8b 85 30 fb ff ff    	mov    -0x4d0(%rbp),%eax
    7f01bb40704d:	89 85 58 d7 ff ff    	mov    %eax,-0x28a8(%rbp)
    7f01bb407053:	8b 85 90 d7 ff ff    	mov    -0x2870(%rbp),%eax
    7f01bb407059:	ff c0                	inc    %eax
    7f01bb40705b:	c1 e0 02             	shl    $0x2,%eax
    7f01bb40705e:	83 c0 3f             	add    $0x3f,%eax
    7f01bb407061:	c1 e8 06             	shr    $0x6,%eax
    7f01bb407064:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb407069:	ff c8                	dec    %eax
    7f01bb40706b:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb407070:	89 85 50 d7 ff ff    	mov    %eax,-0x28b0(%rbp)
    7f01bb407076:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40707c:	83 f8 04             	cmp    $0x4,%eax
    7f01bb40707f:	0f 94 c0             	sete   %al
    7f01bb407082:	0f b6 c0             	movzbl %al,%eax
    7f01bb407085:	8b 8d 30 e4 ff ff    	mov    -0x1bd0(%rbp),%ecx
    7f01bb40708b:	23 8d 50 da ff ff    	and    -0x25b0(%rbp),%ecx
    7f01bb407091:	89 8d 48 d7 ff ff    	mov    %ecx,-0x28b8(%rbp)
    7f01bb407097:	23 c1                	and    %ecx,%eax
    7f01bb407099:	8b 8d 20 fb ff ff    	mov    -0x4e0(%rbp),%ecx
    7f01bb40709f:	ff c1                	inc    %ecx
    7f01bb4070a1:	83 e1 03             	and    $0x3,%ecx
    7f01bb4070a4:	89 8d 40 d7 ff ff    	mov    %ecx,-0x28c0(%rbp)
    7f01bb4070aa:	85 c0                	test   %eax,%eax
    7f01bb4070ac:	0f 84 11 00 00 00    	je     0x7f01bb4070c3
    7f01bb4070b2:	8b 85 40 d7 ff ff    	mov    -0x28c0(%rbp),%eax
    7f01bb4070b8:	89 85 38 d7 ff ff    	mov    %eax,-0x28c8(%rbp)
    7f01bb4070be:	e9 0c 00 00 00       	jmpq   0x7f01bb4070cf
    7f01bb4070c3:	8b 85 20 fb ff ff    	mov    -0x4e0(%rbp),%eax
    7f01bb4070c9:	89 85 38 d7 ff ff    	mov    %eax,-0x28c8(%rbp)
    7f01bb4070cf:	8b 85 18 fb ff ff    	mov    -0x4e8(%rbp),%eax
    7f01bb4070d5:	ff c0                	inc    %eax
    7f01bb4070d7:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4070dc:	89 85 30 d7 ff ff    	mov    %eax,-0x28d0(%rbp)
    7f01bb4070e2:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb4070e8:	85 c0                	test   %eax,%eax
    7f01bb4070ea:	0f 84 11 00 00 00    	je     0x7f01bb407101
    7f01bb4070f0:	8b 85 30 d7 ff ff    	mov    -0x28d0(%rbp),%eax
    7f01bb4070f6:	89 85 28 d7 ff ff    	mov    %eax,-0x28d8(%rbp)
    7f01bb4070fc:	e9 0c 00 00 00       	jmpq   0x7f01bb40710d
    7f01bb407101:	8b 85 18 fb ff ff    	mov    -0x4e8(%rbp),%eax
    7f01bb407107:	89 85 28 d7 ff ff    	mov    %eax,-0x28d8(%rbp)
    7f01bb40710d:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb407113:	85 c0                	test   %eax,%eax
    7f01bb407115:	0f 84 11 00 00 00    	je     0x7f01bb40712c
    7f01bb40711b:	8b 85 30 d7 ff ff    	mov    -0x28d0(%rbp),%eax
    7f01bb407121:	89 85 20 d7 ff ff    	mov    %eax,-0x28e0(%rbp)
    7f01bb407127:	e9 0c 00 00 00       	jmpq   0x7f01bb407138
    7f01bb40712c:	8b 85 18 fb ff ff    	mov    -0x4e8(%rbp),%eax
    7f01bb407132:	89 85 20 d7 ff ff    	mov    %eax,-0x28e0(%rbp)
    7f01bb407138:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb40713e:	83 f8 01             	cmp    $0x1,%eax
    7f01bb407141:	0f 85 11 00 00 00    	jne    0x7f01bb407158
    7f01bb407147:	8b 85 28 d7 ff ff    	mov    -0x28d8(%rbp),%eax
    7f01bb40714d:	89 85 18 d7 ff ff    	mov    %eax,-0x28e8(%rbp)
    7f01bb407153:	e9 2c 00 00 00       	jmpq   0x7f01bb407184
    7f01bb407158:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb40715e:	83 f8 02             	cmp    $0x2,%eax
    7f01bb407161:	0f 85 11 00 00 00    	jne    0x7f01bb407178
    7f01bb407167:	8b 85 20 d7 ff ff    	mov    -0x28e0(%rbp),%eax
    7f01bb40716d:	89 85 18 d7 ff ff    	mov    %eax,-0x28e8(%rbp)
    7f01bb407173:	e9 0c 00 00 00       	jmpq   0x7f01bb407184
    7f01bb407178:	8b 85 18 fb ff ff    	mov    -0x4e8(%rbp),%eax
    7f01bb40717e:	89 85 18 d7 ff ff    	mov    %eax,-0x28e8(%rbp)
    7f01bb407184:	48 8b 85 a0 dd ff ff 	mov    -0x2260(%rbp),%rax
    7f01bb40718b:	8b 80 ff ff ff ff    	mov    -0x1(%rax),%eax
    7f01bb407191:	c1 e8 08             	shr    $0x8,%eax
    7f01bb407194:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb407199:	89 85 10 d7 ff ff    	mov    %eax,-0x28f0(%rbp)
    7f01bb40719f:	ff c8                	dec    %eax
    7f01bb4071a1:	25 ff ff 0f 00       	and    $0xfffff,%eax
    7f01bb4071a6:	89 85 08 d7 ff ff    	mov    %eax,-0x28f8(%rbp)
    7f01bb4071ac:	41 8b 87 58 51 00 00 	mov    0x5158(%r15),%eax
    7f01bb4071b3:	89 85 00 d7 ff ff    	mov    %eax,-0x2900(%rbp)
    7f01bb4071b9:	ff c0                	inc    %eax
    7f01bb4071bb:	89 85 f8 d6 ff ff    	mov    %eax,-0x2908(%rbp)
    7f01bb4071c1:	8b 85 a0 d7 ff ff    	mov    -0x2860(%rbp),%eax
    7f01bb4071c7:	85 c0                	test   %eax,%eax
    7f01bb4071c9:	0f 84 11 00 00 00    	je     0x7f01bb4071e0
    7f01bb4071cf:	8b 85 00 d7 ff ff    	mov    -0x2900(%rbp),%eax
    7f01bb4071d5:	89 85 f0 d6 ff ff    	mov    %eax,-0x2910(%rbp)
    7f01bb4071db:	e9 0c 00 00 00       	jmpq   0x7f01bb4071ec
    7f01bb4071e0:	8b 85 f8 d6 ff ff    	mov    -0x2908(%rbp),%eax
    7f01bb4071e6:	89 85 f0 d6 ff ff    	mov    %eax,-0x2910(%rbp)
    7f01bb4071ec:	8b 85 28 f5 ff ff    	mov    -0xad8(%rbp),%eax
    7f01bb4071f2:	85 c0                	test   %eax,%eax
    7f01bb4071f4:	0f 84 11 00 00 00    	je     0x7f01bb40720b
    7f01bb4071fa:	8b 85 f0 d6 ff ff    	mov    -0x2910(%rbp),%eax
    7f01bb407200:	89 85 e8 d6 ff ff    	mov    %eax,-0x2918(%rbp)
    7f01bb407206:	e9 0c 00 00 00       	jmpq   0x7f01bb407217
    7f01bb40720b:	8b 85 f8 d6 ff ff    	mov    -0x2908(%rbp),%eax
    7f01bb407211:	89 85 e8 d6 ff ff    	mov    %eax,-0x2918(%rbp)
    7f01bb407217:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40721d:	83 f8 01             	cmp    $0x1,%eax
    7f01bb407220:	0f 85 11 00 00 00    	jne    0x7f01bb407237
    7f01bb407226:	8b 85 e8 d6 ff ff    	mov    -0x2918(%rbp),%eax
    7f01bb40722c:	89 85 e0 d6 ff ff    	mov    %eax,-0x2920(%rbp)
    7f01bb407232:	e9 0c 00 00 00       	jmpq   0x7f01bb407243
    7f01bb407237:	8b 85 00 d7 ff ff    	mov    -0x2900(%rbp),%eax
    7f01bb40723d:	89 85 e0 d6 ff ff    	mov    %eax,-0x2920(%rbp)
    7f01bb407243:	8b 85 e0 d6 ff ff    	mov    -0x2920(%rbp),%eax
    7f01bb407249:	8b c0                	mov    %eax,%eax
    7f01bb40724b:	49 8b 8f 5c 51 00 00 	mov    0x515c(%r15),%rcx
    7f01bb407252:	48 8b d1             	mov    %rcx,%rdx
    7f01bb407255:	48 c1 e2 20          	shl    $0x20,%rdx
    7f01bb407259:	48 0b c2             	or     %rdx,%rax
    7f01bb40725c:	49 89 87 70 41 00 00 	mov    %rax,0x4170(%r15)
    7f01bb407263:	48 c1 e9 20          	shr    $0x20,%rcx
    7f01bb407267:	49 89 8f 78 41 00 00 	mov    %rcx,0x4178(%r15)
    7f01bb40726e:	48 8b 85 08 fb ff ff 	mov    -0x4f8(%rbp),%rax
    7f01bb407275:	48 ff c0             	inc    %rax
    7f01bb407278:	48 89 85 d8 d6 ff ff 	mov    %rax,-0x2928(%rbp)
    7f01bb40727f:	8b 85 78 d7 ff ff    	mov    -0x2888(%rbp),%eax
    7f01bb407285:	85 c0                	test   %eax,%eax
    7f01bb407287:	0f 84 0f 00 00 00    	je     0x7f01bb40729c
    7f01bb40728d:	c7 85 d0 d6 ff ff 01 	movl   $0x1,-0x2930(%rbp)
    7f01bb407294:	00 00 00 
    7f01bb407297:	e9 0c 00 00 00       	jmpq   0x7f01bb4072a8
    7f01bb40729c:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4072a2:	89 85 d0 d6 ff ff    	mov    %eax,-0x2930(%rbp)
    7f01bb4072a8:	8b 85 30 fb ff ff    	mov    -0x4d0(%rbp),%eax
    7f01bb4072ae:	3b 85 28 fb ff ff    	cmp    -0x4d8(%rbp),%eax
    7f01bb4072b4:	0f 94 c0             	sete   %al
    7f01bb4072b7:	0f b6 c0             	movzbl %al,%eax
    7f01bb4072ba:	8b 8d a0 d7 ff ff    	mov    -0x2860(%rbp),%ecx
    7f01bb4072c0:	23 c1                	and    %ecx,%eax
    7f01bb4072c2:	8b 8d 28 f5 ff ff    	mov    -0xad8(%rbp),%ecx
    7f01bb4072c8:	23 c1                	and    %ecx,%eax
    7f01bb4072ca:	85 c0                	test   %eax,%eax
    7f01bb4072cc:	0f 84 0f 00 00 00    	je     0x7f01bb4072e1
    7f01bb4072d2:	c7 85 c8 d6 ff ff 02 	movl   $0x2,-0x2938(%rbp)
    7f01bb4072d9:	00 00 00 
    7f01bb4072dc:	e9 0c 00 00 00       	jmpq   0x7f01bb4072ed
    7f01bb4072e1:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4072e7:	89 85 c8 d6 ff ff    	mov    %eax,-0x2938(%rbp)
    7f01bb4072ed:	8b 85 18 fb ff ff    	mov    -0x4e8(%rbp),%eax
    7f01bb4072f3:	3b 85 10 d7 ff ff    	cmp    -0x28f0(%rbp),%eax
    7f01bb4072f9:	0f 94 c0             	sete   %al
    7f01bb4072fc:	0f b6 c0             	movzbl %al,%eax
    7f01bb4072ff:	33 c9                	xor    %ecx,%ecx
    7f01bb407301:	3b 8d c8 fc ff ff    	cmp    -0x338(%rbp),%ecx
    7f01bb407307:	0f 94 c1             	sete   %cl
    7f01bb40730a:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb40730d:	8b 95 b0 e4 ff ff    	mov    -0x1b50(%rbp),%edx
    7f01bb407313:	23 ca                	and    %edx,%ecx
    7f01bb407315:	8b 95 18 f8 ff ff    	mov    -0x7e8(%rbp),%edx
    7f01bb40731b:	23 ca                	and    %edx,%ecx
    7f01bb40731d:	23 8d 18 ed ff ff    	and    -0x12e8(%rbp),%ecx
    7f01bb407323:	33 d2                	xor    %edx,%edx
    7f01bb407325:	3b 95 30 fc ff ff    	cmp    -0x3d0(%rbp),%edx
    7f01bb40732b:	0f 94 c2             	sete   %dl
    7f01bb40732e:	0f b6 d2             	movzbl %dl,%edx
    7f01bb407331:	8b b5 28 e2 ff ff    	mov    -0x1dd8(%rbp),%esi
    7f01bb407337:	23 d6                	and    %esi,%edx
    7f01bb407339:	23 ca                	and    %edx,%ecx
    7f01bb40733b:	23 c1                	and    %ecx,%eax
    7f01bb40733d:	85 c0                	test   %eax,%eax
    7f01bb40733f:	0f 84 0f 00 00 00    	je     0x7f01bb407354
    7f01bb407345:	c7 85 c0 d6 ff ff 03 	movl   $0x3,-0x2940(%rbp)
    7f01bb40734c:	00 00 00 
    7f01bb40734f:	e9 0c 00 00 00       	jmpq   0x7f01bb407360
    7f01bb407354:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40735a:	89 85 c0 d6 ff ff    	mov    %eax,-0x2940(%rbp)
    7f01bb407360:	8b 85 48 d7 ff ff    	mov    -0x28b8(%rbp),%eax
    7f01bb407366:	85 c0                	test   %eax,%eax
    7f01bb407368:	0f 84 0f 00 00 00    	je     0x7f01bb40737d
    7f01bb40736e:	c7 85 b8 d6 ff ff 04 	movl   $0x4,-0x2948(%rbp)
    7f01bb407375:	00 00 00 
    7f01bb407378:	e9 0c 00 00 00       	jmpq   0x7f01bb407389
    7f01bb40737d:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb407383:	89 85 b8 d6 ff ff    	mov    %eax,-0x2948(%rbp)
    7f01bb407389:	8b 85 20 fb ff ff    	mov    -0x4e0(%rbp),%eax
    7f01bb40738f:	83 f8 02             	cmp    $0x2,%eax
    7f01bb407392:	0f 94 c0             	sete   %al
    7f01bb407395:	0f b6 c0             	movzbl %al,%eax
    7f01bb407398:	8b 8d 48 d7 ff ff    	mov    -0x28b8(%rbp),%ecx
    7f01bb40739e:	23 c1                	and    %ecx,%eax
    7f01bb4073a0:	85 c0                	test   %eax,%eax
    7f01bb4073a2:	0f 84 0f 00 00 00    	je     0x7f01bb4073b7
    7f01bb4073a8:	c7 85 b0 d6 ff ff 05 	movl   $0x5,-0x2950(%rbp)
    7f01bb4073af:	00 00 00 
    7f01bb4073b2:	e9 0c 00 00 00       	jmpq   0x7f01bb4073c3
    7f01bb4073b7:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4073bd:	89 85 b0 d6 ff ff    	mov    %eax,-0x2950(%rbp)
    7f01bb4073c3:	8b 85 68 fb ff ff    	mov    -0x498(%rbp),%eax
    7f01bb4073c9:	85 c0                	test   %eax,%eax
    7f01bb4073cb:	0f 94 c0             	sete   %al
    7f01bb4073ce:	0f b6 c0             	movzbl %al,%eax
    7f01bb4073d1:	89 85 a8 d6 ff ff    	mov    %eax,-0x2958(%rbp)
    7f01bb4073d7:	85 c0                	test   %eax,%eax
    7f01bb4073d9:	0f 84 0f 00 00 00    	je     0x7f01bb4073ee
    7f01bb4073df:	c7 85 a0 d6 ff ff 00 	movl   $0x0,-0x2960(%rbp)
    7f01bb4073e6:	00 00 00 
    7f01bb4073e9:	e9 0c 00 00 00       	jmpq   0x7f01bb4073fa
    7f01bb4073ee:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4073f4:	89 85 a0 d6 ff ff    	mov    %eax,-0x2960(%rbp)
    7f01bb4073fa:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb407400:	85 c0                	test   %eax,%eax
    7f01bb407402:	0f 85 11 00 00 00    	jne    0x7f01bb407419
    7f01bb407408:	8b 85 d0 d6 ff ff    	mov    -0x2930(%rbp),%eax
    7f01bb40740e:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb407414:	e9 ac 00 00 00       	jmpq   0x7f01bb4074c5
    7f01bb407419:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40741f:	83 f8 01             	cmp    $0x1,%eax
    7f01bb407422:	0f 85 11 00 00 00    	jne    0x7f01bb407439
    7f01bb407428:	8b 85 c8 d6 ff ff    	mov    -0x2938(%rbp),%eax
    7f01bb40742e:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb407434:	e9 8c 00 00 00       	jmpq   0x7f01bb4074c5
    7f01bb407439:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40743f:	83 f8 02             	cmp    $0x2,%eax
    7f01bb407442:	0f 85 11 00 00 00    	jne    0x7f01bb407459
    7f01bb407448:	8b 85 c0 d6 ff ff    	mov    -0x2940(%rbp),%eax
    7f01bb40744e:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb407454:	e9 6c 00 00 00       	jmpq   0x7f01bb4074c5
    7f01bb407459:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40745f:	83 f8 03             	cmp    $0x3,%eax
    7f01bb407462:	0f 85 11 00 00 00    	jne    0x7f01bb407479
    7f01bb407468:	8b 85 b8 d6 ff ff    	mov    -0x2948(%rbp),%eax
    7f01bb40746e:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb407474:	e9 4c 00 00 00       	jmpq   0x7f01bb4074c5
    7f01bb407479:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40747f:	83 f8 04             	cmp    $0x4,%eax
    7f01bb407482:	0f 85 11 00 00 00    	jne    0x7f01bb407499
    7f01bb407488:	8b 85 b0 d6 ff ff    	mov    -0x2950(%rbp),%eax
    7f01bb40748e:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb407494:	e9 2c 00 00 00       	jmpq   0x7f01bb4074c5
    7f01bb407499:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb40749f:	83 f8 05             	cmp    $0x5,%eax
    7f01bb4074a2:	0f 85 11 00 00 00    	jne    0x7f01bb4074b9
    7f01bb4074a8:	8b 85 a0 d6 ff ff    	mov    -0x2960(%rbp),%eax
    7f01bb4074ae:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb4074b4:	e9 0c 00 00 00       	jmpq   0x7f01bb4074c5
    7f01bb4074b9:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb4074bf:	89 85 98 d6 ff ff    	mov    %eax,-0x2968(%rbp)
    7f01bb4074c5:	8b 85 80 d7 ff ff    	mov    -0x2880(%rbp),%eax
    7f01bb4074cb:	85 c0                	test   %eax,%eax
    7f01bb4074cd:	0f 84 0f 00 00 00    	je     0x7f01bb4074e2
    7f01bb4074d3:	c7 85 90 d6 ff ff 00 	movl   $0x0,-0x2970(%rbp)
    7f01bb4074da:	00 00 00 
    7f01bb4074dd:	e9 0a 00 00 00       	jmpq   0x7f01bb4074ec
    7f01bb4074e2:	c7 85 90 d6 ff ff 01 	movl   $0x1,-0x2970(%rbp)
    7f01bb4074e9:	00 00 00 
    7f01bb4074ec:	8b 85 88 d7 ff ff    	mov    -0x2878(%rbp),%eax
    7f01bb4074f2:	85 c0                	test   %eax,%eax
    7f01bb4074f4:	0f 84 11 00 00 00    	je     0x7f01bb40750b
    7f01bb4074fa:	8b 85 90 d6 ff ff    	mov    -0x2970(%rbp),%eax
    7f01bb407500:	89 85 88 d6 ff ff    	mov    %eax,-0x2978(%rbp)
    7f01bb407506:	e9 0c 00 00 00       	jmpq   0x7f01bb407517
    7f01bb40750b:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
    7f01bb407511:	89 85 88 d6 ff ff    	mov    %eax,-0x2978(%rbp)
    7f01bb407517:	8b 85 a8 d6 ff ff    	mov    -0x2958(%rbp),%eax
    7f01bb40751d:	85 c0                	test   %eax,%eax
    7f01bb40751f:	0f 84 0f 00 00 00    	je     0x7f01bb407534
    7f01bb407525:	c7 85 80 d6 ff ff 01 	movl   $0x1,-0x2980(%rbp)
    7f01bb40752c:	00 00 00 
    7f01bb40752f:	e9 0c 00 00 00       	jmpq   0x7f01bb407540
    7f01bb407534:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
    7f01bb40753a:	89 85 80 d6 ff ff    	mov    %eax,-0x2980(%rbp)
    7f01bb407540:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb407546:	85 c0                	test   %eax,%eax
    7f01bb407548:	0f 85 11 00 00 00    	jne    0x7f01bb40755f
    7f01bb40754e:	8b 85 88 d6 ff ff    	mov    -0x2978(%rbp),%eax
    7f01bb407554:	89 85 78 d6 ff ff    	mov    %eax,-0x2988(%rbp)
    7f01bb40755a:	e9 2c 00 00 00       	jmpq   0x7f01bb40758b
    7f01bb40755f:	8b 85 00 fb ff ff    	mov    -0x500(%rbp),%eax
    7f01bb407565:	83 f8 05             	cmp    $0x5,%eax
    7f01bb407568:	0f 85 11 00 00 00    	jne    0x7f01bb40757f
    7f01bb40756e:	8b 85 80 d6 ff ff    	mov    -0x2980(%rbp),%eax
    7f01bb407574:	89 85 78 d6 ff ff    	mov    %eax,-0x2988(%rbp)
    7f01bb40757a:	e9 0c 00 00 00       	jmpq   0x7f01bb40758b
    7f01bb40757f:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
    7f01bb407585:	89 85 78 d6 ff ff    	mov    %eax,-0x2988(%rbp)
    7f01bb40758b:	8b 85 d0 d8 ff ff    	mov    -0x2730(%rbp),%eax
    7f01bb407591:	85 c0                	test   %eax,%eax
    7f01bb407593:	0f 84 0f 00 00 00    	je     0x7f01bb4075a8
    7f01bb407599:	c7 85 70 d6 ff ff 01 	movl   $0x1,-0x2990(%rbp)
    7f01bb4075a0:	00 00 00 
    7f01bb4075a3:	e9 0c 00 00 00       	jmpq   0x7f01bb4075b4
    7f01bb4075a8:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb4075ae:	89 85 70 d6 ff ff    	mov    %eax,-0x2990(%rbp)
    7f01bb4075b4:	8b 85 18 fb ff ff    	mov    -0x4e8(%rbp),%eax
    7f01bb4075ba:	3b 85 10 fb ff ff    	cmp    -0x4f0(%rbp),%eax
    7f01bb4075c0:	0f 95 c0             	setne  %al
    7f01bb4075c3:	0f b6 c0             	movzbl %al,%eax
    7f01bb4075c6:	8b 8d 40 fb ff ff    	mov    -0x4c0(%rbp),%ecx
    7f01bb4075cc:	83 f9 02             	cmp    $0x2,%ecx
    7f01bb4075cf:	0f 95 c1             	setne  %cl
    7f01bb4075d2:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb4075d5:	23 c1                	and    %ecx,%eax
    7f01bb4075d7:	89 85 68 d6 ff ff    	mov    %eax,-0x2998(%rbp)
    7f01bb4075dd:	85 c0                	test   %eax,%eax
    7f01bb4075df:	0f 84 0f 00 00 00    	je     0x7f01bb4075f4
    7f01bb4075e5:	c7 85 60 d6 ff ff 02 	movl   $0x2,-0x29a0(%rbp)
    7f01bb4075ec:	00 00 00 
    7f01bb4075ef:	e9 0a 00 00 00       	jmpq   0x7f01bb4075fe
    7f01bb4075f4:	c7 85 60 d6 ff ff 00 	movl   $0x0,-0x29a0(%rbp)
    7f01bb4075fb:	00 00 00 
    7f01bb4075fe:	8b 85 18 f8 ff ff    	mov    -0x7e8(%rbp),%eax
    7f01bb407604:	85 c0                	test   %eax,%eax
    7f01bb407606:	0f 84 11 00 00 00    	je     0x7f01bb40761d
    7f01bb40760c:	8b 85 60 d6 ff ff    	mov    -0x29a0(%rbp),%eax
    7f01bb407612:	89 85 58 d6 ff ff    	mov    %eax,-0x29a8(%rbp)
    7f01bb407618:	e9 0a 00 00 00       	jmpq   0x7f01bb407627
    7f01bb40761d:	c7 85 58 d6 ff ff 02 	movl   $0x2,-0x29a8(%rbp)
    7f01bb407624:	00 00 00 
    7f01bb407627:	8b 85 68 d6 ff ff    	mov    -0x2998(%rbp),%eax
    7f01bb40762d:	85 c0                	test   %eax,%eax
    7f01bb40762f:	0f 84 0f 00 00 00    	je     0x7f01bb407644
    7f01bb407635:	c7 85 50 d6 ff ff 01 	movl   $0x1,-0x29b0(%rbp)
    7f01bb40763c:	00 00 00 
    7f01bb40763f:	e9 0a 00 00 00       	jmpq   0x7f01bb40764e
    7f01bb407644:	c7 85 50 d6 ff ff 00 	movl   $0x0,-0x29b0(%rbp)
    7f01bb40764b:	00 00 00 
    7f01bb40764e:	8b 85 18 ed ff ff    	mov    -0x12e8(%rbp),%eax
    7f01bb407654:	85 c0                	test   %eax,%eax
    7f01bb407656:	0f 84 11 00 00 00    	je     0x7f01bb40766d
    7f01bb40765c:	8b 85 50 d6 ff ff    	mov    -0x29b0(%rbp),%eax
    7f01bb407662:	89 85 48 d6 ff ff    	mov    %eax,-0x29b8(%rbp)
    7f01bb407668:	e9 0a 00 00 00       	jmpq   0x7f01bb407677
    7f01bb40766d:	c7 85 48 d6 ff ff 01 	movl   $0x1,-0x29b8(%rbp)
    7f01bb407674:	00 00 00 
    7f01bb407677:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb40767d:	85 c0                	test   %eax,%eax
    7f01bb40767f:	0f 85 11 00 00 00    	jne    0x7f01bb407696
    7f01bb407685:	8b 85 70 d6 ff ff    	mov    -0x2990(%rbp),%eax
    7f01bb40768b:	89 85 40 d6 ff ff    	mov    %eax,-0x29c0(%rbp)
    7f01bb407691:	e9 4c 00 00 00       	jmpq   0x7f01bb4076e2
    7f01bb407696:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb40769c:	83 f8 01             	cmp    $0x1,%eax
    7f01bb40769f:	0f 85 11 00 00 00    	jne    0x7f01bb4076b6
    7f01bb4076a5:	8b 85 58 d6 ff ff    	mov    -0x29a8(%rbp),%eax
    7f01bb4076ab:	89 85 40 d6 ff ff    	mov    %eax,-0x29c0(%rbp)
    7f01bb4076b1:	e9 2c 00 00 00       	jmpq   0x7f01bb4076e2
    7f01bb4076b6:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb4076bc:	83 f8 02             	cmp    $0x2,%eax
    7f01bb4076bf:	0f 85 11 00 00 00    	jne    0x7f01bb4076d6
    7f01bb4076c5:	8b 85 48 d6 ff ff    	mov    -0x29b8(%rbp),%eax
    7f01bb4076cb:	89 85 40 d6 ff ff    	mov    %eax,-0x29c0(%rbp)
    7f01bb4076d1:	e9 0c 00 00 00       	jmpq   0x7f01bb4076e2
    7f01bb4076d6:	8b 85 f0 fa ff ff    	mov    -0x510(%rbp),%eax
    7f01bb4076dc:	89 85 40 d6 ff ff    	mov    %eax,-0x29c0(%rbp)
    7f01bb4076e2:	45 85 e4             	test   %r12d,%r12d
    7f01bb4076e5:	0f 84 1a 00 00 00    	je     0x7f01bb407705
    7f01bb4076eb:	c7 85 f0 fa ff ff 00 	movl   $0x0,-0x510(%rbp)
    7f01bb4076f2:	00 00 00 
    7f01bb4076f5:	41 c7 87 80 51 00 00 	movl   $0x0,0x5180(%r15)
    7f01bb4076fc:	00 00 00 00 
    7f01bb407700:	e9 13 00 00 00       	jmpq   0x7f01bb407718
    7f01bb407705:	8b 85 40 d6 ff ff    	mov    -0x29c0(%rbp),%eax
    7f01bb40770b:	41 89 87 80 51 00 00 	mov    %eax,0x5180(%r15)
    7f01bb407712:	89 85 f0 fa ff ff    	mov    %eax,-0x510(%rbp)
    7f01bb407718:	45 85 e4             	test   %r12d,%r12d
    7f01bb40771b:	0f 84 1a 00 00 00    	je     0x7f01bb40773b
    7f01bb407721:	c7 85 f8 fa ff ff 00 	movl   $0x0,-0x508(%rbp)
    7f01bb407728:	00 00 00 
    7f01bb40772b:	41 c7 87 78 51 00 00 	movl   $0x0,0x5178(%r15)
    7f01bb407732:	00 00 00 00 
    7f01bb407736:	e9 13 00 00 00       	jmpq   0x7f01bb40774e
    7f01bb40773b:	8b 85 78 d6 ff ff    	mov    -0x2988(%rbp),%eax
    7f01bb407741:	41 89 87 78 51 00 00 	mov    %eax,0x5178(%r15)
    7f01bb407748:	89 85 f8 fa ff ff    	mov    %eax,-0x508(%rbp)
    7f01bb40774e:	45 85 e4             	test   %r12d,%r12d
    7f01bb407751:	0f 84 1a 00 00 00    	je     0x7f01bb407771
    7f01bb407757:	c7 85 00 fb ff ff 00 	movl   $0x0,-0x500(%rbp)
    7f01bb40775e:	00 00 00 
    7f01bb407761:	41 c7 87 70 51 00 00 	movl   $0x0,0x5170(%r15)
    7f01bb407768:	00 00 00 00 
    7f01bb40776c:	e9 13 00 00 00       	jmpq   0x7f01bb407784
    7f01bb407771:	8b 85 98 d6 ff ff    	mov    -0x2968(%rbp),%eax
    7f01bb407777:	41 89 87 70 51 00 00 	mov    %eax,0x5170(%r15)
    7f01bb40777e:	89 85 00 fb ff ff    	mov    %eax,-0x500(%rbp)
    7f01bb407784:	45 85 e4             	test   %r12d,%r12d
    7f01bb407787:	0f 84 1b 00 00 00    	je     0x7f01bb4077a8
    7f01bb40778d:	48 c7 85 08 fb ff ff 	movq   $0x0,-0x4f8(%rbp)
    7f01bb407794:	00 00 00 00 
    7f01bb407798:	49 c7 87 68 51 00 00 	movq   $0x0,0x5168(%r15)
    7f01bb40779f:	00 00 00 00 
    7f01bb4077a3:	e9 15 00 00 00       	jmpq   0x7f01bb4077bd
    7f01bb4077a8:	48 8b 85 d8 d6 ff ff 	mov    -0x2928(%rbp),%rax
    7f01bb4077af:	49 89 87 68 51 00 00 	mov    %rax,0x5168(%r15)
    7f01bb4077b6:	48 89 85 08 fb ff ff 	mov    %rax,-0x4f8(%rbp)
    7f01bb4077bd:	45 85 e4             	test   %r12d,%r12d
    7f01bb4077c0:	0f 84 24 00 00 00    	je     0x7f01bb4077ea
    7f01bb4077c6:	49 8b c7             	mov    %r15,%rax
    7f01bb4077c9:	48 05 58 51 00 00    	add    $0x5158,%rax
    7f01bb4077cf:	49 8b cf             	mov    %r15,%rcx
    7f01bb4077d2:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb4077d9:	48 8b 11             	mov    (%rcx),%rdx
    7f01bb4077dc:	48 89 10             	mov    %rdx,(%rax)
    7f01bb4077df:	8b 51 08             	mov    0x8(%rcx),%edx
    7f01bb4077e2:	89 50 08             	mov    %edx,0x8(%rax)
    7f01bb4077e5:	e9 1f 00 00 00       	jmpq   0x7f01bb407809
    7f01bb4077ea:	49 8b c7             	mov    %r15,%rax
    7f01bb4077ed:	48 05 58 51 00 00    	add    $0x5158,%rax
    7f01bb4077f3:	49 8b cf             	mov    %r15,%rcx
    7f01bb4077f6:	48 81 c1 70 41 00 00 	add    $0x4170,%rcx
    7f01bb4077fd:	48 8b 11             	mov    (%rcx),%rdx
    7f01bb407800:	48 89 10             	mov    %rdx,(%rax)
    7f01bb407803:	8b 51 08             	mov    0x8(%rcx),%edx
    7f01bb407806:	89 50 08             	mov    %edx,0x8(%rax)
    7f01bb407809:	45 85 e4             	test   %r12d,%r12d
    7f01bb40780c:	0f 84 1a 00 00 00    	je     0x7f01bb40782c
    7f01bb407812:	c7 85 10 fb ff ff 00 	movl   $0x0,-0x4f0(%rbp)
    7f01bb407819:	00 00 00 
    7f01bb40781c:	41 c7 87 50 51 00 00 	movl   $0x0,0x5150(%r15)
    7f01bb407823:	00 00 00 00 
    7f01bb407827:	e9 13 00 00 00       	jmpq   0x7f01bb40783f
    7f01bb40782c:	8b 85 08 d7 ff ff    	mov    -0x28f8(%rbp),%eax
    7f01bb407832:	41 89 87 50 51 00 00 	mov    %eax,0x5150(%r15)
    7f01bb407839:	89 85 10 fb ff ff    	mov    %eax,-0x4f0(%rbp)
    7f01bb40783f:	45 85 e4             	test   %r12d,%r12d
    7f01bb407842:	0f 84 1a 00 00 00    	je     0x7f01bb407862
    7f01bb407848:	c7 85 18 fb ff ff 00 	movl   $0x0,-0x4e8(%rbp)
    7f01bb40784f:	00 00 00 
    7f01bb407852:	41 c7 87 48 51 00 00 	movl   $0x0,0x5148(%r15)
    7f01bb407859:	00 00 00 00 
    7f01bb40785d:	e9 13 00 00 00       	jmpq   0x7f01bb407875
    7f01bb407862:	8b 85 18 d7 ff ff    	mov    -0x28e8(%rbp),%eax
    7f01bb407868:	41 89 87 48 51 00 00 	mov    %eax,0x5148(%r15)
    7f01bb40786f:	89 85 18 fb ff ff    	mov    %eax,-0x4e8(%rbp)
    7f01bb407875:	45 85 e4             	test   %r12d,%r12d
    7f01bb407878:	0f 84 1a 00 00 00    	je     0x7f01bb407898
    7f01bb40787e:	c7 85 20 fb ff ff 00 	movl   $0x0,-0x4e0(%rbp)
    7f01bb407885:	00 00 00 
    7f01bb407888:	41 c7 87 40 51 00 00 	movl   $0x0,0x5140(%r15)
    7f01bb40788f:	00 00 00 00 
    7f01bb407893:	e9 13 00 00 00       	jmpq   0x7f01bb4078ab
    7f01bb407898:	8b 85 38 d7 ff ff    	mov    -0x28c8(%rbp),%eax
    7f01bb40789e:	41 89 87 40 51 00 00 	mov    %eax,0x5140(%r15)
    7f01bb4078a5:	89 85 20 fb ff ff    	mov    %eax,-0x4e0(%rbp)
    7f01bb4078ab:	45 85 e4             	test   %r12d,%r12d
    7f01bb4078ae:	0f 84 1a 00 00 00    	je     0x7f01bb4078ce
    7f01bb4078b4:	c7 85 28 fb ff ff 00 	movl   $0x0,-0x4d8(%rbp)
    7f01bb4078bb:	00 00 00 
    7f01bb4078be:	41 c7 87 38 51 00 00 	movl   $0x0,0x5138(%r15)
    7f01bb4078c5:	00 00 00 00 
    7f01bb4078c9:	e9 13 00 00 00       	jmpq   0x7f01bb4078e1
    7f01bb4078ce:	8b 85 50 d7 ff ff    	mov    -0x28b0(%rbp),%eax
    7f01bb4078d4:	41 89 87 38 51 00 00 	mov    %eax,0x5138(%r15)
    7f01bb4078db:	89 85 28 fb ff ff    	mov    %eax,-0x4d8(%rbp)
    7f01bb4078e1:	45 85 e4             	test   %r12d,%r12d
    7f01bb4078e4:	0f 84 1a 00 00 00    	je     0x7f01bb407904
    7f01bb4078ea:	c7 85 30 fb ff ff 00 	movl   $0x0,-0x4d0(%rbp)
    7f01bb4078f1:	00 00 00 
    7f01bb4078f4:	41 c7 87 30 51 00 00 	movl   $0x0,0x5130(%r15)
    7f01bb4078fb:	00 00 00 00 
    7f01bb4078ff:	e9 13 00 00 00       	jmpq   0x7f01bb407917
    7f01bb407904:	8b 85 58 d7 ff ff    	mov    -0x28a8(%rbp),%eax
    7f01bb40790a:	41 89 87 30 51 00 00 	mov    %eax,0x5130(%r15)
    7f01bb407911:	89 85 30 fb ff ff    	mov    %eax,-0x4d0(%rbp)
    7f01bb407917:	45 85 e4             	test   %r12d,%r12d
    7f01bb40791a:	0f 84 1a 00 00 00    	je     0x7f01bb40793a
    7f01bb407920:	c7 85 38 fb ff ff 00 	movl   $0x0,-0x4c8(%rbp)
    7f01bb407927:	00 00 00 
    7f01bb40792a:	41 c7 87 28 51 00 00 	movl   $0x0,0x5128(%r15)
    7f01bb407931:	00 00 00 00 
    7f01bb407935:	e9 13 00 00 00       	jmpq   0x7f01bb40794d
    7f01bb40793a:	8b 85 98 d7 ff ff    	mov    -0x2868(%rbp),%eax
    7f01bb407940:	41 89 87 28 51 00 00 	mov    %eax,0x5128(%r15)
    7f01bb407947:	89 85 38 fb ff ff    	mov    %eax,-0x4c8(%rbp)
    7f01bb40794d:	45 85 e4             	test   %r12d,%r12d
    7f01bb407950:	0f 84 1a 00 00 00    	je     0x7f01bb407970
    7f01bb407956:	c7 85 40 fb ff ff 00 	movl   $0x0,-0x4c0(%rbp)
    7f01bb40795d:	00 00 00 
    7f01bb407960:	41 c7 87 20 51 00 00 	movl   $0x0,0x5120(%r15)
    7f01bb407967:	00 00 00 00 
    7f01bb40796b:	e9 13 00 00 00       	jmpq   0x7f01bb407983
    7f01bb407970:	8b 85 a8 d7 ff ff    	mov    -0x2858(%rbp),%eax
    7f01bb407976:	41 89 87 20 51 00 00 	mov    %eax,0x5120(%r15)
    7f01bb40797d:	89 85 40 fb ff ff    	mov    %eax,-0x4c0(%rbp)
    7f01bb407983:	49 8b c7             	mov    %r15,%rax
    7f01bb407986:	48 05 d8 50 00 00    	add    $0x50d8,%rax
    7f01bb40798c:	49 8b cf             	mov    %r15,%rcx
    7f01bb40798f:	48 81 c1 28 41 00 00 	add    $0x4128,%rcx
    7f01bb407996:	48 8b f1             	mov    %rcx,%rsi
    7f01bb407999:	48 8b f8             	mov    %rax,%rdi
    7f01bb40799c:	ba 44 00 00 00       	mov    $0x44,%edx
    7f01bb4079a1:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb4079a6:	e8 c5 24 97 ff       	callq  0x7f01bad79e70
    7f01bb4079ab:	49 8b c7             	mov    %r15,%rax
    7f01bb4079ae:	48 05 98 50 00 00    	add    $0x5098,%rax
    7f01bb4079b4:	49 8b cf             	mov    %r15,%rcx
    7f01bb4079b7:	48 81 c1 60 3e 00 00 	add    $0x3e60,%rcx
    7f01bb4079be:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4079c1:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4079c4:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4079c8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4079cc:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4079d0:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4079d4:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4079d8:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4079dc:	49 8b c7             	mov    %r15,%rax
    7f01bb4079df:	48 05 58 50 00 00    	add    $0x5058,%rax
    7f01bb4079e5:	49 8b cf             	mov    %r15,%rcx
    7f01bb4079e8:	48 81 c1 20 3e 00 00 	add    $0x3e20,%rcx
    7f01bb4079ef:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4079f2:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4079f5:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4079f9:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4079fd:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb407a01:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb407a05:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb407a09:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb407a0d:	49 8b c7             	mov    %r15,%rax
    7f01bb407a10:	48 05 18 50 00 00    	add    $0x5018,%rax
    7f01bb407a16:	49 8b cf             	mov    %r15,%rcx
    7f01bb407a19:	48 81 c1 a0 3d 00 00 	add    $0x3da0,%rcx
    7f01bb407a20:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb407a23:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb407a26:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb407a2a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb407a2e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb407a32:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb407a36:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb407a3a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb407a3e:	49 8b c7             	mov    %r15,%rax
    7f01bb407a41:	48 05 d8 4f 00 00    	add    $0x4fd8,%rax
    7f01bb407a47:	49 8b cf             	mov    %r15,%rcx
    7f01bb407a4a:	48 81 c1 20 3d 00 00 	add    $0x3d20,%rcx
    7f01bb407a51:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb407a54:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb407a57:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb407a5b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb407a5f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb407a63:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb407a67:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb407a6b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb407a6f:	45 85 e4             	test   %r12d,%r12d
    7f01bb407a72:	0f 84 1a 00 00 00    	je     0x7f01bb407a92
    7f01bb407a78:	c7 85 48 fb ff ff 01 	movl   $0x1,-0x4b8(%rbp)
    7f01bb407a7f:	00 00 00 
    7f01bb407a82:	41 c7 87 d0 4f 00 00 	movl   $0x1,0x4fd0(%r15)
    7f01bb407a89:	01 00 00 00 
    7f01bb407a8d:	e9 13 00 00 00       	jmpq   0x7f01bb407aa5
    7f01bb407a92:	8b 85 98 d8 ff ff    	mov    -0x2768(%rbp),%eax
    7f01bb407a98:	41 89 87 d0 4f 00 00 	mov    %eax,0x4fd0(%r15)
    7f01bb407a9f:	89 85 48 fb ff ff    	mov    %eax,-0x4b8(%rbp)
    7f01bb407aa5:	8b 85 e8 d8 ff ff    	mov    -0x2718(%rbp),%eax
    7f01bb407aab:	41 89 87 c8 4f 00 00 	mov    %eax,0x4fc8(%r15)
    7f01bb407ab2:	89 85 50 fb ff ff    	mov    %eax,-0x4b0(%rbp)
    7f01bb407ab8:	49 8b c7             	mov    %r15,%rax
    7f01bb407abb:	48 05 88 4f 00 00    	add    $0x4f88,%rax
    7f01bb407ac1:	49 8b cf             	mov    %r15,%rcx
    7f01bb407ac4:	48 81 c1 a0 3c 00 00 	add    $0x3ca0,%rcx
    7f01bb407acb:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb407ace:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb407ad1:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb407ad5:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb407ad9:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb407add:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb407ae1:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb407ae5:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb407ae9:	8b 85 20 d9 ff ff    	mov    -0x26e0(%rbp),%eax
    7f01bb407aef:	41 89 87 80 4f 00 00 	mov    %eax,0x4f80(%r15)
    7f01bb407af6:	89 85 58 fb ff ff    	mov    %eax,-0x4a8(%rbp)
    7f01bb407afc:	45 85 e4             	test   %r12d,%r12d
    7f01bb407aff:	0f 84 1a 00 00 00    	je     0x7f01bb407b1f
    7f01bb407b05:	c7 85 60 fb ff ff 00 	movl   $0x0,-0x4a0(%rbp)
    7f01bb407b0c:	00 00 00 
    7f01bb407b0f:	41 c7 87 78 4f 00 00 	movl   $0x0,0x4f78(%r15)
    7f01bb407b16:	00 00 00 00 
    7f01bb407b1a:	e9 13 00 00 00       	jmpq   0x7f01bb407b32
    7f01bb407b1f:	8b 85 90 d9 ff ff    	mov    -0x2670(%rbp),%eax
    7f01bb407b25:	41 89 87 78 4f 00 00 	mov    %eax,0x4f78(%r15)
    7f01bb407b2c:	89 85 60 fb ff ff    	mov    %eax,-0x4a0(%rbp)
    7f01bb407b32:	45 85 e4             	test   %r12d,%r12d
    7f01bb407b35:	0f 84 1a 00 00 00    	je     0x7f01bb407b55
    7f01bb407b3b:	c7 85 68 fb ff ff 00 	movl   $0x0,-0x498(%rbp)
    7f01bb407b42:	00 00 00 
    7f01bb407b45:	41 c7 87 70 4f 00 00 	movl   $0x0,0x4f70(%r15)
    7f01bb407b4c:	00 00 00 00 
    7f01bb407b50:	e9 13 00 00 00       	jmpq   0x7f01bb407b68
    7f01bb407b55:	8b 85 98 d9 ff ff    	mov    -0x2668(%rbp),%eax
    7f01bb407b5b:	41 89 87 70 4f 00 00 	mov    %eax,0x4f70(%r15)
    7f01bb407b62:	89 85 68 fb ff ff    	mov    %eax,-0x498(%rbp)
    7f01bb407b68:	8b 85 d0 d9 ff ff    	mov    -0x2630(%rbp),%eax
    7f01bb407b6e:	41 89 87 68 4f 00 00 	mov    %eax,0x4f68(%r15)
    7f01bb407b75:	89 85 70 fb ff ff    	mov    %eax,-0x490(%rbp)
    7f01bb407b7b:	49 8b c7             	mov    %r15,%rax
    7f01bb407b7e:	48 05 20 4f 00 00    	add    $0x4f20,%rax
    7f01bb407b84:	49 8b cf             	mov    %r15,%rcx
    7f01bb407b87:	48 81 c1 58 3b 00 00 	add    $0x3b58,%rcx
    7f01bb407b8e:	48 8b f1             	mov    %rcx,%rsi
    7f01bb407b91:	48 8b f8             	mov    %rax,%rdi
    7f01bb407b94:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb407b99:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb407b9e:	e8 cd 22 97 ff       	callq  0x7f01bad79e70
    7f01bb407ba3:	45 85 e4             	test   %r12d,%r12d
    7f01bb407ba6:	0f 84 1a 00 00 00    	je     0x7f01bb407bc6
    7f01bb407bac:	c7 85 78 fb ff ff 00 	movl   $0x0,-0x488(%rbp)
    7f01bb407bb3:	00 00 00 
    7f01bb407bb6:	41 c7 87 18 4f 00 00 	movl   $0x0,0x4f18(%r15)
    7f01bb407bbd:	00 00 00 00 
    7f01bb407bc1:	e9 13 00 00 00       	jmpq   0x7f01bb407bd9
    7f01bb407bc6:	8b 85 e0 d9 ff ff    	mov    -0x2620(%rbp),%eax
    7f01bb407bcc:	41 89 87 18 4f 00 00 	mov    %eax,0x4f18(%r15)
    7f01bb407bd3:	89 85 78 fb ff ff    	mov    %eax,-0x488(%rbp)
    7f01bb407bd9:	45 85 e4             	test   %r12d,%r12d
    7f01bb407bdc:	0f 84 1a 00 00 00    	je     0x7f01bb407bfc
    7f01bb407be2:	c7 85 80 fb ff ff 00 	movl   $0x0,-0x480(%rbp)
    7f01bb407be9:	00 00 00 
    7f01bb407bec:	41 c7 87 10 4f 00 00 	movl   $0x0,0x4f10(%r15)
    7f01bb407bf3:	00 00 00 00 
    7f01bb407bf7:	e9 13 00 00 00       	jmpq   0x7f01bb407c0f
    7f01bb407bfc:	8b 85 18 da ff ff    	mov    -0x25e8(%rbp),%eax
    7f01bb407c02:	41 89 87 10 4f 00 00 	mov    %eax,0x4f10(%r15)
    7f01bb407c09:	89 85 80 fb ff ff    	mov    %eax,-0x480(%rbp)
    7f01bb407c0f:	8b 85 78 dd ff ff    	mov    -0x2288(%rbp),%eax
    7f01bb407c15:	41 89 87 08 4f 00 00 	mov    %eax,0x4f08(%r15)
    7f01bb407c1c:	89 85 88 fb ff ff    	mov    %eax,-0x478(%rbp)
    7f01bb407c22:	8b 85 80 dd ff ff    	mov    -0x2280(%rbp),%eax
    7f01bb407c28:	41 89 87 00 4f 00 00 	mov    %eax,0x4f00(%r15)
    7f01bb407c2f:	89 85 90 fb ff ff    	mov    %eax,-0x470(%rbp)
    7f01bb407c35:	45 85 e4             	test   %r12d,%r12d
    7f01bb407c38:	0f 84 1a 00 00 00    	je     0x7f01bb407c58
    7f01bb407c3e:	c7 85 98 fb ff ff 00 	movl   $0x0,-0x468(%rbp)
    7f01bb407c45:	00 00 00 
    7f01bb407c48:	41 c7 87 f8 4e 00 00 	movl   $0x0,0x4ef8(%r15)
    7f01bb407c4f:	00 00 00 00 
    7f01bb407c53:	e9 13 00 00 00       	jmpq   0x7f01bb407c6b
    7f01bb407c58:	8b 85 d8 dd ff ff    	mov    -0x2228(%rbp),%eax
    7f01bb407c5e:	41 89 87 f8 4e 00 00 	mov    %eax,0x4ef8(%r15)
    7f01bb407c65:	89 85 98 fb ff ff    	mov    %eax,-0x468(%rbp)
    7f01bb407c6b:	8b 85 30 de ff ff    	mov    -0x21d0(%rbp),%eax
    7f01bb407c71:	41 89 87 f0 4e 00 00 	mov    %eax,0x4ef0(%r15)
    7f01bb407c78:	89 85 a0 fb ff ff    	mov    %eax,-0x460(%rbp)
    7f01bb407c7e:	45 85 e4             	test   %r12d,%r12d
    7f01bb407c81:	0f 84 1a 00 00 00    	je     0x7f01bb407ca1
    7f01bb407c87:	c7 85 a8 fb ff ff 00 	movl   $0x0,-0x458(%rbp)
    7f01bb407c8e:	00 00 00 
    7f01bb407c91:	41 c7 87 e8 4e 00 00 	movl   $0x0,0x4ee8(%r15)
    7f01bb407c98:	00 00 00 00 
    7f01bb407c9c:	e9 13 00 00 00       	jmpq   0x7f01bb407cb4
    7f01bb407ca1:	8b 85 00 e1 ff ff    	mov    -0x1f00(%rbp),%eax
    7f01bb407ca7:	41 89 87 e8 4e 00 00 	mov    %eax,0x4ee8(%r15)
    7f01bb407cae:	89 85 a8 fb ff ff    	mov    %eax,-0x458(%rbp)
    7f01bb407cb4:	8b 85 38 de ff ff    	mov    -0x21c8(%rbp),%eax
    7f01bb407cba:	41 89 87 e0 4e 00 00 	mov    %eax,0x4ee0(%r15)
    7f01bb407cc1:	89 85 b0 fb ff ff    	mov    %eax,-0x450(%rbp)
    7f01bb407cc7:	8b 85 40 de ff ff    	mov    -0x21c0(%rbp),%eax
    7f01bb407ccd:	41 89 87 d8 4e 00 00 	mov    %eax,0x4ed8(%r15)
    7f01bb407cd4:	89 85 b8 fb ff ff    	mov    %eax,-0x448(%rbp)
    7f01bb407cda:	8b 85 48 de ff ff    	mov    -0x21b8(%rbp),%eax
    7f01bb407ce0:	41 89 87 d0 4e 00 00 	mov    %eax,0x4ed0(%r15)
    7f01bb407ce7:	89 85 c0 fb ff ff    	mov    %eax,-0x440(%rbp)
    7f01bb407ced:	49 8b c7             	mov    %r15,%rax
    7f01bb407cf0:	48 05 88 4e 00 00    	add    $0x4e88,%rax
    7f01bb407cf6:	49 8b cf             	mov    %r15,%rcx
    7f01bb407cf9:	48 81 c1 30 35 00 00 	add    $0x3530,%rcx
    7f01bb407d00:	48 8b f1             	mov    %rcx,%rsi
    7f01bb407d03:	48 8b f8             	mov    %rax,%rdi
    7f01bb407d06:	ba 43 00 00 00       	mov    $0x43,%edx
    7f01bb407d0b:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb407d10:	e8 5b 21 97 ff       	callq  0x7f01bad79e70
    7f01bb407d15:	45 85 e4             	test   %r12d,%r12d
    7f01bb407d18:	0f 84 12 00 00 00    	je     0x7f01bb407d30
    7f01bb407d1e:	33 db                	xor    %ebx,%ebx
    7f01bb407d20:	41 c7 87 80 4e 00 00 	movl   $0x0,0x4e80(%r15)
    7f01bb407d27:	00 00 00 00 
    7f01bb407d2b:	e9 10 00 00 00       	jmpq   0x7f01bb407d40
    7f01bb407d30:	8b 85 80 de ff ff    	mov    -0x2180(%rbp),%eax
    7f01bb407d36:	41 89 87 80 4e 00 00 	mov    %eax,0x4e80(%r15)
    7f01bb407d3d:	48 8b d8             	mov    %rax,%rbx
    7f01bb407d40:	8b 85 20 df ff ff    	mov    -0x20e0(%rbp),%eax
    7f01bb407d46:	85 c0                	test   %eax,%eax
    7f01bb407d48:	0f 84 5f 00 00 00    	je     0x7f01bb407dad
    7f01bb407d4e:	8b 8d a0 e0 ff ff    	mov    -0x1f60(%rbp),%ecx
    7f01bb407d54:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb407d57:	0f 93 c0             	setae  %al
    7f01bb407d5a:	0f b6 c0             	movzbl %al,%eax
    7f01bb407d5d:	83 f9 02             	cmp    $0x2,%ecx
    7f01bb407d60:	0f 92 c1             	setb   %cl
    7f01bb407d63:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb407d66:	23 c1                	and    %ecx,%eax
    7f01bb407d68:	85 c0                	test   %eax,%eax
    7f01bb407d6a:	0f 85 0a 00 00 00    	jne    0x7f01bb407d7a
    7f01bb407d70:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb407d75:	e9 a4 21 00 00       	jmpq   0x7f01bb409f1e
    7f01bb407d7a:	8b 85 d0 de ff ff    	mov    -0x2130(%rbp),%eax
    7f01bb407d80:	8b c0                	mov    %eax,%eax
    7f01bb407d82:	8b 8d a0 e0 ff ff    	mov    -0x1f60(%rbp),%ecx
    7f01bb407d88:	6b c9 16             	imul   $0x16,%ecx,%ecx
    7f01bb407d8b:	49 8b 97 08 31 00 00 	mov    0x3108(%r15),%rdx
    7f01bb407d92:	be ff ff 3f 00       	mov    $0x3fffff,%esi
    7f01bb407d97:	48 d3 e6             	shl    %cl,%rsi
    7f01bb407d9a:	48 d3 e0             	shl    %cl,%rax
    7f01bb407d9d:	48 33 c2             	xor    %rdx,%rax
    7f01bb407da0:	48 23 f0             	and    %rax,%rsi
    7f01bb407da3:	48 33 d6             	xor    %rsi,%rdx
    7f01bb407da6:	49 89 97 08 31 00 00 	mov    %rdx,0x3108(%r15)
    7f01bb407dad:	8b 85 60 df ff ff    	mov    -0x20a0(%rbp),%eax
    7f01bb407db3:	85 c0                	test   %eax,%eax
    7f01bb407db5:	0f 84 6b 00 00 00    	je     0x7f01bb407e26
    7f01bb407dbb:	8b 8d a0 e0 ff ff    	mov    -0x1f60(%rbp),%ecx
    7f01bb407dc1:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb407dc4:	0f 93 c0             	setae  %al
    7f01bb407dc7:	0f b6 c0             	movzbl %al,%eax
    7f01bb407dca:	83 f9 02             	cmp    $0x2,%ecx
    7f01bb407dcd:	0f 92 c1             	setb   %cl
    7f01bb407dd0:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb407dd3:	23 c1                	and    %ecx,%eax
    7f01bb407dd5:	85 c0                	test   %eax,%eax
    7f01bb407dd7:	0f 85 0a 00 00 00    	jne    0x7f01bb407de7
    7f01bb407ddd:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb407de2:	e9 37 21 00 00       	jmpq   0x7f01bb409f1e
    7f01bb407de7:	49 8b c7             	mov    %r15,%rax
    7f01bb407dea:	48 05 d8 31 00 00    	add    $0x31d8,%rax
    7f01bb407df0:	49 8b cf             	mov    %r15,%rcx
    7f01bb407df3:	48 81 c1 18 34 00 00 	add    $0x3418,%rcx
    7f01bb407dfa:	8b 95 a0 e0 ff ff    	mov    -0x1f60(%rbp),%edx
    7f01bb407e00:	c1 e2 06             	shl    $0x6,%edx
    7f01bb407e03:	8b d2                	mov    %edx,%edx
    7f01bb407e05:	48 03 c2             	add    %rdx,%rax
    7f01bb407e08:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb407e0b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb407e0e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb407e12:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb407e16:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb407e1a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb407e1e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb407e22:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb407e26:	8b 85 b8 df ff ff    	mov    -0x2048(%rbp),%eax
    7f01bb407e2c:	41 89 87 78 4e 00 00 	mov    %eax,0x4e78(%r15)
    7f01bb407e33:	89 85 c8 fb ff ff    	mov    %eax,-0x438(%rbp)
    7f01bb407e39:	8b 85 e8 df ff ff    	mov    -0x2018(%rbp),%eax
    7f01bb407e3f:	41 89 87 70 4e 00 00 	mov    %eax,0x4e70(%r15)
    7f01bb407e46:	89 85 d0 fb ff ff    	mov    %eax,-0x430(%rbp)
    7f01bb407e4c:	8b 85 f0 df ff ff    	mov    -0x2010(%rbp),%eax
    7f01bb407e52:	41 89 87 68 4e 00 00 	mov    %eax,0x4e68(%r15)
    7f01bb407e59:	89 85 d8 fb ff ff    	mov    %eax,-0x428(%rbp)
    7f01bb407e5f:	45 85 e4             	test   %r12d,%r12d
    7f01bb407e62:	0f 84 1a 00 00 00    	je     0x7f01bb407e82
    7f01bb407e68:	c7 85 e0 fb ff ff 00 	movl   $0x0,-0x420(%rbp)
    7f01bb407e6f:	00 00 00 
    7f01bb407e72:	41 c7 87 60 4e 00 00 	movl   $0x0,0x4e60(%r15)
    7f01bb407e79:	00 00 00 00 
    7f01bb407e7d:	e9 13 00 00 00       	jmpq   0x7f01bb407e95
    7f01bb407e82:	8b 85 f8 df ff ff    	mov    -0x2008(%rbp),%eax
    7f01bb407e88:	41 89 87 60 4e 00 00 	mov    %eax,0x4e60(%r15)
    7f01bb407e8f:	89 85 e0 fb ff ff    	mov    %eax,-0x420(%rbp)
    7f01bb407e95:	45 85 e4             	test   %r12d,%r12d
    7f01bb407e98:	0f 84 1a 00 00 00    	je     0x7f01bb407eb8
    7f01bb407e9e:	c7 85 e8 fb ff ff 00 	movl   $0x0,-0x418(%rbp)
    7f01bb407ea5:	00 00 00 
    7f01bb407ea8:	41 c7 87 58 4e 00 00 	movl   $0x0,0x4e58(%r15)
    7f01bb407eaf:	00 00 00 00 
    7f01bb407eb3:	e9 13 00 00 00       	jmpq   0x7f01bb407ecb
    7f01bb407eb8:	8b 85 08 e1 ff ff    	mov    -0x1ef8(%rbp),%eax
    7f01bb407ebe:	41 89 87 58 4e 00 00 	mov    %eax,0x4e58(%r15)
    7f01bb407ec5:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%rbp)
    7f01bb407ecb:	45 85 e4             	test   %r12d,%r12d
    7f01bb407ece:	0f 84 1a 00 00 00    	je     0x7f01bb407eee
    7f01bb407ed4:	c7 85 f0 fb ff ff 00 	movl   $0x0,-0x410(%rbp)
    7f01bb407edb:	00 00 00 
    7f01bb407ede:	41 c7 87 50 4e 00 00 	movl   $0x0,0x4e50(%r15)
    7f01bb407ee5:	00 00 00 00 
    7f01bb407ee9:	e9 13 00 00 00       	jmpq   0x7f01bb407f01
    7f01bb407eee:	8b 85 10 e1 ff ff    	mov    -0x1ef0(%rbp),%eax
    7f01bb407ef4:	41 89 87 50 4e 00 00 	mov    %eax,0x4e50(%r15)
    7f01bb407efb:	89 85 f0 fb ff ff    	mov    %eax,-0x410(%rbp)
    7f01bb407f01:	8b 85 10 ec ff ff    	mov    -0x13f0(%rbp),%eax
    7f01bb407f07:	85 c0                	test   %eax,%eax
    7f01bb407f09:	0f 84 21 00 00 00    	je     0x7f01bb407f30
    7f01bb407f0f:	41 8b 87 48 4e 00 00 	mov    0x4e48(%r15),%eax
    7f01bb407f16:	41 89 87 40 4e 00 00 	mov    %eax,0x4e40(%r15)
    7f01bb407f1d:	89 85 f8 fb ff ff    	mov    %eax,-0x408(%rbp)
    7f01bb407f23:	8b 85 00 fc ff ff    	mov    -0x400(%rbp),%eax
    7f01bb407f29:	41 89 87 48 4e 00 00 	mov    %eax,0x4e48(%r15)
    7f01bb407f30:	49 8b c7             	mov    %r15,%rax
    7f01bb407f33:	48 05 00 4e 00 00    	add    $0x4e00,%rax
    7f01bb407f39:	49 8b cf             	mov    %r15,%rcx
    7f01bb407f3c:	48 81 c1 08 4e 00 00 	add    $0x4e08,%rcx
    7f01bb407f43:	49 8b 97 18 4e 00 00 	mov    0x4e18(%r15),%rdx
    7f01bb407f4a:	8b b5 08 fc ff ff    	mov    -0x3f8(%rbp),%esi
    7f01bb407f50:	8b f6                	mov    %esi,%esi
    7f01bb407f52:	48 89 b5 38 d6 ff ff 	mov    %rsi,-0x29c8(%rbp)
    7f01bb407f59:	48 8d b5 38 d6 ff ff 	lea    -0x29c8(%rbp),%rsi
    7f01bb407f60:	48 89 32             	mov    %rsi,(%rdx)
    7f01bb407f63:	49 8b 97 18 4e 00 00 	mov    0x4e18(%r15),%rdx
    7f01bb407f6a:	8b b5 18 e1 ff ff    	mov    -0x1ee8(%rbp),%esi
    7f01bb407f70:	8b f6                	mov    %esi,%esi
    7f01bb407f72:	48 89 b5 30 d6 ff ff 	mov    %rsi,-0x29d0(%rbp)
    7f01bb407f79:	48 8d b5 30 d6 ff ff 	lea    -0x29d0(%rbp),%rsi
    7f01bb407f80:	48 89 72 10          	mov    %rsi,0x10(%rdx)
    7f01bb407f84:	48 8b f1             	mov    %rcx,%rsi
    7f01bb407f87:	48 8b f8             	mov    %rax,%rdi
    7f01bb407f8a:	48 89 85 28 d6 ff ff 	mov    %rax,-0x29d8(%rbp)
    7f01bb407f91:	48 89 8d 20 d6 ff ff 	mov    %rcx,-0x29e0(%rbp)
    7f01bb407f98:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb407f9d:	e8 3c 6f 8d ff       	callq  0x7f01bacdeede
    7f01bb407fa2:	8b 85 00 ec ff ff    	mov    -0x1400(%rbp),%eax
    7f01bb407fa8:	85 c0                	test   %eax,%eax
    7f01bb407faa:	0f 84 21 00 00 00    	je     0x7f01bb407fd1
    7f01bb407fb0:	41 8b 87 f8 4d 00 00 	mov    0x4df8(%r15),%eax
    7f01bb407fb7:	41 89 87 f0 4d 00 00 	mov    %eax,0x4df0(%r15)
    7f01bb407fbe:	89 85 08 fc ff ff    	mov    %eax,-0x3f8(%rbp)
    7f01bb407fc4:	8b 85 10 fc ff ff    	mov    -0x3f0(%rbp),%eax
    7f01bb407fca:	41 89 87 f8 4d 00 00 	mov    %eax,0x4df8(%r15)
    7f01bb407fd1:	49 8b c7             	mov    %r15,%rax
    7f01bb407fd4:	48 05 b0 4d 00 00    	add    $0x4db0,%rax
    7f01bb407fda:	49 8b cf             	mov    %r15,%rcx
    7f01bb407fdd:	48 81 c1 b8 4d 00 00 	add    $0x4db8,%rcx
    7f01bb407fe4:	49 8b 97 c8 4d 00 00 	mov    0x4dc8(%r15),%rdx
    7f01bb407feb:	8b b5 f8 e5 ff ff    	mov    -0x1a08(%rbp),%esi
    7f01bb407ff1:	8b f6                	mov    %esi,%esi
    7f01bb407ff3:	48 89 b5 18 d6 ff ff 	mov    %rsi,-0x29e8(%rbp)
    7f01bb407ffa:	48 8d b5 18 d6 ff ff 	lea    -0x29e8(%rbp),%rsi
    7f01bb408001:	48 89 32             	mov    %rsi,(%rdx)
    7f01bb408004:	49 8b 97 c8 4d 00 00 	mov    0x4dc8(%r15),%rdx
    7f01bb40800b:	8b b5 e8 e5 ff ff    	mov    -0x1a18(%rbp),%esi
    7f01bb408011:	8b f6                	mov    %esi,%esi
    7f01bb408013:	48 89 b5 10 d6 ff ff 	mov    %rsi,-0x29f0(%rbp)
    7f01bb40801a:	48 8d b5 10 d6 ff ff 	lea    -0x29f0(%rbp),%rsi
    7f01bb408021:	48 89 72 10          	mov    %rsi,0x10(%rdx)
    7f01bb408025:	48 8b f1             	mov    %rcx,%rsi
    7f01bb408028:	48 8b f8             	mov    %rax,%rdi
    7f01bb40802b:	48 89 85 08 d6 ff ff 	mov    %rax,-0x29f8(%rbp)
    7f01bb408032:	48 89 8d 00 d6 ff ff 	mov    %rcx,-0x2a00(%rbp)
    7f01bb408039:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb40803e:	e8 9b 6e 8d ff       	callq  0x7f01bacdeede
    7f01bb408043:	45 85 e4             	test   %r12d,%r12d
    7f01bb408046:	0f 84 1a 00 00 00    	je     0x7f01bb408066
    7f01bb40804c:	c7 85 18 fc ff ff 00 	movl   $0x0,-0x3e8(%rbp)
    7f01bb408053:	00 00 00 
    7f01bb408056:	41 c7 87 a8 4d 00 00 	movl   $0x0,0x4da8(%r15)
    7f01bb40805d:	00 00 00 00 
    7f01bb408061:	e9 13 00 00 00       	jmpq   0x7f01bb408079
    7f01bb408066:	8b 85 30 e1 ff ff    	mov    -0x1ed0(%rbp),%eax
    7f01bb40806c:	41 89 87 a8 4d 00 00 	mov    %eax,0x4da8(%r15)
    7f01bb408073:	89 85 18 fc ff ff    	mov    %eax,-0x3e8(%rbp)
    7f01bb408079:	8b 85 70 e2 ff ff    	mov    -0x1d90(%rbp),%eax
    7f01bb40807f:	85 c0                	test   %eax,%eax
    7f01bb408081:	0f 84 46 00 00 00    	je     0x7f01bb4080cd
    7f01bb408087:	8b 8d 58 e2 ff ff    	mov    -0x1da8(%rbp),%ecx
    7f01bb40808d:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb408090:	0f 93 c0             	setae  %al
    7f01bb408093:	0f b6 c0             	movzbl %al,%eax
    7f01bb408096:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb408099:	0f 92 c1             	setb   %cl
    7f01bb40809c:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb40809f:	23 c1                	and    %ecx,%eax
    7f01bb4080a1:	85 c0                	test   %eax,%eax
    7f01bb4080a3:	0f 85 0a 00 00 00    	jne    0x7f01bb4080b3
    7f01bb4080a9:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb4080ae:	e9 6b 1e 00 00       	jmpq   0x7f01bb409f1e
    7f01bb4080b3:	49 8b c7             	mov    %r15,%rax
    7f01bb4080b6:	48 05 88 30 00 00    	add    $0x3088,%rax
    7f01bb4080bc:	8b 8d 58 e2 ff ff    	mov    -0x1da8(%rbp),%ecx
    7f01bb4080c2:	8b c9                	mov    %ecx,%ecx
    7f01bb4080c4:	8b 95 58 e1 ff ff    	mov    -0x1ea8(%rbp),%edx
    7f01bb4080ca:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    7f01bb4080cd:	45 85 e4             	test   %r12d,%r12d
    7f01bb4080d0:	0f 84 1b 00 00 00    	je     0x7f01bb4080f1
    7f01bb4080d6:	48 c7 85 20 fc ff ff 	movq   $0x0,-0x3e0(%rbp)
    7f01bb4080dd:	00 00 00 00 
    7f01bb4080e1:	49 c7 87 a0 4d 00 00 	movq   $0x0,0x4da0(%r15)
    7f01bb4080e8:	00 00 00 00 
    7f01bb4080ec:	e9 15 00 00 00       	jmpq   0x7f01bb408106
    7f01bb4080f1:	48 8b 85 60 e1 ff ff 	mov    -0x1ea0(%rbp),%rax
    7f01bb4080f8:	49 89 87 a0 4d 00 00 	mov    %rax,0x4da0(%r15)
    7f01bb4080ff:	48 89 85 20 fc ff ff 	mov    %rax,-0x3e0(%rbp)
    7f01bb408106:	45 85 e4             	test   %r12d,%r12d
    7f01bb408109:	0f 84 1a 00 00 00    	je     0x7f01bb408129
    7f01bb40810f:	c7 85 28 fc ff ff 00 	movl   $0x0,-0x3d8(%rbp)
    7f01bb408116:	00 00 00 
    7f01bb408119:	41 c7 87 98 4d 00 00 	movl   $0x0,0x4d98(%r15)
    7f01bb408120:	00 00 00 00 
    7f01bb408124:	e9 13 00 00 00       	jmpq   0x7f01bb40813c
    7f01bb408129:	8b 85 b0 e1 ff ff    	mov    -0x1e50(%rbp),%eax
    7f01bb40812f:	41 89 87 98 4d 00 00 	mov    %eax,0x4d98(%r15)
    7f01bb408136:	89 85 28 fc ff ff    	mov    %eax,-0x3d8(%rbp)
    7f01bb40813c:	45 85 e4             	test   %r12d,%r12d
    7f01bb40813f:	0f 84 1a 00 00 00    	je     0x7f01bb40815f
    7f01bb408145:	c7 85 30 fc ff ff 00 	movl   $0x0,-0x3d0(%rbp)
    7f01bb40814c:	00 00 00 
    7f01bb40814f:	41 c7 87 90 4d 00 00 	movl   $0x0,0x4d90(%r15)
    7f01bb408156:	00 00 00 00 
    7f01bb40815a:	e9 13 00 00 00       	jmpq   0x7f01bb408172
    7f01bb40815f:	8b 85 c0 e1 ff ff    	mov    -0x1e40(%rbp),%eax
    7f01bb408165:	41 89 87 90 4d 00 00 	mov    %eax,0x4d90(%r15)
    7f01bb40816c:	89 85 30 fc ff ff    	mov    %eax,-0x3d0(%rbp)
    7f01bb408172:	45 85 e4             	test   %r12d,%r12d
    7f01bb408175:	0f 84 1a 00 00 00    	je     0x7f01bb408195
    7f01bb40817b:	c7 85 38 fc ff ff 00 	movl   $0x0,-0x3c8(%rbp)
    7f01bb408182:	00 00 00 
    7f01bb408185:	41 c7 87 88 4d 00 00 	movl   $0x0,0x4d88(%r15)
    7f01bb40818c:	00 00 00 00 
    7f01bb408190:	e9 13 00 00 00       	jmpq   0x7f01bb4081a8
    7f01bb408195:	8b 85 e0 e1 ff ff    	mov    -0x1e20(%rbp),%eax
    7f01bb40819b:	41 89 87 88 4d 00 00 	mov    %eax,0x4d88(%r15)
    7f01bb4081a2:	89 85 38 fc ff ff    	mov    %eax,-0x3c8(%rbp)
    7f01bb4081a8:	8b 85 20 e2 ff ff    	mov    -0x1de0(%rbp),%eax
    7f01bb4081ae:	41 89 87 80 4d 00 00 	mov    %eax,0x4d80(%r15)
    7f01bb4081b5:	89 85 40 fc ff ff    	mov    %eax,-0x3c0(%rbp)
    7f01bb4081bb:	45 85 e4             	test   %r12d,%r12d
    7f01bb4081be:	0f 84 1a 00 00 00    	je     0x7f01bb4081de
    7f01bb4081c4:	c7 85 48 fc ff ff 00 	movl   $0x0,-0x3b8(%rbp)
    7f01bb4081cb:	00 00 00 
    7f01bb4081ce:	41 c7 87 78 4d 00 00 	movl   $0x0,0x4d78(%r15)
    7f01bb4081d5:	00 00 00 00 
    7f01bb4081d9:	e9 13 00 00 00       	jmpq   0x7f01bb4081f1
    7f01bb4081de:	8b 85 30 e2 ff ff    	mov    -0x1dd0(%rbp),%eax
    7f01bb4081e4:	41 89 87 78 4d 00 00 	mov    %eax,0x4d78(%r15)
    7f01bb4081eb:	89 85 48 fc ff ff    	mov    %eax,-0x3b8(%rbp)
    7f01bb4081f1:	8b 85 90 e2 ff ff    	mov    -0x1d70(%rbp),%eax
    7f01bb4081f7:	41 89 87 70 4d 00 00 	mov    %eax,0x4d70(%r15)
    7f01bb4081fe:	89 85 50 fc ff ff    	mov    %eax,-0x3b0(%rbp)
    7f01bb408204:	8b 85 98 e2 ff ff    	mov    -0x1d68(%rbp),%eax
    7f01bb40820a:	41 89 87 68 4d 00 00 	mov    %eax,0x4d68(%r15)
    7f01bb408211:	89 85 58 fc ff ff    	mov    %eax,-0x3a8(%rbp)
    7f01bb408217:	8b 85 a0 e2 ff ff    	mov    -0x1d60(%rbp),%eax
    7f01bb40821d:	41 89 87 60 4d 00 00 	mov    %eax,0x4d60(%r15)
    7f01bb408224:	89 85 60 fc ff ff    	mov    %eax,-0x3a0(%rbp)
    7f01bb40822a:	45 85 e4             	test   %r12d,%r12d
    7f01bb40822d:	0f 84 1a 00 00 00    	je     0x7f01bb40824d
    7f01bb408233:	c7 85 68 fc ff ff 00 	movl   $0x0,-0x398(%rbp)
    7f01bb40823a:	00 00 00 
    7f01bb40823d:	41 c7 87 58 4d 00 00 	movl   $0x0,0x4d58(%r15)
    7f01bb408244:	00 00 00 00 
    7f01bb408248:	e9 13 00 00 00       	jmpq   0x7f01bb408260
    7f01bb40824d:	8b 85 a8 e2 ff ff    	mov    -0x1d58(%rbp),%eax
    7f01bb408253:	41 89 87 58 4d 00 00 	mov    %eax,0x4d58(%r15)
    7f01bb40825a:	89 85 68 fc ff ff    	mov    %eax,-0x398(%rbp)
    7f01bb408260:	8b 85 f8 e2 ff ff    	mov    -0x1d08(%rbp),%eax
    7f01bb408266:	41 89 87 50 4d 00 00 	mov    %eax,0x4d50(%r15)
    7f01bb40826d:	89 85 70 fc ff ff    	mov    %eax,-0x390(%rbp)
    7f01bb408273:	8b 85 00 e3 ff ff    	mov    -0x1d00(%rbp),%eax
    7f01bb408279:	41 89 87 48 4d 00 00 	mov    %eax,0x4d48(%r15)
    7f01bb408280:	89 85 78 fc ff ff    	mov    %eax,-0x388(%rbp)
    7f01bb408286:	8b 85 08 e3 ff ff    	mov    -0x1cf8(%rbp),%eax
    7f01bb40828c:	41 89 87 40 4d 00 00 	mov    %eax,0x4d40(%r15)
    7f01bb408293:	89 85 80 fc ff ff    	mov    %eax,-0x380(%rbp)
    7f01bb408299:	45 85 e4             	test   %r12d,%r12d
    7f01bb40829c:	0f 84 1a 00 00 00    	je     0x7f01bb4082bc
    7f01bb4082a2:	c7 85 88 fc ff ff 00 	movl   $0x0,-0x378(%rbp)
    7f01bb4082a9:	00 00 00 
    7f01bb4082ac:	41 c7 87 38 4d 00 00 	movl   $0x0,0x4d38(%r15)
    7f01bb4082b3:	00 00 00 00 
    7f01bb4082b7:	e9 13 00 00 00       	jmpq   0x7f01bb4082cf
    7f01bb4082bc:	8b 85 18 e3 ff ff    	mov    -0x1ce8(%rbp),%eax
    7f01bb4082c2:	41 89 87 38 4d 00 00 	mov    %eax,0x4d38(%r15)
    7f01bb4082c9:	89 85 88 fc ff ff    	mov    %eax,-0x378(%rbp)
    7f01bb4082cf:	8b 85 08 f7 ff ff    	mov    -0x8f8(%rbp),%eax
    7f01bb4082d5:	85 c0                	test   %eax,%eax
    7f01bb4082d7:	0f 84 21 00 00 00    	je     0x7f01bb4082fe
    7f01bb4082dd:	41 8b 87 30 4d 00 00 	mov    0x4d30(%r15),%eax
    7f01bb4082e4:	41 89 87 28 4d 00 00 	mov    %eax,0x4d28(%r15)
    7f01bb4082eb:	89 85 90 fc ff ff    	mov    %eax,-0x370(%rbp)
    7f01bb4082f1:	8b 85 98 fc ff ff    	mov    -0x368(%rbp),%eax
    7f01bb4082f7:	41 89 87 30 4d 00 00 	mov    %eax,0x4d30(%r15)
    7f01bb4082fe:	49 8b c7             	mov    %r15,%rax
    7f01bb408301:	48 05 e8 4c 00 00    	add    $0x4ce8,%rax
    7f01bb408307:	49 8b cf             	mov    %r15,%rcx
    7f01bb40830a:	48 81 c1 f0 4c 00 00 	add    $0x4cf0,%rcx
    7f01bb408311:	49 8b 97 00 4d 00 00 	mov    0x4d00(%r15),%rdx
    7f01bb408318:	8b b5 a0 fc ff ff    	mov    -0x360(%rbp),%esi
    7f01bb40831e:	8b f6                	mov    %esi,%esi
    7f01bb408320:	48 89 b5 f8 d5 ff ff 	mov    %rsi,-0x2a08(%rbp)
    7f01bb408327:	48 8d b5 f8 d5 ff ff 	lea    -0x2a08(%rbp),%rsi
    7f01bb40832e:	48 89 32             	mov    %rsi,(%rdx)
    7f01bb408331:	49 8b 97 00 4d 00 00 	mov    0x4d00(%r15),%rdx
    7f01bb408338:	8b b5 40 e3 ff ff    	mov    -0x1cc0(%rbp),%esi
    7f01bb40833e:	8b f6                	mov    %esi,%esi
    7f01bb408340:	48 89 b5 f0 d5 ff ff 	mov    %rsi,-0x2a10(%rbp)
    7f01bb408347:	48 8d b5 f0 d5 ff ff 	lea    -0x2a10(%rbp),%rsi
    7f01bb40834e:	48 89 72 10          	mov    %rsi,0x10(%rdx)
    7f01bb408352:	48 8b f1             	mov    %rcx,%rsi
    7f01bb408355:	48 8b f8             	mov    %rax,%rdi
    7f01bb408358:	48 89 85 e8 d5 ff ff 	mov    %rax,-0x2a18(%rbp)
    7f01bb40835f:	48 89 8d e0 d5 ff ff 	mov    %rcx,-0x2a20(%rbp)
    7f01bb408366:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb40836b:	e8 6e 6b 8d ff       	callq  0x7f01bacdeede
    7f01bb408370:	8b 85 f8 f6 ff ff    	mov    -0x908(%rbp),%eax
    7f01bb408376:	85 c0                	test   %eax,%eax
    7f01bb408378:	0f 84 21 00 00 00    	je     0x7f01bb40839f
    7f01bb40837e:	41 8b 87 e0 4c 00 00 	mov    0x4ce0(%r15),%eax
    7f01bb408385:	41 89 87 d8 4c 00 00 	mov    %eax,0x4cd8(%r15)
    7f01bb40838c:	89 85 a0 fc ff ff    	mov    %eax,-0x360(%rbp)
    7f01bb408392:	8b 85 a8 fc ff ff    	mov    -0x358(%rbp),%eax
    7f01bb408398:	41 89 87 e0 4c 00 00 	mov    %eax,0x4ce0(%r15)
    7f01bb40839f:	49 8b c7             	mov    %r15,%rax
    7f01bb4083a2:	48 05 98 4c 00 00    	add    $0x4c98,%rax
    7f01bb4083a8:	49 8b cf             	mov    %r15,%rcx
    7f01bb4083ab:	48 81 c1 a0 4c 00 00 	add    $0x4ca0,%rcx
    7f01bb4083b2:	49 8b 97 b0 4c 00 00 	mov    0x4cb0(%r15),%rdx
    7f01bb4083b9:	8b b5 c8 ef ff ff    	mov    -0x1038(%rbp),%esi
    7f01bb4083bf:	8b f6                	mov    %esi,%esi
    7f01bb4083c1:	48 89 b5 d8 d5 ff ff 	mov    %rsi,-0x2a28(%rbp)
    7f01bb4083c8:	48 8d b5 d8 d5 ff ff 	lea    -0x2a28(%rbp),%rsi
    7f01bb4083cf:	48 89 32             	mov    %rsi,(%rdx)
    7f01bb4083d2:	49 8b 97 b0 4c 00 00 	mov    0x4cb0(%r15),%rdx
    7f01bb4083d9:	8b b5 b8 ef ff ff    	mov    -0x1048(%rbp),%esi
    7f01bb4083df:	8b f6                	mov    %esi,%esi
    7f01bb4083e1:	48 89 b5 d0 d5 ff ff 	mov    %rsi,-0x2a30(%rbp)
    7f01bb4083e8:	48 8d b5 d0 d5 ff ff 	lea    -0x2a30(%rbp),%rsi
    7f01bb4083ef:	48 89 72 10          	mov    %rsi,0x10(%rdx)
    7f01bb4083f3:	48 8b f1             	mov    %rcx,%rsi
    7f01bb4083f6:	48 8b f8             	mov    %rax,%rdi
    7f01bb4083f9:	48 89 85 c8 d5 ff ff 	mov    %rax,-0x2a38(%rbp)
    7f01bb408400:	48 89 8d c0 d5 ff ff 	mov    %rcx,-0x2a40(%rbp)
    7f01bb408407:	b8 08 00 00 00       	mov    $0x8,%eax
    7f01bb40840c:	e8 cd 6a 8d ff       	callq  0x7f01bacdeede
    7f01bb408411:	45 85 e4             	test   %r12d,%r12d
    7f01bb408414:	0f 84 1a 00 00 00    	je     0x7f01bb408434
    7f01bb40841a:	c7 85 b0 fc ff ff 00 	movl   $0x0,-0x350(%rbp)
    7f01bb408421:	00 00 00 
    7f01bb408424:	41 c7 87 90 4c 00 00 	movl   $0x0,0x4c90(%r15)
    7f01bb40842b:	00 00 00 00 
    7f01bb40842f:	e9 13 00 00 00       	jmpq   0x7f01bb408447
    7f01bb408434:	8b 85 58 e3 ff ff    	mov    -0x1ca8(%rbp),%eax
    7f01bb40843a:	41 89 87 90 4c 00 00 	mov    %eax,0x4c90(%r15)
    7f01bb408441:	89 85 b0 fc ff ff    	mov    %eax,-0x350(%rbp)
    7f01bb408447:	8b 85 f8 e4 ff ff    	mov    -0x1b08(%rbp),%eax
    7f01bb40844d:	85 c0                	test   %eax,%eax
    7f01bb40844f:	0f 84 46 00 00 00    	je     0x7f01bb40849b
    7f01bb408455:	8b 8d e0 e4 ff ff    	mov    -0x1b20(%rbp),%ecx
    7f01bb40845b:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb40845e:	0f 93 c0             	setae  %al
    7f01bb408461:	0f b6 c0             	movzbl %al,%eax
    7f01bb408464:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb408467:	0f 92 c1             	setb   %cl
    7f01bb40846a:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb40846d:	23 c1                	and    %ecx,%eax
    7f01bb40846f:	85 c0                	test   %eax,%eax
    7f01bb408471:	0f 85 0a 00 00 00    	jne    0x7f01bb408481
    7f01bb408477:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb40847c:	e9 9d 1a 00 00       	jmpq   0x7f01bb409f1e
    7f01bb408481:	49 8b c7             	mov    %r15,%rax
    7f01bb408484:	48 05 08 30 00 00    	add    $0x3008,%rax
    7f01bb40848a:	8b 8d e0 e4 ff ff    	mov    -0x1b20(%rbp),%ecx
    7f01bb408490:	8b c9                	mov    %ecx,%ecx
    7f01bb408492:	8b 95 80 e3 ff ff    	mov    -0x1c80(%rbp),%edx
    7f01bb408498:	89 14 88             	mov    %edx,(%rax,%rcx,4)
    7f01bb40849b:	45 85 e4             	test   %r12d,%r12d
    7f01bb40849e:	0f 84 1b 00 00 00    	je     0x7f01bb4084bf
    7f01bb4084a4:	48 c7 85 b8 fc ff ff 	movq   $0x0,-0x348(%rbp)
    7f01bb4084ab:	00 00 00 00 
    7f01bb4084af:	49 c7 87 88 4c 00 00 	movq   $0x0,0x4c88(%r15)
    7f01bb4084b6:	00 00 00 00 
    7f01bb4084ba:	e9 15 00 00 00       	jmpq   0x7f01bb4084d4
    7f01bb4084bf:	48 8b 85 88 e3 ff ff 	mov    -0x1c78(%rbp),%rax
    7f01bb4084c6:	49 89 87 88 4c 00 00 	mov    %rax,0x4c88(%r15)
    7f01bb4084cd:	48 89 85 b8 fc ff ff 	mov    %rax,-0x348(%rbp)
    7f01bb4084d4:	45 85 e4             	test   %r12d,%r12d
    7f01bb4084d7:	0f 84 1a 00 00 00    	je     0x7f01bb4084f7
    7f01bb4084dd:	c7 85 c0 fc ff ff 00 	movl   $0x0,-0x340(%rbp)
    7f01bb4084e4:	00 00 00 
    7f01bb4084e7:	41 c7 87 80 4c 00 00 	movl   $0x0,0x4c80(%r15)
    7f01bb4084ee:	00 00 00 00 
    7f01bb4084f2:	e9 13 00 00 00       	jmpq   0x7f01bb40850a
    7f01bb4084f7:	8b 85 38 e4 ff ff    	mov    -0x1bc8(%rbp),%eax
    7f01bb4084fd:	41 89 87 80 4c 00 00 	mov    %eax,0x4c80(%r15)
    7f01bb408504:	89 85 c0 fc ff ff    	mov    %eax,-0x340(%rbp)
    7f01bb40850a:	45 85 e4             	test   %r12d,%r12d
    7f01bb40850d:	0f 84 1a 00 00 00    	je     0x7f01bb40852d
    7f01bb408513:	c7 85 c8 fc ff ff 00 	movl   $0x0,-0x338(%rbp)
    7f01bb40851a:	00 00 00 
    7f01bb40851d:	41 c7 87 78 4c 00 00 	movl   $0x0,0x4c78(%r15)
    7f01bb408524:	00 00 00 00 
    7f01bb408528:	e9 13 00 00 00       	jmpq   0x7f01bb408540
    7f01bb40852d:	8b 85 48 e4 ff ff    	mov    -0x1bb8(%rbp),%eax
    7f01bb408533:	41 89 87 78 4c 00 00 	mov    %eax,0x4c78(%r15)
    7f01bb40853a:	89 85 c8 fc ff ff    	mov    %eax,-0x338(%rbp)
    7f01bb408540:	45 85 e4             	test   %r12d,%r12d
    7f01bb408543:	0f 84 1a 00 00 00    	je     0x7f01bb408563
    7f01bb408549:	c7 85 d0 fc ff ff 00 	movl   $0x0,-0x330(%rbp)
    7f01bb408550:	00 00 00 
    7f01bb408553:	41 c7 87 70 4c 00 00 	movl   $0x0,0x4c70(%r15)
    7f01bb40855a:	00 00 00 00 
    7f01bb40855e:	e9 13 00 00 00       	jmpq   0x7f01bb408576
    7f01bb408563:	8b 85 68 e4 ff ff    	mov    -0x1b98(%rbp),%eax
    7f01bb408569:	41 89 87 70 4c 00 00 	mov    %eax,0x4c70(%r15)
    7f01bb408570:	89 85 d0 fc ff ff    	mov    %eax,-0x330(%rbp)
    7f01bb408576:	8b 85 a8 e4 ff ff    	mov    -0x1b58(%rbp),%eax
    7f01bb40857c:	41 89 87 68 4c 00 00 	mov    %eax,0x4c68(%r15)
    7f01bb408583:	89 85 d8 fc ff ff    	mov    %eax,-0x328(%rbp)
    7f01bb408589:	45 85 e4             	test   %r12d,%r12d
    7f01bb40858c:	0f 84 1a 00 00 00    	je     0x7f01bb4085ac
    7f01bb408592:	c7 85 e0 fc ff ff 00 	movl   $0x0,-0x320(%rbp)
    7f01bb408599:	00 00 00 
    7f01bb40859c:	41 c7 87 60 4c 00 00 	movl   $0x0,0x4c60(%r15)
    7f01bb4085a3:	00 00 00 00 
    7f01bb4085a7:	e9 13 00 00 00       	jmpq   0x7f01bb4085bf
    7f01bb4085ac:	8b 85 b8 e4 ff ff    	mov    -0x1b48(%rbp),%eax
    7f01bb4085b2:	41 89 87 60 4c 00 00 	mov    %eax,0x4c60(%r15)
    7f01bb4085b9:	89 85 e0 fc ff ff    	mov    %eax,-0x320(%rbp)
    7f01bb4085bf:	8b 85 18 e5 ff ff    	mov    -0x1ae8(%rbp),%eax
    7f01bb4085c5:	41 89 87 58 4c 00 00 	mov    %eax,0x4c58(%r15)
    7f01bb4085cc:	89 85 e8 fc ff ff    	mov    %eax,-0x318(%rbp)
    7f01bb4085d2:	8b 85 20 e5 ff ff    	mov    -0x1ae0(%rbp),%eax
    7f01bb4085d8:	41 89 87 50 4c 00 00 	mov    %eax,0x4c50(%r15)
    7f01bb4085df:	89 85 f0 fc ff ff    	mov    %eax,-0x310(%rbp)
    7f01bb4085e5:	8b 85 28 e5 ff ff    	mov    -0x1ad8(%rbp),%eax
    7f01bb4085eb:	41 89 87 48 4c 00 00 	mov    %eax,0x4c48(%r15)
    7f01bb4085f2:	89 85 f8 fc ff ff    	mov    %eax,-0x308(%rbp)
    7f01bb4085f8:	45 85 e4             	test   %r12d,%r12d
    7f01bb4085fb:	0f 84 1a 00 00 00    	je     0x7f01bb40861b
    7f01bb408601:	c7 85 00 fd ff ff 00 	movl   $0x0,-0x300(%rbp)
    7f01bb408608:	00 00 00 
    7f01bb40860b:	41 c7 87 40 4c 00 00 	movl   $0x0,0x4c40(%r15)
    7f01bb408612:	00 00 00 00 
    7f01bb408616:	e9 13 00 00 00       	jmpq   0x7f01bb40862e
    7f01bb40861b:	8b 85 30 e5 ff ff    	mov    -0x1ad0(%rbp),%eax
    7f01bb408621:	41 89 87 40 4c 00 00 	mov    %eax,0x4c40(%r15)
    7f01bb408628:	89 85 00 fd ff ff    	mov    %eax,-0x300(%rbp)
    7f01bb40862e:	8b 85 80 e5 ff ff    	mov    -0x1a80(%rbp),%eax
    7f01bb408634:	41 89 87 38 4c 00 00 	mov    %eax,0x4c38(%r15)
    7f01bb40863b:	89 85 08 fd ff ff    	mov    %eax,-0x2f8(%rbp)
    7f01bb408641:	8b 85 88 e5 ff ff    	mov    -0x1a78(%rbp),%eax
    7f01bb408647:	41 89 87 30 4c 00 00 	mov    %eax,0x4c30(%r15)
    7f01bb40864e:	89 85 10 fd ff ff    	mov    %eax,-0x2f0(%rbp)
    7f01bb408654:	8b 85 90 e5 ff ff    	mov    -0x1a70(%rbp),%eax
    7f01bb40865a:	41 89 87 28 4c 00 00 	mov    %eax,0x4c28(%r15)
    7f01bb408661:	89 85 18 fd ff ff    	mov    %eax,-0x2e8(%rbp)
    7f01bb408667:	45 85 e4             	test   %r12d,%r12d
    7f01bb40866a:	0f 84 1a 00 00 00    	je     0x7f01bb40868a
    7f01bb408670:	c7 85 20 fd ff ff 00 	movl   $0x0,-0x2e0(%rbp)
    7f01bb408677:	00 00 00 
    7f01bb40867a:	41 c7 87 20 4c 00 00 	movl   $0x0,0x4c20(%r15)
    7f01bb408681:	00 00 00 00 
    7f01bb408685:	e9 13 00 00 00       	jmpq   0x7f01bb40869d
    7f01bb40868a:	8b 85 a0 e5 ff ff    	mov    -0x1a60(%rbp),%eax
    7f01bb408690:	41 89 87 20 4c 00 00 	mov    %eax,0x4c20(%r15)
    7f01bb408697:	89 85 20 fd ff ff    	mov    %eax,-0x2e0(%rbp)
    7f01bb40869d:	45 85 e4             	test   %r12d,%r12d
    7f01bb4086a0:	0f 84 1a 00 00 00    	je     0x7f01bb4086c0
    7f01bb4086a6:	c7 85 28 fd ff ff 00 	movl   $0x0,-0x2d8(%rbp)
    7f01bb4086ad:	00 00 00 
    7f01bb4086b0:	41 c7 87 18 4c 00 00 	movl   $0x0,0x4c18(%r15)
    7f01bb4086b7:	00 00 00 00 
    7f01bb4086bb:	e9 13 00 00 00       	jmpq   0x7f01bb4086d3
    7f01bb4086c0:	8b 85 c8 e5 ff ff    	mov    -0x1a38(%rbp),%eax
    7f01bb4086c6:	41 89 87 18 4c 00 00 	mov    %eax,0x4c18(%r15)
    7f01bb4086cd:	89 85 28 fd ff ff    	mov    %eax,-0x2d8(%rbp)
    7f01bb4086d3:	49 8b c7             	mov    %r15,%rax
    7f01bb4086d6:	48 05 08 4c 00 00    	add    $0x4c08,%rax
    7f01bb4086dc:	49 8b cf             	mov    %r15,%rcx
    7f01bb4086df:	48 81 c1 f8 2f 00 00 	add    $0x2ff8,%rcx
    7f01bb4086e6:	48 8b 11             	mov    (%rcx),%rdx
    7f01bb4086e9:	48 89 10             	mov    %rdx,(%rax)
    7f01bb4086ec:	66 8b 51 08          	mov    0x8(%rcx),%dx
    7f01bb4086f0:	66 89 50 08          	mov    %dx,0x8(%rax)
    7f01bb4086f4:	8a 51 0a             	mov    0xa(%rcx),%dl
    7f01bb4086f7:	88 50 0a             	mov    %dl,0xa(%rax)
    7f01bb4086fa:	45 85 e4             	test   %r12d,%r12d
    7f01bb4086fd:	0f 84 1a 00 00 00    	je     0x7f01bb40871d
    7f01bb408703:	c7 85 30 fd ff ff 00 	movl   $0x0,-0x2d0(%rbp)
    7f01bb40870a:	00 00 00 
    7f01bb40870d:	41 c7 87 00 4c 00 00 	movl   $0x0,0x4c00(%r15)
    7f01bb408714:	00 00 00 00 
    7f01bb408718:	e9 13 00 00 00       	jmpq   0x7f01bb408730
    7f01bb40871d:	8b 85 48 e6 ff ff    	mov    -0x19b8(%rbp),%eax
    7f01bb408723:	41 89 87 00 4c 00 00 	mov    %eax,0x4c00(%r15)
    7f01bb40872a:	89 85 30 fd ff ff    	mov    %eax,-0x2d0(%rbp)
    7f01bb408730:	45 85 e4             	test   %r12d,%r12d
    7f01bb408733:	0f 84 1a 00 00 00    	je     0x7f01bb408753
    7f01bb408739:	c7 85 38 fd ff ff 00 	movl   $0x0,-0x2c8(%rbp)
    7f01bb408740:	00 00 00 
    7f01bb408743:	41 c7 87 f8 4b 00 00 	movl   $0x0,0x4bf8(%r15)
    7f01bb40874a:	00 00 00 00 
    7f01bb40874e:	e9 13 00 00 00       	jmpq   0x7f01bb408766
    7f01bb408753:	8b 85 50 e6 ff ff    	mov    -0x19b0(%rbp),%eax
    7f01bb408759:	41 89 87 f8 4b 00 00 	mov    %eax,0x4bf8(%r15)
    7f01bb408760:	89 85 38 fd ff ff    	mov    %eax,-0x2c8(%rbp)
    7f01bb408766:	45 85 e4             	test   %r12d,%r12d
    7f01bb408769:	0f 84 1a 00 00 00    	je     0x7f01bb408789
    7f01bb40876f:	c7 85 40 fd ff ff 00 	movl   $0x0,-0x2c0(%rbp)
    7f01bb408776:	00 00 00 
    7f01bb408779:	41 c7 87 f0 4b 00 00 	movl   $0x0,0x4bf0(%r15)
    7f01bb408780:	00 00 00 00 
    7f01bb408784:	e9 13 00 00 00       	jmpq   0x7f01bb40879c
    7f01bb408789:	8b 85 58 e6 ff ff    	mov    -0x19a8(%rbp),%eax
    7f01bb40878f:	41 89 87 f0 4b 00 00 	mov    %eax,0x4bf0(%r15)
    7f01bb408796:	89 85 40 fd ff ff    	mov    %eax,-0x2c0(%rbp)
    7f01bb40879c:	45 85 e4             	test   %r12d,%r12d
    7f01bb40879f:	0f 84 1a 00 00 00    	je     0x7f01bb4087bf
    7f01bb4087a5:	c7 85 48 fd ff ff 00 	movl   $0x0,-0x2b8(%rbp)
    7f01bb4087ac:	00 00 00 
    7f01bb4087af:	41 c7 87 e8 4b 00 00 	movl   $0x0,0x4be8(%r15)
    7f01bb4087b6:	00 00 00 00 
    7f01bb4087ba:	e9 13 00 00 00       	jmpq   0x7f01bb4087d2
    7f01bb4087bf:	8b 85 78 e6 ff ff    	mov    -0x1988(%rbp),%eax
    7f01bb4087c5:	41 89 87 e8 4b 00 00 	mov    %eax,0x4be8(%r15)
    7f01bb4087cc:	89 85 48 fd ff ff    	mov    %eax,-0x2b8(%rbp)
    7f01bb4087d2:	45 85 e4             	test   %r12d,%r12d
    7f01bb4087d5:	0f 84 1a 00 00 00    	je     0x7f01bb4087f5
    7f01bb4087db:	c7 85 50 fd ff ff 00 	movl   $0x0,-0x2b0(%rbp)
    7f01bb4087e2:	00 00 00 
    7f01bb4087e5:	41 c7 87 e0 4b 00 00 	movl   $0x0,0x4be0(%r15)
    7f01bb4087ec:	00 00 00 00 
    7f01bb4087f0:	e9 13 00 00 00       	jmpq   0x7f01bb408808
    7f01bb4087f5:	8b 85 90 e6 ff ff    	mov    -0x1970(%rbp),%eax
    7f01bb4087fb:	41 89 87 e0 4b 00 00 	mov    %eax,0x4be0(%r15)
    7f01bb408802:	89 85 50 fd ff ff    	mov    %eax,-0x2b0(%rbp)
    7f01bb408808:	45 85 e4             	test   %r12d,%r12d
    7f01bb40880b:	0f 84 16 00 00 00    	je     0x7f01bb408827
    7f01bb408811:	41 be 01 00 00 00    	mov    $0x1,%r14d
    7f01bb408817:	41 c7 87 d8 4b 00 00 	movl   $0x1,0x4bd8(%r15)
    7f01bb40881e:	01 00 00 00 
    7f01bb408822:	e9 10 00 00 00       	jmpq   0x7f01bb408837
    7f01bb408827:	8b 85 98 e6 ff ff    	mov    -0x1968(%rbp),%eax
    7f01bb40882d:	41 89 87 d8 4b 00 00 	mov    %eax,0x4bd8(%r15)
    7f01bb408834:	4c 8b f0             	mov    %rax,%r14
    7f01bb408837:	45 85 e4             	test   %r12d,%r12d
    7f01bb40883a:	0f 84 34 00 00 00    	je     0x7f01bb408874
    7f01bb408840:	49 8b c7             	mov    %r15,%rax
    7f01bb408843:	48 05 a8 4b 00 00    	add    $0x4ba8,%rax
    7f01bb408849:	49 8b cf             	mov    %r15,%rcx
    7f01bb40884c:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb408853:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408856:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408859:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40885d:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408861:	48 8b 51 20          	mov    0x20(%rcx),%rdx
    7f01bb408865:	48 89 50 20          	mov    %rdx,0x20(%rax)
    7f01bb408869:	8b 51 28             	mov    0x28(%rcx),%edx
    7f01bb40886c:	89 50 28             	mov    %edx,0x28(%rax)
    7f01bb40886f:	e9 2f 00 00 00       	jmpq   0x7f01bb4088a3
    7f01bb408874:	49 8b c7             	mov    %r15,%rax
    7f01bb408877:	48 05 a8 4b 00 00    	add    $0x4ba8,%rax
    7f01bb40887d:	49 8b cf             	mov    %r15,%rcx
    7f01bb408880:	48 81 c1 48 2e 00 00 	add    $0x2e48,%rcx
    7f01bb408887:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40888a:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40888d:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408891:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408895:	48 8b 51 20          	mov    0x20(%rcx),%rdx
    7f01bb408899:	48 89 50 20          	mov    %rdx,0x20(%rax)
    7f01bb40889d:	8b 51 28             	mov    0x28(%rcx),%edx
    7f01bb4088a0:	89 50 28             	mov    %edx,0x28(%rax)
    7f01bb4088a3:	48 8b 85 60 e9 ff ff 	mov    -0x16a0(%rbp),%rax
    7f01bb4088aa:	49 89 87 a0 4b 00 00 	mov    %rax,0x4ba0(%r15)
    7f01bb4088b1:	48 89 85 58 fd ff ff 	mov    %rax,-0x2a8(%rbp)
    7f01bb4088b8:	8b 85 68 e9 ff ff    	mov    -0x1698(%rbp),%eax
    7f01bb4088be:	41 89 87 98 4b 00 00 	mov    %eax,0x4b98(%r15)
    7f01bb4088c5:	89 85 60 fd ff ff    	mov    %eax,-0x2a0(%rbp)
    7f01bb4088cb:	49 8b c7             	mov    %r15,%rax
    7f01bb4088ce:	48 05 58 4b 00 00    	add    $0x4b58,%rax
    7f01bb4088d4:	49 8b cf             	mov    %r15,%rcx
    7f01bb4088d7:	48 81 c1 08 2e 00 00 	add    $0x2e08,%rcx
    7f01bb4088de:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4088e1:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4088e4:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4088e8:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4088ec:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4088f0:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4088f4:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4088f8:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4088fc:	49 8b c7             	mov    %r15,%rax
    7f01bb4088ff:	48 05 18 4b 00 00    	add    $0x4b18,%rax
    7f01bb408905:	49 8b cf             	mov    %r15,%rcx
    7f01bb408908:	48 81 c1 c8 2d 00 00 	add    $0x2dc8,%rcx
    7f01bb40890f:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408912:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408915:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408919:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40891d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408921:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408925:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408929:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40892d:	49 8b c7             	mov    %r15,%rax
    7f01bb408930:	48 05 d8 4a 00 00    	add    $0x4ad8,%rax
    7f01bb408936:	49 8b cf             	mov    %r15,%rcx
    7f01bb408939:	48 81 c1 88 2d 00 00 	add    $0x2d88,%rcx
    7f01bb408940:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408943:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408946:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40894a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40894e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408952:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408956:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40895a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40895e:	49 8b c7             	mov    %r15,%rax
    7f01bb408961:	48 05 98 4a 00 00    	add    $0x4a98,%rax
    7f01bb408967:	49 8b cf             	mov    %r15,%rcx
    7f01bb40896a:	48 81 c1 48 2d 00 00 	add    $0x2d48,%rcx
    7f01bb408971:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408974:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408977:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40897b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40897f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408983:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408987:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40898b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40898f:	45 85 e4             	test   %r12d,%r12d
    7f01bb408992:	0f 84 1a 00 00 00    	je     0x7f01bb4089b2
    7f01bb408998:	c7 85 68 fd ff ff 00 	movl   $0x0,-0x298(%rbp)
    7f01bb40899f:	00 00 00 
    7f01bb4089a2:	41 c7 87 90 4a 00 00 	movl   $0x0,0x4a90(%r15)
    7f01bb4089a9:	00 00 00 00 
    7f01bb4089ad:	e9 13 00 00 00       	jmpq   0x7f01bb4089c5
    7f01bb4089b2:	8b 85 90 e9 ff ff    	mov    -0x1670(%rbp),%eax
    7f01bb4089b8:	41 89 87 90 4a 00 00 	mov    %eax,0x4a90(%r15)
    7f01bb4089bf:	89 85 68 fd ff ff    	mov    %eax,-0x298(%rbp)
    7f01bb4089c5:	45 85 e4             	test   %r12d,%r12d
    7f01bb4089c8:	0f 84 1a 00 00 00    	je     0x7f01bb4089e8
    7f01bb4089ce:	c7 85 70 fd ff ff 00 	movl   $0x0,-0x290(%rbp)
    7f01bb4089d5:	00 00 00 
    7f01bb4089d8:	41 c7 87 88 4a 00 00 	movl   $0x0,0x4a88(%r15)
    7f01bb4089df:	00 00 00 00 
    7f01bb4089e3:	e9 13 00 00 00       	jmpq   0x7f01bb4089fb
    7f01bb4089e8:	8b 85 b0 e9 ff ff    	mov    -0x1650(%rbp),%eax
    7f01bb4089ee:	41 89 87 88 4a 00 00 	mov    %eax,0x4a88(%r15)
    7f01bb4089f5:	89 85 70 fd ff ff    	mov    %eax,-0x290(%rbp)
    7f01bb4089fb:	45 85 e4             	test   %r12d,%r12d
    7f01bb4089fe:	0f 84 1a 00 00 00    	je     0x7f01bb408a1e
    7f01bb408a04:	c7 85 78 fd ff ff 00 	movl   $0x0,-0x288(%rbp)
    7f01bb408a0b:	00 00 00 
    7f01bb408a0e:	41 c7 87 80 4a 00 00 	movl   $0x0,0x4a80(%r15)
    7f01bb408a15:	00 00 00 00 
    7f01bb408a19:	e9 13 00 00 00       	jmpq   0x7f01bb408a31
    7f01bb408a1e:	8b 85 d0 e9 ff ff    	mov    -0x1630(%rbp),%eax
    7f01bb408a24:	41 89 87 80 4a 00 00 	mov    %eax,0x4a80(%r15)
    7f01bb408a2b:	89 85 78 fd ff ff    	mov    %eax,-0x288(%rbp)
    7f01bb408a31:	45 85 e4             	test   %r12d,%r12d
    7f01bb408a34:	0f 84 1a 00 00 00    	je     0x7f01bb408a54
    7f01bb408a3a:	c7 85 80 fd ff ff 00 	movl   $0x0,-0x280(%rbp)
    7f01bb408a41:	00 00 00 
    7f01bb408a44:	41 c7 87 78 4a 00 00 	movl   $0x0,0x4a78(%r15)
    7f01bb408a4b:	00 00 00 00 
    7f01bb408a4f:	e9 13 00 00 00       	jmpq   0x7f01bb408a67
    7f01bb408a54:	8b 85 f0 e9 ff ff    	mov    -0x1610(%rbp),%eax
    7f01bb408a5a:	41 89 87 78 4a 00 00 	mov    %eax,0x4a78(%r15)
    7f01bb408a61:	89 85 80 fd ff ff    	mov    %eax,-0x280(%rbp)
    7f01bb408a67:	45 85 e4             	test   %r12d,%r12d
    7f01bb408a6a:	0f 84 1a 00 00 00    	je     0x7f01bb408a8a
    7f01bb408a70:	c7 85 88 fd ff ff 00 	movl   $0x0,-0x278(%rbp)
    7f01bb408a77:	00 00 00 
    7f01bb408a7a:	41 c7 87 70 4a 00 00 	movl   $0x0,0x4a70(%r15)
    7f01bb408a81:	00 00 00 00 
    7f01bb408a85:	e9 13 00 00 00       	jmpq   0x7f01bb408a9d
    7f01bb408a8a:	8b 85 18 ea ff ff    	mov    -0x15e8(%rbp),%eax
    7f01bb408a90:	41 89 87 70 4a 00 00 	mov    %eax,0x4a70(%r15)
    7f01bb408a97:	89 85 88 fd ff ff    	mov    %eax,-0x278(%rbp)
    7f01bb408a9d:	45 85 e4             	test   %r12d,%r12d
    7f01bb408aa0:	0f 84 1a 00 00 00    	je     0x7f01bb408ac0
    7f01bb408aa6:	c7 85 90 fd ff ff 00 	movl   $0x0,-0x270(%rbp)
    7f01bb408aad:	00 00 00 
    7f01bb408ab0:	41 c7 87 68 4a 00 00 	movl   $0x0,0x4a68(%r15)
    7f01bb408ab7:	00 00 00 00 
    7f01bb408abb:	e9 13 00 00 00       	jmpq   0x7f01bb408ad3
    7f01bb408ac0:	8b 85 38 ea ff ff    	mov    -0x15c8(%rbp),%eax
    7f01bb408ac6:	41 89 87 68 4a 00 00 	mov    %eax,0x4a68(%r15)
    7f01bb408acd:	89 85 90 fd ff ff    	mov    %eax,-0x270(%rbp)
    7f01bb408ad3:	8b 85 68 ea ff ff    	mov    -0x1598(%rbp),%eax
    7f01bb408ad9:	41 89 87 60 4a 00 00 	mov    %eax,0x4a60(%r15)
    7f01bb408ae0:	89 85 98 fd ff ff    	mov    %eax,-0x268(%rbp)
    7f01bb408ae6:	8b 85 c8 ea ff ff    	mov    -0x1538(%rbp),%eax
    7f01bb408aec:	41 89 87 58 4a 00 00 	mov    %eax,0x4a58(%r15)
    7f01bb408af3:	89 85 a0 fd ff ff    	mov    %eax,-0x260(%rbp)
    7f01bb408af9:	8b 85 d8 ea ff ff    	mov    -0x1528(%rbp),%eax
    7f01bb408aff:	41 89 87 50 4a 00 00 	mov    %eax,0x4a50(%r15)
    7f01bb408b06:	89 85 a8 fd ff ff    	mov    %eax,-0x258(%rbp)
    7f01bb408b0c:	8b 85 e8 ea ff ff    	mov    -0x1518(%rbp),%eax
    7f01bb408b12:	41 89 87 48 4a 00 00 	mov    %eax,0x4a48(%r15)
    7f01bb408b19:	89 85 b0 fd ff ff    	mov    %eax,-0x250(%rbp)
    7f01bb408b1f:	8b 85 f8 ea ff ff    	mov    -0x1508(%rbp),%eax
    7f01bb408b25:	41 89 87 40 4a 00 00 	mov    %eax,0x4a40(%r15)
    7f01bb408b2c:	89 85 b8 fd ff ff    	mov    %eax,-0x248(%rbp)
    7f01bb408b32:	45 85 e4             	test   %r12d,%r12d
    7f01bb408b35:	0f 84 1a 00 00 00    	je     0x7f01bb408b55
    7f01bb408b3b:	c7 85 c0 fd ff ff ff 	movl   $0xfffff,-0x240(%rbp)
    7f01bb408b42:	ff 0f 00 
    7f01bb408b45:	41 c7 87 38 4a 00 00 	movl   $0xfffff,0x4a38(%r15)
    7f01bb408b4c:	ff ff 0f 00 
    7f01bb408b50:	e9 13 00 00 00       	jmpq   0x7f01bb408b68
    7f01bb408b55:	8b 85 28 eb ff ff    	mov    -0x14d8(%rbp),%eax
    7f01bb408b5b:	41 89 87 38 4a 00 00 	mov    %eax,0x4a38(%r15)
    7f01bb408b62:	89 85 c0 fd ff ff    	mov    %eax,-0x240(%rbp)
    7f01bb408b68:	45 85 e4             	test   %r12d,%r12d
    7f01bb408b6b:	0f 84 1a 00 00 00    	je     0x7f01bb408b8b
    7f01bb408b71:	c7 85 c8 fd ff ff ff 	movl   $0xfffff,-0x238(%rbp)
    7f01bb408b78:	ff 0f 00 
    7f01bb408b7b:	41 c7 87 30 4a 00 00 	movl   $0xfffff,0x4a30(%r15)
    7f01bb408b82:	ff ff 0f 00 
    7f01bb408b86:	e9 13 00 00 00       	jmpq   0x7f01bb408b9e
    7f01bb408b8b:	8b 85 48 eb ff ff    	mov    -0x14b8(%rbp),%eax
    7f01bb408b91:	41 89 87 30 4a 00 00 	mov    %eax,0x4a30(%r15)
    7f01bb408b98:	89 85 c8 fd ff ff    	mov    %eax,-0x238(%rbp)
    7f01bb408b9e:	8b 85 70 eb ff ff    	mov    -0x1490(%rbp),%eax
    7f01bb408ba4:	41 89 87 28 4a 00 00 	mov    %eax,0x4a28(%r15)
    7f01bb408bab:	89 85 d0 fd ff ff    	mov    %eax,-0x230(%rbp)
    7f01bb408bb1:	8b 85 80 eb ff ff    	mov    -0x1480(%rbp),%eax
    7f01bb408bb7:	41 89 87 20 4a 00 00 	mov    %eax,0x4a20(%r15)
    7f01bb408bbe:	89 85 d8 fd ff ff    	mov    %eax,-0x228(%rbp)
    7f01bb408bc4:	8b 85 b8 eb ff ff    	mov    -0x1448(%rbp),%eax
    7f01bb408bca:	41 89 87 18 4a 00 00 	mov    %eax,0x4a18(%r15)
    7f01bb408bd1:	89 85 e0 fd ff ff    	mov    %eax,-0x220(%rbp)
    7f01bb408bd7:	8b 85 70 ec ff ff    	mov    -0x1390(%rbp),%eax
    7f01bb408bdd:	41 89 87 10 4a 00 00 	mov    %eax,0x4a10(%r15)
    7f01bb408be4:	89 85 e8 fd ff ff    	mov    %eax,-0x218(%rbp)
    7f01bb408bea:	8b 85 c8 ec ff ff    	mov    -0x1338(%rbp),%eax
    7f01bb408bf0:	41 89 87 08 4a 00 00 	mov    %eax,0x4a08(%r15)
    7f01bb408bf7:	89 85 f0 fd ff ff    	mov    %eax,-0x210(%rbp)
    7f01bb408bfd:	8b 85 e0 ec ff ff    	mov    -0x1320(%rbp),%eax
    7f01bb408c03:	41 89 87 00 4a 00 00 	mov    %eax,0x4a00(%r15)
    7f01bb408c0a:	89 85 f8 fd ff ff    	mov    %eax,-0x208(%rbp)
    7f01bb408c10:	49 8b c7             	mov    %r15,%rax
    7f01bb408c13:	48 05 c0 49 00 00    	add    $0x49c0,%rax
    7f01bb408c19:	49 8b cf             	mov    %r15,%rcx
    7f01bb408c1c:	48 81 c1 48 2b 00 00 	add    $0x2b48,%rcx
    7f01bb408c23:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408c26:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408c29:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408c2d:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408c31:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408c35:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408c39:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408c3d:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408c41:	49 8b c7             	mov    %r15,%rax
    7f01bb408c44:	48 05 80 49 00 00    	add    $0x4980,%rax
    7f01bb408c4a:	49 8b cf             	mov    %r15,%rcx
    7f01bb408c4d:	48 81 c1 08 2b 00 00 	add    $0x2b08,%rcx
    7f01bb408c54:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408c57:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408c5a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408c5e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408c62:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408c66:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408c6a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408c6e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408c72:	45 85 e4             	test   %r12d,%r12d
    7f01bb408c75:	0f 84 1a 00 00 00    	je     0x7f01bb408c95
    7f01bb408c7b:	c7 85 00 fe ff ff 01 	movl   $0x1,-0x200(%rbp)
    7f01bb408c82:	00 00 00 
    7f01bb408c85:	41 c7 87 78 49 00 00 	movl   $0x1,0x4978(%r15)
    7f01bb408c8c:	01 00 00 00 
    7f01bb408c90:	e9 13 00 00 00       	jmpq   0x7f01bb408ca8
    7f01bb408c95:	8b 85 30 ed ff ff    	mov    -0x12d0(%rbp),%eax
    7f01bb408c9b:	41 89 87 78 49 00 00 	mov    %eax,0x4978(%r15)
    7f01bb408ca2:	89 85 00 fe ff ff    	mov    %eax,-0x200(%rbp)
    7f01bb408ca8:	49 8b c7             	mov    %r15,%rax
    7f01bb408cab:	48 05 38 49 00 00    	add    $0x4938,%rax
    7f01bb408cb1:	49 8b cf             	mov    %r15,%rcx
    7f01bb408cb4:	48 81 c1 88 2a 00 00 	add    $0x2a88,%rcx
    7f01bb408cbb:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408cbe:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408cc1:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408cc5:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408cc9:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408ccd:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408cd1:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408cd5:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408cd9:	49 8b c7             	mov    %r15,%rax
    7f01bb408cdc:	48 05 f8 48 00 00    	add    $0x48f8,%rax
    7f01bb408ce2:	49 8b cf             	mov    %r15,%rcx
    7f01bb408ce5:	48 81 c1 48 2a 00 00 	add    $0x2a48,%rcx
    7f01bb408cec:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408cef:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408cf2:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408cf6:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408cfa:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408cfe:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408d02:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408d06:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408d0a:	45 85 e4             	test   %r12d,%r12d
    7f01bb408d0d:	0f 84 1a 00 00 00    	je     0x7f01bb408d2d
    7f01bb408d13:	c7 85 08 fe ff ff 01 	movl   $0x1,-0x1f8(%rbp)
    7f01bb408d1a:	00 00 00 
    7f01bb408d1d:	41 c7 87 f0 48 00 00 	movl   $0x1,0x48f0(%r15)
    7f01bb408d24:	01 00 00 00 
    7f01bb408d28:	e9 13 00 00 00       	jmpq   0x7f01bb408d40
    7f01bb408d2d:	8b 85 88 ed ff ff    	mov    -0x1278(%rbp),%eax
    7f01bb408d33:	41 89 87 f0 48 00 00 	mov    %eax,0x48f0(%r15)
    7f01bb408d3a:	89 85 08 fe ff ff    	mov    %eax,-0x1f8(%rbp)
    7f01bb408d40:	49 8b c7             	mov    %r15,%rax
    7f01bb408d43:	48 05 b0 48 00 00    	add    $0x48b0,%rax
    7f01bb408d49:	49 8b cf             	mov    %r15,%rcx
    7f01bb408d4c:	48 81 c1 c8 29 00 00 	add    $0x29c8,%rcx
    7f01bb408d53:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408d56:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408d59:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408d5d:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408d61:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408d65:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408d69:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408d6d:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408d71:	45 85 e4             	test   %r12d,%r12d
    7f01bb408d74:	0f 84 1a 00 00 00    	je     0x7f01bb408d94
    7f01bb408d7a:	c7 85 10 fe ff ff 00 	movl   $0x0,-0x1f0(%rbp)
    7f01bb408d81:	00 00 00 
    7f01bb408d84:	41 c7 87 a8 48 00 00 	movl   $0x0,0x48a8(%r15)
    7f01bb408d8b:	00 00 00 00 
    7f01bb408d8f:	e9 13 00 00 00       	jmpq   0x7f01bb408da7
    7f01bb408d94:	8b 85 d0 ed ff ff    	mov    -0x1230(%rbp),%eax
    7f01bb408d9a:	41 89 87 a8 48 00 00 	mov    %eax,0x48a8(%r15)
    7f01bb408da1:	89 85 10 fe ff ff    	mov    %eax,-0x1f0(%rbp)
    7f01bb408da7:	45 85 e4             	test   %r12d,%r12d
    7f01bb408daa:	0f 84 1a 00 00 00    	je     0x7f01bb408dca
    7f01bb408db0:	c7 85 18 fe ff ff 01 	movl   $0x1,-0x1e8(%rbp)
    7f01bb408db7:	00 00 00 
    7f01bb408dba:	41 c7 87 a0 48 00 00 	movl   $0x1,0x48a0(%r15)
    7f01bb408dc1:	01 00 00 00 
    7f01bb408dc5:	e9 13 00 00 00       	jmpq   0x7f01bb408ddd
    7f01bb408dca:	8b 85 d8 ed ff ff    	mov    -0x1228(%rbp),%eax
    7f01bb408dd0:	41 89 87 a0 48 00 00 	mov    %eax,0x48a0(%r15)
    7f01bb408dd7:	89 85 18 fe ff ff    	mov    %eax,-0x1e8(%rbp)
    7f01bb408ddd:	45 85 e4             	test   %r12d,%r12d
    7f01bb408de0:	0f 84 1a 00 00 00    	je     0x7f01bb408e00
    7f01bb408de6:	c7 85 20 fe ff ff 00 	movl   $0x0,-0x1e0(%rbp)
    7f01bb408ded:	00 00 00 
    7f01bb408df0:	41 c7 87 98 48 00 00 	movl   $0x0,0x4898(%r15)
    7f01bb408df7:	00 00 00 00 
    7f01bb408dfb:	e9 13 00 00 00       	jmpq   0x7f01bb408e13
    7f01bb408e00:	8b 85 e8 ed ff ff    	mov    -0x1218(%rbp),%eax
    7f01bb408e06:	41 89 87 98 48 00 00 	mov    %eax,0x4898(%r15)
    7f01bb408e0d:	89 85 20 fe ff ff    	mov    %eax,-0x1e0(%rbp)
    7f01bb408e13:	8b 85 40 ee ff ff    	mov    -0x11c0(%rbp),%eax
    7f01bb408e19:	85 c0                	test   %eax,%eax
    7f01bb408e1b:	0f 84 68 00 00 00    	je     0x7f01bb408e89
    7f01bb408e21:	8b 8d 28 fe ff ff    	mov    -0x1d8(%rbp),%ecx
    7f01bb408e27:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb408e2a:	0f 93 c0             	setae  %al
    7f01bb408e2d:	0f b6 c0             	movzbl %al,%eax
    7f01bb408e30:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb408e33:	0f 92 c1             	setb   %cl
    7f01bb408e36:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb408e39:	23 c1                	and    %ecx,%eax
    7f01bb408e3b:	85 c0                	test   %eax,%eax
    7f01bb408e3d:	0f 85 0a 00 00 00    	jne    0x7f01bb408e4d
    7f01bb408e43:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb408e48:	e9 d1 10 00 00       	jmpq   0x7f01bb409f1e
    7f01bb408e4d:	49 8b c7             	mov    %r15,%rax
    7f01bb408e50:	48 05 c8 21 00 00    	add    $0x21c8,%rax
    7f01bb408e56:	8b 8d 28 fe ff ff    	mov    -0x1d8(%rbp),%ecx
    7f01bb408e5c:	c1 e1 06             	shl    $0x6,%ecx
    7f01bb408e5f:	8b c9                	mov    %ecx,%ecx
    7f01bb408e61:	48 03 c1             	add    %rcx,%rax
    7f01bb408e64:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb408e6b:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408e6e:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408e71:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408e75:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408e79:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408e7d:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408e81:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408e85:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408e89:	45 85 e4             	test   %r12d,%r12d
    7f01bb408e8c:	0f 84 1a 00 00 00    	je     0x7f01bb408eac
    7f01bb408e92:	c7 85 28 fe ff ff 00 	movl   $0x0,-0x1d8(%rbp)
    7f01bb408e99:	00 00 00 
    7f01bb408e9c:	41 c7 87 90 48 00 00 	movl   $0x0,0x4890(%r15)
    7f01bb408ea3:	00 00 00 00 
    7f01bb408ea7:	e9 13 00 00 00       	jmpq   0x7f01bb408ebf
    7f01bb408eac:	8b 85 f0 ed ff ff    	mov    -0x1210(%rbp),%eax
    7f01bb408eb2:	41 89 87 90 48 00 00 	mov    %eax,0x4890(%r15)
    7f01bb408eb9:	89 85 28 fe ff ff    	mov    %eax,-0x1d8(%rbp)
    7f01bb408ebf:	45 85 e4             	test   %r12d,%r12d
    7f01bb408ec2:	0f 84 1a 00 00 00    	je     0x7f01bb408ee2
    7f01bb408ec8:	c7 85 30 fe ff ff 00 	movl   $0x0,-0x1d0(%rbp)
    7f01bb408ecf:	00 00 00 
    7f01bb408ed2:	41 c7 87 88 48 00 00 	movl   $0x0,0x4888(%r15)
    7f01bb408ed9:	00 00 00 00 
    7f01bb408edd:	e9 13 00 00 00       	jmpq   0x7f01bb408ef5
    7f01bb408ee2:	8b 85 00 ee ff ff    	mov    -0x1200(%rbp),%eax
    7f01bb408ee8:	41 89 87 88 48 00 00 	mov    %eax,0x4888(%r15)
    7f01bb408eef:	89 85 30 fe ff ff    	mov    %eax,-0x1d0(%rbp)
    7f01bb408ef5:	45 85 e4             	test   %r12d,%r12d
    7f01bb408ef8:	0f 84 1a 00 00 00    	je     0x7f01bb408f18
    7f01bb408efe:	c7 85 38 fe ff ff 01 	movl   $0x1,-0x1c8(%rbp)
    7f01bb408f05:	00 00 00 
    7f01bb408f08:	41 c7 87 80 48 00 00 	movl   $0x1,0x4880(%r15)
    7f01bb408f0f:	01 00 00 00 
    7f01bb408f13:	e9 13 00 00 00       	jmpq   0x7f01bb408f2b
    7f01bb408f18:	8b 85 08 ee ff ff    	mov    -0x11f8(%rbp),%eax
    7f01bb408f1e:	41 89 87 80 48 00 00 	mov    %eax,0x4880(%r15)
    7f01bb408f25:	89 85 38 fe ff ff    	mov    %eax,-0x1c8(%rbp)
    7f01bb408f2b:	45 85 e4             	test   %r12d,%r12d
    7f01bb408f2e:	0f 84 1a 00 00 00    	je     0x7f01bb408f4e
    7f01bb408f34:	c7 85 40 fe ff ff 00 	movl   $0x0,-0x1c0(%rbp)
    7f01bb408f3b:	00 00 00 
    7f01bb408f3e:	41 c7 87 78 48 00 00 	movl   $0x0,0x4878(%r15)
    7f01bb408f45:	00 00 00 00 
    7f01bb408f49:	e9 13 00 00 00       	jmpq   0x7f01bb408f61
    7f01bb408f4e:	8b 85 10 ee ff ff    	mov    -0x11f0(%rbp),%eax
    7f01bb408f54:	41 89 87 78 48 00 00 	mov    %eax,0x4878(%r15)
    7f01bb408f5b:	89 85 40 fe ff ff    	mov    %eax,-0x1c0(%rbp)
    7f01bb408f61:	49 8b c7             	mov    %r15,%rax
    7f01bb408f64:	48 05 38 48 00 00    	add    $0x4838,%rax
    7f01bb408f6a:	49 8b cf             	mov    %r15,%rcx
    7f01bb408f6d:	48 81 c1 88 21 00 00 	add    $0x2188,%rcx
    7f01bb408f74:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb408f77:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb408f7a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb408f7e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb408f82:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb408f86:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb408f8a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb408f8e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb408f92:	45 85 e4             	test   %r12d,%r12d
    7f01bb408f95:	0f 84 1a 00 00 00    	je     0x7f01bb408fb5
    7f01bb408f9b:	c7 85 48 fe ff ff 00 	movl   $0x0,-0x1b8(%rbp)
    7f01bb408fa2:	00 00 00 
    7f01bb408fa5:	41 c7 87 30 48 00 00 	movl   $0x0,0x4830(%r15)
    7f01bb408fac:	00 00 00 00 
    7f01bb408fb0:	e9 13 00 00 00       	jmpq   0x7f01bb408fc8
    7f01bb408fb5:	8b 85 58 ee ff ff    	mov    -0x11a8(%rbp),%eax
    7f01bb408fbb:	41 89 87 30 48 00 00 	mov    %eax,0x4830(%r15)
    7f01bb408fc2:	89 85 48 fe ff ff    	mov    %eax,-0x1b8(%rbp)
    7f01bb408fc8:	45 85 e4             	test   %r12d,%r12d
    7f01bb408fcb:	0f 84 1a 00 00 00    	je     0x7f01bb408feb
    7f01bb408fd1:	c7 85 50 fe ff ff 01 	movl   $0x1,-0x1b0(%rbp)
    7f01bb408fd8:	00 00 00 
    7f01bb408fdb:	41 c7 87 28 48 00 00 	movl   $0x1,0x4828(%r15)
    7f01bb408fe2:	01 00 00 00 
    7f01bb408fe6:	e9 13 00 00 00       	jmpq   0x7f01bb408ffe
    7f01bb408feb:	8b 85 60 ee ff ff    	mov    -0x11a0(%rbp),%eax
    7f01bb408ff1:	41 89 87 28 48 00 00 	mov    %eax,0x4828(%r15)
    7f01bb408ff8:	89 85 50 fe ff ff    	mov    %eax,-0x1b0(%rbp)
    7f01bb408ffe:	45 85 e4             	test   %r12d,%r12d
    7f01bb409001:	0f 84 1a 00 00 00    	je     0x7f01bb409021
    7f01bb409007:	c7 85 58 fe ff ff 00 	movl   $0x0,-0x1a8(%rbp)
    7f01bb40900e:	00 00 00 
    7f01bb409011:	41 c7 87 20 48 00 00 	movl   $0x0,0x4820(%r15)
    7f01bb409018:	00 00 00 00 
    7f01bb40901c:	e9 13 00 00 00       	jmpq   0x7f01bb409034
    7f01bb409021:	8b 85 70 ee ff ff    	mov    -0x1190(%rbp),%eax
    7f01bb409027:	41 89 87 20 48 00 00 	mov    %eax,0x4820(%r15)
    7f01bb40902e:	89 85 58 fe ff ff    	mov    %eax,-0x1a8(%rbp)
    7f01bb409034:	8b 85 c8 ee ff ff    	mov    -0x1138(%rbp),%eax
    7f01bb40903a:	85 c0                	test   %eax,%eax
    7f01bb40903c:	0f 84 68 00 00 00    	je     0x7f01bb4090aa
    7f01bb409042:	8b 8d 60 fe ff ff    	mov    -0x1a0(%rbp),%ecx
    7f01bb409048:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb40904b:	0f 93 c0             	setae  %al
    7f01bb40904e:	0f b6 c0             	movzbl %al,%eax
    7f01bb409051:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb409054:	0f 92 c1             	setb   %cl
    7f01bb409057:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb40905a:	23 c1                	and    %ecx,%eax
    7f01bb40905c:	85 c0                	test   %eax,%eax
    7f01bb40905e:	0f 85 0a 00 00 00    	jne    0x7f01bb40906e
    7f01bb409064:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb409069:	e9 b0 0e 00 00       	jmpq   0x7f01bb409f1e
    7f01bb40906e:	49 8b c7             	mov    %r15,%rax
    7f01bb409071:	48 05 88 19 00 00    	add    $0x1988,%rax
    7f01bb409077:	8b 8d 60 fe ff ff    	mov    -0x1a0(%rbp),%ecx
    7f01bb40907d:	c1 e1 06             	shl    $0x6,%ecx
    7f01bb409080:	8b c9                	mov    %ecx,%ecx
    7f01bb409082:	48 03 c1             	add    %rcx,%rax
    7f01bb409085:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb40908c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40908f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409092:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409096:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40909a:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40909e:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4090a2:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4090a6:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4090aa:	45 85 e4             	test   %r12d,%r12d
    7f01bb4090ad:	0f 84 1a 00 00 00    	je     0x7f01bb4090cd
    7f01bb4090b3:	c7 85 60 fe ff ff 00 	movl   $0x0,-0x1a0(%rbp)
    7f01bb4090ba:	00 00 00 
    7f01bb4090bd:	41 c7 87 18 48 00 00 	movl   $0x0,0x4818(%r15)
    7f01bb4090c4:	00 00 00 00 
    7f01bb4090c8:	e9 13 00 00 00       	jmpq   0x7f01bb4090e0
    7f01bb4090cd:	8b 85 78 ee ff ff    	mov    -0x1188(%rbp),%eax
    7f01bb4090d3:	41 89 87 18 48 00 00 	mov    %eax,0x4818(%r15)
    7f01bb4090da:	89 85 60 fe ff ff    	mov    %eax,-0x1a0(%rbp)
    7f01bb4090e0:	45 85 e4             	test   %r12d,%r12d
    7f01bb4090e3:	0f 84 1a 00 00 00    	je     0x7f01bb409103
    7f01bb4090e9:	c7 85 68 fe ff ff 00 	movl   $0x0,-0x198(%rbp)
    7f01bb4090f0:	00 00 00 
    7f01bb4090f3:	41 c7 87 10 48 00 00 	movl   $0x0,0x4810(%r15)
    7f01bb4090fa:	00 00 00 00 
    7f01bb4090fe:	e9 13 00 00 00       	jmpq   0x7f01bb409116
    7f01bb409103:	8b 85 88 ee ff ff    	mov    -0x1178(%rbp),%eax
    7f01bb409109:	41 89 87 10 48 00 00 	mov    %eax,0x4810(%r15)
    7f01bb409110:	89 85 68 fe ff ff    	mov    %eax,-0x198(%rbp)
    7f01bb409116:	45 85 e4             	test   %r12d,%r12d
    7f01bb409119:	0f 84 1a 00 00 00    	je     0x7f01bb409139
    7f01bb40911f:	c7 85 70 fe ff ff 01 	movl   $0x1,-0x190(%rbp)
    7f01bb409126:	00 00 00 
    7f01bb409129:	41 c7 87 08 48 00 00 	movl   $0x1,0x4808(%r15)
    7f01bb409130:	01 00 00 00 
    7f01bb409134:	e9 13 00 00 00       	jmpq   0x7f01bb40914c
    7f01bb409139:	8b 85 90 ee ff ff    	mov    -0x1170(%rbp),%eax
    7f01bb40913f:	41 89 87 08 48 00 00 	mov    %eax,0x4808(%r15)
    7f01bb409146:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
    7f01bb40914c:	45 85 e4             	test   %r12d,%r12d
    7f01bb40914f:	0f 84 1a 00 00 00    	je     0x7f01bb40916f
    7f01bb409155:	c7 85 78 fe ff ff 00 	movl   $0x0,-0x188(%rbp)
    7f01bb40915c:	00 00 00 
    7f01bb40915f:	41 c7 87 00 48 00 00 	movl   $0x0,0x4800(%r15)
    7f01bb409166:	00 00 00 00 
    7f01bb40916a:	e9 13 00 00 00       	jmpq   0x7f01bb409182
    7f01bb40916f:	8b 85 98 ee ff ff    	mov    -0x1168(%rbp),%eax
    7f01bb409175:	41 89 87 00 48 00 00 	mov    %eax,0x4800(%r15)
    7f01bb40917c:	89 85 78 fe ff ff    	mov    %eax,-0x188(%rbp)
    7f01bb409182:	49 8b c7             	mov    %r15,%rax
    7f01bb409185:	48 05 c0 47 00 00    	add    $0x47c0,%rax
    7f01bb40918b:	49 8b cf             	mov    %r15,%rcx
    7f01bb40918e:	48 81 c1 48 19 00 00 	add    $0x1948,%rcx
    7f01bb409195:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409198:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40919b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40919f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4091a3:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4091a7:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4091ab:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4091af:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4091b3:	49 8b c7             	mov    %r15,%rax
    7f01bb4091b6:	48 05 80 47 00 00    	add    $0x4780,%rax
    7f01bb4091bc:	49 8b cf             	mov    %r15,%rcx
    7f01bb4091bf:	48 81 c1 08 19 00 00 	add    $0x1908,%rcx
    7f01bb4091c6:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4091c9:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4091cc:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4091d0:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4091d4:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4091d8:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4091dc:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4091e0:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4091e4:	45 85 e4             	test   %r12d,%r12d
    7f01bb4091e7:	0f 84 1a 00 00 00    	je     0x7f01bb409207
    7f01bb4091ed:	c7 85 80 fe ff ff 01 	movl   $0x1,-0x180(%rbp)
    7f01bb4091f4:	00 00 00 
    7f01bb4091f7:	41 c7 87 78 47 00 00 	movl   $0x1,0x4778(%r15)
    7f01bb4091fe:	01 00 00 00 
    7f01bb409202:	e9 13 00 00 00       	jmpq   0x7f01bb40921a
    7f01bb409207:	8b 85 f0 ee ff ff    	mov    -0x1110(%rbp),%eax
    7f01bb40920d:	41 89 87 78 47 00 00 	mov    %eax,0x4778(%r15)
    7f01bb409214:	89 85 80 fe ff ff    	mov    %eax,-0x180(%rbp)
    7f01bb40921a:	49 8b c7             	mov    %r15,%rax
    7f01bb40921d:	48 05 38 47 00 00    	add    $0x4738,%rax
    7f01bb409223:	49 8b cf             	mov    %r15,%rcx
    7f01bb409226:	48 81 c1 88 18 00 00 	add    $0x1888,%rcx
    7f01bb40922d:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409230:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409233:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409237:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40923b:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40923f:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409243:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409247:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40924b:	49 8b c7             	mov    %r15,%rax
    7f01bb40924e:	48 05 f8 46 00 00    	add    $0x46f8,%rax
    7f01bb409254:	49 8b cf             	mov    %r15,%rcx
    7f01bb409257:	48 81 c1 48 18 00 00 	add    $0x1848,%rcx
    7f01bb40925e:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409261:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409264:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409268:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40926c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409270:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409274:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409278:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40927c:	45 85 e4             	test   %r12d,%r12d
    7f01bb40927f:	0f 84 1a 00 00 00    	je     0x7f01bb40929f
    7f01bb409285:	c7 85 88 fe ff ff 01 	movl   $0x1,-0x178(%rbp)
    7f01bb40928c:	00 00 00 
    7f01bb40928f:	41 c7 87 f0 46 00 00 	movl   $0x1,0x46f0(%r15)
    7f01bb409296:	01 00 00 00 
    7f01bb40929a:	e9 13 00 00 00       	jmpq   0x7f01bb4092b2
    7f01bb40929f:	8b 85 48 ef ff ff    	mov    -0x10b8(%rbp),%eax
    7f01bb4092a5:	41 89 87 f0 46 00 00 	mov    %eax,0x46f0(%r15)
    7f01bb4092ac:	89 85 88 fe ff ff    	mov    %eax,-0x178(%rbp)
    7f01bb4092b2:	45 85 e4             	test   %r12d,%r12d
    7f01bb4092b5:	0f 84 1a 00 00 00    	je     0x7f01bb4092d5
    7f01bb4092bb:	c7 85 90 fe ff ff 00 	movl   $0x0,-0x170(%rbp)
    7f01bb4092c2:	00 00 00 
    7f01bb4092c5:	41 c7 87 e8 46 00 00 	movl   $0x0,0x46e8(%r15)
    7f01bb4092cc:	00 00 00 00 
    7f01bb4092d0:	e9 13 00 00 00       	jmpq   0x7f01bb4092e8
    7f01bb4092d5:	8b 85 98 ef ff ff    	mov    -0x1068(%rbp),%eax
    7f01bb4092db:	41 89 87 e8 46 00 00 	mov    %eax,0x46e8(%r15)
    7f01bb4092e2:	89 85 90 fe ff ff    	mov    %eax,-0x170(%rbp)
    7f01bb4092e8:	49 8b c7             	mov    %r15,%rax
    7f01bb4092eb:	48 05 d8 46 00 00    	add    $0x46d8,%rax
    7f01bb4092f1:	49 8b cf             	mov    %r15,%rcx
    7f01bb4092f4:	48 81 c1 f8 17 00 00 	add    $0x17f8,%rcx
    7f01bb4092fb:	48 8b 11             	mov    (%rcx),%rdx
    7f01bb4092fe:	48 89 10             	mov    %rdx,(%rax)
    7f01bb409301:	66 8b 51 08          	mov    0x8(%rcx),%dx
    7f01bb409305:	66 89 50 08          	mov    %dx,0x8(%rax)
    7f01bb409309:	8a 51 0a             	mov    0xa(%rcx),%dl
    7f01bb40930c:	88 50 0a             	mov    %dl,0xa(%rax)
    7f01bb40930f:	45 85 e4             	test   %r12d,%r12d
    7f01bb409312:	0f 84 1a 00 00 00    	je     0x7f01bb409332
    7f01bb409318:	c7 85 98 fe ff ff 00 	movl   $0x0,-0x168(%rbp)
    7f01bb40931f:	00 00 00 
    7f01bb409322:	41 c7 87 d0 46 00 00 	movl   $0x0,0x46d0(%r15)
    7f01bb409329:	00 00 00 00 
    7f01bb40932d:	e9 13 00 00 00       	jmpq   0x7f01bb409345
    7f01bb409332:	8b 85 18 f0 ff ff    	mov    -0xfe8(%rbp),%eax
    7f01bb409338:	41 89 87 d0 46 00 00 	mov    %eax,0x46d0(%r15)
    7f01bb40933f:	89 85 98 fe ff ff    	mov    %eax,-0x168(%rbp)
    7f01bb409345:	45 85 e4             	test   %r12d,%r12d
    7f01bb409348:	0f 84 1a 00 00 00    	je     0x7f01bb409368
    7f01bb40934e:	c7 85 a0 fe ff ff 00 	movl   $0x0,-0x160(%rbp)
    7f01bb409355:	00 00 00 
    7f01bb409358:	41 c7 87 c8 46 00 00 	movl   $0x0,0x46c8(%r15)
    7f01bb40935f:	00 00 00 00 
    7f01bb409363:	e9 13 00 00 00       	jmpq   0x7f01bb40937b
    7f01bb409368:	8b 85 20 f0 ff ff    	mov    -0xfe0(%rbp),%eax
    7f01bb40936e:	41 89 87 c8 46 00 00 	mov    %eax,0x46c8(%r15)
    7f01bb409375:	89 85 a0 fe ff ff    	mov    %eax,-0x160(%rbp)
    7f01bb40937b:	45 85 e4             	test   %r12d,%r12d
    7f01bb40937e:	0f 84 1a 00 00 00    	je     0x7f01bb40939e
    7f01bb409384:	c7 85 a8 fe ff ff 00 	movl   $0x0,-0x158(%rbp)
    7f01bb40938b:	00 00 00 
    7f01bb40938e:	41 c7 87 c0 46 00 00 	movl   $0x0,0x46c0(%r15)
    7f01bb409395:	00 00 00 00 
    7f01bb409399:	e9 13 00 00 00       	jmpq   0x7f01bb4093b1
    7f01bb40939e:	8b 85 28 f0 ff ff    	mov    -0xfd8(%rbp),%eax
    7f01bb4093a4:	41 89 87 c0 46 00 00 	mov    %eax,0x46c0(%r15)
    7f01bb4093ab:	89 85 a8 fe ff ff    	mov    %eax,-0x158(%rbp)
    7f01bb4093b1:	45 85 e4             	test   %r12d,%r12d
    7f01bb4093b4:	0f 84 1a 00 00 00    	je     0x7f01bb4093d4
    7f01bb4093ba:	c7 85 b0 fe ff ff 00 	movl   $0x0,-0x150(%rbp)
    7f01bb4093c1:	00 00 00 
    7f01bb4093c4:	41 c7 87 b8 46 00 00 	movl   $0x0,0x46b8(%r15)
    7f01bb4093cb:	00 00 00 00 
    7f01bb4093cf:	e9 13 00 00 00       	jmpq   0x7f01bb4093e7
    7f01bb4093d4:	8b 85 48 f0 ff ff    	mov    -0xfb8(%rbp),%eax
    7f01bb4093da:	41 89 87 b8 46 00 00 	mov    %eax,0x46b8(%r15)
    7f01bb4093e1:	89 85 b0 fe ff ff    	mov    %eax,-0x150(%rbp)
    7f01bb4093e7:	45 85 e4             	test   %r12d,%r12d
    7f01bb4093ea:	0f 84 1a 00 00 00    	je     0x7f01bb40940a
    7f01bb4093f0:	c7 85 b8 fe ff ff 00 	movl   $0x0,-0x148(%rbp)
    7f01bb4093f7:	00 00 00 
    7f01bb4093fa:	41 c7 87 b0 46 00 00 	movl   $0x0,0x46b0(%r15)
    7f01bb409401:	00 00 00 00 
    7f01bb409405:	e9 13 00 00 00       	jmpq   0x7f01bb40941d
    7f01bb40940a:	8b 85 60 f0 ff ff    	mov    -0xfa0(%rbp),%eax
    7f01bb409410:	41 89 87 b0 46 00 00 	mov    %eax,0x46b0(%r15)
    7f01bb409417:	89 85 b8 fe ff ff    	mov    %eax,-0x148(%rbp)
    7f01bb40941d:	45 85 e4             	test   %r12d,%r12d
    7f01bb409420:	0f 84 16 00 00 00    	je     0x7f01bb40943c
    7f01bb409426:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    7f01bb40942c:	41 c7 87 a8 46 00 00 	movl   $0x1,0x46a8(%r15)
    7f01bb409433:	01 00 00 00 
    7f01bb409437:	e9 10 00 00 00       	jmpq   0x7f01bb40944c
    7f01bb40943c:	8b 85 68 f0 ff ff    	mov    -0xf98(%rbp),%eax
    7f01bb409442:	41 89 87 a8 46 00 00 	mov    %eax,0x46a8(%r15)
    7f01bb409449:	4c 8b e8             	mov    %rax,%r13
    7f01bb40944c:	45 85 e4             	test   %r12d,%r12d
    7f01bb40944f:	0f 84 34 00 00 00    	je     0x7f01bb409489
    7f01bb409455:	49 8b c7             	mov    %r15,%rax
    7f01bb409458:	48 05 78 46 00 00    	add    $0x4678,%rax
    7f01bb40945e:	49 8b cf             	mov    %r15,%rcx
    7f01bb409461:	48 81 c1 88 51 00 00 	add    $0x5188,%rcx
    7f01bb409468:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40946b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40946e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409472:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409476:	48 8b 51 20          	mov    0x20(%rcx),%rdx
    7f01bb40947a:	48 89 50 20          	mov    %rdx,0x20(%rax)
    7f01bb40947e:	8b 51 28             	mov    0x28(%rcx),%edx
    7f01bb409481:	89 50 28             	mov    %edx,0x28(%rax)
    7f01bb409484:	e9 2f 00 00 00       	jmpq   0x7f01bb4094b8
    7f01bb409489:	49 8b c7             	mov    %r15,%rax
    7f01bb40948c:	48 05 78 46 00 00    	add    $0x4678,%rax
    7f01bb409492:	49 8b cf             	mov    %r15,%rcx
    7f01bb409495:	48 81 c1 48 16 00 00 	add    $0x1648,%rcx
    7f01bb40949c:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40949f:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4094a2:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4094a6:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4094aa:	48 8b 51 20          	mov    0x20(%rcx),%rdx
    7f01bb4094ae:	48 89 50 20          	mov    %rdx,0x20(%rax)
    7f01bb4094b2:	8b 51 28             	mov    0x28(%rcx),%edx
    7f01bb4094b5:	89 50 28             	mov    %edx,0x28(%rax)
    7f01bb4094b8:	48 8b 85 30 f3 ff ff 	mov    -0xcd0(%rbp),%rax
    7f01bb4094bf:	49 89 87 70 46 00 00 	mov    %rax,0x4670(%r15)
    7f01bb4094c6:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
    7f01bb4094cd:	8b 85 38 f3 ff ff    	mov    -0xcc8(%rbp),%eax
    7f01bb4094d3:	41 89 87 68 46 00 00 	mov    %eax,0x4668(%r15)
    7f01bb4094da:	89 85 c8 fe ff ff    	mov    %eax,-0x138(%rbp)
    7f01bb4094e0:	49 8b c7             	mov    %r15,%rax
    7f01bb4094e3:	48 05 28 46 00 00    	add    $0x4628,%rax
    7f01bb4094e9:	49 8b cf             	mov    %r15,%rcx
    7f01bb4094ec:	48 81 c1 08 16 00 00 	add    $0x1608,%rcx
    7f01bb4094f3:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4094f6:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4094f9:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4094fd:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409501:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409505:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409509:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40950d:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409511:	49 8b c7             	mov    %r15,%rax
    7f01bb409514:	48 05 e8 45 00 00    	add    $0x45e8,%rax
    7f01bb40951a:	49 8b cf             	mov    %r15,%rcx
    7f01bb40951d:	48 81 c1 c8 15 00 00 	add    $0x15c8,%rcx
    7f01bb409524:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409527:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40952a:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40952e:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409532:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409536:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40953a:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40953e:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409542:	49 8b c7             	mov    %r15,%rax
    7f01bb409545:	48 05 a8 45 00 00    	add    $0x45a8,%rax
    7f01bb40954b:	49 8b cf             	mov    %r15,%rcx
    7f01bb40954e:	48 81 c1 88 15 00 00 	add    $0x1588,%rcx
    7f01bb409555:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409558:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40955b:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40955f:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409563:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409567:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40956b:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40956f:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409573:	49 8b c7             	mov    %r15,%rax
    7f01bb409576:	48 05 68 45 00 00    	add    $0x4568,%rax
    7f01bb40957c:	49 8b cf             	mov    %r15,%rcx
    7f01bb40957f:	48 81 c1 48 15 00 00 	add    $0x1548,%rcx
    7f01bb409586:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409589:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40958c:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409590:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409594:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409598:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40959c:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4095a0:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4095a4:	45 85 e4             	test   %r12d,%r12d
    7f01bb4095a7:	0f 84 1a 00 00 00    	je     0x7f01bb4095c7
    7f01bb4095ad:	c7 85 d0 fe ff ff 00 	movl   $0x0,-0x130(%rbp)
    7f01bb4095b4:	00 00 00 
    7f01bb4095b7:	41 c7 87 60 45 00 00 	movl   $0x0,0x4560(%r15)
    7f01bb4095be:	00 00 00 00 
    7f01bb4095c2:	e9 13 00 00 00       	jmpq   0x7f01bb4095da
    7f01bb4095c7:	8b 85 60 f3 ff ff    	mov    -0xca0(%rbp),%eax
    7f01bb4095cd:	41 89 87 60 45 00 00 	mov    %eax,0x4560(%r15)
    7f01bb4095d4:	89 85 d0 fe ff ff    	mov    %eax,-0x130(%rbp)
    7f01bb4095da:	45 85 e4             	test   %r12d,%r12d
    7f01bb4095dd:	0f 84 1a 00 00 00    	je     0x7f01bb4095fd
    7f01bb4095e3:	c7 85 d8 fe ff ff 00 	movl   $0x0,-0x128(%rbp)
    7f01bb4095ea:	00 00 00 
    7f01bb4095ed:	41 c7 87 58 45 00 00 	movl   $0x0,0x4558(%r15)
    7f01bb4095f4:	00 00 00 00 
    7f01bb4095f8:	e9 13 00 00 00       	jmpq   0x7f01bb409610
    7f01bb4095fd:	8b 85 80 f3 ff ff    	mov    -0xc80(%rbp),%eax
    7f01bb409603:	41 89 87 58 45 00 00 	mov    %eax,0x4558(%r15)
    7f01bb40960a:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%rbp)
    7f01bb409610:	45 85 e4             	test   %r12d,%r12d
    7f01bb409613:	0f 84 1a 00 00 00    	je     0x7f01bb409633
    7f01bb409619:	c7 85 e0 fe ff ff 00 	movl   $0x0,-0x120(%rbp)
    7f01bb409620:	00 00 00 
    7f01bb409623:	41 c7 87 50 45 00 00 	movl   $0x0,0x4550(%r15)
    7f01bb40962a:	00 00 00 00 
    7f01bb40962e:	e9 13 00 00 00       	jmpq   0x7f01bb409646
    7f01bb409633:	8b 85 a0 f3 ff ff    	mov    -0xc60(%rbp),%eax
    7f01bb409639:	41 89 87 50 45 00 00 	mov    %eax,0x4550(%r15)
    7f01bb409640:	89 85 e0 fe ff ff    	mov    %eax,-0x120(%rbp)
    7f01bb409646:	45 85 e4             	test   %r12d,%r12d
    7f01bb409649:	0f 84 1a 00 00 00    	je     0x7f01bb409669
    7f01bb40964f:	c7 85 e8 fe ff ff 00 	movl   $0x0,-0x118(%rbp)
    7f01bb409656:	00 00 00 
    7f01bb409659:	41 c7 87 48 45 00 00 	movl   $0x0,0x4548(%r15)
    7f01bb409660:	00 00 00 00 
    7f01bb409664:	e9 13 00 00 00       	jmpq   0x7f01bb40967c
    7f01bb409669:	8b 85 c0 f3 ff ff    	mov    -0xc40(%rbp),%eax
    7f01bb40966f:	41 89 87 48 45 00 00 	mov    %eax,0x4548(%r15)
    7f01bb409676:	89 85 e8 fe ff ff    	mov    %eax,-0x118(%rbp)
    7f01bb40967c:	45 85 e4             	test   %r12d,%r12d
    7f01bb40967f:	0f 84 1a 00 00 00    	je     0x7f01bb40969f
    7f01bb409685:	c7 85 f0 fe ff ff 00 	movl   $0x0,-0x110(%rbp)
    7f01bb40968c:	00 00 00 
    7f01bb40968f:	41 c7 87 40 45 00 00 	movl   $0x0,0x4540(%r15)
    7f01bb409696:	00 00 00 00 
    7f01bb40969a:	e9 13 00 00 00       	jmpq   0x7f01bb4096b2
    7f01bb40969f:	8b 85 e8 f3 ff ff    	mov    -0xc18(%rbp),%eax
    7f01bb4096a5:	41 89 87 40 45 00 00 	mov    %eax,0x4540(%r15)
    7f01bb4096ac:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%rbp)
    7f01bb4096b2:	45 85 e4             	test   %r12d,%r12d
    7f01bb4096b5:	0f 84 1a 00 00 00    	je     0x7f01bb4096d5
    7f01bb4096bb:	c7 85 f8 fe ff ff 00 	movl   $0x0,-0x108(%rbp)
    7f01bb4096c2:	00 00 00 
    7f01bb4096c5:	41 c7 87 38 45 00 00 	movl   $0x0,0x4538(%r15)
    7f01bb4096cc:	00 00 00 00 
    7f01bb4096d0:	e9 13 00 00 00       	jmpq   0x7f01bb4096e8
    7f01bb4096d5:	8b 85 08 f4 ff ff    	mov    -0xbf8(%rbp),%eax
    7f01bb4096db:	41 89 87 38 45 00 00 	mov    %eax,0x4538(%r15)
    7f01bb4096e2:	89 85 f8 fe ff ff    	mov    %eax,-0x108(%rbp)
    7f01bb4096e8:	8b 85 38 f4 ff ff    	mov    -0xbc8(%rbp),%eax
    7f01bb4096ee:	41 89 87 30 45 00 00 	mov    %eax,0x4530(%r15)
    7f01bb4096f5:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
    7f01bb4096fb:	8b 85 98 f4 ff ff    	mov    -0xb68(%rbp),%eax
    7f01bb409701:	41 89 87 28 45 00 00 	mov    %eax,0x4528(%r15)
    7f01bb409708:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%rbp)
    7f01bb40970e:	8b 85 a8 f4 ff ff    	mov    -0xb58(%rbp),%eax
    7f01bb409714:	41 89 87 20 45 00 00 	mov    %eax,0x4520(%r15)
    7f01bb40971b:	89 85 10 ff ff ff    	mov    %eax,-0xf0(%rbp)
    7f01bb409721:	8b 85 b8 f4 ff ff    	mov    -0xb48(%rbp),%eax
    7f01bb409727:	41 89 87 18 45 00 00 	mov    %eax,0x4518(%r15)
    7f01bb40972e:	89 85 18 ff ff ff    	mov    %eax,-0xe8(%rbp)
    7f01bb409734:	8b 85 c8 f4 ff ff    	mov    -0xb38(%rbp),%eax
    7f01bb40973a:	41 89 87 10 45 00 00 	mov    %eax,0x4510(%r15)
    7f01bb409741:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
    7f01bb409747:	45 85 e4             	test   %r12d,%r12d
    7f01bb40974a:	0f 84 1a 00 00 00    	je     0x7f01bb40976a
    7f01bb409750:	c7 85 28 ff ff ff ff 	movl   $0xfffff,-0xd8(%rbp)
    7f01bb409757:	ff 0f 00 
    7f01bb40975a:	41 c7 87 08 45 00 00 	movl   $0xfffff,0x4508(%r15)
    7f01bb409761:	ff ff 0f 00 
    7f01bb409765:	e9 13 00 00 00       	jmpq   0x7f01bb40977d
    7f01bb40976a:	8b 85 20 f6 ff ff    	mov    -0x9e0(%rbp),%eax
    7f01bb409770:	41 89 87 08 45 00 00 	mov    %eax,0x4508(%r15)
    7f01bb409777:	89 85 28 ff ff ff    	mov    %eax,-0xd8(%rbp)
    7f01bb40977d:	45 85 e4             	test   %r12d,%r12d
    7f01bb409780:	0f 84 1a 00 00 00    	je     0x7f01bb4097a0
    7f01bb409786:	c7 85 30 ff ff ff ff 	movl   $0xfffff,-0xd0(%rbp)
    7f01bb40978d:	ff 0f 00 
    7f01bb409790:	41 c7 87 00 45 00 00 	movl   $0xfffff,0x4500(%r15)
    7f01bb409797:	ff ff 0f 00 
    7f01bb40979b:	e9 13 00 00 00       	jmpq   0x7f01bb4097b3
    7f01bb4097a0:	8b 85 40 f6 ff ff    	mov    -0x9c0(%rbp),%eax
    7f01bb4097a6:	41 89 87 00 45 00 00 	mov    %eax,0x4500(%r15)
    7f01bb4097ad:	89 85 30 ff ff ff    	mov    %eax,-0xd0(%rbp)
    7f01bb4097b3:	8b 85 68 f6 ff ff    	mov    -0x998(%rbp),%eax
    7f01bb4097b9:	41 89 87 f8 44 00 00 	mov    %eax,0x44f8(%r15)
    7f01bb4097c0:	89 85 38 ff ff ff    	mov    %eax,-0xc8(%rbp)
    7f01bb4097c6:	8b 85 78 f6 ff ff    	mov    -0x988(%rbp),%eax
    7f01bb4097cc:	41 89 87 f0 44 00 00 	mov    %eax,0x44f0(%r15)
    7f01bb4097d3:	89 85 40 ff ff ff    	mov    %eax,-0xc0(%rbp)
    7f01bb4097d9:	8b 85 b0 f6 ff ff    	mov    -0x950(%rbp),%eax
    7f01bb4097df:	41 89 87 e8 44 00 00 	mov    %eax,0x44e8(%r15)
    7f01bb4097e6:	89 85 48 ff ff ff    	mov    %eax,-0xb8(%rbp)
    7f01bb4097ec:	8b 85 68 f7 ff ff    	mov    -0x898(%rbp),%eax
    7f01bb4097f2:	41 89 87 e0 44 00 00 	mov    %eax,0x44e0(%r15)
    7f01bb4097f9:	89 85 50 ff ff ff    	mov    %eax,-0xb0(%rbp)
    7f01bb4097ff:	8b 85 c0 f7 ff ff    	mov    -0x840(%rbp),%eax
    7f01bb409805:	41 89 87 d8 44 00 00 	mov    %eax,0x44d8(%r15)
    7f01bb40980c:	89 85 58 ff ff ff    	mov    %eax,-0xa8(%rbp)
    7f01bb409812:	8b 85 d8 f7 ff ff    	mov    -0x828(%rbp),%eax
    7f01bb409818:	41 89 87 d0 44 00 00 	mov    %eax,0x44d0(%r15)
    7f01bb40981f:	89 85 60 ff ff ff    	mov    %eax,-0xa0(%rbp)
    7f01bb409825:	49 8b c7             	mov    %r15,%rax
    7f01bb409828:	48 05 90 44 00 00    	add    $0x4490,%rax
    7f01bb40982e:	49 8b cf             	mov    %r15,%rcx
    7f01bb409831:	48 81 c1 48 13 00 00 	add    $0x1348,%rcx
    7f01bb409838:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40983b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40983e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409842:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409846:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40984a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40984e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409852:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409856:	49 8b c7             	mov    %r15,%rax
    7f01bb409859:	48 05 50 44 00 00    	add    $0x4450,%rax
    7f01bb40985f:	49 8b cf             	mov    %r15,%rcx
    7f01bb409862:	48 81 c1 08 13 00 00 	add    $0x1308,%rcx
    7f01bb409869:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40986c:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40986f:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409873:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409877:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40987b:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40987f:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409883:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409887:	45 85 e4             	test   %r12d,%r12d
    7f01bb40988a:	0f 84 1a 00 00 00    	je     0x7f01bb4098aa
    7f01bb409890:	c7 85 68 ff ff ff 01 	movl   $0x1,-0x98(%rbp)
    7f01bb409897:	00 00 00 
    7f01bb40989a:	41 c7 87 48 44 00 00 	movl   $0x1,0x4448(%r15)
    7f01bb4098a1:	01 00 00 00 
    7f01bb4098a5:	e9 13 00 00 00       	jmpq   0x7f01bb4098bd
    7f01bb4098aa:	8b 85 30 f8 ff ff    	mov    -0x7d0(%rbp),%eax
    7f01bb4098b0:	41 89 87 48 44 00 00 	mov    %eax,0x4448(%r15)
    7f01bb4098b7:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
    7f01bb4098bd:	49 8b c7             	mov    %r15,%rax
    7f01bb4098c0:	48 05 08 44 00 00    	add    $0x4408,%rax
    7f01bb4098c6:	49 8b cf             	mov    %r15,%rcx
    7f01bb4098c9:	48 81 c1 88 12 00 00 	add    $0x1288,%rcx
    7f01bb4098d0:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb4098d3:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb4098d6:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb4098da:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb4098de:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb4098e2:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb4098e6:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb4098ea:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb4098ee:	49 8b c7             	mov    %r15,%rax
    7f01bb4098f1:	48 05 c8 43 00 00    	add    $0x43c8,%rax
    7f01bb4098f7:	49 8b cf             	mov    %r15,%rcx
    7f01bb4098fa:	48 81 c1 48 12 00 00 	add    $0x1248,%rcx
    7f01bb409901:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409904:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409907:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb40990b:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb40990f:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409913:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409917:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb40991b:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb40991f:	45 85 e4             	test   %r12d,%r12d
    7f01bb409922:	0f 84 1a 00 00 00    	je     0x7f01bb409942
    7f01bb409928:	c7 85 70 ff ff ff 01 	movl   $0x1,-0x90(%rbp)
    7f01bb40992f:	00 00 00 
    7f01bb409932:	41 c7 87 c0 43 00 00 	movl   $0x1,0x43c0(%r15)
    7f01bb409939:	01 00 00 00 
    7f01bb40993d:	e9 13 00 00 00       	jmpq   0x7f01bb409955
    7f01bb409942:	8b 85 90 f8 ff ff    	mov    -0x770(%rbp),%eax
    7f01bb409948:	41 89 87 c0 43 00 00 	mov    %eax,0x43c0(%r15)
    7f01bb40994f:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
    7f01bb409955:	49 8b c7             	mov    %r15,%rax
    7f01bb409958:	48 05 80 43 00 00    	add    $0x4380,%rax
    7f01bb40995e:	49 8b cf             	mov    %r15,%rcx
    7f01bb409961:	48 81 c1 c8 11 00 00 	add    $0x11c8,%rcx
    7f01bb409968:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb40996b:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb40996e:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409972:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409976:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb40997a:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb40997e:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409982:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409986:	45 85 e4             	test   %r12d,%r12d
    7f01bb409989:	0f 84 1a 00 00 00    	je     0x7f01bb4099a9
    7f01bb40998f:	c7 85 78 ff ff ff 00 	movl   $0x0,-0x88(%rbp)
    7f01bb409996:	00 00 00 
    7f01bb409999:	41 c7 87 78 43 00 00 	movl   $0x0,0x4378(%r15)
    7f01bb4099a0:	00 00 00 00 
    7f01bb4099a4:	e9 13 00 00 00       	jmpq   0x7f01bb4099bc
    7f01bb4099a9:	8b 85 e0 f8 ff ff    	mov    -0x720(%rbp),%eax
    7f01bb4099af:	41 89 87 78 43 00 00 	mov    %eax,0x4378(%r15)
    7f01bb4099b6:	89 85 78 ff ff ff    	mov    %eax,-0x88(%rbp)
    7f01bb4099bc:	45 85 e4             	test   %r12d,%r12d
    7f01bb4099bf:	0f 84 17 00 00 00    	je     0x7f01bb4099dc
    7f01bb4099c5:	c7 45 80 01 00 00 00 	movl   $0x1,-0x80(%rbp)
    7f01bb4099cc:	41 c7 87 70 43 00 00 	movl   $0x1,0x4370(%r15)
    7f01bb4099d3:	01 00 00 00 
    7f01bb4099d7:	e9 10 00 00 00       	jmpq   0x7f01bb4099ec
    7f01bb4099dc:	8b 85 e8 f8 ff ff    	mov    -0x718(%rbp),%eax
    7f01bb4099e2:	41 89 87 70 43 00 00 	mov    %eax,0x4370(%r15)
    7f01bb4099e9:	89 45 80             	mov    %eax,-0x80(%rbp)
    7f01bb4099ec:	45 85 e4             	test   %r12d,%r12d
    7f01bb4099ef:	0f 84 17 00 00 00    	je     0x7f01bb409a0c
    7f01bb4099f5:	c7 45 88 00 00 00 00 	movl   $0x0,-0x78(%rbp)
    7f01bb4099fc:	41 c7 87 68 43 00 00 	movl   $0x0,0x4368(%r15)
    7f01bb409a03:	00 00 00 00 
    7f01bb409a07:	e9 10 00 00 00       	jmpq   0x7f01bb409a1c
    7f01bb409a0c:	8b 85 f8 f8 ff ff    	mov    -0x708(%rbp),%eax
    7f01bb409a12:	41 89 87 68 43 00 00 	mov    %eax,0x4368(%r15)
    7f01bb409a19:	89 45 88             	mov    %eax,-0x78(%rbp)
    7f01bb409a1c:	8b 85 50 f9 ff ff    	mov    -0x6b0(%rbp),%eax
    7f01bb409a22:	85 c0                	test   %eax,%eax
    7f01bb409a24:	0f 84 62 00 00 00    	je     0x7f01bb409a8c
    7f01bb409a2a:	8b 4d 90             	mov    -0x70(%rbp),%ecx
    7f01bb409a2d:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb409a30:	0f 93 c0             	setae  %al
    7f01bb409a33:	0f b6 c0             	movzbl %al,%eax
    7f01bb409a36:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb409a39:	0f 92 c1             	setb   %cl
    7f01bb409a3c:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb409a3f:	23 c1                	and    %ecx,%eax
    7f01bb409a41:	85 c0                	test   %eax,%eax
    7f01bb409a43:	0f 85 0a 00 00 00    	jne    0x7f01bb409a53
    7f01bb409a49:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb409a4e:	e9 cb 04 00 00       	jmpq   0x7f01bb409f1e
    7f01bb409a53:	49 8b c7             	mov    %r15,%rax
    7f01bb409a56:	48 05 c8 09 00 00    	add    $0x9c8,%rax
    7f01bb409a5c:	8b 4d 90             	mov    -0x70(%rbp),%ecx
    7f01bb409a5f:	c1 e1 06             	shl    $0x6,%ecx
    7f01bb409a62:	8b c9                	mov    %ecx,%ecx
    7f01bb409a64:	48 03 c1             	add    %rcx,%rax
    7f01bb409a67:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb409a6e:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409a71:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409a74:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409a78:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409a7c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409a80:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409a84:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409a88:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409a8c:	45 85 e4             	test   %r12d,%r12d
    7f01bb409a8f:	0f 84 17 00 00 00    	je     0x7f01bb409aac
    7f01bb409a95:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%rbp)
    7f01bb409a9c:	41 c7 87 60 43 00 00 	movl   $0x0,0x4360(%r15)
    7f01bb409aa3:	00 00 00 00 
    7f01bb409aa7:	e9 10 00 00 00       	jmpq   0x7f01bb409abc
    7f01bb409aac:	8b 85 00 f9 ff ff    	mov    -0x700(%rbp),%eax
    7f01bb409ab2:	41 89 87 60 43 00 00 	mov    %eax,0x4360(%r15)
    7f01bb409ab9:	89 45 90             	mov    %eax,-0x70(%rbp)
    7f01bb409abc:	45 85 e4             	test   %r12d,%r12d
    7f01bb409abf:	0f 84 17 00 00 00    	je     0x7f01bb409adc
    7f01bb409ac5:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
    7f01bb409acc:	41 c7 87 58 43 00 00 	movl   $0x0,0x4358(%r15)
    7f01bb409ad3:	00 00 00 00 
    7f01bb409ad7:	e9 10 00 00 00       	jmpq   0x7f01bb409aec
    7f01bb409adc:	8b 85 10 f9 ff ff    	mov    -0x6f0(%rbp),%eax
    7f01bb409ae2:	41 89 87 58 43 00 00 	mov    %eax,0x4358(%r15)
    7f01bb409ae9:	89 45 98             	mov    %eax,-0x68(%rbp)
    7f01bb409aec:	45 85 e4             	test   %r12d,%r12d
    7f01bb409aef:	0f 84 17 00 00 00    	je     0x7f01bb409b0c
    7f01bb409af5:	c7 45 a0 01 00 00 00 	movl   $0x1,-0x60(%rbp)
    7f01bb409afc:	41 c7 87 50 43 00 00 	movl   $0x1,0x4350(%r15)
    7f01bb409b03:	01 00 00 00 
    7f01bb409b07:	e9 10 00 00 00       	jmpq   0x7f01bb409b1c
    7f01bb409b0c:	8b 85 18 f9 ff ff    	mov    -0x6e8(%rbp),%eax
    7f01bb409b12:	41 89 87 50 43 00 00 	mov    %eax,0x4350(%r15)
    7f01bb409b19:	89 45 a0             	mov    %eax,-0x60(%rbp)
    7f01bb409b1c:	45 85 e4             	test   %r12d,%r12d
    7f01bb409b1f:	0f 84 17 00 00 00    	je     0x7f01bb409b3c
    7f01bb409b25:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
    7f01bb409b2c:	41 c7 87 48 43 00 00 	movl   $0x0,0x4348(%r15)
    7f01bb409b33:	00 00 00 00 
    7f01bb409b37:	e9 10 00 00 00       	jmpq   0x7f01bb409b4c
    7f01bb409b3c:	8b 85 20 f9 ff ff    	mov    -0x6e0(%rbp),%eax
    7f01bb409b42:	41 89 87 48 43 00 00 	mov    %eax,0x4348(%r15)
    7f01bb409b49:	89 45 a8             	mov    %eax,-0x58(%rbp)
    7f01bb409b4c:	49 8b c7             	mov    %r15,%rax
    7f01bb409b4f:	48 05 08 43 00 00    	add    $0x4308,%rax
    7f01bb409b55:	49 8b cf             	mov    %r15,%rcx
    7f01bb409b58:	48 81 c1 88 09 00 00 	add    $0x988,%rcx
    7f01bb409b5f:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409b62:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409b65:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409b69:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409b6d:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409b71:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409b75:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409b79:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409b7d:	49 8b c7             	mov    %r15,%rax
    7f01bb409b80:	48 05 c8 42 00 00    	add    $0x42c8,%rax
    7f01bb409b86:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb409b8d:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409b90:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409b93:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409b97:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409b9b:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409b9f:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409ba3:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409ba7:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409bab:	45 85 e4             	test   %r12d,%r12d
    7f01bb409bae:	0f 84 17 00 00 00    	je     0x7f01bb409bcb
    7f01bb409bb4:	c7 45 b0 00 00 00 00 	movl   $0x0,-0x50(%rbp)
    7f01bb409bbb:	41 c7 87 c0 42 00 00 	movl   $0x0,0x42c0(%r15)
    7f01bb409bc2:	00 00 00 00 
    7f01bb409bc6:	e9 10 00 00 00       	jmpq   0x7f01bb409bdb
    7f01bb409bcb:	8b 85 70 f9 ff ff    	mov    -0x690(%rbp),%eax
    7f01bb409bd1:	41 89 87 c0 42 00 00 	mov    %eax,0x42c0(%r15)
    7f01bb409bd8:	89 45 b0             	mov    %eax,-0x50(%rbp)
    7f01bb409bdb:	45 85 e4             	test   %r12d,%r12d
    7f01bb409bde:	0f 84 17 00 00 00    	je     0x7f01bb409bfb
    7f01bb409be4:	c7 45 b8 01 00 00 00 	movl   $0x1,-0x48(%rbp)
    7f01bb409beb:	41 c7 87 b8 42 00 00 	movl   $0x1,0x42b8(%r15)
    7f01bb409bf2:	01 00 00 00 
    7f01bb409bf6:	e9 10 00 00 00       	jmpq   0x7f01bb409c0b
    7f01bb409bfb:	8b 85 78 f9 ff ff    	mov    -0x688(%rbp),%eax
    7f01bb409c01:	41 89 87 b8 42 00 00 	mov    %eax,0x42b8(%r15)
    7f01bb409c08:	89 45 b8             	mov    %eax,-0x48(%rbp)
    7f01bb409c0b:	45 85 e4             	test   %r12d,%r12d
    7f01bb409c0e:	0f 84 17 00 00 00    	je     0x7f01bb409c2b
    7f01bb409c14:	c7 45 c0 00 00 00 00 	movl   $0x0,-0x40(%rbp)
    7f01bb409c1b:	41 c7 87 b0 42 00 00 	movl   $0x0,0x42b0(%r15)
    7f01bb409c22:	00 00 00 00 
    7f01bb409c26:	e9 10 00 00 00       	jmpq   0x7f01bb409c3b
    7f01bb409c2b:	8b 85 88 f9 ff ff    	mov    -0x678(%rbp),%eax
    7f01bb409c31:	41 89 87 b0 42 00 00 	mov    %eax,0x42b0(%r15)
    7f01bb409c38:	89 45 c0             	mov    %eax,-0x40(%rbp)
    7f01bb409c3b:	8b 85 e0 f9 ff ff    	mov    -0x620(%rbp),%eax
    7f01bb409c41:	85 c0                	test   %eax,%eax
    7f01bb409c43:	0f 84 62 00 00 00    	je     0x7f01bb409cab
    7f01bb409c49:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    7f01bb409c4c:	83 f9 00             	cmp    $0x0,%ecx
    7f01bb409c4f:	0f 93 c0             	setae  %al
    7f01bb409c52:	0f b6 c0             	movzbl %al,%eax
    7f01bb409c55:	83 f9 20             	cmp    $0x20,%ecx
    7f01bb409c58:	0f 92 c1             	setb   %cl
    7f01bb409c5b:	0f b6 c9             	movzbl %cl,%ecx
    7f01bb409c5e:	23 c1                	and    %ecx,%eax
    7f01bb409c60:	85 c0                	test   %eax,%eax
    7f01bb409c62:	0f 85 0a 00 00 00    	jne    0x7f01bb409c72
    7f01bb409c68:	b8 01 00 00 00       	mov    $0x1,%eax
    7f01bb409c6d:	e9 ac 02 00 00       	jmpq   0x7f01bb409f1e
    7f01bb409c72:	49 8b c7             	mov    %r15,%rax
    7f01bb409c75:	48 05 88 01 00 00    	add    $0x188,%rax
    7f01bb409c7b:	8b 4d c8             	mov    -0x38(%rbp),%ecx
    7f01bb409c7e:	c1 e1 06             	shl    $0x6,%ecx
    7f01bb409c81:	8b c9                	mov    %ecx,%ecx
    7f01bb409c83:	48 03 c1             	add    %rcx,%rax
    7f01bb409c86:	48 8b 8d 60 fa ff ff 	mov    -0x5a0(%rbp),%rcx
    7f01bb409c8d:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409c90:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409c93:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409c97:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409c9b:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409c9f:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409ca3:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409ca7:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409cab:	45 85 e4             	test   %r12d,%r12d
    7f01bb409cae:	0f 84 17 00 00 00    	je     0x7f01bb409ccb
    7f01bb409cb4:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
    7f01bb409cbb:	41 c7 87 a8 42 00 00 	movl   $0x0,0x42a8(%r15)
    7f01bb409cc2:	00 00 00 00 
    7f01bb409cc6:	e9 10 00 00 00       	jmpq   0x7f01bb409cdb
    7f01bb409ccb:	8b 85 90 f9 ff ff    	mov    -0x670(%rbp),%eax
    7f01bb409cd1:	41 89 87 a8 42 00 00 	mov    %eax,0x42a8(%r15)
    7f01bb409cd8:	89 45 c8             	mov    %eax,-0x38(%rbp)
    7f01bb409cdb:	45 85 e4             	test   %r12d,%r12d
    7f01bb409cde:	0f 84 17 00 00 00    	je     0x7f01bb409cfb
    7f01bb409ce4:	c7 45 d0 00 00 00 00 	movl   $0x0,-0x30(%rbp)
    7f01bb409ceb:	41 c7 87 a0 42 00 00 	movl   $0x0,0x42a0(%r15)
    7f01bb409cf2:	00 00 00 00 
    7f01bb409cf6:	e9 10 00 00 00       	jmpq   0x7f01bb409d0b
    7f01bb409cfb:	8b 85 a0 f9 ff ff    	mov    -0x660(%rbp),%eax
    7f01bb409d01:	41 89 87 a0 42 00 00 	mov    %eax,0x42a0(%r15)
    7f01bb409d08:	89 45 d0             	mov    %eax,-0x30(%rbp)
    7f01bb409d0b:	45 85 e4             	test   %r12d,%r12d
    7f01bb409d0e:	0f 84 17 00 00 00    	je     0x7f01bb409d2b
    7f01bb409d14:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
    7f01bb409d1b:	41 c7 87 98 42 00 00 	movl   $0x1,0x4298(%r15)
    7f01bb409d22:	01 00 00 00 
    7f01bb409d26:	e9 10 00 00 00       	jmpq   0x7f01bb409d3b
    7f01bb409d2b:	8b 85 a8 f9 ff ff    	mov    -0x658(%rbp),%eax
    7f01bb409d31:	41 89 87 98 42 00 00 	mov    %eax,0x4298(%r15)
    7f01bb409d38:	89 45 d8             	mov    %eax,-0x28(%rbp)
    7f01bb409d3b:	45 85 e4             	test   %r12d,%r12d
    7f01bb409d3e:	0f 84 17 00 00 00    	je     0x7f01bb409d5b
    7f01bb409d44:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
    7f01bb409d4b:	41 c7 87 90 42 00 00 	movl   $0x0,0x4290(%r15)
    7f01bb409d52:	00 00 00 00 
    7f01bb409d56:	e9 10 00 00 00       	jmpq   0x7f01bb409d6b
    7f01bb409d5b:	8b 85 b0 f9 ff ff    	mov    -0x650(%rbp),%eax
    7f01bb409d61:	41 89 87 90 42 00 00 	mov    %eax,0x4290(%r15)
    7f01bb409d68:	89 45 e0             	mov    %eax,-0x20(%rbp)
    7f01bb409d6b:	49 8b c7             	mov    %r15,%rax
    7f01bb409d6e:	48 05 50 42 00 00    	add    $0x4250,%rax
    7f01bb409d74:	49 8b cf             	mov    %r15,%rcx
    7f01bb409d77:	48 81 c1 48 01 00 00 	add    $0x148,%rcx
    7f01bb409d7e:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409d81:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409d84:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409d88:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409d8c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409d90:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409d94:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409d98:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409d9c:	49 8b c7             	mov    %r15,%rax
    7f01bb409d9f:	48 05 10 42 00 00    	add    $0x4210,%rax
    7f01bb409da5:	49 8b cf             	mov    %r15,%rcx
    7f01bb409da8:	48 81 c1 08 01 00 00 	add    $0x108,%rcx
    7f01bb409daf:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409db2:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409db5:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409db9:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409dbd:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409dc1:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409dc5:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409dc9:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409dcd:	45 85 e4             	test   %r12d,%r12d
    7f01bb409dd0:	0f 84 17 00 00 00    	je     0x7f01bb409ded
    7f01bb409dd6:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    7f01bb409ddd:	41 c7 87 08 42 00 00 	movl   $0x1,0x4208(%r15)
    7f01bb409de4:	01 00 00 00 
    7f01bb409de8:	e9 10 00 00 00       	jmpq   0x7f01bb409dfd
    7f01bb409ded:	8b 85 10 fa ff ff    	mov    -0x5f0(%rbp),%eax
    7f01bb409df3:	41 89 87 08 42 00 00 	mov    %eax,0x4208(%r15)
    7f01bb409dfa:	89 45 e8             	mov    %eax,-0x18(%rbp)
    7f01bb409dfd:	49 8b c7             	mov    %r15,%rax
    7f01bb409e00:	48 05 c8 41 00 00    	add    $0x41c8,%rax
    7f01bb409e06:	49 8b cf             	mov    %r15,%rcx
    7f01bb409e09:	48 81 c1 88 00 00 00 	add    $0x88,%rcx
    7f01bb409e10:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409e13:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409e16:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409e1a:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409e1e:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409e22:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409e26:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409e2a:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409e2e:	49 8b c7             	mov    %r15,%rax
    7f01bb409e31:	48 05 88 41 00 00    	add    $0x4188,%rax
    7f01bb409e37:	49 8b cf             	mov    %r15,%rcx
    7f01bb409e3a:	48 83 c1 48          	add    $0x48,%rcx
    7f01bb409e3e:	0f 10 01             	movups (%rcx),%xmm0
    7f01bb409e41:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409e44:	0f 10 41 10          	movups 0x10(%rcx),%xmm0
    7f01bb409e48:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409e4c:	0f 10 41 20          	movups 0x20(%rcx),%xmm0
    7f01bb409e50:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409e54:	0f 10 41 30          	movups 0x30(%rcx),%xmm0
    7f01bb409e58:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409e5c:	45 85 e4             	test   %r12d,%r12d
    7f01bb409e5f:	0f 84 17 00 00 00    	je     0x7f01bb409e7c
    7f01bb409e65:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
    7f01bb409e6c:	41 c7 87 80 41 00 00 	movl   $0x1,0x4180(%r15)
    7f01bb409e73:	01 00 00 00 
    7f01bb409e77:	e9 10 00 00 00       	jmpq   0x7f01bb409e8c
    7f01bb409e7c:	8b 85 78 fa ff ff    	mov    -0x588(%rbp),%eax
    7f01bb409e82:	41 89 87 80 41 00 00 	mov    %eax,0x4180(%r15)
    7f01bb409e89:	89 45 f0             	mov    %eax,-0x10(%rbp)
    7f01bb409e8c:	48 8b 8d e8 fa ff ff 	mov    -0x518(%rbp),%rcx
    7f01bb409e93:	48 8b 41 58          	mov    0x58(%rcx),%rax
    7f01bb409e97:	8b 95 90 fb ff ff    	mov    -0x470(%rbp),%edx
    7f01bb409e9d:	89 10                	mov    %edx,(%rax)
    7f01bb409e9f:	48 8b 41 60          	mov    0x60(%rcx),%rax
    7f01bb409ea3:	8b 95 88 fb ff ff    	mov    -0x478(%rbp),%edx
    7f01bb409ea9:	89 10                	mov    %edx,(%rax)
    7f01bb409eab:	48 8b 41 68          	mov    0x68(%rcx),%rax
    7f01bb409eaf:	8b 95 98 fb ff ff    	mov    -0x468(%rbp),%edx
    7f01bb409eb5:	89 10                	mov    %edx,(%rax)
    7f01bb409eb7:	48 8b 41 70          	mov    0x70(%rcx),%rax
    7f01bb409ebb:	8b 95 58 fb ff ff    	mov    -0x4a8(%rbp),%edx
    7f01bb409ec1:	89 10                	mov    %edx,(%rax)
    7f01bb409ec3:	48 8b 41 78          	mov    0x78(%rcx),%rax
    7f01bb409ec7:	8b 95 50 fb ff ff    	mov    -0x4b0(%rbp),%edx
    7f01bb409ecd:	89 10                	mov    %edx,(%rax)
    7f01bb409ecf:	48 8b 81 80 00 00 00 	mov    0x80(%rcx),%rax
    7f01bb409ed6:	49 8b d7             	mov    %r15,%rdx
    7f01bb409ed9:	48 81 c2 88 4f 00 00 	add    $0x4f88,%rdx
    7f01bb409ee0:	0f 10 02             	movups (%rdx),%xmm0
    7f01bb409ee3:	0f 11 00             	movups %xmm0,(%rax)
    7f01bb409ee6:	0f 10 42 10          	movups 0x10(%rdx),%xmm0
    7f01bb409eea:	0f 11 40 10          	movups %xmm0,0x10(%rax)
    7f01bb409eee:	0f 10 42 20          	movups 0x20(%rdx),%xmm0
    7f01bb409ef2:	0f 11 40 20          	movups %xmm0,0x20(%rax)
    7f01bb409ef6:	0f 10 42 30          	movups 0x30(%rdx),%xmm0
    7f01bb409efa:	0f 11 40 30          	movups %xmm0,0x30(%rax)
    7f01bb409efe:	48 8b 81 88 00 00 00 	mov    0x88(%rcx),%rax
    7f01bb409f05:	8b 95 60 fb ff ff    	mov    -0x4a0(%rbp),%edx
    7f01bb409f0b:	89 10                	mov    %edx,(%rax)
    7f01bb409f0d:	48 8b 89 90 00 00 00 	mov    0x90(%rcx),%rcx
    7f01bb409f14:	8b 85 f8 fa ff ff    	mov    -0x508(%rbp),%eax
    7f01bb409f1a:	89 01                	mov    %eax,(%rcx)
    7f01bb409f1c:	33 c0                	xor    %eax,%eax
    7f01bb409f1e:	48 8b 1c 24          	mov    (%rsp),%rbx
    7f01bb409f22:	4c 8b 64 24 08       	mov    0x8(%rsp),%r12
    7f01bb409f27:	4c 8b 6c 24 10       	mov    0x10(%rsp),%r13
    7f01bb409f2c:	4c 8b 74 24 18       	mov    0x18(%rsp),%r14
    7f01bb409f31:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    7f01bb409f36:	48 8b e5             	mov    %rbp,%rsp
    7f01bb409f39:	5d                   	pop    %rbp
    7f01bb409f3a:	c3                   	retq   

end

