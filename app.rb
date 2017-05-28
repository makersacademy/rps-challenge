require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @weapon = $weapon
    erb :play
  end

  post '/choice' do
    $weapon = params[:weapon_choice]
    redirect '/play'
  end

end
