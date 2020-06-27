require 'sinatra/base'
class RPS < Sinatra::Base 
  enable :sessions
  get '/' do
    erb :enter_names
  end
  post '/names' do
    session[:name] = params[:Name]
    redirect '/names'
  end
  get '/names' do
    @name = session[:name]
    erb :letsplay
  end
end
