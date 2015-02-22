require 'sinatra/base'

class RockPaperScisors < Sinatra::Base
  
  get '/' do
    if params[:playername]
      erb :game
    else 
      erb :register
    end
  end

get '/register' do
  erb :register
end


  post '/register' do
    if params[:name]
        erb :game
      else 

      @name = params[:playername]
      erb :game
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
