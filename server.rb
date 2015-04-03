require 'sinatra/base'
require_relative 'lib/rps_engine.rb'
require_relative 'lib/computer_player.rb'

class RPSWeb < Sinatra::Base

  RPS = RpsGame.new
  comp = ComputerPlayer.new

  get '/' do
    erb :homepage
  end

  get '/one_player_game' do
    # @1player = true might be a good way to reuse the same move forms
    @player_two = "Computer"
    erb :one_player_game
  end

  post '/submit_name' do
    @player_one = params[:name]
    erb :play_game
  end


  post '/move' do
    @move1 = params[:move].to_sym
    @move2 = comp.make_move
    look_up = (RPS.compare @move1, @move2).keys.last
    p look_up
    results = {
          :player_1 => "#{@player_one} Wins!",
          :player_2 => "#{@player_two} Wins!",
          :draw     => "Draw!"
        }
    @result = results[look_up]
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
