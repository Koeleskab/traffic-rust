
/private/var/folders/6k/zvtp_wrj6bqc546_ml6rzkww0000gn/T/arduino-sketch-4F38139A5C39EE9A046F4A2774B0F8F2/trafficLight.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 62 00 	jmp	0xc4	; 0xc4 <__ctors_end>
   4:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
   8:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
   c:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  10:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  14:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  18:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  1c:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  20:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  24:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  28:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  2c:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  30:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  34:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  38:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  3c:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  40:	0c 94 d8 02 	jmp	0x5b0	; 0x5b0 <__vector_16>
  44:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  48:	0c 94 48 03 	jmp	0x690	; 0x690 <__vector_18>
  4c:	0c 94 22 03 	jmp	0x644	; 0x644 <__vector_19>
  50:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  54:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  58:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  5c:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  60:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>
  64:	0c 94 8a 00 	jmp	0x114	; 0x114 <__bad_interrupt>

00000068 <port_to_mode_PGM>:
  68:	00 00 00 00 24 00 27 00 2a 00                       ....$.'.*.

00000072 <port_to_output_PGM>:
  72:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

0000007c <port_to_input_PGM>:
  7c:	00 00 00 00 23 00 26 00 29 00                       ....#.&.).

00000086 <digital_pin_to_port_PGM>:
  86:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
  96:	03 03 03 03                                         ....

0000009a <digital_pin_to_bit_mask_PGM>:
  9a:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
  aa:	04 08 10 20                                         ... 

000000ae <digital_pin_to_timer_PGM>:
  ae:	00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
  be:	00 00 00 00                                         ....

000000c2 <__ctors_start>:
  c2:	7a 03       	fmul	r23, r18

000000c4 <__ctors_end>:
  c4:	11 24       	eor	r1, r1
  c6:	1f be       	out	0x3f, r1	; 63
  c8:	cf ef       	ldi	r28, 0xFF	; 255
  ca:	d8 e0       	ldi	r29, 0x08	; 8
  cc:	de bf       	out	0x3e, r29	; 62
  ce:	cd bf       	out	0x3d, r28	; 61

000000d0 <__do_copy_data>:
  d0:	11 e0       	ldi	r17, 0x01	; 1
  d2:	a0 e0       	ldi	r26, 0x00	; 0
  d4:	b1 e0       	ldi	r27, 0x01	; 1
  d6:	e8 e3       	ldi	r30, 0x38	; 56
  d8:	fb e0       	ldi	r31, 0x0B	; 11
  da:	02 c0       	rjmp	.+4      	; 0xe0 <__do_copy_data+0x10>
  dc:	05 90       	lpm	r0, Z+
  de:	0d 92       	st	X+, r0
  e0:	a8 33       	cpi	r26, 0x38	; 56
  e2:	b1 07       	cpc	r27, r17
  e4:	d9 f7       	brne	.-10     	; 0xdc <__do_copy_data+0xc>

000000e6 <__do_clear_bss>:
  e6:	21 e0       	ldi	r18, 0x01	; 1
  e8:	a8 e3       	ldi	r26, 0x38	; 56
  ea:	b1 e0       	ldi	r27, 0x01	; 1
  ec:	01 c0       	rjmp	.+2      	; 0xf0 <.do_clear_bss_start>

000000ee <.do_clear_bss_loop>:
  ee:	1d 92       	st	X+, r1

000000f0 <.do_clear_bss_start>:
  f0:	a4 3f       	cpi	r26, 0xF4	; 244
  f2:	b2 07       	cpc	r27, r18
  f4:	e1 f7       	brne	.-8      	; 0xee <.do_clear_bss_loop>

000000f6 <__do_global_ctors>:
  f6:	10 e0       	ldi	r17, 0x00	; 0
  f8:	c2 e6       	ldi	r28, 0x62	; 98
  fa:	d0 e0       	ldi	r29, 0x00	; 0
  fc:	04 c0       	rjmp	.+8      	; 0x106 <__do_global_ctors+0x10>
  fe:	21 97       	sbiw	r28, 0x01	; 1
 100:	fe 01       	movw	r30, r28
 102:	0e 94 94 05 	call	0xb28	; 0xb28 <__tablejump2__>
 106:	c1 36       	cpi	r28, 0x61	; 97
 108:	d1 07       	cpc	r29, r17
 10a:	c9 f7       	brne	.-14     	; 0xfe <__do_global_ctors+0x8>
 10c:	0e 94 de 03 	call	0x7bc	; 0x7bc <main>
 110:	0c 94 9a 05 	jmp	0xb34	; 0xb34 <_exit>

00000114 <__bad_interrupt>:
 114:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000118 <turnOffPWM>:
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
 118:	83 30       	cpi	r24, 0x03	; 3
 11a:	81 f0       	breq	.+32     	; 0x13c <turnOffPWM+0x24>
 11c:	28 f4       	brcc	.+10     	; 0x128 <turnOffPWM+0x10>
 11e:	81 30       	cpi	r24, 0x01	; 1
 120:	99 f0       	breq	.+38     	; 0x148 <turnOffPWM+0x30>
 122:	82 30       	cpi	r24, 0x02	; 2
 124:	a9 f0       	breq	.+42     	; 0x150 <turnOffPWM+0x38>
 126:	08 95       	ret
 128:	87 30       	cpi	r24, 0x07	; 7
 12a:	a9 f0       	breq	.+42     	; 0x156 <turnOffPWM+0x3e>
 12c:	88 30       	cpi	r24, 0x08	; 8
 12e:	c9 f0       	breq	.+50     	; 0x162 <turnOffPWM+0x4a>
 130:	84 30       	cpi	r24, 0x04	; 4
 132:	b1 f4       	brne	.+44     	; 0x160 <turnOffPWM+0x48>
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 134:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 138:	8f 7d       	andi	r24, 0xDF	; 223
 13a:	03 c0       	rjmp	.+6      	; 0x142 <turnOffPWM+0x2a>
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
 13c:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 140:	8f 77       	andi	r24, 0x7F	; 127
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 142:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 146:	08 95       	ret
		#if defined(TCCR2) && defined(COM21)
		case  TIMER2:   cbi(TCCR2, COM21);      break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
 148:	84 b5       	in	r24, 0x24	; 36
 14a:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
 14c:	84 bd       	out	0x24, r24	; 36
 14e:	08 95       	ret
 150:	84 b5       	in	r24, 0x24	; 36
 152:	8f 7d       	andi	r24, 0xDF	; 223
 154:	fb cf       	rjmp	.-10     	; 0x14c <turnOffPWM+0x34>
		#endif
		#if defined(TCCR2A) && defined(COM2A1)
		case  TIMER2A:  cbi(TCCR2A, COM2A1);    break;
 156:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
 15a:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 15c:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
		case  TIMER5A:  cbi(TCCR5A, COM5A1);    break;
		case  TIMER5B:  cbi(TCCR5A, COM5B1);    break;
		case  TIMER5C:  cbi(TCCR5A, COM5C1);    break;
		#endif
	}
}
 160:	08 95       	ret
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 162:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
 166:	8f 7d       	andi	r24, 0xDF	; 223
 168:	f9 cf       	rjmp	.-14     	; 0x15c <turnOffPWM+0x44>

0000016a <digitalRead>:

	SREG = oldSREG;
}

int digitalRead(uint8_t pin)
{
 16a:	cf 93       	push	r28
 16c:	df 93       	push	r29
	uint8_t timer = digitalPinToTimer(pin);
 16e:	28 2f       	mov	r18, r24
 170:	30 e0       	ldi	r19, 0x00	; 0
 172:	f9 01       	movw	r30, r18
 174:	e2 55       	subi	r30, 0x52	; 82
 176:	ff 4f       	sbci	r31, 0xFF	; 255
 178:	84 91       	lpm	r24, Z
	uint8_t bit = digitalPinToBitMask(pin);
 17a:	f9 01       	movw	r30, r18
 17c:	e6 56       	subi	r30, 0x66	; 102
 17e:	ff 4f       	sbci	r31, 0xFF	; 255
 180:	d4 91       	lpm	r29, Z
	uint8_t port = digitalPinToPort(pin);
 182:	f9 01       	movw	r30, r18
 184:	ea 57       	subi	r30, 0x7A	; 122
 186:	ff 4f       	sbci	r31, 0xFF	; 255
 188:	c4 91       	lpm	r28, Z

	if (port == NOT_A_PIN) return LOW;
 18a:	cc 23       	and	r28, r28
 18c:	a1 f0       	breq	.+40     	; 0x1b6 <digitalRead+0x4c>

	// If the pin that support PWM output, we need to turn it off
	// before getting a digital reading.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
 18e:	81 11       	cpse	r24, r1
 190:	0e 94 8c 00 	call	0x118	; 0x118 <turnOffPWM>

	if (*portInputRegister(port) & bit) return HIGH;
 194:	ec 2f       	mov	r30, r28
 196:	f0 e0       	ldi	r31, 0x00	; 0
 198:	ee 0f       	add	r30, r30
 19a:	ff 1f       	adc	r31, r31
 19c:	e4 58       	subi	r30, 0x84	; 132
 19e:	ff 4f       	sbci	r31, 0xFF	; 255
 1a0:	a5 91       	lpm	r26, Z+
 1a2:	b4 91       	lpm	r27, Z
 1a4:	ec 91       	ld	r30, X
 1a6:	ed 23       	and	r30, r29
 1a8:	81 e0       	ldi	r24, 0x01	; 1
 1aa:	90 e0       	ldi	r25, 0x00	; 0
 1ac:	09 f4       	brne	.+2      	; 0x1b0 <digitalRead+0x46>
 1ae:	80 e0       	ldi	r24, 0x00	; 0
	return LOW;
}
 1b0:	df 91       	pop	r29
 1b2:	cf 91       	pop	r28
 1b4:	08 95       	ret
	if (port == NOT_A_PIN) return LOW;
 1b6:	80 e0       	ldi	r24, 0x00	; 0
 1b8:	90 e0       	ldi	r25, 0x00	; 0
 1ba:	fa cf       	rjmp	.-12     	; 0x1b0 <digitalRead+0x46>

000001bc <digitalWrite>:
{
 1bc:	1f 93       	push	r17
 1be:	cf 93       	push	r28
 1c0:	df 93       	push	r29
	uint8_t timer = digitalPinToTimer(pin);
 1c2:	28 2f       	mov	r18, r24
 1c4:	30 e0       	ldi	r19, 0x00	; 0
 1c6:	f9 01       	movw	r30, r18
 1c8:	e2 55       	subi	r30, 0x52	; 82
 1ca:	ff 4f       	sbci	r31, 0xFF	; 255
 1cc:	84 91       	lpm	r24, Z
	uint8_t bit = digitalPinToBitMask(pin);
 1ce:	f9 01       	movw	r30, r18
 1d0:	e6 56       	subi	r30, 0x66	; 102
 1d2:	ff 4f       	sbci	r31, 0xFF	; 255
 1d4:	d4 91       	lpm	r29, Z
	uint8_t port = digitalPinToPort(pin);
 1d6:	f9 01       	movw	r30, r18
 1d8:	ea 57       	subi	r30, 0x7A	; 122
 1da:	ff 4f       	sbci	r31, 0xFF	; 255
 1dc:	c4 91       	lpm	r28, Z
	if (port == NOT_A_PIN) return;
 1de:	cc 23       	and	r28, r28
 1e0:	a9 f0       	breq	.+42     	; 0x20c <digitalWrite+0x50>
 1e2:	16 2f       	mov	r17, r22
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
 1e4:	81 11       	cpse	r24, r1
 1e6:	0e 94 8c 00 	call	0x118	; 0x118 <turnOffPWM>
	out = portOutputRegister(port);
 1ea:	ec 2f       	mov	r30, r28
 1ec:	f0 e0       	ldi	r31, 0x00	; 0
 1ee:	ee 0f       	add	r30, r30
 1f0:	ff 1f       	adc	r31, r31
 1f2:	ee 58       	subi	r30, 0x8E	; 142
 1f4:	ff 4f       	sbci	r31, 0xFF	; 255
 1f6:	a5 91       	lpm	r26, Z+
 1f8:	b4 91       	lpm	r27, Z
	uint8_t oldSREG = SREG;
 1fa:	8f b7       	in	r24, 0x3f	; 63
	cli();
 1fc:	f8 94       	cli
		*out &= ~bit;
 1fe:	ec 91       	ld	r30, X
	if (val == LOW) {
 200:	11 11       	cpse	r17, r1
 202:	08 c0       	rjmp	.+16     	; 0x214 <digitalWrite+0x58>
		*out &= ~bit;
 204:	d0 95       	com	r29
 206:	de 23       	and	r29, r30
		*out |= bit;
 208:	dc 93       	st	X, r29
	SREG = oldSREG;
 20a:	8f bf       	out	0x3f, r24	; 63
}
 20c:	df 91       	pop	r29
 20e:	cf 91       	pop	r28
 210:	1f 91       	pop	r17
 212:	08 95       	ret
		*out |= bit;
 214:	de 2b       	or	r29, r30
 216:	f8 cf       	rjmp	.-16     	; 0x208 <digitalWrite+0x4c>

00000218 <pinMode>:
{
 218:	cf 93       	push	r28
 21a:	df 93       	push	r29
	uint8_t bit = digitalPinToBitMask(pin);
 21c:	90 e0       	ldi	r25, 0x00	; 0
 21e:	fc 01       	movw	r30, r24
 220:	e6 56       	subi	r30, 0x66	; 102
 222:	ff 4f       	sbci	r31, 0xFF	; 255
 224:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
 226:	8a 57       	subi	r24, 0x7A	; 122
 228:	9f 4f       	sbci	r25, 0xFF	; 255
 22a:	fc 01       	movw	r30, r24
 22c:	84 91       	lpm	r24, Z
	if (port == NOT_A_PIN) return;
 22e:	88 23       	and	r24, r24
 230:	d1 f0       	breq	.+52     	; 0x266 <pinMode+0x4e>
	reg = portModeRegister(port);
 232:	90 e0       	ldi	r25, 0x00	; 0
 234:	88 0f       	add	r24, r24
 236:	99 1f       	adc	r25, r25
 238:	fc 01       	movw	r30, r24
 23a:	e8 59       	subi	r30, 0x98	; 152
 23c:	ff 4f       	sbci	r31, 0xFF	; 255
 23e:	a5 91       	lpm	r26, Z+
 240:	b4 91       	lpm	r27, Z
	out = portOutputRegister(port);
 242:	fc 01       	movw	r30, r24
 244:	ee 58       	subi	r30, 0x8E	; 142
 246:	ff 4f       	sbci	r31, 0xFF	; 255
 248:	c5 91       	lpm	r28, Z+
 24a:	d4 91       	lpm	r29, Z
	} else if (mode == INPUT_PULLUP) {
 24c:	62 30       	cpi	r22, 0x02	; 2
 24e:	71 f4       	brne	.+28     	; 0x26c <pinMode+0x54>
		uint8_t oldSREG = SREG;
 250:	9f b7       	in	r25, 0x3f	; 63
                cli();
 252:	f8 94       	cli
		*reg &= ~bit;
 254:	3c 91       	ld	r19, X
 256:	82 2f       	mov	r24, r18
 258:	80 95       	com	r24
 25a:	83 23       	and	r24, r19
 25c:	8c 93       	st	X, r24
		*out |= bit;
 25e:	e8 81       	ld	r30, Y
 260:	2e 2b       	or	r18, r30
 262:	28 83       	st	Y, r18
		SREG = oldSREG;
 264:	9f bf       	out	0x3f, r25	; 63
}
 266:	df 91       	pop	r29
 268:	cf 91       	pop	r28
 26a:	08 95       	ret
		uint8_t oldSREG = SREG;
 26c:	8f b7       	in	r24, 0x3f	; 63
                cli();
 26e:	f8 94       	cli
		*reg |= bit;
 270:	ec 91       	ld	r30, X
 272:	2e 2b       	or	r18, r30
 274:	2c 93       	st	X, r18
		SREG = oldSREG;
 276:	8f bf       	out	0x3f, r24	; 63
 278:	f6 cf       	rjmp	.-20     	; 0x266 <pinMode+0x4e>

0000027a <millis>:
}

unsigned long millis()
{
	unsigned long m;
	uint8_t oldSREG = SREG;
 27a:	2f b7       	in	r18, 0x3f	; 63

	// disable interrupts while we read timer0_millis or we might get an
	// inconsistent value (e.g. in the middle of a write to timer0_millis)
	cli();
 27c:	f8 94       	cli
	m = timer0_millis;
 27e:	60 91 43 01 	lds	r22, 0x0143	; 0x800143 <timer0_millis>
 282:	70 91 44 01 	lds	r23, 0x0144	; 0x800144 <timer0_millis+0x1>
 286:	80 91 45 01 	lds	r24, 0x0145	; 0x800145 <timer0_millis+0x2>
 28a:	90 91 46 01 	lds	r25, 0x0146	; 0x800146 <timer0_millis+0x3>
	SREG = oldSREG;
 28e:	2f bf       	out	0x3f, r18	; 63

	return m;
}
 290:	08 95       	ret

00000292 <_ZN5Print5writeEPKhj>:

// Public Methods //////////////////////////////////////////////////////////////

/* default implementation: may be overridden */
size_t Print::write(const uint8_t *buffer, size_t size)
{
 292:	af 92       	push	r10
 294:	bf 92       	push	r11
 296:	cf 92       	push	r12
 298:	df 92       	push	r13
 29a:	ef 92       	push	r14
 29c:	ff 92       	push	r15
 29e:	0f 93       	push	r16
 2a0:	1f 93       	push	r17
 2a2:	cf 93       	push	r28
 2a4:	df 93       	push	r29
 2a6:	6c 01       	movw	r12, r24
 2a8:	7b 01       	movw	r14, r22
 2aa:	8b 01       	movw	r16, r22
 2ac:	04 0f       	add	r16, r20
 2ae:	15 1f       	adc	r17, r21
 2b0:	eb 01       	movw	r28, r22
 2b2:	5e 01       	movw	r10, r28
 2b4:	ae 18       	sub	r10, r14
 2b6:	bf 08       	sbc	r11, r15
  size_t n = 0;
  while (size--) {
 2b8:	c0 17       	cp	r28, r16
 2ba:	d1 07       	cpc	r29, r17
 2bc:	59 f0       	breq	.+22     	; 0x2d4 <_ZN5Print5writeEPKhj+0x42>
    if (write(*buffer++)) n++;
 2be:	69 91       	ld	r22, Y+
 2c0:	d6 01       	movw	r26, r12
 2c2:	ed 91       	ld	r30, X+
 2c4:	fc 91       	ld	r31, X
 2c6:	01 90       	ld	r0, Z+
 2c8:	f0 81       	ld	r31, Z
 2ca:	e0 2d       	mov	r30, r0
 2cc:	c6 01       	movw	r24, r12
 2ce:	09 95       	icall
 2d0:	89 2b       	or	r24, r25
 2d2:	79 f7       	brne	.-34     	; 0x2b2 <_ZN5Print5writeEPKhj+0x20>
    else break;
  }
  return n;
}
 2d4:	c5 01       	movw	r24, r10
 2d6:	df 91       	pop	r29
 2d8:	cf 91       	pop	r28
 2da:	1f 91       	pop	r17
 2dc:	0f 91       	pop	r16
 2de:	ff 90       	pop	r15
 2e0:	ef 90       	pop	r14
 2e2:	df 90       	pop	r13
 2e4:	cf 90       	pop	r12
 2e6:	bf 90       	pop	r11
 2e8:	af 90       	pop	r10
 2ea:	08 95       	ret

000002ec <_ZN14HardwareSerial17availableForWriteEv>:
{
  tx_buffer_index_t head;
  tx_buffer_index_t tail;

  TX_BUFFER_ATOMIC {
    head = _tx_buffer_head;
 2ec:	fc 01       	movw	r30, r24
 2ee:	53 8d       	ldd	r21, Z+27	; 0x1b
    tail = _tx_buffer_tail;
 2f0:	44 8d       	ldd	r20, Z+28	; 0x1c
 2f2:	25 2f       	mov	r18, r21
 2f4:	30 e0       	ldi	r19, 0x00	; 0
 2f6:	84 2f       	mov	r24, r20
 2f8:	90 e0       	ldi	r25, 0x00	; 0
  }
  if (head >= tail) return SERIAL_TX_BUFFER_SIZE - 1 - head + tail;
 2fa:	82 1b       	sub	r24, r18
 2fc:	93 0b       	sbc	r25, r19
 2fe:	54 17       	cp	r21, r20
 300:	10 f0       	brcs	.+4      	; 0x306 <_ZN14HardwareSerial17availableForWriteEv+0x1a>
 302:	cf 96       	adiw	r24, 0x3f	; 63
 304:	08 95       	ret
  return tail - head - 1;
 306:	01 97       	sbiw	r24, 0x01	; 1
}
 308:	08 95       	ret

0000030a <_ZN14HardwareSerial4readEv>:
{
 30a:	fc 01       	movw	r30, r24
  if (_rx_buffer_head == _rx_buffer_tail) {
 30c:	91 8d       	ldd	r25, Z+25	; 0x19
 30e:	82 8d       	ldd	r24, Z+26	; 0x1a
 310:	98 17       	cp	r25, r24
 312:	61 f0       	breq	.+24     	; 0x32c <_ZN14HardwareSerial4readEv+0x22>
    unsigned char c = _rx_buffer[_rx_buffer_tail];
 314:	a2 8d       	ldd	r26, Z+26	; 0x1a
 316:	ae 0f       	add	r26, r30
 318:	bf 2f       	mov	r27, r31
 31a:	b1 1d       	adc	r27, r1
 31c:	5d 96       	adiw	r26, 0x1d	; 29
 31e:	8c 91       	ld	r24, X
    _rx_buffer_tail = (rx_buffer_index_t)(_rx_buffer_tail + 1) % SERIAL_RX_BUFFER_SIZE;
 320:	92 8d       	ldd	r25, Z+26	; 0x1a
 322:	9f 5f       	subi	r25, 0xFF	; 255
 324:	9f 73       	andi	r25, 0x3F	; 63
 326:	92 8f       	std	Z+26, r25	; 0x1a
    return c;
 328:	90 e0       	ldi	r25, 0x00	; 0
 32a:	08 95       	ret
    return -1;
 32c:	8f ef       	ldi	r24, 0xFF	; 255
 32e:	9f ef       	ldi	r25, 0xFF	; 255
}
 330:	08 95       	ret

00000332 <_ZN14HardwareSerial4peekEv>:
{
 332:	fc 01       	movw	r30, r24
  if (_rx_buffer_head == _rx_buffer_tail) {
 334:	91 8d       	ldd	r25, Z+25	; 0x19
 336:	82 8d       	ldd	r24, Z+26	; 0x1a
 338:	98 17       	cp	r25, r24
 33a:	31 f0       	breq	.+12     	; 0x348 <_ZN14HardwareSerial4peekEv+0x16>
    return _rx_buffer[_rx_buffer_tail];
 33c:	82 8d       	ldd	r24, Z+26	; 0x1a
 33e:	e8 0f       	add	r30, r24
 340:	f1 1d       	adc	r31, r1
 342:	85 8d       	ldd	r24, Z+29	; 0x1d
 344:	90 e0       	ldi	r25, 0x00	; 0
 346:	08 95       	ret
    return -1;
 348:	8f ef       	ldi	r24, 0xFF	; 255
 34a:	9f ef       	ldi	r25, 0xFF	; 255
}
 34c:	08 95       	ret

0000034e <_ZN14HardwareSerial9availableEv>:
{
 34e:	fc 01       	movw	r30, r24
  return ((unsigned int)(SERIAL_RX_BUFFER_SIZE + _rx_buffer_head - _rx_buffer_tail)) % SERIAL_RX_BUFFER_SIZE;
 350:	91 8d       	ldd	r25, Z+25	; 0x19
 352:	22 8d       	ldd	r18, Z+26	; 0x1a
 354:	89 2f       	mov	r24, r25
 356:	90 e0       	ldi	r25, 0x00	; 0
 358:	80 5c       	subi	r24, 0xC0	; 192
 35a:	9f 4f       	sbci	r25, 0xFF	; 255
 35c:	82 1b       	sub	r24, r18
 35e:	91 09       	sbc	r25, r1
}
 360:	8f 73       	andi	r24, 0x3F	; 63
 362:	99 27       	eor	r25, r25
 364:	08 95       	ret

00000366 <_Z17Serial0_availablev>:
#endif

// Function that can be weakly referenced by serialEventRun to prevent
// pulling in this file if it's not otherwise used.
bool Serial0_available() {
  return Serial.available();
 366:	87 e4       	ldi	r24, 0x47	; 71
 368:	91 e0       	ldi	r25, 0x01	; 1
 36a:	0e 94 a7 01 	call	0x34e	; 0x34e <_ZN14HardwareSerial9availableEv>
 36e:	21 e0       	ldi	r18, 0x01	; 1
 370:	89 2b       	or	r24, r25
 372:	09 f4       	brne	.+2      	; 0x376 <_Z17Serial0_availablev+0x10>
 374:	20 e0       	ldi	r18, 0x00	; 0
}
 376:	82 2f       	mov	r24, r18
 378:	08 95       	ret

0000037a <_Z14serialEventRunv>:
  if (Serial0_available && serialEvent && Serial0_available()) serialEvent();
 37a:	80 e0       	ldi	r24, 0x00	; 0
 37c:	90 e0       	ldi	r25, 0x00	; 0
 37e:	89 2b       	or	r24, r25
 380:	29 f0       	breq	.+10     	; 0x38c <_Z14serialEventRunv+0x12>
 382:	0e 94 b3 01 	call	0x366	; 0x366 <_Z17Serial0_availablev>
 386:	81 11       	cpse	r24, r1
 388:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>
}
 38c:	08 95       	ret

0000038e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>:
{
 38e:	fc 01       	movw	r30, r24
  unsigned char c = _tx_buffer[_tx_buffer_tail];
 390:	a4 8d       	ldd	r26, Z+28	; 0x1c
 392:	a8 0f       	add	r26, r24
 394:	b9 2f       	mov	r27, r25
 396:	b1 1d       	adc	r27, r1
 398:	a3 5a       	subi	r26, 0xA3	; 163
 39a:	bf 4f       	sbci	r27, 0xFF	; 255
 39c:	2c 91       	ld	r18, X
  _tx_buffer_tail = (_tx_buffer_tail + 1) % SERIAL_TX_BUFFER_SIZE;
 39e:	84 8d       	ldd	r24, Z+28	; 0x1c
 3a0:	90 e0       	ldi	r25, 0x00	; 0
 3a2:	01 96       	adiw	r24, 0x01	; 1
 3a4:	8f 73       	andi	r24, 0x3F	; 63
 3a6:	99 27       	eor	r25, r25
 3a8:	84 8f       	std	Z+28, r24	; 0x1c
  *_udr = c;
 3aa:	a6 89       	ldd	r26, Z+22	; 0x16
 3ac:	b7 89       	ldd	r27, Z+23	; 0x17
 3ae:	2c 93       	st	X, r18
  *_ucsra = ((*_ucsra) & ((1 << U2X0) | (1 << MPCM0))) | (1 << TXC0);
 3b0:	a0 89       	ldd	r26, Z+16	; 0x10
 3b2:	b1 89       	ldd	r27, Z+17	; 0x11
 3b4:	8c 91       	ld	r24, X
 3b6:	83 70       	andi	r24, 0x03	; 3
 3b8:	80 64       	ori	r24, 0x40	; 64
 3ba:	8c 93       	st	X, r24
  if (_tx_buffer_head == _tx_buffer_tail) {
 3bc:	93 8d       	ldd	r25, Z+27	; 0x1b
 3be:	84 8d       	ldd	r24, Z+28	; 0x1c
 3c0:	98 13       	cpse	r25, r24
 3c2:	06 c0       	rjmp	.+12     	; 0x3d0 <_ZN14HardwareSerial17_tx_udr_empty_irqEv+0x42>
    cbi(*_ucsrb, UDRIE0);
 3c4:	02 88       	ldd	r0, Z+18	; 0x12
 3c6:	f3 89       	ldd	r31, Z+19	; 0x13
 3c8:	e0 2d       	mov	r30, r0
 3ca:	80 81       	ld	r24, Z
 3cc:	8f 7d       	andi	r24, 0xDF	; 223
 3ce:	80 83       	st	Z, r24
}
 3d0:	08 95       	ret

000003d2 <_ZN14HardwareSerial5writeEh>:
  // If we get here, nothing is queued anymore (DRIE is disabled) and
  // the hardware finished transmission (TXC is set).
}

size_t HardwareSerial::write(uint8_t c)
{
 3d2:	ef 92       	push	r14
 3d4:	ff 92       	push	r15
 3d6:	0f 93       	push	r16
 3d8:	1f 93       	push	r17
 3da:	cf 93       	push	r28
 3dc:	df 93       	push	r29
 3de:	ec 01       	movw	r28, r24
  _written = true;
 3e0:	81 e0       	ldi	r24, 0x01	; 1
 3e2:	88 8f       	std	Y+24, r24	; 0x18
  // If the buffer and the data register is empty, just write the byte
  // to the data register and be done. This shortcut helps
  // significantly improve the effective datarate at high (>
  // 500kbit/s) bitrates, where interrupt overhead becomes a slowdown.
  if (_tx_buffer_head == _tx_buffer_tail && bit_is_set(*_ucsra, UDRE0)) {
 3e4:	9b 8d       	ldd	r25, Y+27	; 0x1b
 3e6:	8c 8d       	ldd	r24, Y+28	; 0x1c
 3e8:	98 13       	cpse	r25, r24
 3ea:	1a c0       	rjmp	.+52     	; 0x420 <__LOCK_REGION_LENGTH__+0x20>
 3ec:	e8 89       	ldd	r30, Y+16	; 0x10
 3ee:	f9 89       	ldd	r31, Y+17	; 0x11
 3f0:	80 81       	ld	r24, Z
 3f2:	85 ff       	sbrs	r24, 5
 3f4:	15 c0       	rjmp	.+42     	; 0x420 <__LOCK_REGION_LENGTH__+0x20>
    // So writing UDR must happen first.
    // Writing UDR and clearing TC must be done atomically, otherwise
    // interrupts might delay the TXC clear so the byte written to UDR
    // is transmitted (setting TXC) before clearing TXC. Then TXC will
    // be cleared when no bytes are left, causing flush() to hang
    ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
 3f6:	9f b7       	in	r25, 0x3f	; 63
    return 1;
}

static __inline__ uint8_t __iCliRetVal(void)
{
    cli();
 3f8:	f8 94       	cli
      *_udr = c;
 3fa:	ee 89       	ldd	r30, Y+22	; 0x16
 3fc:	ff 89       	ldd	r31, Y+23	; 0x17
 3fe:	60 83       	st	Z, r22
#ifdef MPCM0
      *_ucsra = ((*_ucsra) & ((1 << U2X0) | (1 << MPCM0))) | (1 << TXC0);
 400:	e8 89       	ldd	r30, Y+16	; 0x10
 402:	f9 89       	ldd	r31, Y+17	; 0x11
 404:	80 81       	ld	r24, Z
 406:	83 70       	andi	r24, 0x03	; 3
 408:	80 64       	ori	r24, 0x40	; 64
  // make atomic to prevent execution of ISR between setting the
  // head pointer and setting the interrupt flag resulting in buffer
  // retransmission
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
    _tx_buffer_head = i;
    sbi(*_ucsrb, UDRIE0);
 40a:	80 83       	st	Z, r24
    (void)__s;
}

static __inline__ void __iRestore(const  uint8_t *__s)
{
    SREG = *__s;
 40c:	9f bf       	out	0x3f, r25	; 63
  }
  
  return 1;
}
 40e:	81 e0       	ldi	r24, 0x01	; 1
 410:	90 e0       	ldi	r25, 0x00	; 0
 412:	df 91       	pop	r29
 414:	cf 91       	pop	r28
 416:	1f 91       	pop	r17
 418:	0f 91       	pop	r16
 41a:	ff 90       	pop	r15
 41c:	ef 90       	pop	r14
 41e:	08 95       	ret
 420:	f6 2e       	mov	r15, r22
  tx_buffer_index_t i = (_tx_buffer_head + 1) % SERIAL_TX_BUFFER_SIZE;
 422:	0b 8d       	ldd	r16, Y+27	; 0x1b
 424:	10 e0       	ldi	r17, 0x00	; 0
 426:	0f 5f       	subi	r16, 0xFF	; 255
 428:	1f 4f       	sbci	r17, 0xFF	; 255
 42a:	0f 73       	andi	r16, 0x3F	; 63
 42c:	11 27       	eor	r17, r17
 42e:	e0 2e       	mov	r14, r16
  while (i == _tx_buffer_tail) {
 430:	8c 8d       	ldd	r24, Y+28	; 0x1c
 432:	8e 11       	cpse	r24, r14
 434:	0c c0       	rjmp	.+24     	; 0x44e <__LOCK_REGION_LENGTH__+0x4e>
    if (bit_is_clear(SREG, SREG_I)) {
 436:	0f b6       	in	r0, 0x3f	; 63
 438:	07 fc       	sbrc	r0, 7
 43a:	fa cf       	rjmp	.-12     	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
      if(bit_is_set(*_ucsra, UDRE0))
 43c:	e8 89       	ldd	r30, Y+16	; 0x10
 43e:	f9 89       	ldd	r31, Y+17	; 0x11
 440:	80 81       	ld	r24, Z
 442:	85 ff       	sbrs	r24, 5
 444:	f5 cf       	rjmp	.-22     	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
	_tx_udr_empty_irq();
 446:	ce 01       	movw	r24, r28
 448:	0e 94 c7 01 	call	0x38e	; 0x38e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
 44c:	f1 cf       	rjmp	.-30     	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
  _tx_buffer[_tx_buffer_head] = c;
 44e:	eb 8d       	ldd	r30, Y+27	; 0x1b
 450:	ec 0f       	add	r30, r28
 452:	fd 2f       	mov	r31, r29
 454:	f1 1d       	adc	r31, r1
 456:	e3 5a       	subi	r30, 0xA3	; 163
 458:	ff 4f       	sbci	r31, 0xFF	; 255
 45a:	f0 82       	st	Z, r15
  ATOMIC_BLOCK(ATOMIC_RESTORESTATE) {
 45c:	9f b7       	in	r25, 0x3f	; 63
    cli();
 45e:	f8 94       	cli
    _tx_buffer_head = i;
 460:	0b 8f       	std	Y+27, r16	; 0x1b
    sbi(*_ucsrb, UDRIE0);
 462:	ea 89       	ldd	r30, Y+18	; 0x12
 464:	fb 89       	ldd	r31, Y+19	; 0x13
 466:	80 81       	ld	r24, Z
 468:	80 62       	ori	r24, 0x20	; 32
 46a:	cf cf       	rjmp	.-98     	; 0x40a <__LOCK_REGION_LENGTH__+0xa>

0000046c <_ZN14HardwareSerial5flushEv>:
{
 46c:	cf 93       	push	r28
 46e:	df 93       	push	r29
 470:	ec 01       	movw	r28, r24
  if (!_written)
 472:	88 8d       	ldd	r24, Y+24	; 0x18
 474:	88 23       	and	r24, r24
 476:	b9 f0       	breq	.+46     	; 0x4a6 <_ZN14HardwareSerial5flushEv+0x3a>
  while (bit_is_set(*_ucsrb, UDRIE0) || bit_is_clear(*_ucsra, TXC0)) {
 478:	aa 89       	ldd	r26, Y+18	; 0x12
 47a:	bb 89       	ldd	r27, Y+19	; 0x13
 47c:	e8 89       	ldd	r30, Y+16	; 0x10
 47e:	f9 89       	ldd	r31, Y+17	; 0x11
 480:	8c 91       	ld	r24, X
 482:	85 fd       	sbrc	r24, 5
 484:	03 c0       	rjmp	.+6      	; 0x48c <_ZN14HardwareSerial5flushEv+0x20>
 486:	80 81       	ld	r24, Z
 488:	86 fd       	sbrc	r24, 6
 48a:	0d c0       	rjmp	.+26     	; 0x4a6 <_ZN14HardwareSerial5flushEv+0x3a>
    if (bit_is_clear(SREG, SREG_I) && bit_is_set(*_ucsrb, UDRIE0))
 48c:	0f b6       	in	r0, 0x3f	; 63
 48e:	07 fc       	sbrc	r0, 7
 490:	f7 cf       	rjmp	.-18     	; 0x480 <_ZN14HardwareSerial5flushEv+0x14>
 492:	8c 91       	ld	r24, X
 494:	85 ff       	sbrs	r24, 5
 496:	f2 cf       	rjmp	.-28     	; 0x47c <_ZN14HardwareSerial5flushEv+0x10>
	if (bit_is_set(*_ucsra, UDRE0))
 498:	80 81       	ld	r24, Z
 49a:	85 ff       	sbrs	r24, 5
 49c:	ed cf       	rjmp	.-38     	; 0x478 <_ZN14HardwareSerial5flushEv+0xc>
	  _tx_udr_empty_irq();
 49e:	ce 01       	movw	r24, r28
 4a0:	0e 94 c7 01 	call	0x38e	; 0x38e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
 4a4:	e9 cf       	rjmp	.-46     	; 0x478 <_ZN14HardwareSerial5flushEv+0xc>
}
 4a6:	df 91       	pop	r29
 4a8:	cf 91       	pop	r28
 4aa:	08 95       	ret

000004ac <_ZN5Print7printlnEPKc.constprop.3>:
  size_t n = print(s);
  n += println();
  return n;
}

size_t Print::println(const char c[])
 4ac:	cf 93       	push	r28
 4ae:	df 93       	push	r29
    void clearWriteError() { setWriteError(0); }
  
    virtual size_t write(uint8_t) = 0;
    size_t write(const char *str) {
      if (str == NULL) return 0;
      return write((const uint8_t *)str, strlen(str));
 4b0:	fc 01       	movw	r30, r24
 4b2:	01 90       	ld	r0, Z+
 4b4:	00 20       	and	r0, r0
 4b6:	e9 f7       	brne	.-6      	; 0x4b2 <_ZN5Print7printlnEPKc.constprop.3+0x6>
 4b8:	31 97       	sbiw	r30, 0x01	; 1
 4ba:	af 01       	movw	r20, r30
 4bc:	48 1b       	sub	r20, r24
 4be:	59 0b       	sbc	r21, r25
 4c0:	bc 01       	movw	r22, r24
 4c2:	87 e4       	ldi	r24, 0x47	; 71
 4c4:	91 e0       	ldi	r25, 0x01	; 1
 4c6:	0e 94 49 01 	call	0x292	; 0x292 <_ZN5Print5writeEPKhj>
 4ca:	ec 01       	movw	r28, r24
 4cc:	42 e0       	ldi	r20, 0x02	; 2
 4ce:	50 e0       	ldi	r21, 0x00	; 0
 4d0:	6a e1       	ldi	r22, 0x1A	; 26
 4d2:	71 e0       	ldi	r23, 0x01	; 1
 4d4:	87 e4       	ldi	r24, 0x47	; 71
 4d6:	91 e0       	ldi	r25, 0x01	; 1
 4d8:	0e 94 49 01 	call	0x292	; 0x292 <_ZN5Print5writeEPKhj>
{
  size_t n = print(c);
  n += println();
  return n;
}
 4dc:	8c 0f       	add	r24, r28
 4de:	9d 1f       	adc	r25, r29
 4e0:	df 91       	pop	r29
 4e2:	cf 91       	pop	r28
 4e4:	08 95       	ret

000004e6 <_ZN5Traff12trafficLightEv>:
    {
        this->state = state;
    }

public:
    void trafficLight() 
 4e6:	1f 93       	push	r17
 4e8:	cf 93       	push	r28
 4ea:	df 93       	push	r29
 4ec:	fc 01       	movw	r30, r24
    {
        int red = this->red; 
 4ee:	16 81       	ldd	r17, Z+6	; 0x06
        int yel = this->yel;
 4f0:	c4 81       	ldd	r28, Z+4	; 0x04
        int gre = this->gre;
 4f2:	d2 81       	ldd	r29, Z+2	; 0x02

        
        switch (this->state)
 4f4:	80 81       	ld	r24, Z
 4f6:	91 81       	ldd	r25, Z+1	; 0x01
 4f8:	81 30       	cpi	r24, 0x01	; 1
 4fa:	91 05       	cpc	r25, r1
 4fc:	29 f1       	breq	.+74     	; 0x548 <_ZN5Traff12trafficLightEv+0x62>
 4fe:	34 f4       	brge	.+12     	; 0x50c <_ZN5Traff12trafficLightEv+0x26>
 500:	89 2b       	or	r24, r25
 502:	99 f0       	breq	.+38     	; 0x52a <_ZN5Traff12trafficLightEv+0x44>
            Serial.println("Yellow2");
            digitalWrite(yel, HIGH);
            digitalWrite(gre, LOW);
            break;
        }
    }
 504:	df 91       	pop	r29
 506:	cf 91       	pop	r28
 508:	1f 91       	pop	r17
 50a:	08 95       	ret
        switch (this->state)
 50c:	82 30       	cpi	r24, 0x02	; 2
 50e:	91 05       	cpc	r25, r1
 510:	09 f1       	breq	.+66     	; 0x554 <_ZN5Traff12trafficLightEv+0x6e>
 512:	03 97       	sbiw	r24, 0x03	; 3
 514:	b9 f7       	brne	.-18     	; 0x504 <_ZN5Traff12trafficLightEv+0x1e>
            Serial.println("Yellow2");
 516:	8f e2       	ldi	r24, 0x2F	; 47
 518:	91 e0       	ldi	r25, 0x01	; 1
 51a:	0e 94 56 02 	call	0x4ac	; 0x4ac <_ZN5Print7printlnEPKc.constprop.3>
            digitalWrite(yel, HIGH);
 51e:	61 e0       	ldi	r22, 0x01	; 1
 520:	8c 2f       	mov	r24, r28
 522:	0e 94 de 00 	call	0x1bc	; 0x1bc <digitalWrite>
            digitalWrite(gre, LOW);
 526:	60 e0       	ldi	r22, 0x00	; 0
 528:	22 c0       	rjmp	.+68     	; 0x56e <_ZN5Traff12trafficLightEv+0x88>
            Serial.println("red"); // red light on.
 52a:	8d e1       	ldi	r24, 0x1D	; 29
 52c:	91 e0       	ldi	r25, 0x01	; 1
 52e:	0e 94 56 02 	call	0x4ac	; 0x4ac <_ZN5Print7printlnEPKc.constprop.3>
            digitalWrite(red, HIGH);
 532:	61 e0       	ldi	r22, 0x01	; 1
 534:	81 2f       	mov	r24, r17
 536:	0e 94 de 00 	call	0x1bc	; 0x1bc <digitalWrite>
            digitalWrite(yel, LOW);
 53a:	60 e0       	ldi	r22, 0x00	; 0
            digitalWrite(yel, HIGH);
 53c:	8c 2f       	mov	r24, r28
    }
 53e:	df 91       	pop	r29
 540:	cf 91       	pop	r28
 542:	1f 91       	pop	r17
            digitalWrite(gre, LOW);
 544:	0c 94 de 00 	jmp	0x1bc	; 0x1bc <digitalWrite>
            Serial.println("Yellow1");
 548:	81 e2       	ldi	r24, 0x21	; 33
 54a:	91 e0       	ldi	r25, 0x01	; 1
 54c:	0e 94 56 02 	call	0x4ac	; 0x4ac <_ZN5Print7printlnEPKc.constprop.3>
            digitalWrite(yel, HIGH);
 550:	61 e0       	ldi	r22, 0x01	; 1
 552:	f4 cf       	rjmp	.-24     	; 0x53c <_ZN5Traff12trafficLightEv+0x56>
            Serial.println("Green");
 554:	89 e2       	ldi	r24, 0x29	; 41
 556:	91 e0       	ldi	r25, 0x01	; 1
 558:	0e 94 56 02 	call	0x4ac	; 0x4ac <_ZN5Print7printlnEPKc.constprop.3>
            digitalWrite(red, LOW);
 55c:	60 e0       	ldi	r22, 0x00	; 0
 55e:	81 2f       	mov	r24, r17
 560:	0e 94 de 00 	call	0x1bc	; 0x1bc <digitalWrite>
            digitalWrite(yel, LOW);
 564:	60 e0       	ldi	r22, 0x00	; 0
 566:	8c 2f       	mov	r24, r28
 568:	0e 94 de 00 	call	0x1bc	; 0x1bc <digitalWrite>
            digitalWrite(gre, HIGH);
 56c:	61 e0       	ldi	r22, 0x01	; 1
            digitalWrite(gre, LOW);
 56e:	8d 2f       	mov	r24, r29
 570:	e6 cf       	rjmp	.-52     	; 0x53e <_ZN5Traff12trafficLightEv+0x58>

00000572 <_Z11progressioniii>:
    }
}

void progression(int newstate, int light1, int light2) //handles state change forwarding.
{
    light_state = newstate;
 572:	90 93 3d 01 	sts	0x013D, r25	; 0x80013d <light_state+0x1>
 576:	80 93 3c 01 	sts	0x013C, r24	; 0x80013c <light_state>
        this->state = state;
 57a:	70 93 ed 01 	sts	0x01ED, r23	; 0x8001ed <traffic1+0x1>
 57e:	60 93 ec 01 	sts	0x01EC, r22	; 0x8001ec <traffic1>
 582:	50 93 e5 01 	sts	0x01E5, r21	; 0x8001e5 <traffic2+0x1>
 586:	40 93 e4 01 	sts	0x01E4, r20	; 0x8001e4 <traffic2>

void lightStates(int light1, int light2) // changes state of each object and executes light-change accordingly.
{
    traffic1.setState(light1); // set state for light one.
    traffic2.setState(light2); 
    traffic1.trafficLight();   // enact light change for light one.
 58a:	8c ee       	ldi	r24, 0xEC	; 236
 58c:	91 e0       	ldi	r25, 0x01	; 1
 58e:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN5Traff12trafficLightEv>
    traffic2.trafficLight();   
 592:	84 ee       	ldi	r24, 0xE4	; 228
 594:	91 e0       	ldi	r25, 0x01	; 1
 596:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN5Traff12trafficLightEv>
    traffic_timer = millis();
 59a:	0e 94 3d 01 	call	0x27a	; 0x27a <millis>
 59e:	60 93 38 01 	sts	0x0138, r22	; 0x800138 <traffic_timer>
 5a2:	70 93 39 01 	sts	0x0139, r23	; 0x800139 <traffic_timer+0x1>
 5a6:	80 93 3a 01 	sts	0x013A, r24	; 0x80013a <traffic_timer+0x2>
 5aa:	90 93 3b 01 	sts	0x013B, r25	; 0x80013b <traffic_timer+0x3>
}
 5ae:	08 95       	ret

000005b0 <__vector_16>:
{
 5b0:	1f 92       	push	r1
 5b2:	0f 92       	push	r0
 5b4:	0f b6       	in	r0, 0x3f	; 63
 5b6:	0f 92       	push	r0
 5b8:	11 24       	eor	r1, r1
 5ba:	2f 93       	push	r18
 5bc:	3f 93       	push	r19
 5be:	8f 93       	push	r24
 5c0:	9f 93       	push	r25
 5c2:	af 93       	push	r26
 5c4:	bf 93       	push	r27
	unsigned long m = timer0_millis;
 5c6:	80 91 43 01 	lds	r24, 0x0143	; 0x800143 <timer0_millis>
 5ca:	90 91 44 01 	lds	r25, 0x0144	; 0x800144 <timer0_millis+0x1>
 5ce:	a0 91 45 01 	lds	r26, 0x0145	; 0x800145 <timer0_millis+0x2>
 5d2:	b0 91 46 01 	lds	r27, 0x0146	; 0x800146 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
 5d6:	30 91 42 01 	lds	r19, 0x0142	; 0x800142 <timer0_fract>
	f += FRACT_INC;
 5da:	23 e0       	ldi	r18, 0x03	; 3
 5dc:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
 5de:	2d 37       	cpi	r18, 0x7D	; 125
 5e0:	58 f5       	brcc	.+86     	; 0x638 <__vector_16+0x88>
	m += MILLIS_INC;
 5e2:	01 96       	adiw	r24, 0x01	; 1
 5e4:	a1 1d       	adc	r26, r1
 5e6:	b1 1d       	adc	r27, r1
	timer0_fract = f;
 5e8:	20 93 42 01 	sts	0x0142, r18	; 0x800142 <timer0_fract>
	timer0_millis = m;
 5ec:	80 93 43 01 	sts	0x0143, r24	; 0x800143 <timer0_millis>
 5f0:	90 93 44 01 	sts	0x0144, r25	; 0x800144 <timer0_millis+0x1>
 5f4:	a0 93 45 01 	sts	0x0145, r26	; 0x800145 <timer0_millis+0x2>
 5f8:	b0 93 46 01 	sts	0x0146, r27	; 0x800146 <timer0_millis+0x3>
	timer0_overflow_count++;
 5fc:	80 91 3e 01 	lds	r24, 0x013E	; 0x80013e <timer0_overflow_count>
 600:	90 91 3f 01 	lds	r25, 0x013F	; 0x80013f <timer0_overflow_count+0x1>
 604:	a0 91 40 01 	lds	r26, 0x0140	; 0x800140 <timer0_overflow_count+0x2>
 608:	b0 91 41 01 	lds	r27, 0x0141	; 0x800141 <timer0_overflow_count+0x3>
 60c:	01 96       	adiw	r24, 0x01	; 1
 60e:	a1 1d       	adc	r26, r1
 610:	b1 1d       	adc	r27, r1
 612:	80 93 3e 01 	sts	0x013E, r24	; 0x80013e <timer0_overflow_count>
 616:	90 93 3f 01 	sts	0x013F, r25	; 0x80013f <timer0_overflow_count+0x1>
 61a:	a0 93 40 01 	sts	0x0140, r26	; 0x800140 <timer0_overflow_count+0x2>
 61e:	b0 93 41 01 	sts	0x0141, r27	; 0x800141 <timer0_overflow_count+0x3>
}
 622:	bf 91       	pop	r27
 624:	af 91       	pop	r26
 626:	9f 91       	pop	r25
 628:	8f 91       	pop	r24
 62a:	3f 91       	pop	r19
 62c:	2f 91       	pop	r18
 62e:	0f 90       	pop	r0
 630:	0f be       	out	0x3f, r0	; 63
 632:	0f 90       	pop	r0
 634:	1f 90       	pop	r1
 636:	18 95       	reti
		f -= FRACT_MAX;
 638:	26 e8       	ldi	r18, 0x86	; 134
 63a:	23 0f       	add	r18, r19
		m += 1;
 63c:	02 96       	adiw	r24, 0x02	; 2
 63e:	a1 1d       	adc	r26, r1
 640:	b1 1d       	adc	r27, r1
 642:	d2 cf       	rjmp	.-92     	; 0x5e8 <__vector_16+0x38>

00000644 <__vector_19>:
{
 644:	1f 92       	push	r1
 646:	0f 92       	push	r0
 648:	0f b6       	in	r0, 0x3f	; 63
 64a:	0f 92       	push	r0
 64c:	11 24       	eor	r1, r1
 64e:	2f 93       	push	r18
 650:	3f 93       	push	r19
 652:	4f 93       	push	r20
 654:	5f 93       	push	r21
 656:	6f 93       	push	r22
 658:	7f 93       	push	r23
 65a:	8f 93       	push	r24
 65c:	9f 93       	push	r25
 65e:	af 93       	push	r26
 660:	bf 93       	push	r27
 662:	ef 93       	push	r30
 664:	ff 93       	push	r31
  Serial._tx_udr_empty_irq();
 666:	87 e4       	ldi	r24, 0x47	; 71
 668:	91 e0       	ldi	r25, 0x01	; 1
 66a:	0e 94 c7 01 	call	0x38e	; 0x38e <_ZN14HardwareSerial17_tx_udr_empty_irqEv>
}
 66e:	ff 91       	pop	r31
 670:	ef 91       	pop	r30
 672:	bf 91       	pop	r27
 674:	af 91       	pop	r26
 676:	9f 91       	pop	r25
 678:	8f 91       	pop	r24
 67a:	7f 91       	pop	r23
 67c:	6f 91       	pop	r22
 67e:	5f 91       	pop	r21
 680:	4f 91       	pop	r20
 682:	3f 91       	pop	r19
 684:	2f 91       	pop	r18
 686:	0f 90       	pop	r0
 688:	0f be       	out	0x3f, r0	; 63
 68a:	0f 90       	pop	r0
 68c:	1f 90       	pop	r1
 68e:	18 95       	reti

00000690 <__vector_18>:
  {
 690:	1f 92       	push	r1
 692:	0f 92       	push	r0
 694:	0f b6       	in	r0, 0x3f	; 63
 696:	0f 92       	push	r0
 698:	11 24       	eor	r1, r1
 69a:	2f 93       	push	r18
 69c:	8f 93       	push	r24
 69e:	9f 93       	push	r25
 6a0:	ef 93       	push	r30
 6a2:	ff 93       	push	r31

// Actual interrupt handlers //////////////////////////////////////////////////////////////

void HardwareSerial::_rx_complete_irq(void)
{
  if (bit_is_clear(*_ucsra, UPE0)) {
 6a4:	e0 91 57 01 	lds	r30, 0x0157	; 0x800157 <Serial+0x10>
 6a8:	f0 91 58 01 	lds	r31, 0x0158	; 0x800158 <Serial+0x11>
 6ac:	80 81       	ld	r24, Z
 6ae:	e0 91 5d 01 	lds	r30, 0x015D	; 0x80015d <Serial+0x16>
 6b2:	f0 91 5e 01 	lds	r31, 0x015E	; 0x80015e <Serial+0x17>
 6b6:	82 fd       	sbrc	r24, 2
 6b8:	1b c0       	rjmp	.+54     	; 0x6f0 <__vector_18+0x60>
    // No Parity error, read byte and store it in the buffer if there is
    // room
    unsigned char c = *_udr;
 6ba:	90 81       	ld	r25, Z
    rx_buffer_index_t i = (unsigned int)(_rx_buffer_head + 1) % SERIAL_RX_BUFFER_SIZE;
 6bc:	80 91 60 01 	lds	r24, 0x0160	; 0x800160 <Serial+0x19>
 6c0:	8f 5f       	subi	r24, 0xFF	; 255
 6c2:	8f 73       	andi	r24, 0x3F	; 63

    // if we should be storing the received character into the location
    // just before the tail (meaning that the head would advance to the
    // current location of the tail), we're about to overflow the buffer
    // and so we don't write the character or advance the head.
    if (i != _rx_buffer_tail) {
 6c4:	20 91 61 01 	lds	r18, 0x0161	; 0x800161 <Serial+0x1a>
 6c8:	82 17       	cp	r24, r18
 6ca:	41 f0       	breq	.+16     	; 0x6dc <__vector_18+0x4c>
      _rx_buffer[_rx_buffer_head] = c;
 6cc:	e0 91 60 01 	lds	r30, 0x0160	; 0x800160 <Serial+0x19>
 6d0:	f0 e0       	ldi	r31, 0x00	; 0
 6d2:	e9 5b       	subi	r30, 0xB9	; 185
 6d4:	fe 4f       	sbci	r31, 0xFE	; 254
 6d6:	95 8f       	std	Z+29, r25	; 0x1d
      _rx_buffer_head = i;
 6d8:	80 93 60 01 	sts	0x0160, r24	; 0x800160 <Serial+0x19>
  }
 6dc:	ff 91       	pop	r31
 6de:	ef 91       	pop	r30
 6e0:	9f 91       	pop	r25
 6e2:	8f 91       	pop	r24
 6e4:	2f 91       	pop	r18
 6e6:	0f 90       	pop	r0
 6e8:	0f be       	out	0x3f, r0	; 63
 6ea:	0f 90       	pop	r0
 6ec:	1f 90       	pop	r1
 6ee:	18 95       	reti
    }
  } else {
    // Parity error, read byte but discard it
    *_udr;
 6f0:	80 81       	ld	r24, Z
 6f2:	f4 cf       	rjmp	.-24     	; 0x6dc <__vector_18+0x4c>

000006f4 <_GLOBAL__I_65535_0_trafficLight.ino.cpp.o.1780>:
 6f4:	cf 93       	push	r28
 6f6:	df 93       	push	r29
 6f8:	e7 e4       	ldi	r30, 0x47	; 71
 6fa:	f1 e0       	ldi	r31, 0x01	; 1
 6fc:	13 82       	std	Z+3, r1	; 0x03
 6fe:	12 82       	std	Z+2, r1	; 0x02
 700:	88 ee       	ldi	r24, 0xE8	; 232
 702:	93 e0       	ldi	r25, 0x03	; 3
 704:	a0 e0       	ldi	r26, 0x00	; 0
 706:	b0 e0       	ldi	r27, 0x00	; 0
 708:	84 83       	std	Z+4, r24	; 0x04
 70a:	95 83       	std	Z+5, r25	; 0x05
 70c:	a6 83       	std	Z+6, r26	; 0x06
 70e:	b7 83       	std	Z+7, r27	; 0x07
 710:	8c e0       	ldi	r24, 0x0C	; 12
 712:	91 e0       	ldi	r25, 0x01	; 1
 714:	91 83       	std	Z+1, r25	; 0x01
 716:	80 83       	st	Z, r24
 718:	85 ec       	ldi	r24, 0xC5	; 197
 71a:	90 e0       	ldi	r25, 0x00	; 0
 71c:	95 87       	std	Z+13, r25	; 0x0d
 71e:	84 87       	std	Z+12, r24	; 0x0c
 720:	84 ec       	ldi	r24, 0xC4	; 196
 722:	90 e0       	ldi	r25, 0x00	; 0
 724:	97 87       	std	Z+15, r25	; 0x0f
 726:	86 87       	std	Z+14, r24	; 0x0e
 728:	80 ec       	ldi	r24, 0xC0	; 192
 72a:	90 e0       	ldi	r25, 0x00	; 0
 72c:	91 8b       	std	Z+17, r25	; 0x11
 72e:	80 8b       	std	Z+16, r24	; 0x10
 730:	81 ec       	ldi	r24, 0xC1	; 193
 732:	90 e0       	ldi	r25, 0x00	; 0
 734:	93 8b       	std	Z+19, r25	; 0x13
 736:	82 8b       	std	Z+18, r24	; 0x12
 738:	82 ec       	ldi	r24, 0xC2	; 194
 73a:	90 e0       	ldi	r25, 0x00	; 0
 73c:	95 8b       	std	Z+21, r25	; 0x15
 73e:	84 8b       	std	Z+20, r24	; 0x14
 740:	86 ec       	ldi	r24, 0xC6	; 198
 742:	90 e0       	ldi	r25, 0x00	; 0
 744:	97 8b       	std	Z+23, r25	; 0x17
 746:	86 8b       	std	Z+22, r24	; 0x16
 748:	11 8e       	std	Z+25, r1	; 0x19
 74a:	12 8e       	std	Z+26, r1	; 0x1a
 74c:	13 8e       	std	Z+27, r1	; 0x1b
 74e:	14 8e       	std	Z+28, r1	; 0x1c
 750:	cc ee       	ldi	r28, 0xEC	; 236
 752:	d1 e0       	ldi	r29, 0x01	; 1
 754:	89 e0       	ldi	r24, 0x09	; 9
 756:	90 e0       	ldi	r25, 0x00	; 0
 758:	9b 83       	std	Y+3, r25	; 0x03
 75a:	8a 83       	std	Y+2, r24	; 0x02
 75c:	88 e0       	ldi	r24, 0x08	; 8
 75e:	90 e0       	ldi	r25, 0x00	; 0
 760:	9d 83       	std	Y+5, r25	; 0x05
 762:	8c 83       	std	Y+4, r24	; 0x04
 764:	87 e0       	ldi	r24, 0x07	; 7
 766:	90 e0       	ldi	r25, 0x00	; 0
 768:	9f 83       	std	Y+7, r25	; 0x07
 76a:	8e 83       	std	Y+6, r24	; 0x06
 76c:	61 e0       	ldi	r22, 0x01	; 1
 76e:	89 e0       	ldi	r24, 0x09	; 9
 770:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
 774:	61 e0       	ldi	r22, 0x01	; 1
 776:	8c 81       	ldd	r24, Y+4	; 0x04
 778:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
 77c:	61 e0       	ldi	r22, 0x01	; 1
 77e:	8e 81       	ldd	r24, Y+6	; 0x06
 780:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
 784:	c4 ee       	ldi	r28, 0xE4	; 228
 786:	d1 e0       	ldi	r29, 0x01	; 1
 788:	86 e0       	ldi	r24, 0x06	; 6
 78a:	90 e0       	ldi	r25, 0x00	; 0
 78c:	9b 83       	std	Y+3, r25	; 0x03
 78e:	8a 83       	std	Y+2, r24	; 0x02
 790:	85 e0       	ldi	r24, 0x05	; 5
 792:	90 e0       	ldi	r25, 0x00	; 0
 794:	9d 83       	std	Y+5, r25	; 0x05
 796:	8c 83       	std	Y+4, r24	; 0x04
 798:	84 e0       	ldi	r24, 0x04	; 4
 79a:	90 e0       	ldi	r25, 0x00	; 0
 79c:	9f 83       	std	Y+7, r25	; 0x07
 79e:	8e 83       	std	Y+6, r24	; 0x06
 7a0:	61 e0       	ldi	r22, 0x01	; 1
 7a2:	86 e0       	ldi	r24, 0x06	; 6
 7a4:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
 7a8:	61 e0       	ldi	r22, 0x01	; 1
 7aa:	8c 81       	ldd	r24, Y+4	; 0x04
 7ac:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
 7b0:	61 e0       	ldi	r22, 0x01	; 1
 7b2:	8e 81       	ldd	r24, Y+6	; 0x06
 7b4:	df 91       	pop	r29
 7b6:	cf 91       	pop	r28
 7b8:	0c 94 0c 01 	jmp	0x218	; 0x218 <pinMode>

000007bc <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
 7bc:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
 7be:	84 b5       	in	r24, 0x24	; 36
 7c0:	82 60       	ori	r24, 0x02	; 2
 7c2:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
 7c4:	84 b5       	in	r24, 0x24	; 36
 7c6:	81 60       	ori	r24, 0x01	; 1
 7c8:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
 7ca:	85 b5       	in	r24, 0x25	; 37
 7cc:	82 60       	ori	r24, 0x02	; 2
 7ce:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
 7d0:	85 b5       	in	r24, 0x25	; 37
 7d2:	81 60       	ori	r24, 0x01	; 1
 7d4:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
 7d6:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
 7da:	81 60       	ori	r24, 0x01	; 1
 7dc:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
 7e0:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
 7e4:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
 7e8:	82 60       	ori	r24, 0x02	; 2
 7ea:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
 7ee:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
 7f2:	81 60       	ori	r24, 0x01	; 1
 7f4:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
 7f8:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 7fc:	81 60       	ori	r24, 0x01	; 1
 7fe:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
 802:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
 806:	84 60       	ori	r24, 0x04	; 4
 808:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
 80c:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
 810:	81 60       	ori	r24, 0x01	; 1
 812:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
 816:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 81a:	84 60       	ori	r24, 0x04	; 4
 81c:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
 820:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 824:	82 60       	ori	r24, 0x02	; 2
 826:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
 82a:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 82e:	81 60       	ori	r24, 0x01	; 1
 830:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
 834:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 838:	80 68       	ori	r24, 0x80	; 128
 83a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
 83e:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
  *_ucsra = 1 << U2X0;
 842:	e0 91 57 01 	lds	r30, 0x0157	; 0x800157 <Serial+0x10>
 846:	f0 91 58 01 	lds	r31, 0x0158	; 0x800158 <Serial+0x11>
 84a:	82 e0       	ldi	r24, 0x02	; 2
 84c:	80 83       	st	Z, r24
  *_ubrrh = baud_setting >> 8;
 84e:	e0 91 53 01 	lds	r30, 0x0153	; 0x800153 <Serial+0xc>
 852:	f0 91 54 01 	lds	r31, 0x0154	; 0x800154 <Serial+0xd>
 856:	10 82       	st	Z, r1
  *_ubrrl = baud_setting;
 858:	e0 91 55 01 	lds	r30, 0x0155	; 0x800155 <Serial+0xe>
 85c:	f0 91 56 01 	lds	r31, 0x0156	; 0x800156 <Serial+0xf>
 860:	8f ec       	ldi	r24, 0xCF	; 207
 862:	80 83       	st	Z, r24
  _written = false;
 864:	10 92 5f 01 	sts	0x015F, r1	; 0x80015f <Serial+0x18>
  *_ucsrc = config;
 868:	e0 91 5b 01 	lds	r30, 0x015B	; 0x80015b <Serial+0x14>
 86c:	f0 91 5c 01 	lds	r31, 0x015C	; 0x80015c <Serial+0x15>
 870:	86 e0       	ldi	r24, 0x06	; 6
 872:	80 83       	st	Z, r24
  sbi(*_ucsrb, RXEN0);
 874:	e0 91 59 01 	lds	r30, 0x0159	; 0x800159 <Serial+0x12>
 878:	f0 91 5a 01 	lds	r31, 0x015A	; 0x80015a <Serial+0x13>
 87c:	80 81       	ld	r24, Z
 87e:	80 61       	ori	r24, 0x10	; 16
 880:	80 83       	st	Z, r24
  sbi(*_ucsrb, TXEN0);
 882:	e0 91 59 01 	lds	r30, 0x0159	; 0x800159 <Serial+0x12>
 886:	f0 91 5a 01 	lds	r31, 0x015A	; 0x80015a <Serial+0x13>
 88a:	80 81       	ld	r24, Z
 88c:	88 60       	ori	r24, 0x08	; 8
 88e:	80 83       	st	Z, r24
  sbi(*_ucsrb, RXCIE0);
 890:	e0 91 59 01 	lds	r30, 0x0159	; 0x800159 <Serial+0x12>
 894:	f0 91 5a 01 	lds	r31, 0x015A	; 0x80015a <Serial+0x13>
 898:	80 81       	ld	r24, Z
 89a:	80 68       	ori	r24, 0x80	; 128
 89c:	80 83       	st	Z, r24
  cbi(*_ucsrb, UDRIE0);
 89e:	e0 91 59 01 	lds	r30, 0x0159	; 0x800159 <Serial+0x12>
 8a2:	f0 91 5a 01 	lds	r31, 0x015A	; 0x80015a <Serial+0x13>
 8a6:	80 81       	ld	r24, Z
 8a8:	8f 7d       	andi	r24, 0xDF	; 223
 8aa:	80 83       	st	Z, r24
    traffic_timer = millis(); // Initiate traffic_timer
 8ac:	0e 94 3d 01 	call	0x27a	; 0x27a <millis>
 8b0:	60 93 38 01 	sts	0x0138, r22	; 0x800138 <traffic_timer>
 8b4:	70 93 39 01 	sts	0x0139, r23	; 0x800139 <traffic_timer+0x1>
 8b8:	80 93 3a 01 	sts	0x013A, r24	; 0x80013a <traffic_timer+0x2>
 8bc:	90 93 3b 01 	sts	0x013B, r25	; 0x80013b <traffic_timer+0x3>
    progression(YELLOW_BEFORE_GREEN, YELLOW_BEFORE_GREEN, YELLOW_BEFORE_RED);
 8c0:	43 e0       	ldi	r20, 0x03	; 3
 8c2:	50 e0       	ldi	r21, 0x00	; 0
 8c4:	61 e0       	ldi	r22, 0x01	; 1
 8c6:	70 e0       	ldi	r23, 0x00	; 0
 8c8:	81 e0       	ldi	r24, 0x01	; 1
 8ca:	90 e0       	ldi	r25, 0x00	; 0
 8cc:	0e 94 b9 02 	call	0x572	; 0x572 <_Z11progressioniii>
    pinMode(&button1, INPUT_PULLUP);
 8d0:	c6 e0       	ldi	r28, 0x06	; 6
 8d2:	d1 e0       	ldi	r29, 0x01	; 1
 8d4:	62 e0       	ldi	r22, 0x02	; 2
 8d6:	8c 2f       	mov	r24, r28
 8d8:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
    pinMode(&button2, INPUT_PULLUP);
 8dc:	84 e0       	ldi	r24, 0x04	; 4
 8de:	91 e0       	ldi	r25, 0x01	; 1
 8e0:	d8 2f       	mov	r29, r24
 8e2:	62 e0       	ldi	r22, 0x02	; 2
 8e4:	0e 94 0c 01 	call	0x218	; 0x218 <pinMode>
        if (millis() - traffic_timer > green_red_time * msGreen)
 8e8:	85 e0       	ldi	r24, 0x05	; 5
 8ea:	d8 2e       	mov	r13, r24
  if (Serial0_available && serialEvent && Serial0_available()) serialEvent();
 8ec:	90 e0       	ldi	r25, 0x00	; 0
 8ee:	e9 2e       	mov	r14, r25
 8f0:	90 e0       	ldi	r25, 0x00	; 0
 8f2:	f9 2e       	mov	r15, r25
            msGreen = 1000;
 8f4:	08 ee       	ldi	r16, 0xE8	; 232
 8f6:	13 e0       	ldi	r17, 0x03	; 3
    bool but1 = digitalRead(&button1);
 8f8:	8c 2f       	mov	r24, r28
 8fa:	0e 94 b5 00 	call	0x16a	; 0x16a <digitalRead>
 8fe:	5c 01       	movw	r10, r24
    bool but2 = digitalRead(&button2);
 900:	8d 2f       	mov	r24, r29
 902:	0e 94 b5 00 	call	0x16a	; 0x16a <digitalRead>
    switch (light_state) // Change states and handle output
 906:	20 91 3c 01 	lds	r18, 0x013C	; 0x80013c <light_state>
 90a:	30 91 3d 01 	lds	r19, 0x013D	; 0x80013d <light_state+0x1>
 90e:	21 30       	cpi	r18, 0x01	; 1
 910:	31 05       	cpc	r19, r1
 912:	09 f4       	brne	.+2      	; 0x916 <__stack+0x17>
 914:	90 c0       	rjmp	.+288    	; 0xa36 <__stack+0x137>
 916:	6c f4       	brge	.+26     	; 0x932 <__stack+0x33>
 918:	23 2b       	or	r18, r19
 91a:	09 f4       	brne	.+2      	; 0x91e <__stack+0x1f>
 91c:	4c c0       	rjmp	.+152    	; 0x9b6 <__stack+0xb7>
 91e:	e1 14       	cp	r14, r1
 920:	f1 04       	cpc	r15, r1
 922:	51 f3       	breq	.-44     	; 0x8f8 <main+0x13c>
 924:	0e 94 b3 01 	call	0x366	; 0x366 <_Z17Serial0_availablev>
 928:	88 23       	and	r24, r24
 92a:	31 f3       	breq	.-52     	; 0x8f8 <main+0x13c>
 92c:	0e 94 00 00 	call	0	; 0x0 <__vectors>
 930:	e3 cf       	rjmp	.-58     	; 0x8f8 <main+0x13c>
 932:	22 30       	cpi	r18, 0x02	; 2
 934:	31 05       	cpc	r19, r1
 936:	09 f4       	brne	.+2      	; 0x93a <__stack+0x3b>
 938:	b9 c0       	rjmp	.+370    	; 0xaac <__stack+0x1ad>
 93a:	23 30       	cpi	r18, 0x03	; 3
 93c:	31 05       	cpc	r19, r1
 93e:	79 f7       	brne	.-34     	; 0x91e <__stack+0x1f>
        msRed = msChange(msRed, but2);
 940:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <msRed>
 944:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <msRed+0x1>
}

int msChange(int msThing, int but) 
{
    return msThing == 1000 ? lightbutton(but) : msThing;
 948:	28 3e       	cpi	r18, 0xE8	; 232
 94a:	43 e0       	ldi	r20, 0x03	; 3
 94c:	34 07       	cpc	r19, r20
 94e:	21 f4       	brne	.+8      	; 0x958 <__stack+0x59>
}

int lightbutton(int butt)
{
    return !butt ? 2000 : 1000;
 950:	89 2b       	or	r24, r25
 952:	11 f4       	brne	.+4      	; 0x958 <__stack+0x59>
 954:	20 ed       	ldi	r18, 0xD0	; 208
 956:	37 e0       	ldi	r19, 0x07	; 7
        msRed = msChange(msRed, but2);
 958:	30 93 01 01 	sts	0x0101, r19	; 0x800101 <msRed+0x1>
 95c:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <msRed>
        msGreen = msChange(msGreen, but1);
 960:	80 91 02 01 	lds	r24, 0x0102	; 0x800102 <msGreen>
 964:	90 91 03 01 	lds	r25, 0x0103	; 0x800103 <msGreen+0x1>
    return msThing == 1000 ? lightbutton(but) : msThing;
 968:	88 3e       	cpi	r24, 0xE8	; 232
 96a:	23 e0       	ldi	r18, 0x03	; 3
 96c:	92 07       	cpc	r25, r18
 96e:	21 f4       	brne	.+8      	; 0x978 <__stack+0x79>
    return !butt ? 2000 : 1000;
 970:	ab 28       	or	r10, r11
 972:	11 f4       	brne	.+4      	; 0x978 <__stack+0x79>
 974:	80 ed       	ldi	r24, 0xD0	; 208
 976:	97 e0       	ldi	r25, 0x07	; 7
        msGreen = msChange(msGreen, but1);
 978:	90 93 03 01 	sts	0x0103, r25	; 0x800103 <msGreen+0x1>
 97c:	80 93 02 01 	sts	0x0102, r24	; 0x800102 <msGreen>
        if (millis() - traffic_timer > yellow_time * 1000)
 980:	0e 94 3d 01 	call	0x27a	; 0x27a <millis>
 984:	80 90 38 01 	lds	r8, 0x0138	; 0x800138 <traffic_timer>
 988:	90 90 39 01 	lds	r9, 0x0139	; 0x800139 <traffic_timer+0x1>
 98c:	a0 90 3a 01 	lds	r10, 0x013A	; 0x80013a <traffic_timer+0x2>
 990:	b0 90 3b 01 	lds	r11, 0x013B	; 0x80013b <traffic_timer+0x3>
 994:	68 19       	sub	r22, r8
 996:	79 09       	sbc	r23, r9
 998:	8a 09       	sbc	r24, r10
 99a:	9b 09       	sbc	r25, r11
 99c:	69 3e       	cpi	r22, 0xE9	; 233
 99e:	73 40       	sbci	r23, 0x03	; 3
 9a0:	81 05       	cpc	r24, r1
 9a2:	91 05       	cpc	r25, r1
 9a4:	08 f4       	brcc	.+2      	; 0x9a8 <__stack+0xa9>
 9a6:	bb cf       	rjmp	.-138    	; 0x91e <__stack+0x1f>
            progression(RED, RED, GREEN);
 9a8:	42 e0       	ldi	r20, 0x02	; 2
 9aa:	50 e0       	ldi	r21, 0x00	; 0
 9ac:	70 e0       	ldi	r23, 0x00	; 0
 9ae:	60 e0       	ldi	r22, 0x00	; 0
 9b0:	90 e0       	ldi	r25, 0x00	; 0
 9b2:	80 e0       	ldi	r24, 0x00	; 0
 9b4:	3d c0       	rjmp	.+122    	; 0xa30 <__stack+0x131>
        msGreen = msChange(msGreen, but1);
 9b6:	80 91 02 01 	lds	r24, 0x0102	; 0x800102 <msGreen>
 9ba:	90 91 03 01 	lds	r25, 0x0103	; 0x800103 <msGreen+0x1>
    return msThing == 1000 ? lightbutton(but) : msThing;
 9be:	88 3e       	cpi	r24, 0xE8	; 232
 9c0:	23 e0       	ldi	r18, 0x03	; 3
 9c2:	92 07       	cpc	r25, r18
 9c4:	21 f4       	brne	.+8      	; 0x9ce <__stack+0xcf>
    return !butt ? 2000 : 1000;
 9c6:	ab 28       	or	r10, r11
 9c8:	11 f4       	brne	.+4      	; 0x9ce <__stack+0xcf>
 9ca:	80 ed       	ldi	r24, 0xD0	; 208
 9cc:	97 e0       	ldi	r25, 0x07	; 7
        msGreen = msChange(msGreen, but1);
 9ce:	90 93 03 01 	sts	0x0103, r25	; 0x800103 <msGreen+0x1>
 9d2:	80 93 02 01 	sts	0x0102, r24	; 0x800102 <msGreen>
        if (millis() - traffic_timer > green_red_time * msRed)
 9d6:	0e 94 3d 01 	call	0x27a	; 0x27a <millis>
 9da:	80 90 38 01 	lds	r8, 0x0138	; 0x800138 <traffic_timer>
 9de:	90 90 39 01 	lds	r9, 0x0139	; 0x800139 <traffic_timer+0x1>
 9e2:	a0 90 3a 01 	lds	r10, 0x013A	; 0x80013a <traffic_timer+0x2>
 9e6:	b0 90 3b 01 	lds	r11, 0x013B	; 0x80013b <traffic_timer+0x3>
 9ea:	ab 01       	movw	r20, r22
 9ec:	bc 01       	movw	r22, r24
 9ee:	48 19       	sub	r20, r8
 9f0:	59 09       	sbc	r21, r9
 9f2:	6a 09       	sbc	r22, r10
 9f4:	7b 09       	sbc	r23, r11
 9f6:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <msRed>
 9fa:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <msRed+0x1>
 9fe:	d2 9e       	mul	r13, r18
 a00:	c0 01       	movw	r24, r0
 a02:	d3 9e       	mul	r13, r19
 a04:	90 0d       	add	r25, r0
 a06:	11 24       	eor	r1, r1
 a08:	09 2e       	mov	r0, r25
 a0a:	00 0c       	add	r0, r0
 a0c:	aa 0b       	sbc	r26, r26
 a0e:	bb 0b       	sbc	r27, r27
 a10:	84 17       	cp	r24, r20
 a12:	95 07       	cpc	r25, r21
 a14:	a6 07       	cpc	r26, r22
 a16:	b7 07       	cpc	r27, r23
 a18:	08 f0       	brcs	.+2      	; 0xa1c <__stack+0x11d>
 a1a:	81 cf       	rjmp	.-254    	; 0x91e <__stack+0x1f>
            msRed = 1000;
 a1c:	10 93 01 01 	sts	0x0101, r17	; 0x800101 <msRed+0x1>
 a20:	00 93 00 01 	sts	0x0100, r16	; 0x800100 <msRed>
            progression(YELLOW_BEFORE_GREEN, YELLOW_BEFORE_GREEN, YELLOW_BEFORE_RED);
 a24:	43 e0       	ldi	r20, 0x03	; 3
 a26:	50 e0       	ldi	r21, 0x00	; 0
 a28:	61 e0       	ldi	r22, 0x01	; 1
 a2a:	70 e0       	ldi	r23, 0x00	; 0
 a2c:	81 e0       	ldi	r24, 0x01	; 1
 a2e:	90 e0       	ldi	r25, 0x00	; 0
            progression(RED, RED, GREEN);
 a30:	0e 94 b9 02 	call	0x572	; 0x572 <_Z11progressioniii>
 a34:	74 cf       	rjmp	.-280    	; 0x91e <__stack+0x1f>
        msRed = msChange(msRed, but2);
 a36:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <msRed>
 a3a:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <msRed+0x1>
    return msThing == 1000 ? lightbutton(but) : msThing;
 a3e:	28 3e       	cpi	r18, 0xE8	; 232
 a40:	43 e0       	ldi	r20, 0x03	; 3
 a42:	34 07       	cpc	r19, r20
 a44:	21 f4       	brne	.+8      	; 0xa4e <__stack+0x14f>
    return !butt ? 2000 : 1000;
 a46:	89 2b       	or	r24, r25
 a48:	11 f4       	brne	.+4      	; 0xa4e <__stack+0x14f>
 a4a:	20 ed       	ldi	r18, 0xD0	; 208
 a4c:	37 e0       	ldi	r19, 0x07	; 7
        msRed = msChange(msRed, but2);
 a4e:	30 93 01 01 	sts	0x0101, r19	; 0x800101 <msRed+0x1>
 a52:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <msRed>
        msGreen = msChange(msGreen, but1);
 a56:	80 91 02 01 	lds	r24, 0x0102	; 0x800102 <msGreen>
 a5a:	90 91 03 01 	lds	r25, 0x0103	; 0x800103 <msGreen+0x1>
    return msThing == 1000 ? lightbutton(but) : msThing;
 a5e:	88 3e       	cpi	r24, 0xE8	; 232
 a60:	23 e0       	ldi	r18, 0x03	; 3
 a62:	92 07       	cpc	r25, r18
 a64:	21 f4       	brne	.+8      	; 0xa6e <__stack+0x16f>
    return !butt ? 2000 : 1000;
 a66:	ab 28       	or	r10, r11
 a68:	11 f4       	brne	.+4      	; 0xa6e <__stack+0x16f>
 a6a:	80 ed       	ldi	r24, 0xD0	; 208
 a6c:	97 e0       	ldi	r25, 0x07	; 7
        msGreen = msChange(msGreen, but1);
 a6e:	90 93 03 01 	sts	0x0103, r25	; 0x800103 <msGreen+0x1>
 a72:	80 93 02 01 	sts	0x0102, r24	; 0x800102 <msGreen>
        if (millis() - traffic_timer > yellow_time * 1000)
 a76:	0e 94 3d 01 	call	0x27a	; 0x27a <millis>
 a7a:	80 90 38 01 	lds	r8, 0x0138	; 0x800138 <traffic_timer>
 a7e:	90 90 39 01 	lds	r9, 0x0139	; 0x800139 <traffic_timer+0x1>
 a82:	a0 90 3a 01 	lds	r10, 0x013A	; 0x80013a <traffic_timer+0x2>
 a86:	b0 90 3b 01 	lds	r11, 0x013B	; 0x80013b <traffic_timer+0x3>
 a8a:	68 19       	sub	r22, r8
 a8c:	79 09       	sbc	r23, r9
 a8e:	8a 09       	sbc	r24, r10
 a90:	9b 09       	sbc	r25, r11
 a92:	69 3e       	cpi	r22, 0xE9	; 233
 a94:	73 40       	sbci	r23, 0x03	; 3
 a96:	81 05       	cpc	r24, r1
 a98:	91 05       	cpc	r25, r1
 a9a:	08 f4       	brcc	.+2      	; 0xa9e <__stack+0x19f>
 a9c:	40 cf       	rjmp	.-384    	; 0x91e <__stack+0x1f>
            progression(GREEN, GREEN, RED);
 a9e:	50 e0       	ldi	r21, 0x00	; 0
 aa0:	40 e0       	ldi	r20, 0x00	; 0
 aa2:	62 e0       	ldi	r22, 0x02	; 2
 aa4:	70 e0       	ldi	r23, 0x00	; 0
 aa6:	82 e0       	ldi	r24, 0x02	; 2
 aa8:	90 e0       	ldi	r25, 0x00	; 0
 aaa:	c2 cf       	rjmp	.-124    	; 0xa30 <__stack+0x131>
        msRed = msChange(msRed, but2);
 aac:	20 91 00 01 	lds	r18, 0x0100	; 0x800100 <msRed>
 ab0:	30 91 01 01 	lds	r19, 0x0101	; 0x800101 <msRed+0x1>
    return msThing == 1000 ? lightbutton(but) : msThing;
 ab4:	28 3e       	cpi	r18, 0xE8	; 232
 ab6:	43 e0       	ldi	r20, 0x03	; 3
 ab8:	34 07       	cpc	r19, r20
 aba:	21 f4       	brne	.+8      	; 0xac4 <__stack+0x1c5>
    return !butt ? 2000 : 1000;
 abc:	89 2b       	or	r24, r25
 abe:	11 f4       	brne	.+4      	; 0xac4 <__stack+0x1c5>
 ac0:	20 ed       	ldi	r18, 0xD0	; 208
 ac2:	37 e0       	ldi	r19, 0x07	; 7
        msRed = msChange(msRed, but2);
 ac4:	30 93 01 01 	sts	0x0101, r19	; 0x800101 <msRed+0x1>
 ac8:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <msRed>
        if (millis() - traffic_timer > green_red_time * msGreen)
 acc:	0e 94 3d 01 	call	0x27a	; 0x27a <millis>
 ad0:	80 90 38 01 	lds	r8, 0x0138	; 0x800138 <traffic_timer>
 ad4:	90 90 39 01 	lds	r9, 0x0139	; 0x800139 <traffic_timer+0x1>
 ad8:	a0 90 3a 01 	lds	r10, 0x013A	; 0x80013a <traffic_timer+0x2>
 adc:	b0 90 3b 01 	lds	r11, 0x013B	; 0x80013b <traffic_timer+0x3>
 ae0:	ab 01       	movw	r20, r22
 ae2:	bc 01       	movw	r22, r24
 ae4:	48 19       	sub	r20, r8
 ae6:	59 09       	sbc	r21, r9
 ae8:	6a 09       	sbc	r22, r10
 aea:	7b 09       	sbc	r23, r11
 aec:	20 91 02 01 	lds	r18, 0x0102	; 0x800102 <msGreen>
 af0:	30 91 03 01 	lds	r19, 0x0103	; 0x800103 <msGreen+0x1>
 af4:	d2 9e       	mul	r13, r18
 af6:	c0 01       	movw	r24, r0
 af8:	d3 9e       	mul	r13, r19
 afa:	90 0d       	add	r25, r0
 afc:	11 24       	eor	r1, r1
 afe:	09 2e       	mov	r0, r25
 b00:	00 0c       	add	r0, r0
 b02:	aa 0b       	sbc	r26, r26
 b04:	bb 0b       	sbc	r27, r27
 b06:	84 17       	cp	r24, r20
 b08:	95 07       	cpc	r25, r21
 b0a:	a6 07       	cpc	r26, r22
 b0c:	b7 07       	cpc	r27, r23
 b0e:	08 f0       	brcs	.+2      	; 0xb12 <__stack+0x213>
 b10:	06 cf       	rjmp	.-500    	; 0x91e <__stack+0x1f>
            msGreen = 1000;
 b12:	10 93 03 01 	sts	0x0103, r17	; 0x800103 <msGreen+0x1>
 b16:	00 93 02 01 	sts	0x0102, r16	; 0x800102 <msGreen>
            progression(YELLOW_BEFORE_RED, YELLOW_BEFORE_RED, YELLOW_BEFORE_GREEN);
 b1a:	41 e0       	ldi	r20, 0x01	; 1
 b1c:	50 e0       	ldi	r21, 0x00	; 0
 b1e:	63 e0       	ldi	r22, 0x03	; 3
 b20:	70 e0       	ldi	r23, 0x00	; 0
 b22:	83 e0       	ldi	r24, 0x03	; 3
 b24:	90 e0       	ldi	r25, 0x00	; 0
 b26:	84 cf       	rjmp	.-248    	; 0xa30 <__stack+0x131>

00000b28 <__tablejump2__>:
 b28:	ee 0f       	add	r30, r30
 b2a:	ff 1f       	adc	r31, r31
 b2c:	05 90       	lpm	r0, Z+
 b2e:	f4 91       	lpm	r31, Z
 b30:	e0 2d       	mov	r30, r0
 b32:	09 94       	ijmp

00000b34 <_exit>:
 b34:	f8 94       	cli

00000b36 <__stop_program>:
 b36:	ff cf       	rjmp	.-2      	; 0xb36 <__stop_program>
