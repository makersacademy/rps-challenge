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
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/results' do 
    session[:move] = params[:move]
    redirect '/results'  
  end

  get '/results' do
    @player_1 = Player.new(session[:player_1_name])
    @player_1.move = session[:move]
    @cpu = Computer.new
    @game = Game.new(@player_1, @cpu)
    erb :move
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
