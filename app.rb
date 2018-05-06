require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
    erb(:index)
  end

  get '/name' do
    erb(:name)
  end
end
