require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/human_player'
require_relative 'lib/computer_player'
require_relative 'lib/memory'

class Rpsls < Sinatra::Base

  before do
    @game = Memory.load_game
  end

  get '/' do
    erb :welcome
  end

  post '/input_name' do
    @player_one = HumanPlayer.new params[:username]
    @player_two = ComputerPlayer.new "Bob"
    @game = Game.new @player_one , @player_two
    Memory.save_game @game

    redirect '/game'
  end

  post '/choose_attack' do
    @game.p_one_attack params[:attack_type]
    @game.p_two_attack @game.player_two.pick_attack

    redirect '/attack_resolution'
  end

  get '/game' do
    @player_one_name = @game.player_one.nickname
    @player_two_name = @game.player_two.nickname

    @player_one_wins = @game.player_one.win_count
    @player_two_wins = @game.player_two.win_count

    erb :game
  end

  get '/attack_resolution' do
    @player_one_name = @game.player_one.nickname
    @player_two_name = @game.player_two.nickname

    @player_one_atk = @game.p_one_sign
    @player_two_atk = @game.p_two_sign

    @winner = @game.choose_winner
    @winner.add_win unless @winner == :draw

    erb :attack_resolution
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
