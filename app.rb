require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
