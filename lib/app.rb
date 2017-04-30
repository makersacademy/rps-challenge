require 'sinatra/base'
require './lib/user'
#require './lib/rockpaperscissors'

class Game < Sinatra::Base
  enable :sessions

get '/' do
  erb (:index)
end

post '/users' do
  session[:user] = params[:user]
  redirect '/play'
end

get '/play' do
  @username = session[:user]
erb(:play)
end

  run! if app_file == $0
end
