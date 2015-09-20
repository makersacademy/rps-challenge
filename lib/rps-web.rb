require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'comp_player'

class RPSWeb < Sinatra::Base

  enable :sessions

  set :views, proc { File.join(root, '..', 'views')}

  get '/' do
    erb :index
  end

  get '/name' do
    @name = params[:name]
    session[:name] = params[:name]
    erb :new_game
  end

  get '/choose_shape' do
    @name = session[:name]
    erb :choose_shape
  end

  get '/game_result' do
    @player_choice = params[:player_choice]
    session[:player_choice] = params[:player_choice]
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
