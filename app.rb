require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    @name = params[:name]
    erb :name
  end

  post '/game' do
    @move = params[:move]
    redirect '/result'
  end

  post '/result' do
    @move = params[:move]
    erb :result
  end

  run! if app_file == $0
end
