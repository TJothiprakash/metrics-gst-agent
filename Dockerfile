FROM prom/prometheus

COPY prometheus.yml /etc/prometheus/prometheus.yml

CMD [
  "--config.file=/etc/prometheus/prometheus.yml",
  "--web.listen-address=0.0.0.0:9090",
  "--enable-feature=expand-external-labels"
]