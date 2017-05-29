require 'sinatra'
require './lib/randomiser'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end


  post '/rock' do
    rule(Item.rock)
  end

  post '/paper' do
    rule(Item.paper)
  end

  post '/scissors' do
    rule(Item.scissors)
  end

  run! if $0 == __FILE__
end
