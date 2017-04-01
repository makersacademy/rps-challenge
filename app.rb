require 'sinatra/base'
require './lib/player'


class RPS < Sinatra::Base
  set :sessions, true
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new("computer")
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $player_1.name
    erb :play
  end

  post '/attack_rock_win' do
    @player_1 = $player_1.name
    erb :attack_rock_win
  end

  post '/attack_loss' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :attack_loss
  end

  post '/attack_scissor_win' do
    @player_1 = $player_1.name
    erb :attack_scissor_win
  end

  post '/outcome' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    $player_2.random_attack
    # require 'pry'; binding.pry
    erb :outcome
  end





end