require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:playerName]
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  
  # start the server if ruby file executed directly
  run! if app_file == $0
end
