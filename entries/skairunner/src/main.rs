use std::collections::HashMap;

/// According to the protobuf specifications, 2^29-1 is the largest field number allowed.
/// 1 is the smallest field number allowed.
const MAX_FIELD_NUMBER: i32 = 536_870_911;

const PROTOBUF_TYPES: &[&'static str] = &[
    "double", "float", "int32", "int64", "uint32", "uint64", "sint64", "fixed32", "fixed64",
    "sfixed32", "sfixed64", "bool", "string", "bytes",
];

/// According to protobuf specifications,
/// fields 19000 thru 19999 are used by the compiler
/// and are therefore illegal.
fn field_number_is_illegal(n: i32) -> bool {
    19000 <= n && n <= 19999 || n <= 0
}

fn init_memo() -> HashMap<i32, i32> {
    let mut memo = HashMap::new();
    memo.insert(0, 0);
    memo.insert(1, 1);
    memo
}

fn fib(n: i32, memo: &mut HashMap<i32, i32>) -> Option<i32> {
    if let Some(number) = memo.get(&n) {
        return Some(*number);
    }
    let f_n = memo.get(&(n - 1))? + memo.get(&(n - 2))?;
    memo.insert(n, f_n);

    Some(f_n)
}

fn format_submessage(n: i32, memo: &mut HashMap<i32, i32>, name: &str) -> String {
    let number = fib(n, memo);
    match number {
        None => String::new(),
        Some(number) => {
            if field_number_is_illegal(number) {
                String::new()
            } else {
                format!("    Fibonacci{} {} = {};\n", n, name, number)
            }
        }
    }
}

fn message_frame(n: i32, memo: &mut HashMap<i32, i32>) -> String {
    let n_0 = fib(n, memo)
        .map(|number| {
            if field_number_is_illegal(number) {
                format!(
                    "    // There should be a fibonacci number here, but {} is illegal",
                    number
                )
            } else {
                // Pick a semi-random type for the fib field
                let type_name = PROTOBUF_TYPES[number as usize % PROTOBUF_TYPES.len()];
                format!("    {} number = {};", type_name, number)
            }
        })
        .unwrap_or_default();

    let (n_minus_2, n_minus_1) = if n == 3 {
        (String::new(), format_submessage(n - 1, memo, "prev"))
    } else if n != 2 {
        (
            format_submessage(n - 2, memo, "prevprev"),
            format_submessage(n - 1, memo, "prev"),
        )
    } else {
        (String::new(), String::new())
    };

    format!(
        "message Fibonacci{} {{\n\
    {}{}{}
}}",
        n, n_minus_2, n_minus_1, n_0
    )
}

fn main() {
    let mut memo = init_memo();
    let mut i = 1;
    println!("syntax = \"proto3\";\n");
    loop {
        if fib(i, &mut memo) >= Some(MAX_FIELD_NUMBER) {
            break;
        }
        println!("{}\n", message_frame(i, &mut memo));
        i += 1;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_small_fibs() {
        let mut memo = init_memo();
        assert_eq!(fib(0, &mut memo), Some(0));
        assert_eq!(fib(1, &mut memo), Some(1));
        assert_eq!(fib(2, &mut memo), Some(1));
        assert_eq!(fib(3, &mut memo), Some(2));
        assert_eq!(fib(4, &mut memo), Some(3));
        assert_eq!(fib(5, &mut memo), Some(5));
    }
}
