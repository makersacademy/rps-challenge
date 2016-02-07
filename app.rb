require 'sinatra/base'
require 'player'

class RPS < Sinatra::Base
  get '/' do
    erb(:register)
  end

  post '/record' do
    $player = Player.new(params[:player_name])
    redirect('/choose-weapon')
  end

  get '/choose-weapon' do
    @player_name = $player.name
    erb(:choose_weapon)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end