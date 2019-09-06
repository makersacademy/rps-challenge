require 'sinatra/base'

class Rps < Sinatra::Base
enable :sessions

get '/' do
  erb(:index)
end

post '/game' do
  erb(:game)
end

run! if app_file == $0
end