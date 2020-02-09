require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rpsgame < Sinatra::Base

  configure do
    set :session_secret, "awonkywillawentaway"
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/results' do
    @player_1_weapon = @game.player_1.choose(params[:weapon])
    @player_2_weapon = @game.player_2.choose
    @result = @game.compute_result
    erb(:results)
  end

end
