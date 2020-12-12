require 'sinatra/base'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/start'
  end

  get '/start' do
    @name = session[:player]
    erb(:play)
  end

  get '/playing' do
    erb(:playing)
  end

end
