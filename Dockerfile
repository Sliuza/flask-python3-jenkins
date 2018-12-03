FROM python:3.7-alpine
WORKDIR "/app"
RUN apk update && apk upgrade
RUN apk add --no-cache curl python pkgconfig python-dev openssl-dev libffi-dev musl-dev make gcc
RUN pip install -U setuptools
RUN python -m pip install --upgrade pip
COPY ./ ./
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["main.py"]
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1