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
    player_2 = Robot.new
    Game.create(player_1, player_2)
    redirect '/choose_weapon'
  end

  post '/make_two_man_game' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create(player_1, player_2)
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @game = Game.instance
    erb :choose_weapon
  end

  post '/find_winner' do
    game = Game.instance
    game.playing.set_hand(params[:hand])
    if game.player_2.is_a?(Robot)
      game.player_2.set_hand
      redirect '/victory'
    elsif game.playing == game.player_1
      game.switch_turn
      redirect '/choose_weapon'
    else
      redirect '/victory'
    end
  end

  get '/victory' do
    @game = Game.instance
    @game.switch_turn unless @game.player_2.is_a?(Robot)
    erb :victory
  end

  run! if app_file == $0

end
