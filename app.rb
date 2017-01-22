require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:name)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    session[:instrument] = params[:instrument]
    erb(:play)
  end

  post '/play' do
    @instrument = session[:instrument]
    redirect '/play'
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
