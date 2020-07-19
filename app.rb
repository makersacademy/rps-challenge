require 'sinatra/base'
require_relative "./lib/winner"

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get "/" do 
    erb(:index)
  end 

  post "/name_input" do 
    session[:name] = params[:name]
    redirect "/play"
  end 

  get "/play" do 
    @move = nil
    @name = session[:name]
    erb(:move)
  end 

  post "/outcome" do
    p params
    session[:user_choice] = params[:user_choice]
    redirect "/outcome"
  end 

  get "/outcome" do 
    @move = session[:user_choice]
    testing = Winner.new
    @result = testing.calculate_result(@move)
    @comp_move = testing.compmove

    erb(:outcome)
  end 
  
  run! if app_file == $0

end 
