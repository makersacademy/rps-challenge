require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = params[:name1]
    redirect '/play'
  end

  get '/play' do
    @player1 = session[:player1]
    erb :play
  end

end
