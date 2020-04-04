require 'sinatra/base'
require 'player'
require 'computer'

class RockPaperScissor < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/start' do
    p params
    $player = Player.new(params[:player_name])
    redirect '/play'
  end
  
  get '/play' do 
    @player_name = $player.name
    erb :welcome_player
  end

  post '/game' do
    @player_name = $player.name
    @move = params[:Move]
    $player.player_move(@move)
    $computer = Computer.new.go(["Rock", "Paper", "Scissors"].sample)
    @computer_move = $computer.computer_turn
    erb :who_wins
  end

  run! if app_file == $0
end
