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
    @name = session[:name]
    erb(:move)
  end 


  run! if app_file == $0

end 
