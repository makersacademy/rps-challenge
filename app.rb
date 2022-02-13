require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'


class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

get "/" do
  erb :index
end

post "/register" do
  session[:player_1_name] = params[:player_1_name]
  redirect "/play"
end

get "/play" do
  @player_1 = session[:player_1_name]  
  erb :play
end

get "/result" do
  $game = Game.new(params[:button])
  erb :result
end

run! if app_file == $0
end
