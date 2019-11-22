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

  post '/get_play' do
    session[:user_choice] = params[:rps_select]
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

end
