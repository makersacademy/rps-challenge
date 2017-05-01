require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1]), Computer.new)
    redirect '/rules'
  end

  before do
    @game = Game.instance
  end

  get '/rules' do
    erb(:rules)
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    @game.play(params[:weapon])
    erb(:result)
  end

end
