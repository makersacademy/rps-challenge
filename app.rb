require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base


  get '/home' do
      erb :home
  end

  post '/play' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = $player.player_name
    erb :play
  end

  post '/result' do
    redirect '/result'
  end

  get '/result' do
    erb :result
  end
end
