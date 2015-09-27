require_relative './app.rb'
# require 'newrelic_rpm'; system('cd /home/isucon/webapp/ruby && RACK_ENV=production bundle exec newrelic deployments')

run Isucon5::WebApp
