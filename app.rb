require 'sinatra/base'
require './lib/game'
require './lib/leaderboard'


class MyApp < Sinatra::Base

  set :session_secret, 'super'

  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    p1, p2 = Player.new(params[:Player_1_name]), Player.new(params[:Player_2_name])
    Leaderboard.build
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
