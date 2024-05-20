
/Users/jakob/Documents/4.sem projekt/Tests/pintoggle/target/avr-atmega328p/debug/pintoggle.elf:     file format elf32-avr


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
  38:	0c 94 51 00 	jmp	0xa2	; 0xa2 <__bad_interrupt>
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
  7a:	ec ef       	ldi	r30, 0xFC	; 252

0000007c <.Loc.4>:
  7c:	f0 e0       	ldi	r31, 0x00	; 0

0000007e <.Loc.5>:
  7e:	02 c0       	rjmp	.+4      	; 0x84 <.L__do_copy_data_start>

00000080 <.L__do_copy_data_loop>:
  80:	05 90       	lpm	r0, Z+

00000082 <.Loc.7>:
  82:	0d 92       	st	X+, r0

00000084 <.L__do_copy_data_start>:
  84:	a0 30       	cpi	r26, 0x00	; 0

00000086 <.Loc.9>:
  86:	b1 07       	cpc	r27, r17

00000088 <.Loc.10>:
  88:	d9 f7       	brne	.-10     	; 0x80 <.L__do_copy_data_loop>

0000008a <__do_clear_bss>:
  8a:	21 e0       	ldi	r18, 0x01	; 1

0000008c <.Loc.1>:
  8c:	a0 e0       	ldi	r26, 0x00	; 0

0000008e <.Loc.2>:
  8e:	b1 e0       	ldi	r27, 0x01	; 1

00000090 <.Loc.3>:
  90:	01 c0       	rjmp	.+2      	; 0x94 <.Loc.5>

00000092 <.Loc.4>:
  92:	1d 92       	st	X+, r1

00000094 <.Loc.5>:
  94:	a1 30       	cpi	r26, 0x01	; 1

00000096 <.Loc.6>:
  96:	b2 07       	cpc	r27, r18

00000098 <.Loc.7>:
  98:	e1 f7       	brne	.-8      	; 0x92 <.Loc.4>

0000009a <L0^A>:
  9a:	0e 94 53 00 	call	0xa6	; 0xa6 <main>
  9e:	0c 94 7c 00 	jmp	0xf8	; 0xf8 <_exit>

000000a2 <__bad_interrupt>:
  a2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000a6 <main>:
#![no_std]
#![no_main]

use panic_halt as _;

#[arduino_hal::entry]
  a6:	0e 94 57 00 	call	0xae	; 0xae <_ZN9pintoggle20__avr_device_rt_main17h4d224cdd7c6bba44E>
  aa:	0e 94 77 00 	call	0xee	; 0xee <abort>

000000ae <_ZN9pintoggle20__avr_device_rt_main17h4d224cdd7c6bba44E>:
        if #[cfg(all(target_arch = "avr", avr_device_asm_macro))] {
            // Store current state
            let sreg: u8;

            unsafe {
                asm!(
  ae:	9f b7       	in	r25, 0x3f	; 63
                    sreg = out(reg) sreg,
                )
            };

            // Disable interrupts
            unsafe { asm!("cli") };
  b0:	f8 94       	cli
impl atmega328p::Peripherals {
    /// Returns all the peripherals *once*
    #[inline]
    pub fn take() -> Option<Self> {
        crate::interrupt::free(|_| {
            if unsafe { DEVICE_PERIPHERALS } {
  b2:	80 91 00 01 	lds	r24, 0x0100	; 0x800100 <DEVICE_PERIPHERALS>
  b6:	80 30       	cpi	r24, 0x00	; 0
  b8:	19 f4       	brne	.+6      	; 0xc0 <.Lname31+0x5>
  ba:	21 e0       	ldi	r18, 0x01	; 1
}
impl Peripherals {
    #[doc = r"Unchecked version of `Peripherals::take`"]
    #[inline]
    pub unsafe fn steal() -> Self {
        DEVICE_PERIPHERALS = true;
  bc:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <DEVICE_PERIPHERALS>
            let interrupts_enabled = disable();

            let r = f(unsafe { &CriticalSection::new() });

            // Restore interrupt state
            if interrupts_enabled {
  c0:	99 23       	and	r25, r25
  c2:	0a f4       	brpl	.+2      	; 0xc6 <.Lname32+0x4>
            asm!("sei");
  c4:	78 94       	sei
    #[inline]
    #[track_caller]
    #[stable(feature = "rust1", since = "1.0.0")]
    #[rustc_const_unstable(feature = "const_option", issue = "67441")]
    pub const fn unwrap(self) -> T {
        match self {
  c6:	80 30       	cpi	r24, 0x00	; 0
  c8:	29 f4       	brne	.+10     	; 0xd4 <.Lname35>
#[stable(feature = "volatile", since = "1.9.0")]
pub unsafe fn write_volatile<T>(dst: *mut T, src: T) {
    // SAFETY: the caller must uphold the safety contract for `volatile_store`.
    unsafe {
        assert_unsafe_precondition!(is_aligned_and_not_null(dst));
        intrinsics::volatile_store(dst, src);
  ca:	2d 98       	cbi	0x05, 5	; 5
  cc:	25 9a       	sbi	0x04, 5	; 4
  ce:	80 e2       	ldi	r24, 0x20	; 32
  d0:	83 b9       	out	0x03, r24	; 3
     * examples available.
     */

    let mut led = pins.d13.into_output();

    loop {
  d2:	fe cf       	rjmp	.-4      	; 0xd0 <.Lname34+0x2>
            Some(val) => val,
            None => panic("called `Option::unwrap()` on a `None` value"),
  d4:	0e 94 72 00 	call	0xe4	; 0xe4 <_ZN4core9panicking5panic17hf0b0cc69bcd1ad18E>
  d8:	0e 94 77 00 	call	0xee	; 0xee <abort>

000000dc <_ZN4core9panicking9panic_fmt17h921a6e603c55d3adE>:
    }

    let pi = PanicInfo::internal_constructor(Some(&fmt), Location::caller(), true);

    // SAFETY: `panic_impl` is defined in safe Rust code and thus is safe to call.
    unsafe { panic_impl(&pi) }
  dc:	0e 94 76 00 	call	0xec	; 0xec <rust_begin_unwind>
  e0:	0e 94 77 00 	call	0xee	; 0xee <abort>

000000e4 <_ZN4core9panicking5panic17hf0b0cc69bcd1ad18E>:
    panic_fmt(fmt::Arguments::new_v1(&[expr], &[]));
  e4:	0e 94 6e 00 	call	0xdc	; 0xdc <_ZN4core9panicking9panic_fmt17h921a6e603c55d3adE>
  e8:	0e 94 77 00 	call	0xee	; 0xee <abort>

000000ec <rust_begin_unwind>:
use core::sync::atomic::{self, Ordering};

#[inline(never)]
#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {
  ec:	ff cf       	rjmp	.-2      	; 0xec <rust_begin_unwind>

000000ee <abort>:
  ee:	81 e0       	ldi	r24, 0x01	; 1
  f0:	90 e0       	ldi	r25, 0x00	; 0
  f2:	f8 94       	cli
  f4:	0c 94 7c 00 	jmp	0xf8	; 0xf8 <_exit>

000000f8 <_exit>:
  f8:	f8 94       	cli

000000fa <__stop_program>:
  fa:	ff cf       	rjmp	.-2      	; 0xfa <__stop_program>
