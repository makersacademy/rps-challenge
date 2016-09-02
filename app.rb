require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :home
  end

  post '/game' do
    @player_name = params[:player_name]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
