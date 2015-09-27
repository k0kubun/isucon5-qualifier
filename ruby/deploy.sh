RACK_ENV=production bundle exec unicorn -c unicorn_config.rb -D -d

curl -X POST https://api.newrelic.com/deployments.xml -H 'x-api-key: 69a7087301c842a8311b884700bb4ae3d7962f23'
