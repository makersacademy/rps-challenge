require 'sinatra/base'

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
    erb(:outcome)
  end 

  get "/outcome_paper" do
    @move = "Paper"
    erb(:outcome)
  end 

  get "/outcome_scissors" do
    @move = "Scissors"
    erb(:outcome)
  end 

  run! if app_file == $0

end 
