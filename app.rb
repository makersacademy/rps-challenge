require 'sinatra/base'
require_relative 'lib/play'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name= params[:username]
    erb(:index)
  end

  get '/rps' do
    erb(:rps)
  end
  
  run! if app_file == $0
end
