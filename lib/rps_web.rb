require 'sinatra/base'
require "sinatra/session"
class RPS < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views') }

  enable :sessions
  
  get '/' do
    erb :home
  end

  post "/" do
    @name = params[:name]
    erb :home
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
