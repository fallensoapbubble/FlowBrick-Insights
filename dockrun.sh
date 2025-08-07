export LOCALSTACK_AUTH_TOKEN="your-key"


docker compose up


# docker compose up -d

# docker compose down


# docker run \
#   --rm -it \
#   -p 4566:4566 \
#   -p 4510-4559:4510-4559 \
#   -v /var/run/docker.sock:/var/run/docker.sock \
#   -e LOCALSTACK_AUTH_TOKEN="ls-sIVUjISa-KOgE-2023-Puni-MaBU7906b0e7" \
#   localstack/localstack-pro:latest


# ON PS


docker run --rm -it -p 4566:4566 -p 4510-4559:4510-4559 -v /var/run/docker.sock:/var/run/docker.sock -e LOCALSTACK_AUTH_TOKEN="ls-sIVUjISa-KOgE-2023-Puni-MaBU7906b0e7" localstack/localstack-pro:latest