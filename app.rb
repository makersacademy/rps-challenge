require 'sinatra/base'
require './lib/help_view'
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
    @player_mode = HelpView.player_mode(params[:player_mode])
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2, session[:player_mode], session[:game_mode])
    redirect to '/play_player1'
  end

  get '/play_player1' do
    @current_game_mode = HelpView.game_mode(@game.game_mode)
    erb :play_1
  end

  get '/change_player' do
    @game.player_1.choice = params[:choice]
    redirect to '/play_player2' if @game.computer?
    erb :change_player
  end

  get '/play_player2' do
    redirect to '/result' if @game.computer?
    @current_game_mode = HelpView.game_mode(@game.game_mode)
    erb :play_2
  end

  get '/result' do
    @game.player_2.computer_choice(@game.game_mode) if @game.computer?
    @game.player_2.choice = params[:choice] unless @game.computer?
    redirect to '/draw' if @game.draw?
    erb :winlose
  end

  get '/draw' do
    erb :draw
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
