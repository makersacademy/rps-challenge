require 'sinatra'
require './lib/randomiser'
require './lib/player.rb'
require './lib/game.rb'
require './lib/item.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new('Computer')
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    @game = $game
    item = Item.send(params[:item].downcase)
    erb @game.play(item)
  end

  run! if $0 == __FILE__
end
