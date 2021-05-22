# caddy-actions
Caddy CLI as a GitHub action

## Usage

```yml
name: Validate Caddyfile
on: [push]
jobs:
  deploy:
    name: Validate caddyfile
    runs-on: ubuntu-latest
    steps:
      # This step checks out a copy of your repository.
      - uses: actions/checkout@v2
      # This step runs `flyctl deploy`.
      - uses: quarksgroup/caddy-actions@main
        with:
          args: "validate"
```