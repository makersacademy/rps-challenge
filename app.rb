require 'sinatra'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:name]
    redirect '/rps'
  end

  get '/rps' do
    @name = $name
    erb :rps
  end
end
