require 'sinatra/base'

class RPS < Sinatra::Base
    enable :sessions
  get '/' do
    erb(:index)
  end 

  post '/name' do 
    session[:name] = params[:name]
    redirect '/game'
  end 

  get '/game' do 
    @name = session[:name]
    erb(:game)
  end

  post '/result' do 
    @choice = params[:choice]
    erb(:result)
  end


end 

