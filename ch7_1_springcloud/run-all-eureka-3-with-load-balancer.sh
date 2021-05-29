#!/bin/bash

source run-all-functions.sh
validate_local_domains

/bin/bash run-all-stop.sh
/bin/bash run-config-repo-setup.sh

reset_log_files

start_rabbitmq

start_config_server

start_eureka_server
# start_eureka_server_load_balancer # not use this solution
start_eureka_server_load_balancer_solution2

# start_fares

open_eureka_links
open_eureka_load_balancer_link
