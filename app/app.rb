require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
end

get '/' do
  erb :index
end  

post '/' do
  erb :index
end

post '/names' do
  erb :index
  redirect '/play'
end

get '/play' do
  erb :play
end

post '/play' do
  erb :play
end

post '/result' do
  @computer_play = ["Rock", "Paper", "Scissors"].sample
  erb :result
end

  run! if app_file == $0
end