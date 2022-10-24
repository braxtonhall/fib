const wasmBinaryBase64 = "AGFzbQEAAAABBgFgAX8BfwMCAQAHBwEDZmliAAAKRwFFAQR/IABBAkgEQCAADwtBACEBQQEhAkECIQMgAEEBaiEAA0AgAiEEIAIgAWohAiAEIQEgA0EBaiEDIAMgAEgNAAsgAg8LACgEbmFtZQEGAQADZmliAhkBAAUAAW4BBGxhc3QCA3N1bQMBaQQDdG1w"
const wasmBinaryDataURL = `data:application/wasm;base64,${wasmBinaryBase64}`;

WebAssembly.instantiateStreaming(fetch(wasmBinaryDataURL)).then(
	(wasmObj) => {
		const {fib: fibWasm} = wasmObj.instance.exports
		const fib = (event) => {
			event.preventDefault()
			const input = document.getElementById("input")
			const result = document.getElementById("result")
			const n = parseInt(input.value)
			if (isNaN(n)) {
				result.textContent = "that's not a number..."
				return
			}
			result.textContent = fibWasm(n)
		}
		const button = document.getElementById("compute")
		button.onclick = fib
	}
);
