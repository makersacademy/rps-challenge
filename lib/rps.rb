require 'sinatra/base'
require './lib/game'
require './lib/player'
require './lib/computer'

class Rps < Sinatra::Base
    set :views, Proc.new { File.join(root, "..", "views") }
    enable :sessions


  get '/' do
    session["user"] = nil
    erb :index
  end

  post '/game' do
    session["user"] = params[:value]
    @user = session["user"]

    erb :game
  end

  get '/game/new' do

    if session["user"] != nil
      session["game"].restart_game
      redirect '/game'
    else
      session["game"] = Game.new Player.new, Computer.new
      erb :game_new
    end
  end

  get '/game' do
    erb :play
  end

  post '/game/result' do

    @move1 = session["game"].player1.play params[:move]
    @move2 = session["game"].player2.play
    @winner = session["game"].check
    @user = session["user"]
    @computer_score = session["game"].player2.won
    @player1_score = session["game"].player1.won
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

