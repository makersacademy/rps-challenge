require 'sinatra/base'
require './lib/player.rb'

class RPG < Sinatra::Base
  enable :sessions
    get '/' do
      erb :index
    end

    post '/name' do
      $player_1 = Player.new(params[:first_name])
      redirect '/play'
    end

    get '/play' do
      @first_name = $player_1.name
      erb :play
    end

    get '/game' do
      $game = Game.new(params[:weapon])
      @player_move = $game.player_move
      @computer_move = $game.computer_move
      @who_won = $game.fight
      erb :game
    end

    run! if app_file == $0

end
