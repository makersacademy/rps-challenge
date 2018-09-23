require 'sinatra/base'
require './lib/decision'
require './lib/winner'
require './lib/player'

class Challenge < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  run! if app_file == $0

  post '/heyplayer' do
    p params
    session[:player1] = params[:player1]
    redirect '/make_choice'
  end

  get '/make_choice' do
    @player1 = session[:player1]
    erb :choice
  end

  post '/humanchoice' do
    p params
    session[:choice] = Decision.new(params[:choice])
    redirect '/choicemade'
  end

  get '/choicemade' do
    @choice = session[:choice]
    erb :choicemade
  end

  post '/winner' do
    @choice = session[:choice]
    @computer = ["Rock", "Paper", "Scissors"].sample
    @winner = Winner.new(@choice, @computer)
    erb :winner
  end

  post '/2player' do
    erb :face_off
  end

  post '/names' do
    p params
    session[:player_1] = Player.new(params[:player_1])
    session[:player_2] = Player.new(params[:player_2])
    redirect '/2playergame'
  end

  get '/2playergame' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :contestants
  end

  get '/letsbattle' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    erb :P1choose
  end

  post '/option' do
    session[:choiceP1] = params[:choiceP1]
    redirect '/P2option'
  end

  get '/P2option' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @P1choice = @player_1.move(session[:choiceP1])
    erb :P2choose
  end

  post '/option1' do
    session[:choiceP2] = params[:choiceP2]
    redirect '/bothchosen'
  end

  get '/bothchosen' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @P1choice = @player_1.move(session[:choiceP1])
    @P2choice = @player_2.move(session[:choiceP2])
    erb :bothchosen
  end

end
