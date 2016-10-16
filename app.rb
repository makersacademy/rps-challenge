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

    erb :confirmation
  end

  get "/sign_in" do
    session[:username] = params[:username]
    session[:password] = params[:password]
    erb :sign_in
  end

  post "/main" do
    @username = params[:username]
    erb :main
  end

  run! if app_file == $0
end
