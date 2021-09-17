 #################
 #!/bin/bash
 #script created by Abdul Samie to clear audit logs after compress.
mkdir /var/log/audit/zipped
rm -rf /var/log/audit/audit.*.gz
tar -cvzf /var/log/audit/zipped/auditlogs_ason_$(date +%m%d%Y).gz /var/log/audit/audit.log.* --remove-files

logrotate -f /etc/logrotate.conf


