require "sinatra/base"
require_relative "./lib/play_game.rb"

class Game < Sinatra::Base
  enable :sessions

get '/' do
  erb :index
end

post '/welcome' do
  session[:name] = params[:name]
  erb :welcome
end

post '/result' do
  @game = PlayGame.new
end

  run! if app_file == $0
end