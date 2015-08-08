require 'sinatra/base'
require_relative 'player'
require_relative 'game'
require_relative 'computer_player'

class RockPaperScissors < Sinatra::Base

  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }

  get '/' do
    erb :homepage
  end

  post '/' do
    session[:mode] = params[:mode]
    redirect '/register' if session[:mode] == 'singleplayer'
  end

  get '/register' do
    erb :name
  end

  post '/register' do
    session[:name] = params[:name]
    redirect '/register' if session[:name] == ''
    @player_1 = Player.new(@name)
    @computer = ComputerPlayer.new
    $GAME = Game.new(@player_1, @computer)
    redirect '/single_gameplay'
  end

  get '/single_gameplay' do
    @name = session[:name]
    erb :single_mode
  end

  post '/single_gameplay' do
    @name = session[:name]
    session[:move] = params[:move]
    @move = session[:move].capitalize
    $GAME.player_1.choose(@move.downcase.to_sym)
    @computer_move = $GAME.player_2.randomly_choose.capitalize
    @outcome = $GAME.each_round_outcome.capitalize
    redirect '/result' if $GAME.has_winner?
    erb :processing_round
  end

  get '/result' do
    @name = session[:name]
    @winner = $GAME.player_1.win_counter == 2
    erb :single_player_result_page
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
