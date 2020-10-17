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
    session[:player1_choice] = :rock
    redirect "/result"
  end

  post "/paper" do
    session[:player1_choice] = :paper
    redirect "/result"
  end

  post "/scissors" do
    session[:player1_choice] = :scissors
    redirect "/result"
  end

  get "/result" do
    @player1_choice = session[:player1_choice]
    erb(:result)
  end

end
