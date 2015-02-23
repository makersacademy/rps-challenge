require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'two_player_game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  PLAYER=Player.new

  get '/' do
    erb :index
  end  

  post '/' do
    @number_of_players = params[:no_of_players].to_i
    if @number_of_players==1
      redirect to '/one_player_enter_name'
    else
      redirect to '/register_player'
    end  
    erb :new_game
  end 

  # One Player game code commences here

  get '/one_player_enter_name' do
    erb :one_player_enter_name
  end  

  post '/one_player_enter_name' do
    PLAYER.name = params[:name]
    if PLAYER.name != nil
      redirect to '/one_player_game'
    end  
    erb :one_player_enter_name
  end  

  get '/one_player_game' do 
    erb :one_player_game
  end  

  post '/one_player_game' do
    PLAYER.selection=params[:selection].to_sym
    @game=Game.new      
    erb :one_player_game
  end 
 
  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0

end  