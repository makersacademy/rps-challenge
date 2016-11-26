require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    p params
    session[:player_name] = params[:player_name]
    redirect to('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
