require 'sinatra/base'
#require 'player'
#require 'weapon'
#require 'AI'

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
    @player_weapon = $weapon.type
    erb(:confirm_weapon)
  end

  get '/result' do
    @player_name = $player.name
    @player_weapon = $weapon.type
    @ai_weapon = AI.new.weapon_choice
    @result = Combat.new.resolve(@player_weapon, @ai_weapon)
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end