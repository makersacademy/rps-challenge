require 'sinatra/base'
require './lib/player'
require './lib/game'
# require './lib/'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  get '/register-single-player' do
    erb(:register_single_player)
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.create_single(player)
    redirect '/main-game'
  end

  get '/main-game' do
    erb(:main_game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
