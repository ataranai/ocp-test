#!/bin/bash

injected_dir=$1
source /usr/local/s2i/install-common.sh
install_deployments ${injected_dir}/install_deployments
install_modules ${injected_dir}/install_modules
configure_drivers ${injected_dir}/configure_drivers/drivers.env
