require 'sinatra/base'

class Rps < Sinatra::Base
enable :sessions

get '/' do
  "Hello, fellow Maker! Whats your name? I'll register you, :)"
  # "Testing infrasturcture working!"
  erb :index
end

post '/name' do
  session[:player_name] = params[:player_name]
  redirect '/play' #==>redirect '/route' will issue an 'internal GET request' within the server.
end

get '/play' do
  @player_name = session[:player_name]
  erb :play
end
# start the server if ruby file executed directly
run! if app_file == $0
end
