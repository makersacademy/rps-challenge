require 'sinatra/base'

class Rps < Sinatra::Base

  get '/' do
    erb :index
  end

    post '/' do
      if params[:name].empty?
        @message = "You MUST enter a name!"
        erb :index
      else
      	@name = params[:name]
      	erb :index
      end
  end

  get '/player' do
    erb :player
  end

  post '/player' do
    erb :player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
