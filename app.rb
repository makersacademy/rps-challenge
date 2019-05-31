require 'sinatra/base'
require './lib/game'

class App < Sinatra::Base
  $game = Game.new 
  get '/' do
    erb(:welcome)
  end

  post '/' do
    $game.add_player(params[:name])
    erb(:play) 
  end
  
  post '/result' do 
    @move = params[:move]
    @computer_move = $game.computer_move
    erb(:result)
  end 

  run! if app_file == $0

end