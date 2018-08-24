require 'sinatra/base'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

end
