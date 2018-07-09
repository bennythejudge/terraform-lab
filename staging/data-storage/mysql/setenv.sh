#!/usr/bin/env bash

export TF_VAR_db_password="$(security find-generic-password -a ${USER} -s terraform-db-experiment -w)"
