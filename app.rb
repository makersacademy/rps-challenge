require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    redirect '/players'
  end

  get '/players' do
    @player_1 = session[:player_1]
    erb :player
  end

  post '/start' do
    erb :start
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
