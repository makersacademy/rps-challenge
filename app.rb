require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/name' do
    @player = params[:player]
    redirect '/setup'
  end

  get '/setup' do
    erb :setup
  end

  run! if app_file == $0
end
