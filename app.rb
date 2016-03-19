require 'sinatra/base'

class Jajanken < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/setup' do
    $username = params[:username]
    redirect '/play'
  end

  get '/play' do
    @username = $username
    erb(:play)
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
