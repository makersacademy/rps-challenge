require 'sinatra'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
   $game = Game.new(player)
    redirect '/play'
  end

  get "/play" do
     @game = $game
    erb(:play)
  end

end
