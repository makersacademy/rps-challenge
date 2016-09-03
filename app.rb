require 'sinatra/base'
require_relative './lib/game.rb'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    $game = Game.new(player, computer)
    redirect '/play'
  end

  get '/play' do
    $game = @game
  end

  run! if app_file == $0
end
