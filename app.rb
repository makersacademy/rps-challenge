require 'sinatra/base'

class Rps < Sinatra::Base
  get '/test' do
    'Testing infrastructure is working!'
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = params[:name]
    erb(:play)
  end
end
