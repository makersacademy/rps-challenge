ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"

Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'