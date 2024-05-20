#![no_std]
#![no_main]
#![feature(abi_avr_interrupt)]
use core::i8;
use arduino_hal::prelude::*;
mod cycles;
//extern crate alloc;
//use alloc::boxed::Box;
use arduino_hal::{port::{mode::{self, Input, PullUp}, Pin}, hal::port::Dynamic};
use panic_halt as _;

use crate::cycles::cycle_count;
//use ufmt::{uWrite, uwriteln};
//use embedded_hal::serial::Read;
mod millis;
//use avr_device::interrupt;
//use core::cell;

const RED: i8 = 0;
const YELLOW_BEFORE_GREEN: i8 = 1;
const GREEN: i8 = 2;
const YELLOW_BEFORE_RED: i8 = 3;
#[arduino_hal::entry]
fn main() -> ! {
    let dp = arduino_hal::Peripherals::take().unwrap();
    let pins = arduino_hal::pins!(dp);

    //benchmarking -------
   let mut passes: u32 = 1;
   let mut time_end: u32 = 0;
   let mut serial = arduino_hal::default_serial!(dp, pins, 57600);
   cycles::cycles_init(&dp.TC1);
   unsafe { avr_device::interrupt::enable() }; //sei();
   ufmt::uwriteln!(&mut serial, "ready \r").void_unwrap();
   //benchmarking end ----

    millis::millis_init(dp.TC0);
    unsafe { avr_device::interrupt::enable() };
    //let mut serial = arduino_hal::default_serial!(dp, pins, 57600);

    const GREEN_RED_TIME: i8 = 5;
    const YELLOW_TIME: i8 = 1;
    let mut traffic_timer: u32 = millis::millis();
    let mut ms_red: i16 = 1000;
    let mut ms_green: i16 = 1000;
    let mut light_state = 1;
    let mut traffic1 = Traff {
        gre: (pins.d8.into_output().downgrade()),
        yel: (pins.d9.into_output().downgrade()),
        red: (pins.d10.into_output().downgrade()),
        //pins: (pins),
        state: YELLOW_BEFORE_RED,
    };
    let mut traffic2 = Traff {
        gre: (pins.d4.into_output().downgrade()),
        yel: (pins.d5.into_output().downgrade()),
        red: (pins.d6.into_output().downgrade()),
        //pins: (pins),
        state: YELLOW_BEFORE_GREEN,
    };
    let mut buttons = [
        pins.d2.into_pull_up_input().downgrade(),
        pins.d3.into_pull_up_input().downgrade(),
    ];
    ufmt::uwriteln!(&mut serial, "Hello from Arduino!\r").unwrap();
    light_state = progression(YELLOW_BEFORE_GREEN, YELLOW_BEFORE_GREEN, YELLOW_BEFORE_RED, &mut traffic1, &mut traffic2);
    loop {
        match light_state{
            RED=>{
                ms_green= ms_change(ms_green,&mut buttons[0]);
                //time_end = cycle_count(&dp.TC1);
                if millis::millis() - traffic_timer as u32>(GREEN_RED_TIME as i16*ms_red) as u32 {
                    //ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    cycles::reset_cycles(&dp.TC1);
                    ms_red=1000;
                    light_state = progression(YELLOW_BEFORE_GREEN, YELLOW_BEFORE_GREEN, YELLOW_BEFORE_RED,  &mut traffic1, &mut traffic2);
                    traffic_timer = millis::millis();
                    time_end = cycle_count(&dp.TC1);
                    ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    ufmt::uwriteln!(&mut serial, "state1: \r").unwrap();
                }
            }
            YELLOW_BEFORE_GREEN=>{
                ms_red=ms_change(ms_red,&mut buttons[1]);
                ms_green=ms_change(ms_green,&mut buttons[0]);
                
                if millis::millis()-traffic_timer as u32>(YELLOW_TIME as i16*1000)as u32 {
                    //ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    cycles::reset_cycles(&dp.TC1);
                    light_state = progression(GREEN, GREEN, RED, &mut traffic1, &mut traffic2);
                    traffic_timer = millis::millis();
                    time_end = cycle_count(&dp.TC1);
                    ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    ufmt::uwriteln!(&mut serial, "state2: \r").unwrap();
                }
            }
            GREEN=>{
                ms_red = ms_change(ms_red,&mut buttons[1]);
                //time_end = cycle_count(&dp.TC1);
                if millis::millis() - traffic_timer as u32>(GREEN_RED_TIME as i16*ms_green)as u32 {
                    //ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    cycles::reset_cycles(&dp.TC1);
                    ms_green=1000;
                    light_state = progression(YELLOW_BEFORE_RED, YELLOW_BEFORE_RED, YELLOW_BEFORE_GREEN,  &mut traffic1, &mut traffic2);
                    traffic_timer = millis::millis();
                    time_end = cycle_count(&dp.TC1);
                    ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    ufmt::uwriteln!(&mut serial, "state3: \r").unwrap();
                }
            }
            YELLOW_BEFORE_RED=>{
                ms_red=ms_change(ms_red,&mut buttons[1]);
                ms_green=ms_change(ms_green,&mut buttons[0]);
                //time_end = cycle_count(&dp.TC1);
                if millis::millis()-traffic_timer as u32>(YELLOW_TIME as i16*1000)as u32 {
                    //ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    cycles::reset_cycles(&dp.TC1);
                    light_state = progression(RED, RED, GREEN, &mut traffic1, &mut traffic2);
                    traffic_timer = millis::millis();
                    time_end = cycle_count(&dp.TC1);
                    ufmt::uwriteln!(&mut serial, "execution time: {} \r", time_end).void_unwrap();
                    ufmt::uwriteln!(&mut serial, "state4: \r").unwrap();
                }
            }
            _ => (),
        }
    }
//use light_state = progression(newstate,light1,light2)
    fn progression(newstate: i8, light1:i8,light2:i8, traffic1: &mut Traff,traffic2: &mut Traff)->i8{
        light_states(light1,light2,traffic1,traffic2);
        return newstate;
    }
    fn light_states(light1:i8,light2:i8,traffic1: &mut Traff,traffic2: &mut Traff){
        traffic1.set_state(light1);
        traffic2.set_state(light2);
        traffic1.traffic_light();
        traffic2.traffic_light();
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
    
}
struct Traff {
        gre: Pin<mode::Output>,
        yel: Pin<mode::Output>,
        red: Pin<mode::Output>,
        state: i8,
    }
impl Traff {
    pub fn new(
        green: Pin<mode::Output>,
        yellow: Pin<mode::Output>,
        red: Pin<mode::Output>,
        state: i8,
    ) -> Traff {
        Traff {
            gre: green,
            yel: yellow,
            red,
            state,
        }
        //self(gre: green, yel: yellow, red: red,state:None)
    }
    pub fn set_state(&mut self, state: i8) {
        self.state = state;
    }
    pub fn traffic_light(&mut self) {
        match self.state {
            RED => {
                self.red.set_high();
                self.yel.set_low();
            }
            YELLOW_BEFORE_GREEN => {
                //self.red.set_high();
                self.yel.set_high();
            }
            GREEN => {
                self.red.set_low();
                self.yel.set_low();
                self.gre.set_high();
            }
            YELLOW_BEFORE_RED => {
                self.yel.set_high();
                self.gre.set_low();
            }
            _ => (),
        }
    }
}
