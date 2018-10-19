require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player_name])
    @game = Game.new_game(player)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  run! if app_file == $0
end
