require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/rps_mod.rb'
require_relative './lib/hand_shape.rb'

class HandShapeGame < Sinatra::Base

  enable :sessions

  before do
    session[:robot_name] = "MR HANDS"
    @game = Game.return_instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(session[:robot_name])
    @game = Game.create_instance(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0

end
