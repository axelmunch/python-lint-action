FROM python:3-alpine

LABEL "com.github.actions.name"="Python Lint (black/isort)"
LABEL "com.github.actions.description"="Checks repository against black & isort"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/axelmunch/python-lint-action"
LABEL "maintainer"="Axel Munch <contact@axelmunch.fr>"

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
