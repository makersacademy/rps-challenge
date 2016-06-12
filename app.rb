require 'sinatra/base'

class MyApp < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

get '/game_start' do
  @name= params[:name]
  session[:name]= @name
  erb(:game_start)
end

get '/game_play' do
  @name= session[:name]
  @answer= ['Scissors', 'Rock', 'Paper'][rand(0..2)]
  erb(:game_start)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
