require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:home)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/home_game'
  end

  get '/home_game' do
    @player = $player.name
    @points = $player.points
    erb(:home_game)
  end

  get '/play_rock' do
    @player = $player.name
    @points = $player.points
    erb(:play_rock)
  end 

  get '/play_scissors' do
    @player = $player.name
    @points = $player.points
    erb(:play_scissors)
  end

  get '/play_paper' do
    @player = $player.name
    @points = $player.points
    erb(:play_paper)
  end
end
