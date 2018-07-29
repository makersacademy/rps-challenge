require 'sinatra/base'
require './lib/player'
require './lib/pc'
require './lib/results'
 
class RPS < Sinatra::Base
  
  get '/' do
    erb :index
  end

  post '/register' do # register name
    $player = Player.new(params[:player])
    redirect '/play'
  end
   
  get '/play' do # return name and play
    @player = $player
    erb :play
  end

  post '/result' do
    @player = $player
    @player.move = params[:move]
    redirect '/result'
  end
   
  get '/result' do
    @player = $player
    $computer = Computer.new
    @computer = $computer.pc_move
    $result = Results.new(@player, @computer)
    erb :results
  end
   
  run! if app_file == $0
end
