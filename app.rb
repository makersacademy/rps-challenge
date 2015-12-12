require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    $game = Game.new( Player.new(params[:player_1]), ComputerPlayer.new)
    redirect :play
  end

  get '/play' do
    $game
    erb :play
  end

  post '/rock' do
    $game.player1.rock
    redirect :choice
  end

  post '/paper' do
    $game.player1.paper
    redirect :choice
  end

  post '/scissors' do
    $game.player1.scissors
    redirect :choice
  end

  get '/choice' do
    @game = $game
    erb :choice
  end

  get '/outcome' do
    @game = $game
    erb :outcome
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
