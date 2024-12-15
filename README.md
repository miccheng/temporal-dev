# Temporal Dev Docker Container

1. Download the Temporal binary to this folder:

   - [Download Temporal CLI for Linux amd64](https://temporal.download/cli/archive/latest?platform=linux&arch=amd64)
   - [Download Temporal CLI for Linux arm64](https://temporal.download/cli/archive/latest?platform=linux&arch=arm64)

2. Build the Docker container:

   ```bash
   docker buildx build --push --no-cache --platform linux/amd64,linux/arm64 -t ghcr.io/miccheng/temporal-dev .
   ```

3. Run the Docker container:

   ```bash
   docker run --rm  -p 7233:7233 -p 8233:8233 ghcr.io/miccheng/temporal-dev
   ```

4. To push the new container to GitHub Container Registry:

   ```bash
   docker buildx build --push --no-cache --platform linux/amd64,linux/arm64 -t ghcr.io/miccheng/temporal-dev .
   ```

## Known issues

1. `ERROR: Multi-platform build is not supported for the docker driver.`

   ```bash
   docker buildx create --use desktop-linux
   ```
