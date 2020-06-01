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

post '/play' do
  erb :play
end

post '/result' do
  @game = PlayGame.new(params[:choice])
  @name = session[:name]
  @computer = @game.computer_choice
  @result = @game.play
  if @result == true
    erb :win 
  elsif @result == false
    erb :lose
  else
    erb :draw
  end
end

  run! if app_file == $0
  
end