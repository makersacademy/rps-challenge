require 'sinatra/base'
require './lib/player'
require './lib/pc'
require './lib/results'
 
class RPS < Sinatra::Base
  enable :sessions
  
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

  post '/play' do # results are calculated and recorded
    @player = $player
    @player.move = params[:move]
    redirect '/result'
  end
   
  get '/result' do # results are returned
    @player = $player
    $computer = Computer.new.pc_move
    @computer = $computer
    $results = Results.new(@player, @computer)
    erb :results
  end
   
  run! if app_file == $0
end
