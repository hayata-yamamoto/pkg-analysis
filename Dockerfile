FROM python:3.7-slim as builder 
LABEL maintainer=hayata-yamamoto \
      email=hayata.yamamoto.work@gmail.com \
      github=@hayata-yamamoto

WORKDIR /app
RUN set -x &&\
    apt-get -yqq update &&\
    apt-get -yqq upgrade &&\
    apt-get install --no-install-recommends -yq \
      gcc \
      python-dev &&\
    python -m venv .venv

COPY requirements.txt requirements.txt
RUN .venv/bin/pip install --no-cache-dir --upgrade pip &&\
    .venv/bin/pip --no-cache-dir -r requirements.txt


FROM python:3.7-slim

WORKDIR /app
COPY --from=builder /app/.venv /app/.venv
COPY . .

EXPOSE 8888
ENV PYTHONPATH $PYTHONPATH:/app

CMD ["/bin/bash", "-c", ". startup.sh"]