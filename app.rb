require 'sinatra/base'
require './lib/machine'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
 enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:name])
    player2 = Machine.new
    Game.set_game(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/weapon' do
    @game = Game.instance
    session[:weapon] = @game.player.selected_weapon(params[:weapon])
    redirect '/weapon'
  end

  get '/weapon' do
    @game = Game.instance
    erb :weapon
  end

  get '/AI' do
    @game = Game.instance
    @machine = Machine.new
    erb :AI
  end

  get '/result' do
    @game = Game.instance
    session[:weapon]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
