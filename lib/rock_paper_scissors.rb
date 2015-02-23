require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  PLAYER = Player.new

  get '/' do
    session.clear
    erb :one_player_enter_name
  end  

  post '/one_player_enter_name' do
    PLAYER.name = params[:name]
    if PLAYER.name != nil
      redirect to '/one_player_game'
    end 
    erb :one_player_enter_name
  end 

  # One Player game code commences here

  get '/one_player_game' do 
    erb :one_player_game
  end  

  post '/one_player_game' do
    PLAYER.make_selection = params[:selection].to_sym
    @game = Game.new
    @computer = Computer.new
    @game.computer = @computer
    @game.player = PLAYER
    @computer_choice = @computer.make_selection
    @result = @game.determine_winner     
    erb :one_player_game
  end 
 
  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0

end  