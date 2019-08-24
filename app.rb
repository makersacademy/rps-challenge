require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base


  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $computer = Computer.new
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  post '/result' do
    $player1_weapon = $player_1.choose(params.keys.first)
    redirect '/result'
  end

  get '/result' do
    @player1_weapon = $player1_weapon
    @computer_weapon = $computer.weapon
    result = Game.new.result(@player1_weapon, @computer_weapon)
    case result
    when 'draw'
      @message = "It's a draw!"
    when 'win'
      @message = "#{$player_1.name} wins!"
    when 'lose'
      @message = "Computer wins!"
    else
      @message = "error"
    end
    erb :result
  end

  run! if app_file == $0
end
