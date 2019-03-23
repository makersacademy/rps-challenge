require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result1' do
    erb :result1
  end

  get '/result2' do
    erb :result2
  end

  get '/result3' do
    erb :result3
  end

  run! if app_file == $0

end
