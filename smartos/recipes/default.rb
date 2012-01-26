#
# Cookbook Name:: smartos
# Recipe:: default
#
# Copyright 2012, HiganWorks LLC
#
# All rights reserved
#

# For call by other recipe.
execute "pkgin-update" do
	command "pkgin update"
	action :nothing
end

execute "pkgin-force-update" do
	command "pkgin -F update"
	action :nothing
end

### example install nginx and start under smf.
### To install or remove, must set full package name!
###
# smartos_pkgin "nginx-1.0.4" do
# 	action :install
# 	provider "smartos_repos"
# end
# 
# service "nginx" do
# 	action [ :enable, :start ]
# 	provider Chef::Provider::Service::Solaris
# end

