require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/computer'

class RPS < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    if params[:player_2_name].empty?
      Game.create(player_1)
    else
      player_2 = Player.new(params[:player_2_name])
      Game.create(player_1, player_2)
    end
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
    @player_1.set_weapon=(params[:weapon].to_sym)
    @game.decide_winner
    erb(:result)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
