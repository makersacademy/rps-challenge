require 'sinatra/base'
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
    $game.set_weapon(params[:rock] || params[:paper] || params[:scissors])
    redirect '/battle'
  end

  get '/battle' do
    @computer_weapon = Computer.weapon
    erb :battle
  end

  run! if app_file == $0
end
