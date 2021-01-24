require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure is working!'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    erb(:play)
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end
end
