require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    erb :index
    redirect ('play')
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

end