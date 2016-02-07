require 'sinatra/base'

class RPS_challenge < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/enter_names' do
    erb :enter_names
  end

  post '/names' do
    @firstname = params[:firstname]
    @lastname  = params[:lastname]
    erb :names
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
