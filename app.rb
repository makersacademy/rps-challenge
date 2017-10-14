require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:name]
    erb :play
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
