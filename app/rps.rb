require 'sinatra/base'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/choose'
  end

  get '/choose' do
    @name = session[:name]
    erb :choose
  end

  post '/rock' do
    @name = session[:name]
    erb :game
  end

  post '/paper' do
    @name = session[:name]
    erb :game
  end

  post '/rock' do
    @name = session[:name]
    erb :game
  end

  run! if app_file == $0

end
