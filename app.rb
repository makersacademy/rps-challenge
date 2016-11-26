require 'sinatra/base'

class Rsp < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/play' do
    @player_name = params[:player]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
