require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
     erb (:index)
  end

  post '/play' do
     erb (:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
