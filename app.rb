require "sinatra"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/play" do
   session[:name] = params[:name]
   redirect "/play"
  end

  get "/play" do
   @name = session[:name]
   erb(:play)
  end

  post "/result" do
    session[:choice] = params
    redirect "/result"
  end

  get "/result" do
    @choice = session[:choice]
    p @choice
    erb(:result)
end

  run! if app_file == $0
end
