require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/enter_name' do
    erb :enter_name
  end

  get '/choose_weapon' do
    @player_1 = Player.new(params[:player_name])
    @player_2 = Player.new('Computer')
    Game.create(@player_1,@player_2)
    erb :choose_weapon
  end

  run! if app_file == $0

end
