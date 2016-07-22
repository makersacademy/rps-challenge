require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    @player = params[:player]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
