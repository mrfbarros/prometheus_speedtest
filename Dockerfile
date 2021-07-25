FROM python:3.7

RUN pip3 install --no-cache-dir  prometheus_speedtest

EXPOSE 9516/tcp
ENTRYPOINT [ \
    "python3", "-m", "prometheus_speedtest.prometheus_speedtest" \
]
CMD [ "--port=9516" ]
