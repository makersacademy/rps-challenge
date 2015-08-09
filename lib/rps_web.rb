require 'sinatra/base'
require_relative 'game'

class RpsWeb < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/registration' do
    erb :registration
  end

  get '/choose-mode' do
    session[:name] = params[:name]
    if $player_1
      $player_2 = Player.new(params[:name].capitalize)
      session[:id_2] = session[:session_id]
    else
     $player_1 = Player.new(params[:name].capitalize)
     session[:id_1] = session[:session_id]
    end
    redirect '/registration' if session[:name] == ''
    erb :mode
  end

  get '/single-mode' do
    $player_2 = Player.new 'COMPUTER'
    $game_single = Game.new($player_1, $player_2)
    erb :singlemode
  end

  get '/play-match' do
    @name = $name_1
    erb :playmatch
  end

  get '/waiting-area' do
    if($player_1 && $player_2)
      redirect 'multi-mode'
    else
      erb :waitingarea
    end
  end

  get '/multi-mode' do
    $game_single = Game.new($player_1, $player_2)
    $moves = 0
    redirect '/play-match-double'
  end

  # get '/play-match-double' do
  #   if $moves.even?
  #     @name = $player_1.name
  #   else
  #   end
  # end

  get '/matchresult' do
    if $player_2.name == 'COMPUTER'
      session[:move_single_player] = params[:move]
      @move_single_player = session[:move_single_player].to_sym
      erb :matchresultsingle
    else
    end
  end

  get '/gameresult' do
    erb :gameresult
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
