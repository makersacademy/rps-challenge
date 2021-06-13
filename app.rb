require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/computer'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name] unless params[:player_2_name].empty?
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/results' do 
    session[:p1_move] = params[:p1_move]
    if !!session[:player_2_name]
      redirect '/play_2'
    else
      redirect '/results'
    end
  end

  get '/play_2' do
    @player_2_name = session[:player_2_name]
    erb :play_2
  end

  post '/results_2' do
    session[:p2_move] = params[:p2_move]
    redirect '/results'
  end

  get '/results' do
    @player_1 = Player.new(session[:player_1_name])
    @player_1.move = session[:p1_move]

    if !!session[:player_2_name]
      @player_2 = Player.new(session[:player_2_name])
      @player_2.move = session[:p2_move]
    else
      @player_2 = Computer.new
    end
    
    @game = Game.new(@player_1, @player_2)
    erb :move
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
