require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/choose'
  end

  get '/choose' do
    @@game = Game.new
    @player_name = session[:player_name]
    erb :choose
  end

  get '/rock' do
    @player_weapon = "Rock"
    @@game.computer_weapon
    @outcome = @@game.compare_weapons(@player_weapon)
    erb :outcome
  end

  get '/paper' do
    @player_weapon = "Paper"
    @@game.computer_weapon
    @outcome = @@game.compare_weapons(@player_weapon)
    erb :outcome
  end

  get '/scissors' do
    @player_weapon = "Scissors"
    @@game.computer_weapon
    @outcome = @@game.compare_weapons(@player_weapon)
    erb :outcome
  end

  run! if app_file == $0
end
