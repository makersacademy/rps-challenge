require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/game' do
    player_1_name = params[:player_1_name]
    player_1_choice = params[:player_1_choice]
    @game = Game.create(player_1_name, player_1_choice)
    redirect to '/result'
  end

  get '/result' do
    erb @game.result
  end

  run! if app_file == $0
end
