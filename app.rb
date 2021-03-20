require 'sinatra'
require 'sinatra/base'

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/vscomputer' do
    erb :vscomputer  
  end

  get '/vshuman' do
    erb :vshuman
  end

  run! if app_file == $0
end
