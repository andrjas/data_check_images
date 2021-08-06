#!/bin/sh

docker build -t local/poetry:3.6.2 -f poetry/Dockerfile.3.6.2 poetry
docker build -t local/poetry:3.7 -f poetry/Dockerfile.3.7 poetry
docker build -t local/poetry:3.8 -f poetry/Dockerfile.3.8 poetry
docker build -t local/poetry:3.9 -f poetry/Dockerfile.3.9 poetry

docker build -t local/poetry_mssql mssql

docker build -t local/poetry_oracle oracle

