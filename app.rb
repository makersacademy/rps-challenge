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
    redirect'/play'
  end

  post '/submit' do
    player_1 = session[:player_1]
    player_2 = session[:player_2]

    player_1_pick = params[:pick]
    if pick == 'rock'
      player_1.rock
    elsif pick == 'paper'
      player_1.paper
    elsif pick == 'scissors'
      player_1.scissors
    end

    player_2_pick = ['rock', 'paper', 'scissors'].sample
    if pick == 'rock'
      player_2.rock
    elsif pick == 'paper'
      player_2.paper
    elsif pick == 'scissors'
      player_2.scissors
    end

    redirect'/showdown'
  end

  get '/showdown' do
    player_1 = session[:player_1]
    player_1 = session[:player_2]
    "#{player_1.name} plays #{player_1.pick}!"
    "#{player_2.name} plays #{player_2.pick}!"
  end

  get '/play' do
    @player_1_name = session[:player_1].name
    erb :play
  end
end
