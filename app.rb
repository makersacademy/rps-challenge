require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    $game = Game.new
    erb :index
  end

  post '/sign_in' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    $player.choice = params[:choice]
    $result = $game.turn($player.choice)
    $game.opponent_choice

    # puts 'Player choice is ' + $player.choice
    # puts 'Opponent choice is ' + $game.opponent_choice
    # puts 'Result is ' + $result

    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end
