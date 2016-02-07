require 'sinatra/base'
require 'player'

class RPS < Sinatra::Base
  get '/' do
    erb(:register)
  end

  post '/record' do
    $player = Player.new(params[:player_name])
    redirect('/choose_weapon')
  end

  get '/choose_weapon' do
    @player_name = $player.name
    erb(:choose_weapon)
  end

  post '/record_weapon' do
    $weapon = Weapon.new(params[:weapon])
    redirect('/confirm_weapon')
  end

  get '/confirm_weapon' do
    @weapon = $weapon.type
    erb(:confirm_weapon)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end