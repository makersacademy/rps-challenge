require 'sinatra'
require 'sinatra/base'
require './lib/game'
require './lib/turn'

class Rps < Sinatra::Base

  get '/' do 
    erb(:index)
  end

  before do
    @game = Game.instance
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect 'play'
  end
  
  get '/play' do 
    erb(:play)
  end

  post '/turn' do
    @turn = Turn.new(params[:choice])
    erb(:turn)
  end

end
