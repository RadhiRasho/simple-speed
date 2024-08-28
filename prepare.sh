echo "Preparing...."

bun build ./inNode.js --compile --outfile=./builds/inNode --target node &&
bun build ./inBun.ts --compile --outfile=./builds/inBun --target bun &&
go build -o ./builds/inGo inGo.go && rustc inRust.rs -o ./builds/inRust &&
zig build-exe ./inZig.zig -O ReleaseFast --name inZig && mv -f inZig builds && rm -rf inZig.o &&
gcc inC.c -o ./builds/inC &&
g++ -o ./builds/inCPP inCPP.cpp

echo "Prep Complete"