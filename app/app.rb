require 'sinatra'
require 'sinatra/reloader'


class RPS < Sinatra::Base
  configure :developer do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb(:index)
  end

  post "/game" do
    @user = params[:name].downcase.split(" ").map(&:capitalize).join(" ")
    session[:name] = @user
    erb(:game)
  end

  get "/game" do 
    erb(:game)
  end

  run! if app_file ==$0
end
