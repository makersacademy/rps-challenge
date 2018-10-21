require 'sinatra/base'

class RPSapp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/player_1_turn' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]

    request_player_1_choice
  end

  post '/player_2_turn' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]

    store_player_1_choice
    request_player_2_choice
  end

  post '/result' do
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]

    render_result
  end

  def request_player_1_choice
    erb :player_1_choice
  end

  def store_player_1_choice
    @player_1_move = params[:current_player_move]
  end

  def request_player_2_choice
    erb :player_2_choice
  end

  def render_result
    @player_1_move = params[:player_1_move]
    @player_2_move = params[:current_player_move]

    if draw?
      render_draw_for(@player_1_move)
    elsif player_1_won?
      render_player_1_won
    else
      render_player_2_won
    end
  end

  def draw?
    @player_1_move == @player_2_move
  end

  def render_draw_for(move)
    @draw_move = move
    erb :draw
  end

  def player_1_won?
    (@player_1_move == "Rock" && @player_2_move == "Scissors") ||
    (@player_1_move == "Paper" && @player_2_move == "Rock") ||
    (@player_1_move == "Scissors" && @player_2_move == "Paper")
  end

  def render_player_1_won
    @winner_name = @player_1_name
    @winner_move = @player_1_move
    @looser_name = @player_2_name
    @looser_move = @player_2_move

    erb :result
  end

  def render_player_2_won
    @winner_name = @player_2_name
    @winner_move = @player_2_move
    @looser_name = @player_1_name
    @looser_move = @player_1_move

    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
