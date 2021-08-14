require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "This is a test for RPS challenge"
  end

  run! if app_file == $0
end
