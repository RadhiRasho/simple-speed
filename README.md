## Speed is key

Testing out a few langauges and their performance, will likely add more as I feel like it

### Build Executables

NodeJS
```bash
bun build ./inNode.js --compile --outfile=./builds/inNode --target node
```

BunJS
```bash
bun build ./inBun.ts --compile --outfile=./builds/inBun --target bun
```

Go
```bash
go build -o ./builds/inGo inGo.go
```

Rust
```bash
rustc inRust.rs -o ./builds/inRust
```

Zig
```bash
zig build-exe ./inZig.zig -O ReleaseFast --name inZig && mv -f inZig builds && rm -rf inZig.o
```

C
```bash
gcc inC.c -o ./builds/inC
```
C++
```bash
g++ -o ./builds/inCPP inCPP.cpp
```

### Prepare Command:

```bash
bun build ./inNode.js --compile --outfile=./builds/inNode --target node && bun build ./inBun.ts --compile --outfile=./builds/inBun --target bun && go build -o ./builds/inGo inGo.go && rustc inRust.rs -o ./builds/inRust && zig build-exe ./inZig.zig -O ReleaseFast --name inZig && mv -f inZig builds && rm -rf inZig.o && gcc inC.c -o ./builds/inC && g++ -o ./builds/inCPP inCPP.cpp
```

### Hyperfine Command:

```bash
hyperfine -N  --runs 10 --warmup 2 './builds/inBun' './builds/inNode' './builds/inGo' './builds/inRust' './builds/inZig' './builds/inC' './builds/inCPP'
```