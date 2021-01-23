require 'sinatra/base'

class Rps < Sinatra::Base
  get '/test' do
    'Testing infrastructure is working!'
  end

  get '/' do
    erb :index
  end
end
