require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb :home
  end

  post "/name" do
    session[:player_name] = params[:name]
    redirect "/game"
  end

  get "/game" do
    @name = session[:player_name]
    erb :game
  end
  
  run! if app_file == $0

end