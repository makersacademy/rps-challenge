require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb:index
  end

  post '/name' do
    redirect '/play'
  end

end
