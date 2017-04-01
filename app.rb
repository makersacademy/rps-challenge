require 'sinatra'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    redirect '/start'
  end

  get '/start' do

  end
end
