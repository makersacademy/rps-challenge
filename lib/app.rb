require 'sinatra/base'

class App < Sinatra::Base
  set :sessions, true
  enable :sesssions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
