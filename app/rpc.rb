require 'sinatra/base'
require 'haml'

class RPC < Sinatra::Base
  enable :sessions

  get '/' do
    haml(:index)
  end

  get '/weapon_choice' do
    @name = session[:name]
    haml(:weapon_choice)
  end

  get '/result' do
    @choice = session[:choice]
    haml(:result)
  end

  post '/game' do
    session[:choice] = params[:name]
    redirect '/result'
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/weapon_choice'
  end

end
