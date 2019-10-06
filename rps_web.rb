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
    Game.create(params[:player_name])
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

  post '/mpmove' do
    @move = params[:choice]
    @session = session.id
    @ready = MultiplayerGame.instance.set_player_move(@move, @session)
    redirect '/mpplay' if @ready
    redirect '/mpwaiting'
  end

  post '/mpname' do
    MultiplayerGameCreator.instance.new_player(params[:player_name], session.id)
    if MultiplayerGame.instance.two_players?
      @redirect = '/mpplay'
    else
      @redirect = '/mpwaiting'
    end
    redirect @redirect
  end
  
  get '/mpplay' do
    @game = MultiplayerGame.instance
    @player1 = @game.player1
    @player2 = @game.player2
    @player_messages = @game.player_messages(session.id)
    @page = :multiplayer_play
    erb :template
  end

  get '/mpwaiting' do
    @two_players = MultiplayerGame.instance.two_players?
    @page = :mp_waiting
    erb :template
  end
end