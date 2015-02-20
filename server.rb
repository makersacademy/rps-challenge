require 'sinatra/base'

class Server < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    if params[:player_name].empty?
      erb :index
    else
      @name = params[:player_name]
      erb :game
    end
  end

  post '/game' do
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
