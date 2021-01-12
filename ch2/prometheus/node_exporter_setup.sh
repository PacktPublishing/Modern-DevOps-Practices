useradd --no-create-home --shell /bin/false node_exporter
curl -LO https://github.com/prometheus/node_exporter/releases/download/v0.15.1/node_exporter-0.15.1.linux-amd64.tar.gz
tar xvf node_exporter-0.15.1.linux-amd64.tar.gz
cp node_exporter-0.15.1.linux-amd64/node_exporter /usr/local/bin
chown node_exporter:node_exporter /usr/local/bin/node_exporter
rm -rf node_exporter-0.15.1.linux-amd64.tar.gz node_exporter-0.15.1.linux-amd64
cp node_exporter.service /etc/systemd/system/node_exporter.service
systemctl daemon-reload
systemctl start node_exporter
