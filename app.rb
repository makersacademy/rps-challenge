require 'sinatra/base'
require './lib/game.rb'

class GameRPS < Sinatra::Base
  # configure do
  #   enable :sessions
  #   # @game = Game.new
  #   # set :session_secret, "here be dragons"
  # end


  enable :sessions
  #
  # before '/' do
  #   @game = Game.new
  # end

  before do
    @game = session[:game]
  end

  get '/' do
    session[:game] = Game.new
    erb :index
  end

  post '/startgame' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/gameview'
  end

  get '/gameview' do
    @player_1_name = session[:player_1_name]
    @choice = nil
    erb :round_start
  end

  post '/selection' do
    session[:move] = params[:move]
    redirect '/round_end'
  end

  get '/round_end' do
    @move = session[:move]
    @computer_move = @game.computer_move
    @game_message = @game.win_lose(@move, @computer_move)
    erb :round_end
  end
end
