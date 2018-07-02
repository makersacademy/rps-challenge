require 'sinatra/base'
require './lib/player'
require './lib/computer'
class Rock < Sinatra::Base
enable :sessions
get '/' do
  'Welcome player'
  erb(:index)
end
post '/name' do
  session[:player] = params[:player]
  redirect '/name'
end
get '/name' do
  @name = session[:player]
  erb :name
  # redirect '/play'
end
get '/play' do
  @name = session[:player]
  erb :play
end
get '/rock' do
@name = session[:player]
  erb :rock
end
get '/paper' do
  @name = session[:player]
  erb :paper
end
get '/scissors' do
  @name = session[:player]
  erb :scissors
end

end
