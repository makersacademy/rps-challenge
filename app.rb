require 'sinatra/base'
require './lib/player.rb'
require './lib/auto.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    @player = $player.name
    erb :names
  end

  get '/play' do
    erb :play
  end

  post "/game" do
    @move = params[:move]
    $auto_move = Auto.new
    @auto_move = $auto_move.random_pick
    erb :game
  end

  run! if app_file == $0
end
