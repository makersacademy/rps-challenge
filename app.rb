require 'sinatra/base'
class RPS < Sinatra::Base 
  enable :sessions
  get '/' do
    erb :enter_names
  end
  post '/names' do
    session[:name] = params[:Name]
    redirect '/play'
  end
  get '/play' do
    @name = session[:name]
    @move = session[:move]
    p @move
    erb :letsplay
  end
  post '/RPS' do
    session[:move] = params[:move]
    redirect '/play'
  end
end
