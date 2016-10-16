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
    @player_1 = @game.player_1
    @player_2 = @game.player_2
    @player_1.set_weapon=(params[:weapon])
    @game.decide_winner
    erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
