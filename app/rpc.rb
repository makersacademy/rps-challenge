require 'sinatra/base'
require 'haml'

class RPC < Sinatra::Base
  enable :sessions

  get '/' do
    haml(:index)
  end

  get '/game' do
    @name = session[:name]
    @choice = session[:choice] || 'None'
    haml(:game)
  end

  post '/game' do
    session[:choice] = params[:name]
    p params
    redirect '/game'
  end

  post '/name' do
    session[:name] = params[:name]
    p session[:name]
    redirect '/game'
  end

end
