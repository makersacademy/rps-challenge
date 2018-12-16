require 'sinatra/base'



class Rps  < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end 

  post '/name' do 
    session[:name] = params[:name]
    p @name = session[:name]
    erb(:name)
    
  end
end