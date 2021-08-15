require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/name" do
    session[:name] = params[:name]
    redirect "/play"
  end

  get "/play" do
    @name = session[:name]
    erb(:play)
  end
end