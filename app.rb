require 'sinatra/base'

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
    redirect('/play')
  end

  get '/play' do
    @weapon = $weapon
    erb(:play)
  end



end
