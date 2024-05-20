// #![no_std]
// #![no_main]
// #![feature(abi_avr_interrupt)]

//use arduino_hal::{prelude::*};


//library written to be used as an external library. Imported by putting "mod cycles" in your main file.
use core::cell;
use panic_halt as _;
const TIMER_COUNTS: u32 = 0xFFFF; //Max value of 16-bit integer.



//overflow counter register mapped to unsigned long. Overflow_Counter
static OVERFLOW_COUNTER: avr_device::interrupt::Mutex<cell::Cell<u32>> =
    avr_device::interrupt::Mutex::new(cell::Cell::new(0));

//configures and initializes timer. Comments to the right on each line, contains equivalent Embedded-C.
pub(crate) fn cycles_init(tc1: &arduino_hal::pac::TC1) {
    tc1.tccr1a.write(|w| w.wgm1().bits(0b00) ); //tccr1a = 0
    tc1.tccr1b.write(|w| {w.cs1() 
        .direct()//tccr1b = (1<<CS12)
        .wgm1()
        .bits(0b01)//tccr1b = (1<<WGM12)
    });
    tc1.ocr1a.write(|w| unsafe { w.bits(TIMER_COUNTS as u16) }); //OCR1A = TIMER_COUNTS
    //tc1.tccr1a.write(|w| w.wgm1().bits(0b00));
    tc1.timsk1.write(|w| w.ocie1a().set_bit()); //TIMSK1 = (1<<OCIE1A)

//resets timer.
    avr_device::interrupt::free(|cs| {
        OVERFLOW_COUNTER.borrow(cs).set(0);
    });
}

//resets timer and overflow counter.
pub(crate) fn reset_cycles(tc1: &arduino_hal::pac::TC1){
    avr_device::interrupt::free(|cs| {
        OVERFLOW_COUNTER.borrow(cs).set(0);
        tc1.tcnt1.reset();
    });
}
//ISR(TIMER1_COMA_vect) equivalent. increments overflow counter.
#[avr_device::interrupt(atmega328p)]
fn TIMER1_COMPA() {
    avr_device::interrupt::free(|cs| {
        let counter_cell = OVERFLOW_COUNTER.borrow(cs);
        let counter = counter_cell.get();
        counter_cell.set(counter+1);
    })
}

//returns cycle_count. Number of overflows multiplied with the value of TIMER_COUNTS + the number of cycles in TCNT1.
pub(crate) fn cycle_count(tc1: &arduino_hal::pac::TC1) -> u32 {
    avr_device::interrupt::free(|cs| ((OVERFLOW_COUNTER.borrow(cs).get()*TIMER_COUNTS)) + tc1.tcnt1.read().bits() as u32)
}