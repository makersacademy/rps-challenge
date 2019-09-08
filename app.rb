require 'sinatra/base'
require './lib/random_play'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/game_over' do
    @play = params[:play]
    @player_name = params[:player_name]
    @opponent = Random_play.play

    if @play == @opponent
      @result = :draw
    elsif (@play == 'ROCK' && @opponent == 'SCISSORS') ||
          (@play == 'PAPER' && @opponent == 'ROCK') ||
          (@play == 'SCISSORS' && @opponent == 'PAPER')
      @result = :win
    else
      @result = :lose
    end

    erb :game_over
  end

  run! if app_file == $0
end
