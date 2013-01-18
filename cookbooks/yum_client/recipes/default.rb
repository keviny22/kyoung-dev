#
# Cookbook Name:: yum_client
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
template "/etc/yum.repos.d/intu_us-west-1.repo" do
  source "intu_us-west-1.repo.erb"
  mode 0644
  owner "root"
  group "root"
  variables :baseurl => node['baseurl']
  action :create
end
