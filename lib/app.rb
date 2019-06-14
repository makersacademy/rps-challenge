require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    $game = Game.new(params[:player_1_name])
    redirect :play
  end

  get '/play' do
    @name = $game.player_name
    erb :play
  end

  post '/decide' do
    $game.decide(params[:selection])
    redirect :result
  end

  get '/result' do
    @game = $game
    erb :result
  end

  run! if app_file == $0
end
