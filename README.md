
# Docker Registry Stack

## About
`docker-registry-stack` is a set of configurations designed to simplify the deployment of a private Docker registry. This repository offers a range of storage backends and installation methods to suit various needs and environments. It employs Caddy for authentication and TLS, and Redis for caching."

## Available methods and options
- **Manual installation**:
    - **Storage types**:
        - **[Disk storage](./manual-installation-disk-storage)**
        - **[S3 storage](./manual-installation-s3-storage)**
- **Ansible**:
    - **In progress...**

## Getting Started

### Prerequisites
All configurations require Docker and Docker Compose.

### Configuration
For manual installation method you need to set necessary environment variables in `env_file`. Clone the repository and copy the required directory to a suitable location on your server. Then edit environment variables.

- **[Disk storage](./manual-installation-disk-storage)**
    - `REGISTRY_DOMAIN`: Registry domain.
    - `REGISTRY_BASIC_AUTH_USERNAME`: Registry auth user.
    - `REGISTRY_BASIC_AUTH_PASSWORD`: Registry auth password.

- **[S3 storage](./manual-installation-s3-storage)**
    - `REGISTRY_DOMAIN`: Registry domain.
    - `REGISTRY_BASIC_AUTH_USERNAME`: Registry auth user.
    - `REGISTRY_BASIC_AUTH_PASSWORD`: Registry auth password.
    - `REGISTRY_STORAGE_S3_ACCESSKEY`: Access Key.
    - `REGISTRY_STORAGE_S3_SECRETKEY`: Secret Key.
    - `REGISTRY_STORAGE_S3_BUCKET`: Bucket name.
    - `REGISTRY_STORAGE_S3_REGION`: Region name.
    - `REGISTRY_STORAGE_S3_REGIONENDPOINT`: S3 API endpoin address.
    - `REGISTRY_STORAGE_S3_SECURE`: Set to `true` if `https` in your endpoint.

Make sure that the REGISTRY_DOMAIN DNS records are configured with your server's IP address.

### Running
If all environment variables are set, just run your stack:
```bash
docker-compose up -d
```


### Usage
Login to your docker registry using provided `REGISTRY_DOMAIN`, `REGISTRY_BASIC_AUTH_USERNAME` and `REGISTRY_BASIC_AUTH_PASSWORD`:

Example:
```bash 
docker login registry.example.com
```

Tag some docker image using your `REGISTRY_DOMAIN` and push it to your registry.


Example:
```bash
docker tag mydockerimage:latest registry.example.com/mydockerimage:latest
docker push registry.example.com/mydockerimage:latest
```

Then, you can pull your image

Example:
```bash
docker pull registry.example.com/mydockerimage:latest
```
