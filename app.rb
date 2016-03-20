require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/username' do
    p params[:username]
    redirect '/play'
  end

  post '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
