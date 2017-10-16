require 'sinatra/base'
require './lib/player'
require './lib/game.rb'

class RpsChallenge < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Computer')
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  
end
