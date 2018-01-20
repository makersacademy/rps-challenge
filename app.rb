require 'sinatra/base'
require './lib/game'
require './lib/computer_player'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p1 = Player.new(params[:player_1_name])
    p2 = Player.new(params[:player_2_name])
    params[:player_2_name].empty? ? Game.build(p1) : Game.build(p1,p2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon_choice' do
     @game.set_player_1_weapon(params[:player_1_weapon])
     @game.set_player_2_weapon(params[:player_2_weapon])
     redirect :result
  end

  get '/result' do
    erb :result
  end


run! if app_file == $0
end
