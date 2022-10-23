import axios from "axios";
import express from "express";

const PORT = 3000;

const app = express();

const {get} = axios.create({baseURL: `http://localhost:${PORT}`});

const getFib = (n) => get("/fib", {params: {n}}).then(({data}) => data);

app.get("/fib", async (req, res, next) => {
	const n = Number(req.query.n);

	if (!isFinite(n) || n < 0) {
		res.status(400).json("`n` must be a natural number");
	} else if (n <= 1) {
		res.status(200).json(n);
	} else {
		const [nSub1, nSub2] = await Promise.all([getFib(n - 1), getFib(n - 2)]);
		res.status(200).json(nSub1 + nSub2);
	}
	return next();
});

app.listen(PORT);
