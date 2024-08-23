## Speed is key

Testing out a few langauges and their performance, will likely add more as I feel like it


### Hyperfine Command:

```bash
hyperfine -N  --runs 10 --warmup 10 'bun run --bun index.ts' 'node index.js' './index' './inrust' './inzig'
```