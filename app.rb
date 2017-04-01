require 'sinatra/base'
require './lib/player'
require './lib/game'

# keep me slim controller
class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'
  set :public_folder, File.dirname(__FILE__) + '/'

  get '/' do
    erb :index
  end

  post '/registered' do
    player_1 = Player.new(params[:player_1])
    # player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1)
    # create a game and pass player....
    redirect '/play', 303
  end

  get '/play' do
    @game = $game
    erb :play
  end

  # get '/result'
  # this is where the result of the
  # player vs comp rps was


end
