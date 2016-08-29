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
    Game.instance.set_singleplayer(false)
    redirect '/multiplayer'
  end

  get '/multiplayer' do
    @game = Game.instance
    erb(:multiplayer)
  end

  post '/rock-p1' do
    @game = Game.instance
    @game.player1.set_last_action("Rock")
    redirect '/multiplayer2'
  end

  post '/paper-p1' do
    @game = Game.instance
    @game.player1.set_last_action("Paper")
    redirect '/multiplayer2'
  end

  post '/scissors-p1' do
    @game = Game.instance
    @game.player1.set_last_action("Scissors")
    redirect '/multiplayer2'
  end

  get '/multiplayer2' do
    @game = Game.instance
    erb(:multiplayer2)
  end

  post '/rock-p2' do
    @game = Game.instance
    @game.player2.set_last_action("Rock")
    redirect '/multiplayer_result'
  end

  post '/paper-p2' do
    @game = Game.instance
    @game.player2.set_last_action("Paper")
    redirect '/multiplayer_result'
  end

  post '/scissors-p2' do
    @game = Game.instance
    @game.player2.set_last_action("Scissors")
    redirect '/multiplayer_result'
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

  get '/multiplayer_result' do
    @game = Game.instance
    @game.process_turn
    erb(:multiplayer_result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
