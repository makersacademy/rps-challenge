require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params["player"]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player1]
    erb(:play)
  end

  # start server if ruby file executed directly
  run! if app_file == $0

end
