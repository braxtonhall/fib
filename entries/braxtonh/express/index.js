import { get } from "axios";
import express from "express";

const app = express();

const getURL = (n) => `/fib?${new URLSearchParams({n})}`;

app.get("/fib", async (res, req, next) => {
	const {n} = req.params;
	if (n <= 0) {
		res.send(n).status(200);
	} else {
		const futures = [get(getURL(n - 1)), get(getURL(n - 2))];
		const [nSub1, nSub2] = await Promise.all(futures);
		res.send(nSub1 + nSub2).status(200);
	}
	return next();
});

app.start();

// TODO... is this syntax correct???
