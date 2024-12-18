# docker-tfe-stack

## Description
This repository contains a docker compose stack with the following services:
- grafana
- loki
- prometheus
- promtail
- terraform enterprise

## Pre-requisites
Install `taskfile` with the following command:
```shell
  brew install go-task
```

Create a `.env` file in the root folder with the following content:
```shell
TFE_HOSTNAME=localhost
TFE_LICENSE=
```

Self-signed TLS certs with the FQDN `localhost` are located in the folder `certs` and can be replaced if required.

## Usage
[Taskfile.yml](Taskfile.yml) contains automation commands to manage the stack.

Launch the docker compose stack with the following command:
```bash
task up
```

Navigate to the following urls:
- http://localhost:3000/ - Grafana
- http://localhost:9090/ - Prometheus
- https://localhost/ - Terraform Enterprise

## Useful commands

Open the Terraform Enterprise UI with the following command:
```shell
task ui
```

Check the logs of the stack with the following command:
```shell
task logs
```

Check the status of the stack `tfe tfe-health-check-status` with the following command:
```shell
task status
```

Check the health of the stack via API `/_health_check?full=1` with the following command:
```shell
task health
```

Destroy the stack with the following command:
```shell
task clean
```



## TODO
- [ ] Fix Grafana dashboard