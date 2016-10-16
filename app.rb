require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post'/name' do
    session[:name]= params[:player1]
    redirect '/choose'
  end

  get'/choose'do
   @player1 = session[:name]
    erb :choose
  end

  post'/selected' do
    erb :selected
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
