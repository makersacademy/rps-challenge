require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/test-infrastructure' do
    "Test infrastructure correctly functioning"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name])
    player_2 = Player.new("Computer")
    @game = Game.create(player_1, player_2)
    redirect '/confirm'
  end

  get '/confirm' do
    erb :confirm
  end

  post '/start-game' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/move' do
    @game.player_1.make_move(params[:move])
    @game.player_2.random_move
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
