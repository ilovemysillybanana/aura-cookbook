#
# Cookbook Name:: aura-cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'sudo'
include_recipe 'yum-epel'
include_recipe 'git::default'
include_recipe 'selinux::disabled'
include_recipe 'aura-cookbook::yum_install'
include_recipe 'aura-cookbook::general_setup'
