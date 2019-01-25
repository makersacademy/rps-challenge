require 'sinatra'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    "#{session[:name]} vs Computer"
  end

end
