require 'sinatra/base'
require './model/player.rb'
require './model/auto.rb'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    @player = $player.name
    # @name = params[:name]
    erb :names
  end

  get '/play' do
    erb :play
  end

  post "/game" do
    @move = params[:move]
    erb :game
  end

  run! if app_file == $0

end