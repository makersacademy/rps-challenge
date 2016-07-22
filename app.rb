require 'sinatra/base'

class App < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    @name = params[:player_name]
    erb(:game)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
