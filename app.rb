require 'sinatra/base'
require './lib/player'
require './lib/game'
# require './lib/'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
    @player_1 = Player.instance
  end

  get '/' do
    erb(:index)
  end

  get '/register-single-player' do
    erb(:register_single_player)
  end

  post '/name' do
    @player_1 = Player.create(params[:player_1_name])
    @game = Game.create_single(@player_1)
    redirect '/main-game'
  end

  get '/main-game' do
    erb(:main_game)
  end

  post '/referee' do
    @player_1.weapon_choice(params[:weapon])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
