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
    redirect '/register_two_player'
  end

  get '/register' do
    erb :name
  end

  post '/register' do
    session[:name] = params[:name]
    redirect '/register' if session[:name] == ''
    @player_1 = Player.new(session[:name])
    @computer = ComputerPlayer.new
    $GAME = Game.new(@player_1, @computer)
    redirect '/single_gameplay'
  end

  get '/single_gameplay' do
    @name = session[:name]
    erb :single_mode
  end

  post '/single_gameplay' do
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

  get '/register_two_player' do
    erb :name_two_player_mode
  end

  post '/register_two_player' do
    session[:name2] = params[:name]
    $all_sessions = []
    redirect '/register_two_player' if session[:name2] == ''
    redirect '/welcome'
  end

  get '/welcome' do
    @name = session[:name2]
    id = session[:session_id]
    $all_sessions << id unless $all_sessions.include?(id)
    if identify_id_even?
      $player1 = Player.new(@name)
    else
      $player2 = Player.new(@name)
    end
    redirect '/make_game_class' if $all_sessions.length.even?
    erb :waiting_page
  end

  get '/make_game_class' do
    $GAME2 = Game.new($player1, $player2)
    redirect '/two_player_gameplay'
  end

  get '/two_player_gameplay' do
    redirect '/two_player_result' if there_is_a_winner?
    @name = session[:name2]
    $moves = 0
    erb :player_two_player
  end

  post '/two_player_gameplay' do
    session[:move] = params[:move]
    @move = session[:move]
    if identify_id_even?
      $GAME2.player_1.choose(@move.downcase.to_sym)
      $move1 = @move
      $moves += 1
    else
      $GAME2.player_2.choose(@move.downcase.to_sym)
      $move2 = @move
      $moves += 1
    end
    redirect '/lobby'
  end

  get '/lobby' do
    redirect '/process_game' if $moves.even?
    erb :lobby
  end

  get '/process_game' do
    @outcome = $GAME2.each_round_outcome.to_s.capitalize
    redirect '/two_player_result' if there_is_a_winner?
    erb :two_player_processing_round
  end

  get '/two_player_result' do
    return erb :two_player_first_player_won if $GAME2.player_1.win_counter == 4
    return erb :two_player_second_player_won
  end


  def identify_id_even?
    $all_sessions.index(session[:session_id]).even?
  end

  def there_is_a_winner?
    ($GAME2.player_1.win_counter / 2) >= 2 || ($GAME2.player_2.win_counter / 2) >= 2
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
