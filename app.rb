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

    before do
      @game = Game.current_game
    end

    post '/play-rock' do
      @game.player.rock_move
      redirect '/computer-play'
    end

    post '/play-paper' do
      @game.player.paper_move
      redirect '/computer-play'
    end

    post '/play-scissors' do
      @game.player.scissors_move
      redirect '/computer-play'
    end

    get '/computer-play' do
      erb :computer_play
    end

    run! if app_file == $0

end
