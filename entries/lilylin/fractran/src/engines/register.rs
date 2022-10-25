use std::collections::HashMap;

use crate::core::Program;

#[derive(Debug)]
pub struct Register {
    pub program: Program,
    pub output_base: u64, // which prime factor registers should be used to determine output
}

#[derive(Debug)]
struct Instruction {
    conditions: Vec<(usize, u64)>, // index, amt pairs
    increment: Vec<(usize, u64)>,
}

impl Register {
    fn prime_factorize(x: u64) -> Vec<(u64, u64)> {
        let primes = primes::factors_uniq(x);
        let mut prime_factorized = Vec::new();
        // println!("val: {:?}", x);
        for prime in primes {
            let mut amount = 1;
            loop {
                if x % prime.pow(amount + 1) != 0 {
                    break;
                }
                amount += 1;
            }
            // println!("{:?}, {:?}", prime, amount);
            prime_factorized.push((prime, amount as u64));
        }
        return prime_factorized;
    }
    fn convert(&self) -> (Vec<u64>, Vec<Instruction>, HashMap<usize, u64>) {
        let mut primes = Vec::new();

        let mut prime_to_index = |prime: u64| {
            let index: usize;
            if primes.contains(&prime) {
                index = primes.iter().position(|&x| x == prime).unwrap();
            } else {
                index = primes.len();
                primes.push(prime);
            }
            return index;
        };

        let mut instrs = Vec::new();
        for fraction in &self.program.fractions {
            let denom_pfs = Register::prime_factorize(fraction.1 as u64);
            let num_pfs = Register::prime_factorize(fraction.0 as u64);
            instrs.push(Instruction {
                conditions: denom_pfs
                    .iter()
                    .map(|x| (prime_to_index(x.0), x.1))
                    .collect(),
                increment: num_pfs.iter().map(|x| (prime_to_index(x.0), x.1)).collect(),
            })
        }

        let mut initial_registers = Vec::new();
        initial_registers.resize(primes.len(), 0);
        for (prime, amt) in Register::prime_factorize(self.program.initial) {
            let idx = primes.iter().position(|&x| x == prime).unwrap();
            initial_registers[idx] = amt;
        }

        let output_condition: HashMap<usize, u64> = Register::prime_factorize(self.output_base)
            .iter()
            .map(|(prime, amt)| (primes.iter().position(|&x| x == *prime).unwrap(), *amt))
            .collect();

        // println!("Prime layout: {:?}", primes);
        // println!("Output condition: {:?}", output_condition);
        return (initial_registers, instrs, output_condition);
    }
}

impl IntoIterator for Register {
    type Item = u64;
    type IntoIter = RegisterIter;

    fn into_iter(self) -> Self::IntoIter {
        let (registers, instructions, output_condition) = self.convert();
        RegisterIter {
            instructions,
            registers,
            output_condition,
        }
    }
}

pub struct RegisterIter {
    instructions: Vec<Instruction>,
    registers: Vec<u64>,
    output_condition: HashMap<usize, u64>,
}

// impl RegisterIter {
//     fn registers_to_val(&self) -> BigUint {
//         let mut val = BigUint::zero();
//         for (amt, prime) in self.registers.iter().zip(&self.prime_mapping) {
//             val += prime.to_biguint().unwrap().pow(*amt);
//         }
//         return val;
//     }
// }

impl Iterator for RegisterIter {
    type Item = u64;

    fn next(&mut self) -> Option<Self::Item> {
        loop {
            for instr in &self.instructions {
                if instr
                    .conditions
                    .iter()
                    .all(|(idx, amt)| self.registers[*idx] >= *amt)
                {
                    instr
                        .conditions
                        .iter()
                        .for_each(|(idx, amt)| self.registers[*idx] -= *amt);
                    instr
                        .increment
                        .iter()
                        .for_each(|(idx, amt)| self.registers[*idx] += *amt);
                    break;
                }
            }

            // Output condition checking
            // Check that all other registers are 0
            if !self
                .registers
                .iter()
                .enumerate()
                .all(|(idx, val)| self.output_condition.contains_key(&idx) || *val == 0)
            {
                continue;
            }

            // Check that the condition registers are multiples of the condition amounts
            if !self
                .output_condition
                .iter()
                .all(|(idx, cond)| self.registers[*idx] % cond == 0)
            {
                continue;
            }

            // Check that condition registers are the _same_ multipel of the condition amounts
            let mut xs = self
                .output_condition
                .iter()
                .map(|(idx, cond)| self.registers[*idx] / cond);
            let first = xs.next().unwrap();
            if xs.all(|y| y == first) {
                return Some(first);
            }
        }
    }
}
