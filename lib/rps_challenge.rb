require 'sinatra/base'
require_relative 'game'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name_set' do
    erb :enter_name
  end

  get '/play' do
    @name = params[:name]
    erb :hello
  end

  get '/start_game' do
    session[:game] = Game.new(Player)
    erb :start_game
  end

  post '/start_game' do
    session[:game].player_1.choose_hand params[:hand_selection]
    erb :start_game
  end

  get '/game' do
    @hand_selected = session[:game].player_1.hand
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
