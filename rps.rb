require 'sinatra/base'
require './lib/game'
require './lib/computer'
require './lib/player'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :login
  end

  post '/login' do
    $p1 = Player.new params[:player_name]
    $p2 = Computer.new
    $game = Game.new($p1, $p2)
    redirect '/play'
  end

  get '/play' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    erb :play
  end

  post '/choose' do
    $p1.choose_weapon(params[:choice].to_sym)
    $p2.choose_weapon
    redirect '/choose'
  end

  get '/choose' do
    erb $game.victor
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
