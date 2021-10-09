require "sinatra/base"
require "sinatra/reloader"
require "./lib/bot"

class RockPaperScissor < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post "/names" do
    session[:player_name] = params[:player_name]
    redirect "/play"
  end

  post "/choice" do
    session[:player_choice] = params[:player_choice]
    session[:bot_choice] = Bot.new.choose
    redirect "/play"
  end

  get "/play" do
    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    @bot_choice = session[:bot_choice]
    erb :play
  end

  run! if app_file == $0
end
