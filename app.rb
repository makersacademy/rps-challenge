require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/1-player' do
    erb :registerOnePlayer
  end

  get '/2-players' do
    erb :registerTwoPlayers
  end

  post '/player1' do
    $player_1 = Player.new(params[:player_1])
    if params[:player_2]
      $player_2 = Player.new(params[:player_2])
    else
      $player_2 = Computer.new
    end
    redirect '/player1'
  end

  get '/player1' do
    $current_player = $player_1
    erb :play
  end

  post '/player2' do
    if $current_player == $player_1 && $player_2.name == 'Computer'
      $player1_weapon = $player_1.choose(params.keys.first)
      $player2_weapon = $player_2.weapon
      redirect '/result'
    elsif $current_player == $player_1 && $player_2.name != 'Computer'
      $player1_weapon = $player_1.choose(params.keys.first)
      $current_player = $player_2
      redirect '/player2'
    elsif $current_player == $player_2
      $player2_weapon = $player_2.choose(params.keys.first)
      redirect '/result'
    end
  end

  get '/player2' do
    erb :play
  end

  get '/result' do
    result = Game.new.result($player1_weapon, $player2_weapon)
    case result
    when 'draw'
      @message = "It's a draw!"
    when 'win'
      @message = "#{$player_1.name} wins!"
    when 'lose'
      @message = "#{$player_2.name} wins!"
    else
      @message = "error"
    end
    erb :result
  end

  run! if app_file == $0
end
