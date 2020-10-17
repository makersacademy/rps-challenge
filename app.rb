require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/store-name' do
    session[:name] = params[:name]
    redirect to '/greet'
  end

  get '/greet' do
    erb :greeting
  end

  post '/play' do
  end

  run! if app_file == $0
end
