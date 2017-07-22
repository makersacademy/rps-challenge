require './lib/player.rb'
require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = Player.new(params[:player_1_name])
    session[:player_2] = Player.new("the computer")
    session[:game] = Game.new(session[:player_1], session[:player_2])
    redirect'/play'
  end

  post '/submit' do
    player_1 = session[:player_1]
    player_2 = session[:player_2]
    game = session[:game]

    player_1_pick = params[:pick]
    player_1.send(player_1_pick)

    player_2_pick = ['rock', 'paper', 'scissors'].sample
    player_2.send(player_2_pick)

    game.judge(player_1_pick, player_2_pick)

    redirect'/showdown'
  end

  get '/showdown' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @winner = session[:game].winner
    erb :showdown
  end

  get '/play' do
    @player_1_name = session[:player_1].name
    erb :play
  end
end
