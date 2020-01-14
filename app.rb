require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    computer = Player.new(params[:computer])
    $game = Game.new(player_1, computer)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/rps' do
    session[:rps] = params[:rps]
    @game = $game
    redirect '/choose_rps'
  end

  get '/choose_rps' do
    @rps = session[:rps]
    @game = $game
    erb :choose_rps
  end

  post '/play_again' do
    @game = $game
    redirect '/'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
