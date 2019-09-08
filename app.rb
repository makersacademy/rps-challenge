require 'sinatra'
require 'capybara'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/start_game' do
    $game = Game.new(params[:player_name], params[:number])
    redirect '/play'
  end

  get '/play' do
    @player_name = $game.player_name
    @winning_score = $game.winning_score
    @user_score = $game.user_score
    @computer_score = $game.computer_score
    @statement = $game.statement_of_game
    erb :play
  end

  get '/user_chooses_rock' do
    $game.user_chooses_rock
    redirect '/play'
  end

  get '/user_chooses_paper' do
    $game.user_chooses_paper
    redirect '/play'
  end

  get '/user_chooses_scissors' do
    $game.user_chooses_scissors
    redirect '/play'
  end

end