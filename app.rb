require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  # routes:
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]  
    erb(:play)
  end

  post '/selection' do
    session[:player_choice] = params[:player_choice] 
    redirect '/results'
  end

  get '/results' do
    @player_name = session[:player_name] 
    @player_choice = session[:player_choice]
    @game = Game.new(@player_name, @player_choice)
    @computer_choice = @game.computer_choice
    erb(:results)
  end 

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end