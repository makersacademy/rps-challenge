require 'sinatra/base'
require 'sinatra/reloader'

class RPS_Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Beautiful World'
  end

  run! if app_file == $0
end