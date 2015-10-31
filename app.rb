require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    @username = params[:username]
    erb :play
  end

  get 'play' do

  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
