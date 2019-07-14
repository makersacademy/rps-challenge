require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    player_1 = Player.new(params[:player])
    $game = Game.new_game(player_1)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/result' do
    @choice = @game.choice
    @bot_choice = @game.bot_choice
    erb :result
  end

  run! if app_file == $0
end
