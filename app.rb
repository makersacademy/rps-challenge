require 'sinatra/base'
require './lib/player'
require './lib/game'
require 'pry'

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
    redirect '/play', 302
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/choice' do
    @game = $game
    @game.player_choice(params[:choice])
    redirect '/result', 302
  end

  get '/result' do
    @game = $game
    erb :result
  end

  post '/next_round' do
    @game = $game
    @game.update_round
    redirect '/play', 302
  end

  post '/reset' do
    @game = $game

    redirect '/', 302
  end

end
