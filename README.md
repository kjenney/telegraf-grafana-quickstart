# telegraf-grafana-quickstart

This repo shows how to get started with Telegraf and Grafana quickly.

The services are running in Docker and metrics are automatically collected and shipped to Grafana.

The quickstart uses 3 containers:

1. Webserver (nginx)
2. Influxdb
3. Grafana

The Webserver is where metrics are collected. Influxdb is where they are stored, and Grafana is where they are displayed.

Run the following commands:

```
docker-compose build
docker-compose up -d
```
