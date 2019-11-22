require 'sinatra'

require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/play' do
      @player1 = Player.new(params[:player_1_name])

      if params[:player_2_name].empty?
        @player2 = Computer.new
      else
        @player2 = Player.new(params[:player_2_name])
      end

      @game = Game.new_game(@player1, @player2)
      erb :play
    end

    before do
      @game = Game.current_game
    end

    post '/play-rock' do
      @game.player1.rock_move
      redirect '/computer-play'
    end

    post '/play-paper' do
      @game.player1.paper_move
      redirect '/computer-play'
    end

    post '/play-scissors' do
      @game.player1.scissors_move
      redirect '/computer-play'
    end

    get '/computer-play' do
      @game.player2.computer_move
      @game.who_wins
      erb :computer_play
    end

    post '/first-player-rock' do
      @game.player1.rock_move
      redirect '/second-player-play'
    end

    post '/first-player-paper' do
      @game.player1.paper_move
      redirect '/second-player-play'
    end

    post '/first-player-scissors' do
      @game.player1.scissors_move
      redirect '/second-player-play'
    end

    get '/second-player-play' do
      erb :second_play
    end

    run! if app_file == $0

end
