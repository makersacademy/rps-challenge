require 'sinatra/base'
require 'battleships'

class BattleshipsWeb < Sinatra::Base
set :views, Proc.new { File.join(root, "..", "views") }
set :public_folder, 'public'
enable :sessions

  @@game = Game.new Player, Board

  get '/' do
    erb :start_page
  end

  get '/game/register_players' do
    erb :register_players
  end

  post '/game/commence_battle' do
    session[:p1_coord_error] = nil
    session[:p2_coord_error] = nil
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    if session[:p1_name].length < 1 || session[:p2_name].length < 1
      redirect '/game/register_players'
    else
      @@game.player_1.place_ship Ship.destroyer, 'A1', :vertically
      @@game.player_2.place_ship Ship.destroyer, 'J1', :vertically
      erb :commence_battle
    end
  end

  get '/game/player_1_turn' do
    @p1_board_own = @@game.own_board_view @@game.player_1
    @p1_board_opp = @@game.opponent_board_view @@game.player_1
    @p1_name = session[:p1_name]
    @p1_coord_error = session[:p1_coord_error]
    erb :player_1_turn
  end

  post '/game/player_1_result' do
    @coord = params[:coord]
    begin
      @result = @@game.player_1.shoot @coord.to_sym
    rescue RuntimeError
      session[:p1_coord_error] = "YOU HAVE ALREADY FIRED AT THESE COORDINATES: #{@coord}"
      redirect '/game/player_1_turn'
    end
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    session[:p1_coord_error] = nil
    if !@@game.player_2.all_ships_sunk?
      erb :player_1_result
    else
      @player_1_win_status = @@game.player_1.winner?
      @player_2_win_status = @@game.player_2.winner?
      erb :end_game
    end
  end

  get '/game/player_2_turn' do
    @p2_board_own = @@game.own_board_view @@game.player_2
    @p2_board_opp = @@game.opponent_board_view @@game.player_2
    @p2_name = session[:p2_name]
    @p2_coord_error = session[:p2_coord_error]
    erb :player_2_turn
  end

  post '/game/player_2_result' do
    @coord = params[:coord]
    begin
      @result = @@game.player_2.shoot @coord.to_sym
    rescue RuntimeError
      session[:p2_coord_error] = "YOU HAVE ALREADY FIRED AT THESE COORDINATES: #{@coord}"
      redirect '/game/player_2_turn'
    end
    @p1_name = session[:p1_name]
    @p2_name = session[:p2_name]
    session[:p2_coord_error] = nil
      if !@@game.player_1.all_ships_sunk?
      erb :player_2_result
    else
      @player_1_win_status = @@game.player_1.winner?
      @player_2_win_status = @@game.player_2.winner?
      erb :end_game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
