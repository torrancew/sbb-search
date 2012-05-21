# Disable some Rails-specific tasks
require 'railsless-deploy'

# General Settings
set :application, 'OldSkool'
set :deploy_to,   '/usr/local/share/deploy/oldskool'
set :user,        'deploy'
set :use_sudo,    false

# Servers
role :app, 'mail01.sudobangbang.org'

set :scm,        :git
set :repository, 'git://github.com/torrancew/sbb-search.git'

set :rvm_type,                :user
set :rvm_install_type,        :stable
set :rvm_install_shell,       :bash
set :rvm_ruby_string,         '1.8.7'
set :rvm_install_ruby_params, ''

# Integrate with RVM, Bundler
require 'rvm/capistrano'
require 'bundler/capistrano'

before 'deploy:setup' do
  rvm.install_rvm
  rvm.install_ruby
end

