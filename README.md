# Temporal Dev Docker Container

1. Download the Temporal binary to this folder:

   - [Download Temporal CLI for Linux amd64](https://temporal.download/cli/archive/latest?platform=linux&arch=amd64)
   - [Download Temporal CLI for Linux arm64](https://temporal.download/cli/archive/latest?platform=linux&arch=arm64)

2. Build the Docker container:

   ```bash
   docker build --no-cache --build-arg PLATFORM_ARCH=amd64 --platform linux/amd64 -t ghcr.io/miccheng/temporal-dev:1.1.2-amd64 .
   docker build --no-cache --build-arg PLATFORM_ARCH=arm64 --platform linux/arm64 -t ghcr.io/miccheng/temporal-dev:1.1.2-arm64 .
   ```

3. Run the Docker container:

   ```bash
   docker run --rm  -p 7233:7233 -p 8233:8233 ghcr.io/miccheng/temporal-dev:1.1.2-amd64
   docker run --rm  -p 7233:7233 -p 8233:8233 ghcr.io/miccheng/temporal-dev:1.1.2-arm64
   ```

4. To push the new container to GitHub Container Registry:

   ```bash
   docker push ghcr.io/miccheng/temporal-dev:1.1.2-amd64
   docker push ghcr.io/miccheng/temporal-dev:1.1.2-arm64
   ```
