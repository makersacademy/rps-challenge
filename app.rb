require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/player'
require_relative './lib/game'

class RPS < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    @game = Game.create(Player.new(params[:player_1_name]))
    erb :play
  end

  post '/result' do
    p "player_choice"
    @game = Game.create(Player.new(params[:player_1_name]))
    p @game
    player_choice = "player_choice"
    p @game.result
    erb : @game.result
  end

  run! if app_file == $0
end
