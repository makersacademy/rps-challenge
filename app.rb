require_relative './lib/game'
require 'sinatra/base'
require 'pry'

class RPS < Sinatra::Base
  get '/' do
    erb(:homepage)
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    @player_name = @game.player_name
    erb(:play)
  end
end
