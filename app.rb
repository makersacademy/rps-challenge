require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    @name = params[:name]
    erb :play
    # redirect '/result'
  end

  get '/result' do
    @name = session[:name]
    @weapon = params[:weapon]
    erb :result
  end

end
