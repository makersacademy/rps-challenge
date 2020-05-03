require 'sinatra/base'
require './lib/human_player'
require './lib/rps_game'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    player = HumanPlayer.new(params[:name])
    RPSGame.create(player, "")
    redirect '/play'
  end

  get '/play' do
    @game = RPSGame.instance
    erb :play
  end

  post '/weapon' do
    RPSGame.instance.player1.weapon=(params[:weapon])
    redirect '/action'
  end

  get '/action' do
    @game = RPSGame.instance
    erb :action
  end

  run! if app_file == $0
end
