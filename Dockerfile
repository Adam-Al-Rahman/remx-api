FROM tiangolo/uvicorn-gunicorn-fastapi:python3.11-slim


COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app /app/app
COPY ./static /app/static
COPY ./templates /app/templates