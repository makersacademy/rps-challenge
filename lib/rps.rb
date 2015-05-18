require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions


  get '/' do
    erb :startgame
  end

  get '/register' do
    @name = params[:name]
    session[:name] = @name 
    erb :register
  end

  get '/game/new' do
    @name = params[:name]
    erb :newgame
  end

  post '/game/play' do
    @name = session[:name]
    player_choice = params[:weapon]
    @outcome = play_game(player_choice)
    erb :gameplay
  end

  helpers do

    def play_game(player_choice)
      player = Player.new
      computer = Computer.new
      player.play(player_choice)
      game = Game.new player, computer
      game.winner?
    end


  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
