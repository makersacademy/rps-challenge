require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1 = Player.new(params[:p1_name])
    @game = Game.create(p1)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  post '/move' do
    @game.player_one.choice = params[:move]
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

end
