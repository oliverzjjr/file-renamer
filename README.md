![Docker Build](https://github.com/verz-lockinin/file-renamer/actions/workflows/docker-build.yml/badge.svg)



# File Renamer



A Bash script, containerized with Docker, that renames every file in a target folder by prepending today's date — e.g. `report.txt` becomes `2026-09-20\_report.txt`.



## Why I built this



Second project in a series learning Docker fundamentals — reinforcing the core build/run/publish loop while introducing a new concept: \*\*volume mounts\*\*, which let a container read and modify real files on the host machine.



## What it does



Given a folder of files, running the container renames each one with today's date prefix, skipping any that are already renamed.



## Tech used



- Bash scripting (loops, variables, pattern matching, `mv`, `basename`)

- Docker (Dockerfile, volume mounts with `-v`)

- Ubuntu base image

- Git \& GitHub, GitHub Actions CI/CD



## How to run it yourself



```bash

git clone https://github.com/verz-lockinin/file-renamer.git

cd file-renamer

docker build -t file-renamer .

docker run -v /path/to/your/folder:/data file-renamer

```



## What I learned



- Volume mounts (`-v`) — letting a container access and modify real files on the host machine, unlike `COPY` which only takes a one-time snapshot at build time

- Bash loops, variables, and pattern matching (`for`, `$(date ...)`, wildcard matching)

- Why `.gitignore` needs to be added \*before\* the first `git add .`, not after

