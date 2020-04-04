require 'sinatra'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :home
  end

  get '/register' do
    erb :register
  end

  post '/names' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player_name
    erb :play
  end

  get '/rock' do
    @game.player_move = "Rock"
    @game.game_round
    redirect '/result'
  end

  get '/paper' do
    @game.player_move = "Paper"
    @game.game_round
    redirect '/result'
  end

  get '/scissors' do
    @game.player_move = "Scissors"
    @game.game_round
    redirect '/result'
  end

  get '/result' do
    @player_name = @game.player_name
    @player_move = @game.player_move
    @computer_move = @game.computer_move
    @player_score = @game.player_score
    @computer_score = @game.computer_score
    @result = @game.result
    erb :result
  end

end
