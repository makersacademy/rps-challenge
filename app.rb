require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @player_1 = params[:player_1_name]
    erb :names
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
