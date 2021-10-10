require 'sinatra'
require 'sinatra/reloader' if development?

class  RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    enable :sessions
end

get '/' do
  # @current = ["Rock", "Paper", "Scissor"].sample
  erb(:index)
end

post '/name' do
  @player_name = params[:player_name]
  erb(:game)
end

get '/name' do
  @play = session[:rock]
  @play = session[:paper]
  @play = session[:scissors]
  erb(:game)
end

post '/play_options' do
  session[:rock] = params[:rock]
  session[:paper]= params[:paper]
  session[:scissors] = params[:scissors]
  erb(:play_option)
end

get '/play_option' do
  @play 
  erb(:game)
end

  run! if app_file == $0
end