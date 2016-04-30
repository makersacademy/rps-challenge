require 'sinatra/base'
require './lib/help_start'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:select_mode)
  end

  get '/select' do
    number_players = params[:player_mode]
    @player_mode = HelpStart.player_mode(number_players)
    #@oneplayer = ["",""]
    #@oneplayer = ["readonly", "Computer"] if @player_mode == "one"
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect to '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
