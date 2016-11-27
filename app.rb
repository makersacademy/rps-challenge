require 'sinatra/base'
require './lib/game'
require './lib/player'

class Rps < Sinatra::Base

  before '/' do
    Game.create(Player.new, Player.new)
  end

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game.player_one.set_name(params[:player_one_name])
    @game.player_two.set_name("Computer")
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon_selection' do
    @game.player_one.select_weapon(params[:weapon])
    @game.player_two.random_weapon_selection
    @game.update_score
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
