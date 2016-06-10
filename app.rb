require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    Game.start(params[:player],:computer)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/multiplayer' do
    Game.start(params[:player1],params[:player2])
    redirect '/multiplayer'
  end

  get '/multiplayer' do
    "Toby vs Barry"
    erb(:multiplayer)
  end

  post '/rock-multi' do
    @game = Game.instance
    @game.player1.set_last_action("Rock")
    redirect '/multiplayer2'
  end

  post '/paper-multi' do
    @game = Game.instance
    @game.player1.set_last_action("Paper")
    redirect '/multiplayer2'
  end

  post '/scissors-multi' do
    @game = Game.instance
    @game.player1.set_last_action("Scissors")
    redirect '/multiplayer2'
  end

  get '/multiplayer2' do
    @game = Game.instance
    erb(:multiplayer2)
  end

  post '/rock' do
    @game = Game.instance
    @game.player1.set_last_action("Rock")
    redirect '/result'
  end

  post '/paper' do
    @game = Game.instance
    @game.player1.set_last_action("Paper")
    redirect '/result'
  end

  post '/scissors' do
    @game = Game.instance
    @game.player1.set_last_action("Scissors")
    redirect '/result'
  end

  get '/result' do
    @game = Game.instance
    @game.process_turn
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
