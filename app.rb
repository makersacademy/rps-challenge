require 'sinatra/base'
require 'tilt/erb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:player] = params[:player]
    @player_name = session[:player]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
