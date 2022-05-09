require 'sinatra/base'
require 'sinatra/reloader'
require './lib/rps'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/select' do
    @player_name = session[:player_name]
    session[:choice] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:player_name]
    @player_choice = session[:choice]
    @game = Game.new
    @game.play(@player_choice)
    erb :result
  end

  run! if app_file == $0
end
