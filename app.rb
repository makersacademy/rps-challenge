require 'sinatra/base'
require './lib/rps'

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

    erb :sign_in
  end

  post "/names" do
    session[:username] = params[:username]
    session[:password] = params[:password]

    @@game = Rps.new
    redirect to("/main")
  end

  get "/main" do
    @username = session[:username]
    @password = session[:password]
    erb :main
  end

  get "/result" do

    @username = session[:username]
    @random_attack = @@game.random
    @rock, @paper, @scissors = @@game.rock, @@game.paper, @@game.scissors
    erb :result
  end

  run! if app_file == $0
end
