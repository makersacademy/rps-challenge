require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

get '/' do
erb(:index)
end

post '/' do
session[:player] = params[:name]
erb(:game)
redirect '/game'
end

get '/game' do
@name = session[:name]
erb(:game)

post '/game' do

end

end

  run! if app_file == $0
end






