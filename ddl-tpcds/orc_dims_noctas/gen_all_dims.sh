DIMS="date_dim time_dim item customer customer_demographics household_demographics customer_address store promotion warehouse ship_mode reason income_band call_center web_page catalog_page web_site"
for table in $DIMS; do
  cat template.sql | sed "s/TABLE/${table}/" > ${table}.sql
done
