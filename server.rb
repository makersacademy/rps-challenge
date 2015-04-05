require 'sinatra/base'
require_relative 'lib/rps_engine.rb'
require_relative 'lib/computer_player.rb'
require_relative 'lib/2_player_holder.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  RPS = RpsGame.new
  comp = ComputerPlayer.new
  PLAYERS = PlayerHolder.new

  get '/' do
    @has_1_player = true unless PLAYERS.player1_name.nil?
    erb :homepage
  end

  get '/one_player_game' do
    # @1player = true might be a good way to reuse the same move forms
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
    # params are reset in each of these blocks because of sessions
    @move1 = params[:move].to_sym
    @move2 = comp.make_move
    begin
      look_up = (RPS.compare @move1, @move2).keys.last
    rescue 
      @user_error = true
      return erb :play_game
    end
    results = {
          :player_1 => "#{session[:player_one]} Wins!",
          :player_2 => "#{session[:player_two]} Wins!",
          :draw     => "Draw!"
        }
    @result = results[look_up]
    erb :result
  end


  get '/start_two_player_game' do
    # erb :submit_p1_name
      erb :submit_p1_name
  end

  post '/submit_player1_name' do
    @player_one = params[:name]
    # sessions wouldn't work with capybara 
    # but worked with rackup 
    # so I did this instead
    PLAYERS.player1_name = @player_one
    PLAYERS.player1_move = params[:move].to_sym
    redirect '/two_players_ready'
  end

  get '/join_two_player_game' do
    # redirect if no game, set bool in start game
    erb :submit_p2_name
  end

  post '/submit_player2_name' do
    @player_two = params[:name]
    PLAYERS.player2_name = @player_two
    PLAYERS.player2_move = params[:move].to_sym
    # @player_one = PLAYERS.player1_name
    # erb :two_players_ready
    redirect '/two_players_ready'
  end

  get '/two_players_ready' do
    @player_one = PLAYERS.player1_name
    @player_two = PLAYERS.player2_name
    @ready = true unless @player_two.nil?
    if @ready
      result = RPS.compare PLAYERS.player1_move, PLAYERS.player2_move
      if result.keys == [:player_1] 
        @win = @player_one
        @win_move = PLAYERS.player1_move
        @lose_move = PLAYERS.player2_move 
      else
        @win = @player_two
        @win_move = PLAYERS.player2_move
        @lose_move = PLAYERS.player1_move 
      end
    end
    erb :two_players_ready
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
