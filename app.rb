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
    session[:name] = params[:name]
    player1 = Player.new(params[:name])
    player2 = Machine.new
    Game.set_game(player1, player2)
    @game = Game.instance
    redirect '/play'
  end

  get '/play' do
    # @name = session[:name]
    @game = Game.instance
    erb :play
  end

  post '/weapon' do
    session[:weapon] = params[:weapon]
    @game = Game.instance
    redirect '/weapon'
  end

  get '/weapon' do
    @game = Game.instance
    @weapon = session[:weapon]
    erb :weapon
  end

  get '/AI' do
    @weapon = session[:weapon]
    @machine_weapon = Machine.new.choose_weapon
    erb :AI
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
