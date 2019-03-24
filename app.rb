require "sinatra/base"

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/entered' do
    session[:name] = params[:name]
    erb :entered
  
end
end
