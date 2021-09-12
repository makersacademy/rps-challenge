require 'sinatra/base'
require 'sinatra/reloader'
require 'capybara/rspec'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Chloe'
  end

  run! if app_file == $0
end
