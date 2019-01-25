require 'sinatra'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result' do
    @name = session[:name]
    @choice = params[:choice]
    erb :result
  end

end
