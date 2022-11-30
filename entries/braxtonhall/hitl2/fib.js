const readline = require('readline');

const random = (lo, hi) => lo + Math.floor(Math.random() * (hi - lo));
const sleep = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
const rsleep = (lo, hi) => sleep(random(lo, hi));

const interface = readline.createInterface({
	input: process.stdin,
	output: process.stdout,
});

const prompt = (question) =>
	new Promise((resolve) =>
		interface.question(`${blue(question)}\n> `, resolve));

const coloured = (colour) => (str) => `${colour}${reset(str)}`;
const yellow = coloured("\x1b[33m");
const blue = coloured("\x1b[34m");
const green = coloured("\x1b[32m");
const reset = (str) => `${str}\x1b[0m`;

const add = (a, b) => compute(a, b, "+");

const hedges = [
	"um. okay. so,",
	"right. next. uh,",
	"hmm",
	"okay. so,",
	"um. okay.",
	"uh okay..",
	"so..",
	"yeah...",
	"yes. so. um..",
	"okay. so. um..",
	"yeah. right. next..",
	"uh so. right. next..",
	"next. right. okay..",
];
const confirmations = [
	"o right. ofc.",
	"nice.",
	"thank u.",
	"thanks.",
	"um right. yes.",
	"right.",
	"exactly. thanks.",
	"yes. thank u.",
	"right. um thank u.",
	"right. uh thanks.",
	"great.",
	"great. um thanks..",
	"right right. cool.",
	"cool. cool thank you.",
	"cool.",
	"cool. cool cool. thanks..",
	"okay yes. cool..",
	"right thank you. okay..",
];
const innumerables = [
	"yeah i don't think we can do that one",
	"that's not great for fib",
	"um no sorry i can't help with that one",
	"um????? no my b i can't help with that one",
	"oh no my bad no i can't help u with that",
	"sorry not that one",
	"yaaa not that one though",
];
const dones = [
	"we're done aren't we?",
	"oh! that's it..?",
	"all ... done??????",
	"i think it's over",
	"no more computation?",
	"oh!",
	"wait you did it all.",
	"oh that's it?",
	"ah! yes!",
	"ah! yes! we're done!",
	"oh! yes! that's it!",
];
const thinkings = [
	"let me just think a second..",
	"hold on..",
	"i just need a moment",
	"uh wait",
	"just looking at the data",
	"sorry - looking over things",
	"got everything just one sec",
	"let me look at things",
	"let me think a moment",
	"just thinking ...",
];
const rarray = (array) => array[random(0, array.length)];
const hedge = () => rarray(hedges);
const confirmation = () => rarray(confirmations);
const innumerable = () => rarray(innumerables);
const done = () => rarray(dones);
const thinking = () => rarray(thinkings);

const rentries = (map) => rarray(Array.from(map.entries()));

const say = (msg, before, after) =>
	sleep(before)
		.then(() => console.log(...msg))
		.then(() => sleep(after));

const fast = (...msg) => say(msg, random(30, 100), random(30, 100));
const slow = (...msg) => say(msg, random(400, 2000), random(200, 1000));

const compute = (a, b, op) =>
	slow(hedge())
		.then(() => prompt(`what is ${a} ${op} ${b}?`))
		.then((value) => slow(confirmation()).then(() => value));

const build = (n, map) => {
	if (n <= 0) {
		const zero = () => Promise.resolve();
		map.set(zero, 0);
		return zero;
	} else if (n === 1) {
		const one = () => Promise.resolve();
		map.set(one, 1);
		return one;
	} else {
		const sub1 = build(n - 1, map);
		const sub2 = build(n - 2, map);
		const nth = () =>
			(map.get(nth) === null && (map.get(sub1) !== null && map.get(sub2) !== null))
				? add(map.get(sub2), map.get(sub1))
					.then((value) => Promise.resolve(map.set(nth, value)).then(() => value))
				: Promise.resolve();
		map.set(nth, null);
		return nth;
	};
};

const fill = (map, top) =>
	map.get(top) === null
		? rentries(map)[0]().then(() => fill(map, top))
		: Promise.resolve(map.get(top));

const hitlfib = (n) =>
	Promise.resolve(new Map())
		.then((map) => Promise.resolve(build(n, map))
			.then((top) => fill(map, top)));

const hitlfibiter = (n, a = 0, b = 1) =>
	n === 0
		? Promise.resolve(a)
		: n === 1
			? Promise.resolve(b)
			: add(a, b).then((result) => hitlfibiter(n - 1, b, result));

const number = () =>
	prompt("give me a number")
		.then((str) => str.trim())
		.then((trimmed) => Promise.resolve(Number(trimmed))
			.then((n) => (trimmed !== "" && n !== null && isFinite(n))
				? n
				: slow(hedge()).then(() => slow(innumerable())).then(number)));

const choose = () =>
	prompt("would you like to use my iteration optimization??? yes???? .. or.. no?")
		.then((response) => Promise.resolve(["yes", "no", "y", "n"].includes(response.trim().toLowerCase()))
			.then((formed) => !formed
				? slow("um. sorry. one more time..").then(choose)
				: ["yes", "y"].includes(response.trim().toLowerCase())
					? fast("yes!").then(() => hitlfibiter)
					: fast("oh.").then(() => slow("okay.")).then(() => slow("we can take it slow.")).then(() => hitlfib)));

const optimize = (n) =>
	n < 4
		? hitlfib
		: n > 25 
			? slow(hedge())
				.then(() => fast("acutally.."))
				.then(() => fast("i need to use my iteration optimization for this."))
				.then(() => slow("i hope that's okay."))
				.then(() => hitlfibiter)
			: choose();

const flow = () =>
	slow("\nwhat's the fib you'd like to compute? i can help u out")
		.then(number)
		.then((n) => slow(confirmation())
			.then(() => fast(hedge()))
			.then(() => slow(`i will help u compute ${green(`fib ${n}`)}`))
			.then(() => optimize(n))
			.then((fib) => fib(n))
			.then((fibn) => slow(hedge())
				.then(() => fast(done()))
				.then(() => fast(thinking()))
				.then(() => rsleep(Math.min(1000, n * 100), Math.max(n * 500, 1000)))
				.then(() => slow(green(`fib ${n} is ${fibn}`)))))
		.then(() => rsleep(1000, 4000));

const loop = () => flow().then(loop);

loop();
