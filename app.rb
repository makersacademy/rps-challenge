require 'sinatra/base'
require 'sinatra/reloader'

class Rockpaperscissors < Sinatra::Base 
  configure :development do 
    register Sinatra::Reloader 
  end

  get '/' do
    erb(:index)
  end

  get '/signin' do
    erb(:signin)
  end

  post '/object' do
    erb(:object)
  end


  run! if app_file == $0
end