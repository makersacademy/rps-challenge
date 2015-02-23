require 'sinatra/base'

class RPS < Sinatra::Base

  set :views, Proc.new {File.join(root, "..", "views")}

  get '/' do
    erb :index
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    if params[:name].empty?
      @message = "Please enter your name"
      erb :register
    else
      @welcome = "Welcome #{params[:name]}"
    erb :choose
    end
  end

  get '/choose/' do
    erb :choose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
