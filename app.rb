require 'sinatra'
require './lib/game'

class Rps < Sinatra::Base

  enable :sessions

  attr_reader :player_choice, :computer_choice

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player_name]
    $game = Game.new
    erb(:play)
  end

  post '/selection' do
    @game = $game
    p @game
    session[:player_choice] = params[:player_choice]
    session[:computer_choice] = @game.computer_chooses
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    result = @game.rps(@player_choice,@computer_choice)
    p @computer_choice
    redirect '/win' if result == "Player wins"
    redirect '/lose' if result == "Computer wins"
    redirect '/draw' if result == "DRAW"
  end

  get '/win' do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb(:win)
  end

  get '/lose' do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb(:lose)
  end

  get '/draw' do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb(:draw)
  end

end
