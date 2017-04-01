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

  post '/make_game' do
    @player_1 = Player.new(params[:player_name])
    @player_2 = Player.new('Computer')
    Game.create(@player_1,@player_2)
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @game = Game.instance
    erb :choose_weapon
  end

  post '/find_winner' do
    p params
    @hand = params[:hand]
    erb :find_winner
  end

  run! if app_file == $0

end
