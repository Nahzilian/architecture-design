# Docker set up

Setting up Docker file:
```bash
touch Dockerfile
```

- Then put in the docker info

- Create .dockerignore file

- Build image (DO NOT forget the period at the end of the command line): 

```bash
docker build -t <yourname>/node-app .
```

- Run the image
```bash
docker run -p PORT_ON_YOUR_MACHINE:PORT_ON_VM -d <yourname>/node-app
```

- Check if it's running:
```bash
docker logs
```