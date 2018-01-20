require 'sinatra/base'
require './lib/game'
require './lib/computer_player'
require './lib/result_log'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
    @result_log = ResultLog.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p1,p2 = Player.new(params[:player_1_name]),Player.new(params[:player_2_name])
    params[:player_2_name].empty? ? Game.build(p1) : Game.build(p1,p2)
    ResultLog.build
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon_choice' do
     @game.set_player_1_weapon(params[:player_1_weapon])
     @game.set_player_2_weapon(params[:player_2_weapon])
     @result_log.add(@game.result)
     redirect :result
  end

  get '/result' do
    erb :result
  end

run! if app_file == $0
end
