SHELL := /bin/bash

.PHONY: up down build logs ps restart clean health

up:
\tdocker compose up -d --build

down:
\tdocker compose down

build:
\tdocker compose build

logs:
\tdocker compose logs -f --tail=200

ps:
\tdocker compose ps

restart:
\tdocker compose down && docker compose up -d --build

clean:
\tdocker compose down -v

health:
\tcurl -s http://localhost:8080/health || true