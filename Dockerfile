# Code generated by protoc-gen-liquibase. DO NOT EDIT.
FROM liquibase/liquibase:4.22.0
COPY rollback_one_update_sql.sh /entry.sh
ENTRYPOINT ["/entry.sh"]
