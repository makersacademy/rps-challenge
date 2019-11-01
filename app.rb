require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    "Registered!"
    redirect '/play'
  end

  get '/play' do
    erb :play
  end