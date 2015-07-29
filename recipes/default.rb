#
# Cookbook Name:: ogc-endpoint
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


include_recipe 'yum-gina'
package 'gina-ruby-19'  
package 'mapping-tools-builds'
