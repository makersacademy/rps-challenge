require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end
  
  get '/' do
    erb(:index)
  end

  post '/setup' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/choose'
  end

  get '/choose' do
    erb(:choose)
  end

  post '/judge' do
    @game.player.choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

end