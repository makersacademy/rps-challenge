require "sinatra/base"


class RPS < Sinatra::Base
enable :sessions
set :session_secret, "sessionkey"

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player_one_name] = params[:player_one_name]
    redirect "/play"

  end

  get "/play" do
    @player_one_name = session[:player_one_name]
    erb(:play)
  end

  get "/play_again" do
    @player_one_name = session[:player_one_name]
    erb(:play_again)
  end

  post "/challenge" do
    session[:choice] = params[:choice]
    erb(:challenge)
  end


# Start the server if App is executed directly via Ruby
run! if app_file == $0

end
