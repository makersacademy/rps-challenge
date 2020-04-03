require "sinatra/base"

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    erb :index
    redirect ('play')
  end

  get '/play' do
    erb :play
  end

end