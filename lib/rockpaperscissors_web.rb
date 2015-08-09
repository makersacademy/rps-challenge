require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RPSWeb < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/start_game' do
    @visitor = params[:first_name].capitalize unless params[:first_name] == ""
    if $player_1 == nil
      $player_1 = Player.new(@visitor)
      session[:user] = "player_1"
    else
      $player_2 = Player.new(@visitor)
      session[:user] = "player_2"
    end
    session[:game_type] = params[:game_type]
  if session[:game_type] == "one_player" then $player_2 = Player.new ("COMPUTER") end
    $game = Game.new($player_1, $player_2)
    erb :start_game
  end

  post '/result' do
    $player_2.throw_gesture if session[:game_type] == "one_player"
    if session[:user] == "player_1" && $player_1.gesture == nil
      $player_1.throw_gesture((params[:gesture]).downcase)
    elsif session[:user] == "player_2" && $player_2.gesture == nil
      $player_2.throw_gesture((params[:gesture]).downcase)
    end
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
