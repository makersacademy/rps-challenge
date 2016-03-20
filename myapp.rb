require 'sinatra/base'

class MyApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
     redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  get '/result' do
    @player = session[:player]
    erb :result
  end



# # start the server if ruby file executed directly
  run! if app_file == $0
end