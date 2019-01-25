require "sinatra/base"

class RPS < Sinatra::Base
enable :sessions


get '/' do
  erb(:index)
end

post '/names' do
  session[:p1name] = params[:p1name]
  redirect '/play'
end

get '/play' do
  @p1name = session[:p1name]
  p params[:name]
  erb(:play)
end

post '/move1' do 
  session[:move] = params[:move]
  redirect '/result'
end

get '/result' do
  @move = session[:move]
  erb(:result)
end


# start the server if ruby file executed directly
run! if app_file == $0
end