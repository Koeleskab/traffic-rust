#![no_std]
#![no_main]
#![feature(abi_avr_interrupt)]

use arduino_hal::{
    hal::port::Dynamic,
    port::{
        mode::{Input, Output, PullUp},
        Pin,
    },
};
use panic_halt as _;
mod millis;
//use embedded_hal::serial::Read;
//use ufmt::uWrite;

const RED: i8 = 0;
const YELLOW_BEFORE_GREEN: i8 = 1;
const GREEN: i8 = 2;
const YELLOW_BEFORE_RED: i8 = 3;
#[arduino_hal::entry]
fn main() -> ! {
    let dp = arduino_hal::Peripherals::take().unwrap();
    let pins = arduino_hal::pins!(dp);
    millis::millis_init(dp.TC0);
    // Enable interrupts globally
    unsafe { avr_device::interrupt::enable() };

    let mut serial = arduino_hal::default_serial!(dp, pins, 57600);
    /*
     * For examples (and inspiration), head to
     *
     *     https://github.com/Rahix/avr-hal/tree/main/examples
     *
     * NOTE: Not all examples were ported to all boards!  There is a good chance though, that code
     * for a different board can be adapted for yours.  The Arduino Uno currently has the most
     * examples available.
     */

    //værdier der bruges til at beregne lyskurvens fremgang
    const GREEN_RED_TIME: i8 = 5;
    const YELLOW_TIME: i8 = 1;
    let mut traffic_timer: u32 = millis::millis();
    let mut ms_red: i16 = 1000;
    let mut ms_green: i16 = 1000;
    let mut light_state: i8 = 1;
    //let mut prev_state: Option<i8> = None;

    //array med traff1 og traff2
    let mut traffic1 = [
        pins.d10.into_output().downgrade(),
        pins.d9.into_output().downgrade(),
        pins.d8.into_output().downgrade(),
    ];
    let mut traffic2 = [
        pins.d6.into_output().downgrade(),
        pins.d5.into_output().downgrade(),
        pins.d4.into_output().downgrade(),
    ];

    let mut buttons = [
        pins.d2.into_pull_up_input().downgrade(),
        pins.d3.into_pull_up_input().downgrade(),
    ];
    fn progression(
        traff1: &mut [Pin<Output, Dynamic>; 3],
        traff2: &mut [Pin<Output, Dynamic>; 3],
        mut cur_state: i8,
    ) -> i8 {
        match cur_state {
            RED => {
                //uwriteln!(&mut serial, "red!\r").void_unwrap();
                traff1[0].set_high();
                traff1[1].set_low();
                traff2[0].set_low();
                traff2[1].set_low();
                traff2[2].set_high();
                cur_state += 1;
                return cur_state;
            }
            YELLOW_BEFORE_GREEN => {
                traff1[1].set_high();
                traff2[1].set_high();
                traff2[2].set_low();
                //uwriteln!(&mut serial, "Yellow before green!\r").void_unwrap();
                cur_state += 1;
                return cur_state;
            }
            GREEN => {
                //uwriteln!(&mut serial, "green!\r").void_unwrap();
                traff1[0].set_low();
                traff1[1].set_low();
                traff1[2].set_high();
                traff2[0].set_high();
                traff2[1].set_low();
                cur_state += 1;
                return cur_state;
            }
            YELLOW_BEFORE_RED => {
                traff1[1].set_high();
                traff1[2].set_low();
                traff2[1].set_high();
                cur_state = 0;
                return cur_state;
            }
            _ => return 1,
        }
    }
    fn ms_change(ms_thing: i16, btn: &mut Pin<Input<PullUp>, Dynamic>) -> i16 {
        return if ms_thing == 1000 {
            lightbutton(btn)
        } else {
            ms_thing
        };
    }
    fn lightbutton(but: &mut Pin<Input<PullUp>, Dynamic>) -> i16 {
        return if but.is_low() { 2000 } else { 1000 };
    }

    //set each light in opposite yellow position.
    progression(&mut traffic1, &mut traffic2, light_state);
    //sent lifesign
    ufmt::uwriteln!(&mut serial, "Hello from Arduino!\r").unwrap();
    loop {
        match light_state {
            RED => {
                ms_green = ms_change(ms_green, &mut buttons[0]);
                if millis::millis() - traffic_timer as u32 > (YELLOW_TIME as i16 * 1000) as u32 {
                    ms_red = 1000;
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
                    traffic_timer = millis::millis();
                    ufmt::uwriteln!(&mut serial, "current state: {}!\r", light_state).unwrap();
                }
            }
            YELLOW_BEFORE_GREEN => {
                ms_red = ms_change(ms_red, &mut buttons[1]);
                ms_green = ms_change(ms_green, &mut buttons[0]);
                if millis::millis() - traffic_timer as u32
                    > (GREEN_RED_TIME as i16 * ms_green) as u32
                {
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
                    traffic_timer = millis::millis();
                    ufmt::uwriteln!(&mut serial, "current state: {}!\r", light_state).unwrap();
                }
            }
            GREEN => {
                ms_red = ms_change(ms_red, &mut buttons[1]);
                if millis::millis() - traffic_timer as u32 > (YELLOW_TIME as i16 * 1000) as u32 {
                    ms_green = 1000;
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
                    traffic_timer = millis::millis();
                    ufmt::uwriteln!(&mut serial, "current state: {}!\r", light_state).unwrap();
                }
            }
            YELLOW_BEFORE_RED => {
                ms_red = ms_change(ms_red, &mut buttons[1]);
                ms_green = ms_change(ms_green, &mut buttons[0]);
                if millis::millis() - traffic_timer as u32 > (GREEN_RED_TIME as i16 * ms_red) as u32
                {
                    light_state = progression(&mut traffic1, &mut traffic2, light_state);
                    traffic_timer = millis::millis();
                    ufmt::uwriteln!(&mut serial, "current state: {}!\r", light_state).unwrap();
                }
            }
            // YELLOW_BEFORE_RED => {

            // }
            _ => (),
        }
    }
}
