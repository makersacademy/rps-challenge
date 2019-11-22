require 'sinatra/base'

class RpsApp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/enter-name' do
    erb :enter_name
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
