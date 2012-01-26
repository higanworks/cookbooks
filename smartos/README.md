Description
===========
This cookbook include resources to managing **Joyent smartos**.

Requirements
============
## Platforms
 **Joyent SmartOS**

### Providers
* [JoyentCloud](http://www.joyentcloud.com/)
* [Z Cloud](http://z-cloud.jp/)

Tested on:

* SmartOS 1.4.7

Recipes
=======
## default

Includes resource pkgin update.


Resources/Providers
===================
## pkgin repository

new_resource: smartos_pkgin

Usage
====
    include_recipe "smartos"

This cookbook add resource smartos_pkgin for managiment SmartOS Packages.


### example install and manage service nginx.
To install or remove, must set **full package name**.

example for nginx cookbook.  

    include_recipe "smartos"

    smartos_pkgin "nginx-1.0.4" do
      action :install
      provider "smartos_repos"
    end
    
    service "nginx" do
      action [ :enable, :start ]
      provider Chef::Provider::Service::Solaris
    end

This will install nginx and start under smf.

Setup Chef on SmartOS
====
## require packages
[ruby19, autoconf, gmake, gcc ]

## commands

    # gem install bundler
    # mkdir /opt/chef && cd /opt/chef
    # bundle init
    # echo 'gem "chef"'>> Gemfile
    # bundle install --path vendor/bundle

If you want to use Rake task to exec chef-client/solo.  
Add 1st line below, and write tasks.

    require 'bundler/setup'

Changes
====
##v0.0.1:
Implement pkgin managing. install, remove and update.

Licence/Author
===
Licence:: Apache 2.0

Author:: Y.Sawanobori <sawanoboriyu@higanworks.com>

Copyright 2012, HiganWorks LLC.
