name "role"
description "A role to configure our gitlab"
run_list "recipe[apt]", "recipe[gitlab]"
#env_run_lists "production" => ["recipe[nginx::config_prod]"], "testing" => ["recipe[nginx::config_test]"]
#default_attributes "nginx" => { "log_location" => "/var/log/nginx.log" }
#override_attributes "nginx" => { "gzip" => "on" }	