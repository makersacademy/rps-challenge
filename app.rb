require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'
require_relative './lib/rps_mod.rb'
require_relative './lib/hand_shape.rb'

class HandShapeGame < Sinatra::Base

  enable :sessions

  before do
    session[:robot_name] = "ROBOHANDS UNIT #{rand * 100}"
    @game = Game.return_instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(session[:robot_name])
    Game.create_instance(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/results' do
    @just_went = @game.whos_turn
    @game.play(params[:shape_choice].to_i)
    erb :results
  end

  run! if app_file == $0

end
