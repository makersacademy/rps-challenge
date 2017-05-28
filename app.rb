require 'sinatra/base'

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:player1]
    erb :play
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

end
