#!/usr/bin/env bash

rm -f /var/run/rsyslogd.pid
rm -f /var/run/stpd/*

supervisorctl start rsyslogd

supervisorctl start stpd

