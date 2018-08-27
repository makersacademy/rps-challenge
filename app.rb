require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  # post '/selection' do
    

end