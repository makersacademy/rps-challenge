require 'sinatra/base'
require './lib/computer_player'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:player_1_name] = params[:player_1_name]
    if params[:player_2_name] == ""
      session[:player_2_name] = "Computer"
    else
      session[:player_2_name] = params[:player_2_name]
    end
    redirect '/player-1-choice'
  end

  post '/player-1-choice' do
    redirect '/player-1-choice'
  end

  get '/player-1-choice' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    if session[:player_2_name] == "Computer"
      erb :single_player_choice
    else
      erb :player_1_choice
    end
  end

  post '/player-2-choice' do
    session[:choice_1] = params[:weapon_1]
    @player_2_name = session[:player_2_name]
    erb :player_2_choice
  end

  post '/result' do
    if session[:player_2_name] == "Computer"
      session[:choice_1] = params[:weapon_1]
      session[:choice_2] = ComputerPlayer.new.random_weapon
    else
      session[:choice_2] = params[:weapon_2]
    end
    redirect '/result'
  end

  get '/result' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @choice_1 = session[:choice_1]
    @choice_2 = session[:choice_2]
    game = Game.new(@choice_1, @choice_2)
    @result = game.result
    erb :result
  end
end
