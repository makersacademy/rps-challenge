require 'sinatra/base'
require './lib/game'
require './lib/multiplayer_game'
require './lib/multiplayer_game_creator'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do

    puts session[:player]
    @page = :index
    erb :template
  end

  post '/name' do
    mode = params[:players]
    redirect('/mpname', 307) if mode == "Multiplayer"
    Game.create(name: params[:player_name])
    redirect '/play' if mode == "Single Player"
  end
  
  get '/play' do
    @game = Game.instance
    @result = @game.result
    @ai_move = @game.ai_move.to_s.capitalize
    @player_name = @game.player_name
    @page = :play
    erb :template
  end

  post '/mpname' do
    MultiplayerGameCreator.instance.new_player(params[:player_name])
    redirect '/mpwaiting'
  end

  get '/mpwaiting' do
    # @redirect = MultiplayerGameCreator.instance.ready?
    erb :mp_waiting
    sleep 2
    redirect @redirect
  end

  post '/move' do
    Game.instance.play(params[:choice])
    redirect '/play'
  end
end