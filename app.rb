require 'sinatra/base'
require './lib/game'
# app file for Rock Paper Scizors game
class RSPgame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.create(Game.new(Player.new(params[:player_name]), Player.new(Computer.new)))
    erb(:name)
    redirect '/play'
  end

  get '/play' do

    erb(:play)
  end
end
