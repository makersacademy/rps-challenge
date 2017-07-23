require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rock' do
    $player_move = "Rock"
    $game.set_computer_move
    redirect('/player-wins-round') if $game.computer_move == :scissors
    redirect('/computer-wins-round') if $game.computer_move == :paper
    redirect('/draw') if $game.computer_move == :rock

  end

  post '/scissors' do
    $player_move = "Scissors"
    $game.set_computer_move
    redirect('/player-wins-round') if $game.computer_move == :paper
    redirect('/computer-wins-round') if $game.computer_move == :rock
    redirect('/draw') if $game.computer_move == :scissors
  end

  post '/paper' do
    $player_move = "Paper"
    $game.set_computer_move
    redirect('/player-wins-round') if $game.computer_move == :rock
    redirect('/computer-wins-round') if $game.computer_move == :scissors
    redirect('/draw') if $game.computer_move == :paper
  end

  get '/draw' do
    erb :draw
  end

  get '/computer-wins-round' do
    @game = $game
    @player_move = $player_move
    erb :computer_wins_round
  end

  post '/add-comp-points' do
    $game.comp_won
    redirect('/play')
  end

  get '/player-wins-round' do
    @game = $game
    @player_move = $player_move
    erb :player_wins_round
  end

  post '/add-player-points' do
    $game.player_won
    redirect('/play')
  end

  run! if app_file == $0

end
