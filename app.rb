require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p1 = Player.new(params[:p1_name])
    @game = Game.create(p1, Computer.new)
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
    @game.computer.move
    erb(:result)
  end

end
