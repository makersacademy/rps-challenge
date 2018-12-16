require 'sinatra/base'
require './lib/player'

class Game  < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    @player = session[:player]
    @player.choice(params[:player_choice])
    redirect '/game'
  end

  get '/game' do
    @player = session[:player]
    erb :game
  end

  run! if app_file == $0

end
