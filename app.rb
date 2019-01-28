require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1_name])
    $game = Game.new(@player_1)
    @player_1 = $game.player_1

    redirect '/play'
  end

  get '/play' do
    @player_1 = $game.player_1

    erb :play
  end

  get '/rock' do
    @game = $game
    @player_1 = @game.player_1
    @player_1.choice = "Rock"

    # @game.result
    erb :play
  end

  get '/paper' do
    @game = $game
    @player_1 = @game.player_1
    @player_1.choice = "Paper"

    # @game.result
    erb :play
  end

  get '/scissors' do
    @game = $game
    @player_1 = @game.player_1
    @player_1.choice = "Scissors"

    # @game.result
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
