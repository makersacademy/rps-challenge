require 'sinatra/base'
require './lib/game'
require './lib/leaderboard'
require './lib/player'


class MyApp < Sinatra::Base
  before do
    @game = Game.instance
    @leaderboard = LeaderBoard.instance
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    p1, p2 = Player.new(params[:player_1_name]), Player.new(params[:player_2_name])
    LeaderBoard.build
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/weapon_choice' do
    @game.select_player_1_weapon(params[:player_1_weapon])
    @game.select_player_2_weapon(params[:player_2_weapon])
    @leaderboard.add(@game.result)
    redirect :result
  end

  get '/result' do
    erb :result
  end


end
