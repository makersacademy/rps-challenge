require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/save_name' do
    session[:user_name] = params[:name]
    redirect '/saved_name'
  end

  get '/saved_name' do
    erb :saved_name
  end

  get '/play' do
    erb :play
  end
end
