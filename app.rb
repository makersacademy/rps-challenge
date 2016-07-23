require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb(:home)
  end

  post '/names' do
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
