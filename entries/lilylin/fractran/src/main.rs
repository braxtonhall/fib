#![feature(int_log)]

use crate::core::Program;

use anyhow::Ok;
use anyhow::Result;
use engines::register::Register;

mod core;
mod engines;

fn execute_fib() {
    for i in 1..15 {
        let engine = Register {
            program: Program::fibonacci(i),
            output_base: 2,
        };
        let n = 1;
        for val in engine.into_iter().take(n) {
            print!("{:?},", val);
        }
    }
}

fn main() -> Result<()> {
    execute_fib();
    return Ok(());
}
