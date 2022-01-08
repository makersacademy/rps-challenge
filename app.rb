require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do 
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:user_choice] = params[:user_choice]
    session[:comp_choice] = Computer.new.move
    redirect('/result')
  end

  get '/result' do
    @game = Game.new(session)
    @player_1_name = session[:player_1_name]
    @player_1_choice = session[:user_choice]
    @comp_choice = session[:comp_choice]
    erb :result
  end

  run! if app_file == $0
end
