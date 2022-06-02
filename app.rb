require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(params[:user_name])
    erb :display 
  end

  get '/game' do
    erb :game
  end

  post '/selections' do
    $game.player_move(params[:selection])
    $game.game_move
    @outcome = $game.play_game
    erb :selections
  end

  run! if app_file == $0
end
