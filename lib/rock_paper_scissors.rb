require 'sinatra/base'
require_relative 'game'
require_relative 'player'
require_relative 'two_player_game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  PLAYER=Player.new
  PLAYER_1=Player.new
  PLAYER_2=Player.new
  TWO_PLAYER_GAME=TwoPlayerGame.new
  TWO_PLAYER_GAME.player_one=PLAYER_1
  TWO_PLAYER_GAME.player_two=PLAYER_2

  def player_one_setup
    @form_direct_string = 'player_1_game'
    @player = PLAYER_1
    @opponent = PLAYER_2
  end  

  def player_two_setup
    @form_direct_string = 'player_2_game'
    @player = PLAYER_2
    @opponent = PLAYER_1
  end  

  def two_player_check
    @draw=false
    @winner=false
    if @player.selection==@opponent.selection
      @draw=true
      @message = "Woooah, that one was a draw #{@player.name}, please try again!"
    else 
      @winner=true 
      if TWO_PLAYER_GAME.determine_winner == @player
        @message="Congratulations #{@player.name}, you won!"
      elsif TWO_PLAYER_GAME.determine_winner== @opponent
        @message="Unlucky, #{@player.name}, you lost"
      end
    end 
  end  

  get '/' do
    erb :index
  end  

  post '/' do
    @number_of_players = params[:no_of_players].to_i
    if @number_of_players==1
      redirect to '/one_player_enter_name'
    else
      redirect to '/two_player_get_names'
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
    game=Game.new
    @computer_move = game.selection
    @draw=false
    @winner=false
    if @computer_move==PLAYER.selection
      @draw=true
      @message = "Woooah, that one was a draw #{PLAYER.name}, please try again!"
    else 
      @winner=true 
      if game.determine_winner(PLAYER)==PLAYER
        @message="Congratulations #{PLAYER.name}, you won!"
      elsif game.determine_winner(PLAYER)==game
        @message="Unlucky, #{PLAYER.name}, you lost"
      end
    end      
    erb :one_player_game
  end 

  #One Player game code ends here

  #===============================

  #Two player game code starts here...

  get '/two_player_get_names' do 
    erb :two_player_get_names
  end  

  post '/two_player_get_names' do 
    PLAYER_1.name=params[:player_one_name] 
    PLAYER_2.name=params[:player_two_name]  
    redirect to '/two_player_intro'   
    erb :two_player_get_names
  end  

  get '/two_player_intro' do 
    erb :two_player_game_intro
  end

  get '/player_1_game' do
    player_one_setup
    
    @player.selection=nil
    @opponent.selection=nil
    erb :two_player_game
  end  

  post '/player_1_game' do

    player_one_setup

    @player.selection=params[:selection]
    two_player_check

    erb :two_player_game
  end  

  get '/player_2_game' do
    player_two_setup

    @player.selection=nil
    @opponent.selection=nil

    erb :two_player_game
  end  

  post '/player_2_game' do
    player_two_setup
    
    @player.selection=params[:selection]
    two_player_check 

    erb :two_player_game
  end 


  set :views, Proc.new{File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0

end  