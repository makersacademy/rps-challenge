require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/logic'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
  end
  

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]    

    session[:comp_score] = 0
    session[:human_score] = 0    
      
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]    
    erb :play
  end

  post '/player-choose' do
    @player_1_name = session[:player_1_name]
    @choice = params[:choice]    
    
    game = Logic.new

    computer_choice = game.computer_picks
    game_logic = game.play_game(@choice, computer_choice)
    
    p "-----#{game_logic}------"

    if game_logic == "You won!"
      session[:human_score] += 1
    elsif game_logic == "You lose."
      session[:comp_score] += 1
    end

    @comp_score = session[:comp_score]
    @human_score = session[:human_score]

    @game_result = "Computer picks #{computer_choice}, you pick #{@choice}, #{game_logic}"

          
    if game.game_over?(@human_score, @comp_score)
      redirect '/game-over'
    else
      erb :results      
    end 

  end

  get '/game-score' do
    @player_1_name = session[:player_1_name]
    p "-----#{@player_1_name}------"
   
    erb :play
  end
  
  get '/game-over' do
    @comp_score = session[:comp_score]
    @human_score = session[:human_score]
    @player_1_name = session[:player_1_name]
    
    @comp_score == 3 ? @winner = "Computer Wins!" : @winner = "#{@player_1_name} Wins!"
    erb :game_over
  end

  run! if app_file == $0
end

