require 'sinatra/base'
require_relative 'player'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  # set :views, proc { File.join(root, "..", "views") }

  enable :sessions
  PLAYER = Player.new
  GAME = Game.new
  get '/' do
    erb :index
  end

  get '/game' do
    @name = session[:player]
    erb :game
  end

  post '/game' do
    @name = params[:new_player]
    PLAYER.name = params[:new_player]
    session[:player] = @name
    erb :game
  end

  post '/play' do
    @move = params[:move_choice]
    # @name = params[:player]
    session[:player] = PLAYER.name
    @result = GAME.play(PLAYER.name, session[:move_choice])
    session[:result] = @result
    erb :play
  end

  get 'play' do
    @name = session[:player]
    @move = session[:move_choice]
    @result = session[:result]
    erb :play
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
