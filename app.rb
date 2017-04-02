require 'sinatra/base'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get('/') do
    erb(:splash)
  end

  get('/single_player') do
    erb(:single_player)
  end

  get('/multiplayer') do
    erb(:multiplayer)
  end


  get('/play') do
    @player_1 = Player.new(session[:player_1_name])
    erb(:play)
  end

  post('/names') do
    session[:player_1_name] = params[:player_1_name]
    redirect('/play')
  end

  get('/fight') do
    @selection = session[:player_1_selection]
    erb(:fight)
  end

  post('/player_1_rock') do
    session[:player_1_selection] = "rock"
    redirect('/fight')
  end

  post('/player_1_paper') do
    session[:player_1_selection] = "paper"
    redirect('/fight')
  end

  post('/player_1_scissors') do
    session[:player_1_selection] = "scissors"
    redirect('/fight')
  end


end
