require 'sinatra/base'
require_relative "./lib/player"
require_relative "./lib/game"

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    @game = Game.create(player_1)
    erb :names
    redirect :game
  end

  get '/game' do
    @player_name = @game.player_name
    erb :game
  end

  get '/attack' do
    erb :attack
  end

  get '/result' do

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
