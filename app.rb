require 'sinatra/base'
require 'sinatra/reloader'

class Rps < Sinatra::Base
  configure :development do 
    register Sinatra::Reloader 
  end 

  get '/' do 
    p params
    @player_name = params[:name]
    erb :index
  end 
  
  get '/player_name' do
  erb :index
  end 



  run! if app_file == $0
end 
