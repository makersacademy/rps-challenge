require 'sinatra/base'
require_relative "./../lib/player"
require_relative "./../lib/game"


class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :select_game_mode
  end

  get '/sp_names' do
    erb :single_player_names
  end

  get '/mp_names' do
    erb :multiplayer_names
  end

  post '/sp_create_game' do
    @game = Game.create
    @player1 = Player.new(params[:name])
    @player2 = Player.new("COMPUTER")
    @game.add_player(@player1,@player2)
    redirect '/play'
  end

  post '/mp_create_game' do
    @game = Game.create
    @player1 = Player.new(params[:name1])
    @player2 = Player.new(params[:name2])
    @game.add_player(@player1,@player2)
    redirect '/mp_play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  get '/mp_play' do
    @game = Game.instance
    erb :multiplayer_play
  end

  post '/move' do
    @game = Game.instance
    @game.play_vs_pc(params[:move])
    redirect '/end'
  end

  post '/multiplayer_moves' do
    @game = Game.instance
    @game.player1.chosen_move(params[:move1])
    @game.player2.chosen_move(params[:move2])
    redirect '/end'
  end

  get '/end' do
    @game = Game.instance
    erb :conclusion
  end


  run! if app_file == $0

end
