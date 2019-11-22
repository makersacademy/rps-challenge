require 'sinatra'

require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/play' do
      @player = Player.new(params[:player_name])
      @game = Game.new_game(@player)
      erb :play
    end

    post '/play-rock' do
      @game = Game.current_game
      @game.player.rock_move
    end

    post '/play-paper' do
      @game = Game.current_game
      @game.player.paper_move
    end

    post '/play-scissors' do
      @game = Game.current_game
      @game.player.scissors_move
    end

    post '/computer-play' do
    end

    run! if app_file == $0

end
