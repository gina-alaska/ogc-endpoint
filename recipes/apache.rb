#
# Cookbook Name:: ogc-endpoint
# Recipe:: apache
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


include_recipe 'yum-epel'

node.set['apache']['default_site_enabled'] = false

include_recipe 'apache2'
include_recipe 'apache2::mod_xsendfile'
include_recipe 'apache2::mod_headers'
include_recipe 'apache2::mod_proxy'
include_recipe 'apache2::mod_proxy_balancer'
include_recipe 'apache2::mod_fcgid'
include_recipe 'apache2::mod_rewrite'
include_recipe 'apache2::mod_deflate'
include_recipe 'apache2::mod_headers'
include_recipe 'apache2::mod_log_config'

service 'httpd' do
  action [:enable, :start]
end
