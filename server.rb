require 'sinatra/base'
require_relative 'lib/rps_engine.rb'
require_relative 'lib/computer_player.rb'
require_relative 'lib/2_player_holder.rb'

class RPSWeb < Sinatra::Base
  enable :sessions

  RPS = RpsGame.new
  comp = ComputerPlayer.new
  PLAYERS = PlayerHolder.new

  def find_winner player1, player2, p1_move, p2_move
    @result = (RPS.compare p1_move, p2_move).keys.last
    @p1_move = p1_move
    @p2_move = p2_move
    @p1name = player1
    @p2name = player2
    erb :result
  end

  get '/' do
    @has_1_player = true unless PLAYERS.player1_name.nil?
    erb :homepage
  end

  get '/one_player_game' do
    @player_two = "Computer"
    session[:player_two] = @player_two
    erb :one_player_game
  end

  post '/submit_name' do
    @player_one = params[:name]
    session[:player_one] = @player_one
    erb :play_game
  end

  post '/play_game' do
    find_winner(session[:player_one],
                session[:player_two],
                params[:move].to_sym,
                comp.make_move)
  end

  get '/start_two_player_game' do
    erb :submit_p1_name
  end

  post '/submit_player1_name' do
    @player_one = params[:name]
    PLAYERS.player1_name = @player_one
    PLAYERS.player1_move = params[:move].to_sym
    redirect '/two_players_ready'
  end

  get '/join_two_player_game' do
    erb :submit_p2_name
  end

  post '/submit_player2_name' do
    @player_two = params[:name]
    PLAYERS.player2_name = @player_two
    PLAYERS.player2_move = params[:move].to_sym
    redirect '/two_players_ready'
  end

  get '/two_players_ready' do
    @player_one = PLAYERS.player1_name
    @player_two = PLAYERS.player2_name
    @ready = true unless @player_two.nil?
    return find_winner(PLAYERS.player1_name,
                       PLAYERS.player2_name,
                       PLAYERS.player1_move,
                       PLAYERS.player2_move) if @ready
    erb :two_players_ready
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
