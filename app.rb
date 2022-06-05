require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/computer_choice'

class RockPaper < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

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

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/show_choice'
  end

  get '/show_choice' do
    @player_choice = session[:player_choice]
    @computer_choice = ComputerChoice.new.get_choice
    erb :choice
  end
  
  run! if app_file == $0
end

