require 'sinatra/base'
require './lib/computer'
require './lib/player'
require './lib/game'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  # Single Player
  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/option' do
    session[:rock] = params[:rock]
    session[:paper] = params[:paper]
    session[:scissors] = params[:scissors]
    redirect '/result'
  end

  get '/result' do
    @rock = session[:rock]
    @paper = session[:paper]
    @scissors = session[:scissors]
    $computer = Computer.new
    $computer.set_option
    @option = @rock || @paper || @scissors
    @result = $computer.result(@option)
    erb :result
  end

  # Two Player
  post '/twonames' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/player1'
  end

  get '/player1' do
    @player_1_name = $game.player1.name
    erb :player1
  end

  post '/player1_choice' do
    $game.player1.option(params[:player1_choice])
    redirect '/player2'
  end

  get '/player2' do
    @player_2_name = $game.player2.name
    erb :player2
  end

  post '/player2_choice' do
    $game.player2.option(params[:player2_choice])
    redirect '/two_player_result'
  end

  get '/two_player_result' do
    @result = $game.result($game.player1.choice, $game.player2.choice)
    erb :two_player_result
  end
  run! if app_file == $0
end
