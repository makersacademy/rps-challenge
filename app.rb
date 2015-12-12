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
    @@game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    game
    erb :play
  end

  post '/process' do
    game
    redirect '/play'
  end


  helpers do
    def game
      @game ||= @@game
    end
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
