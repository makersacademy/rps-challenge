require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/enter-name' do
    $name = params[:Name]
    redirect '/play'
  end

  get '/play' do
    @name = $name
    erb :play
  end

  post '/choose' do
    @weapon = params[:weapon]
    erb :choose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
