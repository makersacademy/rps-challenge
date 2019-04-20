require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
