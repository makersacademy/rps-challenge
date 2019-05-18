require 'sinatra/base'

class Rps < Sinatra::Base

# Welcome page to enter name
  get '/' do
    erb :index
  end

  post '/play' do
    p params
    @name = params[:name]
    erb :play
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $0
end
