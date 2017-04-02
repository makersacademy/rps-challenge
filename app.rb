require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get('/') do
    erb(:splash)
  end

  get('/single_player_name') do
    erb(:single_player_name)
  end

  get('/single_player_play') do
    @player_1 = Player.new(session[:player_1_name])
    @player_2 = Player.new
    erb(:single_player_play)
  end

  post('/single_player_name') do
    session[:player_1_name] = params[:player_1_name]
    redirect('/single_player_play')
  end

  post('/player_1_rock') do
    session[:player_1_selection] = "rock"
    redirect('/single_player_fight')
  end

  post('/player_1_paper') do
    session[:player_1_selection] = "paper"
    redirect('/single_player_fight')
  end

  post('/player_1_scissors') do
    session[:player_1_selection] = "scissors"
    redirect('/single_player_fight')
  end

  get('/single_player_fight') do
    @selection = session[:player_1_selection]
    erb(:single_player_fight)
  end

  get('/multiplayer_names') do
    erb(:multiplayer_names)
  end



  post('/multiplayer_names') do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect('/multiplayer_play')
  end

  get('/multiplayer_play') do
    @player_1 = Player.new(session[:player_1_name])
    @player_2 = Player.new(session[:player_2_name])
    erb(:multiplayer_play)
  end




end
