require 'sinatra/base'
require_relative 'game'



class RPS < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
    # start the server if ruby file executed directly
  run! if app_file == $0
  enable :sessions
  
  get '/' do
    erb :index
  end

  get '/name' do 
    erb :name
  end

  get '/computer_or_player' do 
    @name1 = params[:name]
    session[:name1] = @name1
    erb :computer_or_player
  end 

  get '/computer' do 
    @name = params[:name]
    erb :computer
  end

  get '/player' do 
    erb :player2
  end

  get '/player_1_choice' do 
    session[:name2] = params[:name2]
    erb :player_1_choice 
  end 

  get '/player_2_choice' do 
    session[:choice1] = params[:Option]
    erb :player_2_choice 
  end 

  get '/result' do 
    @choice = params[:Option]
    $game = Game.new
    @player_1 = Player.new
    erb :result
  end

  get '/two_player_result' do 
    session[:choice2] = params[:Option2]
    $game = Game.new
    @player_1 = Player.new.choose session[:choice1]
    @player_2 = Player.new.choose session[:choice2]
    erb :two_player_result
  end

end
