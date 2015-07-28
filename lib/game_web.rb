require 'sinatra/base'
require './lib/game'

class GameWeb < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/one_player' do
    session[:name] ||= params[:name]
    $game = Game.new session[:name]
    erb :one_player
  end

  post '/two_player' do
    session[:name] ||= params[:name]
    erb :two_player
  end


  post '/two_player_game' do
    session[:name_2] ||= params[:name_2]
    session[:element1] ||= params[:element1]
    $game = Game.new(session[:name], session[:name_2])
    erb :two_player_game
  end

  post '/result' do
    @playerGuess = params[:element]
    @winner = $game.play_1_player @playerGuess
    @lastComputerGuess = $game.lastComputerGuess
    erb :result
  end

  post '/result_2_player' do
    session[:element2] ||= params[:element2]
    @winner = $game.play_2_player(session[:element1], session[:element2])
    erb :result_2_player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
  set :views, proc { File.join(root, '..', 'views') }
end
