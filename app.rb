require 'sinatra/base'

class Rps < Sinatra::Base
  get '/' do
     erb :index
  end

  post '/splash' do
    @player_name = params[:player_name]
    erb :splash
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
