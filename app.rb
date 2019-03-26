require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/RPS'

# game class? to give random choices of computer.

class Game < Sinatra::Base
  enable :sessions
  set :session_secret, "My session secret"
#this line remembers sessions for shotgun

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
    # p session[:player_1_choice]
    # define and create players
    # p session[:player_1_name]
    # p session[:player_1_choice]
    @player_1 = Player.new(session[:player_1_choice], session[:player_1_name])
    # p @player_1
    @player_2 = Player.new
    # @player_2 is computer
    # get index of both players
    # p player1.choice
    @rps = RPS.new(@player_1, @player_2)
    @winner = @rps.winner
    p @winner
    # @rps.winner
    # p @winner
    # @winner = 
    erb(:result)
  end

  post '/name' do 
    session[:player_1_name] = params[:player_1_name]
    redirect '/greet'
  end 

  post '/result' do 
    # p params[:table]
    session[:player_1_choice] = params[:option]
    redirect '/result'
  end

  run! if app_file == $0
end
