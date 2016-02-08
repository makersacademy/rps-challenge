require 'sinatra/base'
require './lib/game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    # $game =nil
    erb(:index)
  end

  post '/names' do
    # @name1 = params[:name1]
    session[:name1] = params[:name1]
    $game = Game.new(Player.new(params[:name1]))
    redirect '/play'
  end

  get '/play' do
    $game
    erb(:play)
  end

  post '/play' do
    $game.player_choice(params[:user_choice])
    # need help with bringing in model and view
    redirect '/game_over'
  end

  get '/game_over' do
    $game
    erb(:game_over)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
