require 'sinatra'

require './lib/game'
require './lib/player'
require './lib/computer'

class RockPaperScissors < Sinatra::Base

    get '/' do
      erb :index
    end

    post '/play' do
      @player = Player.new(params[:player_name])
      @computer = Computer.new
      @game = Game.new_game(@player, @computer)
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

    run! if app_file == $0

end
