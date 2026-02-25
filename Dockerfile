FROM ghcr.io/astral-sh/uv:python3.12-bookworm-slim

RUN apt update && apt install -y build-essential cmake

COPY pyproject.toml uv.lock ./
RUN uv sync --no-dev
COPY SConstruct conanfile.py main.cpp ./

RUN uv run conan profile detect --force
RUN uv run conan install . --output-folder conan --build=missing
