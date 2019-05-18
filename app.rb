require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:player]
    erb(:play)
  end

  post '/result' do
    "You picked #{params[:rps]}."
  end
end
