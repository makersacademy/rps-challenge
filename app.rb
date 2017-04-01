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
    redirect '/play', 302
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    @game = $game
    @game.player_selection(params[:selection])
    redirect '/result', 302
  end

  get '/result' do
    @game = $game
    erb :result
  end

end
