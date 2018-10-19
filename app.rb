require 'sinatra/base'

class Game < Sinatra::Base
  enable :sessions
  get "/" do
    erb(:index)
  end

  post "/entered_name" do
    session[:name] = params[:player1]
    redirect "/in_game"
  end

  get "/in_game" do
    @name = session[:name]
    erb(:in_game)
  end
end
