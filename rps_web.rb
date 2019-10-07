require 'sinatra/base'
require './lib/game'
require './lib/multiplayer_game'
require './lib/multiplayer_game_creator'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do
    puts "index"
    # puts session[:player]
    @page = :index
    erb :template
  end
  
  post '/name' do
    puts "name"
    mode = params[:players]
    puts mode
    redirect('/mpname', 307) if mode == "Multiplayer"
    Game.create(params[:player_name])
    redirect '/play' if mode == "Single Player"
  end
  
  get '/play' do
    @action = '/move'
    @game = Game.instance
    @player_name = @game.player_name
    @opponent_name = "Computer"
    @player_move, @opponent_move, @result = @game.player_messages
    @page = :play
    erb :template
  end
  
  post '/move' do
    Game.instance.play(params[:choice])
    redirect '/play'
  end
  
# Multiplayer starts here _________________________

  post '/mpmove' do
    @game = MultiplayerGame.instance
    @move = params[:choice]
    @session = session.id
    @game.set_player_move(@move, @session)
    redirect '/mpplay' if @game.players_ready?
    redirect '/mpwaiting'
  end

  post '/mpname' do
    puts "mpname"
    MultiplayerGameCreator.instance.new_player(params[:player_name], session.id)
    if MultiplayerGame.instance.two_players?
      @redirect = '/mpplay'
    else
      @redirect = '/mpwaiting'
    end
    redirect @redirect
  end
  
  get '/mpplay' do
    puts "mpplay"
    @action = '/mpmove'
    @game = MultiplayerGame.instance
    @player, @opponent = @game.get_players(session.id)
    @player_name, @opponent_name = @player.name, @opponent.name
    @player_move, @opponent_move, @result = @game.player_messages(session.id)
    @page = :play
    erb :template
  end

  get '/mpwaiting' do
    @two_players = MultiplayerGame.instance.two_players?
    @page = :mp_waiting
    erb :template
  end
end
