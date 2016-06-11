require 'sinatra/base'

class MyApp < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

get '/game_start' do
  @name= params[:name]
  session[:name]= @name
  erb(:game)
end

get '/game_play' do
  @name= session[:name]
  @choice = params[:Select_Box]
  @answer= ['Scissors', 'Rock', 'Paper'][rand(0..2)]
  erb(:game)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
