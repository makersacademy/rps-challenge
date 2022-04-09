require 'sinatra'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Rockps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  

  get '/' do
    erb :index
  end
  
  post '/name' do
    $game = Game.new(Player.new(params[:pname]))
    redirect '/play'
  end
  
  get '/play' do
    @player_name = $game.player.name
    erb :play
  end
  
  post '/result' do
    player_move = params[:player_choice]
    redirect '/final'
  end

  get '/final' do
    erb :final
  end

# # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
