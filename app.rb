require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/sign-in' do
    session[:user] = params[:user]
    redirect '/play'
  end

  get '/play' do
    @user = session[:user]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
