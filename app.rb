require 'sinatra/base'
require 'sinatra/reloader'

class Online_Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  run! if app_file == $0
end
