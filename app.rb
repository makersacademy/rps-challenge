require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = params[:player_1_name]
    player_2 = params[:player_2_name]
    Game.create(Player.new(player_1),Player.new(player_2))
    redirect '/play'
  end

  run! if app_file == $0
end
