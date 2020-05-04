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

  get "/outcome_rock" do
    @move = "Rock"
    testing = Winner.new
    @result = testing.calculate_result(@move)
    @comp_move = testing.compmove
    erb(:outcome)
  end 

  get "/outcome_paper" do
    @move = "Paper"
    testing = Winner.new
    @result = testing.calculate_result(@move)
    @comp_move = testing.compmove
    erb(:outcome)
  end 


  get "/outcome_scissors" do

    @move = "Scissors"
    testing = Winner.new
    @result = testing.calculate_result(@move)
    @comp_move = testing.compmove

    erb(:outcome)
  end 

  run! if app_file == $0

end 
