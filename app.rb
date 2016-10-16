require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player_name])
    Game.create(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    @game = Game.instance
    @game.player_1.set_weapon=(params[:weapon])
    @player_1_weapon = @game.player_1.weapon
    @player_2_weapon = @game.player_2.weapon
    erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
