FROM python:3-alpine

LABEL "repository"="https://github.com/axelmunch/python-lint-action"
LABEL "maintainer"="Axel Munch <contact@axelmunch.fr>"

COPY requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
