require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect("/play")
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end

  post "/check" do
    session[:selection] = params[:selection]
    redirect("/result")
  end

  get "/result" do
    @selection = session[:selection]
    erb :result
  end
end
