require "sinatra/base"

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get "/" do
    "Let's play Rock, Paper, Scissors!"
    erb(:index)
  end

  post "/register" do
    session[:name] = params[:name]
    redirect("/play")
  end

  get "/play" do
    @name = session[:name]
    erb(:play)
  end

  run! if app_file == $0

end