require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
     redirect '/play'
  end

  get '/play' do
    "Welcome to the game Henlo"
  end

  # start server if ruby file executed directly
  run! if app_file == $0

end
