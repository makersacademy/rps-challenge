require 'sinatra/base'
require_relative "./lib/player"
require_relative "./lib/game"
require_relative "./lib/hal"

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
  post '/rps' do
    @game.set_attack(params[:attack])
    redirect :result
  end
  get '/result' do
    @attack = @game.player_attack
    @hal_attack = Hal.new.attack
    @result = @game.calculate(@attack, @hal_attack)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
