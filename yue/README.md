

```bash
docker build -t yue:latest .
```

```bash
docker run --gpus all -it -v yue:/workspace -v yueroot:/root yue:latest
```
