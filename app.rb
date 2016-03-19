require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
  @name = params[:name]

  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
