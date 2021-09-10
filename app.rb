require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/logic'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    p "-----#{session[:player_1_name]}------"
    @hands = Game.new(@player_1_name)    
    redirect '/play'
  end

  # get '/play' do
  #   @hands = @hands
  #   erb :play
  # end

  get '/play' do
    @player_1_name = session[:player_1_name]
    #@hands = Game.new(@player_1_name)
    
    erb :play
  end

  post '/game-result' do
    @player_1_name = session[:player_1_name]
    choice = params[:choice]

    p "-----#{session[:player_1_name]}------"
    p "--------#{choice}-----"  
    
    game = Logic.new
    p game.play_game(choice)
    
    # if @game.game_over?
    #   redirect '/game-over'
    # else
    #   redirect '/attack'
    # end
    
    redirect '/play'
  end 
  
  get '/game-over' do
    @game = $game
    erb :game_over
  end



  run! if app_file == $0
end

