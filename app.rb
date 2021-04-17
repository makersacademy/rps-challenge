require 'sinatra'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

end
