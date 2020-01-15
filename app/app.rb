require 'sinatra/base'


class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    session[:name] = params[:name]
  end

  get '/name' do
    @name = session[:name]
    erb :name
  end

  run! if app_file == $0

end
