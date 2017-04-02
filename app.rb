require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/one_player' do
    erb(:one_player)
  end

  get '/two_player' do
    erb(:two_player)
  end

  post '/name' do
    @player = Player.new(params[:player])
    @computer = Computer.new
    @game = Game.create(@player, @computer)
    redirect '/choose'
  end

  post '/names' do
    @player_1 = Player.new(params[:player_1])
    @player_2 = Player.new(params[:player_2])
    @game = Game.create(@player_1, @player_2)
    redirect '/choose_1p'
  end

  before do
    @game = Game.instance
  end

  get '/choose' do
    erb(:choose)
  end

  post '/choice' do
    @game.player_1.choose(params[:rps])
    @game.player_2.choose
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  get '/choose_1p' do
    erb(:choose_1p)
  end

  post '/choice_1p' do
    @game.player_1.choose(params[:rps])
    redirect '/choose_2p'
  end

  get '/choose_2p' do
    erb(:choose_2p)
  end

  post '/choice_2p' do
    @game.player_2.choose(params[:rps])
    redirect '/play'
  end
end
