require 'sinatra/base'
require_relative '../lib/game'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
    session[:number_of_players] = params[:number_of_players]
    redirect '/names'
  end

  get '/names' do
    @number_of_players = session[:number_of_players]
    erb(:names)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
    @number_of_players = session[:number_of_players]
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    erb(:play)
  end

  post '/result' do
    if !session[:p1_choice].nil?
      $game = Game.new(session[:p1_choice], params[:player_choice])
      redirect '/result'
    elsif !session[:player2_name].nil?
      session[:p1_choice] = params[:player_choice]
      redirect '/play'
    end
    $game = Game.new(params[:player_choice])
    redirect '/result'
  end

  get '/result' do
    @game = $game
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    session.clear
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
