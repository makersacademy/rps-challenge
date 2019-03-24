require 'sinatra/base'
require_relative './lib/player'
# game class? to give random choices of computer.

class Game < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)

  end 
  get '/greet' do 
    @player_1_name = session[:player_1_name]
    # p session[:player_1_name]
    # p @player_1_name
    erb(:greet)
  end 

  get '/play' do 
    erb(:play)
  end 

  get '/result' do
    # p session[:player_1_choice]
    # calculation below:
    options = ["Rock", "Scissors", "Paper"]
    # p session[:player_1_choice]
    # define and create players
    @player2 = Player.new('Scissors')
    @player1 = Player.new(session[:player_1_choice])

    # get index of both players
    # p player1.choice
    @index_player_1 = options.index(@player1.choice)
    @index_player_2 = options.index(@player2.choice)
    # p @index_player_1
    # p @index_player_2

    if options[@index_player_1 - 1] == options[@index_player_2]
      @winner = 'Computer'
    elsif @index_player_1 == @index_player_2
      @winner = "It's a draw"
    else 
      @winner = session[:player_1_name]
    end 
    # p '-'
    # p @winner
    erb(:result)
  end

  post '/name' do 
    session[:player_1_name] = params[:player_1_name]
    redirect '/greet'
  end 

  post '/result' do 
    p params[:option]
    session[:player_1_choice] = params[:option]
    redirect '/result'
  end

  

  run! if app_file == $0
end
