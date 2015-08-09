require 'sinatra/base'
require_relative 'rock_paper_scissors'

class RPS < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  enable :sessions

  get '/' do
    erb :register
  end

  post '/gamepage' do
    params[:name] == "" ? @name = "Player 1" : @name = params[:name]
    session[:name] = @name
    $game ? $game : $game = initialize_game
    erb :gamepage
  end

  post '/shoot' do
    @player_choice = $game.selection(params[:choice])
    @comp_choice = $game.computer_choice
    outcome = $game.evaluate_game
    if outcome == true
      @win = true
    elsif outcome == false
      @win = false
    elsif outcome == :draw
      @win = "Draw"
    end
    @name = session[:name]
    erb :gamepage
  end

  def initialize_game
    game = Game.new
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
