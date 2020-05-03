require 'sinatra/base'
require './lib/human_player'
require './lib/rps_game'
require './lib/computer_player'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    player1 = HumanPlayer.new(params[:name])
    RPSGame.create(player1, ComputerPlayer.new)
    redirect '/play'
  end

  get '/play' do
    @game = RPSGame.instance
    erb :play
  end

  post '/weapon' do
    RPSGame.instance.player1.weapon=(params[:weapon].downcase.to_sym)
    redirect '/action'
  end

  get '/action' do
    @game = RPSGame.instance
    @weapon1 = @game.player1.weapon
    @weapon2 = @game.player2.weapon
    erb :action
  end

  run! if app_file == $0
end
