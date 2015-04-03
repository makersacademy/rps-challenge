require 'sinatra/base'
require_relative 'lib/AI'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    session[:name] = params[:name]
    erb :make_move
  end

  get '/result' do
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
