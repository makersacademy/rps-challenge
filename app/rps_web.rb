require 'sinatra/base'
# require './lib/player'
# require './lib/game'

class RPSWeb < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/selection' do
    @marketeer = params[:marketeer_name]
    erb :selection
  end

  get '/game' do
    @choice = params[:choice]
    erb :game
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
