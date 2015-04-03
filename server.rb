require 'sinatra/base'
require_relative 'lib/rps_engine.rb'
require_relative 'lib/computer_player.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  RPS = RpsGame.new
  comp = ComputerPlayer.new

  get '/' do
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


  post '/move' do
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

  # start the server if ruby file executed directly
  run! if app_file == $0
end
