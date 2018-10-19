require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    # $game = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    
  end

  run! if app_file == $0
end
