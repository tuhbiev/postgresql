FROM python

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

WORKDIR /postgresql

COPY Pipfile Pipfile.lock /postgresql/
RUN pip install pipenv && pipenv install --system

COPY . /postgresql/