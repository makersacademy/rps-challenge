require 'sinatra/base'
require "sinatra/session"
require_relative "rps"
require_relative "cpu"
class RPS < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }
  set :public, proc { File.join(root, '..', 'public') }
  
  enable :sessions

  get '/' do
    erb :home
  end

  post "/" do
    @name = params[:name]
    erb :home
  end

  get "/rpscpu" do
    erb :rps
  end

  get "/rpscpu/rock" do
    @choice = "Rock"
    erb :rps
  end

  get "/rpscpu/paper" do
    @choice = "Paper"
    erb :rps
  end

  get "/rpscpu/scissors" do
    @choice = "Scissors"
    erb :rps
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
