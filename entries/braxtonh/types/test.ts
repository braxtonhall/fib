import {Zero, Succ, Fib} from "./index";

const zero: Zero = "😰";
const one: Succ<typeof zero> = {prev: zero};
const two: Succ<typeof one> = {prev: one};
const three: Succ<typeof two> = {prev: two};
const four: Succ<typeof three> = {prev: three};
const five: Succ<typeof four> = {prev: four};
const six: Succ<typeof five> = {prev: five};
const seven: Succ<typeof six> = {prev: six};
const eight: Succ<typeof seven> = {prev: seven};

const fibZero: Fib<typeof zero> = zero;
const fibOne: Fib<typeof one> = one;
const fibTwo: Fib<typeof two> = one;
const fibThree: Fib<typeof three> = two;
const fibFour: Fib<typeof four> = three;
const fibFive: Fib<typeof five> = five;
const fibSix: Fib<typeof six> = eight;
