require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Rps < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/sign_in' do
    @player_1 = Player.new(params[:player_1])
    $game = Game.new(@player_1)
    redirect '/play'
  end

  get '/play' do
    $game.bot_choice
    erb :play
  end

  get '/result' do
    $game.players[0].player_choice = params[:p1]
    $game.game_result
    erb :result_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
