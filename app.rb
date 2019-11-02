require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/welcome' do
    session[:name] = params[:name]
    @name = session[:name]
    erb(:welcome)
  end

  post '/play' do
    @move = params[:move]
    @name = session[:name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
