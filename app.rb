require 'sinatra/base'
require './lib/help_start'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:select_mode)
  end

  get '/select' do
    session[:player_mode] = params[:player_mode]
    session[:game_mode] = params[:game_mode]
    @player_mode = HelpStart.player_mode(params[:player_mode])
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2, session[:player_mode], session[:game_mode])
    # session[:player_1_name] = params[:player_1_name]
    # session[:player_2_name] = params[:player_2_name]
    redirect to '/play'
  end

  get '/play' do
    # @player_1_name = session[:player_1_name]
    # @player_2_name = session[:player_2_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
