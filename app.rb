require 'sinatra/base'
require './lib/player'

class Player < Sinatra::Base

  enable :sessions
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = Player_name.new(params[:player_name])
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

end