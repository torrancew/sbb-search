require 'railsless-deploy'

set :application, 'OldSkool'
set :deploy_to,   '/usr/local/share/deploy/oldskool'
set :user,        'deploy'
set :sudo,        false
set :use_sudo,    false

set :scm,        :git
set :repository, 'git://github.com/torrancew/sbb-search.git'

set :rvm_type,                :user
set :rvm_install_type,        :stable
set :rvm_install_shell,       :bash
set :rvm_install_with_sudo,   false
set :rvm_ruby_string,         '1.9.3@oldskool'
set :rvm_install_ruby_params, ''

require 'rvm/capistrano'
require 'bundler/capistrano'

role :app, 'mail01.sudobangbang.org'

before 'deploy:setup' do
  rvm.install_rvm
  rvm.install_ruby
end

