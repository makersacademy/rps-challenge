require 'sinatra/base'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player1])
    redirect '/play'
  end

  post '/choice' do
    $weapon = params[:weapon_choice]
    $computer_weapon = Computer.new.choice
    redirect '/play'
  end

  get '/play' do
    @player1 = $player1
    @weapon = $weapon
    @computer_weapon = $computer_weapon
    erb :play
  end

end
