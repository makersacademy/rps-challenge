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
    @player_name = session[:player_name]
    erb :play
  end

  post '/rock' do
    session[:player_choice] = :rock
    redirect '/game'
  end

  post '/paper' do
    session[:player_choice] = :paper
    redirect '/game'
  end

  post '/scissor' do
    session[:player_choice] = :scissor
    redirect '/game'
  end

  get '/game' do
    @game = $game
    # @game.dual(@game.player_choice, @game.computer_choice)
    @game.dual(session[:player_choice], @game.computer_choice)
    @game.result
    erb :game
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
