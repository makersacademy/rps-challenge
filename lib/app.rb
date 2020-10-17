require 'sinatra/base'
require 'shotgun'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:player1_name] = params[:player1_name]
    redirect "/play"
  end

  get "/play" do
    @player1_name = session[:player1_name]
    erb(:play)
  end

  post "/rock" do
    redirect "/result"
  end

  post "/paper" do
    redirect "/result"
  end

  post "/scissors" do
    redirect "/result"
  end

  get "/result" do
    "RESULT"
  end

end
