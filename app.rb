require 'sinatra/base'

class RPS < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  redirect '/play'
end

get '/play' do
  @name = session[:player_1_name]
  erb :play
end


run! if app_file == $0
end
