require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/game'

class Rock_Paper_Scissors < Sinatra::Base

	enable :sessions
  game = Game.new
  computer = Computer.new

	set :views, Proc.new { File.join(root, ".", "views")}

  get '/' do
  	erb :index
  end

post '/' do
    if params[:player_name].empty?
      @name = "Please provide your name to play the game."
      erb :index
    else
      player = Player.new(params[:player_name])
      game.add_player(computer)
      game.add_player(player)
      session[:me] = player
      @name = session[:me].name
      erb :game
    end
  end

get '/game' do
    @player_name = params[:name]
    erb :game
  end

  post '/game' do
    if params[:player_choice].empty?
      @choice = "Please choose your weapon to play the game."
      erb :game
    else
      player.pick(params[:player_choice])
      session[:me] = player
      @player_weapon = session[:me].weapon
      erb :result
    end
  end







  # start the server if ruby file executed directly
  run! if app_file == $0
end

