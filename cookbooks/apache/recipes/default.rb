#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved
#

if node['platform_family'] == "rhel"
	package = 'httpd'
elsif node['platform_family'] == "debian"
	package = 'apache2'
end

package 'apahce2' do
	package_name package  
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

#include_recipe 'apache::websites'
 



