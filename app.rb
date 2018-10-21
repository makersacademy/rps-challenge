require 'sinatra/base'

class RPSapp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/game' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]

    if no_one_played_yet
      request_player_1_choice
    elsif both_played
      display_result
    else
      store_player_1_choice
      request_player_2_choice
    end
  end

  def request_player_1_choice
    @current_player_name = @player_1_name

    erb :play
  end

  def store_player_1_choice
    @player_1_move = params[:current_player_move]
  end

  def request_player_2_choice
    @current_player_name = @player_2_name

    erb :play
  end

  def display_result
    @player_1_move = params[:player_1_move]
    @player_2_move = params[:current_player_move]

    if @player_1_move == @player_2_move
      @draw_move = @player_1_move
      erb :draw

    elsif @player_1_move == "Rock" && @player_2_move == "Paper"
      @winner_name = @player_2_name
      @winner_move = @player_2_move
      @looser_name = @player_1_name
      @looser_move = @player_1_move

      erb :result
    else
      @winner_name = @player_1_name
      @winner_move = @player_1_move
      @looser_name = @player_2_name
      @looser_move = @player_2_move

      erb :result
    end

  end

  def no_one_played_yet
    params[:current_player_move].nil?
  end

  def both_played
    !params[:player_1_move].empty? && !params[:current_player_move].nil?
  end

    # start the server if ruby file executed directly
  run! if app_file == $0

end
