#!/bin/sh

isort --version-number
isort --check-only --profile black --quiet .

black --version
black --check .
