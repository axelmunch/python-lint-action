# python-lint-action

GitHub Action for Python linting with `black` and `isort`.

## Usage

```
workflow "Lint on Push" {
  on = "push"
  resolves = ["Lint"]
}

action "Lint" {
  uses = "axelmunch/python-lint-action@master"
}
```
