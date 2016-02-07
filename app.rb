require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class MyApp < Sinatra::Base


  run! if app_file == $0

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/move' do
     $game.player1.move = params[:move]
     redirect '/result'
   end

  get '/result' do
    @game = $game
    erb :result
  end
end
