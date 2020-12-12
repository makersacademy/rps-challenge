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

  post '/result' do
    p params
    @shape = params[:shape]
    $game = Game.new(@shape)
    erb :result
  end
end