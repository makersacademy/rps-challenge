require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/computer'
require_relative './lib/game'

class RPS < Sinatra::Base
  set :session_secret, 'super super secret'
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    @name = session[:name]
    erb :index
  end

  get '/play' do
    erb :play
  end

  post '/first_game' do
    @name = session[:name]
    @player_move = Player.new(params[:choice])
    session[:choice] = @player_move.choice
    session[:computer_turn] = Computer.new.computers_turn
    @player_move = session[:choice]
    @computer_move = session[:computer_turn]
    @check_result = Game.new(@name, @player_move, @computer_move)
    @result = @check_result.check_winner
    erb :first_game
  end

  run! if app_file == $0

end
