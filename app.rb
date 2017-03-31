require 'sinatra/base'
require './lib/player'

# keep me slim controller
class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  set :public_folder, File.dirname(__FILE__) + '/'

  get '/' do
    erb :index
  end

  post '/registered' do
    player = Player.new(params[:marketeer])
    robot = Player.new(params[:marketeer])
    game = Game.new(player, robot)
    # create a game and pass player....
    redirect '/play', 303
  end

  get '/play' do
    @player = $player
    erb :play
  end

  # get '/result'
  # this is where the result of the
  # player vs comp rps was


end
