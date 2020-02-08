require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/rps_results'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do 
    $name = params[:name]
    
    erb :play
  end 

  post '/result' do 
    player = Player.new($name, params[:move])
    computer = Computer.new
    @game = Game.new(player, computer)
    @result = Rps_results.new.winner(@game.player.move, @game.computer.move)
    erb :result
  end 

  run! if app_file == $0
end