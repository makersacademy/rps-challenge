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
    p_1 = Player.new(params[:p_1])
    p_2 = Player.new()
    @game = Game.create(p_1, p_2)
    redirect '/choose'
  end

  get '/choose' do
    erb(:choose)
  end

  post '/judge' do
    @game.p_1.choice(params[:choice])
    @game.p_2.choice()
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end
end
