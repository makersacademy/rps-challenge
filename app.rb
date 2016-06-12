require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'
require_relative './lib/log'




class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/start' do
    player1 = Player.new(params[:player])
    $game = Game.new(player1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end


  post '/choice' do
    @game = $game
    @game.choose(params[:move])
    erb :play
  end






  # start the server if ruby file executed directly
  run! if app_file == $0
end
