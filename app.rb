require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $game = Game.new($player1)
    redirect '/welcome'
  end

  get '/welcome' do
    @game = $game
    @player_name = $game.player.name
    erb :welcome
  end

  post '/play' do
    @player = $player1.make_choice(params[:rpsGame])
    @game = $game
    p @game.computer_choice
    p @game.player_choice
    $result = @game.play
    redirect '/result'
  end

  get '/result' do
    @result = $result
    @player_name = $game.player.name
    erb :result
  end

  post '/done' do
    redirect '/'
  end
end
