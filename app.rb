require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/login' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/rock' do
    $player.draw_rock
    redirect '/play'
  end
end
