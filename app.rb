require "sinatra/base"


class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :name
  end

  post "/welcome" do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :welcome
  end

  get "/play" do
    @player_name = session[:player_name]
    erb :play
  end
 
  run! if app_file ==$0
end