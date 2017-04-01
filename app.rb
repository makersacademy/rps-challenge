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
    @game = Game.create(@player)
    redirect '/choose'
  end

  before do
    @game = Game.instance
  end

  get '/choose' do
    erb(:choose)
  end

  post '/choice' do
    @game.player_1.choose(params[:rps])
    redirect '/play'
  end

  get '/play' do
    @computer = Computer.new
    erb(:play)
  end
end
