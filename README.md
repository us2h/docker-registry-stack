
# Docker Registry Stack

## About
`docker-registry-stack` is a set of configurations aimed at simplifying the deployment of a private Docker registry. This repository offers flexibility in terms of storage backends and installation methods, catering to various needs and environments. It uses Caddy for auth and TLS and Redis for cache.

## Available methods and options
- **Manual installation**:
    - **Storage types**:
        - **[Disk storage](./manual-installation-disk-storage)**
        - **[S3 storage](./manual-installation-s3-storage)**
- **Ansible**:
    - **In progress...**

## Getting Started

### Prerequisites
All configurations needs docker and docker compose.

### Configuration
For manual installation method you need to set necessary environment variables in `env_file`. Clone repository and copy necessary directory to somewhere on your server. Then edit environment variables.

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

### Running
If all environment variables are set just run your stack:
```bash
docker-compose up -d
```
