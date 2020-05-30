require 'sinatra/base'

class RPSWeb < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    session[:player1_name] = params[:player1_name]
    redirect '/play'
  end

  get '/play' do
    @player1_name = session[:player1_name]
    @option = session[:option]
    erb :play
  end

  post '/play' do
    session[:option] = params[:option]
    redirect '/play'
  end

end
