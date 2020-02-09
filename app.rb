require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'
require './lib/rps_results'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do 
    session[:name] = params[:name]
    redirect '/play'
  end 

  get '/play' do 
    $name = session[:name]
    erb :play
  end 

  post '/result' do 
    player = Player.new($name, params[:move])
    computer = Computer.new
    
    @game = Game.new(player, computer)
    @result = Rps_Results.new.winner(@game.player.move, @game.computer.move)
    player.icon(player.move)
    computer.icon(computer.move)
    erb :result
  end 

  run! if app_file == $0
end
