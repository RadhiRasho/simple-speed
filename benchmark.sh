echo "Running Benchmark"

hyperfine -N  --runs 10 --warmup 2 './builds/inBun' './builds/inNode' './builds/inGo' './builds/inRust' './builds/inZig' './builds/inC' './builds/inCPP'

echo "Finished"