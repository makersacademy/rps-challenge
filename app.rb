require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'
require 'csv'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/register' do
    @player2 = params[:mode_2]
    erb(:register)
  end

  post '/twoplayer_name' do
    @game = Game.create(Player.new(params[:player1_name]), Player.new(params[:player2_name]))
    redirect '/play'
  end

  post '/oneplayer_name' do
    @game = Game.create(Player.new(params[:player1_name]), Computer.new)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/switch_turn' do
    @game.players[0].choose_weapon(params[:weapon])
    erb(:play2)
  end

  get '/twoplayer_result' do
    @game.players[1].choose_weapon(params[:weapon])
    erb(:twoplayer_result)
  end

  get '/oneplayer_result' do
    @game.players[0].choose_weapon(params[:weapon])
    @game.players[1].choose_weapon
    erb(:oneplayer_result)
  end

  post '/save_game' do
    @game.save_game
    redirect '/saved_game'
  end

  get '/saved_game' do
    erb(:saved_game)
  end

end
