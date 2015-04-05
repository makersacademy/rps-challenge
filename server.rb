require 'sinatra/base'
require_relative 'lib/AI'
require_relative 'lib/player'
require_relative 'lib/game'

MULTIPLAYERS = []

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:multiplayer] = params[:multiplayer]
    session[:name] = params[:name]
    erb :make_move
  end

  get '/result' do
    if session[:multiplayer] == 'true'
      player = Player.new(session[:name])
      player.choose(params[:choice])
      MULTIPLAYERS.unshift player
      session[:multiplayer] = 'waiting'
    end
    if session[:multiplayer] == 'waiting'
      if MULTIPLAYERS.length == 1
        erb :waiting
      else
        current_game = Game.new(MULTIPLAYERS[0], MULTIPLAYERS[1])
        @result = current_game.winner
        erb :result
      end
    else
      user = Player.new(session[:name])
      computer = AI.new
      current_game = Game.new(user, computer)
      user.choose(params[:choice])
      @computers_choice = computer.choice
      @result = current_game.winner
      erb :result
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
