require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/rps' do
    session[:rps] = params[:rps]
    redirect '/choose_rps'
  end

  get '/choose_rps' do
    @player_1_name = session[:player_1_name]
    @rps = session[:rps]
    erb :choose_rps
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
