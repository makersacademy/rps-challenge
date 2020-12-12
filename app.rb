require 'sinatra/base'

class Rps < Sinatra::Base
  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:player]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb(:play)
  end

end
