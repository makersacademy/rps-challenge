require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base 

  get '/' do
    "Testing infrastructure working!"
  end

  get '/name' do
    erb :name
  end

  post '/play' do
    $name = params[:player_name]
    erb :play
  end

  post '/outcome' do
    p params
    @shape = params[:shape]
    $game = Game.new(@shape)
    redirect '/draw' if $game.draw?
    redirect '/result'
  end

  get '/draw' do
    erb :draw
  end

  get '/result' do
    erb :result
  end
end