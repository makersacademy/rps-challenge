require 'sinatra/base'
require 'sinatra/reloader'

class RockPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Testing infrastructure working!'
  end

  run! if app_file == $0
end

