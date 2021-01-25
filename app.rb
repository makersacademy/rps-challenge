require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = session[:name] = params[:name]
    redirect('/RPS')
  end

  get '/RPS' do
    @name = session[:name]
    erb(:RPS)
  end

end
