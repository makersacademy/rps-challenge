require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    Game.create(params[:name])
    redirect '/play'
  end

  get '/play' do
    game = Game.instance
    @name = game.name
    erb :play
  end

  run! if __FILE__ == $0
end
