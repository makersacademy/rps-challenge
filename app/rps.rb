require 'sinatra/base'
require './lib/computer_player'
require './lib/game'
require './lib/scores'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :game_choice
  end

  post '/gametype' do
    session[:gametype] = params[:playchoice]
    redirect '/names'
  end

  get '/names' do
    @gametype = session[:gametype]
    erb :index
  end

  post '/play' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    session[:game] = Game.new
    redirect '/player_1_choice'
  end

  post '/player_1_choice' do
    redirect '/player_1_choice'
  end

  get '/player_1_choice' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    if session[:player_2_name] == "Computer"
      if session[:gametype] == "Classic"
        erb :single_player_choice_classic
      else
        erb :single_player_choice_ls
      end
    else
      if session[:gametype] == "Classic"
        erb :player_1_choice_classic
      else
        erb :player_1_choice_ls
      end
    end
  end

  post '/player_2_choice' do
    session[:choice_1] = params[:weapon_1]
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    if session[:gametype] == "Classic"
      erb :player_2_choice_classic
    else
      erb :player_2_choice_ls
    end
  end

  post '/result' do
    if session[:player_2_name] == "Computer"
      session[:choice_1] = params[:weapon_1]
      if session[:gametype] == "Classic"
        session[:choice_2] = ComputerPlayer.new.random_weapon_classic
      else
        session[:choice_2] = ComputerPlayer.new.random_weapon_ls
      end
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
    @result = session[:game].game_result(@choice_1, @choice_2)
    @scores = session[:game].score_keeper(@result)
    erb :result
  end
end
