require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/play' do
    @name = params[:player1_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
