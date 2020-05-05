require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'cy-krets'

  get '/' do
    erb :reg_names
  end

  post '/play' do
    p $game = Game.new(Player.new(params[:player1_name]))
    p $game.computer_choice
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/results' do
    p $game.player_choice(params[:p1_choice])
    p $game.results
    redirect '/results'
  end

  get '/results' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
