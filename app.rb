require 'sinatra/base'
require_relative './lib/main'
class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = params[:player_1_name]
    $player_2_name = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name, @player_2_name = $player_1_name, $player_2_name
    erb :play
  end

  post '/game' do
    player_1_card = params[:player_1_card].downcase
    player_2_card = params[:player_2_card].downcase
    player_2_card = ['rock', 'paper', 'scissors'][rand(4)] if player_2_card == ''

    @options = { 'rock' => 'paper', 'paper' => 'scissors', 'scissors' => 'rock' }
    test = Check.new(player_1_card, player_2_card, $player_1_name, $player_2_name, @options)
    $score = test.confirm
    redirect '/score'
  end

  get '/score' do
    @score = $score
    erb :score
  end

  run! if app_file == $0
end
