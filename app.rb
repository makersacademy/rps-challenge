require 'sinatra/base'

class RockPaperScissors < Sinatra::Base 
  enable :sessions
get '/' do 
  erb :index
end

post '/names' do 
  # @Your_name = params[:Your_name]
  session[:Your_name] = params[:Your_name]
  redirect '/play'
end

get '/play' do
  @Your_name = session[:Your_name]
  @shape = session[:shape]
  erb :play
end

post '/play' do
  session[:shape] = params[:shape]
  redirect '/play'
end

run! if app_file == $0 
end 
