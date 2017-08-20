require 'sinatra/base'
require 'rack'
require 'shotgun'
require './lib/game.rb'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player1 = Player.new(params[:player])
    p params
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/display' do
   $game1 = Game.new(params[:choice])
   p params
   redirect '/result'
  end

  get '/result' do
    $cpu_choice = ["rock", "paper", "scissors"].sample
    erb :result
  end



  run! if app_file == $PROGRAM_NAME
end
