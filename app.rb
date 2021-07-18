require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game
  end

  enable :sessions

  get '/' do
    erb :index
  end
  
  post '/name' do
    p params
    session[:player_name] = params[:player_name]
    redirect '/play'
  end
 
  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/result' do
    p params
    @player_name = session[:player_name]
    session[:move] = params[:move]
    @player_move = session[:move]
    @game = Game.create
    @computer_move = @game.computer_move
    erb :result
  end

run! if app_file == $0

end