require 'sinatra/base'
require_relative 'game'
require_relative 'player'
class RpsWeb < Sinatra::Base
  set :views, Proc.new { File.join(root, "..", "views") }
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    @player = params[:name]
    session[:name] = @player
    erb :name
  end

  get '/game' do
    erb :game
  end


  get '/result' do
    game = Game.new
  @player_choice = $game.choice(params[:choice])
   @comp_choice = $game.computer_choice
   outcome = $game.win
   if outcome == true
     @win = true
   elsif outcome == false
     @win = false
   elsif outcome == :draw
     @win = "Draw"
   end
   @name = session[:name]
    erb :result
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
