require 'sinatra/base'

class App < Sinatra::Base
  set :Session, true

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = param[:name]
    redirect '/play'
  end

  get '/play' do
    
  end
end
