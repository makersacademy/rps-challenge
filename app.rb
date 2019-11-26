require 'sinatra'
require './lib/players'
require './lib/game'
class RoPaSc  < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/registration' do
    player_1 = Players.new(params[:player_1])
    player_2 = Players.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/options' do
    @game = $game
    choice = params[:player_choice]
    redirect '/play'
  end

  get '/hit' do
    @game = $game
    redirect '/play'
  end

end
