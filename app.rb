require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer_player'
require_relative './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = ComputerPlayer.new
    self.class.game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    game
    erb :play
  end

  post '/process' do
    game.play(params[:element])
    redirect '/game-over' if game.over?
    redirect '/play'
  end

  get '/game-over' do
    game
    erb :game_over
  end


  helpers do
    def self.game
      @game
    end

    def self.game=(game)
      @game = game
    end

    def game
      @game ||= self.class.game
    end
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
