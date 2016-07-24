require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    #'Hello rps-challenge!'
    erb :index
  end

  post '/play' do
    @player_name = params[:player_name]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
