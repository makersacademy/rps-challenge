require './lib/game'
require './lib/player'
require './lib/computer'
require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    $game = Game.new(Player.new(params[:name]))
    @game = $game
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
