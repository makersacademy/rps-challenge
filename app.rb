require 'sinatra/base'
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
    @player_2 = Player.new('The computer')
    Game.create(@player_1,@player_2)
    redirect '/choose_weapon'
  end

  get '/choose_weapon' do
    @game = Game.instance
    erb :choose_weapon
  end

  post '/find_winner' do
    @game = Game.instance
    @hand_1 = params[:hand]
    @hand_2 = @game.player_2.hand.sample
    erb :find_winner
  end

  run! if app_file == $0

end
