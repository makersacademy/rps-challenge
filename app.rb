require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/rps_mod.rb'
require_relative './lib/hand_shape.rb'

class HandShapeGame < Sinatra::Base

  enable :sessions

  before do
    @game = Game.return_instance
  end

  get '/' do
    session[:bot_name] = "ROBOHANDS UNIT ##{rand(1..100)}"
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:modpath] = params[:game_choice]=='RPS' ? './rps_mod.rb'  : './rpsls_mod.rb'
    path = params[:player2_choice] == 'Bot' ? '/bot_setup' : '/player_2_login'
    redirect path
  end

  get '/bot_setup' do
    player1 = Player.new(session[:player_1_name])
    player2 = Player.new(session[:bot_name])
    Game.create_instance(player1, player2, session[:modpath])
    redirect '/start'
  end

  get '/player_2_login' do
    @player1_name = session[:player_1_name]
    erb :player_2_login
  end

  post '/human_setup' do
    player1 = Player.new(session[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    Game.create_instance(player1, player2, session[:modpath])
    redirect '/start'
  end

  get '/start' do
    erb :start
  end

  post '/apply_and_redirect' do
    @game.play(params[:shape_choice].to_i)
    redirect './game_over' if @game.finished?
    path = @game.whos_turn.name == session[:bot_name] ? '/play_bot' : '/play_human'
    redirect path
  end

  get '/play_human' do
    erb :play_human
  end

  get '/play_bot' do
    @choice = rand(0..@game.shapes.count - 1).to_s
    erb :play_bot
  end

  get '/game_over' do 
    erb :game_over
  end

  run! if app_file == $0

end
