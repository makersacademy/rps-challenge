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

  post '/move' do
    Game.instance.play(params[:choice])
    redirect '/play'
  end

# Multiplayer starts here _________________________

  post '/mpname' do
    MultiplayerGameCreator.instance.new_player(name: params[:player_name], session: session.id)
    if MultiplayerGame.instance.ready?
      @redirect = '/mpplay'
    else
      @redirect = '/mpwaiting'
    end
    redirect @redirect
  end

  get '/mpwaiting' do
    @page = :mp_waiting
    erb :template
  end

  get '/mpplay' do
    @game = MultiplayerGame.instance
    @player1_name = @game.player1_name
    @player2_name = @game.player2_name
  end
end