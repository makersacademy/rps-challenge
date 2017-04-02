require 'sinatra'
require './lib/player'
require './lib/game'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/multiplayer' do
    erb :multiplayer
  end

  get '/single-player' do
    erb :single_player
  end

  post '/names' do
    p params
    @player_1 = Player.new(params[:player_1_name])
    @player_2 = Player.new(params[:player_2_name])
    @game = Game.create(@player_1, @player_2)
    redirect '/multiplayer/play'
  end

  post '/name' do
    p params
    @player_1 = Player.new(params[:player_1_name])
    @computer = Player.new(params["Computer"])
    @game = Game.create(@player_1, @computer)
    redirect '/single-player/play'
  end

  before do
    @game = Game.instance
  end

  get '/multiplayer/play' do
    erb :multi_play
  end

  get '/single-player/play' do
    erb :single_play
  end

  post '/attack' do
    p params
    session[:player_attack] = params[:player_attack].downcase.to_sym
    redirect '/single-player/play/duel'
  end

  get '/single-player/play/duel' do
    @computer_attack = Computer.new.attack
    @player_attack = session[:player_attack]
    p @player_attack; p @computer_attack
    @result = @game.result(@player_attack,@computer_attack)
    erb :duel
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
