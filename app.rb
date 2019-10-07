require 'sinatra/base'
require './lib/random_play'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session['player_name'] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session['player_name']
    erb :play
  end

  post '/user_choice' do
    @play = params[:play]
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

    session[:play] = @play
    session[:opponent] = @opponent
    session[:result] = @result

    redirect '/game_over'
  end

  get '/game_over' do
    @play = session[:play]
    @player_name = session['player_name']
    @opponent = session[:opponent]
    @result = session[:result]

    erb :game_over
  end

  run! if app_file == $0
end
