require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

class RPSWeb < Sinatra::Base
  enable :sesisons

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/start' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new
    @game = Game.create(player_1, player_2)
    redirect '/weapon_choice'
  end

  get '/weapon_choice' do
    erb :weapon_choice
  end

  post '/play' do
    p params[:weapon]
    @game.player_1.weapon_choice(params[:weapon])
    @game.player_2.weapon_choice
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
