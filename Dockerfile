FROM bitnami/minideb:stretch

RUN install_packages wget  ca-certificates

ENV TOKEN=

ARG VERSION 

RUN wget https://github.com/inlets/inlets/releases/download/${VERSION}/inlets -P /bin/
RUN chmod a+x /bin/inlet

COPY run.sh /bin

CMD ["bash", "/bin/run.sh"]
