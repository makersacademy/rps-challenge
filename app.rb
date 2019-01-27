require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do 
    erb(:index)
  end

  post '/names' do
    session[:player1] = Player.new(params[:player1_name])
    if params[:player2_name] != ""
      session[:player2] = Player.new(params[:player2_name])
    else 
      session[:player2] = Computer.new
    end
    redirect '/play'
  end

  get '/play' do 
    @player1 = session[:player1]
    erb(:play)
  end  

  get '/play2' do
    @player2 = session[:player2]
    erb(:play2)
  end

  post '/in_play1' do
    session[:player1].turn(params[:Choice1])
    if session[:player2].class == Player 
      redirect '/play2'
    else
      redirect '/in_play_computer'
    end
  end

  post '/in_play2' do
    session[:player2].turn(params[:Choice2])
    session[:game] = Game.new(session[:player1], session[:player2])
    redirect '/result'
  end

  get '/in_play_computer' do
    session[:game] = Game.new(session[:player1], session[:player2])
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:result)
  end

  run! if app_file == $0

end
