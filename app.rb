require 'sinatra/base'
class RPSController < Sinatra::Base

  enable :sessions # Enables use of session[:hash] for storing data

  get '/' do
    erb :index
  end

  post '/get_name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

end
