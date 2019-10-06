require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/multiplayer' do
    erb(:multiplayer)
  end

  before do
    @game = Game.instance
  end

  post '/name' do
    player_1 = Player.new(params[:player_1]) 
    player_2 = Player.new("COMPUTER") 
    @game = Game.create(player_1, player_2)
    redirect("/play")
  end

  post '/names' do
    player_1 = Player.new(params[:player_1]) 
    player_2 = Player.new(params[:player_2]) 
    @game = Game.create(player_1, player_2)
    redirect("/multiplayer1")
  end

  get '/play' do
    @game
    erb(:play)
  end

  get '/multiplayer1' do
    @game
    erb(:multiplayer1)
  end

  post '/multiplayer1name' do
    @game
    @game.player_1.move = params[:player_1_move]
    redirect("/multiplayer2")
  end

  get '/multiplayer2' do
    @game
    erb(:multiplayer2)
  end

  post '/round' do
    @game 
    @game.player_1.move = params[:player_1_move]
    @game.player_2.move
    erb(:round)
  end

  post '/multiplayround' do
    @game
    @game.player_2.move = params[:player_2_move]
    erb(:multiplayround)
  end

  run! if app_file == $0 
end