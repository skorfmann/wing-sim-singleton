```
npm install
```


```
wing --version
0.46.3
```

### works 

```
wing it main.w
```

including tests in the console

### doesn't work

```
wing test main.w
fail ┌ main.wsim » root/env0/test:boom
     │ Error: Missing environment variable: BUCKET_HANDLE_0d3dd374
     │     at /var/folders/2x/k4trzqh147x6rywbk608tv000000gn/T/wing-bundles-abvPoW/index.js:21173:21
     │     at /var/folders/2x/k4trzqh147x6rywbk608tv000000gn/T/wing-bundles-abvPoW/index.js:21180:12
     │     at /var/folders/2x/k4trzqh147x6rywbk608tv000000gn/T/wing-bundles-abvPoW/index.js:21186:9
     │     at exports.handler (/var/folders/2x/k4trzqh147x6rywbk608tv000000gn/T/wing-bundles-abvPoW/index.js:21193:5)
     │     at evalmachine.<anonymous>:1:9
     │     at Script.runInContext (node:vm:135:12)
     │     at Object.runInContext (node:vm:283:6)
     │     at /Users/sebastian/.volta/tools/image/packages/winglang/lib/node_modules/winglang/node_modules/@winglang/sdk/lib/shared/sandbox.js:127:16
     │     at new Promise (<anonymous>)
     │     at Sandbox.call (/Users/sebastian/.volta/tools/image/packages/winglang/lib/node_modules/winglang/node_modules/@winglang/sdk/lib/shared/sandbox.js:113:16)
     │     at async Object.withTrace (/Users/sebastian/.volta/tools/image/packages/winglang/lib/node_modules/winglang/node_modules/@winglang/sdk/lib/simulator/simulator.js:380:34)
     └     at async TestRunner.runTest (/Users/sebastian/.volta/tools/image/packages/winglang/lib/node_modules/winglang/node_modules/@winglang/sdk/lib/target-sim/test-runner.inflight.js:31:13)


Tests 1 failed (1)
Test Files 1 failed (1)
Duration 0m0.73s
```
