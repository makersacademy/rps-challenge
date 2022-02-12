require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'


class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

get "/" do
  erb :index
end

post "/register" do
  @player = params[:player]  
  erb :register
end

post "/play" do
  erb :play
end

post "/result" do
  erb :result
end

run! if app_file == $0
end
