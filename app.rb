require 'sinatra/base'
require './lib/player'
require './lib/game'

class Game_rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect :play
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/user_vs_pc' do
    session[:rps] = params[:rps]
    redirect :result
  end

  get '/result' do
    @game = Game.new
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
