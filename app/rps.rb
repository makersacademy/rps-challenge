require 'sinatra/base'
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/computer'

class RPS < Sinatra::Base

  get '/' do
    erb (:register)
  end

  get '/play' do
    player1 = Player.new(params[:name])
    player2 = Computer.new
    $game = Game.new(player1, player2)
    @player_name = player1.name
    erb :play
  end

  post '/go' do
    $game.player1_hand = params[:hand]
    $game.player2_hand = nil
    $game.play
    redirect '/go'
  end

  get '/go' do
    @player1_name = $game.player1_name
    @player2_name = $game.player2_name
    @player1_hand = $game.player1_hand
    @player2_hand = $game.player2_hand
    @outcome = $game.outcome
    erb :go
  end

  post '/continue' do
    case params[:decision]
    when "New Game?"
      redirect '/'
    when "Continue?"
      redirect "/play?name=#{$game.player1_name}"
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
