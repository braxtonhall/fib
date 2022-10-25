use num_traits::Pow;

pub type FracSize = u16;

#[derive(Debug)]
pub struct Program {
    pub fractions: Vec<(FracSize, FracSize)>,
    pub initial: u64,
}

impl Program {
    pub fn fibonacci(i: u32) -> Program {
        Program {
            fractions: vec![
                (17, 65),
                (133, 34),
                (17, 19),
                (23, 17),
                (2233, 69),
                (23, 29),
                (31, 23),
                (74, 341),
                (31, 37),
                (41, 31),
                (129, 287),
                (41, 43),
                (13, 41),
                (1, 13),
                (1, 3),
            ],
            initial: 78 * 5u64.pow(i),
        }
    }
}

pub trait FractranEngine<Value>: IntoIterator<Item = Value>
where
    Value: From<u64>,
{
}
