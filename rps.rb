require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:player_name] = params[:player_name]
    redirect :start
  end

  get "/start" do
    @name = session[:player_name]
    erb(:start)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
