require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base

enable :sessions

  get '/' do
    'Hello RPS'
    erb :index
  end

  post '/name' do
    session[:player_1] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
