require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/player' do
    @name = params[:name]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
