$VERBOSE=nil #remember to remove this before pulling
require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(params[:player_1])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/round_1' do
    $game.player_choice = params[:weapon]
    erb :round1
  end

  run! if app_file == $0
end
