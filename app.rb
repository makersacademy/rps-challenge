require 'sinatra/base'
require './lib/computer'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = params[:player_name]
    redirect('/choose_weapon')
  end

  get '/choose_weapon' do
    @player = $player
    erb(:choose_weapon)
  end

  post '/weapon' do
    $weapon = params[:weapon_of_choice]
    $computer_weapon = Computer.new.choice
    redirect('/play')
  end

  get '/play' do
    @weapon = $weapon
    @computer_weapon = $computer_weapon
    erb(:play)
  end



end
