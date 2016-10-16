require 'sinatra/base'

class RpsChallenge < Sinatra::Base
enable :sessions

  get "/" do
  erb :index
  end

  get "/register" do

    erb :register
  end

  post "/confirmation" do
    session[:first_name] = params[:first_name]
    session[:last_name] = params[:last_name]
    erb :confirmation
  end


  run! if app_file == $0
end
