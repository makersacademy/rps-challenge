require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:Player_1] = params[:Player_1]
    redirect to '/play'
  end

  get '/play' do
    @player_1 = session[:Player_1]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
