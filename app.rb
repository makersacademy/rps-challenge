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
    $result = @game.rps(@player_choice, @computer_choice)
    redirect '/result'
  end

  get '/result' do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb(:result)
  end

end
