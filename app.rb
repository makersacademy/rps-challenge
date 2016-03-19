require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before { @game = Game.get_game }

  get '/' do
    erb :index
  end

  post '/player1' do
    player_1 = Player.new(params[:player_1_name])
    Game.start(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/rps' do
    $poo = params
    redirect '/result'
  end

  get '/result' do
    $poo.to_s
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
