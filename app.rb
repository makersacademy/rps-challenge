require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter_game
  end

  post '/name' do
    session['Name'] = params['Name']
    redirect '/play'
  end

  get '/play' do
    @name = session['Name']
    erb :play_game
  end

  post '/pick_option' do
    session["choice"] = params["choice"]
    redirect '/opponent_choice'
  end

  get '/opponent_choice' do
    @choice = session["choice"]
    erb :opponent_choice
  end

  post '/opponent_choice' do
    player_one_choice = session["choice"]
    player_one_name = session["Name"]
    $game = Game.new(Player.new(player_one_choice, player_one_name), Player.new)
    $game.fight
    redirect :result
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
