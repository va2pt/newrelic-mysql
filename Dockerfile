FROM newrelic/infrastructure:latest
ADD newrelic-infra.yml /etc/newrelic-infra.yml
ADD nri-mysql /var/db/newrelic-infra/newrelic-integrations/bin/nri-mysql
ADD mysql-config.yml /etc/newrelic-infra/integrations.d/mysql-config.yml
