require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
    enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:play)
  end

  get '/game' do
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
    erb(:game)
  end

end  