#!/bin/bash

# MinIO bucket activation
# https://guides.dataverse.org/en/latest/installation/config.html#id87
if [ "${minio_label_1}" ]; then
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.type\=s3"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.label\=${minio_label_1}"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.bucket-name\=${minio_bucket_1}"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.download-redirect\=false"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.upload-redirect\=false"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.url-expiration-minutes\=120"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.connection-pool-size\=4096"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.profile\=${minio_profile_1}"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.custom-endpoint-url\=http\:\/\/172.20.0.10\:9000"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.access-key\=minio1234"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.secret-key\=minio1234"
    asadmin --user=${ADMIN_USER} --passwordfile=${PASSWORD_FILE} create-jvm-options "-Ddataverse.files.${bucketname_1}.path-style-access\=true"
fi
