
/Users/jakob/Documents/4.sem projekt/traffic-rust/target/avr-atmega328p/release/traffic-rust.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 34 00 	jmp	0x68	; 0x68 <__ctors_end>
   4:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   8:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
   c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  10:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  14:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  18:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  1c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  20:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  24:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  28:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  2c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  30:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  34:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  38:	0c 94 53 00 	jmp	0xa6	; 0xa6 <__vector_14>
  3c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  40:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  44:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  48:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  4c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  50:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  54:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  58:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  5c:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  60:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
  64:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>

00000068 <__ctors_end>:
  68:	11 24       	eor	r1, r1
  6a:	1f be       	out	0x3f, r1	; 63
  6c:	cf ef       	ldi	r28, 0xFF	; 255
  6e:	d8 e0       	ldi	r29, 0x08	; 8
  70:	de bf       	out	0x3e, r29	; 62
  72:	cd bf       	out	0x3d, r28	; 61

00000074 <__do_copy_data>:
  74:	11 e0       	ldi	r17, 0x01	; 1

00000076 <.Loc.1>:
  76:	a0 e0       	ldi	r26, 0x00	; 0

00000078 <.Loc.2>:
  78:	b1 e0       	ldi	r27, 0x01	; 1

0000007a <.Loc.3>:
  7a:	e0 e1       	ldi	r30, 0x10	; 16

0000007c <.Loc.4>:
  7c:	fa e0       	ldi	r31, 0x0A	; 10

0000007e <.Loc.5>:
  7e:	02 c0       	rjmp	.+4      	; 0x84 <.L__do_copy_data_start>

00000080 <.L__do_copy_data_loop>:
  80:	05 90       	lpm	r0, Z+

00000082 <.Loc.7>:
  82:	0d 92       	st	X+, r0

00000084 <.L__do_copy_data_start>:
  84:	a8 32       	cpi	r26, 0x28	; 40

00000086 <.Loc.9>:
  86:	b1 07       	cpc	r27, r17

00000088 <.Loc.10>:
  88:	d9 f7       	brne	.-10     	; 0x80 <.L__do_copy_data_loop>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1

0000008c <.Loc.1>:
  8c:	a8 e2       	ldi	r26, 0x28	; 40

0000008e <.Loc.2>:
  8e:	b1 e0       	ldi	r27, 0x01	; 1

00000090 <.Loc.3>:
  90:	01 c0       	rjmp	.+2      	; 0x94 <.Loc.5>

00000092 <.Loc.4>:
  92:	1d 92       	st	X+, r1

00000094 <.Loc.5>:
  94:	ad 32       	cpi	r26, 0x2D	; 45

00000096 <.Loc.6>:
  96:	b2 07       	cpc	r27, r18

00000098 <.Loc.7>:
  98:	e1 f7       	brne	.-8      	; 0x92 <.Loc.4>

0000009a <L0^A>:
  9a:	0e 94 80 00 	call	0x100	; 0x100 <main>
  9e:	0c 94 06 05 	jmp	0xa0c	; 0xa0c <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <__vector_14>:
    avr_device::interrupt::free(|cs| {
        MILLIS_COUNTER.borrow(cs).set(0);
    });
}

#[avr_device::interrupt(atmega328p)]
  a6:	0f 92       	push	r0
  a8:	1f 92       	push	r1
  aa:	0f b6       	in	r0, 0x3f	; 63
  ac:	0f 92       	push	r0
  ae:	11 24       	eor	r1, r1
  b0:	2f 93       	push	r18
  b2:	3f 93       	push	r19
  b4:	4f 93       	push	r20
  b6:	5f 93       	push	r21
  b8:	8f 93       	push	r24
        if #[cfg(all(target_arch = "avr", avr_device_asm_macro))] {
            // Store current state
            let sreg: u8;

            unsafe {
                asm!(
  ba:	8f b7       	in	r24, 0x3f	; 63
                    sreg = out(reg) sreg,
                )
            };

            // Disable interrupts
            unsafe { asm!("cli") };
  bc:	f8 94       	cli
    #[inline]
    #[stable(feature = "rust1", since = "1.0.0")]
    pub fn get(&self) -> T {
        // SAFETY: This can cause data races if called from a separate thread,
        // but `Cell` is `!Sync` so this won't happen.
        unsafe { *self.value.get() }
  be:	20 91 28 01 	lds	r18, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
  c2:	30 91 29 01 	lds	r19, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
  c6:	40 91 2a 01 	lds	r20, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
  ca:	50 91 2b 01 	lds	r21, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
fn TIMER0_COMPA() {
    avr_device::interrupt::free(|cs| {
        let counter_cell = MILLIS_COUNTER.borrow(cs);
        let counter = counter_cell.get();
        counter_cell.set(counter + MILLIS_INCREMENT);
  ce:	28 5f       	subi	r18, 0xF8	; 248
  d0:	3f 4f       	sbci	r19, 0xFF	; 255
  d2:	4f 4f       	sbci	r20, 0xFF	; 255
  d4:	5f 4f       	sbci	r21, 0xFF	; 255

    // SAFETY: the caller must guarantee that `dst` is valid for writes.
    // `dst` cannot overlap `src` because the caller has mutable access
    // to `dst` while `src` is owned by this function.
    unsafe {
        copy_nonoverlapping(&src as *const T, dst, 1);
  d6:	30 93 29 01 	sts	0x0129, r19	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
  da:	20 93 28 01 	sts	0x0128, r18	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
  de:	50 93 2b 01 	sts	0x012B, r21	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
  e2:	40 93 2a 01 	sts	0x012A, r20	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
            let interrupts_enabled = disable();

            let r = f(unsafe { &CriticalSection::new() });

            // Restore interrupt state
            if interrupts_enabled {
  e6:	88 23       	and	r24, r24
  e8:	0a f4       	brpl	.+2      	; 0xec <.Lname39+0x3>
            asm!("sei");
  ea:	78 94       	sei
#[avr_device::interrupt(atmega328p)]
  ec:	8f 91       	pop	r24
  ee:	5f 91       	pop	r21
  f0:	4f 91       	pop	r20
  f2:	3f 91       	pop	r19
  f4:	2f 91       	pop	r18
  f6:	0f 90       	pop	r0
  f8:	0f be       	out	0x3f, r0	; 63
  fa:	1f 90       	pop	r1
  fc:	0f 90       	pop	r0
  fe:	18 95       	reti

00000100 <main>:

const RED: i8 = 0;
const YELLOW_BEFORE_GREEN: i8 = 1;
const GREEN: i8 = 2;
const YELLOW_BEFORE_RED: i8 = 3;
#[arduino_hal::entry]
 100:	0e 94 84 00 	call	0x108	; 0x108 <_ZN12traffic_rust20__avr_device_rt_main17h03d4237d8f767cccE>
 104:	0e 94 01 05 	call	0xa02	; 0xa02 <abort>

00000108 <_ZN12traffic_rust20__avr_device_rt_main17h03d4237d8f767cccE>:
fn main() -> ! {
 108:	2f 92       	push	r2
 10a:	3f 92       	push	r3
 10c:	4f 92       	push	r4
 10e:	5f 92       	push	r5
 110:	6f 92       	push	r6
 112:	7f 92       	push	r7
 114:	8f 92       	push	r8
 116:	9f 92       	push	r9
 118:	af 92       	push	r10
 11a:	bf 92       	push	r11
 11c:	cf 92       	push	r12
 11e:	df 92       	push	r13
 120:	ef 92       	push	r14
 122:	ff 92       	push	r15
 124:	0f 93       	push	r16
 126:	1f 93       	push	r17
 128:	cf 93       	push	r28
 12a:	df 93       	push	r29
 12c:	cd b7       	in	r28, 0x3d	; 61
 12e:	de b7       	in	r29, 0x3e	; 62
 130:	2e 97       	sbiw	r28, 0x0e	; 14
 132:	0f b6       	in	r0, 0x3f	; 63
 134:	f8 94       	cli
 136:	de bf       	out	0x3e, r29	; 62
 138:	0f be       	out	0x3f, r0	; 63
 13a:	cd bf       	out	0x3d, r28	; 61
                asm!(
 13c:	9f b7       	in	r25, 0x3f	; 63
            unsafe { asm!("cli") };
 13e:	f8 94       	cli
impl atmega328p::Peripherals {
    /// Returns all the peripherals *once*
    #[inline]
    pub fn take() -> Option<Self> {
        crate::interrupt::free(|_| {
            if unsafe { DEVICE_PERIPHERALS } {
 140:	80 91 2c 01 	lds	r24, 0x012C	; 0x80012c <DEVICE_PERIPHERALS>
 144:	80 30       	cpi	r24, 0x00	; 0
 146:	19 f4       	brne	.+6      	; 0x14e <.Lname56+0x4>
 148:	21 e0       	ldi	r18, 0x01	; 1
}
impl Peripherals {
    #[doc = r"Unchecked version of `Peripherals::take`"]
    #[inline]
    pub unsafe fn steal() -> Self {
        DEVICE_PERIPHERALS = true;
 14a:	20 93 2c 01 	sts	0x012C, r18	; 0x80012c <DEVICE_PERIPHERALS>
            if interrupts_enabled {
 14e:	99 23       	and	r25, r25
 150:	0a f4       	brpl	.+2      	; 0x154 <.Lname57+0x3>
            asm!("sei");
 152:	78 94       	sei
    #[inline]
    #[track_caller]
    #[stable(feature = "rust1", since = "1.0.0")]
    #[rustc_const_unstable(feature = "const_option", issue = "67441")]
    pub const fn unwrap(self) -> T {
        match self {
 154:	80 30       	cpi	r24, 0x00	; 0
 156:	09 f0       	breq	.+2      	; 0x15a <.Lname58+0x2>
 158:	8c c2       	rjmp	.+1304   	; 0x672 <__LOCK_REGION_LENGTH__+0x272>
 15a:	82 e0       	ldi	r24, 0x02	; 2
#[stable(feature = "volatile", since = "1.9.0")]
pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
    // SAFETY: the caller must uphold the safety contract for `volatile_store`.
    unsafe {
        assert_unsafe_precondition!(is_aligned_and_not_null(dst));
        intrinsics::volatile_store(dst, src);
 15c:	84 bd       	out	0x24, r24	; 36
 15e:	9d e7       	ldi	r25, 0x7D	; 125
 160:	97 bd       	out	0x27, r25	; 39
 162:	95 e0       	ldi	r25, 0x05	; 5
 164:	95 bd       	out	0x25, r25	; 37
 166:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__TEXT_REGION_LENGTH__+0x7e006e>
                asm!(
 16a:	8f b7       	in	r24, 0x3f	; 63
            unsafe { asm!("cli") };
 16c:	f8 94       	cli
 16e:	20 e0       	ldi	r18, 0x00	; 0
 170:	30 e0       	ldi	r19, 0x00	; 0
        copy_nonoverlapping(&src as *const T, dst, 1);
 172:	30 93 2b 01 	sts	0x012B, r19	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 176:	20 93 2a 01 	sts	0x012A, r18	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 17a:	59 01       	movw	r10, r18
 17c:	30 93 29 01 	sts	0x0129, r19	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
 180:	20 93 28 01 	sts	0x0128, r18	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
            if interrupts_enabled {
 184:	88 23       	and	r24, r24
 186:	0a f4       	brpl	.+2      	; 0x18a <.Lname66+0x1>
            asm!("sei");
 188:	78 94       	sei
 18a:	78 94       	sei
        intrinsics::volatile_store(dst, src);
 18c:	59 98       	cbi	0x0b, 1	; 11
 18e:	51 9a       	sbi	0x0a, 1	; 10
 190:	80 e1       	ldi	r24, 0x10	; 16
 192:	90 e0       	ldi	r25, 0x00	; 0
 194:	90 93 c5 00 	sts	0x00C5, r25	; 0x8000c5 <__TEXT_REGION_LENGTH__+0x7e00c5>
 198:	80 93 c4 00 	sts	0x00C4, r24	; 0x8000c4 <__TEXT_REGION_LENGTH__+0x7e00c4>
 19c:	10 92 c0 00 	sts	0x00C0, r1	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 1a0:	88 e1       	ldi	r24, 0x18	; 24
 1a2:	80 93 c1 00 	sts	0x00C1, r24	; 0x8000c1 <__TEXT_REGION_LENGTH__+0x7e00c1>
 1a6:	86 e0       	ldi	r24, 0x06	; 6
 1a8:	80 93 c2 00 	sts	0x00C2, r24	; 0x8000c2 <__TEXT_REGION_LENGTH__+0x7e00c2>
                asm!(
 1ac:	8f b7       	in	r24, 0x3f	; 63
            unsafe { asm!("cli") };
 1ae:	f8 94       	cli
 1b0:	e0 90 2a 01 	lds	r14, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 1b4:	f0 90 2b 01 	lds	r15, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 1b8:	c0 90 28 01 	lds	r12, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 1bc:	d0 90 29 01 	lds	r13, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 1c0:	88 23       	and	r24, r24
 1c2:	0a f4       	brpl	.+2      	; 0x1c6 <.Lname76+0x2>
            asm!("sei");
 1c4:	78 94       	sei
 1c6:	2a 98       	cbi	0x05, 2	; 5
 1c8:	22 9a       	sbi	0x04, 2	; 4
 1ca:	29 98       	cbi	0x05, 1	; 5
 1cc:	21 9a       	sbi	0x04, 1	; 4
 1ce:	28 98       	cbi	0x05, 0	; 5
 1d0:	20 9a       	sbi	0x04, 0	; 4
 1d2:	80 e0       	ldi	r24, 0x00	; 0
 1d4:	91 e0       	ldi	r25, 0x01	; 1
    let mut ms_green: i16 = 1000;
    let mut light_state: i8 = 1;
    //let mut prev_state: Option<i8> = None;

    //array med traff1 og traff2
    let mut traffic1 = [
 1d6:	8f 83       	std	Y+7, r24	; 0x07
 1d8:	98 87       	std	Y+8, r25	; 0x08
 1da:	80 e0       	ldi	r24, 0x00	; 0
 1dc:	92 e0       	ldi	r25, 0x02	; 2
 1de:	8d 83       	std	Y+5, r24	; 0x05
 1e0:	9e 83       	std	Y+6, r25	; 0x06
 1e2:	80 e0       	ldi	r24, 0x00	; 0
 1e4:	94 e0       	ldi	r25, 0x04	; 4
 1e6:	8b 83       	std	Y+3, r24	; 0x03
 1e8:	9c 83       	std	Y+4, r25	; 0x04
 1ea:	5e 98       	cbi	0x0b, 6	; 11
 1ec:	56 9a       	sbi	0x0a, 6	; 10
 1ee:	5d 98       	cbi	0x0b, 5	; 11
 1f0:	55 9a       	sbi	0x0a, 5	; 10
 1f2:	5c 98       	cbi	0x0b, 4	; 11
 1f4:	54 9a       	sbi	0x0a, 4	; 10
 1f6:	82 e0       	ldi	r24, 0x02	; 2
 1f8:	90 e1       	ldi	r25, 0x10	; 16
        pins.d10.into_output().downgrade(),
        pins.d9.into_output().downgrade(),
        pins.d8.into_output().downgrade(),
    ];
    let mut traffic2 = [
 1fa:	8d 87       	std	Y+13, r24	; 0x0d
 1fc:	9e 87       	std	Y+14, r25	; 0x0e
 1fe:	82 e0       	ldi	r24, 0x02	; 2
 200:	90 e2       	ldi	r25, 0x20	; 32
 202:	8b 87       	std	Y+11, r24	; 0x0b
 204:	9c 87       	std	Y+12, r25	; 0x0c
 206:	82 e0       	ldi	r24, 0x02	; 2
 208:	90 e4       	ldi	r25, 0x40	; 64
 20a:	89 87       	std	Y+9, r24	; 0x09
 20c:	9a 87       	std	Y+10, r25	; 0x0a
 20e:	52 98       	cbi	0x0a, 2	; 10
 210:	5a 9a       	sbi	0x0b, 2	; 11
 212:	53 98       	cbi	0x0a, 3	; 10
 214:	5b 9a       	sbi	0x0b, 3	; 11
 216:	ce 01       	movw	r24, r28
 218:	03 96       	adiw	r24, 0x03	; 3
 21a:	be 01       	movw	r22, r28
 21c:	67 5f       	subi	r22, 0xF7	; 247
 21e:	7f 4f       	sbci	r23, 0xFF	; 255
    fn lightbutton(but: &mut Pin<Input<PullUp>, Dynamic>) -> i16 {
        return if but.is_low() { 2000 } else { 1000 };
    }

    //set each light in opposite yellow position.
    progression(&mut traffic1, &mut traffic2, light_state);
 220:	41 e0       	ldi	r20, 0x01	; 1
 222:	0e 94 3d 03 	call	0x67a	; 0x67a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE>
 226:	a0 e0       	ldi	r26, 0x00	; 0
 228:	b1 e0       	ldi	r27, 0x01	; 1
 22a:	85 e1       	ldi	r24, 0x15	; 21
 22c:	91 e0       	ldi	r25, 0x01	; 1
impl<H, USART: UsartOps<H, RX, TX>, RX, TX, CLOCK> ufmt::uWrite for Usart<H, USART, RX, TX, CLOCK> {
    type Error = void::Void;

    fn write_str(&mut self, s: &str) -> Result<(), Self::Error> {
        for b in s.as_bytes().iter() {
            self.write_byte(*b);
 22e:	2c 91       	ld	r18, X
        intrinsics::volatile_load(src)
 230:	30 91 c0 00 	lds	r19, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
        FE0_R::new(((self.bits >> 4) & 0x01) != 0)
    }
    #[doc = "Bit 5 - USART Data Register Empty"]
    #[inline(always)]
    pub fn udre0(&self) -> UDRE0_R {
        UDRE0_R::new(((self.bits >> 5) & 0x01) != 0)
 234:	30 72       	andi	r19, 0x20	; 32
                    }
                }

                fn raw_write(&mut self, byte: u8) -> $crate::nb::Result<(), $crate::void::Void> {
                    // Call flush to make sure the data-register is empty
                    self.raw_flush()?;
 236:	30 30       	cpi	r19, 0x00	; 0
 238:	d9 f3       	breq	.-10     	; 0x230 <.Lname87+0x2d>
        intrinsics::volatile_store(dst, src);
 23a:	20 93 c6 00 	sts	0x00C6, r18	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
        T: Sized,
    {
        // SAFETY: the caller must uphold the safety contract for `offset`.
        // The obtained pointer is valid for writes since the caller must
        // guarantee that it points to the same allocated object as `self`.
        unsafe { intrinsics::offset(self, count) as *mut T }
 23e:	11 96       	adiw	r26, 0x01	; 1
                unsafe {
                    assume(!self.ptr.as_ptr().is_null());
                    if mem::size_of::<T>() != 0 {
                        assume(!self.end.is_null());
                    }
                    if is_empty!(self) {
 240:	a8 17       	cp	r26, r24
 242:	b9 07       	cpc	r27, r25
 244:	a1 f7       	brne	.-24     	; 0x22e <.Lname87+0x2b>
 246:	28 ee       	ldi	r18, 0xE8	; 232
 248:	33 e0       	ldi	r19, 0x03	; 3
 24a:	81 e0       	ldi	r24, 0x01	; 1
 24c:	a3 e0       	ldi	r26, 0x03	; 3
 24e:	40 ed       	ldi	r20, 0xD0	; 208
 250:	57 e0       	ldi	r21, 0x07	; 7
 252:	3a 01       	movw	r6, r20
 254:	ae 01       	movw	r20, r28
 256:	4d 5f       	subi	r20, 0xFD	; 253
 258:	5f 4f       	sbci	r21, 0xFF	; 255
 25a:	49 83       	std	Y+1, r20	; 0x01
 25c:	5a 83       	std	Y+2, r21	; 0x02
 25e:	07 e2       	ldi	r16, 0x27	; 39
 260:	11 e0       	ldi	r17, 0x01	; 1
 262:	19 01       	movw	r2, r18
 264:	49 01       	movw	r8, r18
 266:	29 01       	movw	r4, r18
 268:	82 30       	cpi	r24, 0x02	; 2
 26a:	0c f0       	brlt	.+2      	; 0x26e <.Lname87+0x6b>
 26c:	8f c0       	rjmp	.+286    	; 0x38c <.Lname87+0x189>
 26e:	80 30       	cpi	r24, 0x00	; 0
 270:	09 f4       	brne	.+2      	; 0x274 <.Lname87+0x71>
 272:	1b c1       	rjmp	.+566    	; 0x4aa <__LOCK_REGION_LENGTH__+0xaa>
 274:	81 30       	cpi	r24, 0x01	; 1
 276:	09 f0       	breq	.+2      	; 0x27a <.Lname87+0x77>
 278:	fb c1       	rjmp	.+1014   	; 0x670 <__LOCK_REGION_LENGTH__+0x270>
 27a:	c2 01       	movw	r24, r4
        return if ms_thing == 1000 {
 27c:	88 3e       	cpi	r24, 0xE8	; 232
 27e:	9a 07       	cpc	r25, r26
 280:	31 f4       	brne	.+12     	; 0x28e <.Lname87+0x8b>
 282:	89 b1       	in	r24, 0x09	; 9
            }

            #[inline]
            unsafe fn in_get(&self) -> bool {
                match self.port {
                    $(DynamicPort::$PortName => (*<$Port>::ptr()).$port_pin_reg.read().bits()
 284:	88 70       	andi	r24, 0x08	; 8
        return if but.is_low() { 2000 } else { 1000 };
 286:	80 30       	cpi	r24, 0x00	; 0
 288:	23 01       	movw	r4, r6
 28a:	09 f0       	breq	.+2      	; 0x28e <.Lname87+0x8b>
 28c:	24 01       	movw	r4, r8
 28e:	c1 01       	movw	r24, r2
        return if ms_thing == 1000 {
 290:	88 3e       	cpi	r24, 0xE8	; 232
 292:	9a 07       	cpc	r25, r26
 294:	31 f4       	brne	.+12     	; 0x2a2 <.Lname87+0x9f>
 296:	89 b1       	in	r24, 0x09	; 9
 298:	84 70       	andi	r24, 0x04	; 4
        return if but.is_low() { 2000 } else { 1000 };
 29a:	80 30       	cpi	r24, 0x00	; 0
 29c:	13 01       	movw	r2, r6
 29e:	09 f0       	breq	.+2      	; 0x2a2 <.Lname87+0x9f>
 2a0:	14 01       	movw	r2, r8
                asm!(
 2a2:	8f b7       	in	r24, 0x3f	; 63
            unsafe { asm!("cli") };
 2a4:	f8 94       	cli
 2a6:	20 91 2a 01 	lds	r18, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 2aa:	30 91 2b 01 	lds	r19, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 2ae:	40 91 28 01 	lds	r20, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 2b2:	50 91 29 01 	lds	r21, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 2b6:	88 23       	and	r24, r24
 2b8:	0a f4       	brpl	.+2      	; 0x2bc <.Lname87+0xb9>
            asm!("sei");
 2ba:	78 94       	sei
                }
            }
            YELLOW_BEFORE_GREEN => {
                ms_red = ms_change(ms_red, &mut buttons[1]);
                ms_green = ms_change(ms_green, &mut buttons[0]);
                if millis::millis() - traffic_timer as u32
 2bc:	4c 19       	sub	r20, r12
 2be:	5d 09       	sbc	r21, r13
 2c0:	2e 09       	sbc	r18, r14
 2c2:	3f 09       	sbc	r19, r15
 2c4:	95 e0       	ldi	r25, 0x05	; 5
 2c6:	b1 01       	movw	r22, r2
                    > (GREEN_RED_TIME as i16 * ms_green) as u32
 2c8:	79 02       	muls	r23, r25
 2ca:	80 2d       	mov	r24, r0
 2cc:	11 24       	eor	r1, r1
 2ce:	69 9f       	mul	r22, r25
 2d0:	61 2d       	mov	r22, r1
 2d2:	11 24       	eor	r1, r1
 2d4:	68 0f       	add	r22, r24
 2d6:	76 2f       	mov	r23, r22
 2d8:	66 27       	eor	r22, r22
 2da:	e0 2d       	mov	r30, r0
 2dc:	ff 27       	eor	r31, r31
 2de:	e6 2b       	or	r30, r22
 2e0:	f7 2b       	or	r31, r23
 2e2:	81 e0       	ldi	r24, 0x01	; 1
                if millis::millis() - traffic_timer as u32
 2e4:	e4 17       	cp	r30, r20
 2e6:	f5 07       	cpc	r31, r21
 2e8:	a5 01       	movw	r20, r10
 2ea:	42 07       	cpc	r20, r18
 2ec:	53 07       	cpc	r21, r19
 2ee:	91 e0       	ldi	r25, 0x01	; 1
 2f0:	08 f0       	brcs	.+2      	; 0x2f4 <.Lname87+0xf1>
 2f2:	91 2d       	mov	r25, r1
 2f4:	91 70       	andi	r25, 0x01	; 1
 2f6:	90 30       	cpi	r25, 0x00	; 0
 2f8:	09 f4       	brne	.+2      	; 0x2fc <.Lname87+0xf9>
 2fa:	b6 cf       	rjmp	.-148    	; 0x268 <.Lname87+0x65>
 2fc:	ce 01       	movw	r24, r28
 2fe:	03 96       	adiw	r24, 0x03	; 3
 300:	be 01       	movw	r22, r28
 302:	67 5f       	subi	r22, 0xF7	; 247
 304:	7f 4f       	sbci	r23, 0xFF	; 255
                {
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
 306:	41 e0       	ldi	r20, 0x01	; 1
 308:	0e 94 3d 03 	call	0x67a	; 0x67a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE>
                asm!(
 30c:	9f b7       	in	r25, 0x3f	; 63
            unsafe { asm!("cli") };
 30e:	f8 94       	cli
 310:	e0 90 2a 01 	lds	r14, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 314:	f0 90 2b 01 	lds	r15, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 318:	c0 90 28 01 	lds	r12, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 31c:	d0 90 29 01 	lds	r13, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 320:	99 23       	and	r25, r25
 322:	0a f4       	brpl	.+2      	; 0x326 <.Lname87+0x123>
            asm!("sei");
 324:	78 94       	sei
 326:	a5 e1       	ldi	r26, 0x15	; 21
 328:	b1 e0       	ldi	r27, 0x01	; 1
 32a:	44 e2       	ldi	r20, 0x24	; 36
 32c:	51 e0       	ldi	r21, 0x01	; 1
            self.write_byte(*b);
 32e:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 330:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 334:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 336:	20 30       	cpi	r18, 0x00	; 0
 338:	d9 f3       	breq	.-10     	; 0x330 <.Lname87+0x12d>
        intrinsics::volatile_store(dst, src);
 33a:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 33e:	11 96       	adiw	r26, 0x01	; 1
 340:	a4 17       	cp	r26, r20
 342:	b5 07       	cpc	r27, r21
 344:	a1 f7       	brne	.-24     	; 0x32e <.Lname87+0x12b>
 346:	9d ec       	ldi	r25, 0xCD	; 205
        unsafe { str::from_utf8_unchecked($buf.get(i..).unwrap_or_else(|| assume_unreachable!())) }
    }};
}

fn isize(n: isize, buf: &mut [u8]) -> &str {
    ixx!(usize, n, buf)
 348:	89 9f       	mul	r24, r25
 34a:	91 2d       	mov	r25, r1
 34c:	11 24       	eor	r1, r1
 34e:	96 95       	lsr	r25
 350:	96 95       	lsr	r25
 352:	96 95       	lsr	r25
 354:	2a e0       	ldi	r18, 0x0A	; 10
 356:	92 02       	muls	r25, r18
 358:	11 24       	eor	r1, r1
 35a:	98 2f       	mov	r25, r24
 35c:	90 19       	sub	r25, r0
 35e:	90 63       	ori	r25, 0x30	; 48
        intrinsics::volatile_load(src)
 360:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 364:	20 72       	andi	r18, 0x20	; 32
 366:	20 30       	cpi	r18, 0x00	; 0
 368:	d9 f3       	breq	.-10     	; 0x360 <.Lname87+0x15d>
        intrinsics::volatile_store(dst, src);
 36a:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 36e:	a4 e2       	ldi	r26, 0x24	; 36
 370:	b1 e0       	ldi	r27, 0x01	; 1
            self.write_byte(*b);
 372:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 374:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 378:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 37a:	20 30       	cpi	r18, 0x00	; 0
 37c:	d9 f3       	breq	.-10     	; 0x374 <.Lname87+0x171>
        intrinsics::volatile_store(dst, src);
 37e:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 382:	11 96       	adiw	r26, 0x01	; 1
 384:	a0 17       	cp	r26, r16
 386:	b1 07       	cpc	r27, r17
 388:	a1 f7       	brne	.-24     	; 0x372 <.Lname87+0x16f>
 38a:	70 c1       	rjmp	.+736    	; 0x66c <__LOCK_REGION_LENGTH__+0x26c>
 38c:	82 30       	cpi	r24, 0x02	; 2
 38e:	09 f4       	brne	.+2      	; 0x392 <.Lname87+0x18f>
 390:	fd c0       	rjmp	.+506    	; 0x58c <__LOCK_REGION_LENGTH__+0x18c>
 392:	83 30       	cpi	r24, 0x03	; 3
 394:	09 f0       	breq	.+2      	; 0x398 <.Lname87+0x195>
 396:	6c c1       	rjmp	.+728    	; 0x670 <__LOCK_REGION_LENGTH__+0x270>
 398:	c2 01       	movw	r24, r4
        return if ms_thing == 1000 {
 39a:	88 3e       	cpi	r24, 0xE8	; 232
 39c:	9a 07       	cpc	r25, r26
 39e:	31 f4       	brne	.+12     	; 0x3ac <.Lname87+0x1a9>
 3a0:	89 b1       	in	r24, 0x09	; 9
 3a2:	88 70       	andi	r24, 0x08	; 8
        return if but.is_low() { 2000 } else { 1000 };
 3a4:	80 30       	cpi	r24, 0x00	; 0
 3a6:	23 01       	movw	r4, r6
 3a8:	09 f0       	breq	.+2      	; 0x3ac <.Lname87+0x1a9>
 3aa:	24 01       	movw	r4, r8
 3ac:	c1 01       	movw	r24, r2
        return if ms_thing == 1000 {
 3ae:	88 3e       	cpi	r24, 0xE8	; 232
 3b0:	9a 07       	cpc	r25, r26
 3b2:	31 f4       	brne	.+12     	; 0x3c0 <.Lname87+0x1bd>
 3b4:	89 b1       	in	r24, 0x09	; 9
 3b6:	84 70       	andi	r24, 0x04	; 4
        return if but.is_low() { 2000 } else { 1000 };
 3b8:	80 30       	cpi	r24, 0x00	; 0
 3ba:	13 01       	movw	r2, r6
 3bc:	09 f0       	breq	.+2      	; 0x3c0 <.Lname87+0x1bd>
 3be:	14 01       	movw	r2, r8
                asm!(
 3c0:	4f b7       	in	r20, 0x3f	; 63
            unsafe { asm!("cli") };
 3c2:	f8 94       	cli
 3c4:	80 91 2a 01 	lds	r24, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 3c8:	90 91 2b 01 	lds	r25, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 3cc:	20 91 28 01 	lds	r18, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 3d0:	30 91 29 01 	lds	r19, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 3d4:	44 23       	and	r20, r20
 3d6:	0a f4       	brpl	.+2      	; 0x3da <.Lname87+0x1d7>
            asm!("sei");
 3d8:	78 94       	sei
                }
            }
            YELLOW_BEFORE_RED => {
                ms_red = ms_change(ms_red, &mut buttons[1]);
                ms_green = ms_change(ms_green, &mut buttons[0]);
                if millis::millis() - traffic_timer as u32 > (GREEN_RED_TIME as i16 * ms_red) as u32
 3da:	2c 19       	sub	r18, r12
 3dc:	3d 09       	sbc	r19, r13
 3de:	8e 09       	sbc	r24, r14
 3e0:	9f 09       	sbc	r25, r15
 3e2:	55 e0       	ldi	r21, 0x05	; 5
 3e4:	b2 01       	movw	r22, r4
 3e6:	75 02       	muls	r23, r21
 3e8:	40 2d       	mov	r20, r0
 3ea:	11 24       	eor	r1, r1
 3ec:	65 9f       	mul	r22, r21
 3ee:	61 2d       	mov	r22, r1
 3f0:	11 24       	eor	r1, r1
 3f2:	64 0f       	add	r22, r20
 3f4:	76 2f       	mov	r23, r22
 3f6:	66 27       	eor	r22, r22
 3f8:	e0 2d       	mov	r30, r0
 3fa:	ff 27       	eor	r31, r31
 3fc:	e6 2b       	or	r30, r22
 3fe:	f7 2b       	or	r31, r23
 400:	41 e0       	ldi	r20, 0x01	; 1
 402:	e2 17       	cp	r30, r18
 404:	f3 07       	cpc	r31, r19
 406:	95 01       	movw	r18, r10
 408:	28 07       	cpc	r18, r24
 40a:	39 07       	cpc	r19, r25
 40c:	08 f0       	brcs	.+2      	; 0x410 <__LOCK_REGION_LENGTH__+0x10>
 40e:	41 2d       	mov	r20, r1
 410:	41 70       	andi	r20, 0x01	; 1
 412:	83 e0       	ldi	r24, 0x03	; 3
 414:	40 30       	cpi	r20, 0x00	; 0
 416:	09 f4       	brne	.+2      	; 0x41a <__LOCK_REGION_LENGTH__+0x1a>
 418:	27 cf       	rjmp	.-434    	; 0x268 <.Lname87+0x65>
 41a:	ce 01       	movw	r24, r28
 41c:	03 96       	adiw	r24, 0x03	; 3
 41e:	be 01       	movw	r22, r28
 420:	67 5f       	subi	r22, 0xF7	; 247
 422:	7f 4f       	sbci	r23, 0xFF	; 255
                {
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
 424:	43 e0       	ldi	r20, 0x03	; 3
 426:	0e 94 3d 03 	call	0x67a	; 0x67a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE>
                asm!(
 42a:	9f b7       	in	r25, 0x3f	; 63
            unsafe { asm!("cli") };
 42c:	f8 94       	cli
 42e:	e0 90 2a 01 	lds	r14, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 432:	f0 90 2b 01 	lds	r15, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 436:	c0 90 28 01 	lds	r12, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 43a:	d0 90 29 01 	lds	r13, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 43e:	99 23       	and	r25, r25
 440:	0a f4       	brpl	.+2      	; 0x444 <__LOCK_REGION_LENGTH__+0x44>
            asm!("sei");
 442:	78 94       	sei
 444:	a5 e1       	ldi	r26, 0x15	; 21
 446:	b1 e0       	ldi	r27, 0x01	; 1
 448:	44 e2       	ldi	r20, 0x24	; 36
 44a:	51 e0       	ldi	r21, 0x01	; 1
            self.write_byte(*b);
 44c:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 44e:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 452:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 454:	20 30       	cpi	r18, 0x00	; 0
 456:	d9 f3       	breq	.-10     	; 0x44e <__LOCK_REGION_LENGTH__+0x4e>
        intrinsics::volatile_store(dst, src);
 458:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 45c:	11 96       	adiw	r26, 0x01	; 1
 45e:	a4 17       	cp	r26, r20
 460:	b5 07       	cpc	r27, r21
 462:	a1 f7       	brne	.-24     	; 0x44c <__LOCK_REGION_LENGTH__+0x4c>
 464:	9d ec       	ldi	r25, 0xCD	; 205
 466:	89 9f       	mul	r24, r25
 468:	91 2d       	mov	r25, r1
 46a:	11 24       	eor	r1, r1
 46c:	96 95       	lsr	r25
 46e:	96 95       	lsr	r25
 470:	96 95       	lsr	r25
 472:	2a e0       	ldi	r18, 0x0A	; 10
 474:	92 02       	muls	r25, r18
 476:	11 24       	eor	r1, r1
 478:	98 2f       	mov	r25, r24
 47a:	90 19       	sub	r25, r0
 47c:	90 63       	ori	r25, 0x30	; 48
        intrinsics::volatile_load(src)
 47e:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 482:	20 72       	andi	r18, 0x20	; 32
 484:	20 30       	cpi	r18, 0x00	; 0
 486:	d9 f3       	breq	.-10     	; 0x47e <__LOCK_REGION_LENGTH__+0x7e>
        intrinsics::volatile_store(dst, src);
 488:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 48c:	a4 e2       	ldi	r26, 0x24	; 36
 48e:	b1 e0       	ldi	r27, 0x01	; 1
            self.write_byte(*b);
 490:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 492:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 496:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 498:	20 30       	cpi	r18, 0x00	; 0
 49a:	d9 f3       	breq	.-10     	; 0x492 <__LOCK_REGION_LENGTH__+0x92>
        intrinsics::volatile_store(dst, src);
 49c:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 4a0:	11 96       	adiw	r26, 0x01	; 1
 4a2:	a0 17       	cp	r26, r16
 4a4:	b1 07       	cpc	r27, r17
 4a6:	a1 f7       	brne	.-24     	; 0x490 <__LOCK_REGION_LENGTH__+0x90>
 4a8:	e1 c0       	rjmp	.+450    	; 0x66c <__LOCK_REGION_LENGTH__+0x26c>
 4aa:	c1 01       	movw	r24, r2
        return if ms_thing == 1000 {
 4ac:	88 3e       	cpi	r24, 0xE8	; 232
 4ae:	9a 07       	cpc	r25, r26
 4b0:	31 f4       	brne	.+12     	; 0x4be <__LOCK_REGION_LENGTH__+0xbe>
 4b2:	89 b1       	in	r24, 0x09	; 9
 4b4:	84 70       	andi	r24, 0x04	; 4
        return if but.is_low() { 2000 } else { 1000 };
 4b6:	80 30       	cpi	r24, 0x00	; 0
 4b8:	13 01       	movw	r2, r6
 4ba:	09 f0       	breq	.+2      	; 0x4be <__LOCK_REGION_LENGTH__+0xbe>
 4bc:	14 01       	movw	r2, r8
                asm!(
 4be:	4f b7       	in	r20, 0x3f	; 63
            unsafe { asm!("cli") };
 4c0:	f8 94       	cli
 4c2:	80 91 2a 01 	lds	r24, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 4c6:	90 91 2b 01 	lds	r25, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 4ca:	20 91 28 01 	lds	r18, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 4ce:	30 91 29 01 	lds	r19, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 4d2:	44 23       	and	r20, r20
 4d4:	0a f4       	brpl	.+2      	; 0x4d8 <__LOCK_REGION_LENGTH__+0xd8>
            asm!("sei");
 4d6:	78 94       	sei
                if millis::millis() - traffic_timer as u32 > (YELLOW_TIME as i16 * 1000) as u32 {
 4d8:	2c 19       	sub	r18, r12
 4da:	3d 09       	sbc	r19, r13
 4dc:	8e 09       	sbc	r24, r14
 4de:	9f 09       	sbc	r25, r15
 4e0:	41 e0       	ldi	r20, 0x01	; 1
 4e2:	29 3e       	cpi	r18, 0xE9	; 233
 4e4:	3a 07       	cpc	r19, r26
 4e6:	95 01       	movw	r18, r10
 4e8:	82 07       	cpc	r24, r18
 4ea:	93 07       	cpc	r25, r19
 4ec:	08 f4       	brcc	.+2      	; 0x4f0 <__LOCK_REGION_LENGTH__+0xf0>
 4ee:	41 2d       	mov	r20, r1
 4f0:	41 70       	andi	r20, 0x01	; 1
 4f2:	40 30       	cpi	r20, 0x00	; 0
 4f4:	81 2d       	mov	r24, r1
 4f6:	09 f4       	brne	.+2      	; 0x4fa <__LOCK_REGION_LENGTH__+0xfa>
 4f8:	b7 ce       	rjmp	.-658    	; 0x268 <.Lname87+0x65>
 4fa:	be 01       	movw	r22, r28
 4fc:	67 5f       	subi	r22, 0xF7	; 247
 4fe:	7f 4f       	sbci	r23, 0xFF	; 255
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
 500:	89 81       	ldd	r24, Y+1	; 0x01
 502:	9a 81       	ldd	r25, Y+2	; 0x02
 504:	41 2d       	mov	r20, r1
 506:	0e 94 3d 03 	call	0x67a	; 0x67a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE>
                asm!(
 50a:	9f b7       	in	r25, 0x3f	; 63
            unsafe { asm!("cli") };
 50c:	f8 94       	cli
 50e:	e0 90 2a 01 	lds	r14, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 512:	f0 90 2b 01 	lds	r15, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 516:	c0 90 28 01 	lds	r12, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 51a:	d0 90 29 01 	lds	r13, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 51e:	99 23       	and	r25, r25
 520:	0a f4       	brpl	.+2      	; 0x524 <__LOCK_REGION_LENGTH__+0x124>
            asm!("sei");
 522:	78 94       	sei
 524:	a5 e1       	ldi	r26, 0x15	; 21
 526:	b1 e0       	ldi	r27, 0x01	; 1
 528:	44 e2       	ldi	r20, 0x24	; 36
 52a:	51 e0       	ldi	r21, 0x01	; 1
            self.write_byte(*b);
 52c:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 52e:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 532:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 534:	20 30       	cpi	r18, 0x00	; 0
 536:	d9 f3       	breq	.-10     	; 0x52e <__LOCK_REGION_LENGTH__+0x12e>
        intrinsics::volatile_store(dst, src);
 538:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 53c:	11 96       	adiw	r26, 0x01	; 1
 53e:	a4 17       	cp	r26, r20
 540:	b5 07       	cpc	r27, r21
 542:	a1 f7       	brne	.-24     	; 0x52c <__LOCK_REGION_LENGTH__+0x12c>
 544:	9d ec       	ldi	r25, 0xCD	; 205
 546:	89 9f       	mul	r24, r25
 548:	91 2d       	mov	r25, r1
 54a:	11 24       	eor	r1, r1
 54c:	96 95       	lsr	r25
 54e:	96 95       	lsr	r25
 550:	96 95       	lsr	r25
 552:	2a e0       	ldi	r18, 0x0A	; 10
 554:	92 02       	muls	r25, r18
 556:	11 24       	eor	r1, r1
 558:	98 2f       	mov	r25, r24
 55a:	90 19       	sub	r25, r0
 55c:	90 63       	ori	r25, 0x30	; 48
        intrinsics::volatile_load(src)
 55e:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 562:	20 72       	andi	r18, 0x20	; 32
 564:	20 30       	cpi	r18, 0x00	; 0
 566:	d9 f3       	breq	.-10     	; 0x55e <__LOCK_REGION_LENGTH__+0x15e>
        intrinsics::volatile_store(dst, src);
 568:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 56c:	a4 e2       	ldi	r26, 0x24	; 36
 56e:	b1 e0       	ldi	r27, 0x01	; 1
            self.write_byte(*b);
 570:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 572:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 576:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 578:	20 30       	cpi	r18, 0x00	; 0
 57a:	d9 f3       	breq	.-10     	; 0x572 <__LOCK_REGION_LENGTH__+0x172>
        intrinsics::volatile_store(dst, src);
 57c:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 580:	11 96       	adiw	r26, 0x01	; 1
 582:	a0 17       	cp	r26, r16
 584:	b1 07       	cpc	r27, r17
 586:	a1 f7       	brne	.-24     	; 0x570 <__LOCK_REGION_LENGTH__+0x170>
 588:	24 01       	movw	r4, r8
 58a:	70 c0       	rjmp	.+224    	; 0x66c <__LOCK_REGION_LENGTH__+0x26c>
 58c:	c2 01       	movw	r24, r4
        return if ms_thing == 1000 {
 58e:	88 3e       	cpi	r24, 0xE8	; 232
 590:	9a 07       	cpc	r25, r26
 592:	31 f4       	brne	.+12     	; 0x5a0 <__LOCK_REGION_LENGTH__+0x1a0>
 594:	89 b1       	in	r24, 0x09	; 9
 596:	88 70       	andi	r24, 0x08	; 8
        return if but.is_low() { 2000 } else { 1000 };
 598:	80 30       	cpi	r24, 0x00	; 0
 59a:	23 01       	movw	r4, r6
 59c:	09 f0       	breq	.+2      	; 0x5a0 <__LOCK_REGION_LENGTH__+0x1a0>
 59e:	24 01       	movw	r4, r8
                asm!(
 5a0:	4f b7       	in	r20, 0x3f	; 63
            unsafe { asm!("cli") };
 5a2:	f8 94       	cli
 5a4:	80 91 2a 01 	lds	r24, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 5a8:	90 91 2b 01 	lds	r25, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 5ac:	20 91 28 01 	lds	r18, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 5b0:	30 91 29 01 	lds	r19, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 5b4:	44 23       	and	r20, r20
 5b6:	0a f4       	brpl	.+2      	; 0x5ba <__LOCK_REGION_LENGTH__+0x1ba>
            asm!("sei");
 5b8:	78 94       	sei
                if millis::millis() - traffic_timer as u32 > (YELLOW_TIME as i16 * 1000) as u32 {
 5ba:	2c 19       	sub	r18, r12
 5bc:	3d 09       	sbc	r19, r13
 5be:	8e 09       	sbc	r24, r14
 5c0:	9f 09       	sbc	r25, r15
 5c2:	41 e0       	ldi	r20, 0x01	; 1
 5c4:	29 3e       	cpi	r18, 0xE9	; 233
 5c6:	3a 07       	cpc	r19, r26
 5c8:	95 01       	movw	r18, r10
 5ca:	82 07       	cpc	r24, r18
 5cc:	93 07       	cpc	r25, r19
 5ce:	08 f4       	brcc	.+2      	; 0x5d2 <__LOCK_REGION_LENGTH__+0x1d2>
 5d0:	41 2d       	mov	r20, r1
 5d2:	41 70       	andi	r20, 0x01	; 1
 5d4:	82 e0       	ldi	r24, 0x02	; 2
 5d6:	40 30       	cpi	r20, 0x00	; 0
 5d8:	09 f4       	brne	.+2      	; 0x5dc <__LOCK_REGION_LENGTH__+0x1dc>
 5da:	46 ce       	rjmp	.-884    	; 0x268 <.Lname87+0x65>
 5dc:	ce 01       	movw	r24, r28
 5de:	03 96       	adiw	r24, 0x03	; 3
 5e0:	be 01       	movw	r22, r28
 5e2:	67 5f       	subi	r22, 0xF7	; 247
 5e4:	7f 4f       	sbci	r23, 0xFF	; 255
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
 5e6:	42 e0       	ldi	r20, 0x02	; 2
 5e8:	0e 94 3d 03 	call	0x67a	; 0x67a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE>
                asm!(
 5ec:	9f b7       	in	r25, 0x3f	; 63
            unsafe { asm!("cli") };
 5ee:	f8 94       	cli
 5f0:	e0 90 2a 01 	lds	r14, 0x012A	; 0x80012a <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x2>
 5f4:	f0 90 2b 01 	lds	r15, 0x012B	; 0x80012b <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x3>
 5f8:	c0 90 28 01 	lds	r12, 0x0128	; 0x800128 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0>
 5fc:	d0 90 29 01 	lds	r13, 0x0129	; 0x800129 <_ZN12traffic_rust6millis14MILLIS_COUNTER17hc948e943cd71df43E.0+0x1>
            if interrupts_enabled {
 600:	99 23       	and	r25, r25
 602:	0a f4       	brpl	.+2      	; 0x606 <__LOCK_REGION_LENGTH__+0x206>
            asm!("sei");
 604:	78 94       	sei
 606:	a5 e1       	ldi	r26, 0x15	; 21
 608:	b1 e0       	ldi	r27, 0x01	; 1
 60a:	44 e2       	ldi	r20, 0x24	; 36
 60c:	51 e0       	ldi	r21, 0x01	; 1
            self.write_byte(*b);
 60e:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 610:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 614:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 616:	20 30       	cpi	r18, 0x00	; 0
 618:	d9 f3       	breq	.-10     	; 0x610 <__LOCK_REGION_LENGTH__+0x210>
        intrinsics::volatile_store(dst, src);
 61a:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 61e:	11 96       	adiw	r26, 0x01	; 1
 620:	a4 17       	cp	r26, r20
 622:	b5 07       	cpc	r27, r21
 624:	a1 f7       	brne	.-24     	; 0x60e <__LOCK_REGION_LENGTH__+0x20e>
 626:	9d ec       	ldi	r25, 0xCD	; 205
 628:	89 9f       	mul	r24, r25
 62a:	91 2d       	mov	r25, r1
 62c:	11 24       	eor	r1, r1
 62e:	96 95       	lsr	r25
 630:	96 95       	lsr	r25
 632:	96 95       	lsr	r25
 634:	2a e0       	ldi	r18, 0x0A	; 10
 636:	92 02       	muls	r25, r18
 638:	11 24       	eor	r1, r1
 63a:	98 2f       	mov	r25, r24
 63c:	90 19       	sub	r25, r0
 63e:	90 63       	ori	r25, 0x30	; 48
        intrinsics::volatile_load(src)
 640:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 644:	20 72       	andi	r18, 0x20	; 32
 646:	20 30       	cpi	r18, 0x00	; 0
 648:	d9 f3       	breq	.-10     	; 0x640 <__LOCK_REGION_LENGTH__+0x240>
        intrinsics::volatile_store(dst, src);
 64a:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 64e:	a4 e2       	ldi	r26, 0x24	; 36
 650:	b1 e0       	ldi	r27, 0x01	; 1
            self.write_byte(*b);
 652:	9c 91       	ld	r25, X
        intrinsics::volatile_load(src)
 654:	20 91 c0 00 	lds	r18, 0x00C0	; 0x8000c0 <__TEXT_REGION_LENGTH__+0x7e00c0>
 658:	20 72       	andi	r18, 0x20	; 32
                    self.raw_flush()?;
 65a:	20 30       	cpi	r18, 0x00	; 0
 65c:	d9 f3       	breq	.-10     	; 0x654 <__LOCK_REGION_LENGTH__+0x254>
        intrinsics::volatile_store(dst, src);
 65e:	90 93 c6 00 	sts	0x00C6, r25	; 0x8000c6 <__TEXT_REGION_LENGTH__+0x7e00c6>
 662:	11 96       	adiw	r26, 0x01	; 1
 664:	a0 17       	cp	r26, r16
 666:	b1 07       	cpc	r27, r17
 668:	a1 f7       	brne	.-24     	; 0x652 <__LOCK_REGION_LENGTH__+0x252>
 66a:	14 01       	movw	r2, r8
 66c:	a3 e0       	ldi	r26, 0x03	; 3
 66e:	fc cd       	rjmp	.-1032   	; 0x268 <.Lname87+0x65>
 670:	ff cf       	rjmp	.-2      	; 0x670 <__LOCK_REGION_LENGTH__+0x270>
            Some(val) => val,
            None => panic("called `Option::unwrap()` on a `None` value"),
 672:	0e 94 fc 04 	call	0x9f8	; 0x9f8 <_ZN4core9panicking5panic17h635b46b4e639a017E>
 676:	0e 94 01 05 	call	0xa02	; 0xa02 <abort>

0000067a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE>:
    fn progression(
 67a:	dc 01       	movw	r26, r24
 67c:	81 e0       	ldi	r24, 0x01	; 1
        match cur_state {
 67e:	42 30       	cpi	r20, 0x02	; 2
 680:	a4 f4       	brge	.+40     	; 0x6aa <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x30>
 682:	40 30       	cpi	r20, 0x00	; 0
 684:	09 f4       	brne	.+2      	; 0x688 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xe>
 686:	24 c0       	rjmp	.+72     	; 0x6d0 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x56>
 688:	41 30       	cpi	r20, 0x01	; 1
 68a:	09 f0       	breq	.+2      	; 0x68e <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x14>
 68c:	2c c1       	rjmp	.+600    	; 0x8e6 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x26c>
                match self.port {
 68e:	fd 01       	movw	r30, r26
 690:	82 81       	ldd	r24, Z+2	; 0x02
 692:	80 30       	cpi	r24, 0x00	; 0
 694:	09 f4       	brne	.+2      	; 0x698 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1e>
 696:	37 c0       	rjmp	.+110    	; 0x706 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x8c>
 698:	81 30       	cpi	r24, 0x01	; 1
 69a:	09 f0       	breq	.+2      	; 0x69e <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x24>
 69c:	3a c0       	rjmp	.+116    	; 0x712 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x98>
        intrinsics::volatile_load(src)
 69e:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 6a0:	fd 01       	movw	r30, r26
 6a2:	93 81       	ldd	r25, Z+3	; 0x03
 6a4:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 6a6:	98 b9       	out	0x08, r25	; 8
 6a8:	39 c0       	rjmp	.+114    	; 0x71c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xa2>
 6aa:	42 30       	cpi	r20, 0x02	; 2
 6ac:	f1 f0       	breq	.+60     	; 0x6ea <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x70>
 6ae:	43 30       	cpi	r20, 0x03	; 3
 6b0:	09 f0       	breq	.+2      	; 0x6b4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x3a>
 6b2:	19 c1       	rjmp	.+562    	; 0x8e6 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x26c>
                match self.port {
 6b4:	fd 01       	movw	r30, r26
 6b6:	82 81       	ldd	r24, Z+2	; 0x02
 6b8:	80 30       	cpi	r24, 0x00	; 0
 6ba:	09 f4       	brne	.+2      	; 0x6be <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x44>
 6bc:	3d c0       	rjmp	.+122    	; 0x738 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xbe>
 6be:	81 30       	cpi	r24, 0x01	; 1
 6c0:	09 f0       	breq	.+2      	; 0x6c4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x4a>
 6c2:	40 c0       	rjmp	.+128    	; 0x744 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xca>
        intrinsics::volatile_load(src)
 6c4:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 6c6:	fd 01       	movw	r30, r26
 6c8:	93 81       	ldd	r25, Z+3	; 0x03
 6ca:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 6cc:	98 b9       	out	0x08, r25	; 8
 6ce:	3f c0       	rjmp	.+126    	; 0x74e <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xd4>
                match self.port {
 6d0:	8c 91       	ld	r24, X
 6d2:	80 30       	cpi	r24, 0x00	; 0
 6d4:	09 f4       	brne	.+2      	; 0x6d8 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x5e>
 6d6:	4a c0       	rjmp	.+148    	; 0x76c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xf2>
 6d8:	81 30       	cpi	r24, 0x01	; 1
 6da:	09 f0       	breq	.+2      	; 0x6de <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x64>
 6dc:	4d c0       	rjmp	.+154    	; 0x778 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xfe>
        intrinsics::volatile_load(src)
 6de:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 6e0:	fd 01       	movw	r30, r26
 6e2:	91 81       	ldd	r25, Z+1	; 0x01
 6e4:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 6e6:	98 b9       	out	0x08, r25	; 8
 6e8:	4c c0       	rjmp	.+152    	; 0x782 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x108>
                match self.port {
 6ea:	8c 91       	ld	r24, X
 6ec:	80 30       	cpi	r24, 0x00	; 0
 6ee:	09 f4       	brne	.+2      	; 0x6f2 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x78>
 6f0:	57 c0       	rjmp	.+174    	; 0x7a0 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x126>
 6f2:	81 30       	cpi	r24, 0x01	; 1
 6f4:	09 f0       	breq	.+2      	; 0x6f8 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x7e>
 6f6:	5b c0       	rjmp	.+182    	; 0x7ae <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x134>
        intrinsics::volatile_load(src)
 6f8:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 6fa:	fd 01       	movw	r30, r26
 6fc:	91 81       	ldd	r25, Z+1	; 0x01
 6fe:	90 95       	com	r25
 700:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 702:	98 b9       	out	0x08, r25	; 8
 704:	5a c0       	rjmp	.+180    	; 0x7ba <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x140>
        intrinsics::volatile_load(src)
 706:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() | self.mask)
 708:	fd 01       	movw	r30, r26
 70a:	93 81       	ldd	r25, Z+3	; 0x03
 70c:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 70e:	95 b9       	out	0x05, r25	; 5
 710:	05 c0       	rjmp	.+10     	; 0x71c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xa2>
        intrinsics::volatile_load(src)
 712:	8b b1       	in	r24, 0x0b	; 11
 714:	fd 01       	movw	r30, r26
 716:	93 81       	ldd	r25, Z+3	; 0x03
 718:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 71a:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 71c:	fb 01       	movw	r30, r22
 71e:	82 81       	ldd	r24, Z+2	; 0x02
 720:	80 30       	cpi	r24, 0x00	; 0
 722:	09 f4       	brne	.+2      	; 0x726 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xac>
 724:	59 c0       	rjmp	.+178    	; 0x7d8 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x15e>
 726:	81 30       	cpi	r24, 0x01	; 1
 728:	09 f0       	breq	.+2      	; 0x72c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xb2>
 72a:	5c c0       	rjmp	.+184    	; 0x7e4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x16a>
        intrinsics::volatile_load(src)
 72c:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 72e:	fb 01       	movw	r30, r22
 730:	93 81       	ldd	r25, Z+3	; 0x03
 732:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 734:	98 b9       	out	0x08, r25	; 8
 736:	5b c0       	rjmp	.+182    	; 0x7ee <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x174>
        intrinsics::volatile_load(src)
 738:	85 b1       	in	r24, 0x05	; 5
 73a:	fd 01       	movw	r30, r26
 73c:	93 81       	ldd	r25, Z+3	; 0x03
 73e:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 740:	95 b9       	out	0x05, r25	; 5
 742:	05 c0       	rjmp	.+10     	; 0x74e <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xd4>
        intrinsics::volatile_load(src)
 744:	8b b1       	in	r24, 0x0b	; 11
 746:	fd 01       	movw	r30, r26
 748:	93 81       	ldd	r25, Z+3	; 0x03
 74a:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 74c:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 74e:	fd 01       	movw	r30, r26
 750:	84 81       	ldd	r24, Z+4	; 0x04
 752:	80 30       	cpi	r24, 0x00	; 0
 754:	09 f4       	brne	.+2      	; 0x758 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xde>
 756:	5a c0       	rjmp	.+180    	; 0x80c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x192>
 758:	81 30       	cpi	r24, 0x01	; 1
 75a:	09 f0       	breq	.+2      	; 0x75e <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0xe4>
 75c:	5e c0       	rjmp	.+188    	; 0x81a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1a0>
        intrinsics::volatile_load(src)
 75e:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 760:	fd 01       	movw	r30, r26
 762:	95 81       	ldd	r25, Z+5	; 0x05
 764:	90 95       	com	r25
 766:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 768:	98 b9       	out	0x08, r25	; 8
 76a:	5d c0       	rjmp	.+186    	; 0x826 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1ac>
        intrinsics::volatile_load(src)
 76c:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() | self.mask)
 76e:	fd 01       	movw	r30, r26
 770:	91 81       	ldd	r25, Z+1	; 0x01
 772:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 774:	95 b9       	out	0x05, r25	; 5
 776:	05 c0       	rjmp	.+10     	; 0x782 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x108>
        intrinsics::volatile_load(src)
 778:	8b b1       	in	r24, 0x0b	; 11
 77a:	fd 01       	movw	r30, r26
 77c:	91 81       	ldd	r25, Z+1	; 0x01
 77e:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 780:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 782:	fd 01       	movw	r30, r26
 784:	82 81       	ldd	r24, Z+2	; 0x02
 786:	80 30       	cpi	r24, 0x00	; 0
 788:	09 f4       	brne	.+2      	; 0x78c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x112>
 78a:	5b c0       	rjmp	.+182    	; 0x842 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1c8>
 78c:	81 30       	cpi	r24, 0x01	; 1
 78e:	09 f0       	breq	.+2      	; 0x792 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x118>
 790:	5f c0       	rjmp	.+190    	; 0x850 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1d6>
        intrinsics::volatile_load(src)
 792:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 794:	fd 01       	movw	r30, r26
 796:	93 81       	ldd	r25, Z+3	; 0x03
 798:	90 95       	com	r25
 79a:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 79c:	98 b9       	out	0x08, r25	; 8
 79e:	5e c0       	rjmp	.+188    	; 0x85c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1e2>
        intrinsics::volatile_load(src)
 7a0:	85 b1       	in	r24, 0x05	; 5
 7a2:	fd 01       	movw	r30, r26
 7a4:	91 81       	ldd	r25, Z+1	; 0x01
 7a6:	90 95       	com	r25
 7a8:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 7aa:	95 b9       	out	0x05, r25	; 5
 7ac:	06 c0       	rjmp	.+12     	; 0x7ba <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x140>
        intrinsics::volatile_load(src)
 7ae:	8b b1       	in	r24, 0x0b	; 11
 7b0:	fd 01       	movw	r30, r26
 7b2:	91 81       	ldd	r25, Z+1	; 0x01
 7b4:	90 95       	com	r25
 7b6:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 7b8:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 7ba:	fd 01       	movw	r30, r26
 7bc:	82 81       	ldd	r24, Z+2	; 0x02
 7be:	80 30       	cpi	r24, 0x00	; 0
 7c0:	09 f4       	brne	.+2      	; 0x7c4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x14a>
 7c2:	5b c0       	rjmp	.+182    	; 0x87a <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x200>
 7c4:	81 30       	cpi	r24, 0x01	; 1
 7c6:	09 f0       	breq	.+2      	; 0x7ca <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x150>
 7c8:	5f c0       	rjmp	.+190    	; 0x888 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x20e>
        intrinsics::volatile_load(src)
 7ca:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 7cc:	fd 01       	movw	r30, r26
 7ce:	93 81       	ldd	r25, Z+3	; 0x03
 7d0:	90 95       	com	r25
 7d2:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 7d4:	98 b9       	out	0x08, r25	; 8
 7d6:	5e c0       	rjmp	.+188    	; 0x894 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x21a>
        intrinsics::volatile_load(src)
 7d8:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() | self.mask)
 7da:	fb 01       	movw	r30, r22
 7dc:	93 81       	ldd	r25, Z+3	; 0x03
 7de:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 7e0:	95 b9       	out	0x05, r25	; 5
 7e2:	05 c0       	rjmp	.+10     	; 0x7ee <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x174>
        intrinsics::volatile_load(src)
 7e4:	8b b1       	in	r24, 0x0b	; 11
 7e6:	fb 01       	movw	r30, r22
 7e8:	93 81       	ldd	r25, Z+3	; 0x03
 7ea:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 7ec:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 7ee:	fb 01       	movw	r30, r22
 7f0:	84 81       	ldd	r24, Z+4	; 0x04
 7f2:	80 30       	cpi	r24, 0x00	; 0
 7f4:	09 f4       	brne	.+2      	; 0x7f8 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x17e>
 7f6:	5c c0       	rjmp	.+184    	; 0x8b0 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x236>
 7f8:	81 30       	cpi	r24, 0x01	; 1
 7fa:	09 f0       	breq	.+2      	; 0x7fe <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x184>
 7fc:	60 c0       	rjmp	.+192    	; 0x8be <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x244>
        intrinsics::volatile_load(src)
 7fe:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 800:	fb 01       	movw	r30, r22
 802:	95 81       	ldd	r25, Z+5	; 0x05
 804:	90 95       	com	r25
 806:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 808:	98 b9       	out	0x08, r25	; 8
 80a:	5f c0       	rjmp	.+190    	; 0x8ca <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x250>
        intrinsics::volatile_load(src)
 80c:	85 b1       	in	r24, 0x05	; 5
 80e:	fd 01       	movw	r30, r26
 810:	95 81       	ldd	r25, Z+5	; 0x05
 812:	90 95       	com	r25
 814:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 816:	95 b9       	out	0x05, r25	; 5
 818:	06 c0       	rjmp	.+12     	; 0x826 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1ac>
        intrinsics::volatile_load(src)
 81a:	8b b1       	in	r24, 0x0b	; 11
 81c:	fd 01       	movw	r30, r26
 81e:	95 81       	ldd	r25, Z+5	; 0x05
 820:	90 95       	com	r25
 822:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 824:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 826:	fb 01       	movw	r30, r22
 828:	82 81       	ldd	r24, Z+2	; 0x02
 82a:	80 30       	cpi	r24, 0x00	; 0
 82c:	09 f4       	brne	.+2      	; 0x830 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1b6>
 82e:	4f c0       	rjmp	.+158    	; 0x8ce <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x254>
 830:	81 30       	cpi	r24, 0x01	; 1
 832:	09 f0       	breq	.+2      	; 0x836 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1bc>
 834:	52 c0       	rjmp	.+164    	; 0x8da <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x260>
        intrinsics::volatile_load(src)
 836:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 838:	fb 01       	movw	r30, r22
 83a:	93 81       	ldd	r25, Z+3	; 0x03
 83c:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 83e:	98 b9       	out	0x08, r25	; 8
 840:	51 c0       	rjmp	.+162    	; 0x8e4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x26a>
        intrinsics::volatile_load(src)
 842:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() & !self.mask)
 844:	fd 01       	movw	r30, r26
 846:	93 81       	ldd	r25, Z+3	; 0x03
 848:	90 95       	com	r25
 84a:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 84c:	95 b9       	out	0x05, r25	; 5
 84e:	06 c0       	rjmp	.+12     	; 0x85c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1e2>
        intrinsics::volatile_load(src)
 850:	8b b1       	in	r24, 0x0b	; 11
 852:	fd 01       	movw	r30, r26
 854:	93 81       	ldd	r25, Z+3	; 0x03
 856:	90 95       	com	r25
 858:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 85a:	9b b9       	out	0x0b, r25	; 11
 85c:	db 01       	movw	r26, r22
                match self.port {
 85e:	8c 91       	ld	r24, X
 860:	80 30       	cpi	r24, 0x00	; 0
 862:	09 f4       	brne	.+2      	; 0x866 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1ec>
 864:	41 c0       	rjmp	.+130    	; 0x8e8 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x26e>
 866:	81 30       	cpi	r24, 0x01	; 1
 868:	09 f0       	breq	.+2      	; 0x86c <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x1f2>
 86a:	45 c0       	rjmp	.+138    	; 0x8f6 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x27c>
        intrinsics::volatile_load(src)
 86c:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 86e:	fd 01       	movw	r30, r26
 870:	91 81       	ldd	r25, Z+1	; 0x01
 872:	90 95       	com	r25
 874:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 876:	98 b9       	out	0x08, r25	; 8
 878:	44 c0       	rjmp	.+136    	; 0x902 <__stack+0x3>
        intrinsics::volatile_load(src)
 87a:	85 b1       	in	r24, 0x05	; 5
 87c:	fd 01       	movw	r30, r26
 87e:	93 81       	ldd	r25, Z+3	; 0x03
 880:	90 95       	com	r25
 882:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 884:	95 b9       	out	0x05, r25	; 5
 886:	06 c0       	rjmp	.+12     	; 0x894 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x21a>
        intrinsics::volatile_load(src)
 888:	8b b1       	in	r24, 0x0b	; 11
 88a:	fd 01       	movw	r30, r26
 88c:	93 81       	ldd	r25, Z+3	; 0x03
 88e:	90 95       	com	r25
 890:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 892:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 894:	fd 01       	movw	r30, r26
 896:	84 81       	ldd	r24, Z+4	; 0x04
 898:	80 30       	cpi	r24, 0x00	; 0
 89a:	09 f4       	brne	.+2      	; 0x89e <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x224>
 89c:	41 c0       	rjmp	.+130    	; 0x920 <__stack+0x21>
 89e:	81 30       	cpi	r24, 0x01	; 1
 8a0:	09 f0       	breq	.+2      	; 0x8a4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x22a>
 8a2:	44 c0       	rjmp	.+136    	; 0x92c <__stack+0x2d>
        intrinsics::volatile_load(src)
 8a4:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 8a6:	fd 01       	movw	r30, r26
 8a8:	95 81       	ldd	r25, Z+5	; 0x05
 8aa:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 8ac:	98 b9       	out	0x08, r25	; 8
 8ae:	43 c0       	rjmp	.+134    	; 0x936 <__stack+0x37>
        intrinsics::volatile_load(src)
 8b0:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() & !self.mask)
 8b2:	fb 01       	movw	r30, r22
 8b4:	95 81       	ldd	r25, Z+5	; 0x05
 8b6:	90 95       	com	r25
 8b8:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 8ba:	95 b9       	out	0x05, r25	; 5
 8bc:	06 c0       	rjmp	.+12     	; 0x8ca <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x250>
        intrinsics::volatile_load(src)
 8be:	8b b1       	in	r24, 0x0b	; 11
 8c0:	fb 01       	movw	r30, r22
 8c2:	95 81       	ldd	r25, Z+5	; 0x05
 8c4:	90 95       	com	r25
 8c6:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 8c8:	9b b9       	out	0x0b, r25	; 11
 8ca:	82 e0       	ldi	r24, 0x02	; 2
    }
 8cc:	08 95       	ret
        intrinsics::volatile_load(src)
 8ce:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() | self.mask)
 8d0:	fb 01       	movw	r30, r22
 8d2:	93 81       	ldd	r25, Z+3	; 0x03
 8d4:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 8d6:	95 b9       	out	0x05, r25	; 5
 8d8:	05 c0       	rjmp	.+10     	; 0x8e4 <_ZN12traffic_rust20__avr_device_rt_main11progression17h8d61084fb5dcf19bE+0x26a>
        intrinsics::volatile_load(src)
 8da:	8b b1       	in	r24, 0x0b	; 11
 8dc:	fb 01       	movw	r30, r22
 8de:	93 81       	ldd	r25, Z+3	; 0x03
 8e0:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 8e2:	9b b9       	out	0x0b, r25	; 11
 8e4:	81 2d       	mov	r24, r1
 8e6:	08 95       	ret
        intrinsics::volatile_load(src)
 8e8:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() & !self.mask)
 8ea:	fd 01       	movw	r30, r26
 8ec:	91 81       	ldd	r25, Z+1	; 0x01
 8ee:	90 95       	com	r25
 8f0:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 8f2:	95 b9       	out	0x05, r25	; 5
 8f4:	06 c0       	rjmp	.+12     	; 0x902 <__stack+0x3>
        intrinsics::volatile_load(src)
 8f6:	8b b1       	in	r24, 0x0b	; 11
 8f8:	fd 01       	movw	r30, r26
 8fa:	91 81       	ldd	r25, Z+1	; 0x01
 8fc:	90 95       	com	r25
 8fe:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 900:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 902:	fd 01       	movw	r30, r26
 904:	82 81       	ldd	r24, Z+2	; 0x02
 906:	80 30       	cpi	r24, 0x00	; 0
 908:	09 f4       	brne	.+2      	; 0x90c <__stack+0xd>
 90a:	23 c0       	rjmp	.+70     	; 0x952 <__stack+0x53>
 90c:	81 30       	cpi	r24, 0x01	; 1
 90e:	09 f0       	breq	.+2      	; 0x912 <__stack+0x13>
 910:	27 c0       	rjmp	.+78     	; 0x960 <__stack+0x61>
        intrinsics::volatile_load(src)
 912:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 914:	fd 01       	movw	r30, r26
 916:	93 81       	ldd	r25, Z+3	; 0x03
 918:	90 95       	com	r25
 91a:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 91c:	98 b9       	out	0x08, r25	; 8
 91e:	26 c0       	rjmp	.+76     	; 0x96c <__stack+0x6d>
        intrinsics::volatile_load(src)
 920:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() | self.mask)
 922:	fd 01       	movw	r30, r26
 924:	95 81       	ldd	r25, Z+5	; 0x05
 926:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 928:	95 b9       	out	0x05, r25	; 5
 92a:	05 c0       	rjmp	.+10     	; 0x936 <__stack+0x37>
        intrinsics::volatile_load(src)
 92c:	8b b1       	in	r24, 0x0b	; 11
 92e:	fd 01       	movw	r30, r26
 930:	95 81       	ldd	r25, Z+5	; 0x05
 932:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 934:	9b b9       	out	0x0b, r25	; 11
 936:	db 01       	movw	r26, r22
                match self.port {
 938:	8c 91       	ld	r24, X
 93a:	80 30       	cpi	r24, 0x00	; 0
 93c:	09 f4       	brne	.+2      	; 0x940 <__stack+0x41>
 93e:	24 c0       	rjmp	.+72     	; 0x988 <__stack+0x89>
 940:	81 30       	cpi	r24, 0x01	; 1
 942:	09 f0       	breq	.+2      	; 0x946 <__stack+0x47>
 944:	27 c0       	rjmp	.+78     	; 0x994 <__stack+0x95>
        intrinsics::volatile_load(src)
 946:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 948:	fd 01       	movw	r30, r26
 94a:	91 81       	ldd	r25, Z+1	; 0x01
 94c:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 94e:	98 b9       	out	0x08, r25	; 8
 950:	26 c0       	rjmp	.+76     	; 0x99e <__stack+0x9f>
        intrinsics::volatile_load(src)
 952:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() & !self.mask)
 954:	fd 01       	movw	r30, r26
 956:	93 81       	ldd	r25, Z+3	; 0x03
 958:	90 95       	com	r25
 95a:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 95c:	95 b9       	out	0x05, r25	; 5
 95e:	06 c0       	rjmp	.+12     	; 0x96c <__stack+0x6d>
        intrinsics::volatile_load(src)
 960:	8b b1       	in	r24, 0x0b	; 11
 962:	fd 01       	movw	r30, r26
 964:	93 81       	ldd	r25, Z+3	; 0x03
 966:	90 95       	com	r25
 968:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 96a:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 96c:	fd 01       	movw	r30, r26
 96e:	84 81       	ldd	r24, Z+4	; 0x04
 970:	80 30       	cpi	r24, 0x00	; 0
 972:	09 f4       	brne	.+2      	; 0x976 <__stack+0x77>
 974:	21 c0       	rjmp	.+66     	; 0x9b8 <__stack+0xb9>
 976:	81 30       	cpi	r24, 0x01	; 1
 978:	09 f0       	breq	.+2      	; 0x97c <__stack+0x7d>
 97a:	24 c0       	rjmp	.+72     	; 0x9c4 <__stack+0xc5>
        intrinsics::volatile_load(src)
 97c:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() | self.mask)
 97e:	fd 01       	movw	r30, r26
 980:	95 81       	ldd	r25, Z+5	; 0x05
 982:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 984:	98 b9       	out	0x08, r25	; 8
 986:	23 c0       	rjmp	.+70     	; 0x9ce <__stack+0xcf>
        intrinsics::volatile_load(src)
 988:	85 b1       	in	r24, 0x05	; 5
 98a:	fd 01       	movw	r30, r26
 98c:	91 81       	ldd	r25, Z+1	; 0x01
 98e:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 990:	95 b9       	out	0x05, r25	; 5
 992:	05 c0       	rjmp	.+10     	; 0x99e <__stack+0x9f>
        intrinsics::volatile_load(src)
 994:	8b b1       	in	r24, 0x0b	; 11
 996:	fd 01       	movw	r30, r26
 998:	91 81       	ldd	r25, Z+1	; 0x01
 99a:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 99c:	9b b9       	out	0x0b, r25	; 11
                match self.port {
 99e:	fd 01       	movw	r30, r26
 9a0:	82 81       	ldd	r24, Z+2	; 0x02
 9a2:	80 30       	cpi	r24, 0x00	; 0
 9a4:	b1 f0       	breq	.+44     	; 0x9d2 <__stack+0xd3>
 9a6:	81 30       	cpi	r24, 0x01	; 1
 9a8:	d9 f4       	brne	.+54     	; 0x9e0 <__stack+0xe1>
        intrinsics::volatile_load(src)
 9aa:	88 b1       	in	r24, 0x08	; 8
                        w.bits(r.bits() & !self.mask)
 9ac:	fd 01       	movw	r30, r26
 9ae:	93 81       	ldd	r25, Z+3	; 0x03
 9b0:	90 95       	com	r25
 9b2:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 9b4:	98 b9       	out	0x08, r25	; 8
 9b6:	1a c0       	rjmp	.+52     	; 0x9ec <__stack+0xed>
        intrinsics::volatile_load(src)
 9b8:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() | self.mask)
 9ba:	fd 01       	movw	r30, r26
 9bc:	95 81       	ldd	r25, Z+5	; 0x05
 9be:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 9c0:	95 b9       	out	0x05, r25	; 5
 9c2:	05 c0       	rjmp	.+10     	; 0x9ce <__stack+0xcf>
        intrinsics::volatile_load(src)
 9c4:	8b b1       	in	r24, 0x0b	; 11
 9c6:	fd 01       	movw	r30, r26
 9c8:	95 81       	ldd	r25, Z+5	; 0x05
 9ca:	98 2b       	or	r25, r24
        intrinsics::volatile_store(dst, src);
 9cc:	9b b9       	out	0x0b, r25	; 11
 9ce:	81 e0       	ldi	r24, 0x01	; 1
 9d0:	08 95       	ret
        intrinsics::volatile_load(src)
 9d2:	85 b1       	in	r24, 0x05	; 5
                        w.bits(r.bits() & !self.mask)
 9d4:	fd 01       	movw	r30, r26
 9d6:	93 81       	ldd	r25, Z+3	; 0x03
 9d8:	90 95       	com	r25
 9da:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 9dc:	95 b9       	out	0x05, r25	; 5
 9de:	06 c0       	rjmp	.+12     	; 0x9ec <__stack+0xed>
        intrinsics::volatile_load(src)
 9e0:	8b b1       	in	r24, 0x0b	; 11
 9e2:	fd 01       	movw	r30, r26
 9e4:	93 81       	ldd	r25, Z+3	; 0x03
 9e6:	90 95       	com	r25
 9e8:	98 23       	and	r25, r24
        intrinsics::volatile_store(dst, src);
 9ea:	9b b9       	out	0x0b, r25	; 11
 9ec:	83 e0       	ldi	r24, 0x03	; 3
 9ee:	08 95       	ret

000009f0 <_ZN4core9panicking9panic_fmt17h4fccb8829f6c8dfeE>:
    }

    let pi = PanicInfo::internal_constructor(Some(&fmt), Location::caller(), true);

    // SAFETY: `panic_impl` is defined in safe Rust code and thus is safe to call.
    unsafe { panic_impl(&pi) }
 9f0:	0e 94 00 05 	call	0xa00	; 0xa00 <rust_begin_unwind>
 9f4:	0e 94 01 05 	call	0xa02	; 0xa02 <abort>

000009f8 <_ZN4core9panicking5panic17h635b46b4e639a017E>:
    panic_fmt(fmt::Arguments::new_v1(&[expr], &[]));
 9f8:	0e 94 f8 04 	call	0x9f0	; 0x9f0 <_ZN4core9panicking9panic_fmt17h4fccb8829f6c8dfeE>
 9fc:	0e 94 01 05 	call	0xa02	; 0xa02 <abort>

00000a00 <rust_begin_unwind>:
use core::sync::atomic::{self, Ordering};

#[inline(never)]
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {
 a00:	ff cf       	rjmp	.-2      	; 0xa00 <rust_begin_unwind>

00000a02 <abort>:
 a02:	81 e0       	ldi	r24, 0x01	; 1
 a04:	90 e0       	ldi	r25, 0x00	; 0
 a06:	f8 94       	cli
 a08:	0c 94 06 05 	jmp	0xa0c	; 0xa0c <_exit>

00000a0c <_exit>:
 a0c:	f8 94       	cli

00000a0e <__stop_program>:
 a0e:	ff cf       	rjmp	.-2      	; 0xa0e <__stop_program>
