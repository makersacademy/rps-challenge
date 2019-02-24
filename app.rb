require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to ('/play')
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

end
