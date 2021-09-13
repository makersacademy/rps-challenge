require 'sinatra/base'
require 'sinatra/reloader'
# require 'pry'
require './lib/rps'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  configure do
    enable :sessions
  end

  get '/' do
    session.clear
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @result = session[:result]
    @computer_choice = session[:computer_choice]
    @player_1_choice = session[:player_1_choice]
    session[:player_1_choice] = nil 
    session[:result] = nil 
    session[:computer_choice] = nil
    session[:player_1_choice] = nil 
    # binding.pry
    erb :play
    
  end

  post '/choice' do
    session[:player_1_choice] = params["player_1_choice"]
    rps = RPS.new(player_1_choice: params["player_1_choice"])
    session[:result] = rps.result
    session[:computer_choice] = rps.computer_choice
    redirect '/play'
  end
  
  

  

  run! if app_file == $0
end