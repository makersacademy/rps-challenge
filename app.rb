require 'sinatra/base'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :home
  end

  get '/enter_name' do
    erb :enter_name
  end

  get '/enter_names' do
    erb :enter_names
  end

  post '/make_game' do
    player_1 = Player.new(params[:player_name])
    player_2 = Player.new('The computer')
    Game.create(player_1, player_2)
    redirect '/choose_weapon'
  end

  post '/make_two_man_game' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create(player_1, player_2, false)
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @game = Game.instance
    erb :choose_weapon
  end

  post '/find_winner' do
    game = Game.instance
    game.player_1.set_hand(params[:hand])
    if game.solo
      game.player_2.set_hand(game.player_2.hands.sample)
      redirect '/victory'
    else
      redirect '/choose_weapon'
    end
  end

  get '/victory' do
    @game = Game.instance
    erb :victory
  end

  run! if app_file == $0

end
