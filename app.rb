require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/start'
  end

  get '/start' do
    @player = session[:player]
    erb :start
  end
end
