require 'sinatra/base'
require 'sinatra/reloader'

class Game < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/play' do
    @name = params[:player_name]
    erb :play
  end

  run! if app_file == $0
end