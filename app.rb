require 'sinatra/base'
require './lib/game.rb'

class Rps < Sinatra::Base

  before do 
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/names' do 
    name = params[:name]
    @game = Game.create(name)
    redirect '/move-select'
  end

  get '/move-select' do
    erb(:moveselect)
  end

  post '/calculating' do
    move = params[:move]
    @game.player(move)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end
end
