# python-lint-action

GitHub Action for Python linting with `black` and `isort`.

## Usage example

```yml
# .github/workflows/lint.yml

name: Lint Action

on:
  push:
  pull_request:

jobs:
  lint:
    name: Lint project
    runs-on: ubuntu-latest
    steps:
      - name: Check out source repository
        uses: actions/checkout@v3.2.0
      - name: Lint
        uses: axelmunch/python-lint-action@v2.0.0
```
