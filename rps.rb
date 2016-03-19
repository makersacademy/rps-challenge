require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/play' do
    erb(:play)
  end

  post '/result' do
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
