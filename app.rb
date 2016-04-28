
require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
      erb :index
    end
    
  #
  # post '/names' do
  #   player_1 = Player.new(params[:player_1_name])
  #   Game.create(player_1, player_2)
  #   redirect '/play'
  # end
  #
  # get '/play' do
  #   erb :play
  # end
  #
  # get '/game-over' do
  #   erb :game_over
  # end
  # start the server if ruby files executed directly
  run! if app_file == $0
  end
