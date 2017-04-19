require 'sinatra/base'

class MyApp < Sinatra::Base
enable :sessions
get '/' do
  erb(:index)
end

post '/game_init' do
  @name= params[:name]
  session[:name]= @name
  redirect '/game_start'
end

get '/game_start' do
  @name= session[:name]
  erb(:game_start)
end

post '/choice' do
  session[:choice]= params[:choice]
  redirect '/game_play'
end

get '/game_play' do
  @name= session[:name]
  @choice = session[:choice]
  @answer= ['Scissors', 'Rock', 'Paper'][rand(0..2)]
  erb(:game_start)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
