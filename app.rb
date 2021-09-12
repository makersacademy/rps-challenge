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
    p "-----#{session[:player_1_name]}------"
    
    session[:hands] = Game.new(@player_1_name)
    @hands = session[:hands]

    session[:comp_score] = 0
    session[:human_score] = 0
    
    # @comp_score = 0
    # @human_score = 0
   
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    #@hands = Game.new(@player_1_name)
    # session[:hands] = Game.new(@player_1_name)
    #@hands = session[:hands]
    # @hands = @hands
    # p @hands
    p session[:comp_score] 
    p session[:human_score]
    
    erb :play
  end

  post '/player-choose' do
    @player_1_name = session[:player_1_name]
    @choice = params[:choice]

    p "this is where we are ---#{session[:comp_score]}----" 
    p session[:human_score]

    # @comp_score = session[:comp_score]
    # @human_score = session[:human_score]

    # @hands = session[:hands]
    # p "-----#{session[:hands]}------"
    

    p "-----#{session[:player_1_name]}------"
    p "--------#{@choice}-----"  
    
    game = Logic.new
    @game_result = game.play_game(@choice)
    p "-----#{@game_result}------"

    if @game_result == "You won!"
      session[:human_score] += 1
    elsif @game_result == "You lose."
      session[:comp_score] += 1
    end

    @comp_score = session[:comp_score]
    @human_score = session[:human_score]

    


    # @hands.player_chooses(@choice)
    # p @hands.human_score

      
    # if @game.game_over?
    #   redirect '/game-over'
    # else
    #   redirect '/names'
    # end 

    #redirect '/game-score'
    erb :results
  end

  get '/game-score' do
    @player_1_name = session[:player_1_name]
    p "-----#{@player_1_name}------"
   
    erb :play
  end
  
  get '/game-over' do
    @game = $game
    erb :game_over
  end

  run! if app_file == $0
end

