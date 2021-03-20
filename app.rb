require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base


  get '/home' do
      erb :home
  end

  post '/play' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/result' do
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
end
