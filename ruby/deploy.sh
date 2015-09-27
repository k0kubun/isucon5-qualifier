RACK_ENV=production bundle exec unicorn -c unicorn_config.rb -D -d

RACK_ENV=production bundle exec newrelic deployments
