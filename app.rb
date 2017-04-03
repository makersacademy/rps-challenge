require 'sinatra/base'
require './lib/game.rb'
require './lib/player.rb'

require 'pry'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create(player_1, player_2)
    redirect to('/play'), 303
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/game' do
    "Hello World"
    Game.instance.player_1.choose(params[:hand])
    Game.instance.player_2.robot_choose
    redirect to('/result')
  end

  get '/result' do
    @game = Game.instance
    erb :result
    # binding.pry
  end

  run! if app_file == $0

end
