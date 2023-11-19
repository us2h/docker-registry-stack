#!/bin/sh

# Hash the password
export HASHED_PASSWORD=$(caddy hash-password --plaintext $REGISTRY_BASIC_AUTH_PASSWORD)

# Export the hashed password so that Caddy can use it
export REGISTRY_BASIC_AUTH_HASH=$HASHED_PASSWORD

# Start Caddy
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile
