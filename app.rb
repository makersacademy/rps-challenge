require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/' do
    session[:name_1] = params[:name_1]
    redirect '/play'
  end

  get '/play' do
    @name_1 = session[:name_1]
    erb :play
  end

  run! if app_file == $0
end
