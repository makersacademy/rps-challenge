require 'sinatra/base'
require_relative 'game'


class RPS < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
    # start the server if ruby file executed directly
  run! if app_file == $0
  
  get '/' do
    erb :index
  end

  get '/name' do 
    erb :name
  end

  get '/computer_or_player' do 
    @name = params[:name]
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
    erb :player_1_choice 
  end 

  get '/result' do 
    @choice = params[:Option]
    $game = Game.new
    @player_1 = Player.new
    erb :result
  end

  get '/two_player_result' do 
    @choice1 = params[:Option]
    @choice2 = params[:Option2]
    $game = Game.new
    @player_1 = Player.new.choose @choice1
    @player_2 = Player.new.choose @choice2
    erb :two_player_result
  end

end
