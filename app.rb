require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_one_name] = params[:player_one_name]
    redirect '/play'
  end

  get '/play' do
    @player_one_name = session[:player_one_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
