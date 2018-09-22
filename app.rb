require 'sinatra/base'
# require'lib/game'

class Player < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result' do
    @decision = params[:decision]
    erb :result
  end
end
