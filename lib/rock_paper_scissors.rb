require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, "..", "views") }
  include RpsDroid
  enable :sessions
  PLAYER = Player.new
  GAME = Game.new
  get '/' do
    erb :index
  end

  get '/game' do
    @name = session[:player]
    @move = session[:move] if session[:move]
    @droid_move = session[:droid_move] if session[:droid_move]
    @result = session[:result] if session[:result]
    erb :game
  end

  post '/game' do
    @name = params[:new_player] if params[:new_player]
    @name = session[:player] if session[:player]
    @move = params[:move] if params[:move]
    @computer_move = make_move
    @result = GAME.play(params[:move], @computer_move)
    session[:move] = @move
    session[:droid_move] = @computer_move
    session[:player] = @name
    session[:result] = @result
    erb :game
  end
  #
  # post '/play' do
  #   @name = session[:player]
  #   @result = GAME.play(session[:player], params[:move])
  #   session[:player] = @name
  #   session[:result] = @result
  #   erb :play
  # end
  #
  # get 'play' do
  #   @name = session[:player]
  #   @move = session[:move]
  #   @result = session[:result]
  #   erb :play
  # end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
