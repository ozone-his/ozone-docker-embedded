#!/bin/sh
set -e
if [ -f "/usr/share/nginx/html/ozone/ozone-frontend-config.json" ]; then
  envsubst '${ODOO_PUBLIC_URL} ${OPENMRS_PUBLIC_URL} ${SENAITE_PUBLIC_URL}' < "/usr/share/nginx/html/ozone/ozone-frontend-config.json" | sponge "/usr/share/nginx/html/ozone/ozone-frontend-config.json"
fi
/usr/local/bin/startup.sh
