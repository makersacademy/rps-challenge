require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb(:welcome)
  end

  post '/' do
    @name = params[:name]
    erb(:play) 
  end
  
  run! if app_file == $0

end