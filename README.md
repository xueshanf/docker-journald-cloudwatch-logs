docker-journald-cloudwatch-logs
===============================

The ``journald-cloudwatch-logs`` tool monitors the systemd journal, managed by `journald`, and writes journal entries into [AWS Cloudwatch Logs](https://aws.amazon.com/cloudwatch/details/#log-monitoring)..

This repository builds `journald-cloudwatch-logs` binary from the source repository, then you can install the binary on your EC2 instance. The ready-to-use image is available with `docker pull xueshanf/journald-cloudwatch-logs`.

Please see [journald-cloudwatch-logs](https://github.com/saymedia/journald-cloudwatch-logs) for full usage information.

Install the binary
==================

The binary is generated as `/usr/local/bin/journald-cloudwatch-logs` in the container image. To install the `journald-cloudwatch-logs` in /opt/bin:

```console
$ sudo docker run --rm -it -v /opt/bin:/tmp/bin xueshanf/journald-cloudwatch-logs cp /usr/local/bin/journald-cloudwatch-logs /tmp/bin/journald-cloudwatch-logs
```

To build your own image
=======================

```console
$ docker build -t journald-cloudwatch-logs .
...
```