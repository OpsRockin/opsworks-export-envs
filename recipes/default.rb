#
# Cookbook Name:: opsworks-export-envs
# Recipe:: default
#
# Copyright 2015, HiganWorks LLC
#
# All rights reserved - Do Not Redistribute
#

node.deploy.each_pair do |app_name,vals|
  file File.join("/home", node[:opsworks][:deploy_user][:user], "shellinit-#{app_name}.sh") do
    envs = []
    vals.environment_variables.each_pair {|key, val| envs << "export #{key}=\"#{val}\""} if vals.environment_variables
    owner node[:opsworks][:deploy_user][:user]
    group node[:opsworks][:deploy_user][:group]
    content envs.join("\n")
  end
end
