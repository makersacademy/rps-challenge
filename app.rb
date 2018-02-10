require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player] = params[:player]
    redirect "/play"
  end

  get "/play" do
    @player = session[:player]
    erb(:play)
  end

  post "/option" do
    session[:option] = params[:option]
    redirect("/result")
  end

  get "/result" do
    @option = session[:option]
    erb(:result)
  end

  run! if app_file == $0

end
