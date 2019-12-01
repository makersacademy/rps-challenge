require 'sinatra/base'
require_relative 'lib/computer'
require_relative 'lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :homepage
  end

  get '/play' do
    @player = session[:player]
    @player_turn = session[:player_turn]
    if @player_turn
      @game = Game.new(@player_turn, Computer)
      @computer_turn = @game.computers_turn
      @winner = @game.winner
    end
    erb :play
  end

  post '/form' do
    session[:player] = params["Player name"]
    redirect '/play'
  end

  post '/player_turn' do
    session[:player_turn] = params["player_turn"]
    redirect '/play'
  end

  run! if app_file == $0

end
