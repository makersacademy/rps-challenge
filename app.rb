require 'sinatra/base'

class  Rps_app<Sinatra::Base

enable :sessions

get '/' do

  erb (:index)
end

post '/names' do
  session[@Player_1] = params[:Player_1]
  session[@Player_2] = params[:Player_2]
  redirect '/play'
end

get '/play' do
  @Player_1 = session[:Player_1]
  @Player_2 = session[:Player_2]
erb :play
end
