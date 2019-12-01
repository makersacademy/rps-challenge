require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player1] = params[:player1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  get '/result' do
    @choice = params[:choice]
    erb(:result)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
