useradd --no-create-home --shell /bin/false prometheus
useradd --no-create-home --shell /bin/false node_exporter
mkdir /etc/prometheus
mkdir /var/lib/prometheus
chown prometheus:prometheus /etc/prometheus
chown prometheus:prometheus /var/lib/prometheus
curl -LO https://github.com/prometheus/prometheus/releases/download/v2.0.0/prometheus-2.0.0.linux-amd64.tar.gz
tar xvf prometheus-2.0.0.linux-amd64.tar.gz
cp prometheus-2.0.0.linux-amd64/prometheus /usr/local/bin/
cp prometheus-2.0.0.linux-amd64/promtool /usr/local/bin/
chown prometheus:prometheus /usr/local/bin/prometheus
chown prometheus:prometheus /usr/local/bin/promtool
cp -r prometheus-2.0.0.linux-amd64/consoles /etc/prometheus
cp -r prometheus-2.0.0.linux-amd64/console_libraries /etc/prometheus
chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
rm -rf prometheus-2.0.0.linux-amd64.tar.gz prometheus-2.0.0.linux-amd64
cp prometheus.yml /etc/prometheus/prometheus.yml
sudo chown prometheus:prometheus /etc/prometheus/prometheus.yml
cp prometheus.service /etc/systemd/system/prometheus.service
systemctl daemon-reload
systemctl start prometheus
systemctl enable prometheus
curl -LO https://github.com/prometheus/node_exporter/releases/download/v0.15.1/node_exporter-0.15.1.linux-amd64.tar.gz
tar xvf node_exporter-0.15.1.linux-amd64.tar.gz
cp node_exporter-0.15.1.linux-amd64/node_exporter /usr/local/bin
chown node_exporter:node_exporter /usr/local/bin/node_exporter
rm -rf node_exporter-0.15.1.linux-amd64.tar.gz node_exporter-0.15.1.linux-amd64
cp node_exporter.service /etc/systemd/system/node_exporter.service
systemctl daemon-reload
systemctl start node_exporter
systemctl restart prometheus

