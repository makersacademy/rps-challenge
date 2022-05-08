require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'rps_logic'

class RockPaperScissors < Sinatra::Base
  
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get "/" do
    erb :index
  end

  post "/name" do
    session[:player_1_name] = params[:player_1_name]
    redirect "/play"
  end

  get "/play" do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post "/choices" do
    rps = RpsLogic.new(params[:user_choice])
    @result = rps.calculate
    @computer_choice = rps.computer_choice
    erb :choices
  end
  run! if app_file == $0
end
