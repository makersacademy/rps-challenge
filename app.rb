require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/robot'

class RPS < Sinatra::Base

  before do
  @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/number_players' do
    players = params[:number_players]
    redirect '/mp_names' if params[:number_players] == "Two Players"
    redirect '/sp_name' if params[:number_players] == "One Player"
  end

  get '/mp_names' do
    erb :mp_names
  end

  get '/sp_name' do
    erb :sp_name
  end

  post '/mp_names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/start_game'
  end

  post '/sp_name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Robot.new('Robot')
    @game = Game.create(player_1, player_2)
    redirect '/start_game'
  end

  get '/start_game' do
    erb :start_game
  end

  get '/first_play' do
    erb :first_play
  end

  post '/first_selection' do
    @game.player_1.choice = params[:player_1_choice]
    if @game.player_2.class == Robot 
      @game.player_2.choice = Robot.new.choice
      redirect '/game_over'
    else
      redirect '/second_play'
    end
  end

  get '/second_play' do
    erb :second_play
  end

  post '/second_selection' do
    @game.player_2.choice = params[:player_2_choice]
    redirect '/game_over'
  end

  get '/game_over' do
    Game.outcome
    erb :game_over
  end

  run! if app_file == $0
end
