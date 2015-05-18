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
    session["move"] = session["game"].player1.play params[:move]
    session["move"] = session["game"].player2.play
    @result = session["game"].check
    p @result
    @winner = session["game"].winner?
    erb :result
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end

