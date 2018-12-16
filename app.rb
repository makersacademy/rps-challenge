require "sinatra/base"

class Game < Sinatra::Base

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/lights"
  end

  get "/lights" do
    # session[:name] = params[:name]
    erb(:lights)
  end

  get "/game" do
    
  end

  run! if app_file == $0

end
