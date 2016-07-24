require 'sinatra/base'

class Game < Sinatra::Base


  get '/' do
    erb(:index)
  end

  get '/play'do
    @name = params[:name]
    erb(:play)
  end





  # start the server if ruby file executed directly
  run! if app_file == $0
end
