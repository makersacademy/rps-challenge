require 'sinatra/base'
require './model/player'
require './model/game'

class Game < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:name])
    @game = Game.new
    erb :play
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
