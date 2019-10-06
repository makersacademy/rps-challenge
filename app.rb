require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new("COMPUTER")
    @game = Game.create(player_1, player_2)
    redirect("/play")
  end

  get '/play' do
    @game
    erb(:play)
  end

  post '/round' do
    @game 
    @game.player_1.move = params[:player_1_move]
    @game.player_2.play_move
    erb(:round)
  end

  run! if app_file == $0 
end