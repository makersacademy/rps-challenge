require 'sinatra/base'
class RPS < Sinatra::Base 
  enable :sessions
  get '/' do
    erb :enter_names
  end
  post '/names' do
    p session
    session[:name] = params[:Name]
    p session
    p session[:name]
    redirect '/names'
  end
  get '/names' do
    p session
    @name = session[:name]
    erb :letsplay
  end
end
