require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
