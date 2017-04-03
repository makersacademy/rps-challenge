require 'sinatra'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  before do
    @game = Game.instance
  end

# Multiplayer mode selected
  get '/multiplayer' do
    erb :multiplayer
  end

  post '/names' do
    p params
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/multiplayer/play1'
  end

  get '/multiplayer/play1' do
    erb :multi_play_1
  end

  get '/multiplayer/play2' do
    erb :multi_play_2
  end

  post '/attack1' do
    session[:player_1_attack] = params[:player_1_attack].downcase.to_sym
    redirect '/multiplayer/play2'
  end

  post '/attack2' do
    session[:player_2_attack] = params[:player_2_attack].downcase.to_sym
    redirect '/multiplayer/play/duel'
  end

  get '/multiplayer/play/duel' do
    @player_attack = session[:player_1_attack]
    @opponent_attack = session[:player_2_attack]
    @result = @game.result(@player_attack,@opponent_attack)
    erb :multi_duel
  end

# Single player mode selected
  get '/single-player' do
    erb :single_player
  end

  post '/name' do
    @player_1 = Player.new(params[:player_1_name])
    @computer = Player.new(params["Computer"])
    @game = Game.create(@player_1, @computer)
    redirect '/single-player/play'
  end

  get '/single-player/play' do
    erb :single_play
  end

  post '/attack' do
    session[:player_attack] = params[:player_attack].downcase.to_sym
    redirect '/single-player/play/duel'
  end

  get '/single-player/play/duel' do
    @player_attack = session[:player_attack]
    @computer_attack = Computer.new.attack
    @result = @game.result(@player_attack,@computer_attack)
    erb :single_duel
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
