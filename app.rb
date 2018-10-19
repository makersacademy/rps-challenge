require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :game_type
  end

  get '/no_players' do
    erb :no_players
  end

  post '/no_players_selection' do
    no_players = params[:no_players]
    @game = Game.create(no_players)
    redirect '/player-1-name'
  end

  get '/player-1-name' do
     erb :enter_name
  end

  post '/player-name' do
    player_name = params[:player_name]
    redirect '/game'
  end

  post '/player-name' do
    player_name = params[:player_name]
    redirect '/game'
  end

  get '/player-2-name' do
     erb :enter_name
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
