require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
    session[:name] = params[:name]
  end

  post 'entered' do
    erb :entered
end

  # start the server if ruby file executed directly
  # run! if app_file == $0
end 
