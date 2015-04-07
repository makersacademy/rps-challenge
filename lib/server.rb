require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/start' do
    @name = params[:name]
    erb :start
  end

  get '/action' do
    erb :action
  end

  post '/result' do
    @action = params[:action]
    erb :result
  end
end
