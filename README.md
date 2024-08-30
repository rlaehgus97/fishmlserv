# fishmlserv

### Deploy
![image](https://github.com/user-attachments/assets/43b9d04c-8e0c-4d50-baeb-74258598678a)

### Run
- dev
- http://localhost:8000/docs (default)
```bash
# uvicorn --help
$ uvicorn src.fishmlserv.main:app --reload
```

- prd
```bash
$ uvicorn src.fishmlserv.main:app --host 0.0.0.0 --port 8949
```
