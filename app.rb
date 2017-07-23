require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/name' do
    $game = Game.new(Player.new(params[:player_name]))
    redirect '/weapons'
  end

  get '/weapons' do
    erb :weapons
  end

  post '/choices' do
    $game.player_choice(params[:rock] || params[:paper] || params[:scissors])
    redirect '/battle'
  end

  get '/battle' do
    $game.computer_choice
    erb :battle
  end

  run! if app_file == $0
end
